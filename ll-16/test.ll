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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !575
@.str.55 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !567
@.str.1.56 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !569
@.str.2.57 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !571
@.str.3.58 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !573
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !577
@stderr = external local_unnamed_addr global ptr, align 8
@.str.61 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !583
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !620
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !585
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !610
@.str.1.67 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !612
@.str.2.69 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !614
@.str.3.68 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !616
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !618
@.str.4.62 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !622
@.str.5.63 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !624
@.str.6.64 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !627
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !632
@.str.116 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !638
@.str.1.117 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !640
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@.str.118 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !642
@.str.1.119 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !645
@.str.2.120 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !647
@.str.3.121 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !652
@.str.4.122 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !654
@.str.5.123 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !656
@.str.6.124 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !658
@.str.7.125 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !660
@.str.8.126 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !662
@.str.9.127 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !664
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.118, ptr @.str.1.119, ptr @.str.2.120, ptr @.str.3.121, ptr @.str.4.122, ptr @.str.5.123, ptr @.str.6.124, ptr @.str.7.125, ptr @.str.8.126, ptr @.str.9.127, ptr null], align 8, !dbg !666
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !691
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !705
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !749
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !756
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !707
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !758
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !695
@.str.10.130 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !712
@.str.11.128 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !714
@.str.12.131 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !716
@.str.13.129 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !718
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !720
@.str.140 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !762
@.str.1.141 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !765
@.str.2.142 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !767
@.str.3.143 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !769
@.str.4.144 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !771
@.str.5.145 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !773
@.str.6.146 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !778
@.str.7.147 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !783
@.str.8.148 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !785
@.str.9.149 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !787
@.str.10.150 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !789
@.str.11.151 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !794
@.str.12.152 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !799
@.str.13.153 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !801
@.str.14.154 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !806
@.str.15.155 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !808
@.str.16.156 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !810
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.159 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !812
@.str.18.160 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !814
@.str.19.161 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !816
@.str.20.162 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !818
@.str.21.163 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !820
@.str.22.164 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !822
@.str.23.165 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !824
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !826
@exit_failure = dso_local global i32 1, align 4, !dbg !832
@.str.178 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !838
@.str.1.176 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !841
@.str.2.177 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !843
@.str.189 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !845
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !848
@.str.194 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !863
@.str.1.195 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !866

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !946 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !950, metadata !DIExpression()), !dbg !951
  %2 = icmp eq i32 %0, 0, !dbg !952
  br i1 %2, label %8, label %3, !dbg !954

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !955, !tbaa !957
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #39, !dbg !955
  %6 = load ptr, ptr @program_name, align 8, !dbg !955, !tbaa !957
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #39, !dbg !955
  br label %98, !dbg !955

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #39, !dbg !961
  %10 = load ptr, ptr @stdout, align 8, !dbg !961, !tbaa !957
  %11 = tail call i32 @fputs_unlocked(ptr noundef %9, ptr noundef %10), !dbg !961
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #39, !dbg !963
  %13 = load ptr, ptr @stdout, align 8, !dbg !963, !tbaa !957
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !963
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #39, !dbg !964
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !964
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #39, !dbg !965
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !965
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #39, !dbg !966
  %18 = load ptr, ptr @stdout, align 8, !dbg !966, !tbaa !957
  %19 = tail call i32 @fputs_unlocked(ptr noundef %17, ptr noundef %18), !dbg !966
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #39, !dbg !967
  %21 = load ptr, ptr @stdout, align 8, !dbg !967, !tbaa !957
  %22 = tail call i32 @fputs_unlocked(ptr noundef %20, ptr noundef %21), !dbg !967
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !968
  %24 = load ptr, ptr @stdout, align 8, !dbg !968, !tbaa !957
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !968
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #39, !dbg !969
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !969
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #39, !dbg !970
  %28 = load ptr, ptr @stdout, align 8, !dbg !970, !tbaa !957
  %29 = tail call i32 @fputs_unlocked(ptr noundef %27, ptr noundef %28), !dbg !970
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #39, !dbg !971
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !971
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #39, !dbg !972
  %32 = load ptr, ptr @stdout, align 8, !dbg !972, !tbaa !957
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !972
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !973
  %35 = load ptr, ptr @stdout, align 8, !dbg !973, !tbaa !957
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !973
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #39, !dbg !974
  tail call fastcc void @oputs_(ptr noundef %37), !dbg !974
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #39, !dbg !975
  tail call fastcc void @oputs_(ptr noundef %38), !dbg !975
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #39, !dbg !976
  tail call fastcc void @oputs_(ptr noundef %39), !dbg !976
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #39, !dbg !977
  tail call fastcc void @oputs_(ptr noundef %40), !dbg !977
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #39, !dbg !978
  tail call fastcc void @oputs_(ptr noundef %41), !dbg !978
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #39, !dbg !979
  tail call fastcc void @oputs_(ptr noundef %42), !dbg !979
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !980
  %44 = load ptr, ptr @stdout, align 8, !dbg !980, !tbaa !957
  %45 = tail call i32 @fputs_unlocked(ptr noundef %43, ptr noundef %44), !dbg !980
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #39, !dbg !981
  tail call fastcc void @oputs_(ptr noundef %46), !dbg !981
  %47 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #39, !dbg !982
  tail call fastcc void @oputs_(ptr noundef %47), !dbg !982
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #39, !dbg !983
  tail call fastcc void @oputs_(ptr noundef %48), !dbg !983
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #39, !dbg !984
  %50 = load ptr, ptr @stdout, align 8, !dbg !984, !tbaa !957
  %51 = tail call i32 @fputs_unlocked(ptr noundef %49, ptr noundef %50), !dbg !984
  %52 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #39, !dbg !985
  tail call fastcc void @oputs_(ptr noundef %52), !dbg !985
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #39, !dbg !986
  tail call fastcc void @oputs_(ptr noundef %53), !dbg !986
  %54 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #39, !dbg !987
  tail call fastcc void @oputs_(ptr noundef %54), !dbg !987
  %55 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #39, !dbg !988
  tail call fastcc void @oputs_(ptr noundef %55), !dbg !988
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #39, !dbg !989
  tail call fastcc void @oputs_(ptr noundef %56), !dbg !989
  %57 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #39, !dbg !990
  tail call fastcc void @oputs_(ptr noundef %57), !dbg !990
  %58 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #39, !dbg !991
  tail call fastcc void @oputs_(ptr noundef %58), !dbg !991
  %59 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #39, !dbg !992
  tail call fastcc void @oputs_(ptr noundef %59), !dbg !992
  %60 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #39, !dbg !993
  tail call fastcc void @oputs_(ptr noundef %60), !dbg !993
  %61 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #39, !dbg !994
  tail call fastcc void @oputs_(ptr noundef %61), !dbg !994
  %62 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #39, !dbg !995
  tail call fastcc void @oputs_(ptr noundef %62), !dbg !995
  %63 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #39, !dbg !996
  tail call fastcc void @oputs_(ptr noundef %63), !dbg !996
  %64 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #39, !dbg !997
  tail call fastcc void @oputs_(ptr noundef %64), !dbg !997
  %65 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #39, !dbg !998
  tail call fastcc void @oputs_(ptr noundef %65), !dbg !998
  %66 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #39, !dbg !999
  tail call fastcc void @oputs_(ptr noundef %66), !dbg !999
  %67 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #39, !dbg !1000
  tail call fastcc void @oputs_(ptr noundef %67), !dbg !1000
  %68 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #39, !dbg !1001
  tail call fastcc void @oputs_(ptr noundef %68), !dbg !1001
  %69 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #39, !dbg !1002
  tail call fastcc void @oputs_(ptr noundef %69), !dbg !1002
  %70 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #39, !dbg !1003
  tail call fastcc void @oputs_(ptr noundef %70), !dbg !1003
  %71 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #39, !dbg !1004
  tail call fastcc void @oputs_(ptr noundef %71), !dbg !1004
  %72 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #39, !dbg !1005
  %73 = load ptr, ptr @stdout, align 8, !dbg !1005, !tbaa !957
  %74 = tail call i32 @fputs_unlocked(ptr noundef %72, ptr noundef %73), !dbg !1005
  %75 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #39, !dbg !1006
  %76 = load ptr, ptr @stdout, align 8, !dbg !1006, !tbaa !957
  %77 = tail call i32 @fputs_unlocked(ptr noundef %75, ptr noundef %76), !dbg !1006
  %78 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #39, !dbg !1007
  %79 = load ptr, ptr @stdout, align 8, !dbg !1007, !tbaa !957
  %80 = tail call i32 @fputs_unlocked(ptr noundef %78, ptr noundef %79), !dbg !1007
  %81 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #39, !dbg !1008
  %82 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #39, !dbg !1008
  %83 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %81, ptr noundef %82) #39, !dbg !1008
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1009, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1021, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata ptr poison, metadata !1021, metadata !DIExpression()), !dbg !1026
  tail call void @emit_bug_reporting_address() #39, !dbg !1028
  %84 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #39, !dbg !1029
  call void @llvm.dbg.value(metadata ptr %84, metadata !1024, metadata !DIExpression()), !dbg !1026
  %85 = icmp eq ptr %84, null, !dbg !1030
  br i1 %85, label %93, label %86, !dbg !1032

86:                                               ; preds = %8
  %87 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(4) @.str.80, i64 noundef 3) #40, !dbg !1033
  %88 = icmp eq i32 %87, 0, !dbg !1033
  br i1 %88, label %93, label %89, !dbg !1034

89:                                               ; preds = %86
  %90 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.81, i32 noundef 5) #39, !dbg !1035
  %91 = load ptr, ptr @stdout, align 8, !dbg !1035, !tbaa !957
  %92 = tail call i32 @fputs_unlocked(ptr noundef %90, ptr noundef %91), !dbg !1035
  br label %93, !dbg !1037

93:                                               ; preds = %8, %86, %89
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1021, metadata !DIExpression()), !dbg !1026
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1025, metadata !DIExpression()), !dbg !1026
  %94 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.82, i32 noundef 5) #39, !dbg !1038
  %95 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %94, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.3) #39, !dbg !1038
  %96 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.83, i32 noundef 5) #39, !dbg !1039
  %97 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %96, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.84) #39, !dbg !1039
  br label %98

98:                                               ; preds = %93, %3
  tail call void @exit(i32 noundef %0) #41, !dbg !1040
  unreachable, !dbg !1040
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1041 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1046 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1052 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !285 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !290, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata ptr %0, metadata !291, metadata !DIExpression()), !dbg !1055
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1056, !tbaa !1057
  %3 = icmp eq i32 %2, -1, !dbg !1059
  br i1 %3, label %4, label %16, !dbg !1060

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.51) #39, !dbg !1061
  call void @llvm.dbg.value(metadata ptr %5, metadata !292, metadata !DIExpression()), !dbg !1062
  %6 = icmp eq ptr %5, null, !dbg !1063
  br i1 %6, label %14, label %7, !dbg !1064

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1065, !tbaa !1066
  %9 = icmp eq i8 %8, 0, !dbg !1065
  br i1 %9, label %14, label %10, !dbg !1067

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1068, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.value(metadata ptr @.str.52, metadata !1074, metadata !DIExpression()), !dbg !1075
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.52) #40, !dbg !1077
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
  br label %122, !dbg !1086

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !295, metadata !DIExpression()), !dbg !1055
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.53) #40, !dbg !1087
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1088
  call void @llvm.dbg.value(metadata ptr %24, metadata !297, metadata !DIExpression()), !dbg !1055
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #40, !dbg !1089
  call void @llvm.dbg.value(metadata ptr %25, metadata !298, metadata !DIExpression()), !dbg !1055
  %26 = icmp eq ptr %25, null, !dbg !1090
  br i1 %26, label %54, label %27, !dbg !1091

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1092
  br i1 %28, label %54, label %29, !dbg !1093

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !299, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 0, metadata !303, metadata !DIExpression()), !dbg !1094
  %30 = icmp ult ptr %24, %25, !dbg !1095
  br i1 %30, label %31, label %52, !dbg !1096

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #42, !dbg !1055
  %33 = load ptr, ptr %32, align 8, !tbaa !957
  br label %34, !dbg !1096

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !299, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %36, metadata !303, metadata !DIExpression()), !dbg !1094
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1097
  call void @llvm.dbg.value(metadata ptr %37, metadata !299, metadata !DIExpression()), !dbg !1094
  %38 = load i8, ptr %35, align 1, !dbg !1097, !tbaa !1066
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1097
  %41 = load i16, ptr %40, align 2, !dbg !1097, !tbaa !1098
  %42 = freeze i16 %41, !dbg !1100
  %43 = lshr i16 %42, 13, !dbg !1100
  %44 = and i16 %43, 1, !dbg !1100
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1101
  call void @llvm.dbg.value(metadata i64 %46, metadata !303, metadata !DIExpression()), !dbg !1094
  %47 = icmp ult ptr %37, %25, !dbg !1095
  %48 = icmp ult i64 %46, 2, !dbg !1102
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1102
  br i1 %49, label %34, label %50, !dbg !1096, !llvm.loop !1103

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1105
  br i1 %51, label %52, label %54, !dbg !1107

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1107

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !1055
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !295, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata ptr %55, metadata !298, metadata !DIExpression()), !dbg !1055
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.54) #40, !dbg !1108
  call void @llvm.dbg.value(metadata i64 %57, metadata !304, metadata !DIExpression()), !dbg !1055
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1109
  call void @llvm.dbg.value(metadata ptr %58, metadata !305, metadata !DIExpression()), !dbg !1055
  br label %59, !dbg !1110

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !1055
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !295, metadata !DIExpression()), !dbg !1055
  call void @llvm.dbg.value(metadata ptr %60, metadata !305, metadata !DIExpression()), !dbg !1055
  %62 = load i8, ptr %60, align 1, !dbg !1111, !tbaa !1066
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !1112

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1113
  %65 = load i8, ptr %64, align 1, !dbg !1116, !tbaa !1066
  %66 = icmp ne i8 %65, 45, !dbg !1117
  %67 = select i1 %66, i1 %61, i1 false, !dbg !1118
  br label %68, !dbg !1118

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !295, metadata !DIExpression()), !dbg !1055
  %70 = tail call ptr @__ctype_b_loc() #42, !dbg !1119
  %71 = load ptr, ptr %70, align 8, !dbg !1119, !tbaa !957
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1119
  %74 = load i16, ptr %73, align 2, !dbg !1119, !tbaa !1098
  %75 = and i16 %74, 8192, !dbg !1119
  %76 = icmp eq i16 %75, 0, !dbg !1119
  br i1 %76, label %90, label %77, !dbg !1121

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1122
  br i1 %78, label %92, label %79, !dbg !1125

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1126
  %81 = load i8, ptr %80, align 1, !dbg !1126, !tbaa !1066
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1126
  %84 = load i16, ptr %83, align 2, !dbg !1126, !tbaa !1098
  %85 = and i16 %84, 8192, !dbg !1126
  %86 = icmp eq i16 %85, 0, !dbg !1126
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1127
  br i1 %89, label %90, label %92, !dbg !1127

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1128
  call void @llvm.dbg.value(metadata ptr %91, metadata !305, metadata !DIExpression()), !dbg !1055
  br label %59, !dbg !1110, !llvm.loop !1129

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1131
  %94 = load ptr, ptr @stdout, align 8, !dbg !1131, !tbaa !957
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1131
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1068, metadata !DIExpression()), !dbg !1150
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !362, metadata !DIExpression()), !dbg !1055
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.67, i64 noundef 6) #40, !dbg !1152
  %97 = icmp eq i32 %96, 0, !dbg !1152
  br i1 %97, label %101, label %98, !dbg !1154

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.68, i64 noundef 9) #40, !dbg !1155
  %100 = icmp eq i32 %99, 0, !dbg !1155
  br i1 %100, label %101, label %104, !dbg !1156

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1157
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #39, !dbg !1157
  br label %107, !dbg !1159

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1160
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #39, !dbg !1160
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1162, !tbaa !957
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.73, ptr noundef %108), !dbg !1162
  %110 = load ptr, ptr @stdout, align 8, !dbg !1163, !tbaa !957
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.74, ptr noundef %110), !dbg !1163
  %112 = ptrtoint ptr %60 to i64, !dbg !1164
  %113 = sub i64 %112, %93, !dbg !1164
  %114 = load ptr, ptr @stdout, align 8, !dbg !1164, !tbaa !957
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1164
  %116 = load ptr, ptr @stdout, align 8, !dbg !1165, !tbaa !957
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.75, ptr noundef %116), !dbg !1165
  %118 = load ptr, ptr @stdout, align 8, !dbg !1166, !tbaa !957
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.76, ptr noundef %118), !dbg !1166
  %120 = load ptr, ptr @stdout, align 8, !dbg !1167, !tbaa !957
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1167
  br label %122, !dbg !1168

122:                                              ; preds = %107, %19
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !1211, metadata !DIExpression()), !dbg !1214
  call void @llvm.dbg.value(metadata ptr %1, metadata !1212, metadata !DIExpression()), !dbg !1214
  %3 = load ptr, ptr %1, align 8, !dbg !1215, !tbaa !957
  tail call void @set_program_name(ptr noundef %3) #39, !dbg !1216
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.47) #39, !dbg !1217
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #39, !dbg !1218
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.48) #39, !dbg !1219
  call void @llvm.dbg.value(metadata i32 2, metadata !1220, metadata !DIExpression()), !dbg !1223
  store volatile i32 2, ptr @exit_failure, align 4, !dbg !1225, !tbaa !1057
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #39, !dbg !1227
  store ptr %1, ptr @argv, align 8, !dbg !1228, !tbaa !957
  store i32 %0, ptr @argc, align 4, !dbg !1229, !tbaa !1057
  store i32 1, ptr @pos, align 4, !dbg !1230, !tbaa !1057
  %8 = icmp slt i32 %0, 2, !dbg !1231
  br i1 %8, label %26, label %9, !dbg !1233

9:                                                ; preds = %2
  %10 = add nsw i32 %0, -1, !dbg !1234
  %11 = tail call fastcc i1 @posixtest(i32 noundef %10), !dbg !1235
  call void @llvm.dbg.value(metadata i1 %11, metadata !1213, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1214
  %12 = load i32, ptr @pos, align 4, !dbg !1236, !tbaa !1057
  %13 = load i32, ptr @argc, align 4, !dbg !1238, !tbaa !1057
  %14 = icmp eq i32 %12, %13, !dbg !1239
  br i1 %14, label %23, label %15, !dbg !1240

15:                                               ; preds = %9
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #39, !dbg !1241
  %17 = load ptr, ptr @argv, align 8, !dbg !1242, !tbaa !957
  %18 = load i32, ptr @pos, align 4, !dbg !1243, !tbaa !1057
  %19 = sext i32 %18 to i64, !dbg !1242
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19, !dbg !1242
  %21 = load ptr, ptr %20, align 8, !dbg !1242, !tbaa !957
  %22 = tail call ptr @quote(ptr noundef %21) #39, !dbg !1244
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %16, ptr noundef %22) #43, !dbg !1245
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
  call void @llvm.dbg.value(metadata i32 %0, metadata !1259, metadata !DIExpression()), !dbg !1261
  switch i32 %0, label %102 [
    i32 1, label %2
    i32 2, label %11
    i32 3, label %41
    i32 4, label %43
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
  call void @llvm.dbg.value(metadata i1 %10, metadata !1260, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1261
  br label %114, !dbg !1271

11:                                               ; preds = %1
  %12 = load ptr, ptr @argv, align 8, !dbg !1272, !tbaa !957
  %13 = load i32, ptr @pos, align 4, !dbg !1278, !tbaa !1057
  %14 = sext i32 %13 to i64, !dbg !1272
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14, !dbg !1272
  %16 = load ptr, ptr %15, align 8, !dbg !1272, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %16, metadata !1068, metadata !DIExpression()), !dbg !1279
  call void @llvm.dbg.value(metadata ptr @.str.85, metadata !1074, metadata !DIExpression()), !dbg !1279
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(2) @.str.85) #40, !dbg !1281
  %18 = icmp eq i32 %17, 0, !dbg !1282
  br i1 %18, label %19, label %27, !dbg !1283

19:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 false, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1289
  %20 = add nsw i32 %13, 1, !dbg !1292
  %21 = add nsw i32 %13, 2, !dbg !1293
  store i32 %21, ptr @pos, align 4, !dbg !1293, !tbaa !1057
  %22 = sext i32 %20 to i64, !dbg !1295
  %23 = getelementptr inbounds ptr, ptr %12, i64 %22, !dbg !1295
  %24 = load ptr, ptr %23, align 8, !dbg !1295, !tbaa !957
  %25 = load i8, ptr %24, align 1, !dbg !1295, !tbaa !1066
  %26 = icmp eq i8 %25, 0, !dbg !1296
  call void @llvm.dbg.value(metadata i1 %26, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1297
  br label %114, !dbg !1298

27:                                               ; preds = %11
  %28 = load i8, ptr %16, align 1, !dbg !1299, !tbaa !1066
  %29 = icmp eq i8 %28, 45, !dbg !1301
  br i1 %29, label %30, label %40, !dbg !1302

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !1303
  %32 = load i8, ptr %31, align 1, !dbg !1303, !tbaa !1066
  %33 = icmp eq i8 %32, 0, !dbg !1304
  br i1 %33, label %40, label %34, !dbg !1305

34:                                               ; preds = %30
  %35 = getelementptr inbounds i8, ptr %16, i64 2, !dbg !1306
  %36 = load i8, ptr %35, align 1, !dbg !1306, !tbaa !1066
  %37 = icmp eq i8 %36, 0, !dbg !1307
  br i1 %37, label %38, label %40, !dbg !1308

38:                                               ; preds = %34
  %39 = tail call fastcc i1 @unary_operator(), !dbg !1309
  call void @llvm.dbg.value(metadata i1 %39, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1297
  br label %114

40:                                               ; preds = %34, %30, %27
  tail call fastcc void @beyond() #43, !dbg !1311
  unreachable, !dbg !1311

41:                                               ; preds = %1
  %42 = tail call fastcc i1 @three_arguments(), !dbg !1312
  call void @llvm.dbg.value(metadata i1 %42, metadata !1260, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1261
  br label %114, !dbg !1313

43:                                               ; preds = %1
  %44 = load ptr, ptr @argv, align 8, !dbg !1314, !tbaa !957
  %45 = load i32, ptr @pos, align 4, !dbg !1316, !tbaa !1057
  %46 = sext i32 %45 to i64, !dbg !1314
  %47 = getelementptr inbounds ptr, ptr %44, i64 %46, !dbg !1314
  %48 = load ptr, ptr %47, align 8, !dbg !1314, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %48, metadata !1068, metadata !DIExpression()), !dbg !1317
  call void @llvm.dbg.value(metadata ptr @.str.85, metadata !1074, metadata !DIExpression()), !dbg !1317
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(2) @.str.85) #40, !dbg !1319
  %50 = icmp eq i32 %49, 0, !dbg !1320
  br i1 %50, label %51, label %59, !dbg !1321

51:                                               ; preds = %43
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1322
  %52 = add nsw i32 %45, 1, !dbg !1325
  store i32 %52, ptr @pos, align 4, !dbg !1325, !tbaa !1057
  %53 = load i32, ptr @argc, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %56, label %55, !dbg !1326

55:                                               ; preds = %51
  tail call fastcc void @beyond(), !dbg !1328
  unreachable, !dbg !1328

56:                                               ; preds = %51
  %57 = tail call fastcc i1 @three_arguments(), !dbg !1329
  %58 = xor i1 %57, true, !dbg !1330
  call void @llvm.dbg.value(metadata i1 %58, metadata !1260, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1261
  br label %114, !dbg !1331

59:                                               ; preds = %43
  call void @llvm.dbg.value(metadata ptr %48, metadata !1068, metadata !DIExpression()), !dbg !1332
  call void @llvm.dbg.value(metadata ptr @.str.86, metadata !1074, metadata !DIExpression()), !dbg !1332
  %60 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %48, ptr noundef nonnull dereferenceable(2) @.str.86) #40, !dbg !1335
  %61 = icmp eq i32 %60, 0, !dbg !1336
  br i1 %61, label %62, label %107, !dbg !1337

62:                                               ; preds = %59
  %63 = add nsw i32 %45, 3, !dbg !1338
  %64 = sext i32 %63 to i64, !dbg !1339
  %65 = getelementptr inbounds ptr, ptr %44, i64 %64, !dbg !1339
  %66 = load ptr, ptr %65, align 8, !dbg !1339, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %66, metadata !1068, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1074, metadata !DIExpression()), !dbg !1340
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(2) @.str.87) #40, !dbg !1342
  %68 = icmp eq i32 %67, 0, !dbg !1343
  br i1 %68, label %69, label %107, !dbg !1344

69:                                               ; preds = %62
  call void @llvm.dbg.value(metadata i1 false, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1345
  %70 = add nsw i32 %45, 1, !dbg !1348
  store i32 %70, ptr @pos, align 4, !dbg !1348, !tbaa !1057
  %71 = sext i32 %70 to i64, !dbg !1349
  %72 = getelementptr inbounds ptr, ptr %44, i64 %71, !dbg !1349
  %73 = load ptr, ptr %72, align 8, !dbg !1349, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %73, metadata !1068, metadata !DIExpression()), !dbg !1351
  call void @llvm.dbg.value(metadata ptr @.str.85, metadata !1074, metadata !DIExpression()), !dbg !1351
  %74 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %73, ptr noundef nonnull dereferenceable(2) @.str.85) #40, !dbg !1353
  %75 = icmp eq i32 %74, 0, !dbg !1354
  br i1 %75, label %76, label %83, !dbg !1355

76:                                               ; preds = %69
  call void @llvm.dbg.value(metadata i1 false, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1356
  %77 = add nsw i32 %45, 2, !dbg !1358
  %78 = sext i32 %77 to i64, !dbg !1359
  %79 = getelementptr inbounds ptr, ptr %44, i64 %78, !dbg !1359
  %80 = load ptr, ptr %79, align 8, !dbg !1359, !tbaa !957
  %81 = load i8, ptr %80, align 1, !dbg !1359, !tbaa !1066
  %82 = icmp eq i8 %81, 0, !dbg !1361
  call void @llvm.dbg.value(metadata i1 %82, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1362
  br label %98, !dbg !1363

83:                                               ; preds = %69
  %84 = load i8, ptr %73, align 1, !dbg !1364, !tbaa !1066
  %85 = icmp eq i8 %84, 45, !dbg !1365
  br i1 %85, label %86, label %97, !dbg !1366

86:                                               ; preds = %83
  %87 = getelementptr inbounds i8, ptr %73, i64 1, !dbg !1367
  %88 = load i8, ptr %87, align 1, !dbg !1367, !tbaa !1066
  %89 = icmp eq i8 %88, 0, !dbg !1368
  br i1 %89, label %97, label %90, !dbg !1369

90:                                               ; preds = %86
  %91 = getelementptr inbounds i8, ptr %73, i64 2, !dbg !1370
  %92 = load i8, ptr %91, align 1, !dbg !1370, !tbaa !1066
  %93 = icmp eq i8 %92, 0, !dbg !1371
  br i1 %93, label %94, label %97, !dbg !1372

94:                                               ; preds = %90
  %95 = tail call fastcc i1 @unary_operator(), !dbg !1373
  call void @llvm.dbg.value(metadata i1 %95, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1362
  %96 = load i32, ptr @pos, align 4, !dbg !1374, !tbaa !1057
  br label %98

97:                                               ; preds = %90, %86, %83
  tail call fastcc void @beyond() #43, !dbg !1376
  unreachable, !dbg !1376

98:                                               ; preds = %76, %94
  %99 = phi i32 [ %63, %76 ], [ %96, %94 ], !dbg !1374
  %100 = phi i1 [ %82, %76 ], [ %95, %94 ]
  call void @llvm.dbg.value(metadata i1 %100, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1362
  call void @llvm.dbg.value(metadata i1 %100, metadata !1260, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1261
  call void @llvm.dbg.value(metadata i1 false, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1377
  %101 = add nsw i32 %99, 1, !dbg !1374
  store i32 %101, ptr @pos, align 4, !dbg !1374, !tbaa !1057
  br label %114, !dbg !1378

102:                                              ; preds = %1
  %103 = icmp sgt i32 %0, 0, !dbg !1379
  br i1 %103, label %104, label %106, !dbg !1382

104:                                              ; preds = %102
  %105 = load i32, ptr @pos, align 4, !dbg !1383, !tbaa !1057
  br label %107, !dbg !1382

106:                                              ; preds = %102
  tail call void @__assert_fail(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89, i32 noundef 651, ptr noundef nonnull @__PRETTY_FUNCTION__.posixtest) #41, !dbg !1379
  unreachable, !dbg !1379

107:                                              ; preds = %104, %59, %62
  %108 = phi i32 [ %105, %104 ], [ %45, %59 ], [ %45, %62 ], !dbg !1383
  %109 = load i32, ptr @argc, align 4, !dbg !1387, !tbaa !1057
  %110 = icmp slt i32 %108, %109, !dbg !1388
  br i1 %110, label %112, label %111, !dbg !1389

111:                                              ; preds = %107
  tail call fastcc void @beyond() #43, !dbg !1390
  unreachable, !dbg !1390

112:                                              ; preds = %107
  %113 = tail call fastcc i1 @or(), !dbg !1391
  call void @llvm.dbg.value(metadata i1 %113, metadata !1260, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1261
  br label %114, !dbg !1392

114:                                              ; preds = %38, %19, %112, %98, %56, %41, %2
  %115 = phi i1 [ %113, %112 ], [ %58, %56 ], [ %100, %98 ], [ %42, %41 ], [ %10, %2 ], [ %26, %19 ], [ %39, %38 ]
  call void @llvm.dbg.value(metadata i1 %115, metadata !1260, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1261
  ret i1 %115, !dbg !1393
}

; Function Attrs: noreturn nounwind uwtable
define internal void @test_syntax_error(ptr noundef %0, ...) unnamed_addr #0 !dbg !1394 {
  %2 = alloca %struct.__va_list, align 8
  %3 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1398, metadata !DIExpression()), !dbg !1410
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #39, !dbg !1411
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1399, metadata !DIExpression()), !dbg !1412
  call void @llvm.va_start(ptr nonnull %2), !dbg !1413
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #39, !dbg !1414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !1414, !tbaa.struct !1415
  call void @verror(i32 noundef 0, i32 noundef 0, ptr noundef %0, ptr noundef nonnull %3) #44, !dbg !1414
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #39, !dbg !1414
  call void @exit(i32 noundef 2) #41, !dbg !1416
  unreachable, !dbg !1416
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind uwtable
define internal fastcc i1 @unary_operator() unnamed_addr #10 !dbg !1417 {
  %1 = alloca [1 x i8], align 1
  %2 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %2) #39, !dbg !1470
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1419, metadata !DIExpression()), !dbg !1471
  %3 = load ptr, ptr @argv, align 8, !dbg !1472, !tbaa !957
  %4 = load i32, ptr @pos, align 4, !dbg !1473, !tbaa !1057
  %5 = sext i32 %4 to i64, !dbg !1472
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5, !dbg !1472
  %7 = load ptr, ptr %6, align 8, !dbg !1472, !tbaa !957
  %8 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !1472
  %9 = load i8, ptr %8, align 1, !dbg !1472, !tbaa !1066
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
  ], !dbg !1474

10:                                               ; preds = %0
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.90, i32 noundef 5) #39, !dbg !1475
  %12 = load ptr, ptr @argv, align 8, !dbg !1476, !tbaa !957
  %13 = load i32, ptr @pos, align 4, !dbg !1477, !tbaa !1057
  %14 = sext i32 %13 to i64, !dbg !1476
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14, !dbg !1476
  %16 = load ptr, ptr %15, align 8, !dbg !1476, !tbaa !957
  %17 = tail call ptr @quote(ptr noundef %16) #39, !dbg !1478
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %11, ptr noundef %17) #43, !dbg !1479
  unreachable, !dbg !1479

18:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1480
  %19 = add nsw i32 %4, 1, !dbg !1484
  store i32 %19, ptr @pos, align 4, !dbg !1484, !tbaa !1057
  %20 = load i32, ptr @argc, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %23, label %22, !dbg !1485

22:                                               ; preds = %18
  tail call fastcc void @beyond(), !dbg !1486
  unreachable, !dbg !1486

23:                                               ; preds = %18
  %24 = add nsw i32 %4, 2, !dbg !1487
  store i32 %24, ptr @pos, align 4, !dbg !1487, !tbaa !1057
  %25 = sext i32 %19 to i64, !dbg !1488
  %26 = getelementptr inbounds ptr, ptr %3, i64 %25, !dbg !1488
  %27 = load ptr, ptr %26, align 8, !dbg !1488, !tbaa !957
  %28 = call i32 @stat(ptr noundef %27, ptr noundef nonnull %2) #39, !dbg !1489
  %29 = icmp eq i32 %28, 0, !dbg !1490
  br label %367, !dbg !1491

30:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1492
  %31 = add nsw i32 %4, 1, !dbg !1495
  store i32 %31, ptr @pos, align 4, !dbg !1495, !tbaa !1057
  %32 = load i32, ptr @argc, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %35, label %34, !dbg !1496

34:                                               ; preds = %30
  tail call fastcc void @beyond(), !dbg !1497
  unreachable, !dbg !1497

35:                                               ; preds = %30
  %36 = add nsw i32 %4, 2, !dbg !1498
  store i32 %36, ptr @pos, align 4, !dbg !1498, !tbaa !1057
  %37 = sext i32 %31 to i64, !dbg !1499
  %38 = getelementptr inbounds ptr, ptr %3, i64 %37, !dbg !1499
  %39 = load ptr, ptr %38, align 8, !dbg !1499, !tbaa !957
  %40 = tail call i32 @euidaccess(ptr noundef %39, i32 noundef 4) #39, !dbg !1500
  %41 = icmp eq i32 %40, 0, !dbg !1501
  br label %367, !dbg !1502

42:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1503
  %43 = add nsw i32 %4, 1, !dbg !1506
  store i32 %43, ptr @pos, align 4, !dbg !1506, !tbaa !1057
  %44 = load i32, ptr @argc, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %47, label %46, !dbg !1507

46:                                               ; preds = %42
  tail call fastcc void @beyond(), !dbg !1508
  unreachable, !dbg !1508

47:                                               ; preds = %42
  %48 = add nsw i32 %4, 2, !dbg !1509
  store i32 %48, ptr @pos, align 4, !dbg !1509, !tbaa !1057
  %49 = sext i32 %43 to i64, !dbg !1510
  %50 = getelementptr inbounds ptr, ptr %3, i64 %49, !dbg !1510
  %51 = load ptr, ptr %50, align 8, !dbg !1510, !tbaa !957
  %52 = tail call i32 @euidaccess(ptr noundef %51, i32 noundef 2) #39, !dbg !1511
  %53 = icmp eq i32 %52, 0, !dbg !1512
  br label %367, !dbg !1513

54:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1514
  %55 = add nsw i32 %4, 1, !dbg !1517
  store i32 %55, ptr @pos, align 4, !dbg !1517, !tbaa !1057
  %56 = load i32, ptr @argc, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %59, label %58, !dbg !1518

58:                                               ; preds = %54
  tail call fastcc void @beyond(), !dbg !1519
  unreachable, !dbg !1519

59:                                               ; preds = %54
  %60 = add nsw i32 %4, 2, !dbg !1520
  store i32 %60, ptr @pos, align 4, !dbg !1520, !tbaa !1057
  %61 = sext i32 %55 to i64, !dbg !1521
  %62 = getelementptr inbounds ptr, ptr %3, i64 %61, !dbg !1521
  %63 = load ptr, ptr %62, align 8, !dbg !1521, !tbaa !957
  %64 = tail call i32 @euidaccess(ptr noundef %63, i32 noundef 1) #39, !dbg !1522
  %65 = icmp eq i32 %64, 0, !dbg !1523
  br label %367, !dbg !1524

66:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1525
  %67 = add nsw i32 %4, 1, !dbg !1528
  store i32 %67, ptr @pos, align 4, !dbg !1528, !tbaa !1057
  %68 = load i32, ptr @argc, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %71, label %70, !dbg !1529

70:                                               ; preds = %66
  tail call fastcc void @beyond(), !dbg !1530
  unreachable, !dbg !1530

71:                                               ; preds = %66
  %72 = add nsw i32 %4, 2, !dbg !1531
  store i32 %72, ptr @pos, align 4, !dbg !1531, !tbaa !1057
  %73 = sext i32 %67 to i64, !dbg !1532
  %74 = getelementptr inbounds ptr, ptr %3, i64 %73, !dbg !1532
  %75 = load ptr, ptr %74, align 8, !dbg !1532, !tbaa !957
  %76 = call i32 @stat(ptr noundef %75, ptr noundef nonnull %2) #39, !dbg !1534
  %77 = icmp eq i32 %76, 0, !dbg !1535
  br i1 %77, label %78, label %367, !dbg !1536

78:                                               ; preds = %71
  call void @llvm.dbg.value(metadata ptr %2, metadata !1537, metadata !DIExpression()), !dbg !1545
  %79 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 12, !dbg !1547
  call void @llvm.dbg.value(metadata i64 poison, metadata !1454, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1548
  call void @llvm.dbg.value(metadata i64 poison, metadata !1454, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1548
  call void @llvm.dbg.value(metadata ptr %2, metadata !1549, metadata !DIExpression()), !dbg !1552
  %80 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 13, !dbg !1554
  call void @llvm.dbg.value(metadata i64 poison, metadata !1457, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1548
  call void @llvm.dbg.value(metadata i64 poison, metadata !1457, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1548
  call void @llvm.dbg.value(metadata i64 undef, metadata !1555, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1562
  call void @llvm.dbg.value(metadata i64 undef, metadata !1555, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1562
  call void @llvm.dbg.value(metadata i64 undef, metadata !1561, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1562
  call void @llvm.dbg.value(metadata i64 undef, metadata !1561, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1562
  %81 = load <2 x i64>, ptr %79, align 8, !dbg !1547
  %82 = load <2 x i64>, ptr %80, align 8, !dbg !1554
  %83 = icmp sgt <2 x i64> %82, %81, !dbg !1564
  %84 = zext <2 x i1> %83 to <2 x i32>, !dbg !1564
  %85 = icmp slt <2 x i64> %82, %81, !dbg !1564
  %86 = sext <2 x i1> %85 to <2 x i32>, !dbg !1564
  %87 = add nsw <2 x i32> %86, %84, !dbg !1564
  %88 = extractelement <2 x i32> %87, i64 0, !dbg !1565
  %89 = shl nsw i32 %88, 1, !dbg !1565
  %90 = extractelement <2 x i32> %87, i64 1, !dbg !1566
  %91 = add nsw i32 %90, %89, !dbg !1566
  %92 = icmp sgt i32 %91, 0, !dbg !1567
  br label %367

93:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1568
  %94 = add nsw i32 %4, 1, !dbg !1571
  store i32 %94, ptr @pos, align 4, !dbg !1571, !tbaa !1057
  %95 = load i32, ptr @argc, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %98, label %97, !dbg !1572

97:                                               ; preds = %93
  tail call fastcc void @beyond(), !dbg !1573
  unreachable, !dbg !1573

98:                                               ; preds = %93
  %99 = add nsw i32 %4, 2, !dbg !1574
  store i32 %99, ptr @pos, align 4, !dbg !1574, !tbaa !1057
  %100 = sext i32 %94 to i64, !dbg !1575
  %101 = getelementptr inbounds ptr, ptr %3, i64 %100, !dbg !1575
  %102 = load ptr, ptr %101, align 8, !dbg !1575, !tbaa !957
  %103 = call i32 @stat(ptr noundef %102, ptr noundef nonnull %2) #39, !dbg !1577
  %104 = icmp eq i32 %103, 0, !dbg !1578
  br i1 %104, label %105, label %367, !dbg !1579

105:                                              ; preds = %98
  %106 = tail call ptr @__errno_location() #42, !dbg !1580
  store i32 0, ptr %106, align 4, !dbg !1581, !tbaa !1057
  %107 = tail call i32 @geteuid() #39, !dbg !1582
  call void @llvm.dbg.value(metadata i32 %107, metadata !1458, metadata !DIExpression()), !dbg !1583
  call void @llvm.dbg.value(metadata i32 -1, metadata !1462, metadata !DIExpression()), !dbg !1583
  %108 = icmp eq i32 %107, -1, !dbg !1584
  br i1 %108, label %109, label %112, !dbg !1585

109:                                              ; preds = %105
  %110 = load i32, ptr %106, align 4, !dbg !1586, !tbaa !1057
  %111 = icmp eq i32 %110, 0, !dbg !1586
  br i1 %111, label %112, label %367, !dbg !1587

112:                                              ; preds = %109, %105
  %113 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 4, !dbg !1588
  %114 = load i32, ptr %113, align 8, !dbg !1588, !tbaa !1589
  %115 = icmp eq i32 %107, %114, !dbg !1593
  br label %367

116:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1594
  %117 = add nsw i32 %4, 1, !dbg !1597
  store i32 %117, ptr @pos, align 4, !dbg !1597, !tbaa !1057
  %118 = load i32, ptr @argc, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %121, label %120, !dbg !1598

120:                                              ; preds = %116
  tail call fastcc void @beyond(), !dbg !1599
  unreachable, !dbg !1599

121:                                              ; preds = %116
  %122 = add nsw i32 %4, 2, !dbg !1600
  store i32 %122, ptr @pos, align 4, !dbg !1600, !tbaa !1057
  %123 = sext i32 %117 to i64, !dbg !1601
  %124 = getelementptr inbounds ptr, ptr %3, i64 %123, !dbg !1601
  %125 = load ptr, ptr %124, align 8, !dbg !1601, !tbaa !957
  %126 = call i32 @stat(ptr noundef %125, ptr noundef nonnull %2) #39, !dbg !1603
  %127 = icmp eq i32 %126, 0, !dbg !1604
  br i1 %127, label %128, label %367, !dbg !1605

128:                                              ; preds = %121
  %129 = tail call ptr @__errno_location() #42, !dbg !1606
  store i32 0, ptr %129, align 4, !dbg !1607, !tbaa !1057
  %130 = tail call i32 @getegid() #39, !dbg !1608
  call void @llvm.dbg.value(metadata i32 %130, metadata !1463, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i32 -1, metadata !1466, metadata !DIExpression()), !dbg !1609
  %131 = icmp eq i32 %130, -1, !dbg !1610
  br i1 %131, label %132, label %135, !dbg !1611

132:                                              ; preds = %128
  %133 = load i32, ptr %129, align 4, !dbg !1612, !tbaa !1057
  %134 = icmp eq i32 %133, 0, !dbg !1612
  br i1 %134, label %135, label %367, !dbg !1613

135:                                              ; preds = %132, %128
  %136 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 5, !dbg !1614
  %137 = load i32, ptr %136, align 4, !dbg !1614, !tbaa !1615
  %138 = icmp eq i32 %130, %137, !dbg !1616
  br label %367

139:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1617
  %140 = add nsw i32 %4, 1, !dbg !1620
  store i32 %140, ptr @pos, align 4, !dbg !1620, !tbaa !1057
  %141 = load i32, ptr @argc, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %144, label %143, !dbg !1621

143:                                              ; preds = %139
  tail call fastcc void @beyond(), !dbg !1622
  unreachable, !dbg !1622

144:                                              ; preds = %139
  %145 = add nsw i32 %4, 2, !dbg !1623
  store i32 %145, ptr @pos, align 4, !dbg !1623, !tbaa !1057
  %146 = sext i32 %140 to i64, !dbg !1624
  %147 = getelementptr inbounds ptr, ptr %3, i64 %146, !dbg !1624
  %148 = load ptr, ptr %147, align 8, !dbg !1624, !tbaa !957
  %149 = call i32 @stat(ptr noundef %148, ptr noundef nonnull %2) #39, !dbg !1625
  %150 = icmp eq i32 %149, 0, !dbg !1626
  %151 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1627
  %152 = load i32, ptr %151, align 8, !dbg !1627
  %153 = and i32 %152, 61440, !dbg !1627
  %154 = icmp eq i32 %153, 32768, !dbg !1627
  %155 = select i1 %150, i1 %154, i1 false, !dbg !1627
  br label %367, !dbg !1628

156:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1629
  %157 = add nsw i32 %4, 1, !dbg !1632
  store i32 %157, ptr @pos, align 4, !dbg !1632, !tbaa !1057
  %158 = load i32, ptr @argc, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %161, label %160, !dbg !1633

160:                                              ; preds = %156
  tail call fastcc void @beyond(), !dbg !1634
  unreachable, !dbg !1634

161:                                              ; preds = %156
  %162 = add nsw i32 %4, 2, !dbg !1635
  store i32 %162, ptr @pos, align 4, !dbg !1635, !tbaa !1057
  %163 = sext i32 %157 to i64, !dbg !1636
  %164 = getelementptr inbounds ptr, ptr %3, i64 %163, !dbg !1636
  %165 = load ptr, ptr %164, align 8, !dbg !1636, !tbaa !957
  %166 = call i32 @stat(ptr noundef %165, ptr noundef nonnull %2) #39, !dbg !1637
  %167 = icmp eq i32 %166, 0, !dbg !1638
  %168 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1639
  %169 = load i32, ptr %168, align 8, !dbg !1639
  %170 = and i32 %169, 61440, !dbg !1639
  %171 = icmp eq i32 %170, 16384, !dbg !1639
  %172 = select i1 %167, i1 %171, i1 false, !dbg !1639
  br label %367, !dbg !1640

173:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1641
  %174 = add nsw i32 %4, 1, !dbg !1644
  store i32 %174, ptr @pos, align 4, !dbg !1644, !tbaa !1057
  %175 = load i32, ptr @argc, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %178, label %177, !dbg !1645

177:                                              ; preds = %173
  tail call fastcc void @beyond(), !dbg !1646
  unreachable, !dbg !1646

178:                                              ; preds = %173
  %179 = add nsw i32 %4, 2, !dbg !1647
  store i32 %179, ptr @pos, align 4, !dbg !1647, !tbaa !1057
  %180 = sext i32 %174 to i64, !dbg !1648
  %181 = getelementptr inbounds ptr, ptr %3, i64 %180, !dbg !1648
  %182 = load ptr, ptr %181, align 8, !dbg !1648, !tbaa !957
  %183 = call i32 @stat(ptr noundef %182, ptr noundef nonnull %2) #39, !dbg !1649
  %184 = icmp eq i32 %183, 0, !dbg !1650
  %185 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 8, !dbg !1651
  %186 = load i64, ptr %185, align 8, !dbg !1651
  %187 = icmp sgt i64 %186, 0, !dbg !1651
  %188 = select i1 %184, i1 %187, i1 false, !dbg !1651
  br label %367, !dbg !1652

189:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1653
  %190 = add nsw i32 %4, 1, !dbg !1656
  store i32 %190, ptr @pos, align 4, !dbg !1656, !tbaa !1057
  %191 = load i32, ptr @argc, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %194, label %193, !dbg !1657

193:                                              ; preds = %189
  tail call fastcc void @beyond(), !dbg !1658
  unreachable, !dbg !1658

194:                                              ; preds = %189
  %195 = add nsw i32 %4, 2, !dbg !1659
  store i32 %195, ptr @pos, align 4, !dbg !1659, !tbaa !1057
  %196 = sext i32 %190 to i64, !dbg !1660
  %197 = getelementptr inbounds ptr, ptr %3, i64 %196, !dbg !1660
  %198 = load ptr, ptr %197, align 8, !dbg !1660, !tbaa !957
  %199 = call i32 @stat(ptr noundef %198, ptr noundef nonnull %2) #39, !dbg !1661
  %200 = icmp eq i32 %199, 0, !dbg !1662
  %201 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1663
  %202 = load i32, ptr %201, align 8, !dbg !1663
  %203 = and i32 %202, 61440, !dbg !1663
  %204 = icmp eq i32 %203, 49152, !dbg !1663
  %205 = select i1 %200, i1 %204, i1 false, !dbg !1663
  br label %367, !dbg !1664

206:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1665
  %207 = add nsw i32 %4, 1, !dbg !1668
  store i32 %207, ptr @pos, align 4, !dbg !1668, !tbaa !1057
  %208 = load i32, ptr @argc, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %211, label %210, !dbg !1669

210:                                              ; preds = %206
  tail call fastcc void @beyond(), !dbg !1670
  unreachable, !dbg !1670

211:                                              ; preds = %206
  %212 = add nsw i32 %4, 2, !dbg !1671
  store i32 %212, ptr @pos, align 4, !dbg !1671, !tbaa !1057
  %213 = sext i32 %207 to i64, !dbg !1672
  %214 = getelementptr inbounds ptr, ptr %3, i64 %213, !dbg !1672
  %215 = load ptr, ptr %214, align 8, !dbg !1672, !tbaa !957
  %216 = call i32 @stat(ptr noundef %215, ptr noundef nonnull %2) #39, !dbg !1673
  %217 = icmp eq i32 %216, 0, !dbg !1674
  %218 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1675
  %219 = load i32, ptr %218, align 8, !dbg !1675
  %220 = and i32 %219, 61440, !dbg !1675
  %221 = icmp eq i32 %220, 8192, !dbg !1675
  %222 = select i1 %217, i1 %221, i1 false, !dbg !1675
  br label %367, !dbg !1676

223:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1677
  %224 = add nsw i32 %4, 1, !dbg !1680
  store i32 %224, ptr @pos, align 4, !dbg !1680, !tbaa !1057
  %225 = load i32, ptr @argc, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %228, label %227, !dbg !1681

227:                                              ; preds = %223
  tail call fastcc void @beyond(), !dbg !1682
  unreachable, !dbg !1682

228:                                              ; preds = %223
  %229 = add nsw i32 %4, 2, !dbg !1683
  store i32 %229, ptr @pos, align 4, !dbg !1683, !tbaa !1057
  %230 = sext i32 %224 to i64, !dbg !1684
  %231 = getelementptr inbounds ptr, ptr %3, i64 %230, !dbg !1684
  %232 = load ptr, ptr %231, align 8, !dbg !1684, !tbaa !957
  %233 = call i32 @stat(ptr noundef %232, ptr noundef nonnull %2) #39, !dbg !1685
  %234 = icmp eq i32 %233, 0, !dbg !1686
  %235 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1687
  %236 = load i32, ptr %235, align 8, !dbg !1687
  %237 = and i32 %236, 61440, !dbg !1687
  %238 = icmp eq i32 %237, 24576, !dbg !1687
  %239 = select i1 %234, i1 %238, i1 false, !dbg !1687
  br label %367, !dbg !1688

240:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1689
  %241 = add nsw i32 %4, 1, !dbg !1692
  store i32 %241, ptr @pos, align 4, !dbg !1692, !tbaa !1057
  %242 = load i32, ptr @argc, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %245, label %244, !dbg !1693

244:                                              ; preds = %240
  tail call fastcc void @beyond(), !dbg !1694
  unreachable, !dbg !1694

245:                                              ; preds = %240
  %246 = add nsw i32 %4, 2, !dbg !1695
  store i32 %246, ptr @pos, align 4, !dbg !1695, !tbaa !1057
  %247 = sext i32 %241 to i64, !dbg !1696
  %248 = getelementptr inbounds ptr, ptr %3, i64 %247, !dbg !1696
  %249 = load ptr, ptr %248, align 8, !dbg !1696, !tbaa !957
  %250 = call i32 @stat(ptr noundef %249, ptr noundef nonnull %2) #39, !dbg !1697
  %251 = icmp eq i32 %250, 0, !dbg !1698
  %252 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1699
  %253 = load i32, ptr %252, align 8, !dbg !1699
  %254 = and i32 %253, 61440, !dbg !1699
  %255 = icmp eq i32 %254, 4096, !dbg !1699
  %256 = select i1 %251, i1 %255, i1 false, !dbg !1699
  br label %367, !dbg !1700

257:                                              ; preds = %0, %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1701
  %258 = add nsw i32 %4, 1, !dbg !1704
  store i32 %258, ptr @pos, align 4, !dbg !1704, !tbaa !1057
  %259 = load i32, ptr @argc, align 4
  %260 = icmp slt i32 %258, %259
  br i1 %260, label %262, label %261, !dbg !1705

261:                                              ; preds = %257
  tail call fastcc void @beyond(), !dbg !1706
  unreachable, !dbg !1706

262:                                              ; preds = %257
  %263 = add nsw i32 %4, 2, !dbg !1707
  store i32 %263, ptr @pos, align 4, !dbg !1707, !tbaa !1057
  %264 = sext i32 %258 to i64, !dbg !1708
  %265 = getelementptr inbounds ptr, ptr %3, i64 %264, !dbg !1708
  %266 = load ptr, ptr %265, align 8, !dbg !1708, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %266, metadata !1709, metadata !DIExpression()), !dbg !1716
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #39, !dbg !1718
  call void @llvm.dbg.declare(metadata ptr %1, metadata !1715, metadata !DIExpression()), !dbg !1719
  %267 = call i64 @readlink(ptr noundef nonnull %266, ptr noundef nonnull %1, i64 noundef 1) #39, !dbg !1720
  %268 = icmp sgt i64 %267, -1, !dbg !1722
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #39, !dbg !1723
  br label %367, !dbg !1724

269:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1725
  %270 = add nsw i32 %4, 1, !dbg !1728
  store i32 %270, ptr @pos, align 4, !dbg !1728, !tbaa !1057
  %271 = load i32, ptr @argc, align 4
  %272 = icmp slt i32 %270, %271
  br i1 %272, label %274, label %273, !dbg !1729

273:                                              ; preds = %269
  tail call fastcc void @beyond(), !dbg !1730
  unreachable, !dbg !1730

274:                                              ; preds = %269
  %275 = add nsw i32 %4, 2, !dbg !1731
  store i32 %275, ptr @pos, align 4, !dbg !1731, !tbaa !1057
  %276 = sext i32 %270 to i64, !dbg !1732
  %277 = getelementptr inbounds ptr, ptr %3, i64 %276, !dbg !1732
  %278 = load ptr, ptr %277, align 8, !dbg !1732, !tbaa !957
  %279 = call i32 @stat(ptr noundef %278, ptr noundef nonnull %2) #39, !dbg !1733
  %280 = icmp eq i32 %279, 0, !dbg !1734
  %281 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1735
  %282 = load i32, ptr %281, align 8, !dbg !1735
  %283 = and i32 %282, 2048, !dbg !1735
  %284 = icmp ne i32 %283, 0, !dbg !1735
  %285 = select i1 %280, i1 %284, i1 false, !dbg !1735
  br label %367, !dbg !1736

286:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1737
  %287 = add nsw i32 %4, 1, !dbg !1740
  store i32 %287, ptr @pos, align 4, !dbg !1740, !tbaa !1057
  %288 = load i32, ptr @argc, align 4
  %289 = icmp slt i32 %287, %288
  br i1 %289, label %291, label %290, !dbg !1741

290:                                              ; preds = %286
  tail call fastcc void @beyond(), !dbg !1742
  unreachable, !dbg !1742

291:                                              ; preds = %286
  %292 = add nsw i32 %4, 2, !dbg !1743
  store i32 %292, ptr @pos, align 4, !dbg !1743, !tbaa !1057
  %293 = sext i32 %287 to i64, !dbg !1744
  %294 = getelementptr inbounds ptr, ptr %3, i64 %293, !dbg !1744
  %295 = load ptr, ptr %294, align 8, !dbg !1744, !tbaa !957
  %296 = call i32 @stat(ptr noundef %295, ptr noundef nonnull %2) #39, !dbg !1745
  %297 = icmp eq i32 %296, 0, !dbg !1746
  %298 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1747
  %299 = load i32, ptr %298, align 8, !dbg !1747
  %300 = and i32 %299, 1024, !dbg !1747
  %301 = icmp ne i32 %300, 0, !dbg !1747
  %302 = select i1 %297, i1 %301, i1 false, !dbg !1747
  br label %367, !dbg !1748

303:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1749
  %304 = add nsw i32 %4, 1, !dbg !1752
  store i32 %304, ptr @pos, align 4, !dbg !1752, !tbaa !1057
  %305 = load i32, ptr @argc, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %308, label %307, !dbg !1753

307:                                              ; preds = %303
  tail call fastcc void @beyond(), !dbg !1754
  unreachable, !dbg !1754

308:                                              ; preds = %303
  %309 = add nsw i32 %4, 2, !dbg !1755
  store i32 %309, ptr @pos, align 4, !dbg !1755, !tbaa !1057
  %310 = sext i32 %304 to i64, !dbg !1756
  %311 = getelementptr inbounds ptr, ptr %3, i64 %310, !dbg !1756
  %312 = load ptr, ptr %311, align 8, !dbg !1756, !tbaa !957
  %313 = call i32 @stat(ptr noundef %312, ptr noundef nonnull %2) #39, !dbg !1757
  %314 = icmp eq i32 %313, 0, !dbg !1758
  %315 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 2, !dbg !1759
  %316 = load i32, ptr %315, align 8, !dbg !1759
  %317 = and i32 %316, 512, !dbg !1759
  %318 = icmp ne i32 %317, 0, !dbg !1759
  %319 = select i1 %314, i1 %318, i1 false, !dbg !1759
  br label %367, !dbg !1760

320:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1761
  %321 = add nsw i32 %4, 1, !dbg !1764
  store i32 %321, ptr @pos, align 4, !dbg !1764, !tbaa !1057
  %322 = load i32, ptr @argc, align 4
  %323 = icmp slt i32 %321, %322
  br i1 %323, label %325, label %324, !dbg !1765

324:                                              ; preds = %320
  tail call fastcc void @beyond(), !dbg !1766
  unreachable, !dbg !1766

325:                                              ; preds = %320
  %326 = add nsw i32 %4, 2, !dbg !1767
  store i32 %326, ptr @pos, align 4, !dbg !1767, !tbaa !1057
  %327 = sext i32 %321 to i64, !dbg !1768
  %328 = getelementptr inbounds ptr, ptr %3, i64 %327, !dbg !1768
  %329 = load ptr, ptr %328, align 8, !dbg !1768, !tbaa !957
  %330 = tail call fastcc ptr @find_int(ptr noundef %329), !dbg !1769
  call void @llvm.dbg.value(metadata ptr %330, metadata !1469, metadata !DIExpression()), !dbg !1770
  %331 = tail call ptr @__errno_location() #42, !dbg !1771
  store i32 0, ptr %331, align 4, !dbg !1772, !tbaa !1057
  %332 = tail call i64 @strtol(ptr nocapture noundef %330, ptr noundef null, i32 noundef 10) #39, !dbg !1773
  call void @llvm.dbg.value(metadata i64 %332, metadata !1467, metadata !DIExpression()), !dbg !1770
  %333 = load i32, ptr %331, align 4, !dbg !1774, !tbaa !1057
  %334 = icmp ne i32 %333, 34, !dbg !1775
  %335 = icmp sgt i64 %332, -1
  %336 = select i1 %334, i1 %335, i1 false, !dbg !1776
  %337 = icmp slt i64 %332, 2147483648
  %338 = select i1 %336, i1 %337, i1 false, !dbg !1776
  br i1 %338, label %339, label %367, !dbg !1776

339:                                              ; preds = %325
  %340 = trunc i64 %332 to i32, !dbg !1777
  %341 = tail call i32 @isatty(i32 noundef %340) #39, !dbg !1778
  %342 = icmp ne i32 %341, 0, !dbg !1779
  br label %367

343:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1780
  %344 = add nsw i32 %4, 1, !dbg !1783
  store i32 %344, ptr @pos, align 4, !dbg !1783, !tbaa !1057
  %345 = load i32, ptr @argc, align 4
  %346 = icmp slt i32 %344, %345
  br i1 %346, label %348, label %347, !dbg !1784

347:                                              ; preds = %343
  tail call fastcc void @beyond(), !dbg !1785
  unreachable, !dbg !1785

348:                                              ; preds = %343
  %349 = add nsw i32 %4, 2, !dbg !1786
  store i32 %349, ptr @pos, align 4, !dbg !1786, !tbaa !1057
  %350 = sext i32 %344 to i64, !dbg !1787
  %351 = getelementptr inbounds ptr, ptr %3, i64 %350, !dbg !1787
  %352 = load ptr, ptr %351, align 8, !dbg !1787, !tbaa !957
  %353 = load i8, ptr %352, align 1, !dbg !1787, !tbaa !1066
  %354 = icmp ne i8 %353, 0, !dbg !1788
  br label %367, !dbg !1789

355:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1790
  %356 = add nsw i32 %4, 1, !dbg !1793
  store i32 %356, ptr @pos, align 4, !dbg !1793, !tbaa !1057
  %357 = load i32, ptr @argc, align 4
  %358 = icmp slt i32 %356, %357
  br i1 %358, label %360, label %359, !dbg !1794

359:                                              ; preds = %355
  tail call fastcc void @beyond(), !dbg !1795
  unreachable, !dbg !1795

360:                                              ; preds = %355
  %361 = add nsw i32 %4, 2, !dbg !1796
  store i32 %361, ptr @pos, align 4, !dbg !1796, !tbaa !1057
  %362 = sext i32 %356 to i64, !dbg !1797
  %363 = getelementptr inbounds ptr, ptr %3, i64 %362, !dbg !1797
  %364 = load ptr, ptr %363, align 8, !dbg !1797, !tbaa !957
  %365 = load i8, ptr %364, align 1, !dbg !1797, !tbaa !1066
  %366 = icmp eq i8 %365, 0, !dbg !1798
  br label %367, !dbg !1799

367:                                              ; preds = %325, %339, %132, %135, %121, %109, %112, %98, %71, %360, %348, %308, %291, %274, %262, %245, %228, %211, %194, %178, %161, %144, %78, %59, %47, %35, %23
  %368 = phi i1 [ %366, %360 ], [ %354, %348 ], [ %319, %308 ], [ %302, %291 ], [ %285, %274 ], [ %268, %262 ], [ %256, %245 ], [ %239, %228 ], [ %222, %211 ], [ %205, %194 ], [ %188, %178 ], [ %172, %161 ], [ %155, %144 ], [ %92, %78 ], [ %65, %59 ], [ %53, %47 ], [ %41, %35 ], [ %29, %23 ], [ false, %71 ], [ false, %98 ], [ false, %109 ], [ %115, %112 ], [ false, %121 ], [ false, %132 ], [ %138, %135 ], [ false, %325 ], [ %342, %339 ], !dbg !1800
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %2) #39, !dbg !1801
  ret i1 %368, !dbg !1801
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @beyond() unnamed_addr #0 !dbg !1802 {
  %1 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.92, i32 noundef 5) #39, !dbg !1803
  %2 = load ptr, ptr @argv, align 8, !dbg !1804, !tbaa !957
  %3 = load i32, ptr @argc, align 4, !dbg !1805, !tbaa !1057
  %4 = add nsw i32 %3, -1, !dbg !1806
  %5 = sext i32 %4 to i64, !dbg !1804
  %6 = getelementptr inbounds ptr, ptr %2, i64 %5, !dbg !1804
  %7 = load ptr, ptr %6, align 8, !dbg !1804, !tbaa !957
  %8 = tail call ptr @quote(ptr noundef %7) #39, !dbg !1807
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %1, ptr noundef %8) #43, !dbg !1808
  unreachable, !dbg !1808
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @three_arguments() unnamed_addr #10 !dbg !1809 {
  %1 = load ptr, ptr @argv, align 8, !dbg !1813, !tbaa !957
  %2 = load i32, ptr @pos, align 4, !dbg !1814, !tbaa !1057
  %3 = add nsw i32 %2, 1, !dbg !1815
  %4 = sext i32 %3 to i64, !dbg !1813
  %5 = getelementptr inbounds ptr, ptr %1, i64 %4, !dbg !1813
  %6 = load ptr, ptr %5, align 8, !dbg !1813, !tbaa !957
  %7 = tail call fastcc i32 @binop(ptr noundef %6), !dbg !1816
  call void @llvm.dbg.value(metadata i32 %7, metadata !1812, metadata !DIExpression()), !dbg !1817
  %8 = icmp sgt i32 %7, -1, !dbg !1818
  br i1 %8, label %9, label %11, !dbg !1820

9:                                                ; preds = %0
  %10 = tail call fastcc i1 @binary_operator(i1 noundef false, i32 noundef %7), !dbg !1821
  call void @llvm.dbg.value(metadata i1 %10, metadata !1811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1817
  br label %90, !dbg !1822

11:                                               ; preds = %0
  %12 = sext i32 %2 to i64, !dbg !1823
  %13 = getelementptr inbounds ptr, ptr %1, i64 %12, !dbg !1823
  %14 = load ptr, ptr %13, align 8, !dbg !1823, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %14, metadata !1068, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata ptr @.str.85, metadata !1074, metadata !DIExpression()), !dbg !1825
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(2) @.str.85) #40, !dbg !1827
  %16 = icmp eq i32 %15, 0, !dbg !1828
  br i1 %16, label %17, label %49, !dbg !1829

17:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1830
  store i32 %3, ptr @pos, align 4, !dbg !1833, !tbaa !1057
  %18 = load i32, ptr @argc, align 4
  %19 = icmp slt i32 %3, %18
  br i1 %19, label %21, label %20, !dbg !1834

20:                                               ; preds = %17
  tail call fastcc void @beyond(), !dbg !1835
  unreachable, !dbg !1835

21:                                               ; preds = %17
  call void @llvm.dbg.value(metadata ptr %6, metadata !1068, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata ptr @.str.85, metadata !1074, metadata !DIExpression()), !dbg !1836
  %22 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.85) #40, !dbg !1839
  %23 = icmp eq i32 %22, 0, !dbg !1840
  br i1 %23, label %24, label %32, !dbg !1841

24:                                               ; preds = %21
  call void @llvm.dbg.value(metadata i1 false, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1842
  %25 = add nsw i32 %2, 2, !dbg !1844
  %26 = add nsw i32 %2, 3, !dbg !1845
  store i32 %26, ptr @pos, align 4, !dbg !1845, !tbaa !1057
  %27 = sext i32 %25 to i64, !dbg !1847
  %28 = getelementptr inbounds ptr, ptr %1, i64 %27, !dbg !1847
  %29 = load ptr, ptr %28, align 8, !dbg !1847, !tbaa !957
  %30 = load i8, ptr %29, align 1, !dbg !1847, !tbaa !1066
  %31 = icmp eq i8 %30, 0, !dbg !1848
  call void @llvm.dbg.value(metadata i1 %31, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1849
  br label %46, !dbg !1850

32:                                               ; preds = %21
  %33 = load i8, ptr %6, align 1, !dbg !1851, !tbaa !1066
  %34 = icmp eq i8 %33, 45, !dbg !1852
  br i1 %34, label %35, label %45, !dbg !1853

35:                                               ; preds = %32
  %36 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !1854
  %37 = load i8, ptr %36, align 1, !dbg !1854, !tbaa !1066
  %38 = icmp eq i8 %37, 0, !dbg !1855
  br i1 %38, label %45, label %39, !dbg !1856

39:                                               ; preds = %35
  %40 = getelementptr inbounds i8, ptr %6, i64 2, !dbg !1857
  %41 = load i8, ptr %40, align 1, !dbg !1857, !tbaa !1066
  %42 = icmp eq i8 %41, 0, !dbg !1858
  br i1 %42, label %43, label %45, !dbg !1859

43:                                               ; preds = %39
  %44 = tail call fastcc i1 @unary_operator(), !dbg !1860
  call void @llvm.dbg.value(metadata i1 %44, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1849
  br label %46

45:                                               ; preds = %39, %35, %32
  tail call fastcc void @beyond() #43, !dbg !1861
  unreachable, !dbg !1861

46:                                               ; preds = %24, %43
  %47 = phi i1 [ %31, %24 ], [ %44, %43 ]
  call void @llvm.dbg.value(metadata i1 %47, metadata !1276, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1849
  %48 = xor i1 %47, true, !dbg !1862
  call void @llvm.dbg.value(metadata i1 %48, metadata !1811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1817
  br label %90, !dbg !1863

49:                                               ; preds = %11
  call void @llvm.dbg.value(metadata ptr %14, metadata !1068, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata ptr @.str.86, metadata !1074, metadata !DIExpression()), !dbg !1864
  %50 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(2) @.str.86) #40, !dbg !1867
  %51 = icmp eq i32 %50, 0, !dbg !1868
  br i1 %51, label %52, label %63, !dbg !1869

52:                                               ; preds = %49
  %53 = add nsw i32 %2, 2, !dbg !1870
  %54 = sext i32 %53 to i64, !dbg !1871
  %55 = getelementptr inbounds ptr, ptr %1, i64 %54, !dbg !1871
  %56 = load ptr, ptr %55, align 8, !dbg !1871, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %56, metadata !1068, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1074, metadata !DIExpression()), !dbg !1872
  %57 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(2) @.str.87) #40, !dbg !1874
  %58 = icmp eq i32 %57, 0, !dbg !1875
  br i1 %58, label %59, label %63, !dbg !1876

59:                                               ; preds = %52
  call void @llvm.dbg.value(metadata i1 false, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1877
  %60 = load i8, ptr %6, align 1, !dbg !1880, !tbaa !1066
  %61 = icmp ne i8 %60, 0, !dbg !1882
  call void @llvm.dbg.value(metadata i1 %61, metadata !1811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1817
  call void @llvm.dbg.value(metadata i1 false, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1883
  %62 = add nsw i32 %2, 3, !dbg !1885
  store i32 %62, ptr @pos, align 4, !dbg !1885, !tbaa !1057
  br label %90, !dbg !1886

63:                                               ; preds = %52, %49
  call void @llvm.dbg.value(metadata ptr %6, metadata !1068, metadata !DIExpression()), !dbg !1887
  call void @llvm.dbg.value(metadata ptr @.str.93, metadata !1074, metadata !DIExpression()), !dbg !1887
  %64 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(3) @.str.93) #40, !dbg !1890
  %65 = icmp eq i32 %64, 0, !dbg !1891
  br i1 %65, label %75, label %66, !dbg !1892

66:                                               ; preds = %63
  call void @llvm.dbg.value(metadata ptr %6, metadata !1068, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.value(metadata ptr @.str.94, metadata !1074, metadata !DIExpression()), !dbg !1893
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(3) @.str.94) #40, !dbg !1895
  %68 = icmp eq i32 %67, 0, !dbg !1896
  br i1 %68, label %75, label %69, !dbg !1897

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata ptr %6, metadata !1068, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata ptr @.str.95, metadata !1074, metadata !DIExpression()), !dbg !1898
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.95) #40, !dbg !1900
  %71 = icmp eq i32 %70, 0, !dbg !1901
  br i1 %71, label %75, label %72, !dbg !1902

72:                                               ; preds = %69
  call void @llvm.dbg.value(metadata ptr %6, metadata !1068, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata ptr @.str.96, metadata !1074, metadata !DIExpression()), !dbg !1903
  %73 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.96) #40, !dbg !1905
  %74 = icmp eq i32 %73, 0, !dbg !1906
  br i1 %74, label %75, label %81, !dbg !1907

75:                                               ; preds = %72, %69, %66, %63
  %76 = load i32, ptr @argc, align 4, !dbg !1908, !tbaa !1057
  %77 = icmp slt i32 %2, %76, !dbg !1910
  br i1 %77, label %79, label %78, !dbg !1911

78:                                               ; preds = %75
  tail call fastcc void @beyond() #43, !dbg !1912
  unreachable, !dbg !1912

79:                                               ; preds = %75
  %80 = tail call fastcc i1 @or(), !dbg !1913
  call void @llvm.dbg.value(metadata i1 %80, metadata !1811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1817
  br label %90

81:                                               ; preds = %72
  %82 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.97, i32 noundef 5) #39, !dbg !1914
  %83 = load ptr, ptr @argv, align 8, !dbg !1915, !tbaa !957
  %84 = load i32, ptr @pos, align 4, !dbg !1916, !tbaa !1057
  %85 = add nsw i32 %84, 1, !dbg !1917
  %86 = sext i32 %85 to i64, !dbg !1915
  %87 = getelementptr inbounds ptr, ptr %83, i64 %86, !dbg !1915
  %88 = load ptr, ptr %87, align 8, !dbg !1915, !tbaa !957
  %89 = tail call ptr @quote(ptr noundef %88) #39, !dbg !1918
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %82, ptr noundef %89) #43, !dbg !1919
  unreachable, !dbg !1919

90:                                               ; preds = %46, %79, %59, %9
  %91 = phi i1 [ %10, %9 ], [ %48, %46 ], [ %61, %59 ], [ %80, %79 ]
  call void @llvm.dbg.value(metadata i1 %91, metadata !1811, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1817
  ret i1 %91, !dbg !1920
}

; Function Attrs: noreturn nounwind
declare !dbg !1921 void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc i1 @or() unnamed_addr #10 !dbg !1925 {
  call void @llvm.dbg.value(metadata i8 0, metadata !1927, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i8 poison, metadata !1927, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i8 1, metadata !1929, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 0, metadata !1935, metadata !DIExpression()), !dbg !1943
  %1 = load i32, ptr @argc, align 4, !tbaa !1057
  %2 = load i32, ptr @pos, align 4, !tbaa !1057
  call void @llvm.dbg.value(metadata i8 poison, metadata !1935, metadata !DIExpression()), !dbg !1943
  %3 = icmp sgt i32 %1, %2, !dbg !1946
  br i1 %3, label %4, label %43, !dbg !1947

4:                                                ; preds = %0
  %5 = load ptr, ptr @argv, align 8, !tbaa !957
  br label %6, !dbg !1948

6:                                                ; preds = %4, %200
  %7 = phi ptr [ %183, %200 ], [ %5, %4 ]
  %8 = phi i32 [ %201, %200 ], [ %2, %4 ]
  %9 = phi i32 [ %180, %200 ], [ %1, %4 ]
  %10 = phi i1 [ %195, %200 ], [ false, %4 ]
  br label %11, !dbg !1947

11:                                               ; preds = %6, %189
  %12 = phi ptr [ %7, %6 ], [ %183, %189 ]
  %13 = phi i32 [ %8, %6 ], [ %190, %189 ]
  %14 = phi i32 [ %9, %6 ], [ %180, %189 ]
  %15 = phi i1 [ true, %6 ], [ %178, %189 ]
  %16 = sext i32 %13 to i64, !dbg !1947
  %17 = sext i32 %14 to i64, !dbg !1947
  %18 = add i32 %13, 2, !dbg !1947
  %19 = getelementptr inbounds ptr, ptr %12, i64 %16, !dbg !1949
  %20 = load ptr, ptr %19, align 8, !dbg !1949, !tbaa !957
  %21 = load i8, ptr %20, align 1, !dbg !1949, !tbaa !1066
  %22 = icmp eq i8 %21, 33, !dbg !1950
  br i1 %22, label %23, label %44, !dbg !1951

23:                                               ; preds = %11, %36
  %24 = phi ptr [ %40, %36 ], [ %20, %11 ]
  %25 = phi i1 [ %37, %36 ], [ false, %11 ]
  %26 = phi i64 [ %32, %36 ], [ %16, %11 ]
  %27 = phi i32 [ %38, %36 ], [ %18, %11 ]
  %28 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1952
  %29 = load i8, ptr %28, align 1, !dbg !1952, !tbaa !1066
  %30 = icmp eq i8 %29, 0, !dbg !1953
  br i1 %30, label %31, label %44, !dbg !1954

31:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1955
  %32 = add nsw i64 %26, 1, !dbg !1958
  %33 = trunc i64 %32 to i32, !dbg !1958
  store i32 %33, ptr @pos, align 4, !dbg !1958, !tbaa !1057
  %34 = icmp slt i64 %32, %17
  br i1 %34, label %36, label %35, !dbg !1959

35:                                               ; preds = %31
  tail call fastcc void @beyond(), !dbg !1960
  unreachable, !dbg !1960

36:                                               ; preds = %31
  %37 = xor i1 %25, true, !dbg !1961
  call void @llvm.dbg.value(metadata i8 poison, metadata !1935, metadata !DIExpression()), !dbg !1943
  %38 = add i32 %27, 1, !dbg !1947
  %39 = getelementptr inbounds ptr, ptr %12, i64 %32, !dbg !1949
  %40 = load ptr, ptr %39, align 8, !dbg !1949, !tbaa !957
  %41 = load i8, ptr %40, align 1, !dbg !1949, !tbaa !1066
  %42 = icmp eq i8 %41, 33, !dbg !1950
  br i1 %42, label %23, label %44, !dbg !1951, !llvm.loop !1962

43:                                               ; preds = %200, %189, %0
  tail call fastcc void @beyond() #43, !dbg !1964
  unreachable, !dbg !1964

44:                                               ; preds = %36, %23, %11
  %45 = phi i32 [ %18, %11 ], [ %38, %36 ], [ %27, %23 ]
  %46 = phi i64 [ %16, %11 ], [ %32, %36 ], [ %26, %23 ]
  %47 = phi i1 [ false, %11 ], [ %37, %36 ], [ %25, %23 ]
  %48 = trunc i64 %46 to i32, !dbg !1951
  %49 = shl i64 %46, 32, !dbg !1966
  %50 = ashr exact i64 %49, 32, !dbg !1966
  %51 = getelementptr inbounds ptr, ptr %12, i64 %50, !dbg !1966
  %52 = load ptr, ptr %51, align 8, !dbg !1966, !tbaa !957
  %53 = load i8, ptr %52, align 1, !dbg !1966, !tbaa !1066
  %54 = icmp eq i8 %53, 40, !dbg !1967
  br i1 %54, label %55, label %132, !dbg !1968

55:                                               ; preds = %44
  %56 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !1969
  %57 = load i8, ptr %56, align 1, !dbg !1969, !tbaa !1066
  %58 = icmp eq i8 %57, 0, !dbg !1970
  br i1 %58, label %59, label %132, !dbg !1971

59:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i1 true, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1972
  %60 = add nsw i32 %48, 1, !dbg !1974
  store i32 %60, ptr @pos, align 4, !dbg !1974, !tbaa !1057
  %61 = icmp sgt i32 %14, %60
  br i1 %61, label %62, label %72, !dbg !1975

62:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i32 1, metadata !1940, metadata !DIExpression()), !dbg !1976
  %63 = add nsw i32 %48, 2, !dbg !1977
  %64 = icmp slt i32 %63, %14, !dbg !1980
  br i1 %64, label %65, label %102, !dbg !1981

65:                                               ; preds = %62
  %66 = sext i32 %45 to i64, !dbg !1982
  %67 = sext i32 %60 to i64, !dbg !1982
  call void @llvm.dbg.value(metadata i64 1, metadata !1940, metadata !DIExpression()), !dbg !1976
  %68 = getelementptr inbounds ptr, ptr %12, i64 %66, !dbg !1983
  %69 = load ptr, ptr %68, align 8, !dbg !1983, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %69, metadata !1068, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1074, metadata !DIExpression()), !dbg !1984
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(2) @.str.87) #40, !dbg !1986
  %71 = icmp eq i32 %70, 0, !dbg !1987
  br i1 %71, label %102, label %73, !dbg !1982

72:                                               ; preds = %59
  tail call fastcc void @beyond(), !dbg !1988
  unreachable, !dbg !1988

73:                                               ; preds = %65
  call void @llvm.dbg.value(metadata i64 2, metadata !1940, metadata !DIExpression()), !dbg !1976
  %74 = add nsw i64 %67, 2, !dbg !1977
  %75 = icmp slt i64 %74, %17, !dbg !1980
  br i1 %75, label %76, label %102, !dbg !1981, !llvm.loop !1989

76:                                               ; preds = %73
  %77 = add nsw i64 %66, 1, !dbg !1977
  call void @llvm.dbg.value(metadata i64 2, metadata !1940, metadata !DIExpression()), !dbg !1976
  %78 = getelementptr inbounds ptr, ptr %12, i64 %77, !dbg !1983
  %79 = load ptr, ptr %78, align 8, !dbg !1983, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %79, metadata !1068, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1074, metadata !DIExpression()), !dbg !1984
  %80 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %79, ptr noundef nonnull dereferenceable(2) @.str.87) #40, !dbg !1986
  %81 = icmp eq i32 %80, 0, !dbg !1987
  br i1 %81, label %102, label %82, !dbg !1982

82:                                               ; preds = %76
  call void @llvm.dbg.value(metadata i64 3, metadata !1940, metadata !DIExpression()), !dbg !1976
  %83 = add nsw i64 %67, 3, !dbg !1977
  %84 = icmp slt i64 %83, %17, !dbg !1980
  br i1 %84, label %85, label %102, !dbg !1981, !llvm.loop !1989

85:                                               ; preds = %82
  %86 = add nsw i64 %66, 2, !dbg !1977
  call void @llvm.dbg.value(metadata i64 3, metadata !1940, metadata !DIExpression()), !dbg !1976
  %87 = getelementptr inbounds ptr, ptr %12, i64 %86, !dbg !1983
  %88 = load ptr, ptr %87, align 8, !dbg !1983, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %88, metadata !1068, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1074, metadata !DIExpression()), !dbg !1984
  %89 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %88, ptr noundef nonnull dereferenceable(2) @.str.87) #40, !dbg !1986
  %90 = icmp eq i32 %89, 0, !dbg !1987
  br i1 %90, label %102, label %91, !dbg !1982

91:                                               ; preds = %85
  call void @llvm.dbg.value(metadata i64 4, metadata !1940, metadata !DIExpression()), !dbg !1976
  %92 = add nsw i64 %67, 4, !dbg !1977
  %93 = icmp slt i64 %92, %17, !dbg !1980
  br i1 %93, label %94, label %102, !dbg !1981, !llvm.loop !1989

94:                                               ; preds = %91
  %95 = add nsw i64 %66, 3, !dbg !1977
  call void @llvm.dbg.value(metadata i64 4, metadata !1940, metadata !DIExpression()), !dbg !1976
  %96 = getelementptr inbounds ptr, ptr %12, i64 %95, !dbg !1983
  %97 = load ptr, ptr %96, align 8, !dbg !1983, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %97, metadata !1068, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1074, metadata !DIExpression()), !dbg !1984
  %98 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %97, ptr noundef nonnull dereferenceable(2) @.str.87) #40, !dbg !1986
  %99 = icmp eq i32 %98, 0, !dbg !1987
  %100 = sub nsw i32 %14, %60
  %101 = select i1 %99, i32 4, i32 %100, !dbg !1982
  br label %102, !dbg !1982

102:                                              ; preds = %94, %73, %65, %76, %82, %85, %91, %62
  %103 = phi i32 [ 1, %62 ], [ 1, %65 ], [ 2, %73 ], [ 2, %76 ], [ 3, %82 ], [ 3, %85 ], [ 4, %91 ], [ %101, %94 ], !dbg !1991
  call void @llvm.dbg.value(metadata i32 %103, metadata !1940, metadata !DIExpression()), !dbg !1976
  %104 = tail call fastcc i1 @posixtest(i32 noundef %103), !dbg !1992
  call void @llvm.dbg.value(metadata i1 %104, metadata !1938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1943
  %105 = load ptr, ptr @argv, align 8, !dbg !1993, !tbaa !957
  %106 = load i32, ptr @pos, align 4, !dbg !1995, !tbaa !1057
  %107 = sext i32 %106 to i64, !dbg !1993
  %108 = getelementptr inbounds ptr, ptr %105, i64 %107, !dbg !1993
  %109 = load ptr, ptr %108, align 8, !dbg !1993, !tbaa !957
  %110 = icmp eq ptr %109, null, !dbg !1993
  br i1 %110, label %111, label %114, !dbg !1996

111:                                              ; preds = %102
  %112 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.114, i32 noundef 5) #39, !dbg !1997
  %113 = tail call ptr @quote(ptr noundef nonnull @.str.87) #39, !dbg !1998
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %112, ptr noundef %113) #43, !dbg !1999
  unreachable, !dbg !1999

114:                                              ; preds = %102
  %115 = load i8, ptr %109, align 1, !dbg !2000, !tbaa !1066
  %116 = icmp eq i8 %115, 41, !dbg !2002
  br i1 %116, label %117, label %121, !dbg !2003

117:                                              ; preds = %114
  %118 = getelementptr inbounds i8, ptr %109, i64 1, !dbg !2004
  %119 = load i8, ptr %118, align 1, !dbg !2004, !tbaa !1066
  %120 = icmp eq i8 %119, 0, !dbg !2004
  br i1 %120, label %130, label %121, !dbg !2005

121:                                              ; preds = %117, %114
  %122 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.115, i32 noundef 5) #39, !dbg !2006
  %123 = tail call ptr @quote_n(i32 noundef 0, ptr noundef nonnull @.str.87) #39, !dbg !2007
  %124 = load ptr, ptr @argv, align 8, !dbg !2008, !tbaa !957
  %125 = load i32, ptr @pos, align 4, !dbg !2009, !tbaa !1057
  %126 = sext i32 %125 to i64, !dbg !2008
  %127 = getelementptr inbounds ptr, ptr %124, i64 %126, !dbg !2008
  %128 = load ptr, ptr %127, align 8, !dbg !2008, !tbaa !957
  %129 = tail call ptr @quote_n(i32 noundef 1, ptr noundef %128) #39, !dbg !2010
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %122, ptr noundef %123, ptr noundef %129) #43, !dbg !2011
  unreachable, !dbg !2011

130:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i1 false, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2012
  %131 = add nsw i32 %106, 1, !dbg !2014
  store i32 %131, ptr @pos, align 4, !dbg !2014, !tbaa !1057
  br label %175, !dbg !2015

132:                                              ; preds = %55, %44
  %133 = sub nsw i32 %14, %48, !dbg !2016
  %134 = icmp sgt i32 %133, 3, !dbg !2018
  br i1 %134, label %135, label %148, !dbg !2019

135:                                              ; preds = %132
  call void @llvm.dbg.value(metadata ptr %52, metadata !1068, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata ptr @.str.110, metadata !1074, metadata !DIExpression()), !dbg !2020
  %136 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(3) @.str.110) #40, !dbg !2022
  %137 = icmp eq i32 %136, 0, !dbg !2023
  br i1 %137, label %138, label %150, !dbg !2024

138:                                              ; preds = %135
  %139 = shl i64 %46, 32, !dbg !2025
  %140 = add i64 %139, 8589934592, !dbg !2025
  %141 = ashr exact i64 %140, 32, !dbg !2025
  %142 = getelementptr inbounds ptr, ptr %12, i64 %141, !dbg !2025
  %143 = load ptr, ptr %142, align 8, !dbg !2025, !tbaa !957
  %144 = tail call fastcc i32 @binop(ptr noundef %143), !dbg !2026
  call void @llvm.dbg.value(metadata i32 %144, metadata !1939, metadata !DIExpression()), !dbg !1943
  %145 = icmp sgt i32 %144, -1, !dbg !2027
  br i1 %145, label %146, label %150, !dbg !2028

146:                                              ; preds = %138
  %147 = tail call fastcc i1 @binary_operator(i1 noundef true, i32 noundef %144), !dbg !2029
  call void @llvm.dbg.value(metadata i1 %147, metadata !1938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1943
  br label %175, !dbg !2030

148:                                              ; preds = %132
  %149 = icmp eq i32 %133, 3, !dbg !2031
  br i1 %149, label %150, label %160, !dbg !2033

150:                                              ; preds = %135, %138, %148
  %151 = shl i64 %46, 32, !dbg !2034
  %152 = add i64 %151, 4294967296, !dbg !2034
  %153 = ashr exact i64 %152, 32, !dbg !2034
  %154 = getelementptr inbounds ptr, ptr %12, i64 %153, !dbg !2034
  %155 = load ptr, ptr %154, align 8, !dbg !2034, !tbaa !957
  %156 = tail call fastcc i32 @binop(ptr noundef %155), !dbg !2035
  call void @llvm.dbg.value(metadata i32 %156, metadata !1939, metadata !DIExpression()), !dbg !1943
  %157 = icmp sgt i32 %156, -1, !dbg !2036
  br i1 %157, label %158, label %160, !dbg !2037

158:                                              ; preds = %150
  %159 = tail call fastcc i1 @binary_operator(i1 noundef false, i32 noundef %156), !dbg !2038
  call void @llvm.dbg.value(metadata i1 %159, metadata !1938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1943
  br label %175, !dbg !2039

160:                                              ; preds = %150, %148
  %161 = icmp eq i8 %53, 45, !dbg !2040
  br i1 %161, label %162, label %172, !dbg !2042

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !2043
  %164 = load i8, ptr %163, align 1, !dbg !2043, !tbaa !1066
  %165 = icmp eq i8 %164, 0, !dbg !2043
  br i1 %165, label %172, label %166, !dbg !2044

166:                                              ; preds = %162
  %167 = getelementptr inbounds i8, ptr %52, i64 2, !dbg !2045
  %168 = load i8, ptr %167, align 1, !dbg !2045, !tbaa !1066
  %169 = icmp eq i8 %168, 0, !dbg !2046
  br i1 %169, label %170, label %172, !dbg !2047

170:                                              ; preds = %166
  %171 = tail call fastcc i1 @unary_operator(), !dbg !2048
  call void @llvm.dbg.value(metadata i1 %171, metadata !1938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1943
  br label %175, !dbg !2049

172:                                              ; preds = %166, %162, %160
  %173 = icmp ne i8 %53, 0, !dbg !2050
  call void @llvm.dbg.value(metadata i1 %173, metadata !1938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1943
  call void @llvm.dbg.value(metadata i1 false, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2052
  %174 = add nsw i32 %48, 1, !dbg !2054
  store i32 %174, ptr @pos, align 4, !dbg !2054, !tbaa !1057
  br label %175

175:                                              ; preds = %130, %146, %158, %170, %172
  %176 = phi i1 [ %104, %130 ], [ %147, %146 ], [ %159, %158 ], [ %171, %170 ], [ %173, %172 ]
  call void @llvm.dbg.value(metadata i1 %176, metadata !1938, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1943
  %177 = xor i1 %47, %176, !dbg !2055
  %178 = and i1 %15, %177, !dbg !2056
  call void @llvm.dbg.value(metadata i1 %178, metadata !1929, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1932
  %179 = load i32, ptr @pos, align 4, !dbg !2057, !tbaa !1057
  %180 = load i32, ptr @argc, align 4, !dbg !2059, !tbaa !1057
  %181 = icmp slt i32 %179, %180, !dbg !2060
  br i1 %181, label %182, label %192, !dbg !2061

182:                                              ; preds = %175
  %183 = load ptr, ptr @argv, align 8, !dbg !2062, !tbaa !957
  %184 = sext i32 %179 to i64, !dbg !2062
  %185 = getelementptr inbounds ptr, ptr %183, i64 %184, !dbg !2062
  %186 = load ptr, ptr %185, align 8, !dbg !2062, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %186, metadata !1068, metadata !DIExpression()), !dbg !2063
  call void @llvm.dbg.value(metadata ptr @.str.93, metadata !1074, metadata !DIExpression()), !dbg !2063
  %187 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %186, ptr noundef nonnull dereferenceable(3) @.str.93) #40, !dbg !2065
  %188 = icmp eq i32 %187, 0, !dbg !2066
  br i1 %188, label %189, label %194, !dbg !2067

189:                                              ; preds = %182
  call void @llvm.dbg.value(metadata i1 false, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2068
  %190 = add nsw i32 %179, 1, !dbg !2070
  store i32 %190, ptr @pos, align 4, !dbg !2070, !tbaa !1057
  call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 poison, metadata !1935, metadata !DIExpression()), !dbg !1943
  %191 = icmp sgt i32 %180, %190, !dbg !1946
  br i1 %191, label %11, label %43, !dbg !1947, !llvm.loop !2071

192:                                              ; preds = %175
  %193 = or i1 %10, %178, !dbg !2074
  call void @llvm.dbg.value(metadata i1 %193, metadata !1927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1928
  br label %198

194:                                              ; preds = %182
  %195 = or i1 %10, %178, !dbg !2074
  call void @llvm.dbg.value(metadata i1 %195, metadata !1927, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1928
  call void @llvm.dbg.value(metadata ptr %186, metadata !1068, metadata !DIExpression()), !dbg !2075
  call void @llvm.dbg.value(metadata ptr @.str.94, metadata !1074, metadata !DIExpression()), !dbg !2075
  %196 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %186, ptr noundef nonnull dereferenceable(3) @.str.94) #40, !dbg !2078
  %197 = icmp eq i32 %196, 0, !dbg !2079
  br i1 %197, label %200, label %198, !dbg !2080

198:                                              ; preds = %194, %192
  %199 = phi i1 [ %193, %192 ], [ %195, %194 ]
  ret i1 %199, !dbg !2081

200:                                              ; preds = %194
  call void @llvm.dbg.value(metadata i1 false, metadata !1284, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2082
  %201 = add nsw i32 %179, 1, !dbg !2084
  store i32 %201, ptr @pos, align 4, !dbg !2084, !tbaa !1057
  call void @llvm.dbg.value(metadata i8 poison, metadata !1927, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata i8 poison, metadata !1929, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 poison, metadata !1935, metadata !DIExpression()), !dbg !1943
  %202 = icmp sgt i32 %180, %201, !dbg !1946
  br i1 %202, label %6, label %43, !dbg !1947, !llvm.loop !2085
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i32 @binop(ptr nocapture noundef readonly %0) unnamed_addr #14 !dbg !2087 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2089, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata ptr @.str.98, metadata !1074, metadata !DIExpression()), !dbg !2091
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.98) #40, !dbg !2093
  %3 = icmp eq i32 %2, 0, !dbg !2094
  br i1 %3, label %44, label %4, !dbg !2095

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata ptr @.str.99, metadata !1074, metadata !DIExpression()), !dbg !2096
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.99) #40, !dbg !2098
  %6 = icmp eq i32 %5, 0, !dbg !2099
  br i1 %6, label %44, label %7, !dbg !2100

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata ptr @.str.100, metadata !1074, metadata !DIExpression()), !dbg !2101
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.100) #40, !dbg !2103
  %9 = icmp eq i32 %8, 0, !dbg !2104
  br i1 %9, label %44, label %10, !dbg !2105

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata ptr @.str.95, metadata !1074, metadata !DIExpression()), !dbg !2106
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.95) #40, !dbg !2108
  %12 = icmp eq i32 %11, 0, !dbg !2109
  br i1 %12, label %44, label %13, !dbg !2110

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata ptr @.str.96, metadata !1074, metadata !DIExpression()), !dbg !2111
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.96) #40, !dbg !2113
  %15 = icmp eq i32 %14, 0, !dbg !2114
  br i1 %15, label %44, label %16, !dbg !2115

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata ptr @.str.101, metadata !1074, metadata !DIExpression()), !dbg !2116
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.101) #40, !dbg !2118
  %18 = icmp eq i32 %17, 0, !dbg !2119
  br i1 %18, label %44, label %19, !dbg !2120

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata ptr @.str.102, metadata !1074, metadata !DIExpression()), !dbg !2121
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.102) #40, !dbg !2123
  %21 = icmp eq i32 %20, 0, !dbg !2124
  br i1 %21, label %44, label %22, !dbg !2125

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata ptr @.str.103, metadata !1074, metadata !DIExpression()), !dbg !2126
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.103) #40, !dbg !2128
  %24 = icmp eq i32 %23, 0, !dbg !2129
  br i1 %24, label %44, label %25, !dbg !2130

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata ptr @.str.104, metadata !1074, metadata !DIExpression()), !dbg !2131
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.104) #40, !dbg !2133
  %27 = icmp eq i32 %26, 0, !dbg !2134
  br i1 %27, label %44, label %28, !dbg !2135

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata ptr @.str.105, metadata !1074, metadata !DIExpression()), !dbg !2136
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.105) #40, !dbg !2138
  %30 = icmp eq i32 %29, 0, !dbg !2139
  br i1 %30, label %44, label %31, !dbg !2140

31:                                               ; preds = %28
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr @.str.106, metadata !1074, metadata !DIExpression()), !dbg !2141
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.106) #40, !dbg !2143
  %33 = icmp eq i32 %32, 0, !dbg !2144
  br i1 %33, label %44, label %34, !dbg !2145

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata ptr @.str.107, metadata !1074, metadata !DIExpression()), !dbg !2146
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.107) #40, !dbg !2148
  %36 = icmp eq i32 %35, 0, !dbg !2149
  br i1 %36, label %44, label %37, !dbg !2150

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata ptr @.str.108, metadata !1074, metadata !DIExpression()), !dbg !2151
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.108) #40, !dbg !2153
  %39 = icmp eq i32 %38, 0, !dbg !2154
  br i1 %39, label %44, label %40, !dbg !2155

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata ptr %0, metadata !1068, metadata !DIExpression()), !dbg !2156
  call void @llvm.dbg.value(metadata ptr @.str.109, metadata !1074, metadata !DIExpression()), !dbg !2156
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.109) #40, !dbg !2158
  %42 = icmp eq i32 %41, 0, !dbg !2159
  %43 = select i1 %42, i32 10, i32 -1, !dbg !2160
  br label %44, !dbg !2155

44:                                               ; preds = %4, %10, %16, %22, %28, %34, %37, %40, %31, %25, %19, %13, %7, %1
  %45 = phi i32 [ 0, %1 ], [ 0, %4 ], [ 3, %7 ], [ 1, %10 ], [ 2, %13 ], [ 4, %16 ], [ 9, %19 ], [ 8, %22 ], [ 7, %25 ], [ 6, %28 ], [ 5, %31 ], [ 12, %34 ], [ %43, %40 ], [ 11, %37 ], !dbg !2095
  ret i32 %45, !dbg !2161
}

; Function Attrs: nounwind uwtable
define internal fastcc i1 @binary_operator(i1 noundef %0, i32 noundef %1) unnamed_addr #10 !dbg !2162 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca [21 x i8], align 1
  %6 = alloca [21 x i8], align 1
  %7 = alloca [2 x %struct.stat], align 8
  call void @llvm.dbg.value(metadata i1 %0, metadata !2166, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2185
  call void @llvm.dbg.value(metadata i32 %1, metadata !2167, metadata !DIExpression()), !dbg !2185
  %8 = load i32, ptr @pos, align 4, !dbg !2185, !tbaa !1057
  %9 = zext i1 %0 to i32, !dbg !2186
  %10 = add nsw i32 %8, %9, !dbg !2186
  %11 = add nsw i32 %10, 1, !dbg !2187
  call void @llvm.dbg.value(metadata i32 %11, metadata !2168, metadata !DIExpression()), !dbg !2185
  %12 = load i32, ptr @argc, align 4, !dbg !2188, !tbaa !1057
  %13 = add nsw i32 %12, -2, !dbg !2189
  %14 = icmp slt i32 %11, %13, !dbg !2190
  br i1 %14, label %15, label %24, !dbg !2191

15:                                               ; preds = %2
  %16 = load ptr, ptr @argv, align 8, !dbg !2192, !tbaa !957
  %17 = add nsw i32 %10, 2, !dbg !2193
  %18 = sext i32 %17 to i64, !dbg !2192
  %19 = getelementptr inbounds ptr, ptr %16, i64 %18, !dbg !2192
  %20 = load ptr, ptr %19, align 8, !dbg !2192, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %20, metadata !1068, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.value(metadata ptr @.str.110, metadata !1074, metadata !DIExpression()), !dbg !2194
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(3) @.str.110) #40, !dbg !2196
  %22 = icmp eq i32 %21, 0, !dbg !2197
  call void @llvm.dbg.value(metadata i1 %22, metadata !2169, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2185
  %23 = select i1 %22, i32 %11, i32 %10, !dbg !2198
  br label %24, !dbg !2198

24:                                               ; preds = %15, %2
  %25 = phi i32 [ %10, %2 ], [ %23, %15 ], !dbg !2199
  %26 = phi i1 [ false, %2 ], [ %22, %15 ]
  %27 = add nsw i32 %25, 3, !dbg !2199
  store i32 %27, ptr @pos, align 4, !dbg !2199, !tbaa !1057
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
  ], !dbg !2200

28:                                               ; preds = %24, %24, %24, %24, %24, %24
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %5) #39, !dbg !2201
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2170, metadata !DIExpression()), !dbg !2202
  call void @llvm.lifetime.start.p0(i64 21, ptr nonnull %6) #39, !dbg !2203
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2173, metadata !DIExpression()), !dbg !2204
  %29 = load ptr, ptr @argv, align 8, !dbg !2205, !tbaa !957
  %30 = sext i32 %10 to i64, !dbg !2205
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30, !dbg !2205
  %32 = load ptr, ptr %31, align 8, !dbg !2205, !tbaa !957
  br i1 %0, label %33, label %36, !dbg !2206

33:                                               ; preds = %28
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %32) #40, !dbg !2207
  %35 = call ptr @umaxtostr(i64 noundef %34, ptr noundef nonnull %5) #39, !dbg !2208
  br label %38, !dbg !2206

36:                                               ; preds = %28
  %37 = tail call fastcc ptr @find_int(ptr noundef %32), !dbg !2209
  br label %38, !dbg !2206

38:                                               ; preds = %36, %33
  %39 = phi ptr [ %35, %33 ], [ %37, %36 ], !dbg !2206
  call void @llvm.dbg.value(metadata ptr %39, metadata !2174, metadata !DIExpression()), !dbg !2205
  %40 = load ptr, ptr @argv, align 8, !dbg !2205, !tbaa !957
  br i1 %26, label %41, label %48, !dbg !2210

41:                                               ; preds = %38
  %42 = add nsw i32 %10, 3, !dbg !2211
  %43 = sext i32 %42 to i64, !dbg !2212
  %44 = getelementptr inbounds ptr, ptr %40, i64 %43, !dbg !2212
  %45 = load ptr, ptr %44, align 8, !dbg !2212, !tbaa !957
  %46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #40, !dbg !2213
  %47 = call ptr @umaxtostr(i64 noundef %46, ptr noundef nonnull %6) #39, !dbg !2214
  br label %54, !dbg !2210

48:                                               ; preds = %38
  %49 = add nsw i32 %10, 2, !dbg !2215
  %50 = sext i32 %49 to i64, !dbg !2216
  %51 = getelementptr inbounds ptr, ptr %40, i64 %50, !dbg !2216
  %52 = load ptr, ptr %51, align 8, !dbg !2216, !tbaa !957
  %53 = call fastcc ptr @find_int(ptr noundef %52), !dbg !2217
  br label %54, !dbg !2210

54:                                               ; preds = %48, %41
  %55 = phi ptr [ %47, %41 ], [ %53, %48 ], !dbg !2210
  call void @llvm.dbg.value(metadata ptr %55, metadata !2175, metadata !DIExpression()), !dbg !2205
  %56 = call i32 @strintcmp(ptr noundef %39, ptr noundef %55) #40, !dbg !2218
  call void @llvm.dbg.value(metadata i32 %56, metadata !2176, metadata !DIExpression()), !dbg !2205
  switch i32 %1, label %69 [
    i32 4, label %57
    i32 5, label %59
    i32 6, label %61
    i32 7, label %63
    i32 8, label %65
    i32 9, label %67
  ], !dbg !2219

57:                                               ; preds = %54
  %58 = icmp eq i32 %56, 0, !dbg !2220
  br label %70, !dbg !2222

59:                                               ; preds = %54
  %60 = icmp sgt i32 %56, -1, !dbg !2223
  br label %70, !dbg !2224

61:                                               ; preds = %54
  %62 = icmp sgt i32 %56, 0, !dbg !2225
  br label %70, !dbg !2226

63:                                               ; preds = %54
  %64 = icmp slt i32 %56, 1, !dbg !2227
  br label %70, !dbg !2228

65:                                               ; preds = %54
  %66 = icmp slt i32 %56, 0, !dbg !2229
  br label %70, !dbg !2230

67:                                               ; preds = %54
  %68 = icmp ne i32 %56, 0, !dbg !2231
  br label %70, !dbg !2232

69:                                               ; preds = %54
  unreachable, !dbg !2233

70:                                               ; preds = %67, %65, %63, %61, %59, %57
  %71 = phi i1 [ %68, %67 ], [ %66, %65 ], [ %64, %63 ], [ %62, %61 ], [ %60, %59 ], [ %58, %57 ], !dbg !2234
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %6) #39, !dbg !2235
  call void @llvm.lifetime.end.p0(i64 21, ptr nonnull %5) #39, !dbg !2235
  br label %188

72:                                               ; preds = %24, %24
  %73 = or i1 %26, %0, !dbg !2236
  br i1 %73, label %74, label %80, !dbg !2238

74:                                               ; preds = %72
  %75 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.111, i32 noundef 5) #39, !dbg !2239
  %76 = load ptr, ptr @argv, align 8, !dbg !2240, !tbaa !957
  %77 = sext i32 %11 to i64, !dbg !2240
  %78 = getelementptr inbounds ptr, ptr %76, i64 %77, !dbg !2240
  %79 = load ptr, ptr %78, align 8, !dbg !2240, !tbaa !957
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %75, ptr noundef %79) #43, !dbg !2241
  unreachable, !dbg !2241

80:                                               ; preds = %72
  %81 = load ptr, ptr @argv, align 8, !dbg !2242, !tbaa !957
  %82 = sext i32 %10 to i64, !dbg !2242
  %83 = getelementptr inbounds ptr, ptr %81, i64 %82, !dbg !2242
  %84 = load ptr, ptr %83, align 8, !dbg !2242, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %84, metadata !2243, metadata !DIExpression()), !dbg !2249
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #39, !dbg !2251
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2248, metadata !DIExpression()), !dbg !2252
  %85 = call i32 @stat(ptr noundef %84, ptr noundef nonnull %4) #39, !dbg !2253
  %86 = icmp slt i32 %85, 0, !dbg !2254
  %87 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 13, !dbg !2253
  %88 = load i64, ptr %87, align 8, !dbg !2253
  %89 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 13, i32 1, !dbg !2253
  %90 = load i64, ptr %89, align 8, !dbg !2253
  %91 = insertvalue [2 x i64] poison, i64 %88, 0, !dbg !2253
  %92 = insertvalue [2 x i64] %91, i64 %90, 1, !dbg !2253
  %93 = select i1 %86, [2 x i64] [i64 -9223372036854775808, i64 -1], [2 x i64] %92, !dbg !2253
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #39, !dbg !2255
  %94 = load ptr, ptr @argv, align 8, !dbg !2256, !tbaa !957
  %95 = add nsw i32 %10, 2, !dbg !2257
  %96 = sext i32 %95 to i64, !dbg !2256
  %97 = getelementptr inbounds ptr, ptr %94, i64 %96, !dbg !2256
  %98 = load ptr, ptr %97, align 8, !dbg !2256, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %98, metadata !2243, metadata !DIExpression()), !dbg !2258
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #39, !dbg !2260
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2248, metadata !DIExpression()), !dbg !2261
  %99 = call i32 @stat(ptr noundef %98, ptr noundef nonnull %3) #39, !dbg !2262
  %100 = icmp slt i32 %99, 0, !dbg !2263
  %101 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 13, !dbg !2262
  %102 = load i64, ptr %101, align 8, !dbg !2262
  %103 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 13, i32 1, !dbg !2262
  %104 = load i64, ptr %103, align 8, !dbg !2262
  %105 = insertvalue [2 x i64] poison, i64 %102, 0, !dbg !2262
  %106 = insertvalue [2 x i64] %105, i64 %104, 1, !dbg !2262
  %107 = select i1 %100, [2 x i64] [i64 -9223372036854775808, i64 -1], [2 x i64] %106, !dbg !2262
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #39, !dbg !2264
  %108 = extractvalue [2 x i64] %93, 0
  call void @llvm.dbg.value(metadata i64 %108, metadata !1555, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2265
  %109 = extractvalue [2 x i64] %93, 1
  call void @llvm.dbg.value(metadata i64 %109, metadata !1555, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2265
  %110 = extractvalue [2 x i64] %107, 0
  call void @llvm.dbg.value(metadata i64 %110, metadata !1561, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2265
  %111 = extractvalue [2 x i64] %107, 1
  call void @llvm.dbg.value(metadata i64 %111, metadata !1561, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2265
  %112 = icmp sgt i64 %108, %110, !dbg !2267
  %113 = zext i1 %112 to i32, !dbg !2267
  %114 = icmp slt i64 %108, %110, !dbg !2267
  %115 = sext i1 %114 to i32, !dbg !2267
  %116 = add nsw i32 %115, %113, !dbg !2267
  %117 = shl nsw i32 %116, 1, !dbg !2268
  %118 = icmp sgt i64 %109, %111, !dbg !2269
  %119 = zext i1 %118 to i32, !dbg !2269
  %120 = icmp slt i64 %109, %111, !dbg !2269
  %121 = sext i1 %120 to i32, !dbg !2269
  %122 = add nsw i32 %121, %119, !dbg !2269
  %123 = add nsw i32 %122, %117, !dbg !2270
  call void @llvm.dbg.value(metadata i32 %123, metadata !2177, metadata !DIExpression()), !dbg !2271
  %124 = icmp eq i32 %1, 12, !dbg !2272
  %125 = icmp slt i32 %123, 0, !dbg !2273
  %126 = icmp sgt i32 %123, 0, !dbg !2273
  %127 = select i1 %124, i1 %125, i1 %126, !dbg !2273
  br label %188

128:                                              ; preds = %24
  %129 = or i1 %26, %0, !dbg !2274
  br i1 %129, label %130, label %132, !dbg !2275

130:                                              ; preds = %128
  %131 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.112, i32 noundef 5) #39, !dbg !2276
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %131) #43, !dbg !2277
  unreachable, !dbg !2277

132:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %7) #39, !dbg !2278
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2179, metadata !DIExpression()), !dbg !2279
  %133 = load ptr, ptr @argv, align 8, !dbg !2280, !tbaa !957
  %134 = sext i32 %10 to i64, !dbg !2280
  %135 = getelementptr inbounds ptr, ptr %133, i64 %134, !dbg !2280
  %136 = load ptr, ptr %135, align 8, !dbg !2280, !tbaa !957
  %137 = call i32 @stat(ptr noundef %136, ptr noundef nonnull %7) #39, !dbg !2281
  %138 = icmp eq i32 %137, 0, !dbg !2282
  br i1 %138, label %139, label %158, !dbg !2283

139:                                              ; preds = %132
  %140 = load ptr, ptr @argv, align 8, !dbg !2284, !tbaa !957
  %141 = add nsw i32 %10, 2, !dbg !2285
  %142 = sext i32 %141 to i64, !dbg !2284
  %143 = getelementptr inbounds ptr, ptr %140, i64 %142, !dbg !2284
  %144 = load ptr, ptr %143, align 8, !dbg !2284, !tbaa !957
  %145 = getelementptr inbounds [2 x %struct.stat], ptr %7, i64 0, i64 1, !dbg !2286
  %146 = call i32 @stat(ptr noundef %144, ptr noundef nonnull %145) #39, !dbg !2287
  %147 = icmp eq i32 %146, 0, !dbg !2288
  br i1 %147, label %148, label %158, !dbg !2289

148:                                              ; preds = %139
  call void @llvm.dbg.value(metadata ptr %7, metadata !2290, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata ptr %145, metadata !2296, metadata !DIExpression()), !dbg !2297
  %149 = load i64, ptr %7, align 8, !dbg !2299, !tbaa !2300
  %150 = load i64, ptr %145, align 8, !dbg !2299, !tbaa !2300
  %151 = icmp eq i64 %149, %150, !dbg !2299
  %152 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 1, !dbg !2299
  %153 = load i64, ptr %152, align 8, !dbg !2299, !tbaa !2301
  %154 = getelementptr inbounds [2 x %struct.stat], ptr %7, i64 0, i64 1, i32 1, !dbg !2299
  %155 = load i64, ptr %154, align 8, !dbg !2299, !tbaa !2301
  %156 = icmp eq i64 %153, %155, !dbg !2299
  %157 = and i1 %151, %156, !dbg !2299
  br label %158

158:                                              ; preds = %148, %139, %132
  %159 = phi i1 [ false, %139 ], [ false, %132 ], [ %157, %148 ], !dbg !2302
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %7) #39, !dbg !2303
  br label %188

160:                                              ; preds = %24, %24
  %161 = load ptr, ptr @argv, align 8, !dbg !2304, !tbaa !957
  %162 = sext i32 %10 to i64, !dbg !2304
  %163 = getelementptr inbounds ptr, ptr %161, i64 %162, !dbg !2304
  %164 = load ptr, ptr %163, align 8, !dbg !2304, !tbaa !957
  %165 = add nsw i32 %10, 2, !dbg !2305
  %166 = sext i32 %165 to i64, !dbg !2306
  %167 = getelementptr inbounds ptr, ptr %161, i64 %166, !dbg !2306
  %168 = load ptr, ptr %167, align 8, !dbg !2306, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %164, metadata !1068, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata ptr %168, metadata !1074, metadata !DIExpression()), !dbg !2307
  %169 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %164, ptr noundef nonnull dereferenceable(1) %168) #40, !dbg !2309
  %170 = icmp eq i32 %169, 0, !dbg !2310
  %171 = icmp ne i32 %1, 0, !dbg !2311
  %172 = xor i1 %171, %170, !dbg !2312
  br label %188, !dbg !2313

173:                                              ; preds = %24, %24
  %174 = load ptr, ptr @argv, align 8, !dbg !2314, !tbaa !957
  %175 = sext i32 %10 to i64, !dbg !2314
  %176 = getelementptr inbounds ptr, ptr %174, i64 %175, !dbg !2314
  %177 = load ptr, ptr %176, align 8, !dbg !2314, !tbaa !957
  %178 = add nsw i32 %10, 2, !dbg !2315
  %179 = sext i32 %178 to i64, !dbg !2316
  %180 = getelementptr inbounds ptr, ptr %174, i64 %179, !dbg !2316
  %181 = load ptr, ptr %180, align 8, !dbg !2316, !tbaa !957
  %182 = tail call i32 @strcoll(ptr noundef %177, ptr noundef %181) #40, !dbg !2317
  call void @llvm.dbg.value(metadata i32 %182, metadata !2183, metadata !DIExpression()), !dbg !2318
  %183 = icmp eq i32 %1, 2, !dbg !2319
  %184 = icmp slt i32 %182, 0, !dbg !2320
  %185 = icmp sgt i32 %182, 0, !dbg !2320
  %186 = select i1 %183, i1 %184, i1 %185, !dbg !2320
  br label %188

187:                                              ; preds = %24
  tail call void @__assert_fail(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.89, i32 noundef 362, ptr noundef nonnull @__PRETTY_FUNCTION__.binary_operator) #41, !dbg !2321
  unreachable, !dbg !2321

188:                                              ; preds = %173, %160, %158, %80, %70
  %189 = phi i1 [ %186, %173 ], [ %172, %160 ], [ %159, %158 ], [ %127, %80 ], [ %71, %70 ], !dbg !2324
  ret i1 %189, !dbg !2325
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2326 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_int(ptr noundef %0) unnamed_addr #10 !dbg !2329 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2333, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata ptr %0, metadata !2334, metadata !DIExpression()), !dbg !2336
  %2 = tail call ptr @__ctype_b_loc() #42, !dbg !2336
  %3 = load ptr, ptr %2, align 8, !tbaa !957
  br label %4, !dbg !2337

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %0, %1 ], [ %12, %4 ], !dbg !2339
  call void @llvm.dbg.value(metadata ptr %5, metadata !2334, metadata !DIExpression()), !dbg !2336
  %6 = load i8, ptr %5, align 1, !dbg !2340, !tbaa !1066
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds i16, ptr %3, i64 %7, !dbg !2340
  %9 = load i16, ptr %8, align 2, !dbg !2340, !tbaa !1098
  %10 = and i16 %9, 8192, !dbg !2340
  %11 = icmp eq i16 %10, 0, !dbg !2342
  %12 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !2343
  call void @llvm.dbg.value(metadata ptr %12, metadata !2334, metadata !DIExpression()), !dbg !2336
  br i1 %11, label %13, label %4, !dbg !2342, !llvm.loop !2344

13:                                               ; preds = %4
  %14 = icmp eq i8 %6, 43, !dbg !2346
  %15 = icmp eq i8 %6, 45, !dbg !2348
  %16 = zext i1 %15 to i64, !dbg !2348
  %17 = getelementptr inbounds i8, ptr %5, i64 %16, !dbg !2348
  %18 = select i1 %14, ptr %12, ptr %17, !dbg !2348
  call void @llvm.dbg.value(metadata ptr poison, metadata !2335, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata ptr %18, metadata !2334, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata ptr %18, metadata !2334, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2336
  %19 = load i8, ptr %18, align 1, !dbg !2349, !tbaa !1066
  %20 = zext i8 %19 to i32, !dbg !2349
  call void @llvm.dbg.value(metadata i32 %20, metadata !2351, metadata !DIExpression()), !dbg !2355
  %21 = add nsw i32 %20, -48, !dbg !2357
  %22 = icmp ult i32 %21, 10, !dbg !2357
  br i1 %22, label %23, label %50, !dbg !2358

23:                                               ; preds = %13, %23
  %24 = phi ptr [ %25, %23 ], [ %18, %13 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2359
  call void @llvm.dbg.value(metadata ptr %25, metadata !2334, metadata !DIExpression()), !dbg !2336
  %26 = load i8, ptr %25, align 1, !dbg !2360, !tbaa !1066
  %27 = zext i8 %26 to i32, !dbg !2360
  call void @llvm.dbg.value(metadata i32 %27, metadata !2351, metadata !DIExpression()), !dbg !2362
  %28 = add nsw i32 %27, -48, !dbg !2364
  %29 = icmp ult i32 %28, 10, !dbg !2364
  br i1 %29, label %23, label %30, !dbg !2365, !llvm.loop !2366

30:                                               ; preds = %23
  call void @llvm.dbg.value(metadata ptr %25, metadata !2334, metadata !DIExpression()), !dbg !2336
  %31 = zext i8 %26 to i64
  %32 = getelementptr inbounds i16, ptr %3, i64 %31, !dbg !2368
  %33 = load i16, ptr %32, align 2, !dbg !2368, !tbaa !1098
  %34 = and i16 %33, 8192, !dbg !2368
  %35 = icmp eq i16 %34, 0, !dbg !2369
  br i1 %35, label %45, label %36, !dbg !2369

36:                                               ; preds = %30, %36
  %37 = phi ptr [ %38, %36 ], [ %25, %30 ]
  call void @llvm.dbg.value(metadata ptr %37, metadata !2334, metadata !DIExpression()), !dbg !2336
  %38 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !2370
  call void @llvm.dbg.value(metadata ptr %38, metadata !2334, metadata !DIExpression()), !dbg !2336
  %39 = load i8, ptr %38, align 1, !dbg !2368, !tbaa !1066
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i16, ptr %3, i64 %40, !dbg !2368
  %42 = load i16, ptr %41, align 2, !dbg !2368, !tbaa !1098
  %43 = and i16 %42, 8192, !dbg !2368
  %44 = icmp eq i16 %43, 0, !dbg !2369
  br i1 %44, label %45, label %36, !dbg !2369, !llvm.loop !2371

45:                                               ; preds = %36, %30
  %46 = phi i8 [ %26, %30 ], [ %39, %36 ], !dbg !2368
  %47 = icmp eq i8 %46, 0, !dbg !2372
  br i1 %47, label %48, label %50, !dbg !2374

48:                                               ; preds = %45
  %49 = select i1 %14, ptr %12, ptr %5, !dbg !2348
  call void @llvm.dbg.value(metadata ptr %49, metadata !2335, metadata !DIExpression()), !dbg !2336
  ret ptr %49, !dbg !2375

50:                                               ; preds = %45, %13
  %51 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.91, i32 noundef 5) #39, !dbg !2376
  %52 = tail call ptr @quote(ptr noundef %0) #39, !dbg !2377
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %51, ptr noundef %52) #43, !dbg !2378
  unreachable, !dbg !2378
}

; Function Attrs: nofree nounwind
declare !dbg !2379 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !2385 i32 @strcoll(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare !dbg !2386 i32 @euidaccess(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !2390 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2395 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2398 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr nocapture noundef readonly, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2401 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare !dbg !2405 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #17 !dbg !2408 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2410, metadata !DIExpression()), !dbg !2411
  store ptr %0, ptr @file_name, align 8, !dbg !2412, !tbaa !957
  ret void, !dbg !2413
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #17 !dbg !2414 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2416, metadata !DIExpression()), !dbg !2417
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !2418, !tbaa !2419
  ret void, !dbg !2421
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2422 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2427, !tbaa !957
  %2 = tail call i32 @close_stream(ptr noundef %1) #39, !dbg !2428
  %3 = icmp eq i32 %2, 0, !dbg !2429
  br i1 %3, label %22, label %4, !dbg !2430

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !2431, !tbaa !2419, !range !2432, !noundef !1045
  %6 = icmp eq i8 %5, 0, !dbg !2431
  br i1 %6, label %11, label %7, !dbg !2433

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #42, !dbg !2434
  %9 = load i32, ptr %8, align 4, !dbg !2434, !tbaa !1057
  %10 = icmp eq i32 %9, 32, !dbg !2435
  br i1 %10, label %22, label %11, !dbg !2436

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1.56, i32 noundef 5) #39, !dbg !2437
  call void @llvm.dbg.value(metadata ptr %12, metadata !2424, metadata !DIExpression()), !dbg !2438
  %13 = load ptr, ptr @file_name, align 8, !dbg !2439, !tbaa !957
  %14 = icmp eq ptr %13, null, !dbg !2439
  %15 = tail call ptr @__errno_location() #42, !dbg !2441
  %16 = load i32, ptr %15, align 4, !dbg !2441, !tbaa !1057
  br i1 %14, label %19, label %17, !dbg !2442

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #39, !dbg !2443
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.57, ptr noundef %18, ptr noundef %12) #39, !dbg !2443
  br label %20, !dbg !2443

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.58, ptr noundef %12) #39, !dbg !2444
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2445, !tbaa !1057
  tail call void @_exit(i32 noundef %21) #41, !dbg !2446
  unreachable, !dbg !2446

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2447, !tbaa !957
  %24 = tail call i32 @close_stream(ptr noundef %23) #39, !dbg !2449
  %25 = icmp eq i32 %24, 0, !dbg !2450
  br i1 %25, label %28, label %26, !dbg !2451

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2452, !tbaa !1057
  tail call void @_exit(i32 noundef %27) #41, !dbg !2453
  unreachable, !dbg !2453

28:                                               ; preds = %22
  ret void, !dbg !2454
}

; Function Attrs: noreturn
declare !dbg !2455 void @_exit(i32 noundef) local_unnamed_addr #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #19 !dbg !2456 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2460, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i32 %1, metadata !2461, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata ptr %2, metadata !2462, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2463, metadata !DIExpression()), !dbg !2465
  tail call fastcc void @flush_stdout(), !dbg !2466
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2467, !tbaa !957
  %7 = icmp eq ptr %6, null, !dbg !2467
  br i1 %7, label %9, label %8, !dbg !2469

8:                                                ; preds = %4
  tail call void %6() #39, !dbg !2470
  br label %13, !dbg !2470

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2471, !tbaa !957
  %11 = tail call ptr @getprogname() #40, !dbg !2471
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.61, ptr noundef %11) #39, !dbg !2471
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !2473
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2473, !tbaa.struct !1415
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2473
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !2473
  ret void, !dbg !2474
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2475 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2477, metadata !DIExpression()), !dbg !2478
  call void @llvm.dbg.value(metadata i32 1, metadata !2479, metadata !DIExpression()), !dbg !2482
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #39, !dbg !2485
  %2 = icmp slt i32 %1, 0, !dbg !2486
  br i1 %2, label %6, label %3, !dbg !2487

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2488, !tbaa !957
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #39, !dbg !2488
  br label %6, !dbg !2488

6:                                                ; preds = %3, %0
  ret void, !dbg !2489
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2490 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2492, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata i32 %1, metadata !2493, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.value(metadata ptr %2, metadata !2494, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2495, metadata !DIExpression()), !dbg !2497
  %7 = load ptr, ptr @stderr, align 8, !dbg !2498, !tbaa !957
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !2499, !noalias !2543
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2547
  call void @llvm.dbg.value(metadata ptr %7, metadata !2539, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.value(metadata ptr %2, metadata !2540, metadata !DIExpression()), !dbg !2548
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2541, metadata !DIExpression()), !dbg !2549
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #39, !dbg !2499
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !2499, !noalias !2543
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2550, !tbaa !1057
  %10 = add i32 %9, 1, !dbg !2550
  store i32 %10, ptr @error_message_count, align 4, !dbg !2550, !tbaa !1057
  %11 = icmp eq i32 %1, 0, !dbg !2551
  br i1 %11, label %21, label %12, !dbg !2553

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2554, metadata !DIExpression()), !dbg !2562
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #39, !dbg !2564
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2558, metadata !DIExpression()), !dbg !2565
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #39, !dbg !2566
  call void @llvm.dbg.value(metadata ptr %13, metadata !2557, metadata !DIExpression()), !dbg !2562
  %14 = icmp eq ptr %13, null, !dbg !2567
  br i1 %14, label %15, label %17, !dbg !2569

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.62, ptr noundef nonnull @.str.5.63, i32 noundef 5) #39, !dbg !2570
  call void @llvm.dbg.value(metadata ptr %16, metadata !2557, metadata !DIExpression()), !dbg !2562
  br label %17, !dbg !2571

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2562
  call void @llvm.dbg.value(metadata ptr %18, metadata !2557, metadata !DIExpression()), !dbg !2562
  %19 = load ptr, ptr @stderr, align 8, !dbg !2572, !tbaa !957
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.64, ptr noundef %18) #39, !dbg !2572
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #39, !dbg !2573
  br label %21, !dbg !2574

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2575, !tbaa !957
  call void @llvm.dbg.value(metadata i32 10, metadata !2576, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata ptr %22, metadata !2582, metadata !DIExpression()), !dbg !2583
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2585
  %24 = load ptr, ptr %23, align 8, !dbg !2585, !tbaa !2586
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2585
  %26 = load ptr, ptr %25, align 8, !dbg !2585, !tbaa !2588
  %27 = icmp ult ptr %24, %26, !dbg !2585
  br i1 %27, label %30, label %28, !dbg !2585, !prof !2589

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #39, !dbg !2585
  br label %32, !dbg !2585

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2585
  store ptr %31, ptr %23, align 8, !dbg !2585, !tbaa !2586
  store i8 10, ptr %24, align 1, !dbg !2585, !tbaa !1066
  br label %32, !dbg !2585

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2590, !tbaa !957
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #39, !dbg !2590
  %35 = icmp eq i32 %0, 0, !dbg !2591
  br i1 %35, label %37, label %36, !dbg !2593

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #41, !dbg !2594
  unreachable, !dbg !2594

37:                                               ; preds = %32
  ret void, !dbg !2595
}

declare !dbg !2596 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2599 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2602 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2605 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2608 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2612 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2616, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 %1, metadata !2617, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata ptr %2, metadata !2618, metadata !DIExpression()), !dbg !2620
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #39, !dbg !2621
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2619, metadata !DIExpression()), !dbg !2622
  call void @llvm.va_start(ptr nonnull %4), !dbg !2623
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !2624
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2624, !tbaa.struct !1415
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #45, !dbg !2624
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !2624
  call void @llvm.va_end(ptr nonnull %4), !dbg !2625
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #39, !dbg !2626
  ret void, !dbg !2626
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #19 !dbg !587 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !604, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i32 %1, metadata !605, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata ptr %2, metadata !606, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata i32 %3, metadata !607, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.value(metadata ptr %4, metadata !608, metadata !DIExpression()), !dbg !2627
  call void @llvm.dbg.declare(metadata ptr %5, metadata !609, metadata !DIExpression()), !dbg !2628
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2629, !tbaa !1057
  %9 = icmp eq i32 %8, 0, !dbg !2629
  br i1 %9, label %24, label %10, !dbg !2631

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2632, !tbaa !1057
  %12 = icmp eq i32 %11, %3, !dbg !2635
  br i1 %12, label %13, label %23, !dbg !2636

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2637, !tbaa !957
  %15 = icmp eq ptr %14, %2, !dbg !2638
  br i1 %15, label %37, label %16, !dbg !2639

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2640
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2641
  br i1 %19, label %20, label %23, !dbg !2641

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !2642
  %22 = icmp eq i32 %21, 0, !dbg !2643
  br i1 %22, label %37, label %23, !dbg !2644

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2645, !tbaa !957
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2646, !tbaa !1057
  br label %24, !dbg !2647

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2648
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2649, !tbaa !957
  %26 = icmp eq ptr %25, null, !dbg !2649
  br i1 %26, label %28, label %27, !dbg !2651

27:                                               ; preds = %24
  tail call void %25() #39, !dbg !2652
  br label %32, !dbg !2652

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2653, !tbaa !957
  %30 = tail call ptr @getprogname() #40, !dbg !2653
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.67, ptr noundef %30) #39, !dbg !2653
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2655, !tbaa !957
  %34 = icmp eq ptr %2, null, !dbg !2655
  %35 = select i1 %34, ptr @.str.3.68, ptr @.str.2.69, !dbg !2655
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #39, !dbg !2655
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !2656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2656, !tbaa.struct !1415
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2656
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !2656
  br label %37, !dbg !2657

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2657
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2658 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2662, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i32 %1, metadata !2663, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata ptr %2, metadata !2664, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i32 %3, metadata !2665, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata ptr %4, metadata !2666, metadata !DIExpression()), !dbg !2668
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !2669
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2667, metadata !DIExpression()), !dbg !2670
  call void @llvm.va_start(ptr nonnull %6), !dbg !2671
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #39, !dbg !2672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2672, !tbaa.struct !1415
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #45, !dbg !2672
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #39, !dbg !2672
  call void @llvm.va_end(ptr nonnull %6), !dbg !2673
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !2674
  ret void, !dbg !2674
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #20 !dbg !2675 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2678, !tbaa !957
  ret ptr %1, !dbg !2679
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local nonnull ptr @umaxtostr(i64 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #21 !dbg !2680 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2685, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata ptr %1, metadata !2686, metadata !DIExpression()), !dbg !2688
  %3 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !2689
  call void @llvm.dbg.value(metadata ptr %3, metadata !2687, metadata !DIExpression()), !dbg !2688
  store i8 0, ptr %3, align 1, !dbg !2690, !tbaa !1066
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %8, %4 ]
  %6 = phi ptr [ %3, %2 ], [ %13, %4 ], !dbg !2688
  call void @llvm.dbg.value(metadata ptr %6, metadata !2687, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.value(metadata i64 %5, metadata !2685, metadata !DIExpression()), !dbg !2688
  %7 = freeze i64 %5
  %8 = udiv i64 %7, 10, !dbg !2691
  %9 = mul i64 %8, 10
  %10 = sub i64 %7, %9
  %11 = trunc i64 %10 to i8, !dbg !2694
  %12 = or i8 %11, 48, !dbg !2694
  %13 = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !2695
  call void @llvm.dbg.value(metadata ptr %13, metadata !2687, metadata !DIExpression()), !dbg !2688
  store i8 %12, ptr %13, align 1, !dbg !2696, !tbaa !1066
  call void @llvm.dbg.value(metadata i64 %8, metadata !2685, metadata !DIExpression()), !dbg !2688
  %14 = icmp ult i64 %5, 10, !dbg !2697
  br i1 %14, label %15, label %4, !dbg !2698, !llvm.loop !2699

15:                                               ; preds = %4
  call void @llvm.dbg.value(metadata ptr %13, metadata !2687, metadata !DIExpression()), !dbg !2688
  ret ptr %13, !dbg !2702
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #22 !dbg !2703 {
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
  store ptr %20, ptr @program_name, align 8, !dbg !2733, !tbaa !957
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2734, !tbaa !957
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2735, !tbaa !957
  ret void, !dbg !2736
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2737 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #23

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2738 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2743, metadata !DIExpression()), !dbg !2746
  %2 = tail call ptr @__errno_location() #42, !dbg !2747
  %3 = load i32, ptr %2, align 4, !dbg !2747, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %3, metadata !2744, metadata !DIExpression()), !dbg !2746
  %4 = icmp eq ptr %0, null, !dbg !2748
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2748
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #46, !dbg !2749
  call void @llvm.dbg.value(metadata ptr %6, metadata !2745, metadata !DIExpression()), !dbg !2746
  store i32 %3, ptr %2, align 4, !dbg !2750, !tbaa !1057
  ret ptr %6, !dbg !2751
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #24 !dbg !2752 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2758, metadata !DIExpression()), !dbg !2759
  %2 = icmp eq ptr %0, null, !dbg !2760
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2760
  %4 = load i32, ptr %3, align 8, !dbg !2761, !tbaa !2762
  ret i32 %4, !dbg !2764
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2765 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2769, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.value(metadata i32 %1, metadata !2770, metadata !DIExpression()), !dbg !2771
  %3 = icmp eq ptr %0, null, !dbg !2772
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2772
  store i32 %1, ptr %4, align 8, !dbg !2773, !tbaa !2762
  ret void, !dbg !2774
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #26 !dbg !2775 {
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
  %12 = load i32, ptr %9, align 4, !dbg !2793, !tbaa !1057
  %13 = lshr i32 %12, %11, !dbg !2794
  %14 = and i32 %13, 1, !dbg !2795
  call void @llvm.dbg.value(metadata i32 %14, metadata !2786, metadata !DIExpression()), !dbg !2787
  %15 = xor i32 %13, %2, !dbg !2796
  %16 = and i32 %15, 1, !dbg !2796
  %17 = shl nuw i32 %16, %11, !dbg !2797
  %18 = xor i32 %17, %12, !dbg !2798
  store i32 %18, ptr %9, align 4, !dbg !2798, !tbaa !1057
  ret i32 %14, !dbg !2799
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #26 !dbg !2800 {
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
  %9 = load i32, ptr %8, align 4, !dbg !2853, !tbaa !1057
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
  store i32 %9, ptr %8, align 4, !dbg !2860, !tbaa !1057
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
  call void @llvm.dbg.value(metadata i32 %5, metadata !2883, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !2930
  call void @llvm.dbg.value(metadata i8 0, metadata !2884, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 1, metadata !2885, metadata !DIExpression()), !dbg !2930
  %18 = and i32 %5, 2, !dbg !2933
  %19 = icmp ne i32 %18, 0, !dbg !2933
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !2933

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !2934
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !2935
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !2936
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !2869, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 poison, metadata !2885, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 poison, metadata !2884, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 poison, metadata !2883, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 poison, metadata !2882, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %34, metadata !2881, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %33, metadata !2880, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %32, metadata !2879, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 0, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %31, metadata !2871, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %30, metadata !2876, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %29, metadata !2875, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i32 %28, metadata !2872, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.label(metadata !2923), !dbg !2937
  call void @llvm.dbg.value(metadata i8 0, metadata !2886, metadata !DIExpression()), !dbg !2930
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
  ], !dbg !2938

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2883, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i32 5, metadata !2872, metadata !DIExpression()), !dbg !2930
  br label %102, !dbg !2939

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2883, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i32 5, metadata !2872, metadata !DIExpression()), !dbg !2930
  br i1 %36, label %102, label %42, !dbg !2939

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !2940
  br i1 %43, label %102, label %44, !dbg !2944

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !2940, !tbaa !1066
  br label %102, !dbg !2940

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.128, metadata !726, metadata !DIExpression()), !dbg !2945
  call void @llvm.dbg.value(metadata i32 %28, metadata !727, metadata !DIExpression()), !dbg !2945
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.129, ptr noundef nonnull @.str.11.128, i32 noundef 5) #39, !dbg !2949
  call void @llvm.dbg.value(metadata ptr %46, metadata !728, metadata !DIExpression()), !dbg !2945
  %47 = icmp eq ptr %46, @.str.11.128, !dbg !2950
  br i1 %47, label %48, label %57, !dbg !2952

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #39, !dbg !2953
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #39, !dbg !2954
  call void @llvm.dbg.declare(metadata ptr %13, metadata !734, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.value(metadata ptr %13, metadata !2956, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata ptr %13, metadata !2965, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i32 0, metadata !2971, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i64 8, metadata !2972, metadata !DIExpression()), !dbg !2973
  store i64 0, ptr %13, align 8, !dbg !2975
  call void @llvm.dbg.value(metadata ptr %12, metadata !729, metadata !DIExpression(DW_OP_deref)), !dbg !2945
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #39, !dbg !2976
  %50 = icmp eq i64 %49, 3, !dbg !2978
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !729, metadata !DIExpression()), !dbg !2945
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !2979
  %54 = icmp eq i32 %28, 9, !dbg !2979
  %55 = select i1 %54, ptr @.str.10.130, ptr @.str.12.131, !dbg !2979
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !2979
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #39, !dbg !2980
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #39, !dbg !2980
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !2945
  call void @llvm.dbg.value(metadata ptr %58, metadata !2875, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr @.str.12.131, metadata !726, metadata !DIExpression()), !dbg !2981
  call void @llvm.dbg.value(metadata i32 %28, metadata !727, metadata !DIExpression()), !dbg !2981
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.129, ptr noundef nonnull @.str.12.131, i32 noundef 5) #39, !dbg !2983
  call void @llvm.dbg.value(metadata ptr %59, metadata !728, metadata !DIExpression()), !dbg !2981
  %60 = icmp eq ptr %59, @.str.12.131, !dbg !2984
  br i1 %60, label %61, label %70, !dbg !2985

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #39, !dbg !2986
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #39, !dbg !2987
  call void @llvm.dbg.declare(metadata ptr %11, metadata !734, metadata !DIExpression()), !dbg !2988
  call void @llvm.dbg.value(metadata ptr %11, metadata !2956, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.value(metadata ptr %11, metadata !2965, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i32 0, metadata !2971, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i64 8, metadata !2972, metadata !DIExpression()), !dbg !2991
  store i64 0, ptr %11, align 8, !dbg !2993
  call void @llvm.dbg.value(metadata ptr %10, metadata !729, metadata !DIExpression(DW_OP_deref)), !dbg !2981
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #39, !dbg !2994
  %63 = icmp eq i64 %62, 3, !dbg !2995
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !729, metadata !DIExpression()), !dbg !2981
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !2996
  %67 = icmp eq i32 %28, 9, !dbg !2996
  %68 = select i1 %67, ptr @.str.10.130, ptr @.str.12.131, !dbg !2996
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !2996
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #39, !dbg !2997
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #39, !dbg !2997
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !2876, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %71, metadata !2875, metadata !DIExpression()), !dbg !2930
  br i1 %36, label %88, label %73, !dbg !2998

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !2887, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i64 0, metadata !2878, metadata !DIExpression()), !dbg !2930
  %74 = load i8, ptr %71, align 1, !dbg !3000, !tbaa !1066
  %75 = icmp eq i8 %74, 0, !dbg !3002
  br i1 %75, label %88, label %76, !dbg !3002

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !2887, metadata !DIExpression()), !dbg !2999
  call void @llvm.dbg.value(metadata i64 %79, metadata !2878, metadata !DIExpression()), !dbg !2930
  %80 = icmp ult i64 %79, %39, !dbg !3003
  br i1 %80, label %81, label %83, !dbg !3006

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !3003
  store i8 %77, ptr %82, align 1, !dbg !3003, !tbaa !1066
  br label %83, !dbg !3003

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !3006
  call void @llvm.dbg.value(metadata i64 %84, metadata !2878, metadata !DIExpression()), !dbg !2930
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !3007
  call void @llvm.dbg.value(metadata ptr %85, metadata !2887, metadata !DIExpression()), !dbg !2999
  %86 = load i8, ptr %85, align 1, !dbg !3000, !tbaa !1066
  %87 = icmp eq i8 %86, 0, !dbg !3002
  br i1 %87, label %88, label %76, !dbg !3002, !llvm.loop !3008

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !3010
  call void @llvm.dbg.value(metadata i64 %89, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 1, metadata !2882, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %72, metadata !2880, metadata !DIExpression()), !dbg !2930
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #40, !dbg !3011
  call void @llvm.dbg.value(metadata i64 %90, metadata !2881, metadata !DIExpression()), !dbg !2930
  br label %102, !dbg !3012

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !2882, metadata !DIExpression()), !dbg !2930
  br label %93, !dbg !3013

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2883, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 poison, metadata !2882, metadata !DIExpression()), !dbg !2930
  br i1 %36, label %102, label %96, !dbg !3014

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2883, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 poison, metadata !2882, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i32 2, metadata !2872, metadata !DIExpression()), !dbg !2930
  br label %102, !dbg !3015

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !2883, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 poison, metadata !2882, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i32 2, metadata !2872, metadata !DIExpression()), !dbg !2930
  br i1 %36, label %102, label %96, !dbg !3015

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !3016
  br i1 %98, label %102, label %99, !dbg !3020

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !3016, !tbaa !1066
  br label %102, !dbg !3016

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !2883, metadata !DIExpression()), !dbg !2930
  br label %102, !dbg !3021

101:                                              ; preds = %27
  call void @abort() #41, !dbg !3022
  unreachable, !dbg !3022

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !3010
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.130, %42 ], [ @.str.10.130, %44 ], [ @.str.10.130, %41 ], [ %33, %27 ], [ @.str.12.131, %96 ], [ @.str.12.131, %99 ], [ @.str.12.131, %95 ], [ @.str.10.130, %40 ], [ @.str.12.131, %93 ], [ @.str.12.131, %92 ], !dbg !2930
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !2930
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2883, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 poison, metadata !2882, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %108, metadata !2881, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %107, metadata !2880, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %106, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %105, metadata !2876, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata ptr %104, metadata !2875, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i32 %103, metadata !2872, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 0, metadata !2892, metadata !DIExpression()), !dbg !3023
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
  br label %122, !dbg !3024

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !3010
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !2934
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !3025
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !2869, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %129, metadata !2892, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8 poison, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 poison, metadata !2885, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 poison, metadata !2884, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %125, metadata !2879, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %124, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %123, metadata !2871, metadata !DIExpression()), !dbg !2930
  %131 = icmp eq i64 %123, -1, !dbg !3026
  br i1 %131, label %132, label %136, !dbg !3027

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3028
  %134 = load i8, ptr %133, align 1, !dbg !3028, !tbaa !1066
  %135 = icmp eq i8 %134, 0, !dbg !3029
  br i1 %135, label %579, label %138, !dbg !3030

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !3031
  br i1 %137, label %579, label %138, !dbg !3030

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !2894, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 0, metadata !2897, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 0, metadata !2898, metadata !DIExpression()), !dbg !3032
  br i1 %114, label %139, label %152, !dbg !3033

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !3035
  %141 = select i1 %131, i1 %115, i1 false, !dbg !3036
  br i1 %141, label %142, label %144, !dbg !3036

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !3037
  call void @llvm.dbg.value(metadata i64 %143, metadata !2871, metadata !DIExpression()), !dbg !2930
  br label %144, !dbg !3038

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !3038
  call void @llvm.dbg.value(metadata i64 %145, metadata !2871, metadata !DIExpression()), !dbg !2930
  %146 = icmp ugt i64 %140, %145, !dbg !3039
  br i1 %146, label %152, label %147, !dbg !3040

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3041
  call void @llvm.dbg.value(metadata ptr %148, metadata !3042, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata ptr %107, metadata !3045, metadata !DIExpression()), !dbg !3047
  call void @llvm.dbg.value(metadata i64 %108, metadata !3046, metadata !DIExpression()), !dbg !3047
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !3049
  %150 = icmp eq i32 %149, 0, !dbg !3050
  %151 = and i1 %150, %110, !dbg !3051
  br i1 %151, label %630, label %152, !dbg !3051

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2894, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %153, metadata !2871, metadata !DIExpression()), !dbg !2930
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3052
  %156 = load i8, ptr %155, align 1, !dbg !3052, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %156, metadata !2899, metadata !DIExpression()), !dbg !3032
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
  ], !dbg !3053

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !3054

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !3055

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !2897, metadata !DIExpression()), !dbg !3032
  %160 = select i1 %111, i1 true, i1 %128, !dbg !3059
  br i1 %160, label %177, label %161, !dbg !3059

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !3061
  br i1 %162, label %163, label %165, !dbg !3065

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3061
  store i8 39, ptr %164, align 1, !dbg !3061, !tbaa !1066
  br label %165, !dbg !3061

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !3065
  call void @llvm.dbg.value(metadata i64 %166, metadata !2878, metadata !DIExpression()), !dbg !2930
  %167 = icmp ult i64 %166, %130, !dbg !3066
  br i1 %167, label %168, label %170, !dbg !3069

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !3066
  store i8 36, ptr %169, align 1, !dbg !3066, !tbaa !1066
  br label %170, !dbg !3066

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !3069
  call void @llvm.dbg.value(metadata i64 %171, metadata !2878, metadata !DIExpression()), !dbg !2930
  %172 = icmp ult i64 %171, %130, !dbg !3070
  br i1 %172, label %173, label %175, !dbg !3073

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !3070
  store i8 39, ptr %174, align 1, !dbg !3070, !tbaa !1066
  br label %175, !dbg !3070

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !3073
  call void @llvm.dbg.value(metadata i64 %176, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 1, metadata !2886, metadata !DIExpression()), !dbg !2930
  br label %177, !dbg !3074

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !2930
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %178, metadata !2878, metadata !DIExpression()), !dbg !2930
  %180 = icmp ult i64 %178, %130, !dbg !3075
  br i1 %180, label %181, label %183, !dbg !3078

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !3075
  store i8 92, ptr %182, align 1, !dbg !3075, !tbaa !1066
  br label %183, !dbg !3075

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !3078
  call void @llvm.dbg.value(metadata i64 %184, metadata !2878, metadata !DIExpression()), !dbg !2930
  br i1 %111, label %185, label %482, !dbg !3079

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !3081
  %187 = icmp ult i64 %186, %153, !dbg !3082
  br i1 %187, label %188, label %439, !dbg !3083

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !3084
  %190 = load i8, ptr %189, align 1, !dbg !3084, !tbaa !1066
  %191 = add i8 %190, -48, !dbg !3085
  %192 = icmp ult i8 %191, 10, !dbg !3085
  br i1 %192, label %193, label %439, !dbg !3085

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !3086
  br i1 %194, label %195, label %197, !dbg !3090

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !3086
  store i8 48, ptr %196, align 1, !dbg !3086, !tbaa !1066
  br label %197, !dbg !3086

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !3090
  call void @llvm.dbg.value(metadata i64 %198, metadata !2878, metadata !DIExpression()), !dbg !2930
  %199 = icmp ult i64 %198, %130, !dbg !3091
  br i1 %199, label %200, label %202, !dbg !3094

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !3091
  store i8 48, ptr %201, align 1, !dbg !3091, !tbaa !1066
  br label %202, !dbg !3091

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !3094
  call void @llvm.dbg.value(metadata i64 %203, metadata !2878, metadata !DIExpression()), !dbg !2930
  br label %439, !dbg !3095

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !3096

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !3097

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !3098

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !3100

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !3102
  %210 = icmp ult i64 %209, %153, !dbg !3103
  br i1 %210, label %211, label %439, !dbg !3104

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !3105
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !3106
  %214 = load i8, ptr %213, align 1, !dbg !3106, !tbaa !1066
  %215 = icmp eq i8 %214, 63, !dbg !3107
  br i1 %215, label %216, label %439, !dbg !3108

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !3109
  %218 = load i8, ptr %217, align 1, !dbg !3109, !tbaa !1066
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
  ], !dbg !3110

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !3111

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !2899, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %209, metadata !2892, metadata !DIExpression()), !dbg !3023
  %221 = icmp ult i64 %124, %130, !dbg !3113
  br i1 %221, label %222, label %224, !dbg !3116

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3113
  store i8 63, ptr %223, align 1, !dbg !3113, !tbaa !1066
  br label %224, !dbg !3113

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !3116
  call void @llvm.dbg.value(metadata i64 %225, metadata !2878, metadata !DIExpression()), !dbg !2930
  %226 = icmp ult i64 %225, %130, !dbg !3117
  br i1 %226, label %227, label %229, !dbg !3120

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !3117
  store i8 34, ptr %228, align 1, !dbg !3117, !tbaa !1066
  br label %229, !dbg !3117

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !3120
  call void @llvm.dbg.value(metadata i64 %230, metadata !2878, metadata !DIExpression()), !dbg !2930
  %231 = icmp ult i64 %230, %130, !dbg !3121
  br i1 %231, label %232, label %234, !dbg !3124

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !3121
  store i8 34, ptr %233, align 1, !dbg !3121, !tbaa !1066
  br label %234, !dbg !3121

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !3124
  call void @llvm.dbg.value(metadata i64 %235, metadata !2878, metadata !DIExpression()), !dbg !2930
  %236 = icmp ult i64 %235, %130, !dbg !3125
  br i1 %236, label %237, label %239, !dbg !3128

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !3125
  store i8 63, ptr %238, align 1, !dbg !3125, !tbaa !1066
  br label %239, !dbg !3125

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !3128
  call void @llvm.dbg.value(metadata i64 %240, metadata !2878, metadata !DIExpression()), !dbg !2930
  br label %439, !dbg !3129

241:                                              ; preds = %152
  br label %251, !dbg !3130

242:                                              ; preds = %152
  br label %251, !dbg !3131

243:                                              ; preds = %152
  br label %249, !dbg !3132

244:                                              ; preds = %152
  br label %249, !dbg !3133

245:                                              ; preds = %152
  br label %251, !dbg !3134

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !3135

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !3136

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !3139

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !3141
  call void @llvm.dbg.label(metadata !2924), !dbg !3142
  br i1 %119, label %621, label %251, !dbg !3143

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !3141
  call void @llvm.dbg.label(metadata !2926), !dbg !3145
  br i1 %109, label %493, label %450, !dbg !3146

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !3147

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !3148, !tbaa !1066
  %256 = icmp eq i8 %255, 0, !dbg !3150
  br i1 %256, label %257, label %439, !dbg !3151

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !3152
  br i1 %258, label %259, label %439, !dbg !3154

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2898, metadata !DIExpression()), !dbg !3032
  br label %260, !dbg !3155

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2898, metadata !DIExpression()), !dbg !3032
  br i1 %116, label %262, label %439, !dbg !3156

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !3158

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !2884, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 1, metadata !2898, metadata !DIExpression()), !dbg !3032
  br i1 %116, label %264, label %439, !dbg !3159

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !3160

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !3163
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !3165
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !3165
  %270 = select i1 %268, i64 %130, i64 0, !dbg !3165
  call void @llvm.dbg.value(metadata i64 %270, metadata !2869, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %269, metadata !2879, metadata !DIExpression()), !dbg !2930
  %271 = icmp ult i64 %124, %270, !dbg !3166
  br i1 %271, label %272, label %274, !dbg !3169

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3166
  store i8 39, ptr %273, align 1, !dbg !3166, !tbaa !1066
  br label %274, !dbg !3166

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !3169
  call void @llvm.dbg.value(metadata i64 %275, metadata !2878, metadata !DIExpression()), !dbg !2930
  %276 = icmp ult i64 %275, %270, !dbg !3170
  br i1 %276, label %277, label %279, !dbg !3173

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !3170
  store i8 92, ptr %278, align 1, !dbg !3170, !tbaa !1066
  br label %279, !dbg !3170

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !3173
  call void @llvm.dbg.value(metadata i64 %280, metadata !2878, metadata !DIExpression()), !dbg !2930
  %281 = icmp ult i64 %280, %270, !dbg !3174
  br i1 %281, label %282, label %284, !dbg !3177

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !3174
  store i8 39, ptr %283, align 1, !dbg !3174, !tbaa !1066
  br label %284, !dbg !3174

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !3177
  call void @llvm.dbg.value(metadata i64 %285, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 0, metadata !2886, metadata !DIExpression()), !dbg !2930
  br label %439, !dbg !3178

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !3179

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !2900, metadata !DIExpression()), !dbg !3180
  %288 = tail call ptr @__ctype_b_loc() #42, !dbg !3181
  %289 = load ptr, ptr %288, align 8, !dbg !3181, !tbaa !957
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !3181
  %292 = load i16, ptr %291, align 2, !dbg !3181, !tbaa !1098
  %293 = and i16 %292, 16384, !dbg !3181
  %294 = icmp ne i16 %293, 0, !dbg !3183
  call void @llvm.dbg.value(metadata i1 %294, metadata !2903, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3180
  br label %337, !dbg !3184

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #39, !dbg !3185
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2904, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata ptr %14, metadata !2956, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.value(metadata ptr %14, metadata !2965, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i32 0, metadata !2971, metadata !DIExpression()), !dbg !3189
  call void @llvm.dbg.value(metadata i64 8, metadata !2972, metadata !DIExpression()), !dbg !3189
  store i64 0, ptr %14, align 8, !dbg !3191
  call void @llvm.dbg.value(metadata i64 0, metadata !2900, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i8 1, metadata !2903, metadata !DIExpression()), !dbg !3180
  %296 = icmp eq i64 %153, -1, !dbg !3192
  br i1 %296, label %297, label %299, !dbg !3194

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #40, !dbg !3195
  call void @llvm.dbg.value(metadata i64 %298, metadata !2871, metadata !DIExpression()), !dbg !2930
  br label %299, !dbg !3196

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !3032
  call void @llvm.dbg.value(metadata i64 %300, metadata !2871, metadata !DIExpression()), !dbg !2930
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #39, !dbg !3197
  %301 = sub i64 %300, %129, !dbg !3198
  call void @llvm.dbg.value(metadata ptr %15, metadata !2907, metadata !DIExpression(DW_OP_deref)), !dbg !3199
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #39, !dbg !3200
  call void @llvm.dbg.value(metadata i64 %302, metadata !2911, metadata !DIExpression()), !dbg !3199
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !3201

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !2900, metadata !DIExpression()), !dbg !3180
  %304 = icmp ugt i64 %300, %129, !dbg !3202
  br i1 %304, label %306, label %332, !dbg !3204

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !2903, metadata !DIExpression()), !dbg !3180
  br label %332, !dbg !3205

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !2900, metadata !DIExpression()), !dbg !3180
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !3207
  %310 = load i8, ptr %309, align 1, !dbg !3207, !tbaa !1066
  %311 = icmp eq i8 %310, 0, !dbg !3204
  br i1 %311, label %332, label %312, !dbg !3208

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !3209
  call void @llvm.dbg.value(metadata i64 %313, metadata !2900, metadata !DIExpression()), !dbg !3180
  %314 = add i64 %313, %129, !dbg !3210
  %315 = icmp eq i64 %313, %301, !dbg !3202
  br i1 %315, label %332, label %306, !dbg !3204, !llvm.loop !3211

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !3212
  %319 = and i1 %318, %110, !dbg !3212
  call void @llvm.dbg.value(metadata i64 1, metadata !2912, metadata !DIExpression()), !dbg !3213
  br i1 %319, label %320, label %328, !dbg !3212

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !2912, metadata !DIExpression()), !dbg !3213
  %322 = add i64 %321, %129, !dbg !3214
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !3216
  %324 = load i8, ptr %323, align 1, !dbg !3216, !tbaa !1066
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !3217

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !3218
  call void @llvm.dbg.value(metadata i64 %326, metadata !2912, metadata !DIExpression()), !dbg !3213
  %327 = icmp eq i64 %326, %302, !dbg !3219
  br i1 %327, label %328, label %320, !dbg !3220, !llvm.loop !3221

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !3223, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %329, metadata !2907, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i32 %329, metadata !3225, metadata !DIExpression()), !dbg !3233
  %330 = call i32 @iswprint(i32 noundef %329) #39, !dbg !3235
  %331 = icmp ne i32 %330, 0, !dbg !3236
  call void @llvm.dbg.value(metadata i8 poison, metadata !2903, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i64 %302, metadata !2900, metadata !DIExpression()), !dbg !3180
  br label %332, !dbg !3237

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2903, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i64 %333, metadata !2900, metadata !DIExpression()), !dbg !3180
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !3238
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !3239
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !2903, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i64 0, metadata !2900, metadata !DIExpression()), !dbg !3180
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #39, !dbg !3238
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #39, !dbg !3239
  call void @llvm.dbg.label(metadata !2929), !dbg !3240
  %336 = select i1 %109, i32 4, i32 2, !dbg !3241
  br label %626, !dbg !3241

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !3032
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !3243
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2903, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i64 %339, metadata !2900, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata i64 %338, metadata !2871, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i1 %340, metadata !2898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3032
  %341 = icmp ult i64 %339, 2, !dbg !3244
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !3245
  br i1 %343, label %439, label %344, !dbg !3245

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !3246
  call void @llvm.dbg.value(metadata i64 %345, metadata !2920, metadata !DIExpression()), !dbg !3247
  br label %346, !dbg !3248

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !2930
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !3023
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !3249
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !3032
  call void @llvm.dbg.value(metadata i8 %352, metadata !2899, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 %351, metadata !2897, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 poison, metadata !2894, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %349, metadata !2892, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8 poison, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %347, metadata !2878, metadata !DIExpression()), !dbg !2930
  br i1 %342, label %397, label %353, !dbg !3250

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !3255

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !2897, metadata !DIExpression()), !dbg !3032
  %355 = select i1 %111, i1 true, i1 %348, !dbg !3258
  br i1 %355, label %372, label %356, !dbg !3258

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !3260
  br i1 %357, label %358, label %360, !dbg !3264

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3260
  store i8 39, ptr %359, align 1, !dbg !3260, !tbaa !1066
  br label %360, !dbg !3260

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !3264
  call void @llvm.dbg.value(metadata i64 %361, metadata !2878, metadata !DIExpression()), !dbg !2930
  %362 = icmp ult i64 %361, %130, !dbg !3265
  br i1 %362, label %363, label %365, !dbg !3268

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !3265
  store i8 36, ptr %364, align 1, !dbg !3265, !tbaa !1066
  br label %365, !dbg !3265

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !3268
  call void @llvm.dbg.value(metadata i64 %366, metadata !2878, metadata !DIExpression()), !dbg !2930
  %367 = icmp ult i64 %366, %130, !dbg !3269
  br i1 %367, label %368, label %370, !dbg !3272

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !3269
  store i8 39, ptr %369, align 1, !dbg !3269, !tbaa !1066
  br label %370, !dbg !3269

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !3272
  call void @llvm.dbg.value(metadata i64 %371, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 1, metadata !2886, metadata !DIExpression()), !dbg !2930
  br label %372, !dbg !3273

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !2930
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %373, metadata !2878, metadata !DIExpression()), !dbg !2930
  %375 = icmp ult i64 %373, %130, !dbg !3274
  br i1 %375, label %376, label %378, !dbg !3277

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !3274
  store i8 92, ptr %377, align 1, !dbg !3274, !tbaa !1066
  br label %378, !dbg !3274

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !3277
  call void @llvm.dbg.value(metadata i64 %379, metadata !2878, metadata !DIExpression()), !dbg !2930
  %380 = icmp ult i64 %379, %130, !dbg !3278
  br i1 %380, label %381, label %385, !dbg !3281

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !3278
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !3278
  store i8 %383, ptr %384, align 1, !dbg !3278, !tbaa !1066
  br label %385, !dbg !3278

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !3281
  call void @llvm.dbg.value(metadata i64 %386, metadata !2878, metadata !DIExpression()), !dbg !2930
  %387 = icmp ult i64 %386, %130, !dbg !3282
  br i1 %387, label %388, label %393, !dbg !3285

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !3282
  %391 = or i8 %390, 48, !dbg !3282
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3282
  store i8 %391, ptr %392, align 1, !dbg !3282, !tbaa !1066
  br label %393, !dbg !3282

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !3285
  call void @llvm.dbg.value(metadata i64 %394, metadata !2878, metadata !DIExpression()), !dbg !2930
  %395 = and i8 %352, 7, !dbg !3286
  %396 = or i8 %395, 48, !dbg !3287
  call void @llvm.dbg.value(metadata i8 %396, metadata !2899, metadata !DIExpression()), !dbg !3032
  br label %404, !dbg !3288

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !3289

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !3290
  br i1 %399, label %400, label %402, !dbg !3295

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3290
  store i8 92, ptr %401, align 1, !dbg !3290, !tbaa !1066
  br label %402, !dbg !3290

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !3295
  call void @llvm.dbg.value(metadata i64 %403, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 0, metadata !2894, metadata !DIExpression()), !dbg !3032
  br label %404, !dbg !3296

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !2930
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !3032
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !3032
  call void @llvm.dbg.value(metadata i8 %409, metadata !2899, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 %408, metadata !2897, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 poison, metadata !2894, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 poison, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %405, metadata !2878, metadata !DIExpression()), !dbg !2930
  %410 = add i64 %349, 1, !dbg !3297
  %411 = icmp ugt i64 %345, %410, !dbg !3299
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !3300

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !3301
  %415 = select i1 %406, i1 %414, i1 false, !dbg !3301
  br i1 %415, label %416, label %427, !dbg !3301

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !3304
  br i1 %417, label %418, label %420, !dbg !3308

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !3304
  store i8 39, ptr %419, align 1, !dbg !3304, !tbaa !1066
  br label %420, !dbg !3304

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !3308
  call void @llvm.dbg.value(metadata i64 %421, metadata !2878, metadata !DIExpression()), !dbg !2930
  %422 = icmp ult i64 %421, %130, !dbg !3309
  br i1 %422, label %423, label %425, !dbg !3312

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !3309
  store i8 39, ptr %424, align 1, !dbg !3309, !tbaa !1066
  br label %425, !dbg !3309

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !3312
  call void @llvm.dbg.value(metadata i64 %426, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 0, metadata !2886, metadata !DIExpression()), !dbg !2930
  br label %427, !dbg !3313

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !3314
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %428, metadata !2878, metadata !DIExpression()), !dbg !2930
  %430 = icmp ult i64 %428, %130, !dbg !3315
  br i1 %430, label %431, label %433, !dbg !3318

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !3315
  store i8 %409, ptr %432, align 1, !dbg !3315, !tbaa !1066
  br label %433, !dbg !3315

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !3318
  call void @llvm.dbg.value(metadata i64 %434, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %410, metadata !2892, metadata !DIExpression()), !dbg !3023
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !3319
  %436 = load i8, ptr %435, align 1, !dbg !3319, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %436, metadata !2899, metadata !DIExpression()), !dbg !3032
  br label %346, !dbg !3320, !llvm.loop !3321

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !2899, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i1 %340, metadata !2898, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3032
  call void @llvm.dbg.value(metadata i8 %408, metadata !2897, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 poison, metadata !2894, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %349, metadata !2892, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8 poison, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %405, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %338, metadata !2871, metadata !DIExpression()), !dbg !2930
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !3324
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !2930
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !2934
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !3023
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !3032
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !2869, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %448, metadata !2899, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 poison, metadata !2898, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 poison, metadata !2897, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 poison, metadata !2894, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %445, metadata !2892, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8 poison, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 poison, metadata !2884, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %442, metadata !2879, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %441, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %440, metadata !2871, metadata !DIExpression()), !dbg !2930
  br i1 %112, label %461, label %450, !dbg !3325

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
  br i1 %121, label %462, label %482, !dbg !3327

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !3328

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
  %473 = lshr i8 %464, 5, !dbg !3329
  %474 = zext i8 %473 to i64, !dbg !3329
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !3330
  %476 = load i32, ptr %475, align 4, !dbg !3330, !tbaa !1057
  %477 = and i8 %464, 31, !dbg !3331
  %478 = zext i8 %477 to i32, !dbg !3331
  %479 = shl nuw i32 1, %478, !dbg !3332
  %480 = and i32 %476, %479, !dbg !3332
  %481 = icmp eq i32 %480, 0, !dbg !3332
  br i1 %481, label %482, label %493, !dbg !3333

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
  br i1 %154, label %493, label %529, !dbg !3334

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !3324
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !2930
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !2934
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !3335
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !3032
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !2869, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %501, metadata !2899, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 poison, metadata !2898, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %499, metadata !2892, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8 poison, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 poison, metadata !2884, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %496, metadata !2879, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %495, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %494, metadata !2871, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.label(metadata !2927), !dbg !3336
  br i1 %110, label %621, label %503, !dbg !3337

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !2897, metadata !DIExpression()), !dbg !3032
  %504 = select i1 %111, i1 true, i1 %498, !dbg !3339
  br i1 %504, label %521, label %505, !dbg !3339

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !3341
  br i1 %506, label %507, label %509, !dbg !3345

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !3341
  store i8 39, ptr %508, align 1, !dbg !3341, !tbaa !1066
  br label %509, !dbg !3341

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !3345
  call void @llvm.dbg.value(metadata i64 %510, metadata !2878, metadata !DIExpression()), !dbg !2930
  %511 = icmp ult i64 %510, %502, !dbg !3346
  br i1 %511, label %512, label %514, !dbg !3349

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !3346
  store i8 36, ptr %513, align 1, !dbg !3346, !tbaa !1066
  br label %514, !dbg !3346

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !3349
  call void @llvm.dbg.value(metadata i64 %515, metadata !2878, metadata !DIExpression()), !dbg !2930
  %516 = icmp ult i64 %515, %502, !dbg !3350
  br i1 %516, label %517, label %519, !dbg !3353

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !3350
  store i8 39, ptr %518, align 1, !dbg !3350, !tbaa !1066
  br label %519, !dbg !3350

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !3353
  call void @llvm.dbg.value(metadata i64 %520, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 1, metadata !2886, metadata !DIExpression()), !dbg !2930
  br label %521, !dbg !3354

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !3032
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %522, metadata !2878, metadata !DIExpression()), !dbg !2930
  %524 = icmp ult i64 %522, %502, !dbg !3355
  br i1 %524, label %525, label %527, !dbg !3358

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3355
  store i8 92, ptr %526, align 1, !dbg !3355, !tbaa !1066
  br label %527, !dbg !3355

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !3358
  call void @llvm.dbg.value(metadata i64 %502, metadata !2869, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %501, metadata !2899, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 poison, metadata !2898, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 poison, metadata !2897, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %499, metadata !2892, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8 poison, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 poison, metadata !2884, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %496, metadata !2879, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %528, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %494, metadata !2871, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.label(metadata !2928), !dbg !3359
  br label %553, !dbg !3360

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !3324
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !2930
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !2934
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !3335
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !3363
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !2869, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 %538, metadata !2899, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 poison, metadata !2898, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8 poison, metadata !2897, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i64 %535, metadata !2892, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8 poison, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 poison, metadata !2884, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %532, metadata !2879, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %531, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %530, metadata !2871, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.label(metadata !2928), !dbg !3359
  %540 = xor i1 %534, true, !dbg !3360
  %541 = select i1 %540, i1 true, i1 %536, !dbg !3360
  br i1 %541, label %553, label %542, !dbg !3360

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !3364
  br i1 %543, label %544, label %546, !dbg !3368

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !3364
  store i8 39, ptr %545, align 1, !dbg !3364, !tbaa !1066
  br label %546, !dbg !3364

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !3368
  call void @llvm.dbg.value(metadata i64 %547, metadata !2878, metadata !DIExpression()), !dbg !2930
  %548 = icmp ult i64 %547, %539, !dbg !3369
  br i1 %548, label %549, label %551, !dbg !3372

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !3369
  store i8 39, ptr %550, align 1, !dbg !3369, !tbaa !1066
  br label %551, !dbg !3369

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !3372
  call void @llvm.dbg.value(metadata i64 %552, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 0, metadata !2886, metadata !DIExpression()), !dbg !2930
  br label %553, !dbg !3373

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !3032
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %561, metadata !2878, metadata !DIExpression()), !dbg !2930
  %563 = icmp ult i64 %561, %554, !dbg !3374
  br i1 %563, label %564, label %566, !dbg !3377

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !3374
  store i8 %555, ptr %565, align 1, !dbg !3374, !tbaa !1066
  br label %566, !dbg !3374

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3377
  call void @llvm.dbg.value(metadata i64 %567, metadata !2878, metadata !DIExpression()), !dbg !2930
  %568 = select i1 %556, i1 %127, i1 false, !dbg !3378
  call void @llvm.dbg.value(metadata i8 poison, metadata !2885, metadata !DIExpression()), !dbg !2930
  br label %569, !dbg !3379

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !3324
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !2930
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !2934
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !3335
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !2869, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %576, metadata !2892, metadata !DIExpression()), !dbg !3023
  call void @llvm.dbg.value(metadata i8 poison, metadata !2886, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 poison, metadata !2885, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 poison, metadata !2884, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %572, metadata !2879, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %571, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %570, metadata !2871, metadata !DIExpression()), !dbg !2930
  %578 = add i64 %576, 1, !dbg !3380
  call void @llvm.dbg.value(metadata i64 %578, metadata !2892, metadata !DIExpression()), !dbg !3023
  br label %122, !dbg !3381, !llvm.loop !3382

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !2869, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 poison, metadata !2885, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i8 poison, metadata !2884, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %125, metadata !2879, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %124, metadata !2878, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %123, metadata !2871, metadata !DIExpression()), !dbg !2930
  %580 = icmp ne i64 %124, 0, !dbg !3384
  %581 = xor i1 %110, true, !dbg !3386
  %582 = or i1 %580, %581, !dbg !3386
  %583 = or i1 %582, %111, !dbg !3386
  br i1 %583, label %584, label %621, !dbg !3386

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !3387
  %586 = xor i1 %126, true, !dbg !3387
  %587 = select i1 %585, i1 true, i1 %586, !dbg !3387
  br i1 %587, label %595, label %588, !dbg !3387

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !3389

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !3391
  br label %636, !dbg !3393

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !3394
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !3396
  br i1 %594, label %27, label %595, !dbg !3396

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !3397
  %598 = or i1 %597, %596, !dbg !3399
  br i1 %598, label %614, label %599, !dbg !3399

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !2880, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %124, metadata !2878, metadata !DIExpression()), !dbg !2930
  %600 = load i8, ptr %107, align 1, !dbg !3400, !tbaa !1066
  %601 = icmp eq i8 %600, 0, !dbg !3403
  br i1 %601, label %614, label %602, !dbg !3403

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !2880, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i64 %605, metadata !2878, metadata !DIExpression()), !dbg !2930
  %606 = icmp ult i64 %605, %130, !dbg !3404
  br i1 %606, label %607, label %609, !dbg !3407

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !3404
  store i8 %603, ptr %608, align 1, !dbg !3404, !tbaa !1066
  br label %609, !dbg !3404

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !3407
  call void @llvm.dbg.value(metadata i64 %610, metadata !2878, metadata !DIExpression()), !dbg !2930
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !3408
  call void @llvm.dbg.value(metadata ptr %611, metadata !2880, metadata !DIExpression()), !dbg !2930
  %612 = load i8, ptr %611, align 1, !dbg !3400, !tbaa !1066
  %613 = icmp eq i8 %612, 0, !dbg !3403
  br i1 %613, label %614, label %602, !dbg !3403, !llvm.loop !3409

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !3010
  call void @llvm.dbg.value(metadata i64 %615, metadata !2878, metadata !DIExpression()), !dbg !2930
  %616 = icmp ult i64 %615, %130, !dbg !3411
  br i1 %616, label %617, label %636, !dbg !3413

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !3414
  store i8 0, ptr %618, align 1, !dbg !3415, !tbaa !1066
  br label %636, !dbg !3414

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !2929), !dbg !3240
  %620 = icmp eq i32 %103, 2, !dbg !3416
  br i1 %620, label %626, label %630, !dbg !3241

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !2929), !dbg !3240
  %624 = icmp eq i32 %103, 2, !dbg !3416
  %625 = select i1 %109, i32 4, i32 2, !dbg !3241
  br i1 %624, label %626, label %630, !dbg !3241

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !3241

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !2872, metadata !DIExpression()), !dbg !2930
  %634 = and i32 %5, -3, !dbg !3417
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !3418
  br label %636, !dbg !3419

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !3420
}

; Function Attrs: nounwind
declare !dbg !3421 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3424 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3426 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3430, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata i64 %1, metadata !3431, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata ptr %2, metadata !3432, metadata !DIExpression()), !dbg !3433
  call void @llvm.dbg.value(metadata ptr %0, metadata !3434, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i64 %1, metadata !3439, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata ptr null, metadata !3440, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata ptr %2, metadata !3441, metadata !DIExpression()), !dbg !3447
  %4 = icmp eq ptr %2, null, !dbg !3449
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3449
  call void @llvm.dbg.value(metadata ptr %5, metadata !3442, metadata !DIExpression()), !dbg !3447
  %6 = tail call ptr @__errno_location() #42, !dbg !3450
  %7 = load i32, ptr %6, align 4, !dbg !3450, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %7, metadata !3443, metadata !DIExpression()), !dbg !3447
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3451
  %9 = load i32, ptr %8, align 4, !dbg !3451, !tbaa !2812
  %10 = or i32 %9, 1, !dbg !3452
  call void @llvm.dbg.value(metadata i32 %10, metadata !3444, metadata !DIExpression()), !dbg !3447
  %11 = load i32, ptr %5, align 8, !dbg !3453, !tbaa !2762
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3454
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3455
  %14 = load ptr, ptr %13, align 8, !dbg !3455, !tbaa !2833
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3456
  %16 = load ptr, ptr %15, align 8, !dbg !3456, !tbaa !2836
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3457
  %18 = add i64 %17, 1, !dbg !3458
  call void @llvm.dbg.value(metadata i64 %18, metadata !3445, metadata !DIExpression()), !dbg !3447
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #47, !dbg !3459
  call void @llvm.dbg.value(metadata ptr %19, metadata !3446, metadata !DIExpression()), !dbg !3447
  %20 = load i32, ptr %5, align 8, !dbg !3460, !tbaa !2762
  %21 = load ptr, ptr %13, align 8, !dbg !3461, !tbaa !2833
  %22 = load ptr, ptr %15, align 8, !dbg !3462, !tbaa !2836
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3463
  store i32 %7, ptr %6, align 4, !dbg !3464, !tbaa !1057
  ret ptr %19, !dbg !3465
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3435 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3434, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i64 %1, metadata !3439, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata ptr %2, metadata !3440, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata ptr %3, metadata !3441, metadata !DIExpression()), !dbg !3466
  %5 = icmp eq ptr %3, null, !dbg !3467
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3467
  call void @llvm.dbg.value(metadata ptr %6, metadata !3442, metadata !DIExpression()), !dbg !3466
  %7 = tail call ptr @__errno_location() #42, !dbg !3468
  %8 = load i32, ptr %7, align 4, !dbg !3468, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %8, metadata !3443, metadata !DIExpression()), !dbg !3466
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3469
  %10 = load i32, ptr %9, align 4, !dbg !3469, !tbaa !2812
  %11 = icmp eq ptr %2, null, !dbg !3470
  %12 = zext i1 %11 to i32, !dbg !3470
  %13 = or i32 %10, %12, !dbg !3471
  call void @llvm.dbg.value(metadata i32 %13, metadata !3444, metadata !DIExpression()), !dbg !3466
  %14 = load i32, ptr %6, align 8, !dbg !3472, !tbaa !2762
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3473
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3474
  %17 = load ptr, ptr %16, align 8, !dbg !3474, !tbaa !2833
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3475
  %19 = load ptr, ptr %18, align 8, !dbg !3475, !tbaa !2836
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3476
  %21 = add i64 %20, 1, !dbg !3477
  call void @llvm.dbg.value(metadata i64 %21, metadata !3445, metadata !DIExpression()), !dbg !3466
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #47, !dbg !3478
  call void @llvm.dbg.value(metadata ptr %22, metadata !3446, metadata !DIExpression()), !dbg !3466
  %23 = load i32, ptr %6, align 8, !dbg !3479, !tbaa !2762
  %24 = load ptr, ptr %16, align 8, !dbg !3480, !tbaa !2833
  %25 = load ptr, ptr %18, align 8, !dbg !3481, !tbaa !2836
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3482
  store i32 %8, ptr %7, align 4, !dbg !3483, !tbaa !1057
  br i1 %11, label %28, label %27, !dbg !3484

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3485, !tbaa !3487
  br label %28, !dbg !3488

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3489
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3490 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3495, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %1, metadata !3492, metadata !DIExpression()), !dbg !3496
  call void @llvm.dbg.value(metadata i32 1, metadata !3493, metadata !DIExpression()), !dbg !3497
  %2 = load i32, ptr @nslots, align 4, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 1, metadata !3493, metadata !DIExpression()), !dbg !3497
  %3 = icmp sgt i32 %2, 1, !dbg !3498
  br i1 %3, label %4, label %6, !dbg !3500

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3498
  br label %10, !dbg !3500

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3501
  %8 = load ptr, ptr %7, align 8, !dbg !3501, !tbaa !3503
  %9 = icmp eq ptr %8, @slot0, !dbg !3505
  br i1 %9, label %17, label %16, !dbg !3506

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3493, metadata !DIExpression()), !dbg !3497
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3507
  %13 = load ptr, ptr %12, align 8, !dbg !3507, !tbaa !3503
  tail call void @free(ptr noundef %13) #39, !dbg !3508
  %14 = add nuw nsw i64 %11, 1, !dbg !3509
  call void @llvm.dbg.value(metadata i64 %14, metadata !3493, metadata !DIExpression()), !dbg !3497
  %15 = icmp eq i64 %14, %5, !dbg !3498
  br i1 %15, label %6, label %10, !dbg !3500, !llvm.loop !3510

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #39, !dbg !3512
  store i64 256, ptr @slotvec0, align 8, !dbg !3514, !tbaa !3515
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3516, !tbaa !3503
  br label %17, !dbg !3517

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3518
  br i1 %18, label %20, label %19, !dbg !3520

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #39, !dbg !3521
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3523, !tbaa !957
  br label %20, !dbg !3524

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3525, !tbaa !1057
  ret void, !dbg !3526
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3527 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #27

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3530 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3532, metadata !DIExpression()), !dbg !3534
  call void @llvm.dbg.value(metadata ptr %1, metadata !3533, metadata !DIExpression()), !dbg !3534
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3535
  ret ptr %3, !dbg !3536
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3537 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3541, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata ptr %1, metadata !3542, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i64 %2, metadata !3543, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata ptr %3, metadata !3544, metadata !DIExpression()), !dbg !3557
  %6 = tail call ptr @__errno_location() #42, !dbg !3558
  %7 = load i32, ptr %6, align 4, !dbg !3558, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %7, metadata !3545, metadata !DIExpression()), !dbg !3557
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3559, !tbaa !957
  call void @llvm.dbg.value(metadata ptr %8, metadata !3546, metadata !DIExpression()), !dbg !3557
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3547, metadata !DIExpression()), !dbg !3557
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3560
  br i1 %9, label %10, label %11, !dbg !3560

10:                                               ; preds = %4
  tail call void @abort() #41, !dbg !3562
  unreachable, !dbg !3562

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3563, !tbaa !1057
  %13 = icmp sgt i32 %12, %0, !dbg !3564
  br i1 %13, label %32, label %14, !dbg !3565

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3566
  call void @llvm.dbg.value(metadata i1 %15, metadata !3548, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3567
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #39, !dbg !3568
  %16 = sext i32 %12 to i64, !dbg !3569
  call void @llvm.dbg.value(metadata i64 %16, metadata !3551, metadata !DIExpression()), !dbg !3567
  store i64 %16, ptr %5, align 8, !dbg !3570, !tbaa !3487
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3571
  %18 = add nuw nsw i32 %0, 1, !dbg !3572
  %19 = sub i32 %18, %12, !dbg !3573
  %20 = sext i32 %19 to i64, !dbg !3574
  call void @llvm.dbg.value(metadata ptr %5, metadata !3551, metadata !DIExpression(DW_OP_deref)), !dbg !3567
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #39, !dbg !3575
  call void @llvm.dbg.value(metadata ptr %21, metadata !3546, metadata !DIExpression()), !dbg !3557
  store ptr %21, ptr @slotvec, align 8, !dbg !3576, !tbaa !957
  br i1 %15, label %22, label %23, !dbg !3577

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3578, !tbaa.struct !3580
  br label %23, !dbg !3581

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3582, !tbaa !1057
  %25 = sext i32 %24 to i64, !dbg !3583
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3583
  %27 = load i64, ptr %5, align 8, !dbg !3584, !tbaa !3487
  call void @llvm.dbg.value(metadata i64 %27, metadata !3551, metadata !DIExpression()), !dbg !3567
  %28 = sub nsw i64 %27, %25, !dbg !3585
  %29 = shl i64 %28, 4, !dbg !3586
  call void @llvm.dbg.value(metadata ptr %26, metadata !2965, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 0, metadata !2971, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i64 %29, metadata !2972, metadata !DIExpression()), !dbg !3587
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #39, !dbg !3589
  %30 = load i64, ptr %5, align 8, !dbg !3590, !tbaa !3487
  call void @llvm.dbg.value(metadata i64 %30, metadata !3551, metadata !DIExpression()), !dbg !3567
  %31 = trunc i64 %30 to i32, !dbg !3590
  store i32 %31, ptr @nslots, align 4, !dbg !3591, !tbaa !1057
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #39, !dbg !3592
  br label %32, !dbg !3593

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3557
  call void @llvm.dbg.value(metadata ptr %33, metadata !3546, metadata !DIExpression()), !dbg !3557
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3594
  %36 = load i64, ptr %35, align 8, !dbg !3595, !tbaa !3515
  call void @llvm.dbg.value(metadata i64 %36, metadata !3552, metadata !DIExpression()), !dbg !3596
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3597
  %38 = load ptr, ptr %37, align 8, !dbg !3597, !tbaa !3503
  call void @llvm.dbg.value(metadata ptr %38, metadata !3554, metadata !DIExpression()), !dbg !3596
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3598
  %40 = load i32, ptr %39, align 4, !dbg !3598, !tbaa !2812
  %41 = or i32 %40, 1, !dbg !3599
  call void @llvm.dbg.value(metadata i32 %41, metadata !3555, metadata !DIExpression()), !dbg !3596
  %42 = load i32, ptr %3, align 8, !dbg !3600, !tbaa !2762
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3601
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3602
  %45 = load ptr, ptr %44, align 8, !dbg !3602, !tbaa !2833
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3603
  %47 = load ptr, ptr %46, align 8, !dbg !3603, !tbaa !2836
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3604
  call void @llvm.dbg.value(metadata i64 %48, metadata !3556, metadata !DIExpression()), !dbg !3596
  %49 = icmp ugt i64 %36, %48, !dbg !3605
  br i1 %49, label %60, label %50, !dbg !3607

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3608
  call void @llvm.dbg.value(metadata i64 %51, metadata !3552, metadata !DIExpression()), !dbg !3596
  store i64 %51, ptr %35, align 8, !dbg !3610, !tbaa !3515
  %52 = icmp eq ptr %38, @slot0, !dbg !3611
  br i1 %52, label %54, label %53, !dbg !3613

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #39, !dbg !3614
  br label %54, !dbg !3614

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #47, !dbg !3615
  call void @llvm.dbg.value(metadata ptr %55, metadata !3554, metadata !DIExpression()), !dbg !3596
  store ptr %55, ptr %37, align 8, !dbg !3616, !tbaa !3503
  %56 = load i32, ptr %3, align 8, !dbg !3617, !tbaa !2762
  %57 = load ptr, ptr %44, align 8, !dbg !3618, !tbaa !2833
  %58 = load ptr, ptr %46, align 8, !dbg !3619, !tbaa !2836
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3620
  br label %60, !dbg !3621

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3596
  call void @llvm.dbg.value(metadata ptr %61, metadata !3554, metadata !DIExpression()), !dbg !3596
  store i32 %7, ptr %6, align 4, !dbg !3622, !tbaa !1057
  ret ptr %61, !dbg !3623
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #28

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3624 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3628, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata ptr %1, metadata !3629, metadata !DIExpression()), !dbg !3631
  call void @llvm.dbg.value(metadata i64 %2, metadata !3630, metadata !DIExpression()), !dbg !3631
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3632
  ret ptr %4, !dbg !3633
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3634 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3636, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i32 0, metadata !3532, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata ptr %0, metadata !3533, metadata !DIExpression()), !dbg !3638
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3640
  ret ptr %2, !dbg !3641
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3642 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3646, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i64 %1, metadata !3647, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i32 0, metadata !3628, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata ptr %0, metadata !3629, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i64 %1, metadata !3630, metadata !DIExpression()), !dbg !3649
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3651
  ret ptr %3, !dbg !3652
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3653 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3657, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i32 %1, metadata !3658, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata ptr %2, metadata !3659, metadata !DIExpression()), !dbg !3661
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3662
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3660, metadata !DIExpression()), !dbg !3663
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3664), !dbg !3667
  call void @llvm.dbg.value(metadata i32 %1, metadata !3668, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3673, metadata !DIExpression()), !dbg !3676
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3676, !alias.scope !3664
  %5 = icmp eq i32 %1, 10, !dbg !3677
  br i1 %5, label %6, label %7, !dbg !3679

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3680, !noalias !3664
  unreachable, !dbg !3680

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3681, !tbaa !2762, !alias.scope !3664
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3682
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3683
  ret ptr %8, !dbg !3684
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3685 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3689, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i32 %1, metadata !3690, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata ptr %2, metadata !3691, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i64 %3, metadata !3692, metadata !DIExpression()), !dbg !3694
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3695
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3693, metadata !DIExpression()), !dbg !3696
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3697), !dbg !3700
  call void @llvm.dbg.value(metadata i32 %1, metadata !3668, metadata !DIExpression()), !dbg !3701
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3673, metadata !DIExpression()), !dbg !3703
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3703, !alias.scope !3697
  %6 = icmp eq i32 %1, 10, !dbg !3704
  br i1 %6, label %7, label %8, !dbg !3705

7:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3706, !noalias !3697
  unreachable, !dbg !3706

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3707, !tbaa !2762, !alias.scope !3697
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3708
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3709
  ret ptr %9, !dbg !3710
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3711 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3715, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata ptr %1, metadata !3716, metadata !DIExpression()), !dbg !3717
  call void @llvm.dbg.value(metadata i32 0, metadata !3657, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata i32 %0, metadata !3658, metadata !DIExpression()), !dbg !3718
  call void @llvm.dbg.value(metadata ptr %1, metadata !3659, metadata !DIExpression()), !dbg !3718
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3720
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3660, metadata !DIExpression()), !dbg !3721
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3722), !dbg !3725
  call void @llvm.dbg.value(metadata i32 %0, metadata !3668, metadata !DIExpression()), !dbg !3726
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3673, metadata !DIExpression()), !dbg !3728
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3728, !alias.scope !3722
  %4 = icmp eq i32 %0, 10, !dbg !3729
  br i1 %4, label %5, label %6, !dbg !3730

5:                                                ; preds = %2
  tail call void @abort() #41, !dbg !3731, !noalias !3722
  unreachable, !dbg !3731

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3732, !tbaa !2762, !alias.scope !3722
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3733
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3734
  ret ptr %7, !dbg !3735
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3736 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3740, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata ptr %1, metadata !3741, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i64 %2, metadata !3742, metadata !DIExpression()), !dbg !3743
  call void @llvm.dbg.value(metadata i32 0, metadata !3689, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i32 %0, metadata !3690, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata ptr %1, metadata !3691, metadata !DIExpression()), !dbg !3744
  call void @llvm.dbg.value(metadata i64 %2, metadata !3692, metadata !DIExpression()), !dbg !3744
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3746
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3693, metadata !DIExpression()), !dbg !3747
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3748), !dbg !3751
  call void @llvm.dbg.value(metadata i32 %0, metadata !3668, metadata !DIExpression()), !dbg !3752
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3673, metadata !DIExpression()), !dbg !3754
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3754, !alias.scope !3748
  %5 = icmp eq i32 %0, 10, !dbg !3755
  br i1 %5, label %6, label %7, !dbg !3756

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3757, !noalias !3748
  unreachable, !dbg !3757

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3758, !tbaa !2762, !alias.scope !3748
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3759
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3760
  ret ptr %8, !dbg !3761
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3762 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3766, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata i64 %1, metadata !3767, metadata !DIExpression()), !dbg !3770
  call void @llvm.dbg.value(metadata i8 %2, metadata !3768, metadata !DIExpression()), !dbg !3770
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3771
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3769, metadata !DIExpression()), !dbg !3772
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3773, !tbaa.struct !3774
  call void @llvm.dbg.value(metadata ptr %4, metadata !2779, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i8 %2, metadata !2780, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i32 1, metadata !2781, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i8 %2, metadata !2782, metadata !DIExpression()), !dbg !3775
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3777
  %6 = lshr i8 %2, 5, !dbg !3778
  %7 = zext i8 %6 to i64, !dbg !3778
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3779
  call void @llvm.dbg.value(metadata ptr %8, metadata !2783, metadata !DIExpression()), !dbg !3775
  %9 = and i8 %2, 31, !dbg !3780
  %10 = zext i8 %9 to i32, !dbg !3780
  call void @llvm.dbg.value(metadata i32 %10, metadata !2785, metadata !DIExpression()), !dbg !3775
  %11 = load i32, ptr %8, align 4, !dbg !3781, !tbaa !1057
  %12 = lshr i32 %11, %10, !dbg !3782
  call void @llvm.dbg.value(metadata i32 %12, metadata !2786, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3775
  %13 = and i32 %12, 1, !dbg !3783
  %14 = xor i32 %13, 1, !dbg !3783
  %15 = shl nuw i32 %14, %10, !dbg !3784
  %16 = xor i32 %15, %11, !dbg !3785
  store i32 %16, ptr %8, align 4, !dbg !3785, !tbaa !1057
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3786
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3787
  ret ptr %17, !dbg !3788
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3789 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3793, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata i8 %1, metadata !3794, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.value(metadata ptr %0, metadata !3766, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i64 -1, metadata !3767, metadata !DIExpression()), !dbg !3796
  call void @llvm.dbg.value(metadata i8 %1, metadata !3768, metadata !DIExpression()), !dbg !3796
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3798
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3769, metadata !DIExpression()), !dbg !3799
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3800, !tbaa.struct !3774
  call void @llvm.dbg.value(metadata ptr %3, metadata !2779, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i8 %1, metadata !2780, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i32 1, metadata !2781, metadata !DIExpression()), !dbg !3801
  call void @llvm.dbg.value(metadata i8 %1, metadata !2782, metadata !DIExpression()), !dbg !3801
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3803
  %5 = lshr i8 %1, 5, !dbg !3804
  %6 = zext i8 %5 to i64, !dbg !3804
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3805
  call void @llvm.dbg.value(metadata ptr %7, metadata !2783, metadata !DIExpression()), !dbg !3801
  %8 = and i8 %1, 31, !dbg !3806
  %9 = zext i8 %8 to i32, !dbg !3806
  call void @llvm.dbg.value(metadata i32 %9, metadata !2785, metadata !DIExpression()), !dbg !3801
  %10 = load i32, ptr %7, align 4, !dbg !3807, !tbaa !1057
  %11 = lshr i32 %10, %9, !dbg !3808
  call void @llvm.dbg.value(metadata i32 %11, metadata !2786, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3801
  %12 = and i32 %11, 1, !dbg !3809
  %13 = xor i32 %12, 1, !dbg !3809
  %14 = shl nuw i32 %13, %9, !dbg !3810
  %15 = xor i32 %14, %10, !dbg !3811
  store i32 %15, ptr %7, align 4, !dbg !3811, !tbaa !1057
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3812
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3813
  ret ptr %16, !dbg !3814
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3815 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3817, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata ptr %0, metadata !3793, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i8 58, metadata !3794, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata ptr %0, metadata !3766, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i64 -1, metadata !3767, metadata !DIExpression()), !dbg !3821
  call void @llvm.dbg.value(metadata i8 58, metadata !3768, metadata !DIExpression()), !dbg !3821
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #39, !dbg !3823
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3769, metadata !DIExpression()), !dbg !3824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3825, !tbaa.struct !3774
  call void @llvm.dbg.value(metadata ptr %2, metadata !2779, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i8 58, metadata !2780, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i32 1, metadata !2781, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i8 58, metadata !2782, metadata !DIExpression()), !dbg !3826
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3828
  call void @llvm.dbg.value(metadata ptr %3, metadata !2783, metadata !DIExpression()), !dbg !3826
  call void @llvm.dbg.value(metadata i32 26, metadata !2785, metadata !DIExpression()), !dbg !3826
  %4 = load i32, ptr %3, align 4, !dbg !3829, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %4, metadata !2786, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3826
  %5 = or i32 %4, 67108864, !dbg !3830
  store i32 %5, ptr %3, align 4, !dbg !3830, !tbaa !1057
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3831
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #39, !dbg !3832
  ret ptr %6, !dbg !3833
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3834 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3836, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata i64 %1, metadata !3837, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.value(metadata ptr %0, metadata !3766, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i64 %1, metadata !3767, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata i8 58, metadata !3768, metadata !DIExpression()), !dbg !3839
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #39, !dbg !3841
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3769, metadata !DIExpression()), !dbg !3842
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3843, !tbaa.struct !3774
  call void @llvm.dbg.value(metadata ptr %3, metadata !2779, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i8 58, metadata !2780, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i32 1, metadata !2781, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i8 58, metadata !2782, metadata !DIExpression()), !dbg !3844
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3846
  call void @llvm.dbg.value(metadata ptr %4, metadata !2783, metadata !DIExpression()), !dbg !3844
  call void @llvm.dbg.value(metadata i32 26, metadata !2785, metadata !DIExpression()), !dbg !3844
  %5 = load i32, ptr %4, align 4, !dbg !3847, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %5, metadata !2786, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3844
  %6 = or i32 %5, 67108864, !dbg !3848
  store i32 %6, ptr %4, align 4, !dbg !3848, !tbaa !1057
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3849
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #39, !dbg !3850
  ret ptr %7, !dbg !3851
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3852 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3673, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3858
  call void @llvm.dbg.value(metadata i32 %0, metadata !3854, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata i32 %1, metadata !3855, metadata !DIExpression()), !dbg !3860
  call void @llvm.dbg.value(metadata ptr %2, metadata !3856, metadata !DIExpression()), !dbg !3860
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3861
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3857, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i32 %1, metadata !3668, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.value(metadata i32 0, metadata !3673, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3863
  %5 = icmp eq i32 %1, 10, !dbg !3864
  br i1 %5, label %6, label %7, !dbg !3865

6:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3866, !noalias !3867
  unreachable, !dbg !3866

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3673, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3863
  store i32 %1, ptr %4, align 8, !dbg !3870, !tbaa.struct !3774
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3870
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3870
  call void @llvm.dbg.value(metadata ptr %4, metadata !2779, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata i8 58, metadata !2780, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata i32 1, metadata !2781, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata i8 58, metadata !2782, metadata !DIExpression()), !dbg !3871
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3873
  call void @llvm.dbg.value(metadata ptr %9, metadata !2783, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.value(metadata i32 26, metadata !2785, metadata !DIExpression()), !dbg !3871
  %10 = load i32, ptr %9, align 4, !dbg !3874, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %10, metadata !2786, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3871
  %11 = or i32 %10, 67108864, !dbg !3875
  store i32 %11, ptr %9, align 4, !dbg !3875, !tbaa !1057
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3876
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3877
  ret ptr %12, !dbg !3878
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3879 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3883, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata ptr %1, metadata !3884, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata ptr %2, metadata !3885, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata ptr %3, metadata !3886, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.value(metadata i32 %0, metadata !3888, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata ptr %1, metadata !3893, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata ptr %2, metadata !3894, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata ptr %3, metadata !3895, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata i64 -1, metadata !3896, metadata !DIExpression()), !dbg !3898
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3900
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3897, metadata !DIExpression()), !dbg !3901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3902, !tbaa.struct !3774
  call void @llvm.dbg.value(metadata ptr %5, metadata !2819, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata ptr %1, metadata !2820, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata ptr %2, metadata !2821, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.value(metadata ptr %5, metadata !2819, metadata !DIExpression()), !dbg !3903
  store i32 10, ptr %5, align 8, !dbg !3905, !tbaa !2762
  %6 = icmp ne ptr %1, null, !dbg !3906
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3907
  br i1 %8, label %10, label %9, !dbg !3907

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3908
  unreachable, !dbg !3908

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3909
  store ptr %1, ptr %11, align 8, !dbg !3910, !tbaa !2833
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3911
  store ptr %2, ptr %12, align 8, !dbg !3912, !tbaa !2836
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3913
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3914
  ret ptr %13, !dbg !3915
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3889 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3888, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata ptr %1, metadata !3893, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata ptr %2, metadata !3894, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata ptr %3, metadata !3895, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.value(metadata i64 %4, metadata !3896, metadata !DIExpression()), !dbg !3916
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #39, !dbg !3917
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3897, metadata !DIExpression()), !dbg !3918
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3919, !tbaa.struct !3774
  call void @llvm.dbg.value(metadata ptr %6, metadata !2819, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata ptr %1, metadata !2820, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata ptr %2, metadata !2821, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata ptr %6, metadata !2819, metadata !DIExpression()), !dbg !3920
  store i32 10, ptr %6, align 8, !dbg !3922, !tbaa !2762
  %7 = icmp ne ptr %1, null, !dbg !3923
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3924
  br i1 %9, label %11, label %10, !dbg !3924

10:                                               ; preds = %5
  tail call void @abort() #41, !dbg !3925
  unreachable, !dbg !3925

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3926
  store ptr %1, ptr %12, align 8, !dbg !3927, !tbaa !2833
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3928
  store ptr %2, ptr %13, align 8, !dbg !3929, !tbaa !2836
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3930
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #39, !dbg !3931
  ret ptr %14, !dbg !3932
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3933 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3937, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata ptr %1, metadata !3938, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata ptr %2, metadata !3939, metadata !DIExpression()), !dbg !3940
  call void @llvm.dbg.value(metadata i32 0, metadata !3883, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata ptr %0, metadata !3884, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata ptr %1, metadata !3885, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata ptr %2, metadata !3886, metadata !DIExpression()), !dbg !3941
  call void @llvm.dbg.value(metadata i32 0, metadata !3888, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata ptr %0, metadata !3893, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata ptr %1, metadata !3894, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata ptr %2, metadata !3895, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata i64 -1, metadata !3896, metadata !DIExpression()), !dbg !3943
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #39, !dbg !3945
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3897, metadata !DIExpression()), !dbg !3946
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3947, !tbaa.struct !3774
  call void @llvm.dbg.value(metadata ptr %4, metadata !2819, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata ptr %0, metadata !2820, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata ptr %1, metadata !2821, metadata !DIExpression()), !dbg !3948
  call void @llvm.dbg.value(metadata ptr %4, metadata !2819, metadata !DIExpression()), !dbg !3948
  store i32 10, ptr %4, align 8, !dbg !3950, !tbaa !2762
  %5 = icmp ne ptr %0, null, !dbg !3951
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3952
  br i1 %7, label %9, label %8, !dbg !3952

8:                                                ; preds = %3
  tail call void @abort() #41, !dbg !3953
  unreachable, !dbg !3953

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3954
  store ptr %0, ptr %10, align 8, !dbg !3955, !tbaa !2833
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3956
  store ptr %1, ptr %11, align 8, !dbg !3957, !tbaa !2836
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3958
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #39, !dbg !3959
  ret ptr %12, !dbg !3960
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3961 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !3965, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata ptr %1, metadata !3966, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata ptr %2, metadata !3967, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i64 %3, metadata !3968, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i32 0, metadata !3888, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata ptr %0, metadata !3893, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata ptr %1, metadata !3894, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata ptr %2, metadata !3895, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.value(metadata i64 %3, metadata !3896, metadata !DIExpression()), !dbg !3970
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #39, !dbg !3972
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3897, metadata !DIExpression()), !dbg !3973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3974, !tbaa.struct !3774
  call void @llvm.dbg.value(metadata ptr %5, metadata !2819, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata ptr %0, metadata !2820, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata ptr %1, metadata !2821, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata ptr %5, metadata !2819, metadata !DIExpression()), !dbg !3975
  store i32 10, ptr %5, align 8, !dbg !3977, !tbaa !2762
  %6 = icmp ne ptr %0, null, !dbg !3978
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !3979
  br i1 %8, label %10, label %9, !dbg !3979

9:                                                ; preds = %4
  tail call void @abort() #41, !dbg !3980
  unreachable, !dbg !3980

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3981
  store ptr %0, ptr %11, align 8, !dbg !3982, !tbaa !2833
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3983
  store ptr %1, ptr %12, align 8, !dbg !3984, !tbaa !2836
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3985
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #39, !dbg !3986
  ret ptr %13, !dbg !3987
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3988 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3992, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata ptr %1, metadata !3993, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i64 %2, metadata !3994, metadata !DIExpression()), !dbg !3995
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !3996
  ret ptr %4, !dbg !3997
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3998 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4002, metadata !DIExpression()), !dbg !4004
  call void @llvm.dbg.value(metadata i64 %1, metadata !4003, metadata !DIExpression()), !dbg !4004
  call void @llvm.dbg.value(metadata i32 0, metadata !3992, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata ptr %0, metadata !3993, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.value(metadata i64 %1, metadata !3994, metadata !DIExpression()), !dbg !4005
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4007
  ret ptr %3, !dbg !4008
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4009 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4013, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata ptr %1, metadata !4014, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.value(metadata i32 %0, metadata !3992, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata ptr %1, metadata !3993, metadata !DIExpression()), !dbg !4016
  call void @llvm.dbg.value(metadata i64 -1, metadata !3994, metadata !DIExpression()), !dbg !4016
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4018
  ret ptr %3, !dbg !4019
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4020 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4022, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i32 0, metadata !4013, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata ptr %0, metadata !4014, metadata !DIExpression()), !dbg !4024
  call void @llvm.dbg.value(metadata i32 0, metadata !3992, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata ptr %0, metadata !3993, metadata !DIExpression()), !dbg !4026
  call void @llvm.dbg.value(metadata i64 -1, metadata !3994, metadata !DIExpression()), !dbg !4026
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4028
  ret ptr %2, !dbg !4029
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @strintcmp(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #24 !dbg !4030 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4032, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr %1, metadata !4033, metadata !DIExpression()), !dbg !4034
  call void @llvm.dbg.value(metadata ptr %0, metadata !4035, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %1, metadata !4041, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i32 256, metadata !4042, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i32 256, metadata !4043, metadata !DIExpression()), !dbg !4049
  %3 = load i8, ptr %0, align 1, !dbg !4051, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %3, metadata !4044, metadata !DIExpression()), !dbg !4049
  %4 = load i8, ptr %1, align 1, !dbg !4052, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %4, metadata !4045, metadata !DIExpression()), !dbg !4049
  %5 = icmp eq i8 %3, 45, !dbg !4053
  br i1 %5, label %6, label %95, !dbg !4055

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %2 ]
  call void @llvm.dbg.value(metadata ptr %7, metadata !4035, metadata !DIExpression()), !dbg !4049
  %8 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !4056
  call void @llvm.dbg.value(metadata ptr %8, metadata !4035, metadata !DIExpression()), !dbg !4049
  %9 = load i8, ptr %8, align 1, !dbg !4058, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %9, metadata !4044, metadata !DIExpression()), !dbg !4049
  %10 = icmp eq i8 %9, 48, !dbg !4059
  br i1 %10, label %6, label %11, !dbg !4060, !llvm.loop !4061

11:                                               ; preds = %6
  %12 = icmp eq i8 %4, 45, !dbg !4064
  br i1 %12, label %30, label %13, !dbg !4066

13:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i8 %9, metadata !4044, metadata !DIExpression()), !dbg !4049
  %14 = zext i8 %9 to i32, !dbg !4067
  call void @llvm.dbg.value(metadata i32 %14, metadata !4070, metadata !DIExpression()), !dbg !4073
  %15 = add nsw i32 %14, -48, !dbg !4075
  %16 = icmp ult i32 %15, 10, !dbg !4075
  br i1 %16, label %197, label %17, !dbg !4076

17:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i8 %4, metadata !4045, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %1, metadata !4041, metadata !DIExpression()), !dbg !4049
  %18 = icmp eq i8 %4, 48, !dbg !4077
  br i1 %18, label %19, label %24, !dbg !4078

19:                                               ; preds = %17, %19
  %20 = phi ptr [ %21, %19 ], [ %1, %17 ]
  call void @llvm.dbg.value(metadata ptr %20, metadata !4041, metadata !DIExpression()), !dbg !4049
  %21 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !4079
  call void @llvm.dbg.value(metadata ptr %21, metadata !4041, metadata !DIExpression()), !dbg !4049
  %22 = load i8, ptr %21, align 1, !dbg !4080, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %22, metadata !4045, metadata !DIExpression()), !dbg !4049
  %23 = icmp eq i8 %22, 48, !dbg !4077
  br i1 %23, label %19, label %24, !dbg !4078, !llvm.loop !4081

24:                                               ; preds = %19, %17
  %25 = phi i8 [ %4, %17 ], [ %22, %19 ], !dbg !4049
  call void @llvm.dbg.value(metadata i8 %25, metadata !4045, metadata !DIExpression()), !dbg !4049
  %26 = zext i8 %25 to i32, !dbg !4083
  call void @llvm.dbg.value(metadata i32 %26, metadata !4070, metadata !DIExpression()), !dbg !4084
  %27 = add nsw i32 %26, -48, !dbg !4086
  %28 = icmp ult i32 %27, 10, !dbg !4086
  %29 = sext i1 %28 to i32, !dbg !4087
  br label %197, !dbg !4088

30:                                               ; preds = %11, %30
  %31 = phi ptr [ %32, %30 ], [ %1, %11 ]
  call void @llvm.dbg.value(metadata ptr %31, metadata !4041, metadata !DIExpression()), !dbg !4049
  %32 = getelementptr inbounds i8, ptr %31, i64 1, !dbg !4089
  call void @llvm.dbg.value(metadata ptr %32, metadata !4041, metadata !DIExpression()), !dbg !4049
  %33 = load i8, ptr %32, align 1, !dbg !4090, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %33, metadata !4045, metadata !DIExpression()), !dbg !4049
  %34 = icmp eq i8 %33, 48, !dbg !4091
  br i1 %34, label %30, label %35, !dbg !4092, !llvm.loop !4093

35:                                               ; preds = %30
  call void @llvm.dbg.value(metadata i8 %33, metadata !4045, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i8 %9, metadata !4044, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %8, metadata !4035, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %32, metadata !4041, metadata !DIExpression()), !dbg !4049
  %36 = zext i8 %9 to i32, !dbg !4096
  %37 = icmp eq i8 %33, %9, !dbg !4097
  %38 = add nsw i32 %36, -48
  %39 = icmp ult i32 %38, 10
  %40 = select i1 %37, i1 %39, i1 false, !dbg !4098
  call void @llvm.dbg.value(metadata i32 %36, metadata !4070, metadata !DIExpression()), !dbg !4099
  br i1 %40, label %41, label %55, !dbg !4098

41:                                               ; preds = %35, %41
  %42 = phi ptr [ %44, %41 ], [ %8, %35 ]
  %43 = phi ptr [ %46, %41 ], [ %32, %35 ]
  call void @llvm.dbg.value(metadata ptr %43, metadata !4041, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %42, metadata !4035, metadata !DIExpression()), !dbg !4049
  %44 = getelementptr inbounds i8, ptr %42, i64 1, !dbg !4101
  call void @llvm.dbg.value(metadata ptr %44, metadata !4035, metadata !DIExpression()), !dbg !4049
  %45 = load i8, ptr %44, align 1, !dbg !4103, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %45, metadata !4044, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %43, metadata !4041, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4049
  call void @llvm.dbg.value(metadata i8 poison, metadata !4045, metadata !DIExpression()), !dbg !4049
  %46 = getelementptr inbounds i8, ptr %43, i64 1, !dbg !4104
  call void @llvm.dbg.value(metadata ptr %46, metadata !4041, metadata !DIExpression()), !dbg !4049
  %47 = load i8, ptr %46, align 1, !dbg !4105, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %47, metadata !4045, metadata !DIExpression()), !dbg !4049
  %48 = zext i8 %45 to i32, !dbg !4096
  %49 = icmp eq i8 %47, %45, !dbg !4097
  %50 = add nsw i32 %48, -48
  %51 = icmp ult i32 %50, 10
  %52 = select i1 %49, i1 %51, i1 false, !dbg !4098
  call void @llvm.dbg.value(metadata i32 %48, metadata !4070, metadata !DIExpression()), !dbg !4099
  br i1 %52, label %41, label %53, !dbg !4098, !llvm.loop !4106

53:                                               ; preds = %41
  %54 = zext i8 %45 to i32, !dbg !4096
  br label %55, !dbg !4109

55:                                               ; preds = %53, %35
  %56 = phi i32 [ %38, %35 ], [ %50, %53 ], !dbg !4110
  %57 = phi ptr [ %32, %35 ], [ %46, %53 ], !dbg !4114
  %58 = phi ptr [ %8, %35 ], [ %44, %53 ], !dbg !4114
  %59 = phi i8 [ %33, %35 ], [ %47, %53 ], !dbg !4114
  %60 = phi i32 [ %36, %35 ], [ %54, %53 ], !dbg !4096
  %61 = zext i8 %59 to i32, !dbg !4109
  %62 = sub nsw i32 %61, %60, !dbg !4115
  call void @llvm.dbg.value(metadata i32 %62, metadata !4046, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i64 0, metadata !4047, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i8 poison, metadata !4044, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %58, metadata !4035, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i32 poison, metadata !4070, metadata !DIExpression()), !dbg !4116
  %63 = icmp ult i32 %56, 10, !dbg !4110
  br i1 %63, label %68, label %64, !dbg !4117

64:                                               ; preds = %68, %55
  %65 = phi i64 [ 0, %55 ], [ %73, %68 ], !dbg !4118
  call void @llvm.dbg.value(metadata i64 0, metadata !4048, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i8 %59, metadata !4045, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %57, metadata !4041, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i32 %61, metadata !4070, metadata !DIExpression()), !dbg !4119
  %66 = add nsw i32 %61, -48, !dbg !4123
  %67 = icmp ult i32 %66, 10, !dbg !4123
  br i1 %67, label %77, label %86, !dbg !4124

68:                                               ; preds = %55, %68
  %69 = phi i64 [ %73, %68 ], [ 0, %55 ]
  %70 = phi ptr [ %71, %68 ], [ %58, %55 ]
  call void @llvm.dbg.value(metadata i64 %69, metadata !4047, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %70, metadata !4035, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4049
  call void @llvm.dbg.value(metadata i8 poison, metadata !4044, metadata !DIExpression()), !dbg !4049
  %71 = getelementptr inbounds i8, ptr %70, i64 1, !dbg !4125
  call void @llvm.dbg.value(metadata ptr %71, metadata !4035, metadata !DIExpression()), !dbg !4049
  %72 = load i8, ptr %71, align 1, !dbg !4126, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %72, metadata !4044, metadata !DIExpression()), !dbg !4049
  %73 = add i64 %69, 1, !dbg !4127
  call void @llvm.dbg.value(metadata i64 %73, metadata !4047, metadata !DIExpression()), !dbg !4049
  %74 = zext i8 %72 to i32, !dbg !4128
  call void @llvm.dbg.value(metadata i32 %74, metadata !4070, metadata !DIExpression()), !dbg !4116
  %75 = add nsw i32 %74, -48, !dbg !4110
  %76 = icmp ult i32 %75, 10, !dbg !4110
  br i1 %76, label %68, label %64, !dbg !4117, !llvm.loop !4129

77:                                               ; preds = %64, %77
  %78 = phi i64 [ %82, %77 ], [ 0, %64 ]
  %79 = phi ptr [ %80, %77 ], [ %57, %64 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !4048, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %79, metadata !4041, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4049
  call void @llvm.dbg.value(metadata i8 poison, metadata !4045, metadata !DIExpression()), !dbg !4049
  %80 = getelementptr inbounds i8, ptr %79, i64 1, !dbg !4131
  call void @llvm.dbg.value(metadata ptr %80, metadata !4041, metadata !DIExpression()), !dbg !4049
  %81 = load i8, ptr %80, align 1, !dbg !4132, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %81, metadata !4045, metadata !DIExpression()), !dbg !4049
  %82 = add i64 %78, 1, !dbg !4133
  call void @llvm.dbg.value(metadata i64 %82, metadata !4048, metadata !DIExpression()), !dbg !4049
  %83 = zext i8 %81 to i32, !dbg !4134
  call void @llvm.dbg.value(metadata i32 %83, metadata !4070, metadata !DIExpression()), !dbg !4119
  %84 = add nsw i32 %83, -48, !dbg !4123
  %85 = icmp ult i32 %84, 10, !dbg !4123
  br i1 %85, label %77, label %86, !dbg !4124, !llvm.loop !4135

86:                                               ; preds = %77, %64
  %87 = phi i64 [ 0, %64 ], [ %82, %77 ], !dbg !4137
  %88 = icmp eq i64 %65, %87, !dbg !4138
  br i1 %88, label %92, label %89, !dbg !4140

89:                                               ; preds = %86
  %90 = icmp ult i64 %65, %87, !dbg !4141
  %91 = select i1 %90, i32 1, i32 -1, !dbg !4142
  br label %197, !dbg !4143

92:                                               ; preds = %86
  %93 = icmp eq i64 %65, 0, !dbg !4144
  %94 = select i1 %93, i32 0, i32 %62, !dbg !4114
  br label %197, !dbg !4114

95:                                               ; preds = %2
  %96 = icmp eq i8 %4, 45, !dbg !4146
  br i1 %96, label %99, label %97, !dbg !4148

97:                                               ; preds = %95
  call void @llvm.dbg.value(metadata i8 %3, metadata !4044, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %0, metadata !4035, metadata !DIExpression()), !dbg !4049
  %98 = icmp eq i8 %3, 48, !dbg !4149
  br i1 %98, label %125, label %121, !dbg !4151

99:                                               ; preds = %95, %99
  %100 = phi ptr [ %101, %99 ], [ %1, %95 ]
  call void @llvm.dbg.value(metadata ptr %100, metadata !4041, metadata !DIExpression()), !dbg !4049
  %101 = getelementptr inbounds i8, ptr %100, i64 1, !dbg !4152
  call void @llvm.dbg.value(metadata ptr %101, metadata !4041, metadata !DIExpression()), !dbg !4049
  %102 = load i8, ptr %101, align 1, !dbg !4154, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %102, metadata !4045, metadata !DIExpression()), !dbg !4049
  %103 = icmp eq i8 %102, 48, !dbg !4155
  br i1 %103, label %99, label %104, !dbg !4156, !llvm.loop !4157

104:                                              ; preds = %99
  call void @llvm.dbg.value(metadata i8 %102, metadata !4045, metadata !DIExpression()), !dbg !4049
  %105 = zext i8 %102 to i32, !dbg !4160
  call void @llvm.dbg.value(metadata i32 %105, metadata !4070, metadata !DIExpression()), !dbg !4162
  %106 = add nsw i32 %105, -48, !dbg !4164
  %107 = icmp ult i32 %106, 10, !dbg !4164
  br i1 %107, label %197, label %108, !dbg !4165

108:                                              ; preds = %104
  call void @llvm.dbg.value(metadata i8 %3, metadata !4044, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %0, metadata !4035, metadata !DIExpression()), !dbg !4049
  %109 = icmp eq i8 %3, 48, !dbg !4166
  br i1 %109, label %110, label %115, !dbg !4167

110:                                              ; preds = %108, %110
  %111 = phi ptr [ %112, %110 ], [ %0, %108 ]
  call void @llvm.dbg.value(metadata ptr %111, metadata !4035, metadata !DIExpression()), !dbg !4049
  %112 = getelementptr inbounds i8, ptr %111, i64 1, !dbg !4168
  call void @llvm.dbg.value(metadata ptr %112, metadata !4035, metadata !DIExpression()), !dbg !4049
  %113 = load i8, ptr %112, align 1, !dbg !4169, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %113, metadata !4044, metadata !DIExpression()), !dbg !4049
  %114 = icmp eq i8 %113, 48, !dbg !4166
  br i1 %114, label %110, label %115, !dbg !4167, !llvm.loop !4170

115:                                              ; preds = %110, %108
  %116 = phi i8 [ %3, %108 ], [ %113, %110 ], !dbg !4049
  call void @llvm.dbg.value(metadata i8 %116, metadata !4044, metadata !DIExpression()), !dbg !4049
  %117 = zext i8 %116 to i32, !dbg !4172
  call void @llvm.dbg.value(metadata i32 %117, metadata !4070, metadata !DIExpression()), !dbg !4173
  %118 = add nsw i32 %117, -48, !dbg !4175
  %119 = icmp ult i32 %118, 10, !dbg !4175
  %120 = zext i1 %119 to i32, !dbg !4176
  br label %197, !dbg !4177

121:                                              ; preds = %125, %97
  %122 = phi ptr [ %0, %97 ], [ %127, %125 ]
  %123 = phi i8 [ %3, %97 ], [ %128, %125 ], !dbg !4049
  call void @llvm.dbg.value(metadata i8 %4, metadata !4045, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %1, metadata !4041, metadata !DIExpression()), !dbg !4049
  %124 = icmp eq i8 %4, 48, !dbg !4178
  br i1 %124, label %138, label %130, !dbg !4179

125:                                              ; preds = %97, %125
  %126 = phi ptr [ %127, %125 ], [ %0, %97 ]
  call void @llvm.dbg.value(metadata ptr %126, metadata !4035, metadata !DIExpression()), !dbg !4049
  %127 = getelementptr inbounds i8, ptr %126, i64 1, !dbg !4180
  call void @llvm.dbg.value(metadata ptr %127, metadata !4035, metadata !DIExpression()), !dbg !4049
  %128 = load i8, ptr %127, align 1, !dbg !4181, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %128, metadata !4044, metadata !DIExpression()), !dbg !4049
  %129 = icmp eq i8 %128, 48, !dbg !4149
  br i1 %129, label %125, label %121, !dbg !4151, !llvm.loop !4182

130:                                              ; preds = %138, %121
  %131 = phi ptr [ %1, %121 ], [ %140, %138 ]
  %132 = phi i8 [ %4, %121 ], [ %141, %138 ], !dbg !4049
  call void @llvm.dbg.value(metadata i8 %132, metadata !4045, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i8 %123, metadata !4044, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %122, metadata !4035, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %131, metadata !4041, metadata !DIExpression()), !dbg !4049
  %133 = zext i8 %123 to i32, !dbg !4184
  %134 = icmp eq i8 %123, %132, !dbg !4185
  %135 = add nsw i32 %133, -48
  %136 = icmp ult i32 %135, 10
  %137 = select i1 %134, i1 %136, i1 false, !dbg !4186
  call void @llvm.dbg.value(metadata i32 %133, metadata !4070, metadata !DIExpression()), !dbg !4187
  br i1 %137, label %143, label %157, !dbg !4186

138:                                              ; preds = %121, %138
  %139 = phi ptr [ %140, %138 ], [ %1, %121 ]
  call void @llvm.dbg.value(metadata ptr %139, metadata !4041, metadata !DIExpression()), !dbg !4049
  %140 = getelementptr inbounds i8, ptr %139, i64 1, !dbg !4189
  call void @llvm.dbg.value(metadata ptr %140, metadata !4041, metadata !DIExpression()), !dbg !4049
  %141 = load i8, ptr %140, align 1, !dbg !4190, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %141, metadata !4045, metadata !DIExpression()), !dbg !4049
  %142 = icmp eq i8 %141, 48, !dbg !4178
  br i1 %142, label %138, label %130, !dbg !4179, !llvm.loop !4191

143:                                              ; preds = %130, %143
  %144 = phi ptr [ %146, %143 ], [ %122, %130 ]
  %145 = phi ptr [ %148, %143 ], [ %131, %130 ]
  call void @llvm.dbg.value(metadata ptr %145, metadata !4041, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %144, metadata !4035, metadata !DIExpression()), !dbg !4049
  %146 = getelementptr inbounds i8, ptr %144, i64 1, !dbg !4193
  call void @llvm.dbg.value(metadata ptr %146, metadata !4035, metadata !DIExpression()), !dbg !4049
  %147 = load i8, ptr %146, align 1, !dbg !4195, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %147, metadata !4044, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %145, metadata !4041, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4049
  call void @llvm.dbg.value(metadata i8 poison, metadata !4045, metadata !DIExpression()), !dbg !4049
  %148 = getelementptr inbounds i8, ptr %145, i64 1, !dbg !4196
  call void @llvm.dbg.value(metadata ptr %148, metadata !4041, metadata !DIExpression()), !dbg !4049
  %149 = load i8, ptr %148, align 1, !dbg !4197, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %149, metadata !4045, metadata !DIExpression()), !dbg !4049
  %150 = zext i8 %147 to i32, !dbg !4184
  %151 = icmp eq i8 %147, %149, !dbg !4185
  %152 = add nsw i32 %150, -48
  %153 = icmp ult i32 %152, 10
  %154 = select i1 %151, i1 %153, i1 false, !dbg !4186
  call void @llvm.dbg.value(metadata i32 %150, metadata !4070, metadata !DIExpression()), !dbg !4187
  br i1 %154, label %143, label %155, !dbg !4186, !llvm.loop !4198

155:                                              ; preds = %143
  %156 = zext i8 %147 to i32, !dbg !4184
  br label %157, !dbg !4201

157:                                              ; preds = %155, %130
  %158 = phi i32 [ %135, %130 ], [ %152, %155 ], !dbg !4202
  %159 = phi ptr [ %131, %130 ], [ %148, %155 ]
  %160 = phi ptr [ %122, %130 ], [ %146, %155 ]
  %161 = phi i8 [ %132, %130 ], [ %149, %155 ], !dbg !4049
  %162 = phi i32 [ %133, %130 ], [ %156, %155 ], !dbg !4184
  %163 = zext i8 %161 to i32, !dbg !4201
  %164 = sub nsw i32 %162, %163, !dbg !4206
  call void @llvm.dbg.value(metadata i32 %164, metadata !4046, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i64 0, metadata !4047, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i8 poison, metadata !4044, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %160, metadata !4035, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i32 poison, metadata !4070, metadata !DIExpression()), !dbg !4207
  %165 = icmp ult i32 %158, 10, !dbg !4202
  br i1 %165, label %170, label %166, !dbg !4208

166:                                              ; preds = %170, %157
  %167 = phi i64 [ 0, %157 ], [ %175, %170 ], !dbg !4209
  call void @llvm.dbg.value(metadata i64 0, metadata !4048, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i8 %161, metadata !4045, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %159, metadata !4041, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i32 %163, metadata !4070, metadata !DIExpression()), !dbg !4210
  %168 = add nsw i32 %163, -48, !dbg !4214
  %169 = icmp ult i32 %168, 10, !dbg !4214
  br i1 %169, label %179, label %188, !dbg !4215

170:                                              ; preds = %157, %170
  %171 = phi i64 [ %175, %170 ], [ 0, %157 ]
  %172 = phi ptr [ %173, %170 ], [ %160, %157 ]
  call void @llvm.dbg.value(metadata i64 %171, metadata !4047, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %172, metadata !4035, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4049
  call void @llvm.dbg.value(metadata i8 poison, metadata !4044, metadata !DIExpression()), !dbg !4049
  %173 = getelementptr inbounds i8, ptr %172, i64 1, !dbg !4216
  call void @llvm.dbg.value(metadata ptr %173, metadata !4035, metadata !DIExpression()), !dbg !4049
  %174 = load i8, ptr %173, align 1, !dbg !4217, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %174, metadata !4044, metadata !DIExpression()), !dbg !4049
  %175 = add i64 %171, 1, !dbg !4218
  call void @llvm.dbg.value(metadata i64 %175, metadata !4047, metadata !DIExpression()), !dbg !4049
  %176 = zext i8 %174 to i32, !dbg !4219
  call void @llvm.dbg.value(metadata i32 %176, metadata !4070, metadata !DIExpression()), !dbg !4207
  %177 = add nsw i32 %176, -48, !dbg !4202
  %178 = icmp ult i32 %177, 10, !dbg !4202
  br i1 %178, label %170, label %166, !dbg !4208, !llvm.loop !4220

179:                                              ; preds = %166, %179
  %180 = phi i64 [ %184, %179 ], [ 0, %166 ]
  %181 = phi ptr [ %182, %179 ], [ %159, %166 ]
  call void @llvm.dbg.value(metadata i64 %180, metadata !4048, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %181, metadata !4041, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4049
  call void @llvm.dbg.value(metadata i8 poison, metadata !4045, metadata !DIExpression()), !dbg !4049
  %182 = getelementptr inbounds i8, ptr %181, i64 1, !dbg !4222
  call void @llvm.dbg.value(metadata ptr %182, metadata !4041, metadata !DIExpression()), !dbg !4049
  %183 = load i8, ptr %182, align 1, !dbg !4223, !tbaa !1066
  call void @llvm.dbg.value(metadata i8 %183, metadata !4045, metadata !DIExpression()), !dbg !4049
  %184 = add i64 %180, 1, !dbg !4224
  call void @llvm.dbg.value(metadata i64 %184, metadata !4048, metadata !DIExpression()), !dbg !4049
  %185 = zext i8 %183 to i32, !dbg !4225
  call void @llvm.dbg.value(metadata i32 %185, metadata !4070, metadata !DIExpression()), !dbg !4210
  %186 = add nsw i32 %185, -48, !dbg !4214
  %187 = icmp ult i32 %186, 10, !dbg !4214
  br i1 %187, label %179, label %188, !dbg !4215, !llvm.loop !4226

188:                                              ; preds = %179, %166
  %189 = phi i64 [ 0, %166 ], [ %184, %179 ], !dbg !4228
  %190 = icmp eq i64 %167, %189, !dbg !4229
  br i1 %190, label %194, label %191, !dbg !4231

191:                                              ; preds = %188
  %192 = icmp ult i64 %167, %189, !dbg !4232
  %193 = select i1 %192, i32 -1, i32 1, !dbg !4233
  br label %197, !dbg !4234

194:                                              ; preds = %188
  %195 = icmp eq i64 %167, 0, !dbg !4235
  %196 = select i1 %195, i32 0, i32 %164, !dbg !4237
  br label %197, !dbg !4237

197:                                              ; preds = %13, %24, %89, %92, %104, %115, %191, %194
  %198 = phi i32 [ %29, %24 ], [ %91, %89 ], [ %120, %115 ], [ %193, %191 ], [ -1, %13 ], [ %94, %92 ], [ 1, %104 ], [ %196, %194 ], !dbg !4238
  ret i32 %198, !dbg !4239
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4240 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4279, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata ptr %1, metadata !4280, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata ptr %2, metadata !4281, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata ptr %3, metadata !4282, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata ptr %4, metadata !4283, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i64 %5, metadata !4284, metadata !DIExpression()), !dbg !4285
  %7 = icmp eq ptr %1, null, !dbg !4286
  br i1 %7, label %10, label %8, !dbg !4288

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.140, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #39, !dbg !4289
  br label %12, !dbg !4289

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.141, ptr noundef %2, ptr noundef %3) #39, !dbg !4290
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.3.143, i32 noundef 5) #39, !dbg !4291
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #39, !dbg !4291
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.144, ptr noundef %0), !dbg !4292
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.5.145, i32 noundef 5) #39, !dbg !4293
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.146) #39, !dbg !4293
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.144, ptr noundef %0), !dbg !4294
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
  ], !dbg !4295

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.7.147, i32 noundef 5) #39, !dbg !4296
  %21 = load ptr, ptr %4, align 8, !dbg !4296, !tbaa !957
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #39, !dbg !4296
  br label %147, !dbg !4298

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.8.148, i32 noundef 5) #39, !dbg !4299
  %25 = load ptr, ptr %4, align 8, !dbg !4299, !tbaa !957
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4299
  %27 = load ptr, ptr %26, align 8, !dbg !4299, !tbaa !957
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #39, !dbg !4299
  br label %147, !dbg !4300

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.9.149, i32 noundef 5) #39, !dbg !4301
  %31 = load ptr, ptr %4, align 8, !dbg !4301, !tbaa !957
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4301
  %33 = load ptr, ptr %32, align 8, !dbg !4301, !tbaa !957
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4301
  %35 = load ptr, ptr %34, align 8, !dbg !4301, !tbaa !957
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #39, !dbg !4301
  br label %147, !dbg !4302

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.10.150, i32 noundef 5) #39, !dbg !4303
  %39 = load ptr, ptr %4, align 8, !dbg !4303, !tbaa !957
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4303
  %41 = load ptr, ptr %40, align 8, !dbg !4303, !tbaa !957
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4303
  %43 = load ptr, ptr %42, align 8, !dbg !4303, !tbaa !957
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4303
  %45 = load ptr, ptr %44, align 8, !dbg !4303, !tbaa !957
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #39, !dbg !4303
  br label %147, !dbg !4304

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.11.151, i32 noundef 5) #39, !dbg !4305
  %49 = load ptr, ptr %4, align 8, !dbg !4305, !tbaa !957
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4305
  %51 = load ptr, ptr %50, align 8, !dbg !4305, !tbaa !957
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4305
  %53 = load ptr, ptr %52, align 8, !dbg !4305, !tbaa !957
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4305
  %55 = load ptr, ptr %54, align 8, !dbg !4305, !tbaa !957
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4305
  %57 = load ptr, ptr %56, align 8, !dbg !4305, !tbaa !957
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #39, !dbg !4305
  br label %147, !dbg !4306

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.12.152, i32 noundef 5) #39, !dbg !4307
  %61 = load ptr, ptr %4, align 8, !dbg !4307, !tbaa !957
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4307
  %63 = load ptr, ptr %62, align 8, !dbg !4307, !tbaa !957
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4307
  %65 = load ptr, ptr %64, align 8, !dbg !4307, !tbaa !957
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4307
  %67 = load ptr, ptr %66, align 8, !dbg !4307, !tbaa !957
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4307
  %69 = load ptr, ptr %68, align 8, !dbg !4307, !tbaa !957
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4307
  %71 = load ptr, ptr %70, align 8, !dbg !4307, !tbaa !957
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #39, !dbg !4307
  br label %147, !dbg !4308

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.13.153, i32 noundef 5) #39, !dbg !4309
  %75 = load ptr, ptr %4, align 8, !dbg !4309, !tbaa !957
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4309
  %77 = load ptr, ptr %76, align 8, !dbg !4309, !tbaa !957
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4309
  %79 = load ptr, ptr %78, align 8, !dbg !4309, !tbaa !957
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4309
  %81 = load ptr, ptr %80, align 8, !dbg !4309, !tbaa !957
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4309
  %83 = load ptr, ptr %82, align 8, !dbg !4309, !tbaa !957
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4309
  %85 = load ptr, ptr %84, align 8, !dbg !4309, !tbaa !957
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4309
  %87 = load ptr, ptr %86, align 8, !dbg !4309, !tbaa !957
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #39, !dbg !4309
  br label %147, !dbg !4310

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.14.154, i32 noundef 5) #39, !dbg !4311
  %91 = load ptr, ptr %4, align 8, !dbg !4311, !tbaa !957
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4311
  %93 = load ptr, ptr %92, align 8, !dbg !4311, !tbaa !957
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4311
  %95 = load ptr, ptr %94, align 8, !dbg !4311, !tbaa !957
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4311
  %97 = load ptr, ptr %96, align 8, !dbg !4311, !tbaa !957
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4311
  %99 = load ptr, ptr %98, align 8, !dbg !4311, !tbaa !957
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4311
  %101 = load ptr, ptr %100, align 8, !dbg !4311, !tbaa !957
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4311
  %103 = load ptr, ptr %102, align 8, !dbg !4311, !tbaa !957
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4311
  %105 = load ptr, ptr %104, align 8, !dbg !4311, !tbaa !957
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #39, !dbg !4311
  br label %147, !dbg !4312

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.15.155, i32 noundef 5) #39, !dbg !4313
  %109 = load ptr, ptr %4, align 8, !dbg !4313, !tbaa !957
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4313
  %111 = load ptr, ptr %110, align 8, !dbg !4313, !tbaa !957
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4313
  %113 = load ptr, ptr %112, align 8, !dbg !4313, !tbaa !957
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4313
  %115 = load ptr, ptr %114, align 8, !dbg !4313, !tbaa !957
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4313
  %117 = load ptr, ptr %116, align 8, !dbg !4313, !tbaa !957
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4313
  %119 = load ptr, ptr %118, align 8, !dbg !4313, !tbaa !957
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4313
  %121 = load ptr, ptr %120, align 8, !dbg !4313, !tbaa !957
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4313
  %123 = load ptr, ptr %122, align 8, !dbg !4313, !tbaa !957
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4313
  %125 = load ptr, ptr %124, align 8, !dbg !4313, !tbaa !957
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #39, !dbg !4313
  br label %147, !dbg !4314

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.16.156, i32 noundef 5) #39, !dbg !4315
  %129 = load ptr, ptr %4, align 8, !dbg !4315, !tbaa !957
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4315
  %131 = load ptr, ptr %130, align 8, !dbg !4315, !tbaa !957
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4315
  %133 = load ptr, ptr %132, align 8, !dbg !4315, !tbaa !957
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4315
  %135 = load ptr, ptr %134, align 8, !dbg !4315, !tbaa !957
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4315
  %137 = load ptr, ptr %136, align 8, !dbg !4315, !tbaa !957
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4315
  %139 = load ptr, ptr %138, align 8, !dbg !4315, !tbaa !957
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4315
  %141 = load ptr, ptr %140, align 8, !dbg !4315, !tbaa !957
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4315
  %143 = load ptr, ptr %142, align 8, !dbg !4315, !tbaa !957
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4315
  %145 = load ptr, ptr %144, align 8, !dbg !4315, !tbaa !957
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #39, !dbg !4315
  br label %147, !dbg !4316

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4317
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4318 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4322, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata ptr %1, metadata !4323, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata ptr %2, metadata !4324, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata ptr %3, metadata !4325, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata ptr %4, metadata !4326, metadata !DIExpression()), !dbg !4328
  call void @llvm.dbg.value(metadata i64 0, metadata !4327, metadata !DIExpression()), !dbg !4328
  br label %6, !dbg !4329

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4331
  call void @llvm.dbg.value(metadata i64 %7, metadata !4327, metadata !DIExpression()), !dbg !4328
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4332
  %9 = load ptr, ptr %8, align 8, !dbg !4332, !tbaa !957
  %10 = icmp eq ptr %9, null, !dbg !4334
  %11 = add i64 %7, 1, !dbg !4335
  call void @llvm.dbg.value(metadata i64 %11, metadata !4327, metadata !DIExpression()), !dbg !4328
  br i1 %10, label %12, label %6, !dbg !4334, !llvm.loop !4336

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4338
  ret void, !dbg !4339
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4340 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4355, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata ptr %1, metadata !4356, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata ptr %2, metadata !4357, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata ptr %3, metadata !4358, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4359, metadata !DIExpression()), !dbg !4364
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #39, !dbg !4365
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4361, metadata !DIExpression()), !dbg !4366
  call void @llvm.dbg.value(metadata i64 0, metadata !4360, metadata !DIExpression()), !dbg !4363
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4360, metadata !DIExpression()), !dbg !4363
  %10 = icmp sgt i32 %9, -1, !dbg !4367
  br i1 %10, label %18, label %11, !dbg !4367

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4367
  store i32 %12, ptr %7, align 8, !dbg !4367
  %13 = icmp ult i32 %9, -7, !dbg !4367
  br i1 %13, label %14, label %18, !dbg !4367

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4367
  %16 = sext i32 %9 to i64, !dbg !4367
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4367
  br label %22, !dbg !4367

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4367
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4367
  store ptr %21, ptr %4, align 8, !dbg !4367
  br label %22, !dbg !4367

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4367
  %25 = load ptr, ptr %24, align 8, !dbg !4367
  store ptr %25, ptr %6, align 8, !dbg !4370, !tbaa !957
  %26 = icmp eq ptr %25, null, !dbg !4371
  br i1 %26, label %197, label %27, !dbg !4372

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !4360, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i64 1, metadata !4360, metadata !DIExpression()), !dbg !4363
  %28 = icmp sgt i32 %23, -1, !dbg !4367
  br i1 %28, label %36, label %29, !dbg !4367

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4367
  store i32 %30, ptr %7, align 8, !dbg !4367
  %31 = icmp ult i32 %23, -7, !dbg !4367
  br i1 %31, label %32, label %36, !dbg !4367

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4367
  %34 = sext i32 %23 to i64, !dbg !4367
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4367
  br label %40, !dbg !4367

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4367
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4367
  store ptr %39, ptr %4, align 8, !dbg !4367
  br label %40, !dbg !4367

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4367
  %43 = load ptr, ptr %42, align 8, !dbg !4367
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4373
  store ptr %43, ptr %44, align 8, !dbg !4370, !tbaa !957
  %45 = icmp eq ptr %43, null, !dbg !4371
  br i1 %45, label %197, label %46, !dbg !4372

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4360, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i64 2, metadata !4360, metadata !DIExpression()), !dbg !4363
  %47 = icmp sgt i32 %41, -1, !dbg !4367
  br i1 %47, label %55, label %48, !dbg !4367

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4367
  store i32 %49, ptr %7, align 8, !dbg !4367
  %50 = icmp ult i32 %41, -7, !dbg !4367
  br i1 %50, label %51, label %55, !dbg !4367

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4367
  %53 = sext i32 %41 to i64, !dbg !4367
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4367
  br label %59, !dbg !4367

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4367
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4367
  store ptr %58, ptr %4, align 8, !dbg !4367
  br label %59, !dbg !4367

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4367
  %62 = load ptr, ptr %61, align 8, !dbg !4367
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4373
  store ptr %62, ptr %63, align 8, !dbg !4370, !tbaa !957
  %64 = icmp eq ptr %62, null, !dbg !4371
  br i1 %64, label %197, label %65, !dbg !4372

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !4360, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i64 3, metadata !4360, metadata !DIExpression()), !dbg !4363
  %66 = icmp sgt i32 %60, -1, !dbg !4367
  br i1 %66, label %74, label %67, !dbg !4367

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4367
  store i32 %68, ptr %7, align 8, !dbg !4367
  %69 = icmp ult i32 %60, -7, !dbg !4367
  br i1 %69, label %70, label %74, !dbg !4367

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4367
  %72 = sext i32 %60 to i64, !dbg !4367
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4367
  br label %78, !dbg !4367

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4367
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4367
  store ptr %77, ptr %4, align 8, !dbg !4367
  br label %78, !dbg !4367

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4367
  %81 = load ptr, ptr %80, align 8, !dbg !4367
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4373
  store ptr %81, ptr %82, align 8, !dbg !4370, !tbaa !957
  %83 = icmp eq ptr %81, null, !dbg !4371
  br i1 %83, label %197, label %84, !dbg !4372

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !4360, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i64 4, metadata !4360, metadata !DIExpression()), !dbg !4363
  %85 = icmp sgt i32 %79, -1, !dbg !4367
  br i1 %85, label %93, label %86, !dbg !4367

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4367
  store i32 %87, ptr %7, align 8, !dbg !4367
  %88 = icmp ult i32 %79, -7, !dbg !4367
  br i1 %88, label %89, label %93, !dbg !4367

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4367
  %91 = sext i32 %79 to i64, !dbg !4367
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4367
  br label %97, !dbg !4367

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4367
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4367
  store ptr %96, ptr %4, align 8, !dbg !4367
  br label %97, !dbg !4367

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4367
  %100 = load ptr, ptr %99, align 8, !dbg !4367
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4373
  store ptr %100, ptr %101, align 8, !dbg !4370, !tbaa !957
  %102 = icmp eq ptr %100, null, !dbg !4371
  br i1 %102, label %197, label %103, !dbg !4372

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !4360, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i64 5, metadata !4360, metadata !DIExpression()), !dbg !4363
  %104 = icmp sgt i32 %98, -1, !dbg !4367
  br i1 %104, label %112, label %105, !dbg !4367

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4367
  store i32 %106, ptr %7, align 8, !dbg !4367
  %107 = icmp ult i32 %98, -7, !dbg !4367
  br i1 %107, label %108, label %112, !dbg !4367

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4367
  %110 = sext i32 %98 to i64, !dbg !4367
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4367
  br label %116, !dbg !4367

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4367
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4367
  store ptr %115, ptr %4, align 8, !dbg !4367
  br label %116, !dbg !4367

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4367
  %119 = load ptr, ptr %118, align 8, !dbg !4367
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4373
  store ptr %119, ptr %120, align 8, !dbg !4370, !tbaa !957
  %121 = icmp eq ptr %119, null, !dbg !4371
  br i1 %121, label %197, label %122, !dbg !4372

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !4360, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i64 6, metadata !4360, metadata !DIExpression()), !dbg !4363
  %123 = icmp sgt i32 %117, -1, !dbg !4367
  br i1 %123, label %131, label %124, !dbg !4367

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4367
  store i32 %125, ptr %7, align 8, !dbg !4367
  %126 = icmp ult i32 %117, -7, !dbg !4367
  br i1 %126, label %127, label %131, !dbg !4367

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4367
  %129 = sext i32 %117 to i64, !dbg !4367
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4367
  br label %135, !dbg !4367

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4367
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4367
  store ptr %134, ptr %4, align 8, !dbg !4367
  br label %135, !dbg !4367

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4367
  %138 = load ptr, ptr %137, align 8, !dbg !4367
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4373
  store ptr %138, ptr %139, align 8, !dbg !4370, !tbaa !957
  %140 = icmp eq ptr %138, null, !dbg !4371
  br i1 %140, label %197, label %141, !dbg !4372

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !4360, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i64 7, metadata !4360, metadata !DIExpression()), !dbg !4363
  %142 = icmp sgt i32 %136, -1, !dbg !4367
  br i1 %142, label %150, label %143, !dbg !4367

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4367
  store i32 %144, ptr %7, align 8, !dbg !4367
  %145 = icmp ult i32 %136, -7, !dbg !4367
  br i1 %145, label %146, label %150, !dbg !4367

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4367
  %148 = sext i32 %136 to i64, !dbg !4367
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4367
  br label %154, !dbg !4367

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4367
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4367
  store ptr %153, ptr %4, align 8, !dbg !4367
  br label %154, !dbg !4367

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4367
  %157 = load ptr, ptr %156, align 8, !dbg !4367
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4373
  store ptr %157, ptr %158, align 8, !dbg !4370, !tbaa !957
  %159 = icmp eq ptr %157, null, !dbg !4371
  br i1 %159, label %197, label %160, !dbg !4372

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !4360, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i64 8, metadata !4360, metadata !DIExpression()), !dbg !4363
  %161 = icmp sgt i32 %155, -1, !dbg !4367
  br i1 %161, label %169, label %162, !dbg !4367

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4367
  store i32 %163, ptr %7, align 8, !dbg !4367
  %164 = icmp ult i32 %155, -7, !dbg !4367
  br i1 %164, label %165, label %169, !dbg !4367

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4367
  %167 = sext i32 %155 to i64, !dbg !4367
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4367
  br label %173, !dbg !4367

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4367
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4367
  store ptr %172, ptr %4, align 8, !dbg !4367
  br label %173, !dbg !4367

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4367
  %176 = load ptr, ptr %175, align 8, !dbg !4367
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4373
  store ptr %176, ptr %177, align 8, !dbg !4370, !tbaa !957
  %178 = icmp eq ptr %176, null, !dbg !4371
  br i1 %178, label %197, label %179, !dbg !4372

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !4360, metadata !DIExpression()), !dbg !4363
  call void @llvm.dbg.value(metadata i64 9, metadata !4360, metadata !DIExpression()), !dbg !4363
  %180 = icmp sgt i32 %174, -1, !dbg !4367
  br i1 %180, label %188, label %181, !dbg !4367

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4367
  store i32 %182, ptr %7, align 8, !dbg !4367
  %183 = icmp ult i32 %174, -7, !dbg !4367
  br i1 %183, label %184, label %188, !dbg !4367

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4367
  %186 = sext i32 %174 to i64, !dbg !4367
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4367
  br label %191, !dbg !4367

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4367
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4367
  store ptr %190, ptr %4, align 8, !dbg !4367
  br label %191, !dbg !4367

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4367
  %193 = load ptr, ptr %192, align 8, !dbg !4367
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4373
  store ptr %193, ptr %194, align 8, !dbg !4370, !tbaa !957
  %195 = icmp eq ptr %193, null, !dbg !4371
  %196 = select i1 %195, i64 9, i64 10, !dbg !4372
  br label %197, !dbg !4372

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4374
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4375
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #39, !dbg !4376
  ret void, !dbg !4376
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4377 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4381, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata ptr %1, metadata !4382, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata ptr %2, metadata !4383, metadata !DIExpression()), !dbg !4386
  call void @llvm.dbg.value(metadata ptr %3, metadata !4384, metadata !DIExpression()), !dbg !4386
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #39, !dbg !4387
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4385, metadata !DIExpression()), !dbg !4388
  call void @llvm.va_start(ptr nonnull %5), !dbg !4389
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #39, !dbg !4390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4390, !tbaa.struct !1415
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4390
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #39, !dbg !4390
  call void @llvm.va_end(ptr nonnull %5), !dbg !4391
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #39, !dbg !4392
  ret void, !dbg !4392
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4393 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4394, !tbaa !957
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.144, ptr noundef %1), !dbg !4394
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.17.159, i32 noundef 5) #39, !dbg !4395
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.160) #39, !dbg !4395
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.19.161, i32 noundef 5) #39, !dbg !4396
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.162, ptr noundef nonnull @.str.21.163) #39, !dbg !4396
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.22.164, i32 noundef 5) #39, !dbg !4397
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.165) #39, !dbg !4397
  ret void, !dbg !4398
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4399 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4404, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.value(metadata i64 %1, metadata !4405, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.value(metadata i64 %2, metadata !4406, metadata !DIExpression()), !dbg !4407
  call void @llvm.dbg.value(metadata ptr %0, metadata !4408, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata i64 %1, metadata !4411, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata i64 %2, metadata !4412, metadata !DIExpression()), !dbg !4413
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4415
  call void @llvm.dbg.value(metadata ptr %4, metadata !4416, metadata !DIExpression()), !dbg !4421
  %5 = icmp eq ptr %4, null, !dbg !4423
  br i1 %5, label %6, label %7, !dbg !4425

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4426
  unreachable, !dbg !4426

7:                                                ; preds = %3
  ret ptr %4, !dbg !4427
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4409 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4408, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata i64 %1, metadata !4411, metadata !DIExpression()), !dbg !4428
  call void @llvm.dbg.value(metadata i64 %2, metadata !4412, metadata !DIExpression()), !dbg !4428
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4429
  call void @llvm.dbg.value(metadata ptr %4, metadata !4416, metadata !DIExpression()), !dbg !4430
  %5 = icmp eq ptr %4, null, !dbg !4432
  br i1 %5, label %6, label %7, !dbg !4433

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4434
  unreachable, !dbg !4434

7:                                                ; preds = %3
  ret ptr %4, !dbg !4435
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4436 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4440, metadata !DIExpression()), !dbg !4441
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4442
  call void @llvm.dbg.value(metadata ptr %2, metadata !4416, metadata !DIExpression()), !dbg !4443
  %3 = icmp eq ptr %2, null, !dbg !4445
  br i1 %3, label %4, label %5, !dbg !4446

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4447
  unreachable, !dbg !4447

5:                                                ; preds = %1
  ret ptr %2, !dbg !4448
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4449 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4450 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4454, metadata !DIExpression()), !dbg !4455
  call void @llvm.dbg.value(metadata i64 %0, metadata !4456, metadata !DIExpression()), !dbg !4460
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4462
  call void @llvm.dbg.value(metadata ptr %2, metadata !4416, metadata !DIExpression()), !dbg !4463
  %3 = icmp eq ptr %2, null, !dbg !4465
  br i1 %3, label %4, label %5, !dbg !4466

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4467
  unreachable, !dbg !4467

5:                                                ; preds = %1
  ret ptr %2, !dbg !4468
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4469 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4473, metadata !DIExpression()), !dbg !4474
  call void @llvm.dbg.value(metadata i64 %0, metadata !4440, metadata !DIExpression()), !dbg !4475
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #47, !dbg !4477
  call void @llvm.dbg.value(metadata ptr %2, metadata !4416, metadata !DIExpression()), !dbg !4478
  %3 = icmp eq ptr %2, null, !dbg !4480
  br i1 %3, label %4, label %5, !dbg !4481

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4482
  unreachable, !dbg !4482

5:                                                ; preds = %1
  ret ptr %2, !dbg !4483
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4484 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4488, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i64 %1, metadata !4489, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata ptr %0, metadata !4491, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.value(metadata i64 %1, metadata !4495, metadata !DIExpression()), !dbg !4496
  %3 = icmp eq i64 %1, 0, !dbg !4498
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4498
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !4499
  call void @llvm.dbg.value(metadata ptr %5, metadata !4416, metadata !DIExpression()), !dbg !4500
  %6 = icmp eq ptr %5, null, !dbg !4502
  br i1 %6, label %7, label %8, !dbg !4503

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4504
  unreachable, !dbg !4504

8:                                                ; preds = %2
  ret ptr %5, !dbg !4505
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4506 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4507 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4511, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata i64 %1, metadata !4512, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.value(metadata ptr %0, metadata !4514, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.value(metadata i64 %1, metadata !4517, metadata !DIExpression()), !dbg !4518
  call void @llvm.dbg.value(metadata ptr %0, metadata !4491, metadata !DIExpression()), !dbg !4520
  call void @llvm.dbg.value(metadata i64 %1, metadata !4495, metadata !DIExpression()), !dbg !4520
  %3 = icmp eq i64 %1, 0, !dbg !4522
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4522
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #46, !dbg !4523
  call void @llvm.dbg.value(metadata ptr %5, metadata !4416, metadata !DIExpression()), !dbg !4524
  %6 = icmp eq ptr %5, null, !dbg !4526
  br i1 %6, label %7, label %8, !dbg !4527

7:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4528
  unreachable, !dbg !4528

8:                                                ; preds = %2
  ret ptr %5, !dbg !4529
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4530 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4534, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i64 %1, metadata !4535, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata i64 %2, metadata !4536, metadata !DIExpression()), !dbg !4537
  call void @llvm.dbg.value(metadata ptr %0, metadata !4538, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i64 %1, metadata !4541, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata i64 %2, metadata !4542, metadata !DIExpression()), !dbg !4543
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #39, !dbg !4545
  call void @llvm.dbg.value(metadata ptr %4, metadata !4416, metadata !DIExpression()), !dbg !4546
  %5 = icmp eq ptr %4, null, !dbg !4548
  br i1 %5, label %6, label %7, !dbg !4549

6:                                                ; preds = %3
  tail call void @xalloc_die() #41, !dbg !4550
  unreachable, !dbg !4550

7:                                                ; preds = %3
  ret ptr %4, !dbg !4551
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4552 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4556, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata i64 %1, metadata !4557, metadata !DIExpression()), !dbg !4558
  call void @llvm.dbg.value(metadata ptr null, metadata !4408, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i64 %0, metadata !4411, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i64 %1, metadata !4412, metadata !DIExpression()), !dbg !4559
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4561
  call void @llvm.dbg.value(metadata ptr %3, metadata !4416, metadata !DIExpression()), !dbg !4562
  %4 = icmp eq ptr %3, null, !dbg !4564
  br i1 %4, label %5, label %6, !dbg !4565

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4566
  unreachable, !dbg !4566

6:                                                ; preds = %2
  ret ptr %3, !dbg !4567
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4568 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4572, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata i64 %1, metadata !4573, metadata !DIExpression()), !dbg !4574
  call void @llvm.dbg.value(metadata ptr null, metadata !4534, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.value(metadata i64 %0, metadata !4535, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.value(metadata i64 %1, metadata !4536, metadata !DIExpression()), !dbg !4575
  call void @llvm.dbg.value(metadata ptr null, metadata !4538, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i64 %0, metadata !4541, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.value(metadata i64 %1, metadata !4542, metadata !DIExpression()), !dbg !4577
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #39, !dbg !4579
  call void @llvm.dbg.value(metadata ptr %3, metadata !4416, metadata !DIExpression()), !dbg !4580
  %4 = icmp eq ptr %3, null, !dbg !4582
  br i1 %4, label %5, label %6, !dbg !4583

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4584
  unreachable, !dbg !4584

6:                                                ; preds = %2
  ret ptr %3, !dbg !4585
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4586 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4590, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata ptr %1, metadata !4591, metadata !DIExpression()), !dbg !4592
  call void @llvm.dbg.value(metadata ptr %0, metadata !894, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata ptr %1, metadata !895, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i64 1, metadata !896, metadata !DIExpression()), !dbg !4593
  %3 = load i64, ptr %1, align 8, !dbg !4595, !tbaa !3487
  call void @llvm.dbg.value(metadata i64 %3, metadata !897, metadata !DIExpression()), !dbg !4593
  %4 = icmp eq ptr %0, null, !dbg !4596
  br i1 %4, label %5, label %8, !dbg !4598

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4599
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4602
  br label %15, !dbg !4602

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4603
  %10 = add nuw i64 %9, 1, !dbg !4603
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4603
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4603
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4603
  call void @llvm.dbg.value(metadata i64 %13, metadata !897, metadata !DIExpression()), !dbg !4593
  br i1 %12, label %14, label %15, !dbg !4606

14:                                               ; preds = %8
  tail call void @xalloc_die() #41, !dbg !4607
  unreachable, !dbg !4607

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4593
  call void @llvm.dbg.value(metadata i64 %16, metadata !897, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata ptr %0, metadata !4408, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i64 %16, metadata !4411, metadata !DIExpression()), !dbg !4608
  call void @llvm.dbg.value(metadata i64 1, metadata !4412, metadata !DIExpression()), !dbg !4608
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #39, !dbg !4610
  call void @llvm.dbg.value(metadata ptr %17, metadata !4416, metadata !DIExpression()), !dbg !4611
  %18 = icmp eq ptr %17, null, !dbg !4613
  br i1 %18, label %19, label %20, !dbg !4614

19:                                               ; preds = %15
  tail call void @xalloc_die() #41, !dbg !4615
  unreachable, !dbg !4615

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !894, metadata !DIExpression()), !dbg !4593
  store i64 %16, ptr %1, align 8, !dbg !4616, !tbaa !3487
  ret ptr %17, !dbg !4617
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !889 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !894, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.value(metadata ptr %1, metadata !895, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.value(metadata i64 %2, metadata !896, metadata !DIExpression()), !dbg !4618
  %4 = load i64, ptr %1, align 8, !dbg !4619, !tbaa !3487
  call void @llvm.dbg.value(metadata i64 %4, metadata !897, metadata !DIExpression()), !dbg !4618
  %5 = icmp eq ptr %0, null, !dbg !4620
  br i1 %5, label %6, label %13, !dbg !4621

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4622
  br i1 %7, label %8, label %20, !dbg !4623

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4624
  call void @llvm.dbg.value(metadata i64 %9, metadata !897, metadata !DIExpression()), !dbg !4618
  %10 = icmp ugt i64 %2, 128, !dbg !4626
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4627
  call void @llvm.dbg.value(metadata i64 %12, metadata !897, metadata !DIExpression()), !dbg !4618
  br label %20, !dbg !4628

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4629
  %15 = add nuw i64 %14, 1, !dbg !4629
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4629
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4629
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4629
  call void @llvm.dbg.value(metadata i64 %18, metadata !897, metadata !DIExpression()), !dbg !4618
  br i1 %17, label %19, label %20, !dbg !4630

19:                                               ; preds = %13
  tail call void @xalloc_die() #41, !dbg !4631
  unreachable, !dbg !4631

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4618
  call void @llvm.dbg.value(metadata i64 %21, metadata !897, metadata !DIExpression()), !dbg !4618
  call void @llvm.dbg.value(metadata ptr %0, metadata !4408, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata i64 %21, metadata !4411, metadata !DIExpression()), !dbg !4632
  call void @llvm.dbg.value(metadata i64 %2, metadata !4412, metadata !DIExpression()), !dbg !4632
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #39, !dbg !4634
  call void @llvm.dbg.value(metadata ptr %22, metadata !4416, metadata !DIExpression()), !dbg !4635
  %23 = icmp eq ptr %22, null, !dbg !4637
  br i1 %23, label %24, label %25, !dbg !4638

24:                                               ; preds = %20
  tail call void @xalloc_die() #41, !dbg !4639
  unreachable, !dbg !4639

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !894, metadata !DIExpression()), !dbg !4618
  store i64 %21, ptr %1, align 8, !dbg !4640, !tbaa !3487
  ret ptr %22, !dbg !4641
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !901 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !909, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata ptr %1, metadata !910, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i64 %2, metadata !911, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i64 %3, metadata !912, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i64 %4, metadata !913, metadata !DIExpression()), !dbg !4642
  %6 = load i64, ptr %1, align 8, !dbg !4643, !tbaa !3487
  call void @llvm.dbg.value(metadata i64 %6, metadata !914, metadata !DIExpression()), !dbg !4642
  %7 = ashr i64 %6, 1, !dbg !4644
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4644
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4644
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4644
  call void @llvm.dbg.value(metadata i64 %10, metadata !915, metadata !DIExpression()), !dbg !4642
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4646
  call void @llvm.dbg.value(metadata i64 %11, metadata !915, metadata !DIExpression()), !dbg !4642
  %12 = icmp sgt i64 %3, -1, !dbg !4647
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4649
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4649
  call void @llvm.dbg.value(metadata i64 %15, metadata !915, metadata !DIExpression()), !dbg !4642
  %16 = icmp slt i64 %4, 0, !dbg !4650
  br i1 %16, label %17, label %30, !dbg !4650

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4650
  br i1 %18, label %19, label %24, !dbg !4650

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4650
  %21 = udiv i64 9223372036854775807, %20, !dbg !4650
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4650
  br i1 %23, label %46, label %43, !dbg !4650

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4650
  br i1 %25, label %43, label %26, !dbg !4650

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4650
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4650
  %29 = icmp ult i64 %28, %15, !dbg !4650
  br i1 %29, label %46, label %43, !dbg !4650

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4650
  br i1 %31, label %43, label %32, !dbg !4650

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4650
  br i1 %33, label %34, label %40, !dbg !4650

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4650
  br i1 %35, label %43, label %36, !dbg !4650

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4650
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4650
  %39 = icmp ult i64 %38, %4, !dbg !4650
  br i1 %39, label %46, label %43, !dbg !4650

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4650
  br i1 %42, label %46, label %43, !dbg !4650

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !916, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4642
  %44 = mul i64 %15, %4, !dbg !4650
  call void @llvm.dbg.value(metadata i64 %44, metadata !916, metadata !DIExpression()), !dbg !4642
  %45 = icmp slt i64 %44, 128, !dbg !4650
  br i1 %45, label %46, label %52, !dbg !4650

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !917, metadata !DIExpression()), !dbg !4642
  %48 = sdiv i64 %47, %4, !dbg !4651
  call void @llvm.dbg.value(metadata i64 %48, metadata !915, metadata !DIExpression()), !dbg !4642
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4654
  call void @llvm.dbg.value(metadata i64 %51, metadata !916, metadata !DIExpression()), !dbg !4642
  br label %52, !dbg !4655

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4642
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4642
  call void @llvm.dbg.value(metadata i64 %54, metadata !916, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i64 %53, metadata !915, metadata !DIExpression()), !dbg !4642
  %55 = icmp eq ptr %0, null, !dbg !4656
  br i1 %55, label %56, label %57, !dbg !4658

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4659, !tbaa !3487
  br label %57, !dbg !4660

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4661
  %59 = icmp slt i64 %58, %2, !dbg !4663
  br i1 %59, label %60, label %97, !dbg !4664

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4665
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4665
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4665
  call void @llvm.dbg.value(metadata i64 %63, metadata !915, metadata !DIExpression()), !dbg !4642
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4666
  br i1 %66, label %96, label %67, !dbg !4666

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4667

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4667
  br i1 %69, label %70, label %75, !dbg !4667

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4667
  %72 = udiv i64 9223372036854775807, %71, !dbg !4667
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4667
  br i1 %74, label %96, label %94, !dbg !4667

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4667
  br i1 %76, label %94, label %77, !dbg !4667

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4667
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4667
  %80 = icmp ult i64 %79, %63, !dbg !4667
  br i1 %80, label %96, label %94, !dbg !4667

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4667
  br i1 %82, label %94, label %83, !dbg !4667

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4667
  br i1 %84, label %85, label %91, !dbg !4667

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4667
  br i1 %86, label %94, label %87, !dbg !4667

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4667
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4667
  %90 = icmp ult i64 %89, %4, !dbg !4667
  br i1 %90, label %96, label %94, !dbg !4667

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4667
  br i1 %93, label %96, label %94, !dbg !4667

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !916, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4642
  %95 = mul i64 %63, %4, !dbg !4667
  call void @llvm.dbg.value(metadata i64 %95, metadata !916, metadata !DIExpression()), !dbg !4642
  br label %97, !dbg !4668

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #41, !dbg !4669
  unreachable, !dbg !4669

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4642
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4642
  call void @llvm.dbg.value(metadata i64 %99, metadata !916, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i64 %98, metadata !915, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata ptr %0, metadata !4488, metadata !DIExpression()), !dbg !4670
  call void @llvm.dbg.value(metadata i64 %99, metadata !4489, metadata !DIExpression()), !dbg !4670
  call void @llvm.dbg.value(metadata ptr %0, metadata !4491, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i64 %99, metadata !4495, metadata !DIExpression()), !dbg !4672
  %100 = icmp eq i64 %99, 0, !dbg !4674
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4674
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #46, !dbg !4675
  call void @llvm.dbg.value(metadata ptr %102, metadata !4416, metadata !DIExpression()), !dbg !4676
  %103 = icmp eq ptr %102, null, !dbg !4678
  br i1 %103, label %104, label %105, !dbg !4679

104:                                              ; preds = %97
  tail call void @xalloc_die() #41, !dbg !4680
  unreachable, !dbg !4680

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !909, metadata !DIExpression()), !dbg !4642
  store i64 %98, ptr %1, align 8, !dbg !4681, !tbaa !3487
  ret ptr %102, !dbg !4682
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4683 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4685, metadata !DIExpression()), !dbg !4686
  call void @llvm.dbg.value(metadata i64 %0, metadata !4687, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.value(metadata i64 1, metadata !4690, metadata !DIExpression()), !dbg !4691
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4693
  call void @llvm.dbg.value(metadata ptr %2, metadata !4416, metadata !DIExpression()), !dbg !4694
  %3 = icmp eq ptr %2, null, !dbg !4696
  br i1 %3, label %4, label %5, !dbg !4697

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4698
  unreachable, !dbg !4698

5:                                                ; preds = %1
  ret ptr %2, !dbg !4699
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4700 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4688 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4687, metadata !DIExpression()), !dbg !4701
  call void @llvm.dbg.value(metadata i64 %1, metadata !4690, metadata !DIExpression()), !dbg !4701
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4702
  call void @llvm.dbg.value(metadata ptr %3, metadata !4416, metadata !DIExpression()), !dbg !4703
  %4 = icmp eq ptr %3, null, !dbg !4705
  br i1 %4, label %5, label %6, !dbg !4706

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4707
  unreachable, !dbg !4707

6:                                                ; preds = %2
  ret ptr %3, !dbg !4708
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4709 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4711, metadata !DIExpression()), !dbg !4712
  call void @llvm.dbg.value(metadata i64 %0, metadata !4713, metadata !DIExpression()), !dbg !4717
  call void @llvm.dbg.value(metadata i64 1, metadata !4716, metadata !DIExpression()), !dbg !4717
  call void @llvm.dbg.value(metadata i64 %0, metadata !4719, metadata !DIExpression()), !dbg !4723
  call void @llvm.dbg.value(metadata i64 1, metadata !4722, metadata !DIExpression()), !dbg !4723
  call void @llvm.dbg.value(metadata i64 %0, metadata !4719, metadata !DIExpression()), !dbg !4723
  call void @llvm.dbg.value(metadata i64 1, metadata !4722, metadata !DIExpression()), !dbg !4723
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #48, !dbg !4725
  call void @llvm.dbg.value(metadata ptr %2, metadata !4416, metadata !DIExpression()), !dbg !4726
  %3 = icmp eq ptr %2, null, !dbg !4728
  br i1 %3, label %4, label %5, !dbg !4729

4:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4730
  unreachable, !dbg !4730

5:                                                ; preds = %1
  ret ptr %2, !dbg !4731
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4714 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4713, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata i64 %1, metadata !4716, metadata !DIExpression()), !dbg !4732
  call void @llvm.dbg.value(metadata i64 %0, metadata !4719, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i64 %1, metadata !4722, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i64 %0, metadata !4719, metadata !DIExpression()), !dbg !4733
  call void @llvm.dbg.value(metadata i64 %1, metadata !4722, metadata !DIExpression()), !dbg !4733
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #48, !dbg !4735
  call void @llvm.dbg.value(metadata ptr %3, metadata !4416, metadata !DIExpression()), !dbg !4736
  %4 = icmp eq ptr %3, null, !dbg !4738
  br i1 %4, label %5, label %6, !dbg !4739

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4740
  unreachable, !dbg !4740

6:                                                ; preds = %2
  ret ptr %3, !dbg !4741
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4742 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4746, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata i64 %1, metadata !4747, metadata !DIExpression()), !dbg !4748
  call void @llvm.dbg.value(metadata i64 %1, metadata !4440, metadata !DIExpression()), !dbg !4749
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4751
  call void @llvm.dbg.value(metadata ptr %3, metadata !4416, metadata !DIExpression()), !dbg !4752
  %4 = icmp eq ptr %3, null, !dbg !4754
  br i1 %4, label %5, label %6, !dbg !4755

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4756
  unreachable, !dbg !4756

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4757, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata ptr %0, metadata !4763, metadata !DIExpression()), !dbg !4765
  call void @llvm.dbg.value(metadata i64 %1, metadata !4764, metadata !DIExpression()), !dbg !4765
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4767
  ret ptr %3, !dbg !4768
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4769 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4773, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata i64 %1, metadata !4774, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata i64 %1, metadata !4454, metadata !DIExpression()), !dbg !4776
  call void @llvm.dbg.value(metadata i64 %1, metadata !4456, metadata !DIExpression()), !dbg !4778
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #47, !dbg !4780
  call void @llvm.dbg.value(metadata ptr %3, metadata !4416, metadata !DIExpression()), !dbg !4781
  %4 = icmp eq ptr %3, null, !dbg !4783
  br i1 %4, label %5, label %6, !dbg !4784

5:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4785
  unreachable, !dbg !4785

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4757, metadata !DIExpression()), !dbg !4786
  call void @llvm.dbg.value(metadata ptr %0, metadata !4763, metadata !DIExpression()), !dbg !4786
  call void @llvm.dbg.value(metadata i64 %1, metadata !4764, metadata !DIExpression()), !dbg !4786
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4788
  ret ptr %3, !dbg !4789
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4790 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4794, metadata !DIExpression()), !dbg !4797
  call void @llvm.dbg.value(metadata i64 %1, metadata !4795, metadata !DIExpression()), !dbg !4797
  %3 = add nsw i64 %1, 1, !dbg !4798
  call void @llvm.dbg.value(metadata i64 %3, metadata !4454, metadata !DIExpression()), !dbg !4799
  call void @llvm.dbg.value(metadata i64 %3, metadata !4456, metadata !DIExpression()), !dbg !4801
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4803
  call void @llvm.dbg.value(metadata ptr %4, metadata !4416, metadata !DIExpression()), !dbg !4804
  %5 = icmp eq ptr %4, null, !dbg !4806
  br i1 %5, label %6, label %7, !dbg !4807

6:                                                ; preds = %2
  tail call void @xalloc_die() #41, !dbg !4808
  unreachable, !dbg !4808

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4796, metadata !DIExpression()), !dbg !4797
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4809
  store i8 0, ptr %8, align 1, !dbg !4810, !tbaa !1066
  call void @llvm.dbg.value(metadata ptr %4, metadata !4757, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata ptr %0, metadata !4763, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i64 %1, metadata !4764, metadata !DIExpression()), !dbg !4811
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #39, !dbg !4813
  ret ptr %4, !dbg !4814
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4815 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4817, metadata !DIExpression()), !dbg !4818
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #40, !dbg !4819
  %3 = add i64 %2, 1, !dbg !4820
  call void @llvm.dbg.value(metadata ptr %0, metadata !4746, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata i64 %3, metadata !4747, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata i64 %3, metadata !4440, metadata !DIExpression()), !dbg !4823
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #47, !dbg !4825
  call void @llvm.dbg.value(metadata ptr %4, metadata !4416, metadata !DIExpression()), !dbg !4826
  %5 = icmp eq ptr %4, null, !dbg !4828
  br i1 %5, label %6, label %7, !dbg !4829

6:                                                ; preds = %1
  tail call void @xalloc_die() #41, !dbg !4830
  unreachable, !dbg !4830

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4757, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata ptr %0, metadata !4763, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i64 %3, metadata !4764, metadata !DIExpression()), !dbg !4831
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #39, !dbg !4833
  ret ptr %4, !dbg !4834
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4835 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4840, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %1, metadata !4837, metadata !DIExpression()), !dbg !4841
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.176, ptr noundef nonnull @.str.2.177, i32 noundef 5) #39, !dbg !4840
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.178, ptr noundef %2) #39, !dbg !4840
  %3 = icmp eq i32 %1, 0, !dbg !4840
  tail call void @llvm.assume(i1 %3), !dbg !4840
  tail call void @abort() #41, !dbg !4842
  unreachable, !dbg !4842
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4843 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4881, metadata !DIExpression()), !dbg !4886
  %2 = tail call i64 @__fpending(ptr noundef %0) #39, !dbg !4887
  call void @llvm.dbg.value(metadata i1 poison, metadata !4882, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4886
  call void @llvm.dbg.value(metadata ptr %0, metadata !4888, metadata !DIExpression()), !dbg !4891
  %3 = load i32, ptr %0, align 8, !dbg !4893, !tbaa !4894
  %4 = and i32 %3, 32, !dbg !4895
  %5 = icmp eq i32 %4, 0, !dbg !4895
  call void @llvm.dbg.value(metadata i1 %5, metadata !4884, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4886
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #39, !dbg !4896
  %7 = icmp eq i32 %6, 0, !dbg !4897
  call void @llvm.dbg.value(metadata i1 %7, metadata !4885, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4886
  br i1 %5, label %8, label %18, !dbg !4898

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4900
  call void @llvm.dbg.value(metadata i1 %9, metadata !4882, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4886
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4901
  %11 = xor i1 %7, true, !dbg !4901
  %12 = sext i1 %11 to i32, !dbg !4901
  br i1 %10, label %21, label %13, !dbg !4901

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #42, !dbg !4902
  %15 = load i32, ptr %14, align 4, !dbg !4902, !tbaa !1057
  %16 = icmp ne i32 %15, 9, !dbg !4903
  %17 = sext i1 %16 to i32, !dbg !4904
  br label %21, !dbg !4904

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4905

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #42, !dbg !4907
  store i32 0, ptr %20, align 4, !dbg !4909, !tbaa !1057
  br label %21, !dbg !4907

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4886
  ret i32 %22, !dbg !4910
}

; Function Attrs: nounwind
declare !dbg !4911 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4915 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4953, metadata !DIExpression()), !dbg !4957
  call void @llvm.dbg.value(metadata i32 0, metadata !4954, metadata !DIExpression()), !dbg !4957
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4958
  call void @llvm.dbg.value(metadata i32 %2, metadata !4955, metadata !DIExpression()), !dbg !4957
  %3 = icmp slt i32 %2, 0, !dbg !4959
  br i1 %3, label %4, label %6, !dbg !4961

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4962
  br label %24, !dbg !4963

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !4964
  %8 = icmp eq i32 %7, 0, !dbg !4964
  br i1 %8, label %13, label %9, !dbg !4966

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !4967
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #39, !dbg !4968
  %12 = icmp eq i64 %11, -1, !dbg !4969
  br i1 %12, label %16, label %13, !dbg !4970

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #39, !dbg !4971
  %15 = icmp eq i32 %14, 0, !dbg !4971
  br i1 %15, label %16, label %18, !dbg !4972

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !4954, metadata !DIExpression()), !dbg !4957
  call void @llvm.dbg.value(metadata i32 0, metadata !4956, metadata !DIExpression()), !dbg !4957
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4973
  call void @llvm.dbg.value(metadata i32 %17, metadata !4956, metadata !DIExpression()), !dbg !4957
  br label %24, !dbg !4974

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #42, !dbg !4975
  %20 = load i32, ptr %19, align 4, !dbg !4975, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 %20, metadata !4954, metadata !DIExpression()), !dbg !4957
  call void @llvm.dbg.value(metadata i32 0, metadata !4956, metadata !DIExpression()), !dbg !4957
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !4973
  call void @llvm.dbg.value(metadata i32 %21, metadata !4956, metadata !DIExpression()), !dbg !4957
  %22 = icmp eq i32 %20, 0, !dbg !4976
  br i1 %22, label %24, label %23, !dbg !4974

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !4978, !tbaa !1057
  call void @llvm.dbg.value(metadata i32 -1, metadata !4956, metadata !DIExpression()), !dbg !4957
  br label %24, !dbg !4980

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4957
  ret i32 %25, !dbg !4981
}

; Function Attrs: nofree nounwind
declare !dbg !4982 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !4983 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !4984 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !4985 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !4988 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5026, metadata !DIExpression()), !dbg !5027
  %2 = icmp eq ptr %0, null, !dbg !5028
  br i1 %2, label %6, label %3, !dbg !5030

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #39, !dbg !5031
  %5 = icmp eq i32 %4, 0, !dbg !5031
  br i1 %5, label %6, label %8, !dbg !5032

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !5033
  br label %16, !dbg !5034

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !5035, metadata !DIExpression()), !dbg !5040
  %9 = load i32, ptr %0, align 8, !dbg !5042, !tbaa !4894
  %10 = and i32 %9, 256, !dbg !5044
  %11 = icmp eq i32 %10, 0, !dbg !5044
  br i1 %11, label %14, label %12, !dbg !5045

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #39, !dbg !5046
  br label %14, !dbg !5046

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !5047
  br label %16, !dbg !5048

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !5027
  ret i32 %17, !dbg !5049
}

; Function Attrs: nofree nounwind
declare !dbg !5050 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5051 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5090, metadata !DIExpression()), !dbg !5096
  call void @llvm.dbg.value(metadata i64 %1, metadata !5091, metadata !DIExpression()), !dbg !5096
  call void @llvm.dbg.value(metadata i32 %2, metadata !5092, metadata !DIExpression()), !dbg !5096
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !5097
  %5 = load ptr, ptr %4, align 8, !dbg !5097, !tbaa !5098
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !5099
  %7 = load ptr, ptr %6, align 8, !dbg !5099, !tbaa !5100
  %8 = icmp eq ptr %5, %7, !dbg !5101
  br i1 %8, label %9, label %27, !dbg !5102

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !5103
  %11 = load ptr, ptr %10, align 8, !dbg !5103, !tbaa !2586
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !5104
  %13 = load ptr, ptr %12, align 8, !dbg !5104, !tbaa !5105
  %14 = icmp eq ptr %11, %13, !dbg !5106
  br i1 %14, label %15, label %27, !dbg !5107

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !5108
  %17 = load ptr, ptr %16, align 8, !dbg !5108, !tbaa !5109
  %18 = icmp eq ptr %17, null, !dbg !5110
  br i1 %18, label %19, label %27, !dbg !5111

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #39, !dbg !5112
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #39, !dbg !5113
  call void @llvm.dbg.value(metadata i64 %21, metadata !5093, metadata !DIExpression()), !dbg !5114
  %22 = icmp eq i64 %21, -1, !dbg !5115
  br i1 %22, label %29, label %23, !dbg !5117

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !5118, !tbaa !4894
  %25 = and i32 %24, -17, !dbg !5118
  store i32 %25, ptr %0, align 8, !dbg !5118, !tbaa !4894
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !5119
  store i64 %21, ptr %26, align 8, !dbg !5120, !tbaa !5121
  br label %29, !dbg !5122

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !5123
  br label %29, !dbg !5124

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !5096
  ret i32 %30, !dbg !5125
}

; Function Attrs: nofree nounwind
declare !dbg !5126 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5129 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5135, metadata !DIExpression()), !dbg !5140
  call void @llvm.dbg.value(metadata ptr %1, metadata !5136, metadata !DIExpression()), !dbg !5140
  call void @llvm.dbg.value(metadata i64 %2, metadata !5137, metadata !DIExpression()), !dbg !5140
  call void @llvm.dbg.value(metadata ptr %3, metadata !5138, metadata !DIExpression()), !dbg !5140
  %5 = icmp eq ptr %1, null, !dbg !5141
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5143
  %7 = select i1 %5, ptr @.str.189, ptr %1, !dbg !5143
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5143
  call void @llvm.dbg.value(metadata i64 %8, metadata !5137, metadata !DIExpression()), !dbg !5140
  call void @llvm.dbg.value(metadata ptr %7, metadata !5136, metadata !DIExpression()), !dbg !5140
  call void @llvm.dbg.value(metadata ptr %6, metadata !5135, metadata !DIExpression()), !dbg !5140
  %9 = icmp eq ptr %3, null, !dbg !5144
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5146
  call void @llvm.dbg.value(metadata ptr %10, metadata !5138, metadata !DIExpression()), !dbg !5140
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #39, !dbg !5147
  call void @llvm.dbg.value(metadata i64 %11, metadata !5139, metadata !DIExpression()), !dbg !5140
  %12 = icmp ult i64 %11, -3, !dbg !5148
  br i1 %12, label %13, label %17, !dbg !5150

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #40, !dbg !5151
  %15 = icmp eq i32 %14, 0, !dbg !5151
  br i1 %15, label %16, label %29, !dbg !5152

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5153, metadata !DIExpression()), !dbg !5158
  call void @llvm.dbg.value(metadata ptr %10, metadata !5160, metadata !DIExpression()), !dbg !5165
  call void @llvm.dbg.value(metadata i32 0, metadata !5163, metadata !DIExpression()), !dbg !5165
  call void @llvm.dbg.value(metadata i64 8, metadata !5164, metadata !DIExpression()), !dbg !5165
  store i64 0, ptr %10, align 1, !dbg !5167
  br label %29, !dbg !5168

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5169
  br i1 %18, label %19, label %20, !dbg !5171

19:                                               ; preds = %17
  tail call void @abort() #41, !dbg !5172
  unreachable, !dbg !5172

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5173

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #39, !dbg !5175
  br i1 %23, label %29, label %24, !dbg !5176

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5177
  br i1 %25, label %29, label %26, !dbg !5180

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5181, !tbaa !1066
  %28 = zext i8 %27 to i32, !dbg !5182
  store i32 %28, ptr %6, align 4, !dbg !5183, !tbaa !1057
  br label %29, !dbg !5184

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5140
  ret i64 %30, !dbg !5185
}

; Function Attrs: nounwind
declare !dbg !5186 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5191 i32 @mbsinit(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #38 !dbg !5197 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5199, metadata !DIExpression()), !dbg !5203
  call void @llvm.dbg.value(metadata i64 %1, metadata !5200, metadata !DIExpression()), !dbg !5203
  call void @llvm.dbg.value(metadata i64 %2, metadata !5201, metadata !DIExpression()), !dbg !5203
  %4 = icmp eq i64 %2, 0, !dbg !5204
  br i1 %4, label %8, label %5, !dbg !5204

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5204
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5204
  br i1 %7, label %13, label %8, !dbg !5204

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5202, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5203
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5202, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5203
  %9 = mul i64 %2, %1, !dbg !5204
  call void @llvm.dbg.value(metadata i64 %9, metadata !5202, metadata !DIExpression()), !dbg !5203
  call void @llvm.dbg.value(metadata ptr %0, metadata !5206, metadata !DIExpression()), !dbg !5210
  call void @llvm.dbg.value(metadata i64 %9, metadata !5209, metadata !DIExpression()), !dbg !5210
  %10 = icmp eq i64 %9, 0, !dbg !5212
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5212
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #46, !dbg !5213
  br label %15, !dbg !5214

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5202, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5203
  %14 = tail call ptr @__errno_location() #42, !dbg !5215
  store i32 12, ptr %14, align 4, !dbg !5217, !tbaa !1057
  br label %15, !dbg !5218

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5203
  ret ptr %16, !dbg !5219
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5220 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5222, metadata !DIExpression()), !dbg !5227
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #39, !dbg !5228
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5223, metadata !DIExpression()), !dbg !5229
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #39, !dbg !5230
  %4 = icmp eq i32 %3, 0, !dbg !5230
  br i1 %4, label %5, label %12, !dbg !5232

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5233, metadata !DIExpression()), !dbg !5237
  call void @llvm.dbg.value(metadata ptr @.str.194, metadata !5236, metadata !DIExpression()), !dbg !5237
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.194, i64 2), !dbg !5240
  %7 = icmp eq i32 %6, 0, !dbg !5241
  br i1 %7, label %11, label %8, !dbg !5242

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5233, metadata !DIExpression()), !dbg !5243
  call void @llvm.dbg.value(metadata ptr @.str.1.195, metadata !5236, metadata !DIExpression()), !dbg !5243
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.195, i64 6), !dbg !5245
  %10 = icmp eq i32 %9, 0, !dbg !5246
  br i1 %10, label %11, label %12, !dbg !5247

11:                                               ; preds = %8, %5
  br label %12, !dbg !5248

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5227
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #39, !dbg !5249
  ret i1 %13, !dbg !5249
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5250 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5254, metadata !DIExpression()), !dbg !5257
  call void @llvm.dbg.value(metadata ptr %1, metadata !5255, metadata !DIExpression()), !dbg !5257
  call void @llvm.dbg.value(metadata i64 %2, metadata !5256, metadata !DIExpression()), !dbg !5257
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #39, !dbg !5258
  ret i32 %4, !dbg !5259
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5260 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5264, metadata !DIExpression()), !dbg !5265
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #39, !dbg !5266
  ret ptr %2, !dbg !5267
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5268 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5270, metadata !DIExpression()), !dbg !5272
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5273
  call void @llvm.dbg.value(metadata ptr %2, metadata !5271, metadata !DIExpression()), !dbg !5272
  ret ptr %2, !dbg !5274
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5275 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5277, metadata !DIExpression()), !dbg !5284
  call void @llvm.dbg.value(metadata ptr %1, metadata !5278, metadata !DIExpression()), !dbg !5284
  call void @llvm.dbg.value(metadata i64 %2, metadata !5279, metadata !DIExpression()), !dbg !5284
  call void @llvm.dbg.value(metadata i32 %0, metadata !5270, metadata !DIExpression()), !dbg !5285
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #39, !dbg !5287
  call void @llvm.dbg.value(metadata ptr %4, metadata !5271, metadata !DIExpression()), !dbg !5285
  call void @llvm.dbg.value(metadata ptr %4, metadata !5280, metadata !DIExpression()), !dbg !5284
  %5 = icmp eq ptr %4, null, !dbg !5288
  br i1 %5, label %6, label %9, !dbg !5289

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5290
  br i1 %7, label %19, label %8, !dbg !5293

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5294, !tbaa !1066
  br label %19, !dbg !5295

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #40, !dbg !5296
  call void @llvm.dbg.value(metadata i64 %10, metadata !5281, metadata !DIExpression()), !dbg !5297
  %11 = icmp ult i64 %10, %2, !dbg !5298
  br i1 %11, label %12, label %14, !dbg !5300

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5301
  call void @llvm.dbg.value(metadata ptr %1, metadata !5303, metadata !DIExpression()), !dbg !5308
  call void @llvm.dbg.value(metadata ptr %4, metadata !5306, metadata !DIExpression()), !dbg !5308
  call void @llvm.dbg.value(metadata i64 %13, metadata !5307, metadata !DIExpression()), !dbg !5308
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #39, !dbg !5310
  br label %19, !dbg !5311

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5312
  br i1 %15, label %19, label %16, !dbg !5315

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5316
  call void @llvm.dbg.value(metadata ptr %1, metadata !5303, metadata !DIExpression()), !dbg !5318
  call void @llvm.dbg.value(metadata ptr %4, metadata !5306, metadata !DIExpression()), !dbg !5318
  call void @llvm.dbg.value(metadata i64 %17, metadata !5307, metadata !DIExpression()), !dbg !5318
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #39, !dbg !5320
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5321
  store i8 0, ptr %18, align 1, !dbg !5322, !tbaa !1066
  br label %19, !dbg !5323

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5324
  ret i32 %20, !dbg !5325
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

!llvm.dbg.cu = !{!221, !564, !579, !834, !868, !870, !634, !668, !876, !878, !828, !885, !919, !921, !923, !925, !927, !850, !929, !932, !934, !936}
!llvm.ident = !{!938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938, !938}
!llvm.module.flags = !{!939, !940, !941, !942, !943, !944, !945}

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
!269 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !271, line: 160, baseType: !272)
!271 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!311 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !313, line: 49, size: 1728, elements: !314)
!313 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!578 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !579, file: !580, line: 66, type: !629, isLocal: false, isDefinition: true)
!579 = distinct !DICompileUnit(language: DW_LANG_C11, file: !580, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !581, globals: !582, splitDebugInlining: false, nameTableKind: None)
!580 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!581 = !{!354, !267}
!582 = !{!583, !585, !610, !612, !614, !616, !577, !618, !620, !622, !624, !627}
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !580, line: 272, type: !19, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(name: "old_file_name", scope: !587, file: !580, line: 304, type: !265, isLocal: true, isDefinition: true)
!587 = distinct !DISubprogram(name: "verror_at_line", scope: !580, file: !580, line: 298, type: !588, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !603)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !260, !260, !265, !224, !265, !590}
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !591, line: 52, baseType: !592)
!591 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !593, line: 14, baseType: !594)
!593 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !595, baseType: !596)
!595 = !DIFile(filename: "lib/error.c", directory: "/src")
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !597)
!597 = !{!598, !599, !600, !601, !602}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !596, file: !595, baseType: !354, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !596, file: !595, baseType: !354, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !596, file: !595, baseType: !354, size: 64, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !596, file: !595, baseType: !260, size: 32, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !596, file: !595, baseType: !260, size: 32, offset: 224)
!603 = !{!604, !605, !606, !607, !608, !609}
!604 = !DILocalVariable(name: "status", arg: 1, scope: !587, file: !580, line: 298, type: !260)
!605 = !DILocalVariable(name: "errnum", arg: 2, scope: !587, file: !580, line: 298, type: !260)
!606 = !DILocalVariable(name: "file_name", arg: 3, scope: !587, file: !580, line: 298, type: !265)
!607 = !DILocalVariable(name: "line_number", arg: 4, scope: !587, file: !580, line: 298, type: !224)
!608 = !DILocalVariable(name: "message", arg: 5, scope: !587, file: !580, line: 298, type: !265)
!609 = !DILocalVariable(name: "args", arg: 6, scope: !587, file: !580, line: 298, type: !590)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(name: "old_line_number", scope: !587, file: !580, line: 305, type: !224, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(scope: null, file: !580, line: 338, type: !373, isLocal: true, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(scope: null, file: !580, line: 346, type: !403, isLocal: true, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !580, line: 346, type: !44, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(name: "error_message_count", scope: !579, file: !580, line: 69, type: !224, isLocal: false, isDefinition: true)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !579, file: !580, line: 295, type: !260, isLocal: false, isDefinition: true)
!622 = !DIGlobalVariableExpression(var: !623, expr: !DIExpression())
!623 = distinct !DIGlobalVariable(scope: null, file: !580, line: 208, type: !398, isLocal: true, isDefinition: true)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !580, line: 208, type: !626, isLocal: true, isDefinition: true)
!626 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !487)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !580, line: 214, type: !19, isLocal: true, isDefinition: true)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{null}
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(name: "program_name", scope: !634, file: !635, line: 31, type: !265, isLocal: false, isDefinition: true)
!634 = distinct !DICompileUnit(language: DW_LANG_C11, file: !635, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !636, globals: !637, splitDebugInlining: false, nameTableKind: None)
!635 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!636 = !{!317}
!637 = !{!632, !638, !640}
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !635, line: 46, type: !403, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !635, line: 49, type: !373, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !644, line: 78, type: !403, isLocal: true, isDefinition: true)
!644 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !644, line: 79, type: !378, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !644, line: 80, type: !649, isLocal: true, isDefinition: true)
!649 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !650)
!650 = !{!651}
!651 = !DISubrange(count: 13)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !644, line: 81, type: !649, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !644, line: 82, type: !358, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !644, line: 83, type: !44, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !644, line: 84, type: !403, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !644, line: 85, type: !398, isLocal: true, isDefinition: true)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !644, line: 86, type: !398, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !644, line: 87, type: !403, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !668, file: !644, line: 76, type: !760, isLocal: false, isDefinition: true)
!668 = distinct !DICompileUnit(language: DW_LANG_C11, file: !644, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !669, retainedTypes: !689, globals: !690, splitDebugInlining: false, nameTableKind: None)
!669 = !{!670, !684, !229}
!670 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !671, line: 42, baseType: !224, size: 32, elements: !672)
!671 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !681, !682, !683}
!673 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!674 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!675 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!676 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!677 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!678 = !DIEnumerator(name: "c_quoting_style", value: 5)
!679 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!680 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!681 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!682 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!683 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!684 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !671, line: 254, baseType: !224, size: 32, elements: !685)
!685 = !{!686, !687, !688}
!686 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!687 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!688 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!689 = !{!260, !261, !262}
!690 = !{!642, !645, !647, !652, !654, !656, !658, !660, !662, !664, !666, !691, !695, !705, !707, !712, !714, !716, !718, !720, !749, !756, !758}
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !668, file: !644, line: 92, type: !693, isLocal: false, isDefinition: true)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !694, size: 320, elements: !212)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !668, file: !644, line: 1040, type: !697, isLocal: false, isDefinition: true)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !644, line: 56, size: 448, elements: !698)
!698 = !{!699, !700, !701, !703, !704}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !697, file: !644, line: 59, baseType: !670, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !697, file: !644, line: 62, baseType: !260, size: 32, offset: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !697, file: !644, line: 66, baseType: !702, size: 256, offset: 64)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 256, elements: !404)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !697, file: !644, line: 69, baseType: !265, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !697, file: !644, line: 72, baseType: !265, size: 64, offset: 384)
!705 = !DIGlobalVariableExpression(var: !706, expr: !DIExpression())
!706 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !668, file: !644, line: 107, type: !697, isLocal: true, isDefinition: true)
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(name: "slot0", scope: !668, file: !644, line: 831, type: !709, isLocal: true, isDefinition: true)
!709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !710)
!710 = !{!711}
!711 = !DISubrange(count: 256)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !644, line: 321, type: !44, isLocal: true, isDefinition: true)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(scope: null, file: !644, line: 357, type: !44, isLocal: true, isDefinition: true)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(scope: null, file: !644, line: 358, type: !44, isLocal: true, isDefinition: true)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !644, line: 199, type: !398, isLocal: true, isDefinition: true)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(name: "quote", scope: !722, file: !644, line: 228, type: !747, isLocal: true, isDefinition: true)
!722 = distinct !DISubprogram(name: "gettext_quote", scope: !644, file: !644, line: 197, type: !723, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !725)
!723 = !DISubroutineType(types: !724)
!724 = !{!265, !265, !670}
!725 = !{!726, !727, !728, !729, !734}
!726 = !DILocalVariable(name: "msgid", arg: 1, scope: !722, file: !644, line: 197, type: !265)
!727 = !DILocalVariable(name: "s", arg: 2, scope: !722, file: !644, line: 197, type: !670)
!728 = !DILocalVariable(name: "translation", scope: !722, file: !644, line: 199, type: !265)
!729 = !DILocalVariable(name: "w", scope: !722, file: !644, line: 229, type: !730)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !731, line: 37, baseType: !732)
!731 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !271, line: 57, baseType: !733)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !271, line: 42, baseType: !224)
!734 = !DILocalVariable(name: "mbs", scope: !722, file: !644, line: 230, type: !735)
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !736, line: 6, baseType: !737)
!736 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !738, line: 21, baseType: !739)
!738 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !738, line: 13, size: 64, elements: !740)
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !739, file: !738, line: 15, baseType: !260, size: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !739, file: !738, line: 20, baseType: !743, size: 32, offset: 32)
!743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !739, file: !738, line: 16, size: 32, elements: !744)
!744 = !{!745, !746}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !743, file: !738, line: 18, baseType: !224, size: 32)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !743, file: !738, line: 19, baseType: !373, size: 32)
!747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 64, elements: !748)
!748 = !{!46, !375}
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(name: "slotvec", scope: !668, file: !644, line: 834, type: !751, isLocal: true, isDefinition: true)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !644, line: 823, size: 128, elements: !753)
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !752, file: !644, line: 825, baseType: !262, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !752, file: !644, line: 826, baseType: !317, size: 64, offset: 64)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(name: "nslots", scope: !668, file: !644, line: 832, type: !260, isLocal: true, isDefinition: true)
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(name: "slotvec0", scope: !668, file: !644, line: 833, type: !752, isLocal: true, isDefinition: true)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !761, size: 704, elements: !482)
!761 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!762 = !DIGlobalVariableExpression(var: !763, expr: !DIExpression())
!763 = distinct !DIGlobalVariable(scope: null, file: !764, line: 67, type: !468, isLocal: true, isDefinition: true)
!764 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !764, line: 69, type: !398, isLocal: true, isDefinition: true)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(scope: null, file: !764, line: 83, type: !398, isLocal: true, isDefinition: true)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(scope: null, file: !764, line: 83, type: !373, isLocal: true, isDefinition: true)
!771 = !DIGlobalVariableExpression(var: !772, expr: !DIExpression())
!772 = distinct !DIGlobalVariable(scope: null, file: !764, line: 85, type: !44, isLocal: true, isDefinition: true)
!773 = !DIGlobalVariableExpression(var: !774, expr: !DIExpression())
!774 = distinct !DIGlobalVariable(scope: null, file: !764, line: 88, type: !775, isLocal: true, isDefinition: true)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !776)
!776 = !{!777}
!777 = !DISubrange(count: 171)
!778 = !DIGlobalVariableExpression(var: !779, expr: !DIExpression())
!779 = distinct !DIGlobalVariable(scope: null, file: !764, line: 88, type: !780, isLocal: true, isDefinition: true)
!780 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !781)
!781 = !{!782}
!782 = !DISubrange(count: 34)
!783 = !DIGlobalVariableExpression(var: !784, expr: !DIExpression())
!784 = distinct !DIGlobalVariable(scope: null, file: !764, line: 105, type: !445, isLocal: true, isDefinition: true)
!785 = !DIGlobalVariableExpression(var: !786, expr: !DIExpression())
!786 = distinct !DIGlobalVariable(scope: null, file: !764, line: 109, type: !547, isLocal: true, isDefinition: true)
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(scope: null, file: !764, line: 113, type: !491, isLocal: true, isDefinition: true)
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(scope: null, file: !764, line: 120, type: !791, isLocal: true, isDefinition: true)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !792)
!792 = !{!793}
!793 = !DISubrange(count: 32)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(scope: null, file: !764, line: 127, type: !796, isLocal: true, isDefinition: true)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 36)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !764, line: 134, type: !425, isLocal: true, isDefinition: true)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(scope: null, file: !764, line: 142, type: !803, isLocal: true, isDefinition: true)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !804)
!804 = !{!805}
!805 = !DISubrange(count: 44)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(scope: null, file: !764, line: 150, type: !54, isLocal: true, isDefinition: true)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(scope: null, file: !764, line: 159, type: !113, isLocal: true, isDefinition: true)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !764, line: 170, type: !163, isLocal: true, isDefinition: true)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(scope: null, file: !764, line: 248, type: !358, isLocal: true, isDefinition: true)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(scope: null, file: !764, line: 248, type: !450, isLocal: true, isDefinition: true)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(scope: null, file: !764, line: 254, type: !358, isLocal: true, isDefinition: true)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(scope: null, file: !764, line: 254, type: !201, isLocal: true, isDefinition: true)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(scope: null, file: !764, line: 254, type: !425, isLocal: true, isDefinition: true)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(scope: null, file: !764, line: 259, type: !3, isLocal: true, isDefinition: true)
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(scope: null, file: !764, line: 259, type: !514, isLocal: true, isDefinition: true)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !828, file: !829, line: 26, type: !831, isLocal: false, isDefinition: true)
!828 = distinct !DICompileUnit(language: DW_LANG_C11, file: !829, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !830, splitDebugInlining: false, nameTableKind: None)
!829 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!830 = !{!826}
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 376, elements: !107)
!832 = !DIGlobalVariableExpression(var: !833, expr: !DIExpression())
!833 = distinct !DIGlobalVariable(name: "exit_failure", scope: !834, file: !835, line: 24, type: !837, isLocal: false, isDefinition: true)
!834 = distinct !DICompileUnit(language: DW_LANG_C11, file: !835, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !836, splitDebugInlining: false, nameTableKind: None)
!835 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!836 = !{!832}
!837 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !260)
!838 = !DIGlobalVariableExpression(var: !839, expr: !DIExpression())
!839 = distinct !DIGlobalVariable(scope: null, file: !840, line: 34, type: !387, isLocal: true, isDefinition: true)
!840 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!841 = !DIGlobalVariableExpression(var: !842, expr: !DIExpression())
!842 = distinct !DIGlobalVariable(scope: null, file: !840, line: 34, type: !398, isLocal: true, isDefinition: true)
!843 = !DIGlobalVariableExpression(var: !844, expr: !DIExpression())
!844 = distinct !DIGlobalVariable(scope: null, file: !840, line: 34, type: !420, isLocal: true, isDefinition: true)
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression())
!846 = distinct !DIGlobalVariable(scope: null, file: !847, line: 108, type: !206, isLocal: true, isDefinition: true)
!847 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(name: "internal_state", scope: !850, file: !847, line: 97, type: !853, isLocal: true, isDefinition: true)
!850 = distinct !DICompileUnit(language: DW_LANG_C11, file: !847, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !851, globals: !852, splitDebugInlining: false, nameTableKind: None)
!851 = !{!354, !262, !267}
!852 = !{!845, !848}
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !736, line: 6, baseType: !854)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !738, line: 21, baseType: !855)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !738, line: 13, size: 64, elements: !856)
!856 = !{!857, !858}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !855, file: !738, line: 15, baseType: !260, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !855, file: !738, line: 20, baseType: !859, size: 32, offset: 32)
!859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !855, file: !738, line: 16, size: 32, elements: !860)
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !859, file: !738, line: 18, baseType: !224, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !859, file: !738, line: 19, baseType: !373, size: 32)
!863 = !DIGlobalVariableExpression(var: !864, expr: !DIExpression())
!864 = distinct !DIGlobalVariable(scope: null, file: !865, line: 35, type: !44, isLocal: true, isDefinition: true)
!865 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!866 = !DIGlobalVariableExpression(var: !867, expr: !DIExpression())
!867 = distinct !DIGlobalVariable(scope: null, file: !865, line: 35, type: !378, isLocal: true, isDefinition: true)
!868 = distinct !DICompileUnit(language: DW_LANG_C11, file: !869, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!869 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!870 = distinct !DICompileUnit(language: DW_LANG_C11, file: !871, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !872, splitDebugInlining: false, nameTableKind: None)
!871 = !DIFile(filename: "lib/umaxtostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afa759af6e92fed26f32f683da6c23a8")
!872 = !{!873}
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !874, line: 102, baseType: !875)
!874 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !271, line: 73, baseType: !264)
!876 = distinct !DICompileUnit(language: DW_LANG_C11, file: !877, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!877 = !DIFile(filename: "lib/strintcmp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cbb3801b0b03f23f2fd643484b645368")
!878 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !879, retainedTypes: !883, globals: !884, splitDebugInlining: false, nameTableKind: None)
!879 = !{!880}
!880 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !764, line: 40, baseType: !224, size: 32, elements: !881)
!881 = !{!882}
!882 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!883 = !{!354}
!884 = !{!762, !765, !767, !769, !771, !773, !778, !783, !785, !787, !789, !794, !799, !801, !806, !808, !810, !812, !814, !816, !818, !820, !822, !824}
!885 = distinct !DICompileUnit(language: DW_LANG_C11, file: !886, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !887, retainedTypes: !918, splitDebugInlining: false, nameTableKind: None)
!886 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!887 = !{!888, !900}
!888 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !889, file: !886, line: 188, baseType: !224, size: 32, elements: !898)
!889 = distinct !DISubprogram(name: "x2nrealloc", scope: !886, file: !886, line: 176, type: !890, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !893)
!890 = !DISubroutineType(types: !891)
!891 = !{!354, !354, !892, !262}
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!893 = !{!894, !895, !896, !897}
!894 = !DILocalVariable(name: "p", arg: 1, scope: !889, file: !886, line: 176, type: !354)
!895 = !DILocalVariable(name: "pn", arg: 2, scope: !889, file: !886, line: 176, type: !892)
!896 = !DILocalVariable(name: "s", arg: 3, scope: !889, file: !886, line: 176, type: !262)
!897 = !DILocalVariable(name: "n", scope: !889, file: !886, line: 178, type: !262)
!898 = !{!899}
!899 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!900 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !901, file: !886, line: 228, baseType: !224, size: 32, elements: !898)
!901 = distinct !DISubprogram(name: "xpalloc", scope: !886, file: !886, line: 223, type: !902, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !908)
!902 = !DISubroutineType(types: !903)
!903 = !{!354, !354, !904, !905, !907, !905}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !906, line: 130, baseType: !907)
!906 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !263, line: 35, baseType: !272)
!908 = !{!909, !910, !911, !912, !913, !914, !915, !916, !917}
!909 = !DILocalVariable(name: "pa", arg: 1, scope: !901, file: !886, line: 223, type: !354)
!910 = !DILocalVariable(name: "pn", arg: 2, scope: !901, file: !886, line: 223, type: !904)
!911 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !901, file: !886, line: 223, type: !905)
!912 = !DILocalVariable(name: "n_max", arg: 4, scope: !901, file: !886, line: 223, type: !907)
!913 = !DILocalVariable(name: "s", arg: 5, scope: !901, file: !886, line: 223, type: !905)
!914 = !DILocalVariable(name: "n0", scope: !901, file: !886, line: 230, type: !905)
!915 = !DILocalVariable(name: "n", scope: !901, file: !886, line: 237, type: !905)
!916 = !DILocalVariable(name: "nbytes", scope: !901, file: !886, line: 248, type: !905)
!917 = !DILocalVariable(name: "adjusted_nbytes", scope: !901, file: !886, line: 252, type: !905)
!918 = !{!317, !354, !296, !272, !264}
!919 = distinct !DICompileUnit(language: DW_LANG_C11, file: !840, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !920, splitDebugInlining: false, nameTableKind: None)
!920 = !{!838, !841, !843}
!921 = distinct !DICompileUnit(language: DW_LANG_C11, file: !922, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!922 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!923 = distinct !DICompileUnit(language: DW_LANG_C11, file: !924, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!924 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!925 = distinct !DICompileUnit(language: DW_LANG_C11, file: !926, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !883, splitDebugInlining: false, nameTableKind: None)
!926 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!927 = distinct !DICompileUnit(language: DW_LANG_C11, file: !928, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !883, splitDebugInlining: false, nameTableKind: None)
!928 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!929 = distinct !DICompileUnit(language: DW_LANG_C11, file: !930, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !931, splitDebugInlining: false, nameTableKind: None)
!930 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!931 = !{!296, !264, !354}
!932 = distinct !DICompileUnit(language: DW_LANG_C11, file: !865, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !933, splitDebugInlining: false, nameTableKind: None)
!933 = !{!863, !866}
!934 = distinct !DICompileUnit(language: DW_LANG_C11, file: !935, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!935 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!936 = distinct !DICompileUnit(language: DW_LANG_C11, file: !937, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !883, splitDebugInlining: false, nameTableKind: None)
!937 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!938 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!939 = !{i32 7, !"Dwarf Version", i32 5}
!940 = !{i32 2, !"Debug Info Version", i32 3}
!941 = !{i32 1, !"wchar_size", i32 4}
!942 = !{i32 8, !"PIC Level", i32 2}
!943 = !{i32 7, !"PIE Level", i32 2}
!944 = !{i32 7, !"uwtable", i32 2}
!945 = !{i32 7, !"frame-pointer", i32 1}
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
!1009 = !DILocalVariable(name: "program", arg: 1, scope: !1010, file: !286, line: 836, type: !265)
!1010 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !286, file: !286, line: 836, type: !1011, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1013)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !265}
!1013 = !{!1009, !1014, !1021, !1022, !1024, !1025}
!1014 = !DILocalVariable(name: "infomap", scope: !1010, file: !286, line: 838, type: !1015)
!1015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1016, size: 896, elements: !399)
!1016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1010, file: !286, line: 838, size: 128, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1017, file: !286, line: 838, baseType: !265, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1017, file: !286, line: 838, baseType: !265, size: 64, offset: 64)
!1021 = !DILocalVariable(name: "node", scope: !1010, file: !286, line: 848, type: !265)
!1022 = !DILocalVariable(name: "map_prog", scope: !1010, file: !286, line: 849, type: !1023)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1024 = !DILocalVariable(name: "lc_messages", scope: !1010, file: !286, line: 861, type: !265)
!1025 = !DILocalVariable(name: "url_program", scope: !1010, file: !286, line: 874, type: !265)
!1026 = !DILocation(line: 0, scope: !1010, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 822, column: 7, scope: !962)
!1028 = !DILocation(line: 857, column: 3, scope: !1010, inlinedAt: !1027)
!1029 = !DILocation(line: 861, column: 29, scope: !1010, inlinedAt: !1027)
!1030 = !DILocation(line: 862, column: 7, scope: !1031, inlinedAt: !1027)
!1031 = distinct !DILexicalBlock(scope: !1010, file: !286, line: 862, column: 7)
!1032 = !DILocation(line: 862, column: 19, scope: !1031, inlinedAt: !1027)
!1033 = !DILocation(line: 862, column: 22, scope: !1031, inlinedAt: !1027)
!1034 = !DILocation(line: 862, column: 7, scope: !1010, inlinedAt: !1027)
!1035 = !DILocation(line: 868, column: 7, scope: !1036, inlinedAt: !1027)
!1036 = distinct !DILexicalBlock(scope: !1031, file: !286, line: 863, column: 5)
!1037 = !DILocation(line: 870, column: 5, scope: !1036, inlinedAt: !1027)
!1038 = !DILocation(line: 875, column: 3, scope: !1010, inlinedAt: !1027)
!1039 = !DILocation(line: 877, column: 3, scope: !1010, inlinedAt: !1027)
!1040 = !DILocation(line: 824, column: 3, scope: !946)
!1041 = !DISubprogram(name: "dcgettext", scope: !1042, file: !1042, line: 51, type: !1043, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!1042 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!317, !265, !265, !260}
!1045 = !{}
!1046 = !DISubprogram(name: "__fprintf_chk", scope: !1047, file: !1047, line: 93, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!1047 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!260, !1050, !260, !1051, null}
!1050 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !309)
!1051 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !265)
!1052 = !DISubprogram(name: "fputs_unlocked", scope: !591, file: !591, line: 691, type: !1053, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!260, !1051, !1050}
!1055 = !DILocation(line: 0, scope: !285)
!1056 = !DILocation(line: 581, column: 7, scope: !294)
!1057 = !{!1058, !1058, i64 0}
!1058 = !{!"int", !959, i64 0}
!1059 = !DILocation(line: 581, column: 19, scope: !294)
!1060 = !DILocation(line: 581, column: 7, scope: !285)
!1061 = !DILocation(line: 585, column: 26, scope: !293)
!1062 = !DILocation(line: 0, scope: !293)
!1063 = !DILocation(line: 586, column: 23, scope: !293)
!1064 = !DILocation(line: 586, column: 28, scope: !293)
!1065 = !DILocation(line: 586, column: 32, scope: !293)
!1066 = !{!959, !959, i64 0}
!1067 = !DILocation(line: 586, column: 38, scope: !293)
!1068 = !DILocalVariable(name: "__s1", arg: 1, scope: !1069, file: !1070, line: 1359, type: !265)
!1069 = distinct !DISubprogram(name: "streq", scope: !1070, file: !1070, line: 1359, type: !1071, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1073)
!1070 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!296, !265, !265}
!1073 = !{!1068, !1074}
!1074 = !DILocalVariable(name: "__s2", arg: 2, scope: !1069, file: !1070, line: 1359, type: !265)
!1075 = !DILocation(line: 0, scope: !1069, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 586, column: 41, scope: !293)
!1077 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1076)
!1078 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1076)
!1079 = !DILocation(line: 586, column: 19, scope: !293)
!1080 = !DILocation(line: 587, column: 5, scope: !293)
!1081 = !DILocation(line: 588, column: 7, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !285, file: !286, line: 588, column: 7)
!1083 = !DILocation(line: 588, column: 7, scope: !285)
!1084 = !DILocation(line: 590, column: 7, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1082, file: !286, line: 589, column: 5)
!1086 = !DILocation(line: 591, column: 7, scope: !1085)
!1087 = !DILocation(line: 595, column: 37, scope: !285)
!1088 = !DILocation(line: 595, column: 35, scope: !285)
!1089 = !DILocation(line: 596, column: 29, scope: !285)
!1090 = !DILocation(line: 597, column: 8, scope: !302)
!1091 = !DILocation(line: 597, column: 7, scope: !285)
!1092 = !DILocation(line: 604, column: 24, scope: !301)
!1093 = !DILocation(line: 604, column: 12, scope: !302)
!1094 = !DILocation(line: 0, scope: !300)
!1095 = !DILocation(line: 610, column: 16, scope: !300)
!1096 = !DILocation(line: 610, column: 7, scope: !300)
!1097 = !DILocation(line: 611, column: 21, scope: !300)
!1098 = !{!1099, !1099, i64 0}
!1099 = !{!"short", !959, i64 0}
!1100 = !DILocation(line: 611, column: 19, scope: !300)
!1101 = !DILocation(line: 611, column: 16, scope: !300)
!1102 = !DILocation(line: 610, column: 30, scope: !300)
!1103 = distinct !{!1103, !1096, !1097, !1104}
!1104 = !{!"llvm.loop.mustprogress"}
!1105 = !DILocation(line: 612, column: 18, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !300, file: !286, line: 612, column: 11)
!1107 = !DILocation(line: 612, column: 11, scope: !300)
!1108 = !DILocation(line: 620, column: 23, scope: !285)
!1109 = !DILocation(line: 625, column: 39, scope: !285)
!1110 = !DILocation(line: 626, column: 3, scope: !285)
!1111 = !DILocation(line: 626, column: 10, scope: !285)
!1112 = !DILocation(line: 626, column: 21, scope: !285)
!1113 = !DILocation(line: 628, column: 44, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !286, line: 628, column: 11)
!1115 = distinct !DILexicalBlock(scope: !285, file: !286, line: 627, column: 5)
!1116 = !DILocation(line: 628, column: 32, scope: !1114)
!1117 = !DILocation(line: 628, column: 49, scope: !1114)
!1118 = !DILocation(line: 628, column: 11, scope: !1115)
!1119 = !DILocation(line: 630, column: 11, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1115, file: !286, line: 630, column: 11)
!1121 = !DILocation(line: 630, column: 11, scope: !1115)
!1122 = !DILocation(line: 632, column: 26, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1124, file: !286, line: 632, column: 15)
!1124 = distinct !DILexicalBlock(scope: !1120, file: !286, line: 631, column: 9)
!1125 = !DILocation(line: 632, column: 34, scope: !1123)
!1126 = !DILocation(line: 632, column: 37, scope: !1123)
!1127 = !DILocation(line: 632, column: 15, scope: !1124)
!1128 = !DILocation(line: 640, column: 16, scope: !1115)
!1129 = distinct !{!1129, !1110, !1130, !1104}
!1130 = !DILocation(line: 641, column: 5, scope: !285)
!1131 = !DILocation(line: 644, column: 3, scope: !285)
!1132 = !DILocation(line: 0, scope: !1069, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 648, column: 31, scope: !285)
!1134 = !DILocation(line: 0, scope: !1069, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 649, column: 31, scope: !285)
!1136 = !DILocation(line: 0, scope: !1069, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 650, column: 31, scope: !285)
!1138 = !DILocation(line: 0, scope: !1069, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 651, column: 31, scope: !285)
!1140 = !DILocation(line: 0, scope: !1069, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 652, column: 31, scope: !285)
!1142 = !DILocation(line: 0, scope: !1069, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 653, column: 31, scope: !285)
!1144 = !DILocation(line: 0, scope: !1069, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 654, column: 31, scope: !285)
!1146 = !DILocation(line: 0, scope: !1069, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 655, column: 31, scope: !285)
!1148 = !DILocation(line: 0, scope: !1069, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 656, column: 31, scope: !285)
!1150 = !DILocation(line: 0, scope: !1069, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 657, column: 31, scope: !285)
!1152 = !DILocation(line: 663, column: 7, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !285, file: !286, line: 663, column: 7)
!1154 = !DILocation(line: 664, column: 7, scope: !1153)
!1155 = !DILocation(line: 664, column: 10, scope: !1153)
!1156 = !DILocation(line: 663, column: 7, scope: !285)
!1157 = !DILocation(line: 669, column: 7, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1153, file: !286, line: 665, column: 5)
!1159 = !DILocation(line: 671, column: 5, scope: !1158)
!1160 = !DILocation(line: 676, column: 7, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1153, file: !286, line: 673, column: 5)
!1162 = !DILocation(line: 679, column: 3, scope: !285)
!1163 = !DILocation(line: 683, column: 3, scope: !285)
!1164 = !DILocation(line: 686, column: 3, scope: !285)
!1165 = !DILocation(line: 688, column: 3, scope: !285)
!1166 = !DILocation(line: 691, column: 3, scope: !285)
!1167 = !DILocation(line: 695, column: 3, scope: !285)
!1168 = !DILocation(line: 696, column: 1, scope: !285)
!1169 = !DISubprogram(name: "__printf_chk", scope: !1047, file: !1047, line: 95, type: !1170, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!260, !260, !1051, null}
!1172 = !DISubprogram(name: "setlocale", scope: !1173, file: !1173, line: 122, type: !1174, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!1173 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!317, !260, !265}
!1176 = !DISubprogram(name: "strncmp", scope: !1177, file: !1177, line: 159, type: !1178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!1177 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!260, !265, !265, !262}
!1180 = !DISubprogram(name: "exit", scope: !1181, file: !1181, line: 624, type: !947, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!1181 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1182 = !DISubprogram(name: "getenv", scope: !1181, file: !1181, line: 641, type: !1183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!317, !265}
!1185 = !DISubprogram(name: "strcmp", scope: !1177, file: !1177, line: 156, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!260, !265, !265}
!1188 = !DISubprogram(name: "strspn", scope: !1177, file: !1177, line: 297, type: !1189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!1189 = !DISubroutineType(types: !1190)
!1190 = !{!264, !265, !265}
!1191 = !DISubprogram(name: "strchr", scope: !1177, file: !1177, line: 246, type: !1192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!317, !265, !260}
!1194 = !DISubprogram(name: "__ctype_b_loc", scope: !230, file: !230, line: 79, type: !1195, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!1197}
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!1200 = !DISubprogram(name: "strcspn", scope: !1177, file: !1177, line: 293, type: !1189, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!1201 = !DISubprogram(name: "fwrite_unlocked", scope: !591, file: !591, line: 704, type: !1202, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
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
!1213 = !DILocalVariable(name: "value", scope: !1207, file: !2, line: 845, type: !296)
!1214 = !DILocation(line: 0, scope: !1207)
!1215 = !DILocation(line: 856, column: 21, scope: !1207)
!1216 = !DILocation(line: 856, column: 3, scope: !1207)
!1217 = !DILocation(line: 857, column: 3, scope: !1207)
!1218 = !DILocation(line: 858, column: 3, scope: !1207)
!1219 = !DILocation(line: 859, column: 3, scope: !1207)
!1220 = !DILocalVariable(name: "status", arg: 1, scope: !1221, file: !286, line: 102, type: !260)
!1221 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !286, file: !286, line: 102, type: !947, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1222)
!1222 = !{!1220}
!1223 = !DILocation(line: 0, scope: !1221, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 861, column: 3, scope: !1207)
!1225 = !DILocation(line: 105, column: 18, scope: !1226, inlinedAt: !1224)
!1226 = distinct !DILexicalBlock(scope: !1221, file: !286, line: 104, column: 7)
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
!1248 = !DISubprogram(name: "bindtextdomain", scope: !1042, file: !1042, line: 86, type: !1249, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!1249 = !DISubroutineType(types: !1250)
!1250 = !{!317, !265, !265}
!1251 = !DISubprogram(name: "textdomain", scope: !1042, file: !1042, line: 82, type: !1183, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!1252 = !DISubprogram(name: "atexit", scope: !1181, file: !1181, line: 602, type: !1253, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{!260, !629}
!1255 = distinct !DISubprogram(name: "posixtest", scope: !2, file: !2, line: 616, type: !1256, scopeLine: 617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1258)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!296, !260}
!1258 = !{!1259, !1260}
!1259 = !DILocalVariable(name: "nargs", arg: 1, scope: !1255, file: !2, line: 616, type: !260)
!1260 = !DILocalVariable(name: "value", scope: !1255, file: !2, line: 618, type: !296)
!1261 = !DILocation(line: 0, scope: !1255)
!1262 = !DILocation(line: 620, column: 3, scope: !1255)
!1263 = !DILocation(line: 562, column: 10, scope: !1264, inlinedAt: !1267)
!1264 = distinct !DISubprogram(name: "one_argument", scope: !2, file: !2, line: 560, type: !1265, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1045)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{!296}
!1267 = distinct !DILocation(line: 623, column: 17, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1255, file: !2, line: 621, column: 5)
!1269 = !DILocation(line: 562, column: 18, scope: !1264, inlinedAt: !1267)
!1270 = !DILocation(line: 562, column: 25, scope: !1264, inlinedAt: !1267)
!1271 = !DILocation(line: 624, column: 9, scope: !1268)
!1272 = !DILocation(line: 570, column: 14, scope: !1273, inlinedAt: !1277)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !2, line: 570, column: 7)
!1274 = distinct !DISubprogram(name: "two_arguments", scope: !2, file: !2, line: 566, type: !1265, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1275)
!1275 = !{!1276}
!1276 = !DILocalVariable(name: "value", scope: !1274, file: !2, line: 568, type: !296)
!1277 = distinct !DILocation(line: 627, column: 17, scope: !1268)
!1278 = !DILocation(line: 570, column: 19, scope: !1273, inlinedAt: !1277)
!1279 = !DILocation(line: 0, scope: !1069, inlinedAt: !1280)
!1280 = distinct !DILocation(line: 570, column: 7, scope: !1273, inlinedAt: !1277)
!1281 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1280)
!1282 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1280)
!1283 = !DILocation(line: 570, column: 7, scope: !1274, inlinedAt: !1277)
!1284 = !DILocalVariable(name: "f", arg: 1, scope: !1285, file: !2, line: 110, type: !296)
!1285 = distinct !DISubprogram(name: "advance", scope: !2, file: !2, line: 110, type: !1286, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1288)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{null, !296}
!1288 = !{!1284}
!1289 = !DILocation(line: 0, scope: !1285, inlinedAt: !1290)
!1290 = distinct !DILocation(line: 572, column: 7, scope: !1291, inlinedAt: !1277)
!1291 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 571, column: 5)
!1292 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1290)
!1293 = !DILocation(line: 562, column: 18, scope: !1264, inlinedAt: !1294)
!1294 = distinct !DILocation(line: 573, column: 17, scope: !1291, inlinedAt: !1277)
!1295 = !DILocation(line: 562, column: 10, scope: !1264, inlinedAt: !1294)
!1296 = !DILocation(line: 562, column: 25, scope: !1264, inlinedAt: !1294)
!1297 = !DILocation(line: 0, scope: !1274, inlinedAt: !1277)
!1298 = !DILocation(line: 574, column: 5, scope: !1291, inlinedAt: !1277)
!1299 = !DILocation(line: 575, column: 12, scope: !1300, inlinedAt: !1277)
!1300 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 575, column: 12)
!1301 = !DILocation(line: 575, column: 25, scope: !1300, inlinedAt: !1277)
!1302 = !DILocation(line: 576, column: 12, scope: !1300, inlinedAt: !1277)
!1303 = !DILocation(line: 576, column: 15, scope: !1300, inlinedAt: !1277)
!1304 = !DILocation(line: 576, column: 28, scope: !1300, inlinedAt: !1277)
!1305 = !DILocation(line: 577, column: 12, scope: !1300, inlinedAt: !1277)
!1306 = !DILocation(line: 577, column: 15, scope: !1300, inlinedAt: !1277)
!1307 = !DILocation(line: 577, column: 28, scope: !1300, inlinedAt: !1277)
!1308 = !DILocation(line: 575, column: 12, scope: !1273, inlinedAt: !1277)
!1309 = !DILocation(line: 579, column: 15, scope: !1310, inlinedAt: !1277)
!1310 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 578, column: 5)
!1311 = !DILocation(line: 582, column: 5, scope: !1300, inlinedAt: !1277)
!1312 = !DILocation(line: 631, column: 17, scope: !1268)
!1313 = !DILocation(line: 632, column: 9, scope: !1268)
!1314 = !DILocation(line: 635, column: 20, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 635, column: 13)
!1316 = !DILocation(line: 635, column: 25, scope: !1315)
!1317 = !DILocation(line: 0, scope: !1069, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 635, column: 13, scope: !1315)
!1319 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1318)
!1320 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1318)
!1321 = !DILocation(line: 635, column: 13, scope: !1268)
!1322 = !DILocation(line: 0, scope: !1285, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 637, column: 13, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 636, column: 11)
!1325 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1323)
!1326 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1323)
!1327 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 114, column: 7)
!1328 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1323)
!1329 = !DILocation(line: 638, column: 22, scope: !1324)
!1330 = !DILocation(line: 638, column: 21, scope: !1324)
!1331 = !DILocation(line: 639, column: 13, scope: !1324)
!1332 = !DILocation(line: 0, scope: !1069, inlinedAt: !1333)
!1333 = distinct !DILocation(line: 641, column: 13, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 641, column: 13)
!1335 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1333)
!1336 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1333)
!1337 = !DILocation(line: 641, column: 36, scope: !1334)
!1338 = !DILocation(line: 641, column: 55, scope: !1334)
!1339 = !DILocation(line: 641, column: 46, scope: !1334)
!1340 = !DILocation(line: 0, scope: !1069, inlinedAt: !1341)
!1341 = distinct !DILocation(line: 641, column: 39, scope: !1334)
!1342 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1341)
!1343 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1341)
!1344 = !DILocation(line: 641, column: 13, scope: !1268)
!1345 = !DILocation(line: 0, scope: !1285, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 643, column: 13, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1334, file: !2, line: 642, column: 11)
!1348 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1346)
!1349 = !DILocation(line: 570, column: 14, scope: !1273, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 644, column: 21, scope: !1347)
!1351 = !DILocation(line: 0, scope: !1069, inlinedAt: !1352)
!1352 = distinct !DILocation(line: 570, column: 7, scope: !1273, inlinedAt: !1350)
!1353 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1352)
!1354 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1352)
!1355 = !DILocation(line: 570, column: 7, scope: !1274, inlinedAt: !1350)
!1356 = !DILocation(line: 0, scope: !1285, inlinedAt: !1357)
!1357 = distinct !DILocation(line: 572, column: 7, scope: !1291, inlinedAt: !1350)
!1358 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1357)
!1359 = !DILocation(line: 562, column: 10, scope: !1264, inlinedAt: !1360)
!1360 = distinct !DILocation(line: 573, column: 17, scope: !1291, inlinedAt: !1350)
!1361 = !DILocation(line: 562, column: 25, scope: !1264, inlinedAt: !1360)
!1362 = !DILocation(line: 0, scope: !1274, inlinedAt: !1350)
!1363 = !DILocation(line: 574, column: 5, scope: !1291, inlinedAt: !1350)
!1364 = !DILocation(line: 575, column: 12, scope: !1300, inlinedAt: !1350)
!1365 = !DILocation(line: 575, column: 25, scope: !1300, inlinedAt: !1350)
!1366 = !DILocation(line: 576, column: 12, scope: !1300, inlinedAt: !1350)
!1367 = !DILocation(line: 576, column: 15, scope: !1300, inlinedAt: !1350)
!1368 = !DILocation(line: 576, column: 28, scope: !1300, inlinedAt: !1350)
!1369 = !DILocation(line: 577, column: 12, scope: !1300, inlinedAt: !1350)
!1370 = !DILocation(line: 577, column: 15, scope: !1300, inlinedAt: !1350)
!1371 = !DILocation(line: 577, column: 28, scope: !1300, inlinedAt: !1350)
!1372 = !DILocation(line: 575, column: 12, scope: !1273, inlinedAt: !1350)
!1373 = !DILocation(line: 579, column: 15, scope: !1310, inlinedAt: !1350)
!1374 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1375)
!1375 = distinct !DILocation(line: 645, column: 13, scope: !1347)
!1376 = !DILocation(line: 582, column: 5, scope: !1300, inlinedAt: !1350)
!1377 = !DILocation(line: 0, scope: !1285, inlinedAt: !1375)
!1378 = !DILocation(line: 646, column: 13, scope: !1347)
!1379 = !DILocation(line: 651, column: 9, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 651, column: 9)
!1381 = distinct !DILexicalBlock(scope: !1268, file: !2, line: 651, column: 9)
!1382 = !DILocation(line: 651, column: 9, scope: !1381)
!1383 = !DILocation(line: 553, column: 7, scope: !1384, inlinedAt: !1386)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !2, line: 553, column: 7)
!1385 = distinct !DISubprogram(name: "expr", scope: !2, file: !2, line: 551, type: !1265, scopeLine: 552, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1045)
!1386 = distinct !DILocation(line: 652, column: 17, scope: !1268)
!1387 = !DILocation(line: 553, column: 14, scope: !1384, inlinedAt: !1386)
!1388 = !DILocation(line: 553, column: 11, scope: !1384, inlinedAt: !1386)
!1389 = !DILocation(line: 553, column: 7, scope: !1385, inlinedAt: !1386)
!1390 = !DILocation(line: 554, column: 5, scope: !1384, inlinedAt: !1386)
!1391 = !DILocation(line: 556, column: 10, scope: !1385, inlinedAt: !1386)
!1392 = !DILocation(line: 653, column: 5, scope: !1268)
!1393 = !DILocation(line: 655, column: 3, scope: !1255)
!1394 = distinct !DISubprogram(name: "test_syntax_error", scope: !2, file: !2, line: 97, type: !1395, scopeLine: 98, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1397)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{null, !265, null}
!1397 = !{!1398, !1399}
!1398 = !DILocalVariable(name: "format", arg: 1, scope: !1394, file: !2, line: 97, type: !265)
!1399 = !DILocalVariable(name: "ap", scope: !1394, file: !2, line: 99, type: !1400)
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !593, line: 22, baseType: !1401)
!1401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1402, baseType: !1403)
!1402 = !DIFile(filename: "src/test.c", directory: "/src")
!1403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !1404)
!1404 = !{!1405, !1406, !1407, !1408, !1409}
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !1403, file: !1402, line: 99, baseType: !354, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !1403, file: !1402, line: 99, baseType: !354, size: 64, offset: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !1403, file: !1402, line: 99, baseType: !354, size: 64, offset: 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !1403, file: !1402, line: 99, baseType: !260, size: 32, offset: 192)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !1403, file: !1402, line: 99, baseType: !260, size: 32, offset: 224)
!1410 = !DILocation(line: 0, scope: !1394)
!1411 = !DILocation(line: 99, column: 3, scope: !1394)
!1412 = !DILocation(line: 99, column: 11, scope: !1394)
!1413 = !DILocation(line: 100, column: 3, scope: !1394)
!1414 = !DILocation(line: 101, column: 3, scope: !1394)
!1415 = !{i64 0, i64 8, !957, i64 8, i64 8, !957, i64 16, i64 8, !957, i64 24, i64 4, !1057, i64 28, i64 4, !1057}
!1416 = !DILocation(line: 102, column: 3, scope: !1394)
!1417 = distinct !DISubprogram(name: "unary_operator", scope: !2, file: !2, line: 366, type: !1265, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1418)
!1418 = !{!1419, !1454, !1457, !1458, !1462, !1463, !1466, !1467, !1469}
!1419 = !DILocalVariable(name: "stat_buf", scope: !1417, file: !2, line: 368, type: !1420)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1421, line: 44, size: 1024, elements: !1422)
!1421 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "910289113a4b669f8271729077b0f267")
!1422 = !{!1423, !1425, !1427, !1429, !1431, !1433, !1435, !1436, !1437, !1438, !1440, !1441, !1443, !1450, !1451, !1452}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1420, file: !1421, line: 46, baseType: !1424, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !271, line: 145, baseType: !264)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1420, file: !1421, line: 47, baseType: !1426, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !271, line: 148, baseType: !264)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1420, file: !1421, line: 48, baseType: !1428, size: 32, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !271, line: 150, baseType: !224)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1420, file: !1421, line: 49, baseType: !1430, size: 32, offset: 160)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !271, line: 151, baseType: !224)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1420, file: !1421, line: 50, baseType: !1432, size: 32, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !271, line: 146, baseType: !224)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1420, file: !1421, line: 51, baseType: !1434, size: 32, offset: 224)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !271, line: 147, baseType: !224)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1420, file: !1421, line: 52, baseType: !1424, size: 64, offset: 256)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !1420, file: !1421, line: 53, baseType: !1424, size: 64, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1420, file: !1421, line: 54, baseType: !336, size: 64, offset: 384)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1420, file: !1421, line: 55, baseType: !1439, size: 32, offset: 448)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !271, line: 175, baseType: !260)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !1420, file: !1421, line: 56, baseType: !260, size: 32, offset: 480)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1420, file: !1421, line: 57, baseType: !1442, size: 64, offset: 512)
!1442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !271, line: 180, baseType: !272)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1420, file: !1421, line: 65, baseType: !1444, size: 128, offset: 576)
!1444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1445, line: 11, size: 128, elements: !1446)
!1445 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1444, file: !1445, line: 16, baseType: !270, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1444, file: !1445, line: 21, baseType: !1449, size: 64, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !271, line: 197, baseType: !272)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1420, file: !1421, line: 66, baseType: !1444, size: 128, offset: 704)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1420, file: !1421, line: 67, baseType: !1444, size: 128, offset: 832)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1420, file: !1421, line: 79, baseType: !1453, size: 64, offset: 960)
!1453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 64, elements: !45)
!1454 = !DILocalVariable(name: "atime", scope: !1455, file: !2, line: 401, type: !1444)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 397, column: 7)
!1456 = distinct !DILexicalBlock(scope: !1417, file: !2, line: 371, column: 5)
!1457 = !DILocalVariable(name: "mtime", scope: !1455, file: !2, line: 402, type: !1444)
!1458 = !DILocalVariable(name: "euid", scope: !1459, file: !2, line: 412, type: !1460)
!1459 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 407, column: 7)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1461, line: 79, baseType: !1432)
!1461 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1462 = !DILocalVariable(name: "NO_UID", scope: !1459, file: !2, line: 413, type: !1460)
!1463 = !DILocalVariable(name: "egid", scope: !1464, file: !2, line: 423, type: !1465)
!1464 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 418, column: 7)
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1461, line: 64, baseType: !1434)
!1466 = !DILocalVariable(name: "NO_GID", scope: !1464, file: !2, line: 424, type: !1465)
!1467 = !DILocalVariable(name: "fd", scope: !1468, file: !2, line: 489, type: !272)
!1468 = distinct !DILexicalBlock(scope: !1456, file: !2, line: 488, column: 7)
!1469 = !DILocalVariable(name: "arg", scope: !1468, file: !2, line: 490, type: !265)
!1470 = !DILocation(line: 368, column: 3, scope: !1417)
!1471 = !DILocation(line: 368, column: 15, scope: !1417)
!1472 = !DILocation(line: 370, column: 11, scope: !1417)
!1473 = !DILocation(line: 370, column: 16, scope: !1417)
!1474 = !DILocation(line: 370, column: 3, scope: !1417)
!1475 = !DILocation(line: 373, column: 26, scope: !1456)
!1476 = !DILocation(line: 373, column: 67, scope: !1456)
!1477 = !DILocation(line: 373, column: 72, scope: !1456)
!1478 = !DILocation(line: 373, column: 60, scope: !1456)
!1479 = !DILocation(line: 373, column: 7, scope: !1456)
!1480 = !DILocation(line: 0, scope: !1285, inlinedAt: !1481)
!1481 = distinct !DILocation(line: 121, column: 3, scope: !1482, inlinedAt: !1483)
!1482 = distinct !DISubprogram(name: "unary_advance", scope: !2, file: !2, line: 119, type: !630, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1045)
!1483 = distinct !DILocation(line: 381, column: 7, scope: !1456)
!1484 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1481)
!1485 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1481)
!1486 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1481)
!1487 = !DILocation(line: 122, column: 3, scope: !1482, inlinedAt: !1483)
!1488 = !DILocation(line: 382, column: 20, scope: !1456)
!1489 = !DILocation(line: 382, column: 14, scope: !1456)
!1490 = !DILocation(line: 382, column: 46, scope: !1456)
!1491 = !DILocation(line: 382, column: 7, scope: !1456)
!1492 = !DILocation(line: 0, scope: !1285, inlinedAt: !1493)
!1493 = distinct !DILocation(line: 121, column: 3, scope: !1482, inlinedAt: !1494)
!1494 = distinct !DILocation(line: 385, column: 7, scope: !1456)
!1495 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1493)
!1496 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1493)
!1497 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1493)
!1498 = !DILocation(line: 122, column: 3, scope: !1482, inlinedAt: !1494)
!1499 = !DILocation(line: 386, column: 26, scope: !1456)
!1500 = !DILocation(line: 386, column: 14, scope: !1456)
!1501 = !DILocation(line: 386, column: 47, scope: !1456)
!1502 = !DILocation(line: 386, column: 7, scope: !1456)
!1503 = !DILocation(line: 0, scope: !1285, inlinedAt: !1504)
!1504 = distinct !DILocation(line: 121, column: 3, scope: !1482, inlinedAt: !1505)
!1505 = distinct !DILocation(line: 389, column: 7, scope: !1456)
!1506 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1504)
!1507 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1504)
!1508 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1504)
!1509 = !DILocation(line: 122, column: 3, scope: !1482, inlinedAt: !1505)
!1510 = !DILocation(line: 390, column: 26, scope: !1456)
!1511 = !DILocation(line: 390, column: 14, scope: !1456)
!1512 = !DILocation(line: 390, column: 47, scope: !1456)
!1513 = !DILocation(line: 390, column: 7, scope: !1456)
!1514 = !DILocation(line: 0, scope: !1285, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 121, column: 3, scope: !1482, inlinedAt: !1516)
!1516 = distinct !DILocation(line: 393, column: 7, scope: !1456)
!1517 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1515)
!1518 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1515)
!1519 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1515)
!1520 = !DILocation(line: 122, column: 3, scope: !1482, inlinedAt: !1516)
!1521 = !DILocation(line: 394, column: 26, scope: !1456)
!1522 = !DILocation(line: 394, column: 14, scope: !1456)
!1523 = !DILocation(line: 394, column: 47, scope: !1456)
!1524 = !DILocation(line: 394, column: 7, scope: !1456)
!1525 = !DILocation(line: 0, scope: !1285, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 121, column: 3, scope: !1482, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 398, column: 9, scope: !1455)
!1528 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1526)
!1529 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1526)
!1530 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1526)
!1531 = !DILocation(line: 122, column: 3, scope: !1482, inlinedAt: !1527)
!1532 = !DILocation(line: 399, column: 19, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1455, file: !2, line: 399, column: 13)
!1534 = !DILocation(line: 399, column: 13, scope: !1533)
!1535 = !DILocation(line: 399, column: 45, scope: !1533)
!1536 = !DILocation(line: 399, column: 13, scope: !1455)
!1537 = !DILocalVariable(name: "st", arg: 1, scope: !1538, file: !1539, line: 147, type: !1542)
!1538 = distinct !DISubprogram(name: "get_stat_atime", scope: !1539, file: !1539, line: 147, type: !1540, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1544)
!1539 = !DIFile(filename: "./lib/stat-time.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f4edb1fd4cb81bf2ea0eec563958d759")
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!1444, !1542}
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1420)
!1544 = !{!1537}
!1545 = !DILocation(line: 0, scope: !1538, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 401, column: 33, scope: !1455)
!1547 = !DILocation(line: 150, column: 10, scope: !1538, inlinedAt: !1546)
!1548 = !DILocation(line: 0, scope: !1455)
!1549 = !DILocalVariable(name: "st", arg: 1, scope: !1550, file: !1539, line: 169, type: !1542)
!1550 = distinct !DISubprogram(name: "get_stat_mtime", scope: !1539, file: !1539, line: 169, type: !1540, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1551)
!1551 = !{!1549}
!1552 = !DILocation(line: 0, scope: !1550, inlinedAt: !1553)
!1553 = distinct !DILocation(line: 402, column: 33, scope: !1455)
!1554 = !DILocation(line: 172, column: 10, scope: !1550, inlinedAt: !1553)
!1555 = !DILocalVariable(name: "a", arg: 1, scope: !1556, file: !1557, line: 64, type: !1444)
!1556 = distinct !DISubprogram(name: "timespec_cmp", scope: !1557, file: !1557, line: 64, type: !1558, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1560)
!1557 = !DIFile(filename: "./lib/timespec.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f2321879fdee55a014e00353b7423449")
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!260, !1444, !1444}
!1560 = !{!1555, !1561}
!1561 = !DILocalVariable(name: "b", arg: 2, scope: !1556, file: !1557, line: 64, type: !1444)
!1562 = !DILocation(line: 0, scope: !1556, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 403, column: 17, scope: !1455)
!1564 = !DILocation(line: 66, column: 45, scope: !1556, inlinedAt: !1563)
!1565 = !DILocation(line: 66, column: 12, scope: !1556, inlinedAt: !1563)
!1566 = !DILocation(line: 66, column: 43, scope: !1556, inlinedAt: !1563)
!1567 = !DILocation(line: 403, column: 45, scope: !1455)
!1568 = !DILocation(line: 0, scope: !1285, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 121, column: 3, scope: !1482, inlinedAt: !1570)
!1570 = distinct !DILocation(line: 408, column: 9, scope: !1459)
!1571 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1569)
!1572 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1569)
!1573 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1569)
!1574 = !DILocation(line: 122, column: 3, scope: !1482, inlinedAt: !1570)
!1575 = !DILocation(line: 409, column: 19, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1459, file: !2, line: 409, column: 13)
!1577 = !DILocation(line: 409, column: 13, scope: !1576)
!1578 = !DILocation(line: 409, column: 45, scope: !1576)
!1579 = !DILocation(line: 409, column: 13, scope: !1459)
!1580 = !DILocation(line: 411, column: 9, scope: !1459)
!1581 = !DILocation(line: 411, column: 15, scope: !1459)
!1582 = !DILocation(line: 412, column: 22, scope: !1459)
!1583 = !DILocation(line: 0, scope: !1459)
!1584 = !DILocation(line: 414, column: 24, scope: !1459)
!1585 = !DILocation(line: 414, column: 34, scope: !1459)
!1586 = !DILocation(line: 414, column: 37, scope: !1459)
!1587 = !DILocation(line: 414, column: 44, scope: !1459)
!1588 = !DILocation(line: 414, column: 64, scope: !1459)
!1589 = !{!1590, !1058, i64 24}
!1590 = !{!"stat", !1591, i64 0, !1591, i64 8, !1058, i64 16, !1058, i64 20, !1058, i64 24, !1058, i64 28, !1591, i64 32, !1591, i64 40, !1591, i64 48, !1058, i64 56, !1058, i64 60, !1591, i64 64, !1592, i64 72, !1592, i64 88, !1592, i64 104, !959, i64 120}
!1591 = !{!"long", !959, i64 0}
!1592 = !{!"timespec", !1591, i64 0, !1591, i64 8}
!1593 = !DILocation(line: 414, column: 52, scope: !1459)
!1594 = !DILocation(line: 0, scope: !1285, inlinedAt: !1595)
!1595 = distinct !DILocation(line: 121, column: 3, scope: !1482, inlinedAt: !1596)
!1596 = distinct !DILocation(line: 419, column: 9, scope: !1464)
!1597 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1595)
!1598 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1595)
!1599 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1595)
!1600 = !DILocation(line: 122, column: 3, scope: !1482, inlinedAt: !1596)
!1601 = !DILocation(line: 420, column: 19, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1464, file: !2, line: 420, column: 13)
!1603 = !DILocation(line: 420, column: 13, scope: !1602)
!1604 = !DILocation(line: 420, column: 45, scope: !1602)
!1605 = !DILocation(line: 420, column: 13, scope: !1464)
!1606 = !DILocation(line: 422, column: 9, scope: !1464)
!1607 = !DILocation(line: 422, column: 15, scope: !1464)
!1608 = !DILocation(line: 423, column: 22, scope: !1464)
!1609 = !DILocation(line: 0, scope: !1464)
!1610 = !DILocation(line: 425, column: 24, scope: !1464)
!1611 = !DILocation(line: 425, column: 34, scope: !1464)
!1612 = !DILocation(line: 425, column: 37, scope: !1464)
!1613 = !DILocation(line: 425, column: 44, scope: !1464)
!1614 = !DILocation(line: 425, column: 64, scope: !1464)
!1615 = !{!1590, !1058, i64 28}
!1616 = !DILocation(line: 425, column: 52, scope: !1464)
!1617 = !DILocation(line: 0, scope: !1285, inlinedAt: !1618)
!1618 = distinct !DILocation(line: 121, column: 3, scope: !1482, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 429, column: 7, scope: !1456)
!1620 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1618)
!1621 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1618)
!1622 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1618)
!1623 = !DILocation(line: 122, column: 3, scope: !1482, inlinedAt: !1619)
!1624 = !DILocation(line: 432, column: 21, scope: !1456)
!1625 = !DILocation(line: 432, column: 15, scope: !1456)
!1626 = !DILocation(line: 432, column: 47, scope: !1456)
!1627 = !DILocation(line: 433, column: 15, scope: !1456)
!1628 = !DILocation(line: 432, column: 7, scope: !1456)
!1629 = !DILocation(line: 0, scope: !1285, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 121, column: 3, scope: !1482, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 436, column: 7, scope: !1456)
!1632 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1630)
!1633 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1630)
!1634 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1630)
!1635 = !DILocation(line: 122, column: 3, scope: !1482, inlinedAt: !1631)
!1636 = !DILocation(line: 437, column: 21, scope: !1456)
!1637 = !DILocation(line: 437, column: 15, scope: !1456)
!1638 = !DILocation(line: 437, column: 47, scope: !1456)
!1639 = !DILocation(line: 438, column: 15, scope: !1456)
!1640 = !DILocation(line: 437, column: 7, scope: !1456)
!1641 = !DILocation(line: 0, scope: !1285, inlinedAt: !1642)
!1642 = distinct !DILocation(line: 121, column: 3, scope: !1482, inlinedAt: !1643)
!1643 = distinct !DILocation(line: 441, column: 7, scope: !1456)
!1644 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1642)
!1645 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1642)
!1646 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1642)
!1647 = !DILocation(line: 122, column: 3, scope: !1482, inlinedAt: !1643)
!1648 = !DILocation(line: 442, column: 21, scope: !1456)
!1649 = !DILocation(line: 442, column: 15, scope: !1456)
!1650 = !DILocation(line: 442, column: 47, scope: !1456)
!1651 = !DILocation(line: 443, column: 15, scope: !1456)
!1652 = !DILocation(line: 442, column: 7, scope: !1456)
!1653 = !DILocation(line: 0, scope: !1285, inlinedAt: !1654)
!1654 = distinct !DILocation(line: 121, column: 3, scope: !1482, inlinedAt: !1655)
!1655 = distinct !DILocation(line: 446, column: 7, scope: !1456)
!1656 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1654)
!1657 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1654)
!1658 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1654)
!1659 = !DILocation(line: 122, column: 3, scope: !1482, inlinedAt: !1655)
!1660 = !DILocation(line: 447, column: 21, scope: !1456)
!1661 = !DILocation(line: 447, column: 15, scope: !1456)
!1662 = !DILocation(line: 447, column: 47, scope: !1456)
!1663 = !DILocation(line: 448, column: 15, scope: !1456)
!1664 = !DILocation(line: 447, column: 7, scope: !1456)
!1665 = !DILocation(line: 0, scope: !1285, inlinedAt: !1666)
!1666 = distinct !DILocation(line: 121, column: 3, scope: !1482, inlinedAt: !1667)
!1667 = distinct !DILocation(line: 451, column: 7, scope: !1456)
!1668 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1666)
!1669 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1666)
!1670 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1666)
!1671 = !DILocation(line: 122, column: 3, scope: !1482, inlinedAt: !1667)
!1672 = !DILocation(line: 452, column: 21, scope: !1456)
!1673 = !DILocation(line: 452, column: 15, scope: !1456)
!1674 = !DILocation(line: 452, column: 47, scope: !1456)
!1675 = !DILocation(line: 453, column: 15, scope: !1456)
!1676 = !DILocation(line: 452, column: 7, scope: !1456)
!1677 = !DILocation(line: 0, scope: !1285, inlinedAt: !1678)
!1678 = distinct !DILocation(line: 121, column: 3, scope: !1482, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 456, column: 7, scope: !1456)
!1680 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1678)
!1681 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1678)
!1682 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1678)
!1683 = !DILocation(line: 122, column: 3, scope: !1482, inlinedAt: !1679)
!1684 = !DILocation(line: 457, column: 21, scope: !1456)
!1685 = !DILocation(line: 457, column: 15, scope: !1456)
!1686 = !DILocation(line: 457, column: 47, scope: !1456)
!1687 = !DILocation(line: 458, column: 15, scope: !1456)
!1688 = !DILocation(line: 457, column: 7, scope: !1456)
!1689 = !DILocation(line: 0, scope: !1285, inlinedAt: !1690)
!1690 = distinct !DILocation(line: 121, column: 3, scope: !1482, inlinedAt: !1691)
!1691 = distinct !DILocation(line: 461, column: 7, scope: !1456)
!1692 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1690)
!1693 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1690)
!1694 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1690)
!1695 = !DILocation(line: 122, column: 3, scope: !1482, inlinedAt: !1691)
!1696 = !DILocation(line: 462, column: 21, scope: !1456)
!1697 = !DILocation(line: 462, column: 15, scope: !1456)
!1698 = !DILocation(line: 462, column: 47, scope: !1456)
!1699 = !DILocation(line: 463, column: 15, scope: !1456)
!1700 = !DILocation(line: 462, column: 7, scope: !1456)
!1701 = !DILocation(line: 0, scope: !1285, inlinedAt: !1702)
!1702 = distinct !DILocation(line: 121, column: 3, scope: !1482, inlinedAt: !1703)
!1703 = distinct !DILocation(line: 469, column: 7, scope: !1456)
!1704 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1702)
!1705 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1702)
!1706 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1702)
!1707 = !DILocation(line: 122, column: 3, scope: !1482, inlinedAt: !1703)
!1708 = !DILocation(line: 470, column: 25, scope: !1456)
!1709 = !DILocalVariable(name: "filename", arg: 1, scope: !1710, file: !1711, line: 49, type: !265)
!1710 = distinct !DISubprogram(name: "issymlink", scope: !1711, file: !1711, line: 49, type: !1712, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1714)
!1711 = !DIFile(filename: "./lib/issymlink.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3ed5fe5c76158b7c9a68dd013fb9e151")
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!260, !265}
!1714 = !{!1709, !1715}
!1715 = !DILocalVariable(name: "linkbuf", scope: !1710, file: !1711, line: 51, type: !206)
!1716 = !DILocation(line: 0, scope: !1710, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 470, column: 14, scope: !1456)
!1718 = !DILocation(line: 51, column: 3, scope: !1710, inlinedAt: !1717)
!1719 = !DILocation(line: 51, column: 8, scope: !1710, inlinedAt: !1717)
!1720 = !DILocation(line: 52, column: 7, scope: !1721, inlinedAt: !1717)
!1721 = distinct !DILexicalBlock(scope: !1710, file: !1711, line: 52, column: 7)
!1722 = !DILocation(line: 52, column: 54, scope: !1721, inlinedAt: !1717)
!1723 = !DILocation(line: 58, column: 1, scope: !1710, inlinedAt: !1717)
!1724 = !DILocation(line: 470, column: 7, scope: !1456)
!1725 = !DILocation(line: 0, scope: !1285, inlinedAt: !1726)
!1726 = distinct !DILocation(line: 121, column: 3, scope: !1482, inlinedAt: !1727)
!1727 = distinct !DILocation(line: 473, column: 7, scope: !1456)
!1728 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1726)
!1729 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1726)
!1730 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1726)
!1731 = !DILocation(line: 122, column: 3, scope: !1482, inlinedAt: !1727)
!1732 = !DILocation(line: 474, column: 21, scope: !1456)
!1733 = !DILocation(line: 474, column: 15, scope: !1456)
!1734 = !DILocation(line: 474, column: 47, scope: !1456)
!1735 = !DILocation(line: 475, column: 15, scope: !1456)
!1736 = !DILocation(line: 474, column: 7, scope: !1456)
!1737 = !DILocation(line: 0, scope: !1285, inlinedAt: !1738)
!1738 = distinct !DILocation(line: 121, column: 3, scope: !1482, inlinedAt: !1739)
!1739 = distinct !DILocation(line: 478, column: 7, scope: !1456)
!1740 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1738)
!1741 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1738)
!1742 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1738)
!1743 = !DILocation(line: 122, column: 3, scope: !1482, inlinedAt: !1739)
!1744 = !DILocation(line: 479, column: 21, scope: !1456)
!1745 = !DILocation(line: 479, column: 15, scope: !1456)
!1746 = !DILocation(line: 479, column: 47, scope: !1456)
!1747 = !DILocation(line: 480, column: 15, scope: !1456)
!1748 = !DILocation(line: 479, column: 7, scope: !1456)
!1749 = !DILocation(line: 0, scope: !1285, inlinedAt: !1750)
!1750 = distinct !DILocation(line: 121, column: 3, scope: !1482, inlinedAt: !1751)
!1751 = distinct !DILocation(line: 483, column: 7, scope: !1456)
!1752 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1750)
!1753 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1750)
!1754 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1750)
!1755 = !DILocation(line: 122, column: 3, scope: !1482, inlinedAt: !1751)
!1756 = !DILocation(line: 484, column: 21, scope: !1456)
!1757 = !DILocation(line: 484, column: 15, scope: !1456)
!1758 = !DILocation(line: 484, column: 47, scope: !1456)
!1759 = !DILocation(line: 485, column: 15, scope: !1456)
!1760 = !DILocation(line: 484, column: 7, scope: !1456)
!1761 = !DILocation(line: 0, scope: !1285, inlinedAt: !1762)
!1762 = distinct !DILocation(line: 121, column: 3, scope: !1482, inlinedAt: !1763)
!1763 = distinct !DILocation(line: 491, column: 9, scope: !1468)
!1764 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1762)
!1765 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1762)
!1766 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1762)
!1767 = !DILocation(line: 122, column: 3, scope: !1482, inlinedAt: !1763)
!1768 = !DILocation(line: 492, column: 25, scope: !1468)
!1769 = !DILocation(line: 492, column: 15, scope: !1468)
!1770 = !DILocation(line: 0, scope: !1468)
!1771 = !DILocation(line: 493, column: 9, scope: !1468)
!1772 = !DILocation(line: 493, column: 15, scope: !1468)
!1773 = !DILocation(line: 494, column: 14, scope: !1468)
!1774 = !DILocation(line: 495, column: 17, scope: !1468)
!1775 = !DILocation(line: 495, column: 23, scope: !1468)
!1776 = !DILocation(line: 495, column: 33, scope: !1468)
!1777 = !DILocation(line: 495, column: 72, scope: !1468)
!1778 = !DILocation(line: 495, column: 64, scope: !1468)
!1779 = !DILocation(line: 495, column: 61, scope: !1468)
!1780 = !DILocation(line: 0, scope: !1285, inlinedAt: !1781)
!1781 = distinct !DILocation(line: 121, column: 3, scope: !1482, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 499, column: 7, scope: !1456)
!1783 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1781)
!1784 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1781)
!1785 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1781)
!1786 = !DILocation(line: 122, column: 3, scope: !1482, inlinedAt: !1782)
!1787 = !DILocation(line: 500, column: 14, scope: !1456)
!1788 = !DILocation(line: 500, column: 31, scope: !1456)
!1789 = !DILocation(line: 500, column: 7, scope: !1456)
!1790 = !DILocation(line: 0, scope: !1285, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 121, column: 3, scope: !1482, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 503, column: 7, scope: !1456)
!1793 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1791)
!1794 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1791)
!1795 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1791)
!1796 = !DILocation(line: 122, column: 3, scope: !1482, inlinedAt: !1792)
!1797 = !DILocation(line: 504, column: 14, scope: !1456)
!1798 = !DILocation(line: 504, column: 31, scope: !1456)
!1799 = !DILocation(line: 504, column: 7, scope: !1456)
!1800 = !DILocation(line: 0, scope: !1456)
!1801 = !DILocation(line: 506, column: 1, scope: !1417)
!1802 = distinct !DISubprogram(name: "beyond", scope: !2, file: !2, line: 130, type: !630, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1045)
!1803 = !DILocation(line: 132, column: 22, scope: !1802)
!1804 = !DILocation(line: 132, column: 61, scope: !1802)
!1805 = !DILocation(line: 132, column: 66, scope: !1802)
!1806 = !DILocation(line: 132, column: 71, scope: !1802)
!1807 = !DILocation(line: 132, column: 54, scope: !1802)
!1808 = !DILocation(line: 132, column: 3, scope: !1802)
!1809 = distinct !DISubprogram(name: "three_arguments", scope: !2, file: !2, line: 587, type: !1265, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1810)
!1810 = !{!1811, !1812}
!1811 = !DILocalVariable(name: "value", scope: !1809, file: !2, line: 589, type: !296)
!1812 = !DILocalVariable(name: "bop", scope: !1809, file: !2, line: 590, type: !260)
!1813 = !DILocation(line: 590, column: 20, scope: !1809)
!1814 = !DILocation(line: 590, column: 25, scope: !1809)
!1815 = !DILocation(line: 590, column: 29, scope: !1809)
!1816 = !DILocation(line: 590, column: 13, scope: !1809)
!1817 = !DILocation(line: 0, scope: !1809)
!1818 = !DILocation(line: 592, column: 9, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1809, file: !2, line: 592, column: 7)
!1820 = !DILocation(line: 592, column: 7, scope: !1809)
!1821 = !DILocation(line: 593, column: 13, scope: !1819)
!1822 = !DILocation(line: 593, column: 5, scope: !1819)
!1823 = !DILocation(line: 594, column: 19, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 594, column: 12)
!1825 = !DILocation(line: 0, scope: !1069, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 594, column: 12, scope: !1824)
!1827 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1826)
!1828 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1826)
!1829 = !DILocation(line: 594, column: 12, scope: !1819)
!1830 = !DILocation(line: 0, scope: !1285, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 596, column: 7, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 595, column: 5)
!1833 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1831)
!1834 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1831)
!1835 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1831)
!1836 = !DILocation(line: 0, scope: !1069, inlinedAt: !1837)
!1837 = distinct !DILocation(line: 570, column: 7, scope: !1273, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 597, column: 16, scope: !1832)
!1839 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1837)
!1840 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1837)
!1841 = !DILocation(line: 570, column: 7, scope: !1274, inlinedAt: !1838)
!1842 = !DILocation(line: 0, scope: !1285, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 572, column: 7, scope: !1291, inlinedAt: !1838)
!1844 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1843)
!1845 = !DILocation(line: 562, column: 18, scope: !1264, inlinedAt: !1846)
!1846 = distinct !DILocation(line: 573, column: 17, scope: !1291, inlinedAt: !1838)
!1847 = !DILocation(line: 562, column: 10, scope: !1264, inlinedAt: !1846)
!1848 = !DILocation(line: 562, column: 25, scope: !1264, inlinedAt: !1846)
!1849 = !DILocation(line: 0, scope: !1274, inlinedAt: !1838)
!1850 = !DILocation(line: 574, column: 5, scope: !1291, inlinedAt: !1838)
!1851 = !DILocation(line: 575, column: 12, scope: !1300, inlinedAt: !1838)
!1852 = !DILocation(line: 575, column: 25, scope: !1300, inlinedAt: !1838)
!1853 = !DILocation(line: 576, column: 12, scope: !1300, inlinedAt: !1838)
!1854 = !DILocation(line: 576, column: 15, scope: !1300, inlinedAt: !1838)
!1855 = !DILocation(line: 576, column: 28, scope: !1300, inlinedAt: !1838)
!1856 = !DILocation(line: 577, column: 12, scope: !1300, inlinedAt: !1838)
!1857 = !DILocation(line: 577, column: 15, scope: !1300, inlinedAt: !1838)
!1858 = !DILocation(line: 577, column: 28, scope: !1300, inlinedAt: !1838)
!1859 = !DILocation(line: 575, column: 12, scope: !1273, inlinedAt: !1838)
!1860 = !DILocation(line: 579, column: 15, scope: !1310, inlinedAt: !1838)
!1861 = !DILocation(line: 582, column: 5, scope: !1300, inlinedAt: !1838)
!1862 = !DILocation(line: 597, column: 15, scope: !1832)
!1863 = !DILocation(line: 598, column: 5, scope: !1832)
!1864 = !DILocation(line: 0, scope: !1069, inlinedAt: !1865)
!1865 = distinct !DILocation(line: 599, column: 12, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1824, file: !2, line: 599, column: 12)
!1867 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1865)
!1868 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1865)
!1869 = !DILocation(line: 599, column: 35, scope: !1866)
!1870 = !DILocation(line: 599, column: 54, scope: !1866)
!1871 = !DILocation(line: 599, column: 45, scope: !1866)
!1872 = !DILocation(line: 0, scope: !1069, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 599, column: 38, scope: !1866)
!1874 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1873)
!1875 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1873)
!1876 = !DILocation(line: 599, column: 12, scope: !1824)
!1877 = !DILocation(line: 0, scope: !1285, inlinedAt: !1878)
!1878 = distinct !DILocation(line: 601, column: 7, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1866, file: !2, line: 600, column: 5)
!1880 = !DILocation(line: 562, column: 10, scope: !1264, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 602, column: 15, scope: !1879)
!1882 = !DILocation(line: 562, column: 25, scope: !1264, inlinedAt: !1881)
!1883 = !DILocation(line: 0, scope: !1285, inlinedAt: !1884)
!1884 = distinct !DILocation(line: 603, column: 7, scope: !1879)
!1885 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1884)
!1886 = !DILocation(line: 604, column: 5, scope: !1879)
!1887 = !DILocation(line: 0, scope: !1069, inlinedAt: !1888)
!1888 = distinct !DILocation(line: 605, column: 12, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1866, file: !2, line: 605, column: 12)
!1890 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1888)
!1891 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1888)
!1892 = !DILocation(line: 605, column: 40, scope: !1889)
!1893 = !DILocation(line: 0, scope: !1069, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 605, column: 43, scope: !1889)
!1895 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1894)
!1896 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1894)
!1897 = !DILocation(line: 606, column: 12, scope: !1889)
!1898 = !DILocation(line: 0, scope: !1069, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 606, column: 15, scope: !1889)
!1900 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1899)
!1901 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1899)
!1902 = !DILocation(line: 606, column: 42, scope: !1889)
!1903 = !DILocation(line: 0, scope: !1069, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 606, column: 45, scope: !1889)
!1905 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1904)
!1906 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1904)
!1907 = !DILocation(line: 605, column: 12, scope: !1866)
!1908 = !DILocation(line: 553, column: 14, scope: !1384, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 607, column: 13, scope: !1889)
!1910 = !DILocation(line: 553, column: 11, scope: !1384, inlinedAt: !1909)
!1911 = !DILocation(line: 553, column: 7, scope: !1385, inlinedAt: !1909)
!1912 = !DILocation(line: 554, column: 5, scope: !1384, inlinedAt: !1909)
!1913 = !DILocation(line: 556, column: 10, scope: !1385, inlinedAt: !1909)
!1914 = !DILocation(line: 609, column: 24, scope: !1889)
!1915 = !DILocation(line: 610, column: 31, scope: !1889)
!1916 = !DILocation(line: 610, column: 36, scope: !1889)
!1917 = !DILocation(line: 610, column: 40, scope: !1889)
!1918 = !DILocation(line: 610, column: 24, scope: !1889)
!1919 = !DILocation(line: 609, column: 5, scope: !1889)
!1920 = !DILocation(line: 611, column: 3, scope: !1809)
!1921 = !DISubprogram(name: "__assert_fail", scope: !1922, file: !1922, line: 69, type: !1923, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!1922 = !DIFile(filename: "/usr/include/assert.h", directory: "", checksumkind: CSK_MD5, checksum: "ab7dc6991d501750085448b20099a5a0")
!1923 = !DISubroutineType(types: !1924)
!1924 = !{null, !265, !265, !224, !265}
!1925 = distinct !DISubprogram(name: "or", scope: !2, file: !2, line: 533, type: !1265, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1926)
!1926 = !{!1927}
!1927 = !DILocalVariable(name: "value", scope: !1925, file: !2, line: 535, type: !296)
!1928 = !DILocation(line: 0, scope: !1925)
!1929 = !DILocalVariable(name: "value", scope: !1930, file: !2, line: 516, type: !296)
!1930 = distinct !DISubprogram(name: "and", scope: !2, file: !2, line: 514, type: !1265, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1931)
!1931 = !{!1929}
!1932 = !DILocation(line: 0, scope: !1930, inlinedAt: !1933)
!1933 = distinct !DILocation(line: 539, column: 16, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1925, file: !2, line: 538, column: 5)
!1935 = !DILocalVariable(name: "negated", scope: !1936, file: !2, line: 227, type: !296)
!1936 = distinct !DISubprogram(name: "term", scope: !2, file: !2, line: 224, type: !1265, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1937)
!1937 = !{!1938, !1935, !1939, !1940}
!1938 = !DILocalVariable(name: "value", scope: !1936, file: !2, line: 226, type: !296)
!1939 = !DILocalVariable(name: "bop", scope: !1936, file: !2, line: 228, type: !260)
!1940 = !DILocalVariable(name: "nargs", scope: !1941, file: !2, line: 243, type: !260)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !2, line: 242, column: 5)
!1942 = distinct !DILexicalBlock(scope: !1936, file: !2, line: 241, column: 7)
!1943 = !DILocation(line: 0, scope: !1936, inlinedAt: !1944)
!1944 = distinct !DILocation(line: 520, column: 16, scope: !1945, inlinedAt: !1933)
!1945 = distinct !DILexicalBlock(scope: !1930, file: !2, line: 519, column: 5)
!1946 = !DILocation(line: 231, column: 14, scope: !1936, inlinedAt: !1944)
!1947 = !DILocation(line: 231, column: 21, scope: !1936, inlinedAt: !1944)
!1948 = !DILocation(line: 537, column: 3, scope: !1925)
!1949 = !DILocation(line: 231, column: 24, scope: !1936, inlinedAt: !1944)
!1950 = !DILocation(line: 231, column: 37, scope: !1936, inlinedAt: !1944)
!1951 = !DILocation(line: 231, column: 44, scope: !1936, inlinedAt: !1944)
!1952 = !DILocation(line: 231, column: 47, scope: !1936, inlinedAt: !1944)
!1953 = !DILocation(line: 231, column: 60, scope: !1936, inlinedAt: !1944)
!1954 = !DILocation(line: 231, column: 3, scope: !1936, inlinedAt: !1944)
!1955 = !DILocation(line: 0, scope: !1285, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 233, column: 7, scope: !1957, inlinedAt: !1944)
!1957 = distinct !DILexicalBlock(scope: !1936, file: !2, line: 232, column: 5)
!1958 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1956)
!1959 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1956)
!1960 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1956)
!1961 = !DILocation(line: 234, column: 17, scope: !1957, inlinedAt: !1944)
!1962 = distinct !{!1962, !1954, !1963, !1104}
!1963 = !DILocation(line: 235, column: 5, scope: !1936, inlinedAt: !1944)
!1964 = !DILocation(line: 238, column: 5, scope: !1965, inlinedAt: !1944)
!1965 = distinct !DILexicalBlock(scope: !1936, file: !2, line: 237, column: 7)
!1966 = !DILocation(line: 241, column: 7, scope: !1942, inlinedAt: !1944)
!1967 = !DILocation(line: 241, column: 20, scope: !1942, inlinedAt: !1944)
!1968 = !DILocation(line: 241, column: 27, scope: !1942, inlinedAt: !1944)
!1969 = !DILocation(line: 241, column: 30, scope: !1942, inlinedAt: !1944)
!1970 = !DILocation(line: 241, column: 43, scope: !1942, inlinedAt: !1944)
!1971 = !DILocation(line: 241, column: 7, scope: !1936, inlinedAt: !1944)
!1972 = !DILocation(line: 0, scope: !1285, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 245, column: 7, scope: !1941, inlinedAt: !1944)
!1974 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !1973)
!1975 = !DILocation(line: 114, column: 9, scope: !1327, inlinedAt: !1973)
!1976 = !DILocation(line: 0, scope: !1941, inlinedAt: !1944)
!1977 = !DILocation(line: 248, column: 16, scope: !1978, inlinedAt: !1944)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !2, line: 247, column: 7)
!1979 = distinct !DILexicalBlock(scope: !1941, file: !2, line: 247, column: 7)
!1980 = !DILocation(line: 248, column: 24, scope: !1978, inlinedAt: !1944)
!1981 = !DILocation(line: 248, column: 31, scope: !1978, inlinedAt: !1944)
!1982 = !DILocation(line: 247, column: 7, scope: !1979, inlinedAt: !1944)
!1983 = !DILocation(line: 248, column: 43, scope: !1978, inlinedAt: !1944)
!1984 = !DILocation(line: 0, scope: !1069, inlinedAt: !1985)
!1985 = distinct !DILocation(line: 248, column: 36, scope: !1978, inlinedAt: !1944)
!1986 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !1985)
!1987 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !1985)
!1988 = !DILocation(line: 115, column: 5, scope: !1327, inlinedAt: !1973)
!1989 = distinct !{!1989, !1982, !1990, !1104}
!1990 = !DILocation(line: 254, column: 11, scope: !1979, inlinedAt: !1944)
!1991 = !DILocation(line: 0, scope: !1979, inlinedAt: !1944)
!1992 = !DILocation(line: 256, column: 15, scope: !1941, inlinedAt: !1944)
!1993 = !DILocation(line: 257, column: 12, scope: !1994, inlinedAt: !1944)
!1994 = distinct !DILexicalBlock(scope: !1941, file: !2, line: 257, column: 11)
!1995 = !DILocation(line: 257, column: 17, scope: !1994, inlinedAt: !1944)
!1996 = !DILocation(line: 257, column: 11, scope: !1941, inlinedAt: !1944)
!1997 = !DILocation(line: 258, column: 28, scope: !1994, inlinedAt: !1944)
!1998 = !DILocation(line: 258, column: 46, scope: !1994, inlinedAt: !1944)
!1999 = !DILocation(line: 258, column: 9, scope: !1994, inlinedAt: !1944)
!2000 = !DILocation(line: 260, column: 13, scope: !2001, inlinedAt: !1944)
!2001 = distinct !DILexicalBlock(scope: !1994, file: !2, line: 260, column: 13)
!2002 = !DILocation(line: 260, column: 26, scope: !2001, inlinedAt: !1944)
!2003 = !DILocation(line: 260, column: 33, scope: !2001, inlinedAt: !1944)
!2004 = !DILocation(line: 260, column: 36, scope: !2001, inlinedAt: !1944)
!2005 = !DILocation(line: 260, column: 13, scope: !1994, inlinedAt: !1944)
!2006 = !DILocation(line: 261, column: 30, scope: !2001, inlinedAt: !1944)
!2007 = !DILocation(line: 262, column: 30, scope: !2001, inlinedAt: !1944)
!2008 = !DILocation(line: 262, column: 60, scope: !2001, inlinedAt: !1944)
!2009 = !DILocation(line: 262, column: 65, scope: !2001, inlinedAt: !1944)
!2010 = !DILocation(line: 262, column: 48, scope: !2001, inlinedAt: !1944)
!2011 = !DILocation(line: 261, column: 11, scope: !2001, inlinedAt: !1944)
!2012 = !DILocation(line: 0, scope: !1285, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 263, column: 7, scope: !1941, inlinedAt: !1944)
!2014 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !2013)
!2015 = !DILocation(line: 264, column: 5, scope: !1941, inlinedAt: !1944)
!2016 = !DILocation(line: 267, column: 22, scope: !2017, inlinedAt: !1944)
!2017 = distinct !DILexicalBlock(scope: !1942, file: !2, line: 267, column: 12)
!2018 = !DILocation(line: 267, column: 14, scope: !2017, inlinedAt: !1944)
!2019 = !DILocation(line: 267, column: 28, scope: !2017, inlinedAt: !1944)
!2020 = !DILocation(line: 0, scope: !1069, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 267, column: 31, scope: !2017, inlinedAt: !1944)
!2022 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2021)
!2023 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2021)
!2024 = !DILocation(line: 268, column: 12, scope: !2017, inlinedAt: !1944)
!2025 = !DILocation(line: 268, column: 34, scope: !2017, inlinedAt: !1944)
!2026 = !DILocation(line: 268, column: 27, scope: !2017, inlinedAt: !1944)
!2027 = !DILocation(line: 268, column: 17, scope: !2017, inlinedAt: !1944)
!2028 = !DILocation(line: 267, column: 12, scope: !1942, inlinedAt: !1944)
!2029 = !DILocation(line: 269, column: 13, scope: !2017, inlinedAt: !1944)
!2030 = !DILocation(line: 269, column: 5, scope: !2017, inlinedAt: !1944)
!2031 = !DILocation(line: 270, column: 14, scope: !2032, inlinedAt: !1944)
!2032 = distinct !DILexicalBlock(scope: !2017, file: !2, line: 270, column: 12)
!2033 = !DILocation(line: 271, column: 12, scope: !2032, inlinedAt: !1944)
!2034 = !DILocation(line: 271, column: 34, scope: !2032, inlinedAt: !1944)
!2035 = !DILocation(line: 271, column: 27, scope: !2032, inlinedAt: !1944)
!2036 = !DILocation(line: 271, column: 17, scope: !2032, inlinedAt: !1944)
!2037 = !DILocation(line: 270, column: 12, scope: !2017, inlinedAt: !1944)
!2038 = !DILocation(line: 272, column: 13, scope: !2032, inlinedAt: !1944)
!2039 = !DILocation(line: 272, column: 5, scope: !2032, inlinedAt: !1944)
!2040 = !DILocation(line: 275, column: 25, scope: !2041, inlinedAt: !1944)
!2041 = distinct !DILexicalBlock(scope: !2032, file: !2, line: 275, column: 12)
!2042 = !DILocation(line: 275, column: 32, scope: !2041, inlinedAt: !1944)
!2043 = !DILocation(line: 275, column: 35, scope: !2041, inlinedAt: !1944)
!2044 = !DILocation(line: 275, column: 48, scope: !2041, inlinedAt: !1944)
!2045 = !DILocation(line: 275, column: 51, scope: !2041, inlinedAt: !1944)
!2046 = !DILocation(line: 275, column: 64, scope: !2041, inlinedAt: !1944)
!2047 = !DILocation(line: 275, column: 12, scope: !2032, inlinedAt: !1944)
!2048 = !DILocation(line: 276, column: 13, scope: !2041, inlinedAt: !1944)
!2049 = !DILocation(line: 276, column: 5, scope: !2041, inlinedAt: !1944)
!2050 = !DILocation(line: 279, column: 29, scope: !2051, inlinedAt: !1944)
!2051 = distinct !DILexicalBlock(scope: !2041, file: !2, line: 278, column: 5)
!2052 = !DILocation(line: 0, scope: !1285, inlinedAt: !2053)
!2053 = distinct !DILocation(line: 280, column: 7, scope: !2051, inlinedAt: !1944)
!2054 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !2053)
!2055 = !DILocation(line: 283, column: 18, scope: !1936, inlinedAt: !1944)
!2056 = !DILocation(line: 520, column: 13, scope: !1945, inlinedAt: !1933)
!2057 = !DILocation(line: 521, column: 14, scope: !2058, inlinedAt: !1933)
!2058 = distinct !DILexicalBlock(scope: !1945, file: !2, line: 521, column: 11)
!2059 = !DILocation(line: 521, column: 20, scope: !2058, inlinedAt: !1933)
!2060 = !DILocation(line: 521, column: 18, scope: !2058, inlinedAt: !1933)
!2061 = !DILocation(line: 521, column: 25, scope: !2058, inlinedAt: !1933)
!2062 = !DILocation(line: 521, column: 35, scope: !2058, inlinedAt: !1933)
!2063 = !DILocation(line: 0, scope: !1069, inlinedAt: !2064)
!2064 = distinct !DILocation(line: 521, column: 28, scope: !2058, inlinedAt: !1933)
!2065 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2064)
!2066 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2064)
!2067 = !DILocation(line: 521, column: 11, scope: !1945, inlinedAt: !1933)
!2068 = !DILocation(line: 0, scope: !1285, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 523, column: 7, scope: !1945, inlinedAt: !1933)
!2070 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !2069)
!2071 = distinct !{!2071, !2072, !2073}
!2072 = !DILocation(line: 518, column: 3, scope: !1930, inlinedAt: !1933)
!2073 = !DILocation(line: 524, column: 5, scope: !1930, inlinedAt: !1933)
!2074 = !DILocation(line: 539, column: 13, scope: !1934)
!2075 = !DILocation(line: 0, scope: !1069, inlinedAt: !2076)
!2076 = distinct !DILocation(line: 540, column: 28, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !1934, file: !2, line: 540, column: 11)
!2078 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2076)
!2079 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2076)
!2080 = !DILocation(line: 540, column: 11, scope: !1934)
!2081 = !DILocation(line: 541, column: 9, scope: !2077)
!2082 = !DILocation(line: 0, scope: !1285, inlinedAt: !2083)
!2083 = distinct !DILocation(line: 542, column: 7, scope: !1934)
!2084 = !DILocation(line: 112, column: 3, scope: !1285, inlinedAt: !2083)
!2085 = distinct !{!2085, !1948, !2086}
!2086 = !DILocation(line: 543, column: 5, scope: !1925)
!2087 = distinct !DISubprogram(name: "binop", scope: !2, file: !2, line: 186, type: !1712, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2088)
!2088 = !{!2089}
!2089 = !DILocalVariable(name: "s", arg: 1, scope: !2087, file: !2, line: 186, type: !265)
!2090 = !DILocation(line: 0, scope: !2087)
!2091 = !DILocation(line: 0, scope: !1069, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 188, column: 13, scope: !2087)
!2093 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2092)
!2094 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2092)
!2095 = !DILocation(line: 188, column: 13, scope: !2087)
!2096 = !DILocation(line: 0, scope: !1069, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 189, column: 13, scope: !2087)
!2098 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2097)
!2099 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2097)
!2100 = !DILocation(line: 189, column: 13, scope: !2087)
!2101 = !DILocation(line: 0, scope: !1069, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 190, column: 13, scope: !2087)
!2103 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2102)
!2104 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2102)
!2105 = !DILocation(line: 190, column: 13, scope: !2087)
!2106 = !DILocation(line: 0, scope: !1069, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 191, column: 13, scope: !2087)
!2108 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2107)
!2109 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2107)
!2110 = !DILocation(line: 191, column: 13, scope: !2087)
!2111 = !DILocation(line: 0, scope: !1069, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 192, column: 13, scope: !2087)
!2113 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2112)
!2114 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2112)
!2115 = !DILocation(line: 192, column: 13, scope: !2087)
!2116 = !DILocation(line: 0, scope: !1069, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 193, column: 13, scope: !2087)
!2118 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2117)
!2119 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2117)
!2120 = !DILocation(line: 193, column: 13, scope: !2087)
!2121 = !DILocation(line: 0, scope: !1069, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 194, column: 13, scope: !2087)
!2123 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2122)
!2124 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2122)
!2125 = !DILocation(line: 194, column: 13, scope: !2087)
!2126 = !DILocation(line: 0, scope: !1069, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 195, column: 13, scope: !2087)
!2128 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2127)
!2129 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2127)
!2130 = !DILocation(line: 195, column: 13, scope: !2087)
!2131 = !DILocation(line: 0, scope: !1069, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 196, column: 13, scope: !2087)
!2133 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2132)
!2134 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2132)
!2135 = !DILocation(line: 196, column: 13, scope: !2087)
!2136 = !DILocation(line: 0, scope: !1069, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 197, column: 13, scope: !2087)
!2138 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2137)
!2139 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2137)
!2140 = !DILocation(line: 197, column: 13, scope: !2087)
!2141 = !DILocation(line: 0, scope: !1069, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 198, column: 13, scope: !2087)
!2143 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2142)
!2144 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2142)
!2145 = !DILocation(line: 198, column: 13, scope: !2087)
!2146 = !DILocation(line: 0, scope: !1069, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 199, column: 13, scope: !2087)
!2148 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2147)
!2149 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2147)
!2150 = !DILocation(line: 199, column: 13, scope: !2087)
!2151 = !DILocation(line: 0, scope: !1069, inlinedAt: !2152)
!2152 = distinct !DILocation(line: 200, column: 13, scope: !2087)
!2153 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2152)
!2154 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2152)
!2155 = !DILocation(line: 200, column: 13, scope: !2087)
!2156 = !DILocation(line: 0, scope: !1069, inlinedAt: !2157)
!2157 = distinct !DILocation(line: 201, column: 13, scope: !2087)
!2158 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2157)
!2159 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2157)
!2160 = !DILocation(line: 201, column: 13, scope: !2087)
!2161 = !DILocation(line: 188, column: 3, scope: !2087)
!2162 = distinct !DISubprogram(name: "binary_operator", scope: !2, file: !2, line: 287, type: !2163, scopeLine: 288, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2165)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!296, !296, !244}
!2165 = !{!2166, !2167, !2168, !2169, !2170, !2173, !2174, !2175, !2176, !2177, !2179, !2183}
!2166 = !DILocalVariable(name: "l_is_l", arg: 1, scope: !2162, file: !2, line: 287, type: !296)
!2167 = !DILocalVariable(name: "bop", arg: 2, scope: !2162, file: !2, line: 287, type: !244)
!2168 = !DILocalVariable(name: "op", scope: !2162, file: !2, line: 289, type: !260)
!2169 = !DILocalVariable(name: "r_is_l", scope: !2162, file: !2, line: 296, type: !296)
!2170 = !DILocalVariable(name: "lbuf", scope: !2171, file: !2, line: 307, type: !626)
!2171 = distinct !DILexicalBlock(scope: !2172, file: !2, line: 306, column: 7)
!2172 = distinct !DILexicalBlock(scope: !2162, file: !2, line: 303, column: 5)
!2173 = !DILocalVariable(name: "rbuf", scope: !2171, file: !2, line: 308, type: !626)
!2174 = !DILocalVariable(name: "l", scope: !2171, file: !2, line: 309, type: !265)
!2175 = !DILocalVariable(name: "r", scope: !2171, file: !2, line: 312, type: !265)
!2176 = !DILocalVariable(name: "cmp", scope: !2171, file: !2, line: 315, type: !260)
!2177 = !DILocalVariable(name: "cmp", scope: !2178, file: !2, line: 333, type: !260)
!2178 = distinct !DILexicalBlock(scope: !2172, file: !2, line: 329, column: 7)
!2179 = !DILocalVariable(name: "st", scope: !2180, file: !2, line: 343, type: !2182)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !2, line: 342, column: 9)
!2181 = distinct !DILexicalBlock(scope: !2172, file: !2, line: 339, column: 11)
!2182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1420, size: 2048, elements: !45)
!2183 = !DILocalVariable(name: "cmp", scope: !2184, file: !2, line: 356, type: !260)
!2184 = distinct !DILexicalBlock(scope: !2172, file: !2, line: 355, column: 7)
!2185 = !DILocation(line: 0, scope: !2162)
!2186 = !DILocation(line: 291, column: 7, scope: !2162)
!2187 = !DILocation(line: 293, column: 12, scope: !2162)
!2188 = !DILocation(line: 296, column: 22, scope: !2162)
!2189 = !DILocation(line: 296, column: 27, scope: !2162)
!2190 = !DILocation(line: 296, column: 20, scope: !2162)
!2191 = !DILocation(line: 296, column: 31, scope: !2162)
!2192 = !DILocation(line: 296, column: 41, scope: !2162)
!2193 = !DILocation(line: 296, column: 49, scope: !2162)
!2194 = !DILocation(line: 0, scope: !1069, inlinedAt: !2195)
!2195 = distinct !DILocation(line: 296, column: 34, scope: !2162)
!2196 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2195)
!2197 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2195)
!2198 = !DILocation(line: 297, column: 7, scope: !2162)
!2199 = !DILocation(line: 300, column: 7, scope: !2162)
!2200 = !DILocation(line: 302, column: 3, scope: !2162)
!2201 = !DILocation(line: 307, column: 9, scope: !2171)
!2202 = !DILocation(line: 307, column: 14, scope: !2171)
!2203 = !DILocation(line: 308, column: 9, scope: !2171)
!2204 = !DILocation(line: 308, column: 14, scope: !2171)
!2205 = !DILocation(line: 0, scope: !2171)
!2206 = !DILocation(line: 309, column: 26, scope: !2171)
!2207 = !DILocation(line: 310, column: 39, scope: !2171)
!2208 = !DILocation(line: 310, column: 28, scope: !2171)
!2209 = !DILocation(line: 311, column: 28, scope: !2171)
!2210 = !DILocation(line: 312, column: 26, scope: !2171)
!2211 = !DILocation(line: 313, column: 55, scope: !2171)
!2212 = !DILocation(line: 313, column: 47, scope: !2171)
!2213 = !DILocation(line: 313, column: 39, scope: !2171)
!2214 = !DILocation(line: 313, column: 28, scope: !2171)
!2215 = !DILocation(line: 314, column: 46, scope: !2171)
!2216 = !DILocation(line: 314, column: 38, scope: !2171)
!2217 = !DILocation(line: 314, column: 28, scope: !2171)
!2218 = !DILocation(line: 315, column: 19, scope: !2171)
!2219 = !DILocation(line: 316, column: 9, scope: !2171)
!2220 = !DILocation(line: 318, column: 37, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2171, file: !2, line: 317, column: 11)
!2222 = !DILocation(line: 318, column: 26, scope: !2221)
!2223 = !DILocation(line: 319, column: 37, scope: !2221)
!2224 = !DILocation(line: 319, column: 26, scope: !2221)
!2225 = !DILocation(line: 320, column: 37, scope: !2221)
!2226 = !DILocation(line: 320, column: 26, scope: !2221)
!2227 = !DILocation(line: 321, column: 37, scope: !2221)
!2228 = !DILocation(line: 321, column: 26, scope: !2221)
!2229 = !DILocation(line: 322, column: 37, scope: !2221)
!2230 = !DILocation(line: 322, column: 26, scope: !2221)
!2231 = !DILocation(line: 323, column: 37, scope: !2221)
!2232 = !DILocation(line: 323, column: 26, scope: !2221)
!2233 = !DILocation(line: 325, column: 9, scope: !2171)
!2234 = !DILocation(line: 0, scope: !2221)
!2235 = !DILocation(line: 326, column: 7, scope: !2172)
!2236 = !DILocation(line: 330, column: 20, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2178, file: !2, line: 330, column: 13)
!2238 = !DILocation(line: 330, column: 13, scope: !2178)
!2239 = !DILocation(line: 331, column: 30, scope: !2237)
!2240 = !DILocation(line: 332, column: 30, scope: !2237)
!2241 = !DILocation(line: 331, column: 11, scope: !2237)
!2242 = !DILocation(line: 333, column: 44, scope: !2178)
!2243 = !DILocalVariable(name: "filename", arg: 1, scope: !2244, file: !2, line: 175, type: !265)
!2244 = distinct !DISubprogram(name: "get_mtime", scope: !2, file: !2, line: 175, type: !2245, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2247)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!1444, !265}
!2247 = !{!2243, !2248}
!2248 = !DILocalVariable(name: "finfo", scope: !2244, file: !2, line: 177, type: !1420)
!2249 = !DILocation(line: 0, scope: !2244, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 333, column: 33, scope: !2178)
!2251 = !DILocation(line: 177, column: 3, scope: !2244, inlinedAt: !2250)
!2252 = !DILocation(line: 177, column: 15, scope: !2244, inlinedAt: !2250)
!2253 = !DILocation(line: 178, column: 11, scope: !2244, inlinedAt: !2250)
!2254 = !DILocation(line: 178, column: 35, scope: !2244, inlinedAt: !2250)
!2255 = !DILocation(line: 181, column: 1, scope: !2244, inlinedAt: !2250)
!2256 = !DILocation(line: 334, column: 44, scope: !2178)
!2257 = !DILocation(line: 334, column: 52, scope: !2178)
!2258 = !DILocation(line: 0, scope: !2244, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 334, column: 33, scope: !2178)
!2260 = !DILocation(line: 177, column: 3, scope: !2244, inlinedAt: !2259)
!2261 = !DILocation(line: 177, column: 15, scope: !2244, inlinedAt: !2259)
!2262 = !DILocation(line: 178, column: 11, scope: !2244, inlinedAt: !2259)
!2263 = !DILocation(line: 178, column: 35, scope: !2244, inlinedAt: !2259)
!2264 = !DILocation(line: 181, column: 1, scope: !2244, inlinedAt: !2259)
!2265 = !DILocation(line: 0, scope: !1556, inlinedAt: !2266)
!2266 = distinct !DILocation(line: 333, column: 19, scope: !2178)
!2267 = !DILocation(line: 66, column: 14, scope: !1556, inlinedAt: !2266)
!2268 = !DILocation(line: 66, column: 12, scope: !1556, inlinedAt: !2266)
!2269 = !DILocation(line: 66, column: 45, scope: !1556, inlinedAt: !2266)
!2270 = !DILocation(line: 66, column: 43, scope: !1556, inlinedAt: !2266)
!2271 = !DILocation(line: 0, scope: !2178)
!2272 = !DILocation(line: 335, column: 20, scope: !2178)
!2273 = !DILocation(line: 335, column: 16, scope: !2178)
!2274 = !DILocation(line: 339, column: 18, scope: !2181)
!2275 = !DILocation(line: 339, column: 11, scope: !2172)
!2276 = !DILocation(line: 340, column: 28, scope: !2181)
!2277 = !DILocation(line: 340, column: 9, scope: !2181)
!2278 = !DILocation(line: 343, column: 11, scope: !2180)
!2279 = !DILocation(line: 343, column: 23, scope: !2180)
!2280 = !DILocation(line: 344, column: 25, scope: !2180)
!2281 = !DILocation(line: 344, column: 19, scope: !2180)
!2282 = !DILocation(line: 344, column: 47, scope: !2180)
!2283 = !DILocation(line: 345, column: 19, scope: !2180)
!2284 = !DILocation(line: 345, column: 28, scope: !2180)
!2285 = !DILocation(line: 345, column: 36, scope: !2180)
!2286 = !DILocation(line: 345, column: 43, scope: !2180)
!2287 = !DILocation(line: 345, column: 22, scope: !2180)
!2288 = !DILocation(line: 345, column: 50, scope: !2180)
!2289 = !DILocation(line: 346, column: 19, scope: !2180)
!2290 = !DILocalVariable(name: "a", arg: 1, scope: !2291, file: !2292, line: 86, type: !1542)
!2291 = distinct !DISubprogram(name: "psame_inode", scope: !2292, file: !2292, line: 86, type: !2293, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2295)
!2292 = !DIFile(filename: "./lib/same-inode.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6a49db1c884e7bc93549038e7fb28788")
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!296, !1542, !1542}
!2295 = !{!2290, !2296}
!2296 = !DILocalVariable(name: "b", arg: 2, scope: !2291, file: !2292, line: 86, type: !1542)
!2297 = !DILocation(line: 0, scope: !2291, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 346, column: 22, scope: !2180)
!2299 = !DILocation(line: 90, column: 14, scope: !2291, inlinedAt: !2298)
!2300 = !{!1590, !1591, i64 0}
!2301 = !{!1590, !1591, i64 8}
!2302 = !DILocation(line: 0, scope: !2180)
!2303 = !DILocation(line: 347, column: 9, scope: !2181)
!2304 = !DILocation(line: 351, column: 21, scope: !2172)
!2305 = !DILocation(line: 351, column: 43, scope: !2172)
!2306 = !DILocation(line: 351, column: 35, scope: !2172)
!2307 = !DILocation(line: 0, scope: !1069, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 351, column: 14, scope: !2172)
!2309 = !DILocation(line: 1361, column: 11, scope: !1069, inlinedAt: !2308)
!2310 = !DILocation(line: 1361, column: 10, scope: !1069, inlinedAt: !2308)
!2311 = !DILocation(line: 351, column: 57, scope: !2172)
!2312 = !DILocation(line: 351, column: 49, scope: !2172)
!2313 = !DILocation(line: 351, column: 7, scope: !2172)
!2314 = !DILocation(line: 356, column: 28, scope: !2184)
!2315 = !DILocation(line: 356, column: 50, scope: !2184)
!2316 = !DILocation(line: 356, column: 42, scope: !2184)
!2317 = !DILocation(line: 356, column: 19, scope: !2184)
!2318 = !DILocation(line: 0, scope: !2184)
!2319 = !DILocation(line: 357, column: 20, scope: !2184)
!2320 = !DILocation(line: 357, column: 16, scope: !2184)
!2321 = !DILocation(line: 362, column: 3, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !2, line: 362, column: 3)
!2323 = distinct !DILexicalBlock(scope: !2162, file: !2, line: 362, column: 3)
!2324 = !DILocation(line: 0, scope: !2172)
!2325 = !DILocation(line: 363, column: 1, scope: !2162)
!2326 = !DISubprogram(name: "strlen", scope: !1177, file: !1177, line: 407, type: !2327, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!264, !265}
!2329 = distinct !DISubprogram(name: "find_int", scope: !2, file: !2, line: 139, type: !2330, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2332)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!265, !265}
!2332 = !{!2333, !2334, !2335}
!2333 = !DILocalVariable(name: "string", arg: 1, scope: !2329, file: !2, line: 139, type: !265)
!2334 = !DILocalVariable(name: "p", scope: !2329, file: !2, line: 141, type: !265)
!2335 = !DILocalVariable(name: "number_start", scope: !2329, file: !2, line: 142, type: !265)
!2336 = !DILocation(line: 0, scope: !2329)
!2337 = !DILocation(line: 144, column: 8, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2329, file: !2, line: 144, column: 3)
!2339 = !DILocation(line: 144, scope: !2338)
!2340 = !DILocation(line: 144, column: 20, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2338, file: !2, line: 144, column: 3)
!2342 = !DILocation(line: 144, column: 3, scope: !2338)
!2343 = !DILocation(line: 144, column: 46, scope: !2341)
!2344 = distinct !{!2344, !2342, !2345, !1104}
!2345 = !DILocation(line: 145, column: 5, scope: !2338)
!2346 = !DILocation(line: 147, column: 10, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2329, file: !2, line: 147, column: 7)
!2348 = !DILocation(line: 147, column: 7, scope: !2329)
!2349 = !DILocation(line: 158, column: 18, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2329, file: !2, line: 158, column: 7)
!2351 = !DILocalVariable(name: "c", arg: 1, scope: !2352, file: !2353, line: 233, type: !260)
!2352 = distinct !DISubprogram(name: "c_isdigit", scope: !2353, file: !2353, line: 233, type: !1256, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2354)
!2353 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!2354 = !{!2351}
!2355 = !DILocation(line: 0, scope: !2352, inlinedAt: !2356)
!2356 = distinct !DILocation(line: 158, column: 7, scope: !2350)
!2357 = !DILocation(line: 235, column: 3, scope: !2352, inlinedAt: !2356)
!2358 = !DILocation(line: 158, column: 7, scope: !2329)
!2359 = !DILocation(line: 0, scope: !2350)
!2360 = !DILocation(line: 160, column: 25, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2350, file: !2, line: 159, column: 5)
!2362 = !DILocation(line: 0, scope: !2352, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 160, column: 14, scope: !2361)
!2364 = !DILocation(line: 235, column: 3, scope: !2352, inlinedAt: !2363)
!2365 = !DILocation(line: 160, column: 7, scope: !2361)
!2366 = distinct !{!2366, !2365, !2367, !1104}
!2367 = !DILocation(line: 161, column: 10, scope: !2361)
!2368 = !DILocation(line: 162, column: 14, scope: !2361)
!2369 = !DILocation(line: 162, column: 7, scope: !2361)
!2370 = !DILocation(line: 163, column: 10, scope: !2361)
!2371 = distinct !{!2371, !2369, !2370, !1104}
!2372 = !DILocation(line: 164, column: 12, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2361, file: !2, line: 164, column: 11)
!2374 = !DILocation(line: 164, column: 11, scope: !2361)
!2375 = !DILocation(line: 165, column: 9, scope: !2373)
!2376 = !DILocation(line: 168, column: 22, scope: !2329)
!2377 = !DILocation(line: 168, column: 47, scope: !2329)
!2378 = !DILocation(line: 168, column: 3, scope: !2329)
!2379 = !DISubprogram(name: "stat", scope: !2380, file: !2380, line: 205, type: !2381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!2380 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!260, !1051, !2383}
!2383 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2384)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!2385 = !DISubprogram(name: "strcoll", scope: !1177, file: !1177, line: 163, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!2386 = !DISubprogram(name: "euidaccess", scope: !2387, file: !2387, line: 292, type: !2388, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!2387 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2388 = !DISubroutineType(types: !2389)
!2389 = !{!260, !265, !260}
!2390 = !DISubprogram(name: "__errno_location", scope: !2391, file: !2391, line: 37, type: !2392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!2391 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!2394}
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!2395 = !DISubprogram(name: "geteuid", scope: !2387, file: !2387, line: 700, type: !2396, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!1432}
!2398 = !DISubprogram(name: "getegid", scope: !2387, file: !2387, line: 706, type: !2399, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!1434}
!2401 = !DISubprogram(name: "strtol", scope: !1181, file: !1181, line: 177, type: !2402, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!2402 = !DISubroutineType(types: !2403)
!2403 = !{!272, !1051, !2404, !260}
!2404 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !561)
!2405 = !DISubprogram(name: "isatty", scope: !2387, file: !2387, line: 809, type: !2406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{!260, !260}
!2408 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !565, file: !565, line: 50, type: !1011, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2409)
!2409 = !{!2410}
!2410 = !DILocalVariable(name: "file", arg: 1, scope: !2408, file: !565, line: 50, type: !265)
!2411 = !DILocation(line: 0, scope: !2408)
!2412 = !DILocation(line: 52, column: 13, scope: !2408)
!2413 = !DILocation(line: 53, column: 1, scope: !2408)
!2414 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !565, file: !565, line: 87, type: !1286, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2415)
!2415 = !{!2416}
!2416 = !DILocalVariable(name: "ignore", arg: 1, scope: !2414, file: !565, line: 87, type: !296)
!2417 = !DILocation(line: 0, scope: !2414)
!2418 = !DILocation(line: 89, column: 16, scope: !2414)
!2419 = !{!2420, !2420, i64 0}
!2420 = !{!"_Bool", !959, i64 0}
!2421 = !DILocation(line: 90, column: 1, scope: !2414)
!2422 = distinct !DISubprogram(name: "close_stdout", scope: !565, file: !565, line: 116, type: !630, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2423)
!2423 = !{!2424}
!2424 = !DILocalVariable(name: "write_error", scope: !2425, file: !565, line: 121, type: !265)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !565, line: 120, column: 5)
!2426 = distinct !DILexicalBlock(scope: !2422, file: !565, line: 118, column: 7)
!2427 = !DILocation(line: 118, column: 21, scope: !2426)
!2428 = !DILocation(line: 118, column: 7, scope: !2426)
!2429 = !DILocation(line: 118, column: 29, scope: !2426)
!2430 = !DILocation(line: 119, column: 7, scope: !2426)
!2431 = !DILocation(line: 119, column: 12, scope: !2426)
!2432 = !{i8 0, i8 2}
!2433 = !DILocation(line: 119, column: 25, scope: !2426)
!2434 = !DILocation(line: 119, column: 28, scope: !2426)
!2435 = !DILocation(line: 119, column: 34, scope: !2426)
!2436 = !DILocation(line: 118, column: 7, scope: !2422)
!2437 = !DILocation(line: 121, column: 33, scope: !2425)
!2438 = !DILocation(line: 0, scope: !2425)
!2439 = !DILocation(line: 122, column: 11, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2425, file: !565, line: 122, column: 11)
!2441 = !DILocation(line: 0, scope: !2440)
!2442 = !DILocation(line: 122, column: 11, scope: !2425)
!2443 = !DILocation(line: 123, column: 9, scope: !2440)
!2444 = !DILocation(line: 126, column: 9, scope: !2440)
!2445 = !DILocation(line: 128, column: 14, scope: !2425)
!2446 = !DILocation(line: 128, column: 7, scope: !2425)
!2447 = !DILocation(line: 133, column: 42, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2422, file: !565, line: 133, column: 7)
!2449 = !DILocation(line: 133, column: 28, scope: !2448)
!2450 = !DILocation(line: 133, column: 50, scope: !2448)
!2451 = !DILocation(line: 133, column: 7, scope: !2422)
!2452 = !DILocation(line: 134, column: 12, scope: !2448)
!2453 = !DILocation(line: 134, column: 5, scope: !2448)
!2454 = !DILocation(line: 135, column: 1, scope: !2422)
!2455 = !DISubprogram(name: "_exit", scope: !2387, file: !2387, line: 624, type: !947, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!2456 = distinct !DISubprogram(name: "verror", scope: !580, file: !580, line: 251, type: !2457, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2459)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{null, !260, !260, !265, !590}
!2459 = !{!2460, !2461, !2462, !2463}
!2460 = !DILocalVariable(name: "status", arg: 1, scope: !2456, file: !580, line: 251, type: !260)
!2461 = !DILocalVariable(name: "errnum", arg: 2, scope: !2456, file: !580, line: 251, type: !260)
!2462 = !DILocalVariable(name: "message", arg: 3, scope: !2456, file: !580, line: 251, type: !265)
!2463 = !DILocalVariable(name: "args", arg: 4, scope: !2456, file: !580, line: 251, type: !590)
!2464 = !DILocation(line: 0, scope: !2456)
!2465 = !DILocation(line: 251, column: 1, scope: !2456)
!2466 = !DILocation(line: 261, column: 3, scope: !2456)
!2467 = !DILocation(line: 265, column: 7, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2456, file: !580, line: 265, column: 7)
!2469 = !DILocation(line: 265, column: 7, scope: !2456)
!2470 = !DILocation(line: 266, column: 5, scope: !2468)
!2471 = !DILocation(line: 272, column: 7, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2468, file: !580, line: 268, column: 5)
!2473 = !DILocation(line: 276, column: 3, scope: !2456)
!2474 = !DILocation(line: 282, column: 1, scope: !2456)
!2475 = distinct !DISubprogram(name: "flush_stdout", scope: !580, file: !580, line: 163, type: !630, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2476)
!2476 = !{!2477}
!2477 = !DILocalVariable(name: "stdout_fd", scope: !2475, file: !580, line: 166, type: !260)
!2478 = !DILocation(line: 0, scope: !2475)
!2479 = !DILocalVariable(name: "fd", arg: 1, scope: !2480, file: !580, line: 145, type: !260)
!2480 = distinct !DISubprogram(name: "is_open", scope: !580, file: !580, line: 145, type: !2406, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2481)
!2481 = !{!2479}
!2482 = !DILocation(line: 0, scope: !2480, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 182, column: 25, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2475, file: !580, line: 182, column: 7)
!2485 = !DILocation(line: 157, column: 15, scope: !2480, inlinedAt: !2483)
!2486 = !DILocation(line: 157, column: 12, scope: !2480, inlinedAt: !2483)
!2487 = !DILocation(line: 182, column: 7, scope: !2475)
!2488 = !DILocation(line: 184, column: 5, scope: !2484)
!2489 = !DILocation(line: 185, column: 1, scope: !2475)
!2490 = distinct !DISubprogram(name: "error_tail", scope: !580, file: !580, line: 219, type: !2457, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2491)
!2491 = !{!2492, !2493, !2494, !2495}
!2492 = !DILocalVariable(name: "status", arg: 1, scope: !2490, file: !580, line: 219, type: !260)
!2493 = !DILocalVariable(name: "errnum", arg: 2, scope: !2490, file: !580, line: 219, type: !260)
!2494 = !DILocalVariable(name: "message", arg: 3, scope: !2490, file: !580, line: 219, type: !265)
!2495 = !DILocalVariable(name: "args", arg: 4, scope: !2490, file: !580, line: 219, type: !590)
!2496 = !DILocation(line: 0, scope: !2490)
!2497 = !DILocation(line: 219, column: 1, scope: !2490)
!2498 = !DILocation(line: 229, column: 13, scope: !2490)
!2499 = !DILocation(line: 135, column: 10, scope: !2500, inlinedAt: !2542)
!2500 = distinct !DISubprogram(name: "vfprintf", scope: !1047, file: !1047, line: 132, type: !2501, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2538)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!260, !2503, !1051, !592}
!2503 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2504)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !311, line: 7, baseType: !2506)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !313, line: 49, size: 1728, elements: !2507)
!2507 = !{!2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2506, file: !313, line: 51, baseType: !260, size: 32)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2506, file: !313, line: 54, baseType: !317, size: 64, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2506, file: !313, line: 55, baseType: !317, size: 64, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2506, file: !313, line: 56, baseType: !317, size: 64, offset: 192)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2506, file: !313, line: 57, baseType: !317, size: 64, offset: 256)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2506, file: !313, line: 58, baseType: !317, size: 64, offset: 320)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2506, file: !313, line: 59, baseType: !317, size: 64, offset: 384)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2506, file: !313, line: 60, baseType: !317, size: 64, offset: 448)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2506, file: !313, line: 61, baseType: !317, size: 64, offset: 512)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2506, file: !313, line: 64, baseType: !317, size: 64, offset: 576)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2506, file: !313, line: 65, baseType: !317, size: 64, offset: 640)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2506, file: !313, line: 66, baseType: !317, size: 64, offset: 704)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2506, file: !313, line: 68, baseType: !329, size: 64, offset: 768)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2506, file: !313, line: 70, baseType: !2522, size: 64, offset: 832)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2506, size: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2506, file: !313, line: 72, baseType: !260, size: 32, offset: 896)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2506, file: !313, line: 73, baseType: !260, size: 32, offset: 928)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2506, file: !313, line: 74, baseType: !336, size: 64, offset: 960)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2506, file: !313, line: 77, baseType: !261, size: 16, offset: 1024)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2506, file: !313, line: 78, baseType: !339, size: 8, offset: 1040)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2506, file: !313, line: 79, baseType: !206, size: 8, offset: 1048)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2506, file: !313, line: 81, baseType: !342, size: 64, offset: 1088)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2506, file: !313, line: 89, baseType: !345, size: 64, offset: 1152)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2506, file: !313, line: 91, baseType: !347, size: 64, offset: 1216)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2506, file: !313, line: 92, baseType: !350, size: 64, offset: 1280)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2506, file: !313, line: 93, baseType: !2522, size: 64, offset: 1344)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2506, file: !313, line: 94, baseType: !354, size: 64, offset: 1408)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2506, file: !313, line: 95, baseType: !262, size: 64, offset: 1472)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2506, file: !313, line: 96, baseType: !260, size: 32, offset: 1536)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2506, file: !313, line: 98, baseType: !358, size: 160, offset: 1568)
!2538 = !{!2539, !2540, !2541}
!2539 = !DILocalVariable(name: "__stream", arg: 1, scope: !2500, file: !1047, line: 132, type: !2503)
!2540 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2500, file: !1047, line: 133, type: !1051)
!2541 = !DILocalVariable(name: "__ap", arg: 3, scope: !2500, file: !1047, line: 133, type: !592)
!2542 = distinct !DILocation(line: 229, column: 3, scope: !2490)
!2543 = !{!2544, !2546}
!2544 = distinct !{!2544, !2545, !"vfprintf.inline: argument 0"}
!2545 = distinct !{!2545, !"vfprintf.inline"}
!2546 = distinct !{!2546, !2545, !"vfprintf.inline: argument 1"}
!2547 = !DILocation(line: 229, column: 3, scope: !2490)
!2548 = !DILocation(line: 0, scope: !2500, inlinedAt: !2542)
!2549 = !DILocation(line: 133, column: 49, scope: !2500, inlinedAt: !2542)
!2550 = !DILocation(line: 232, column: 3, scope: !2490)
!2551 = !DILocation(line: 233, column: 7, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2490, file: !580, line: 233, column: 7)
!2553 = !DILocation(line: 233, column: 7, scope: !2490)
!2554 = !DILocalVariable(name: "errnum", arg: 1, scope: !2555, file: !580, line: 188, type: !260)
!2555 = distinct !DISubprogram(name: "print_errno_message", scope: !580, file: !580, line: 188, type: !947, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2556)
!2556 = !{!2554, !2557, !2558}
!2557 = !DILocalVariable(name: "s", scope: !2555, file: !580, line: 190, type: !265)
!2558 = !DILocalVariable(name: "errbuf", scope: !2555, file: !580, line: 193, type: !2559)
!2559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2560)
!2560 = !{!2561}
!2561 = !DISubrange(count: 1024)
!2562 = !DILocation(line: 0, scope: !2555, inlinedAt: !2563)
!2563 = distinct !DILocation(line: 234, column: 5, scope: !2552)
!2564 = !DILocation(line: 193, column: 3, scope: !2555, inlinedAt: !2563)
!2565 = !DILocation(line: 193, column: 8, scope: !2555, inlinedAt: !2563)
!2566 = !DILocation(line: 195, column: 7, scope: !2555, inlinedAt: !2563)
!2567 = !DILocation(line: 207, column: 9, scope: !2568, inlinedAt: !2563)
!2568 = distinct !DILexicalBlock(scope: !2555, file: !580, line: 207, column: 7)
!2569 = !DILocation(line: 207, column: 7, scope: !2555, inlinedAt: !2563)
!2570 = !DILocation(line: 208, column: 9, scope: !2568, inlinedAt: !2563)
!2571 = !DILocation(line: 208, column: 5, scope: !2568, inlinedAt: !2563)
!2572 = !DILocation(line: 214, column: 3, scope: !2555, inlinedAt: !2563)
!2573 = !DILocation(line: 216, column: 1, scope: !2555, inlinedAt: !2563)
!2574 = !DILocation(line: 234, column: 5, scope: !2552)
!2575 = !DILocation(line: 238, column: 3, scope: !2490)
!2576 = !DILocalVariable(name: "__c", arg: 1, scope: !2577, file: !2578, line: 101, type: !260)
!2577 = distinct !DISubprogram(name: "putc_unlocked", scope: !2578, file: !2578, line: 101, type: !2579, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2581)
!2578 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2579 = !DISubroutineType(types: !2580)
!2580 = !{!260, !260, !2504}
!2581 = !{!2576, !2582}
!2582 = !DILocalVariable(name: "__stream", arg: 2, scope: !2577, file: !2578, line: 101, type: !2504)
!2583 = !DILocation(line: 0, scope: !2577, inlinedAt: !2584)
!2584 = distinct !DILocation(line: 238, column: 3, scope: !2490)
!2585 = !DILocation(line: 103, column: 10, scope: !2577, inlinedAt: !2584)
!2586 = !{!2587, !958, i64 40}
!2587 = !{!"_IO_FILE", !1058, i64 0, !958, i64 8, !958, i64 16, !958, i64 24, !958, i64 32, !958, i64 40, !958, i64 48, !958, i64 56, !958, i64 64, !958, i64 72, !958, i64 80, !958, i64 88, !958, i64 96, !958, i64 104, !1058, i64 112, !1058, i64 116, !1591, i64 120, !1099, i64 128, !959, i64 130, !959, i64 131, !958, i64 136, !1591, i64 144, !958, i64 152, !958, i64 160, !958, i64 168, !958, i64 176, !1591, i64 184, !1058, i64 192, !959, i64 196}
!2588 = !{!2587, !958, i64 48}
!2589 = !{!"branch_weights", i32 2000, i32 1}
!2590 = !DILocation(line: 240, column: 3, scope: !2490)
!2591 = !DILocation(line: 241, column: 7, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2490, file: !580, line: 241, column: 7)
!2593 = !DILocation(line: 241, column: 7, scope: !2490)
!2594 = !DILocation(line: 242, column: 5, scope: !2592)
!2595 = !DILocation(line: 243, column: 1, scope: !2490)
!2596 = !DISubprogram(name: "__vfprintf_chk", scope: !1047, file: !1047, line: 96, type: !2597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!260, !2503, !260, !1051, !592}
!2599 = !DISubprogram(name: "strerror_r", scope: !1177, file: !1177, line: 444, type: !2600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{!317, !260, !317, !262}
!2602 = !DISubprogram(name: "__overflow", scope: !591, file: !591, line: 886, type: !2603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!260, !2504, !260}
!2605 = !DISubprogram(name: "fflush_unlocked", scope: !591, file: !591, line: 239, type: !2606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!260, !2504}
!2608 = !DISubprogram(name: "fcntl", scope: !2609, file: !2609, line: 149, type: !2610, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!2609 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2610 = !DISubroutineType(types: !2611)
!2611 = !{!260, !260, !260, null}
!2612 = distinct !DISubprogram(name: "error", scope: !580, file: !580, line: 285, type: !2613, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2615)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{null, !260, !260, !265, null}
!2615 = !{!2616, !2617, !2618, !2619}
!2616 = !DILocalVariable(name: "status", arg: 1, scope: !2612, file: !580, line: 285, type: !260)
!2617 = !DILocalVariable(name: "errnum", arg: 2, scope: !2612, file: !580, line: 285, type: !260)
!2618 = !DILocalVariable(name: "message", arg: 3, scope: !2612, file: !580, line: 285, type: !265)
!2619 = !DILocalVariable(name: "ap", scope: !2612, file: !580, line: 287, type: !590)
!2620 = !DILocation(line: 0, scope: !2612)
!2621 = !DILocation(line: 287, column: 3, scope: !2612)
!2622 = !DILocation(line: 287, column: 11, scope: !2612)
!2623 = !DILocation(line: 288, column: 3, scope: !2612)
!2624 = !DILocation(line: 289, column: 3, scope: !2612)
!2625 = !DILocation(line: 290, column: 3, scope: !2612)
!2626 = !DILocation(line: 291, column: 1, scope: !2612)
!2627 = !DILocation(line: 0, scope: !587)
!2628 = !DILocation(line: 298, column: 1, scope: !587)
!2629 = !DILocation(line: 302, column: 7, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !587, file: !580, line: 302, column: 7)
!2631 = !DILocation(line: 302, column: 7, scope: !587)
!2632 = !DILocation(line: 307, column: 11, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2634, file: !580, line: 307, column: 11)
!2634 = distinct !DILexicalBlock(scope: !2630, file: !580, line: 303, column: 5)
!2635 = !DILocation(line: 307, column: 27, scope: !2633)
!2636 = !DILocation(line: 308, column: 11, scope: !2633)
!2637 = !DILocation(line: 308, column: 28, scope: !2633)
!2638 = !DILocation(line: 308, column: 25, scope: !2633)
!2639 = !DILocation(line: 309, column: 15, scope: !2633)
!2640 = !DILocation(line: 309, column: 33, scope: !2633)
!2641 = !DILocation(line: 310, column: 19, scope: !2633)
!2642 = !DILocation(line: 311, column: 22, scope: !2633)
!2643 = !DILocation(line: 311, column: 56, scope: !2633)
!2644 = !DILocation(line: 307, column: 11, scope: !2634)
!2645 = !DILocation(line: 316, column: 21, scope: !2634)
!2646 = !DILocation(line: 317, column: 23, scope: !2634)
!2647 = !DILocation(line: 318, column: 5, scope: !2634)
!2648 = !DILocation(line: 327, column: 3, scope: !587)
!2649 = !DILocation(line: 331, column: 7, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !587, file: !580, line: 331, column: 7)
!2651 = !DILocation(line: 331, column: 7, scope: !587)
!2652 = !DILocation(line: 332, column: 5, scope: !2650)
!2653 = !DILocation(line: 338, column: 7, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2650, file: !580, line: 334, column: 5)
!2655 = !DILocation(line: 346, column: 3, scope: !587)
!2656 = !DILocation(line: 350, column: 3, scope: !587)
!2657 = !DILocation(line: 356, column: 1, scope: !587)
!2658 = distinct !DISubprogram(name: "error_at_line", scope: !580, file: !580, line: 359, type: !2659, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2661)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{null, !260, !260, !265, !224, !265, null}
!2661 = !{!2662, !2663, !2664, !2665, !2666, !2667}
!2662 = !DILocalVariable(name: "status", arg: 1, scope: !2658, file: !580, line: 359, type: !260)
!2663 = !DILocalVariable(name: "errnum", arg: 2, scope: !2658, file: !580, line: 359, type: !260)
!2664 = !DILocalVariable(name: "file_name", arg: 3, scope: !2658, file: !580, line: 359, type: !265)
!2665 = !DILocalVariable(name: "line_number", arg: 4, scope: !2658, file: !580, line: 360, type: !224)
!2666 = !DILocalVariable(name: "message", arg: 5, scope: !2658, file: !580, line: 360, type: !265)
!2667 = !DILocalVariable(name: "ap", scope: !2658, file: !580, line: 362, type: !590)
!2668 = !DILocation(line: 0, scope: !2658)
!2669 = !DILocation(line: 362, column: 3, scope: !2658)
!2670 = !DILocation(line: 362, column: 11, scope: !2658)
!2671 = !DILocation(line: 363, column: 3, scope: !2658)
!2672 = !DILocation(line: 364, column: 3, scope: !2658)
!2673 = !DILocation(line: 366, column: 3, scope: !2658)
!2674 = !DILocation(line: 367, column: 1, scope: !2658)
!2675 = distinct !DISubprogram(name: "getprogname", scope: !869, file: !869, line: 54, type: !2676, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !1045)
!2676 = !DISubroutineType(types: !2677)
!2677 = !{!265}
!2678 = !DILocation(line: 58, column: 10, scope: !2675)
!2679 = !DILocation(line: 58, column: 3, scope: !2675)
!2680 = distinct !DISubprogram(name: "umaxtostr", scope: !2681, file: !2681, line: 29, type: !2682, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !2684)
!2681 = !DIFile(filename: "./lib/anytostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e5b8bc0749223f86edfe264a04f25de0")
!2682 = !DISubroutineType(types: !2683)
!2683 = !{!317, !873, !317}
!2684 = !{!2685, !2686, !2687}
!2685 = !DILocalVariable(name: "i", arg: 1, scope: !2680, file: !2681, line: 29, type: !873)
!2686 = !DILocalVariable(name: "buf", arg: 2, scope: !2680, file: !2681, line: 29, type: !317)
!2687 = !DILocalVariable(name: "p", scope: !2680, file: !2681, line: 31, type: !317)
!2688 = !DILocation(line: 0, scope: !2680)
!2689 = !DILocation(line: 31, column: 17, scope: !2680)
!2690 = !DILocation(line: 32, column: 6, scope: !2680)
!2691 = !DILocation(line: 46, column: 17, scope: !2692)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !2681, line: 43, column: 5)
!2693 = distinct !DILexicalBlock(scope: !2680, file: !2681, line: 34, column: 7)
!2694 = !DILocation(line: 45, column: 16, scope: !2692)
!2695 = !DILocation(line: 45, column: 10, scope: !2692)
!2696 = !DILocation(line: 45, column: 14, scope: !2692)
!2697 = !DILocation(line: 46, column: 24, scope: !2692)
!2698 = !DILocation(line: 45, column: 9, scope: !2692)
!2699 = distinct !{!2699, !2700, !2701, !1104}
!2700 = !DILocation(line: 44, column: 7, scope: !2692)
!2701 = !DILocation(line: 46, column: 28, scope: !2692)
!2702 = !DILocation(line: 49, column: 3, scope: !2680)
!2703 = distinct !DISubprogram(name: "set_program_name", scope: !635, file: !635, line: 37, type: !1011, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !634, retainedNodes: !2704)
!2704 = !{!2705, !2706, !2707}
!2705 = !DILocalVariable(name: "argv0", arg: 1, scope: !2703, file: !635, line: 37, type: !265)
!2706 = !DILocalVariable(name: "slash", scope: !2703, file: !635, line: 44, type: !265)
!2707 = !DILocalVariable(name: "base", scope: !2703, file: !635, line: 45, type: !265)
!2708 = !DILocation(line: 0, scope: !2703)
!2709 = !DILocation(line: 44, column: 23, scope: !2703)
!2710 = !DILocation(line: 45, column: 22, scope: !2703)
!2711 = !DILocation(line: 46, column: 17, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2703, file: !635, line: 46, column: 7)
!2713 = !DILocation(line: 46, column: 9, scope: !2712)
!2714 = !DILocation(line: 46, column: 25, scope: !2712)
!2715 = !DILocation(line: 46, column: 40, scope: !2712)
!2716 = !DILocalVariable(name: "__s1", arg: 1, scope: !2717, file: !1070, line: 974, type: !1205)
!2717 = distinct !DISubprogram(name: "memeq", scope: !1070, file: !1070, line: 974, type: !2718, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !634, retainedNodes: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!296, !1205, !1205, !262}
!2720 = !{!2716, !2721, !2722}
!2721 = !DILocalVariable(name: "__s2", arg: 2, scope: !2717, file: !1070, line: 974, type: !1205)
!2722 = !DILocalVariable(name: "__n", arg: 3, scope: !2717, file: !1070, line: 974, type: !262)
!2723 = !DILocation(line: 0, scope: !2717, inlinedAt: !2724)
!2724 = distinct !DILocation(line: 46, column: 28, scope: !2712)
!2725 = !DILocation(line: 976, column: 11, scope: !2717, inlinedAt: !2724)
!2726 = !DILocation(line: 976, column: 10, scope: !2717, inlinedAt: !2724)
!2727 = !DILocation(line: 46, column: 7, scope: !2703)
!2728 = !DILocation(line: 49, column: 11, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2730, file: !635, line: 49, column: 11)
!2730 = distinct !DILexicalBlock(scope: !2712, file: !635, line: 47, column: 5)
!2731 = !DILocation(line: 49, column: 36, scope: !2729)
!2732 = !DILocation(line: 49, column: 11, scope: !2730)
!2733 = !DILocation(line: 65, column: 16, scope: !2703)
!2734 = !DILocation(line: 71, column: 27, scope: !2703)
!2735 = !DILocation(line: 74, column: 33, scope: !2703)
!2736 = !DILocation(line: 76, column: 1, scope: !2703)
!2737 = !DISubprogram(name: "strrchr", scope: !1177, file: !1177, line: 273, type: !1192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!2738 = distinct !DISubprogram(name: "clone_quoting_options", scope: !644, file: !644, line: 113, type: !2739, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2742)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{!2741, !2741}
!2741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!2742 = !{!2743, !2744, !2745}
!2743 = !DILocalVariable(name: "o", arg: 1, scope: !2738, file: !644, line: 113, type: !2741)
!2744 = !DILocalVariable(name: "saved_errno", scope: !2738, file: !644, line: 115, type: !260)
!2745 = !DILocalVariable(name: "p", scope: !2738, file: !644, line: 116, type: !2741)
!2746 = !DILocation(line: 0, scope: !2738)
!2747 = !DILocation(line: 115, column: 21, scope: !2738)
!2748 = !DILocation(line: 116, column: 40, scope: !2738)
!2749 = !DILocation(line: 116, column: 31, scope: !2738)
!2750 = !DILocation(line: 118, column: 9, scope: !2738)
!2751 = !DILocation(line: 119, column: 3, scope: !2738)
!2752 = distinct !DISubprogram(name: "get_quoting_style", scope: !644, file: !644, line: 124, type: !2753, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2757)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!670, !2755}
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !697)
!2757 = !{!2758}
!2758 = !DILocalVariable(name: "o", arg: 1, scope: !2752, file: !644, line: 124, type: !2755)
!2759 = !DILocation(line: 0, scope: !2752)
!2760 = !DILocation(line: 126, column: 11, scope: !2752)
!2761 = !DILocation(line: 126, column: 46, scope: !2752)
!2762 = !{!2763, !959, i64 0}
!2763 = !{!"quoting_options", !959, i64 0, !1058, i64 4, !959, i64 8, !958, i64 40, !958, i64 48}
!2764 = !DILocation(line: 126, column: 3, scope: !2752)
!2765 = distinct !DISubprogram(name: "set_quoting_style", scope: !644, file: !644, line: 132, type: !2766, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2768)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{null, !2741, !670}
!2768 = !{!2769, !2770}
!2769 = !DILocalVariable(name: "o", arg: 1, scope: !2765, file: !644, line: 132, type: !2741)
!2770 = !DILocalVariable(name: "s", arg: 2, scope: !2765, file: !644, line: 132, type: !670)
!2771 = !DILocation(line: 0, scope: !2765)
!2772 = !DILocation(line: 134, column: 4, scope: !2765)
!2773 = !DILocation(line: 134, column: 45, scope: !2765)
!2774 = !DILocation(line: 135, column: 1, scope: !2765)
!2775 = distinct !DISubprogram(name: "set_char_quoting", scope: !644, file: !644, line: 143, type: !2776, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!260, !2741, !4, !260}
!2778 = !{!2779, !2780, !2781, !2782, !2783, !2785, !2786}
!2779 = !DILocalVariable(name: "o", arg: 1, scope: !2775, file: !644, line: 143, type: !2741)
!2780 = !DILocalVariable(name: "c", arg: 2, scope: !2775, file: !644, line: 143, type: !4)
!2781 = !DILocalVariable(name: "i", arg: 3, scope: !2775, file: !644, line: 143, type: !260)
!2782 = !DILocalVariable(name: "uc", scope: !2775, file: !644, line: 145, type: !267)
!2783 = !DILocalVariable(name: "p", scope: !2775, file: !644, line: 146, type: !2784)
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!2785 = !DILocalVariable(name: "shift", scope: !2775, file: !644, line: 148, type: !260)
!2786 = !DILocalVariable(name: "r", scope: !2775, file: !644, line: 149, type: !224)
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
!2800 = distinct !DISubprogram(name: "set_quoting_flags", scope: !644, file: !644, line: 159, type: !2801, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2803)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!260, !2741, !260}
!2803 = !{!2804, !2805, !2806}
!2804 = !DILocalVariable(name: "o", arg: 1, scope: !2800, file: !644, line: 159, type: !2741)
!2805 = !DILocalVariable(name: "i", arg: 2, scope: !2800, file: !644, line: 159, type: !260)
!2806 = !DILocalVariable(name: "r", scope: !2800, file: !644, line: 163, type: !260)
!2807 = !DILocation(line: 0, scope: !2800)
!2808 = !DILocation(line: 161, column: 8, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2800, file: !644, line: 161, column: 7)
!2810 = !DILocation(line: 161, column: 7, scope: !2800)
!2811 = !DILocation(line: 163, column: 14, scope: !2800)
!2812 = !{!2763, !1058, i64 4}
!2813 = !DILocation(line: 164, column: 12, scope: !2800)
!2814 = !DILocation(line: 165, column: 3, scope: !2800)
!2815 = distinct !DISubprogram(name: "set_custom_quoting", scope: !644, file: !644, line: 169, type: !2816, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2818)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{null, !2741, !265, !265}
!2818 = !{!2819, !2820, !2821}
!2819 = !DILocalVariable(name: "o", arg: 1, scope: !2815, file: !644, line: 169, type: !2741)
!2820 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2815, file: !644, line: 170, type: !265)
!2821 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2815, file: !644, line: 170, type: !265)
!2822 = !DILocation(line: 0, scope: !2815)
!2823 = !DILocation(line: 172, column: 8, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2815, file: !644, line: 172, column: 7)
!2825 = !DILocation(line: 172, column: 7, scope: !2815)
!2826 = !DILocation(line: 174, column: 12, scope: !2815)
!2827 = !DILocation(line: 175, column: 8, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2815, file: !644, line: 175, column: 7)
!2829 = !DILocation(line: 175, column: 19, scope: !2828)
!2830 = !DILocation(line: 176, column: 5, scope: !2828)
!2831 = !DILocation(line: 177, column: 6, scope: !2815)
!2832 = !DILocation(line: 177, column: 17, scope: !2815)
!2833 = !{!2763, !958, i64 40}
!2834 = !DILocation(line: 178, column: 6, scope: !2815)
!2835 = !DILocation(line: 178, column: 18, scope: !2815)
!2836 = !{!2763, !958, i64 48}
!2837 = !DILocation(line: 179, column: 1, scope: !2815)
!2838 = !DISubprogram(name: "abort", scope: !1181, file: !1181, line: 598, type: !630, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!2839 = distinct !DISubprogram(name: "quotearg_buffer", scope: !644, file: !644, line: 774, type: !2840, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2842)
!2840 = !DISubroutineType(types: !2841)
!2841 = !{!262, !317, !262, !265, !262, !2755}
!2842 = !{!2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850}
!2843 = !DILocalVariable(name: "buffer", arg: 1, scope: !2839, file: !644, line: 774, type: !317)
!2844 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2839, file: !644, line: 774, type: !262)
!2845 = !DILocalVariable(name: "arg", arg: 3, scope: !2839, file: !644, line: 775, type: !265)
!2846 = !DILocalVariable(name: "argsize", arg: 4, scope: !2839, file: !644, line: 775, type: !262)
!2847 = !DILocalVariable(name: "o", arg: 5, scope: !2839, file: !644, line: 776, type: !2755)
!2848 = !DILocalVariable(name: "p", scope: !2839, file: !644, line: 778, type: !2755)
!2849 = !DILocalVariable(name: "saved_errno", scope: !2839, file: !644, line: 779, type: !260)
!2850 = !DILocalVariable(name: "r", scope: !2839, file: !644, line: 780, type: !262)
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
!2862 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !644, file: !644, line: 251, type: !2863, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2867)
!2863 = !DISubroutineType(types: !2864)
!2864 = !{!262, !317, !262, !265, !262, !670, !260, !2865, !265, !265}
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2866, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!2867 = !{!2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2892, !2894, !2897, !2898, !2899, !2900, !2903, !2904, !2907, !2911, !2912, !2920, !2923, !2924, !2926, !2927, !2928, !2929}
!2868 = !DILocalVariable(name: "buffer", arg: 1, scope: !2862, file: !644, line: 251, type: !317)
!2869 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2862, file: !644, line: 251, type: !262)
!2870 = !DILocalVariable(name: "arg", arg: 3, scope: !2862, file: !644, line: 252, type: !265)
!2871 = !DILocalVariable(name: "argsize", arg: 4, scope: !2862, file: !644, line: 252, type: !262)
!2872 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2862, file: !644, line: 253, type: !670)
!2873 = !DILocalVariable(name: "flags", arg: 6, scope: !2862, file: !644, line: 253, type: !260)
!2874 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2862, file: !644, line: 254, type: !2865)
!2875 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2862, file: !644, line: 255, type: !265)
!2876 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2862, file: !644, line: 256, type: !265)
!2877 = !DILocalVariable(name: "unibyte_locale", scope: !2862, file: !644, line: 258, type: !296)
!2878 = !DILocalVariable(name: "len", scope: !2862, file: !644, line: 260, type: !262)
!2879 = !DILocalVariable(name: "orig_buffersize", scope: !2862, file: !644, line: 261, type: !262)
!2880 = !DILocalVariable(name: "quote_string", scope: !2862, file: !644, line: 262, type: !265)
!2881 = !DILocalVariable(name: "quote_string_len", scope: !2862, file: !644, line: 263, type: !262)
!2882 = !DILocalVariable(name: "backslash_escapes", scope: !2862, file: !644, line: 264, type: !296)
!2883 = !DILocalVariable(name: "elide_outer_quotes", scope: !2862, file: !644, line: 265, type: !296)
!2884 = !DILocalVariable(name: "encountered_single_quote", scope: !2862, file: !644, line: 266, type: !296)
!2885 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2862, file: !644, line: 267, type: !296)
!2886 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2862, file: !644, line: 309, type: !296)
!2887 = !DILocalVariable(name: "lq", scope: !2888, file: !644, line: 361, type: !265)
!2888 = distinct !DILexicalBlock(scope: !2889, file: !644, line: 361, column: 11)
!2889 = distinct !DILexicalBlock(scope: !2890, file: !644, line: 360, column: 13)
!2890 = distinct !DILexicalBlock(scope: !2891, file: !644, line: 333, column: 7)
!2891 = distinct !DILexicalBlock(scope: !2862, file: !644, line: 312, column: 5)
!2892 = !DILocalVariable(name: "i", scope: !2893, file: !644, line: 395, type: !262)
!2893 = distinct !DILexicalBlock(scope: !2862, file: !644, line: 395, column: 3)
!2894 = !DILocalVariable(name: "is_right_quote", scope: !2895, file: !644, line: 397, type: !296)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !644, line: 396, column: 5)
!2896 = distinct !DILexicalBlock(scope: !2893, file: !644, line: 395, column: 3)
!2897 = !DILocalVariable(name: "escaping", scope: !2895, file: !644, line: 398, type: !296)
!2898 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2895, file: !644, line: 399, type: !296)
!2899 = !DILocalVariable(name: "c", scope: !2895, file: !644, line: 417, type: !267)
!2900 = !DILocalVariable(name: "m", scope: !2901, file: !644, line: 598, type: !262)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !644, line: 596, column: 11)
!2902 = distinct !DILexicalBlock(scope: !2895, file: !644, line: 419, column: 9)
!2903 = !DILocalVariable(name: "printable", scope: !2901, file: !644, line: 600, type: !296)
!2904 = !DILocalVariable(name: "mbs", scope: !2905, file: !644, line: 609, type: !735)
!2905 = distinct !DILexicalBlock(scope: !2906, file: !644, line: 608, column: 15)
!2906 = distinct !DILexicalBlock(scope: !2901, file: !644, line: 602, column: 17)
!2907 = !DILocalVariable(name: "w", scope: !2908, file: !644, line: 618, type: !730)
!2908 = distinct !DILexicalBlock(scope: !2909, file: !644, line: 617, column: 19)
!2909 = distinct !DILexicalBlock(scope: !2910, file: !644, line: 616, column: 17)
!2910 = distinct !DILexicalBlock(scope: !2905, file: !644, line: 616, column: 17)
!2911 = !DILocalVariable(name: "bytes", scope: !2908, file: !644, line: 619, type: !262)
!2912 = !DILocalVariable(name: "j", scope: !2913, file: !644, line: 648, type: !262)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !644, line: 648, column: 29)
!2914 = distinct !DILexicalBlock(scope: !2915, file: !644, line: 647, column: 27)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !644, line: 645, column: 29)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !644, line: 636, column: 23)
!2917 = distinct !DILexicalBlock(scope: !2918, file: !644, line: 628, column: 30)
!2918 = distinct !DILexicalBlock(scope: !2919, file: !644, line: 623, column: 30)
!2919 = distinct !DILexicalBlock(scope: !2908, file: !644, line: 621, column: 25)
!2920 = !DILocalVariable(name: "ilim", scope: !2921, file: !644, line: 674, type: !262)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !644, line: 671, column: 15)
!2922 = distinct !DILexicalBlock(scope: !2901, file: !644, line: 670, column: 17)
!2923 = !DILabel(scope: !2862, name: "process_input", file: !644, line: 308)
!2924 = !DILabel(scope: !2925, name: "c_and_shell_escape", file: !644, line: 502)
!2925 = distinct !DILexicalBlock(scope: !2902, file: !644, line: 478, column: 9)
!2926 = !DILabel(scope: !2925, name: "c_escape", file: !644, line: 507)
!2927 = !DILabel(scope: !2895, name: "store_escape", file: !644, line: 709)
!2928 = !DILabel(scope: !2895, name: "store_c", file: !644, line: 712)
!2929 = !DILabel(scope: !2862, name: "force_outer_quoting_style", file: !644, line: 753)
!2930 = !DILocation(line: 0, scope: !2862)
!2931 = !DILocation(line: 258, column: 25, scope: !2862)
!2932 = !DILocation(line: 258, column: 36, scope: !2862)
!2933 = !DILocation(line: 267, column: 3, scope: !2862)
!2934 = !DILocation(line: 261, column: 10, scope: !2862)
!2935 = !DILocation(line: 262, column: 15, scope: !2862)
!2936 = !DILocation(line: 263, column: 10, scope: !2862)
!2937 = !DILocation(line: 308, column: 2, scope: !2862)
!2938 = !DILocation(line: 311, column: 3, scope: !2862)
!2939 = !DILocation(line: 318, column: 11, scope: !2891)
!2940 = !DILocation(line: 319, column: 9, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2942, file: !644, line: 319, column: 9)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !644, line: 319, column: 9)
!2943 = distinct !DILexicalBlock(scope: !2891, file: !644, line: 318, column: 11)
!2944 = !DILocation(line: 319, column: 9, scope: !2942)
!2945 = !DILocation(line: 0, scope: !722, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 357, column: 26, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !644, line: 335, column: 11)
!2948 = distinct !DILexicalBlock(scope: !2890, file: !644, line: 334, column: 13)
!2949 = !DILocation(line: 199, column: 29, scope: !722, inlinedAt: !2946)
!2950 = !DILocation(line: 201, column: 19, scope: !2951, inlinedAt: !2946)
!2951 = distinct !DILexicalBlock(scope: !722, file: !644, line: 201, column: 7)
!2952 = !DILocation(line: 201, column: 7, scope: !722, inlinedAt: !2946)
!2953 = !DILocation(line: 229, column: 3, scope: !722, inlinedAt: !2946)
!2954 = !DILocation(line: 230, column: 3, scope: !722, inlinedAt: !2946)
!2955 = !DILocation(line: 230, column: 13, scope: !722, inlinedAt: !2946)
!2956 = !DILocalVariable(name: "ps", arg: 1, scope: !2957, file: !2958, line: 1135, type: !2961)
!2957 = distinct !DISubprogram(name: "mbszero", scope: !2958, file: !2958, line: 1135, type: !2959, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2962)
!2958 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2959 = !DISubroutineType(types: !2960)
!2960 = !{null, !2961}
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!2962 = !{!2956}
!2963 = !DILocation(line: 0, scope: !2957, inlinedAt: !2964)
!2964 = distinct !DILocation(line: 230, column: 18, scope: !722, inlinedAt: !2946)
!2965 = !DILocalVariable(name: "__dest", arg: 1, scope: !2966, file: !2967, line: 57, type: !354)
!2966 = distinct !DISubprogram(name: "memset", scope: !2967, file: !2967, line: 57, type: !2968, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !2970)
!2967 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!354, !354, !260, !262}
!2970 = !{!2965, !2971, !2972}
!2971 = !DILocalVariable(name: "__ch", arg: 2, scope: !2966, file: !2967, line: 57, type: !260)
!2972 = !DILocalVariable(name: "__len", arg: 3, scope: !2966, file: !2967, line: 57, type: !262)
!2973 = !DILocation(line: 0, scope: !2966, inlinedAt: !2974)
!2974 = distinct !DILocation(line: 1137, column: 3, scope: !2957, inlinedAt: !2964)
!2975 = !DILocation(line: 59, column: 10, scope: !2966, inlinedAt: !2974)
!2976 = !DILocation(line: 231, column: 7, scope: !2977, inlinedAt: !2946)
!2977 = distinct !DILexicalBlock(scope: !722, file: !644, line: 231, column: 7)
!2978 = !DILocation(line: 231, column: 40, scope: !2977, inlinedAt: !2946)
!2979 = !DILocation(line: 231, column: 45, scope: !2977, inlinedAt: !2946)
!2980 = !DILocation(line: 235, column: 1, scope: !722, inlinedAt: !2946)
!2981 = !DILocation(line: 0, scope: !722, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 358, column: 27, scope: !2947)
!2983 = !DILocation(line: 199, column: 29, scope: !722, inlinedAt: !2982)
!2984 = !DILocation(line: 201, column: 19, scope: !2951, inlinedAt: !2982)
!2985 = !DILocation(line: 201, column: 7, scope: !722, inlinedAt: !2982)
!2986 = !DILocation(line: 229, column: 3, scope: !722, inlinedAt: !2982)
!2987 = !DILocation(line: 230, column: 3, scope: !722, inlinedAt: !2982)
!2988 = !DILocation(line: 230, column: 13, scope: !722, inlinedAt: !2982)
!2989 = !DILocation(line: 0, scope: !2957, inlinedAt: !2990)
!2990 = distinct !DILocation(line: 230, column: 18, scope: !722, inlinedAt: !2982)
!2991 = !DILocation(line: 0, scope: !2966, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 1137, column: 3, scope: !2957, inlinedAt: !2990)
!2993 = !DILocation(line: 59, column: 10, scope: !2966, inlinedAt: !2992)
!2994 = !DILocation(line: 231, column: 7, scope: !2977, inlinedAt: !2982)
!2995 = !DILocation(line: 231, column: 40, scope: !2977, inlinedAt: !2982)
!2996 = !DILocation(line: 231, column: 45, scope: !2977, inlinedAt: !2982)
!2997 = !DILocation(line: 235, column: 1, scope: !722, inlinedAt: !2982)
!2998 = !DILocation(line: 360, column: 13, scope: !2890)
!2999 = !DILocation(line: 0, scope: !2888)
!3000 = !DILocation(line: 361, column: 45, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2888, file: !644, line: 361, column: 11)
!3002 = !DILocation(line: 361, column: 11, scope: !2888)
!3003 = !DILocation(line: 362, column: 13, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !3005, file: !644, line: 362, column: 13)
!3005 = distinct !DILexicalBlock(scope: !3001, file: !644, line: 362, column: 13)
!3006 = !DILocation(line: 362, column: 13, scope: !3005)
!3007 = !DILocation(line: 361, column: 52, scope: !3001)
!3008 = distinct !{!3008, !3002, !3009, !1104}
!3009 = !DILocation(line: 362, column: 13, scope: !2888)
!3010 = !DILocation(line: 260, column: 10, scope: !2862)
!3011 = !DILocation(line: 365, column: 28, scope: !2890)
!3012 = !DILocation(line: 367, column: 7, scope: !2891)
!3013 = !DILocation(line: 370, column: 7, scope: !2891)
!3014 = !DILocation(line: 376, column: 11, scope: !2891)
!3015 = !DILocation(line: 381, column: 11, scope: !2891)
!3016 = !DILocation(line: 382, column: 9, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !644, line: 382, column: 9)
!3018 = distinct !DILexicalBlock(scope: !3019, file: !644, line: 382, column: 9)
!3019 = distinct !DILexicalBlock(scope: !2891, file: !644, line: 381, column: 11)
!3020 = !DILocation(line: 382, column: 9, scope: !3018)
!3021 = !DILocation(line: 389, column: 7, scope: !2891)
!3022 = !DILocation(line: 392, column: 7, scope: !2891)
!3023 = !DILocation(line: 0, scope: !2893)
!3024 = !DILocation(line: 395, column: 8, scope: !2893)
!3025 = !DILocation(line: 395, scope: !2893)
!3026 = !DILocation(line: 395, column: 34, scope: !2896)
!3027 = !DILocation(line: 395, column: 26, scope: !2896)
!3028 = !DILocation(line: 395, column: 48, scope: !2896)
!3029 = !DILocation(line: 395, column: 55, scope: !2896)
!3030 = !DILocation(line: 395, column: 3, scope: !2893)
!3031 = !DILocation(line: 395, column: 67, scope: !2896)
!3032 = !DILocation(line: 0, scope: !2895)
!3033 = !DILocation(line: 402, column: 11, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !2895, file: !644, line: 401, column: 11)
!3035 = !DILocation(line: 404, column: 17, scope: !3034)
!3036 = !DILocation(line: 405, column: 39, scope: !3034)
!3037 = !DILocation(line: 409, column: 32, scope: !3034)
!3038 = !DILocation(line: 405, column: 19, scope: !3034)
!3039 = !DILocation(line: 405, column: 15, scope: !3034)
!3040 = !DILocation(line: 410, column: 11, scope: !3034)
!3041 = !DILocation(line: 410, column: 25, scope: !3034)
!3042 = !DILocalVariable(name: "__s1", arg: 1, scope: !3043, file: !1070, line: 974, type: !1205)
!3043 = distinct !DISubprogram(name: "memeq", scope: !1070, file: !1070, line: 974, type: !2718, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3044)
!3044 = !{!3042, !3045, !3046}
!3045 = !DILocalVariable(name: "__s2", arg: 2, scope: !3043, file: !1070, line: 974, type: !1205)
!3046 = !DILocalVariable(name: "__n", arg: 3, scope: !3043, file: !1070, line: 974, type: !262)
!3047 = !DILocation(line: 0, scope: !3043, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 410, column: 14, scope: !3034)
!3049 = !DILocation(line: 976, column: 11, scope: !3043, inlinedAt: !3048)
!3050 = !DILocation(line: 976, column: 10, scope: !3043, inlinedAt: !3048)
!3051 = !DILocation(line: 401, column: 11, scope: !2895)
!3052 = !DILocation(line: 417, column: 25, scope: !2895)
!3053 = !DILocation(line: 418, column: 7, scope: !2895)
!3054 = !DILocation(line: 421, column: 15, scope: !2902)
!3055 = !DILocation(line: 423, column: 15, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !644, line: 423, column: 15)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !644, line: 422, column: 13)
!3058 = distinct !DILexicalBlock(scope: !2902, file: !644, line: 421, column: 15)
!3059 = !DILocation(line: 423, column: 15, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3056, file: !644, line: 423, column: 15)
!3061 = !DILocation(line: 423, column: 15, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !644, line: 423, column: 15)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !644, line: 423, column: 15)
!3064 = distinct !DILexicalBlock(scope: !3060, file: !644, line: 423, column: 15)
!3065 = !DILocation(line: 423, column: 15, scope: !3063)
!3066 = !DILocation(line: 423, column: 15, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !644, line: 423, column: 15)
!3068 = distinct !DILexicalBlock(scope: !3064, file: !644, line: 423, column: 15)
!3069 = !DILocation(line: 423, column: 15, scope: !3068)
!3070 = !DILocation(line: 423, column: 15, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3072, file: !644, line: 423, column: 15)
!3072 = distinct !DILexicalBlock(scope: !3064, file: !644, line: 423, column: 15)
!3073 = !DILocation(line: 423, column: 15, scope: !3072)
!3074 = !DILocation(line: 423, column: 15, scope: !3064)
!3075 = !DILocation(line: 423, column: 15, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3077, file: !644, line: 423, column: 15)
!3077 = distinct !DILexicalBlock(scope: !3056, file: !644, line: 423, column: 15)
!3078 = !DILocation(line: 423, column: 15, scope: !3077)
!3079 = !DILocation(line: 431, column: 19, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3057, file: !644, line: 430, column: 19)
!3081 = !DILocation(line: 431, column: 24, scope: !3080)
!3082 = !DILocation(line: 431, column: 28, scope: !3080)
!3083 = !DILocation(line: 431, column: 38, scope: !3080)
!3084 = !DILocation(line: 431, column: 48, scope: !3080)
!3085 = !DILocation(line: 431, column: 59, scope: !3080)
!3086 = !DILocation(line: 433, column: 19, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !644, line: 433, column: 19)
!3088 = distinct !DILexicalBlock(scope: !3089, file: !644, line: 433, column: 19)
!3089 = distinct !DILexicalBlock(scope: !3080, file: !644, line: 432, column: 17)
!3090 = !DILocation(line: 433, column: 19, scope: !3088)
!3091 = !DILocation(line: 434, column: 19, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !3093, file: !644, line: 434, column: 19)
!3093 = distinct !DILexicalBlock(scope: !3089, file: !644, line: 434, column: 19)
!3094 = !DILocation(line: 434, column: 19, scope: !3093)
!3095 = !DILocation(line: 435, column: 17, scope: !3089)
!3096 = !DILocation(line: 442, column: 20, scope: !3058)
!3097 = !DILocation(line: 447, column: 11, scope: !2902)
!3098 = !DILocation(line: 450, column: 19, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !2902, file: !644, line: 448, column: 13)
!3100 = !DILocation(line: 456, column: 19, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3099, file: !644, line: 455, column: 19)
!3102 = !DILocation(line: 456, column: 24, scope: !3101)
!3103 = !DILocation(line: 456, column: 28, scope: !3101)
!3104 = !DILocation(line: 456, column: 38, scope: !3101)
!3105 = !DILocation(line: 456, column: 47, scope: !3101)
!3106 = !DILocation(line: 456, column: 41, scope: !3101)
!3107 = !DILocation(line: 456, column: 52, scope: !3101)
!3108 = !DILocation(line: 455, column: 19, scope: !3099)
!3109 = !DILocation(line: 457, column: 25, scope: !3101)
!3110 = !DILocation(line: 457, column: 17, scope: !3101)
!3111 = !DILocation(line: 464, column: 25, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3101, file: !644, line: 458, column: 19)
!3113 = !DILocation(line: 468, column: 21, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !644, line: 468, column: 21)
!3115 = distinct !DILexicalBlock(scope: !3112, file: !644, line: 468, column: 21)
!3116 = !DILocation(line: 468, column: 21, scope: !3115)
!3117 = !DILocation(line: 469, column: 21, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3119, file: !644, line: 469, column: 21)
!3119 = distinct !DILexicalBlock(scope: !3112, file: !644, line: 469, column: 21)
!3120 = !DILocation(line: 469, column: 21, scope: !3119)
!3121 = !DILocation(line: 470, column: 21, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3123, file: !644, line: 470, column: 21)
!3123 = distinct !DILexicalBlock(scope: !3112, file: !644, line: 470, column: 21)
!3124 = !DILocation(line: 470, column: 21, scope: !3123)
!3125 = !DILocation(line: 471, column: 21, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !644, line: 471, column: 21)
!3127 = distinct !DILexicalBlock(scope: !3112, file: !644, line: 471, column: 21)
!3128 = !DILocation(line: 471, column: 21, scope: !3127)
!3129 = !DILocation(line: 472, column: 21, scope: !3112)
!3130 = !DILocation(line: 482, column: 33, scope: !2925)
!3131 = !DILocation(line: 483, column: 33, scope: !2925)
!3132 = !DILocation(line: 485, column: 33, scope: !2925)
!3133 = !DILocation(line: 486, column: 33, scope: !2925)
!3134 = !DILocation(line: 487, column: 33, scope: !2925)
!3135 = !DILocation(line: 490, column: 17, scope: !2925)
!3136 = !DILocation(line: 492, column: 21, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3138, file: !644, line: 491, column: 15)
!3138 = distinct !DILexicalBlock(scope: !2925, file: !644, line: 490, column: 17)
!3139 = !DILocation(line: 499, column: 35, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !2925, file: !644, line: 499, column: 17)
!3141 = !DILocation(line: 0, scope: !2925)
!3142 = !DILocation(line: 502, column: 11, scope: !2925)
!3143 = !DILocation(line: 504, column: 17, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !2925, file: !644, line: 503, column: 17)
!3145 = !DILocation(line: 507, column: 11, scope: !2925)
!3146 = !DILocation(line: 508, column: 17, scope: !2925)
!3147 = !DILocation(line: 517, column: 15, scope: !2902)
!3148 = !DILocation(line: 517, column: 40, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !2902, file: !644, line: 517, column: 15)
!3150 = !DILocation(line: 517, column: 47, scope: !3149)
!3151 = !DILocation(line: 517, column: 18, scope: !3149)
!3152 = !DILocation(line: 521, column: 17, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !2902, file: !644, line: 521, column: 15)
!3154 = !DILocation(line: 521, column: 15, scope: !2902)
!3155 = !DILocation(line: 525, column: 11, scope: !2902)
!3156 = !DILocation(line: 537, column: 15, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !2902, file: !644, line: 536, column: 15)
!3158 = !DILocation(line: 536, column: 15, scope: !2902)
!3159 = !DILocation(line: 544, column: 15, scope: !2902)
!3160 = !DILocation(line: 546, column: 19, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !644, line: 545, column: 13)
!3162 = distinct !DILexicalBlock(scope: !2902, file: !644, line: 544, column: 15)
!3163 = !DILocation(line: 549, column: 19, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3161, file: !644, line: 549, column: 19)
!3165 = !DILocation(line: 549, column: 30, scope: !3164)
!3166 = !DILocation(line: 558, column: 15, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !644, line: 558, column: 15)
!3168 = distinct !DILexicalBlock(scope: !3161, file: !644, line: 558, column: 15)
!3169 = !DILocation(line: 558, column: 15, scope: !3168)
!3170 = !DILocation(line: 559, column: 15, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3172, file: !644, line: 559, column: 15)
!3172 = distinct !DILexicalBlock(scope: !3161, file: !644, line: 559, column: 15)
!3173 = !DILocation(line: 559, column: 15, scope: !3172)
!3174 = !DILocation(line: 560, column: 15, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3176, file: !644, line: 560, column: 15)
!3176 = distinct !DILexicalBlock(scope: !3161, file: !644, line: 560, column: 15)
!3177 = !DILocation(line: 560, column: 15, scope: !3176)
!3178 = !DILocation(line: 562, column: 13, scope: !3161)
!3179 = !DILocation(line: 602, column: 17, scope: !2901)
!3180 = !DILocation(line: 0, scope: !2901)
!3181 = !DILocation(line: 605, column: 29, scope: !3182)
!3182 = distinct !DILexicalBlock(scope: !2906, file: !644, line: 603, column: 15)
!3183 = !DILocation(line: 605, column: 41, scope: !3182)
!3184 = !DILocation(line: 606, column: 15, scope: !3182)
!3185 = !DILocation(line: 609, column: 17, scope: !2905)
!3186 = !DILocation(line: 609, column: 27, scope: !2905)
!3187 = !DILocation(line: 0, scope: !2957, inlinedAt: !3188)
!3188 = distinct !DILocation(line: 609, column: 32, scope: !2905)
!3189 = !DILocation(line: 0, scope: !2966, inlinedAt: !3190)
!3190 = distinct !DILocation(line: 1137, column: 3, scope: !2957, inlinedAt: !3188)
!3191 = !DILocation(line: 59, column: 10, scope: !2966, inlinedAt: !3190)
!3192 = !DILocation(line: 613, column: 29, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !2905, file: !644, line: 613, column: 21)
!3194 = !DILocation(line: 613, column: 21, scope: !2905)
!3195 = !DILocation(line: 614, column: 29, scope: !3193)
!3196 = !DILocation(line: 614, column: 19, scope: !3193)
!3197 = !DILocation(line: 618, column: 21, scope: !2908)
!3198 = !DILocation(line: 620, column: 54, scope: !2908)
!3199 = !DILocation(line: 0, scope: !2908)
!3200 = !DILocation(line: 619, column: 36, scope: !2908)
!3201 = !DILocation(line: 621, column: 25, scope: !2908)
!3202 = !DILocation(line: 631, column: 38, scope: !3203)
!3203 = distinct !DILexicalBlock(scope: !2917, file: !644, line: 629, column: 23)
!3204 = !DILocation(line: 631, column: 48, scope: !3203)
!3205 = !DILocation(line: 626, column: 25, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !2918, file: !644, line: 624, column: 23)
!3207 = !DILocation(line: 631, column: 51, scope: !3203)
!3208 = !DILocation(line: 631, column: 25, scope: !3203)
!3209 = !DILocation(line: 632, column: 28, scope: !3203)
!3210 = !DILocation(line: 631, column: 34, scope: !3203)
!3211 = distinct !{!3211, !3208, !3209, !1104}
!3212 = !DILocation(line: 646, column: 29, scope: !2915)
!3213 = !DILocation(line: 0, scope: !2913)
!3214 = !DILocation(line: 649, column: 49, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !2913, file: !644, line: 648, column: 29)
!3216 = !DILocation(line: 649, column: 39, scope: !3215)
!3217 = !DILocation(line: 649, column: 31, scope: !3215)
!3218 = !DILocation(line: 648, column: 60, scope: !3215)
!3219 = !DILocation(line: 648, column: 50, scope: !3215)
!3220 = !DILocation(line: 648, column: 29, scope: !2913)
!3221 = distinct !{!3221, !3220, !3222, !1104}
!3222 = !DILocation(line: 654, column: 33, scope: !2913)
!3223 = !DILocation(line: 657, column: 43, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !2916, file: !644, line: 657, column: 29)
!3225 = !DILocalVariable(name: "wc", arg: 1, scope: !3226, file: !3227, line: 865, type: !3230)
!3226 = distinct !DISubprogram(name: "c32isprint", scope: !3227, file: !3227, line: 865, type: !3228, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3232)
!3227 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3228 = !DISubroutineType(types: !3229)
!3229 = !{!260, !3230}
!3230 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3231, line: 20, baseType: !224)
!3231 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3232 = !{!3225}
!3233 = !DILocation(line: 0, scope: !3226, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 657, column: 31, scope: !3224)
!3235 = !DILocation(line: 871, column: 10, scope: !3226, inlinedAt: !3234)
!3236 = !DILocation(line: 657, column: 31, scope: !3224)
!3237 = !DILocation(line: 664, column: 23, scope: !2908)
!3238 = !DILocation(line: 665, column: 19, scope: !2909)
!3239 = !DILocation(line: 666, column: 15, scope: !2906)
!3240 = !DILocation(line: 753, column: 2, scope: !2862)
!3241 = !DILocation(line: 756, column: 51, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !2862, file: !644, line: 756, column: 7)
!3243 = !DILocation(line: 0, scope: !2906)
!3244 = !DILocation(line: 670, column: 19, scope: !2922)
!3245 = !DILocation(line: 670, column: 23, scope: !2922)
!3246 = !DILocation(line: 674, column: 33, scope: !2921)
!3247 = !DILocation(line: 0, scope: !2921)
!3248 = !DILocation(line: 676, column: 17, scope: !2921)
!3249 = !DILocation(line: 398, column: 12, scope: !2895)
!3250 = !DILocation(line: 678, column: 43, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3252, file: !644, line: 678, column: 25)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !644, line: 677, column: 19)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !644, line: 676, column: 17)
!3254 = distinct !DILexicalBlock(scope: !2921, file: !644, line: 676, column: 17)
!3255 = !DILocation(line: 680, column: 25, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3257, file: !644, line: 680, column: 25)
!3257 = distinct !DILexicalBlock(scope: !3251, file: !644, line: 679, column: 23)
!3258 = !DILocation(line: 680, column: 25, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3256, file: !644, line: 680, column: 25)
!3260 = !DILocation(line: 680, column: 25, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3262, file: !644, line: 680, column: 25)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !644, line: 680, column: 25)
!3263 = distinct !DILexicalBlock(scope: !3259, file: !644, line: 680, column: 25)
!3264 = !DILocation(line: 680, column: 25, scope: !3262)
!3265 = !DILocation(line: 680, column: 25, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !644, line: 680, column: 25)
!3267 = distinct !DILexicalBlock(scope: !3263, file: !644, line: 680, column: 25)
!3268 = !DILocation(line: 680, column: 25, scope: !3267)
!3269 = !DILocation(line: 680, column: 25, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3271, file: !644, line: 680, column: 25)
!3271 = distinct !DILexicalBlock(scope: !3263, file: !644, line: 680, column: 25)
!3272 = !DILocation(line: 680, column: 25, scope: !3271)
!3273 = !DILocation(line: 680, column: 25, scope: !3263)
!3274 = !DILocation(line: 680, column: 25, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3276, file: !644, line: 680, column: 25)
!3276 = distinct !DILexicalBlock(scope: !3256, file: !644, line: 680, column: 25)
!3277 = !DILocation(line: 680, column: 25, scope: !3276)
!3278 = !DILocation(line: 681, column: 25, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3280, file: !644, line: 681, column: 25)
!3280 = distinct !DILexicalBlock(scope: !3257, file: !644, line: 681, column: 25)
!3281 = !DILocation(line: 681, column: 25, scope: !3280)
!3282 = !DILocation(line: 682, column: 25, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3284, file: !644, line: 682, column: 25)
!3284 = distinct !DILexicalBlock(scope: !3257, file: !644, line: 682, column: 25)
!3285 = !DILocation(line: 682, column: 25, scope: !3284)
!3286 = !DILocation(line: 683, column: 38, scope: !3257)
!3287 = !DILocation(line: 683, column: 33, scope: !3257)
!3288 = !DILocation(line: 684, column: 23, scope: !3257)
!3289 = !DILocation(line: 685, column: 30, scope: !3251)
!3290 = !DILocation(line: 687, column: 25, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !644, line: 687, column: 25)
!3292 = distinct !DILexicalBlock(scope: !3293, file: !644, line: 687, column: 25)
!3293 = distinct !DILexicalBlock(scope: !3294, file: !644, line: 686, column: 23)
!3294 = distinct !DILexicalBlock(scope: !3251, file: !644, line: 685, column: 30)
!3295 = !DILocation(line: 687, column: 25, scope: !3292)
!3296 = !DILocation(line: 689, column: 23, scope: !3293)
!3297 = !DILocation(line: 690, column: 35, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3252, file: !644, line: 690, column: 25)
!3299 = !DILocation(line: 690, column: 30, scope: !3298)
!3300 = !DILocation(line: 690, column: 25, scope: !3252)
!3301 = !DILocation(line: 692, column: 21, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3303, file: !644, line: 692, column: 21)
!3303 = distinct !DILexicalBlock(scope: !3252, file: !644, line: 692, column: 21)
!3304 = !DILocation(line: 692, column: 21, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !644, line: 692, column: 21)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !644, line: 692, column: 21)
!3307 = distinct !DILexicalBlock(scope: !3302, file: !644, line: 692, column: 21)
!3308 = !DILocation(line: 692, column: 21, scope: !3306)
!3309 = !DILocation(line: 692, column: 21, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3311, file: !644, line: 692, column: 21)
!3311 = distinct !DILexicalBlock(scope: !3307, file: !644, line: 692, column: 21)
!3312 = !DILocation(line: 692, column: 21, scope: !3311)
!3313 = !DILocation(line: 692, column: 21, scope: !3307)
!3314 = !DILocation(line: 0, scope: !3252)
!3315 = !DILocation(line: 693, column: 21, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !644, line: 693, column: 21)
!3317 = distinct !DILexicalBlock(scope: !3252, file: !644, line: 693, column: 21)
!3318 = !DILocation(line: 693, column: 21, scope: !3317)
!3319 = !DILocation(line: 694, column: 25, scope: !3252)
!3320 = !DILocation(line: 676, column: 17, scope: !3253)
!3321 = distinct !{!3321, !3322, !3323}
!3322 = !DILocation(line: 676, column: 17, scope: !3254)
!3323 = !DILocation(line: 695, column: 19, scope: !3254)
!3324 = !DILocation(line: 409, column: 30, scope: !3034)
!3325 = !DILocation(line: 702, column: 34, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !2895, file: !644, line: 702, column: 11)
!3327 = !DILocation(line: 704, column: 14, scope: !3326)
!3328 = !DILocation(line: 705, column: 14, scope: !3326)
!3329 = !DILocation(line: 705, column: 35, scope: !3326)
!3330 = !DILocation(line: 705, column: 17, scope: !3326)
!3331 = !DILocation(line: 705, column: 47, scope: !3326)
!3332 = !DILocation(line: 705, column: 65, scope: !3326)
!3333 = !DILocation(line: 706, column: 11, scope: !3326)
!3334 = !DILocation(line: 702, column: 11, scope: !2895)
!3335 = !DILocation(line: 395, column: 15, scope: !2893)
!3336 = !DILocation(line: 709, column: 5, scope: !2895)
!3337 = !DILocation(line: 710, column: 7, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !2895, file: !644, line: 710, column: 7)
!3339 = !DILocation(line: 710, column: 7, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3338, file: !644, line: 710, column: 7)
!3341 = !DILocation(line: 710, column: 7, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !644, line: 710, column: 7)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !644, line: 710, column: 7)
!3344 = distinct !DILexicalBlock(scope: !3340, file: !644, line: 710, column: 7)
!3345 = !DILocation(line: 710, column: 7, scope: !3343)
!3346 = !DILocation(line: 710, column: 7, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3348, file: !644, line: 710, column: 7)
!3348 = distinct !DILexicalBlock(scope: !3344, file: !644, line: 710, column: 7)
!3349 = !DILocation(line: 710, column: 7, scope: !3348)
!3350 = !DILocation(line: 710, column: 7, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !644, line: 710, column: 7)
!3352 = distinct !DILexicalBlock(scope: !3344, file: !644, line: 710, column: 7)
!3353 = !DILocation(line: 710, column: 7, scope: !3352)
!3354 = !DILocation(line: 710, column: 7, scope: !3344)
!3355 = !DILocation(line: 710, column: 7, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3357, file: !644, line: 710, column: 7)
!3357 = distinct !DILexicalBlock(scope: !3338, file: !644, line: 710, column: 7)
!3358 = !DILocation(line: 710, column: 7, scope: !3357)
!3359 = !DILocation(line: 712, column: 5, scope: !2895)
!3360 = !DILocation(line: 713, column: 7, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !644, line: 713, column: 7)
!3362 = distinct !DILexicalBlock(scope: !2895, file: !644, line: 713, column: 7)
!3363 = !DILocation(line: 417, column: 21, scope: !2895)
!3364 = !DILocation(line: 713, column: 7, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !644, line: 713, column: 7)
!3366 = distinct !DILexicalBlock(scope: !3367, file: !644, line: 713, column: 7)
!3367 = distinct !DILexicalBlock(scope: !3361, file: !644, line: 713, column: 7)
!3368 = !DILocation(line: 713, column: 7, scope: !3366)
!3369 = !DILocation(line: 713, column: 7, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !644, line: 713, column: 7)
!3371 = distinct !DILexicalBlock(scope: !3367, file: !644, line: 713, column: 7)
!3372 = !DILocation(line: 713, column: 7, scope: !3371)
!3373 = !DILocation(line: 713, column: 7, scope: !3367)
!3374 = !DILocation(line: 714, column: 7, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !644, line: 714, column: 7)
!3376 = distinct !DILexicalBlock(scope: !2895, file: !644, line: 714, column: 7)
!3377 = !DILocation(line: 714, column: 7, scope: !3376)
!3378 = !DILocation(line: 716, column: 11, scope: !2895)
!3379 = !DILocation(line: 718, column: 5, scope: !2896)
!3380 = !DILocation(line: 395, column: 82, scope: !2896)
!3381 = !DILocation(line: 395, column: 3, scope: !2896)
!3382 = distinct !{!3382, !3030, !3383, !1104}
!3383 = !DILocation(line: 718, column: 5, scope: !2893)
!3384 = !DILocation(line: 720, column: 11, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !2862, file: !644, line: 720, column: 7)
!3386 = !DILocation(line: 720, column: 16, scope: !3385)
!3387 = !DILocation(line: 728, column: 51, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !2862, file: !644, line: 728, column: 7)
!3389 = !DILocation(line: 731, column: 11, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3388, file: !644, line: 730, column: 5)
!3391 = !DILocation(line: 732, column: 16, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3390, file: !644, line: 731, column: 11)
!3393 = !DILocation(line: 732, column: 9, scope: !3392)
!3394 = !DILocation(line: 736, column: 18, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3392, file: !644, line: 736, column: 16)
!3396 = !DILocation(line: 736, column: 29, scope: !3395)
!3397 = !DILocation(line: 745, column: 7, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !2862, file: !644, line: 745, column: 7)
!3399 = !DILocation(line: 745, column: 20, scope: !3398)
!3400 = !DILocation(line: 746, column: 12, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !644, line: 746, column: 5)
!3402 = distinct !DILexicalBlock(scope: !3398, file: !644, line: 746, column: 5)
!3403 = !DILocation(line: 746, column: 5, scope: !3402)
!3404 = !DILocation(line: 747, column: 7, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3406, file: !644, line: 747, column: 7)
!3406 = distinct !DILexicalBlock(scope: !3401, file: !644, line: 747, column: 7)
!3407 = !DILocation(line: 747, column: 7, scope: !3406)
!3408 = !DILocation(line: 746, column: 39, scope: !3401)
!3409 = distinct !{!3409, !3403, !3410, !1104}
!3410 = !DILocation(line: 747, column: 7, scope: !3402)
!3411 = !DILocation(line: 749, column: 11, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !2862, file: !644, line: 749, column: 7)
!3413 = !DILocation(line: 749, column: 7, scope: !2862)
!3414 = !DILocation(line: 750, column: 5, scope: !3412)
!3415 = !DILocation(line: 750, column: 17, scope: !3412)
!3416 = !DILocation(line: 756, column: 21, scope: !3242)
!3417 = !DILocation(line: 760, column: 42, scope: !2862)
!3418 = !DILocation(line: 758, column: 10, scope: !2862)
!3419 = !DILocation(line: 758, column: 3, scope: !2862)
!3420 = !DILocation(line: 762, column: 1, scope: !2862)
!3421 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1181, file: !1181, line: 98, type: !3422, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{!262}
!3424 = !DISubprogram(name: "iswprint", scope: !3425, file: !3425, line: 120, type: !3228, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!3425 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3426 = distinct !DISubprogram(name: "quotearg_alloc", scope: !644, file: !644, line: 788, type: !3427, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3429)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!317, !265, !262, !2755}
!3429 = !{!3430, !3431, !3432}
!3430 = !DILocalVariable(name: "arg", arg: 1, scope: !3426, file: !644, line: 788, type: !265)
!3431 = !DILocalVariable(name: "argsize", arg: 2, scope: !3426, file: !644, line: 788, type: !262)
!3432 = !DILocalVariable(name: "o", arg: 3, scope: !3426, file: !644, line: 789, type: !2755)
!3433 = !DILocation(line: 0, scope: !3426)
!3434 = !DILocalVariable(name: "arg", arg: 1, scope: !3435, file: !644, line: 801, type: !265)
!3435 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !644, file: !644, line: 801, type: !3436, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3438)
!3436 = !DISubroutineType(types: !3437)
!3437 = !{!317, !265, !262, !892, !2755}
!3438 = !{!3434, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446}
!3439 = !DILocalVariable(name: "argsize", arg: 2, scope: !3435, file: !644, line: 801, type: !262)
!3440 = !DILocalVariable(name: "size", arg: 3, scope: !3435, file: !644, line: 801, type: !892)
!3441 = !DILocalVariable(name: "o", arg: 4, scope: !3435, file: !644, line: 802, type: !2755)
!3442 = !DILocalVariable(name: "p", scope: !3435, file: !644, line: 804, type: !2755)
!3443 = !DILocalVariable(name: "saved_errno", scope: !3435, file: !644, line: 805, type: !260)
!3444 = !DILocalVariable(name: "flags", scope: !3435, file: !644, line: 807, type: !260)
!3445 = !DILocalVariable(name: "bufsize", scope: !3435, file: !644, line: 808, type: !262)
!3446 = !DILocalVariable(name: "buf", scope: !3435, file: !644, line: 812, type: !317)
!3447 = !DILocation(line: 0, scope: !3435, inlinedAt: !3448)
!3448 = distinct !DILocation(line: 791, column: 10, scope: !3426)
!3449 = !DILocation(line: 804, column: 37, scope: !3435, inlinedAt: !3448)
!3450 = !DILocation(line: 805, column: 21, scope: !3435, inlinedAt: !3448)
!3451 = !DILocation(line: 807, column: 18, scope: !3435, inlinedAt: !3448)
!3452 = !DILocation(line: 807, column: 24, scope: !3435, inlinedAt: !3448)
!3453 = !DILocation(line: 808, column: 72, scope: !3435, inlinedAt: !3448)
!3454 = !DILocation(line: 809, column: 56, scope: !3435, inlinedAt: !3448)
!3455 = !DILocation(line: 810, column: 49, scope: !3435, inlinedAt: !3448)
!3456 = !DILocation(line: 811, column: 49, scope: !3435, inlinedAt: !3448)
!3457 = !DILocation(line: 808, column: 20, scope: !3435, inlinedAt: !3448)
!3458 = !DILocation(line: 811, column: 62, scope: !3435, inlinedAt: !3448)
!3459 = !DILocation(line: 812, column: 15, scope: !3435, inlinedAt: !3448)
!3460 = !DILocation(line: 813, column: 60, scope: !3435, inlinedAt: !3448)
!3461 = !DILocation(line: 815, column: 32, scope: !3435, inlinedAt: !3448)
!3462 = !DILocation(line: 815, column: 47, scope: !3435, inlinedAt: !3448)
!3463 = !DILocation(line: 813, column: 3, scope: !3435, inlinedAt: !3448)
!3464 = !DILocation(line: 816, column: 9, scope: !3435, inlinedAt: !3448)
!3465 = !DILocation(line: 791, column: 3, scope: !3426)
!3466 = !DILocation(line: 0, scope: !3435)
!3467 = !DILocation(line: 804, column: 37, scope: !3435)
!3468 = !DILocation(line: 805, column: 21, scope: !3435)
!3469 = !DILocation(line: 807, column: 18, scope: !3435)
!3470 = !DILocation(line: 807, column: 27, scope: !3435)
!3471 = !DILocation(line: 807, column: 24, scope: !3435)
!3472 = !DILocation(line: 808, column: 72, scope: !3435)
!3473 = !DILocation(line: 809, column: 56, scope: !3435)
!3474 = !DILocation(line: 810, column: 49, scope: !3435)
!3475 = !DILocation(line: 811, column: 49, scope: !3435)
!3476 = !DILocation(line: 808, column: 20, scope: !3435)
!3477 = !DILocation(line: 811, column: 62, scope: !3435)
!3478 = !DILocation(line: 812, column: 15, scope: !3435)
!3479 = !DILocation(line: 813, column: 60, scope: !3435)
!3480 = !DILocation(line: 815, column: 32, scope: !3435)
!3481 = !DILocation(line: 815, column: 47, scope: !3435)
!3482 = !DILocation(line: 813, column: 3, scope: !3435)
!3483 = !DILocation(line: 816, column: 9, scope: !3435)
!3484 = !DILocation(line: 817, column: 7, scope: !3435)
!3485 = !DILocation(line: 818, column: 11, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3435, file: !644, line: 817, column: 7)
!3487 = !{!1591, !1591, i64 0}
!3488 = !DILocation(line: 818, column: 5, scope: !3486)
!3489 = !DILocation(line: 819, column: 3, scope: !3435)
!3490 = distinct !DISubprogram(name: "quotearg_free", scope: !644, file: !644, line: 837, type: !630, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3491)
!3491 = !{!3492, !3493}
!3492 = !DILocalVariable(name: "sv", scope: !3490, file: !644, line: 839, type: !751)
!3493 = !DILocalVariable(name: "i", scope: !3494, file: !644, line: 840, type: !260)
!3494 = distinct !DILexicalBlock(scope: !3490, file: !644, line: 840, column: 3)
!3495 = !DILocation(line: 839, column: 24, scope: !3490)
!3496 = !DILocation(line: 0, scope: !3490)
!3497 = !DILocation(line: 0, scope: !3494)
!3498 = !DILocation(line: 840, column: 21, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3494, file: !644, line: 840, column: 3)
!3500 = !DILocation(line: 840, column: 3, scope: !3494)
!3501 = !DILocation(line: 842, column: 13, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3490, file: !644, line: 842, column: 7)
!3503 = !{!3504, !958, i64 8}
!3504 = !{!"slotvec", !1591, i64 0, !958, i64 8}
!3505 = !DILocation(line: 842, column: 17, scope: !3502)
!3506 = !DILocation(line: 842, column: 7, scope: !3490)
!3507 = !DILocation(line: 841, column: 17, scope: !3499)
!3508 = !DILocation(line: 841, column: 5, scope: !3499)
!3509 = !DILocation(line: 840, column: 32, scope: !3499)
!3510 = distinct !{!3510, !3500, !3511, !1104}
!3511 = !DILocation(line: 841, column: 20, scope: !3494)
!3512 = !DILocation(line: 844, column: 7, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3502, file: !644, line: 843, column: 5)
!3514 = !DILocation(line: 845, column: 21, scope: !3513)
!3515 = !{!3504, !1591, i64 0}
!3516 = !DILocation(line: 846, column: 20, scope: !3513)
!3517 = !DILocation(line: 847, column: 5, scope: !3513)
!3518 = !DILocation(line: 848, column: 10, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3490, file: !644, line: 848, column: 7)
!3520 = !DILocation(line: 848, column: 7, scope: !3490)
!3521 = !DILocation(line: 850, column: 7, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3519, file: !644, line: 849, column: 5)
!3523 = !DILocation(line: 851, column: 15, scope: !3522)
!3524 = !DILocation(line: 852, column: 5, scope: !3522)
!3525 = !DILocation(line: 853, column: 10, scope: !3490)
!3526 = !DILocation(line: 854, column: 1, scope: !3490)
!3527 = !DISubprogram(name: "free", scope: !2958, file: !2958, line: 786, type: !3528, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!3528 = !DISubroutineType(types: !3529)
!3529 = !{null, !354}
!3530 = distinct !DISubprogram(name: "quotearg_n", scope: !644, file: !644, line: 919, type: !1174, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3531)
!3531 = !{!3532, !3533}
!3532 = !DILocalVariable(name: "n", arg: 1, scope: !3530, file: !644, line: 919, type: !260)
!3533 = !DILocalVariable(name: "arg", arg: 2, scope: !3530, file: !644, line: 919, type: !265)
!3534 = !DILocation(line: 0, scope: !3530)
!3535 = !DILocation(line: 921, column: 10, scope: !3530)
!3536 = !DILocation(line: 921, column: 3, scope: !3530)
!3537 = distinct !DISubprogram(name: "quotearg_n_options", scope: !644, file: !644, line: 866, type: !3538, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3540)
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!317, !260, !265, !262, !2755}
!3540 = !{!3541, !3542, !3543, !3544, !3545, !3546, !3547, !3548, !3551, !3552, !3554, !3555, !3556}
!3541 = !DILocalVariable(name: "n", arg: 1, scope: !3537, file: !644, line: 866, type: !260)
!3542 = !DILocalVariable(name: "arg", arg: 2, scope: !3537, file: !644, line: 866, type: !265)
!3543 = !DILocalVariable(name: "argsize", arg: 3, scope: !3537, file: !644, line: 866, type: !262)
!3544 = !DILocalVariable(name: "options", arg: 4, scope: !3537, file: !644, line: 867, type: !2755)
!3545 = !DILocalVariable(name: "saved_errno", scope: !3537, file: !644, line: 869, type: !260)
!3546 = !DILocalVariable(name: "sv", scope: !3537, file: !644, line: 871, type: !751)
!3547 = !DILocalVariable(name: "nslots_max", scope: !3537, file: !644, line: 873, type: !260)
!3548 = !DILocalVariable(name: "preallocated", scope: !3549, file: !644, line: 879, type: !296)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !644, line: 878, column: 5)
!3550 = distinct !DILexicalBlock(scope: !3537, file: !644, line: 877, column: 7)
!3551 = !DILocalVariable(name: "new_nslots", scope: !3549, file: !644, line: 880, type: !905)
!3552 = !DILocalVariable(name: "size", scope: !3553, file: !644, line: 891, type: !262)
!3553 = distinct !DILexicalBlock(scope: !3537, file: !644, line: 890, column: 3)
!3554 = !DILocalVariable(name: "val", scope: !3553, file: !644, line: 892, type: !317)
!3555 = !DILocalVariable(name: "flags", scope: !3553, file: !644, line: 894, type: !260)
!3556 = !DILocalVariable(name: "qsize", scope: !3553, file: !644, line: 895, type: !262)
!3557 = !DILocation(line: 0, scope: !3537)
!3558 = !DILocation(line: 869, column: 21, scope: !3537)
!3559 = !DILocation(line: 871, column: 24, scope: !3537)
!3560 = !DILocation(line: 874, column: 17, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3537, file: !644, line: 874, column: 7)
!3562 = !DILocation(line: 875, column: 5, scope: !3561)
!3563 = !DILocation(line: 877, column: 7, scope: !3550)
!3564 = !DILocation(line: 877, column: 14, scope: !3550)
!3565 = !DILocation(line: 877, column: 7, scope: !3537)
!3566 = !DILocation(line: 879, column: 31, scope: !3549)
!3567 = !DILocation(line: 0, scope: !3549)
!3568 = !DILocation(line: 880, column: 7, scope: !3549)
!3569 = !DILocation(line: 880, column: 26, scope: !3549)
!3570 = !DILocation(line: 880, column: 13, scope: !3549)
!3571 = !DILocation(line: 882, column: 31, scope: !3549)
!3572 = !DILocation(line: 883, column: 33, scope: !3549)
!3573 = !DILocation(line: 883, column: 42, scope: !3549)
!3574 = !DILocation(line: 883, column: 31, scope: !3549)
!3575 = !DILocation(line: 882, column: 22, scope: !3549)
!3576 = !DILocation(line: 882, column: 15, scope: !3549)
!3577 = !DILocation(line: 884, column: 11, scope: !3549)
!3578 = !DILocation(line: 885, column: 15, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3549, file: !644, line: 884, column: 11)
!3580 = !{i64 0, i64 8, !3487, i64 8, i64 8, !957}
!3581 = !DILocation(line: 885, column: 9, scope: !3579)
!3582 = !DILocation(line: 886, column: 20, scope: !3549)
!3583 = !DILocation(line: 886, column: 18, scope: !3549)
!3584 = !DILocation(line: 886, column: 32, scope: !3549)
!3585 = !DILocation(line: 886, column: 43, scope: !3549)
!3586 = !DILocation(line: 886, column: 53, scope: !3549)
!3587 = !DILocation(line: 0, scope: !2966, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 886, column: 7, scope: !3549)
!3589 = !DILocation(line: 59, column: 10, scope: !2966, inlinedAt: !3588)
!3590 = !DILocation(line: 887, column: 16, scope: !3549)
!3591 = !DILocation(line: 887, column: 14, scope: !3549)
!3592 = !DILocation(line: 888, column: 5, scope: !3550)
!3593 = !DILocation(line: 888, column: 5, scope: !3549)
!3594 = !DILocation(line: 891, column: 19, scope: !3553)
!3595 = !DILocation(line: 891, column: 25, scope: !3553)
!3596 = !DILocation(line: 0, scope: !3553)
!3597 = !DILocation(line: 892, column: 23, scope: !3553)
!3598 = !DILocation(line: 894, column: 26, scope: !3553)
!3599 = !DILocation(line: 894, column: 32, scope: !3553)
!3600 = !DILocation(line: 896, column: 55, scope: !3553)
!3601 = !DILocation(line: 897, column: 55, scope: !3553)
!3602 = !DILocation(line: 898, column: 55, scope: !3553)
!3603 = !DILocation(line: 899, column: 55, scope: !3553)
!3604 = !DILocation(line: 895, column: 20, scope: !3553)
!3605 = !DILocation(line: 901, column: 14, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3553, file: !644, line: 901, column: 9)
!3607 = !DILocation(line: 901, column: 9, scope: !3553)
!3608 = !DILocation(line: 903, column: 35, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3606, file: !644, line: 902, column: 7)
!3610 = !DILocation(line: 903, column: 20, scope: !3609)
!3611 = !DILocation(line: 904, column: 17, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3609, file: !644, line: 904, column: 13)
!3613 = !DILocation(line: 904, column: 13, scope: !3609)
!3614 = !DILocation(line: 905, column: 11, scope: !3612)
!3615 = !DILocation(line: 906, column: 27, scope: !3609)
!3616 = !DILocation(line: 906, column: 19, scope: !3609)
!3617 = !DILocation(line: 907, column: 69, scope: !3609)
!3618 = !DILocation(line: 909, column: 44, scope: !3609)
!3619 = !DILocation(line: 910, column: 44, scope: !3609)
!3620 = !DILocation(line: 907, column: 9, scope: !3609)
!3621 = !DILocation(line: 911, column: 7, scope: !3609)
!3622 = !DILocation(line: 913, column: 11, scope: !3553)
!3623 = !DILocation(line: 914, column: 5, scope: !3553)
!3624 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !644, file: !644, line: 925, type: !3625, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3627)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!317, !260, !265, !262}
!3627 = !{!3628, !3629, !3630}
!3628 = !DILocalVariable(name: "n", arg: 1, scope: !3624, file: !644, line: 925, type: !260)
!3629 = !DILocalVariable(name: "arg", arg: 2, scope: !3624, file: !644, line: 925, type: !265)
!3630 = !DILocalVariable(name: "argsize", arg: 3, scope: !3624, file: !644, line: 925, type: !262)
!3631 = !DILocation(line: 0, scope: !3624)
!3632 = !DILocation(line: 927, column: 10, scope: !3624)
!3633 = !DILocation(line: 927, column: 3, scope: !3624)
!3634 = distinct !DISubprogram(name: "quotearg", scope: !644, file: !644, line: 931, type: !1183, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3635)
!3635 = !{!3636}
!3636 = !DILocalVariable(name: "arg", arg: 1, scope: !3634, file: !644, line: 931, type: !265)
!3637 = !DILocation(line: 0, scope: !3634)
!3638 = !DILocation(line: 0, scope: !3530, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 933, column: 10, scope: !3634)
!3640 = !DILocation(line: 921, column: 10, scope: !3530, inlinedAt: !3639)
!3641 = !DILocation(line: 933, column: 3, scope: !3634)
!3642 = distinct !DISubprogram(name: "quotearg_mem", scope: !644, file: !644, line: 937, type: !3643, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3645)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!317, !265, !262}
!3645 = !{!3646, !3647}
!3646 = !DILocalVariable(name: "arg", arg: 1, scope: !3642, file: !644, line: 937, type: !265)
!3647 = !DILocalVariable(name: "argsize", arg: 2, scope: !3642, file: !644, line: 937, type: !262)
!3648 = !DILocation(line: 0, scope: !3642)
!3649 = !DILocation(line: 0, scope: !3624, inlinedAt: !3650)
!3650 = distinct !DILocation(line: 939, column: 10, scope: !3642)
!3651 = !DILocation(line: 927, column: 10, scope: !3624, inlinedAt: !3650)
!3652 = !DILocation(line: 939, column: 3, scope: !3642)
!3653 = distinct !DISubprogram(name: "quotearg_n_style", scope: !644, file: !644, line: 943, type: !3654, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3656)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!317, !260, !670, !265}
!3656 = !{!3657, !3658, !3659, !3660}
!3657 = !DILocalVariable(name: "n", arg: 1, scope: !3653, file: !644, line: 943, type: !260)
!3658 = !DILocalVariable(name: "s", arg: 2, scope: !3653, file: !644, line: 943, type: !670)
!3659 = !DILocalVariable(name: "arg", arg: 3, scope: !3653, file: !644, line: 943, type: !265)
!3660 = !DILocalVariable(name: "o", scope: !3653, file: !644, line: 945, type: !2756)
!3661 = !DILocation(line: 0, scope: !3653)
!3662 = !DILocation(line: 945, column: 3, scope: !3653)
!3663 = !DILocation(line: 945, column: 32, scope: !3653)
!3664 = !{!3665}
!3665 = distinct !{!3665, !3666, !"quoting_options_from_style: argument 0"}
!3666 = distinct !{!3666, !"quoting_options_from_style"}
!3667 = !DILocation(line: 945, column: 36, scope: !3653)
!3668 = !DILocalVariable(name: "style", arg: 1, scope: !3669, file: !644, line: 183, type: !670)
!3669 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !644, file: !644, line: 183, type: !3670, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3672)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!697, !670}
!3672 = !{!3668, !3673}
!3673 = !DILocalVariable(name: "o", scope: !3669, file: !644, line: 185, type: !697)
!3674 = !DILocation(line: 0, scope: !3669, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 945, column: 36, scope: !3653)
!3676 = !DILocation(line: 185, column: 26, scope: !3669, inlinedAt: !3675)
!3677 = !DILocation(line: 186, column: 13, scope: !3678, inlinedAt: !3675)
!3678 = distinct !DILexicalBlock(scope: !3669, file: !644, line: 186, column: 7)
!3679 = !DILocation(line: 186, column: 7, scope: !3669, inlinedAt: !3675)
!3680 = !DILocation(line: 187, column: 5, scope: !3678, inlinedAt: !3675)
!3681 = !DILocation(line: 188, column: 11, scope: !3669, inlinedAt: !3675)
!3682 = !DILocation(line: 946, column: 10, scope: !3653)
!3683 = !DILocation(line: 947, column: 1, scope: !3653)
!3684 = !DILocation(line: 946, column: 3, scope: !3653)
!3685 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !644, file: !644, line: 950, type: !3686, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3688)
!3686 = !DISubroutineType(types: !3687)
!3687 = !{!317, !260, !670, !265, !262}
!3688 = !{!3689, !3690, !3691, !3692, !3693}
!3689 = !DILocalVariable(name: "n", arg: 1, scope: !3685, file: !644, line: 950, type: !260)
!3690 = !DILocalVariable(name: "s", arg: 2, scope: !3685, file: !644, line: 950, type: !670)
!3691 = !DILocalVariable(name: "arg", arg: 3, scope: !3685, file: !644, line: 951, type: !265)
!3692 = !DILocalVariable(name: "argsize", arg: 4, scope: !3685, file: !644, line: 951, type: !262)
!3693 = !DILocalVariable(name: "o", scope: !3685, file: !644, line: 953, type: !2756)
!3694 = !DILocation(line: 0, scope: !3685)
!3695 = !DILocation(line: 953, column: 3, scope: !3685)
!3696 = !DILocation(line: 953, column: 32, scope: !3685)
!3697 = !{!3698}
!3698 = distinct !{!3698, !3699, !"quoting_options_from_style: argument 0"}
!3699 = distinct !{!3699, !"quoting_options_from_style"}
!3700 = !DILocation(line: 953, column: 36, scope: !3685)
!3701 = !DILocation(line: 0, scope: !3669, inlinedAt: !3702)
!3702 = distinct !DILocation(line: 953, column: 36, scope: !3685)
!3703 = !DILocation(line: 185, column: 26, scope: !3669, inlinedAt: !3702)
!3704 = !DILocation(line: 186, column: 13, scope: !3678, inlinedAt: !3702)
!3705 = !DILocation(line: 186, column: 7, scope: !3669, inlinedAt: !3702)
!3706 = !DILocation(line: 187, column: 5, scope: !3678, inlinedAt: !3702)
!3707 = !DILocation(line: 188, column: 11, scope: !3669, inlinedAt: !3702)
!3708 = !DILocation(line: 954, column: 10, scope: !3685)
!3709 = !DILocation(line: 955, column: 1, scope: !3685)
!3710 = !DILocation(line: 954, column: 3, scope: !3685)
!3711 = distinct !DISubprogram(name: "quotearg_style", scope: !644, file: !644, line: 958, type: !3712, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3714)
!3712 = !DISubroutineType(types: !3713)
!3713 = !{!317, !670, !265}
!3714 = !{!3715, !3716}
!3715 = !DILocalVariable(name: "s", arg: 1, scope: !3711, file: !644, line: 958, type: !670)
!3716 = !DILocalVariable(name: "arg", arg: 2, scope: !3711, file: !644, line: 958, type: !265)
!3717 = !DILocation(line: 0, scope: !3711)
!3718 = !DILocation(line: 0, scope: !3653, inlinedAt: !3719)
!3719 = distinct !DILocation(line: 960, column: 10, scope: !3711)
!3720 = !DILocation(line: 945, column: 3, scope: !3653, inlinedAt: !3719)
!3721 = !DILocation(line: 945, column: 32, scope: !3653, inlinedAt: !3719)
!3722 = !{!3723}
!3723 = distinct !{!3723, !3724, !"quoting_options_from_style: argument 0"}
!3724 = distinct !{!3724, !"quoting_options_from_style"}
!3725 = !DILocation(line: 945, column: 36, scope: !3653, inlinedAt: !3719)
!3726 = !DILocation(line: 0, scope: !3669, inlinedAt: !3727)
!3727 = distinct !DILocation(line: 945, column: 36, scope: !3653, inlinedAt: !3719)
!3728 = !DILocation(line: 185, column: 26, scope: !3669, inlinedAt: !3727)
!3729 = !DILocation(line: 186, column: 13, scope: !3678, inlinedAt: !3727)
!3730 = !DILocation(line: 186, column: 7, scope: !3669, inlinedAt: !3727)
!3731 = !DILocation(line: 187, column: 5, scope: !3678, inlinedAt: !3727)
!3732 = !DILocation(line: 188, column: 11, scope: !3669, inlinedAt: !3727)
!3733 = !DILocation(line: 946, column: 10, scope: !3653, inlinedAt: !3719)
!3734 = !DILocation(line: 947, column: 1, scope: !3653, inlinedAt: !3719)
!3735 = !DILocation(line: 960, column: 3, scope: !3711)
!3736 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !644, file: !644, line: 964, type: !3737, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3739)
!3737 = !DISubroutineType(types: !3738)
!3738 = !{!317, !670, !265, !262}
!3739 = !{!3740, !3741, !3742}
!3740 = !DILocalVariable(name: "s", arg: 1, scope: !3736, file: !644, line: 964, type: !670)
!3741 = !DILocalVariable(name: "arg", arg: 2, scope: !3736, file: !644, line: 964, type: !265)
!3742 = !DILocalVariable(name: "argsize", arg: 3, scope: !3736, file: !644, line: 964, type: !262)
!3743 = !DILocation(line: 0, scope: !3736)
!3744 = !DILocation(line: 0, scope: !3685, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 966, column: 10, scope: !3736)
!3746 = !DILocation(line: 953, column: 3, scope: !3685, inlinedAt: !3745)
!3747 = !DILocation(line: 953, column: 32, scope: !3685, inlinedAt: !3745)
!3748 = !{!3749}
!3749 = distinct !{!3749, !3750, !"quoting_options_from_style: argument 0"}
!3750 = distinct !{!3750, !"quoting_options_from_style"}
!3751 = !DILocation(line: 953, column: 36, scope: !3685, inlinedAt: !3745)
!3752 = !DILocation(line: 0, scope: !3669, inlinedAt: !3753)
!3753 = distinct !DILocation(line: 953, column: 36, scope: !3685, inlinedAt: !3745)
!3754 = !DILocation(line: 185, column: 26, scope: !3669, inlinedAt: !3753)
!3755 = !DILocation(line: 186, column: 13, scope: !3678, inlinedAt: !3753)
!3756 = !DILocation(line: 186, column: 7, scope: !3669, inlinedAt: !3753)
!3757 = !DILocation(line: 187, column: 5, scope: !3678, inlinedAt: !3753)
!3758 = !DILocation(line: 188, column: 11, scope: !3669, inlinedAt: !3753)
!3759 = !DILocation(line: 954, column: 10, scope: !3685, inlinedAt: !3745)
!3760 = !DILocation(line: 955, column: 1, scope: !3685, inlinedAt: !3745)
!3761 = !DILocation(line: 966, column: 3, scope: !3736)
!3762 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !644, file: !644, line: 970, type: !3763, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3765)
!3763 = !DISubroutineType(types: !3764)
!3764 = !{!317, !265, !262, !4}
!3765 = !{!3766, !3767, !3768, !3769}
!3766 = !DILocalVariable(name: "arg", arg: 1, scope: !3762, file: !644, line: 970, type: !265)
!3767 = !DILocalVariable(name: "argsize", arg: 2, scope: !3762, file: !644, line: 970, type: !262)
!3768 = !DILocalVariable(name: "ch", arg: 3, scope: !3762, file: !644, line: 970, type: !4)
!3769 = !DILocalVariable(name: "options", scope: !3762, file: !644, line: 972, type: !697)
!3770 = !DILocation(line: 0, scope: !3762)
!3771 = !DILocation(line: 972, column: 3, scope: !3762)
!3772 = !DILocation(line: 972, column: 26, scope: !3762)
!3773 = !DILocation(line: 973, column: 13, scope: !3762)
!3774 = !{i64 0, i64 4, !1066, i64 4, i64 4, !1057, i64 8, i64 32, !1066, i64 40, i64 8, !957, i64 48, i64 8, !957}
!3775 = !DILocation(line: 0, scope: !2775, inlinedAt: !3776)
!3776 = distinct !DILocation(line: 974, column: 3, scope: !3762)
!3777 = !DILocation(line: 147, column: 41, scope: !2775, inlinedAt: !3776)
!3778 = !DILocation(line: 147, column: 62, scope: !2775, inlinedAt: !3776)
!3779 = !DILocation(line: 147, column: 57, scope: !2775, inlinedAt: !3776)
!3780 = !DILocation(line: 148, column: 15, scope: !2775, inlinedAt: !3776)
!3781 = !DILocation(line: 149, column: 21, scope: !2775, inlinedAt: !3776)
!3782 = !DILocation(line: 149, column: 24, scope: !2775, inlinedAt: !3776)
!3783 = !DILocation(line: 150, column: 19, scope: !2775, inlinedAt: !3776)
!3784 = !DILocation(line: 150, column: 24, scope: !2775, inlinedAt: !3776)
!3785 = !DILocation(line: 150, column: 6, scope: !2775, inlinedAt: !3776)
!3786 = !DILocation(line: 975, column: 10, scope: !3762)
!3787 = !DILocation(line: 976, column: 1, scope: !3762)
!3788 = !DILocation(line: 975, column: 3, scope: !3762)
!3789 = distinct !DISubprogram(name: "quotearg_char", scope: !644, file: !644, line: 979, type: !3790, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3792)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!317, !265, !4}
!3792 = !{!3793, !3794}
!3793 = !DILocalVariable(name: "arg", arg: 1, scope: !3789, file: !644, line: 979, type: !265)
!3794 = !DILocalVariable(name: "ch", arg: 2, scope: !3789, file: !644, line: 979, type: !4)
!3795 = !DILocation(line: 0, scope: !3789)
!3796 = !DILocation(line: 0, scope: !3762, inlinedAt: !3797)
!3797 = distinct !DILocation(line: 981, column: 10, scope: !3789)
!3798 = !DILocation(line: 972, column: 3, scope: !3762, inlinedAt: !3797)
!3799 = !DILocation(line: 972, column: 26, scope: !3762, inlinedAt: !3797)
!3800 = !DILocation(line: 973, column: 13, scope: !3762, inlinedAt: !3797)
!3801 = !DILocation(line: 0, scope: !2775, inlinedAt: !3802)
!3802 = distinct !DILocation(line: 974, column: 3, scope: !3762, inlinedAt: !3797)
!3803 = !DILocation(line: 147, column: 41, scope: !2775, inlinedAt: !3802)
!3804 = !DILocation(line: 147, column: 62, scope: !2775, inlinedAt: !3802)
!3805 = !DILocation(line: 147, column: 57, scope: !2775, inlinedAt: !3802)
!3806 = !DILocation(line: 148, column: 15, scope: !2775, inlinedAt: !3802)
!3807 = !DILocation(line: 149, column: 21, scope: !2775, inlinedAt: !3802)
!3808 = !DILocation(line: 149, column: 24, scope: !2775, inlinedAt: !3802)
!3809 = !DILocation(line: 150, column: 19, scope: !2775, inlinedAt: !3802)
!3810 = !DILocation(line: 150, column: 24, scope: !2775, inlinedAt: !3802)
!3811 = !DILocation(line: 150, column: 6, scope: !2775, inlinedAt: !3802)
!3812 = !DILocation(line: 975, column: 10, scope: !3762, inlinedAt: !3797)
!3813 = !DILocation(line: 976, column: 1, scope: !3762, inlinedAt: !3797)
!3814 = !DILocation(line: 981, column: 3, scope: !3789)
!3815 = distinct !DISubprogram(name: "quotearg_colon", scope: !644, file: !644, line: 985, type: !1183, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3816)
!3816 = !{!3817}
!3817 = !DILocalVariable(name: "arg", arg: 1, scope: !3815, file: !644, line: 985, type: !265)
!3818 = !DILocation(line: 0, scope: !3815)
!3819 = !DILocation(line: 0, scope: !3789, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 987, column: 10, scope: !3815)
!3821 = !DILocation(line: 0, scope: !3762, inlinedAt: !3822)
!3822 = distinct !DILocation(line: 981, column: 10, scope: !3789, inlinedAt: !3820)
!3823 = !DILocation(line: 972, column: 3, scope: !3762, inlinedAt: !3822)
!3824 = !DILocation(line: 972, column: 26, scope: !3762, inlinedAt: !3822)
!3825 = !DILocation(line: 973, column: 13, scope: !3762, inlinedAt: !3822)
!3826 = !DILocation(line: 0, scope: !2775, inlinedAt: !3827)
!3827 = distinct !DILocation(line: 974, column: 3, scope: !3762, inlinedAt: !3822)
!3828 = !DILocation(line: 147, column: 57, scope: !2775, inlinedAt: !3827)
!3829 = !DILocation(line: 149, column: 21, scope: !2775, inlinedAt: !3827)
!3830 = !DILocation(line: 150, column: 6, scope: !2775, inlinedAt: !3827)
!3831 = !DILocation(line: 975, column: 10, scope: !3762, inlinedAt: !3822)
!3832 = !DILocation(line: 976, column: 1, scope: !3762, inlinedAt: !3822)
!3833 = !DILocation(line: 987, column: 3, scope: !3815)
!3834 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !644, file: !644, line: 991, type: !3643, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3835)
!3835 = !{!3836, !3837}
!3836 = !DILocalVariable(name: "arg", arg: 1, scope: !3834, file: !644, line: 991, type: !265)
!3837 = !DILocalVariable(name: "argsize", arg: 2, scope: !3834, file: !644, line: 991, type: !262)
!3838 = !DILocation(line: 0, scope: !3834)
!3839 = !DILocation(line: 0, scope: !3762, inlinedAt: !3840)
!3840 = distinct !DILocation(line: 993, column: 10, scope: !3834)
!3841 = !DILocation(line: 972, column: 3, scope: !3762, inlinedAt: !3840)
!3842 = !DILocation(line: 972, column: 26, scope: !3762, inlinedAt: !3840)
!3843 = !DILocation(line: 973, column: 13, scope: !3762, inlinedAt: !3840)
!3844 = !DILocation(line: 0, scope: !2775, inlinedAt: !3845)
!3845 = distinct !DILocation(line: 974, column: 3, scope: !3762, inlinedAt: !3840)
!3846 = !DILocation(line: 147, column: 57, scope: !2775, inlinedAt: !3845)
!3847 = !DILocation(line: 149, column: 21, scope: !2775, inlinedAt: !3845)
!3848 = !DILocation(line: 150, column: 6, scope: !2775, inlinedAt: !3845)
!3849 = !DILocation(line: 975, column: 10, scope: !3762, inlinedAt: !3840)
!3850 = !DILocation(line: 976, column: 1, scope: !3762, inlinedAt: !3840)
!3851 = !DILocation(line: 993, column: 3, scope: !3834)
!3852 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !644, file: !644, line: 997, type: !3654, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3853)
!3853 = !{!3854, !3855, !3856, !3857}
!3854 = !DILocalVariable(name: "n", arg: 1, scope: !3852, file: !644, line: 997, type: !260)
!3855 = !DILocalVariable(name: "s", arg: 2, scope: !3852, file: !644, line: 997, type: !670)
!3856 = !DILocalVariable(name: "arg", arg: 3, scope: !3852, file: !644, line: 997, type: !265)
!3857 = !DILocalVariable(name: "options", scope: !3852, file: !644, line: 999, type: !697)
!3858 = !DILocation(line: 185, column: 26, scope: !3669, inlinedAt: !3859)
!3859 = distinct !DILocation(line: 1000, column: 13, scope: !3852)
!3860 = !DILocation(line: 0, scope: !3852)
!3861 = !DILocation(line: 999, column: 3, scope: !3852)
!3862 = !DILocation(line: 999, column: 26, scope: !3852)
!3863 = !DILocation(line: 0, scope: !3669, inlinedAt: !3859)
!3864 = !DILocation(line: 186, column: 13, scope: !3678, inlinedAt: !3859)
!3865 = !DILocation(line: 186, column: 7, scope: !3669, inlinedAt: !3859)
!3866 = !DILocation(line: 187, column: 5, scope: !3678, inlinedAt: !3859)
!3867 = !{!3868}
!3868 = distinct !{!3868, !3869, !"quoting_options_from_style: argument 0"}
!3869 = distinct !{!3869, !"quoting_options_from_style"}
!3870 = !DILocation(line: 1000, column: 13, scope: !3852)
!3871 = !DILocation(line: 0, scope: !2775, inlinedAt: !3872)
!3872 = distinct !DILocation(line: 1001, column: 3, scope: !3852)
!3873 = !DILocation(line: 147, column: 57, scope: !2775, inlinedAt: !3872)
!3874 = !DILocation(line: 149, column: 21, scope: !2775, inlinedAt: !3872)
!3875 = !DILocation(line: 150, column: 6, scope: !2775, inlinedAt: !3872)
!3876 = !DILocation(line: 1002, column: 10, scope: !3852)
!3877 = !DILocation(line: 1003, column: 1, scope: !3852)
!3878 = !DILocation(line: 1002, column: 3, scope: !3852)
!3879 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !644, file: !644, line: 1006, type: !3880, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3882)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!317, !260, !265, !265, !265}
!3882 = !{!3883, !3884, !3885, !3886}
!3883 = !DILocalVariable(name: "n", arg: 1, scope: !3879, file: !644, line: 1006, type: !260)
!3884 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3879, file: !644, line: 1006, type: !265)
!3885 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3879, file: !644, line: 1007, type: !265)
!3886 = !DILocalVariable(name: "arg", arg: 4, scope: !3879, file: !644, line: 1007, type: !265)
!3887 = !DILocation(line: 0, scope: !3879)
!3888 = !DILocalVariable(name: "n", arg: 1, scope: !3889, file: !644, line: 1014, type: !260)
!3889 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !644, file: !644, line: 1014, type: !3890, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3892)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!317, !260, !265, !265, !265, !262}
!3892 = !{!3888, !3893, !3894, !3895, !3896, !3897}
!3893 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3889, file: !644, line: 1014, type: !265)
!3894 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3889, file: !644, line: 1015, type: !265)
!3895 = !DILocalVariable(name: "arg", arg: 4, scope: !3889, file: !644, line: 1016, type: !265)
!3896 = !DILocalVariable(name: "argsize", arg: 5, scope: !3889, file: !644, line: 1016, type: !262)
!3897 = !DILocalVariable(name: "o", scope: !3889, file: !644, line: 1018, type: !697)
!3898 = !DILocation(line: 0, scope: !3889, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 1009, column: 10, scope: !3879)
!3900 = !DILocation(line: 1018, column: 3, scope: !3889, inlinedAt: !3899)
!3901 = !DILocation(line: 1018, column: 26, scope: !3889, inlinedAt: !3899)
!3902 = !DILocation(line: 1018, column: 30, scope: !3889, inlinedAt: !3899)
!3903 = !DILocation(line: 0, scope: !2815, inlinedAt: !3904)
!3904 = distinct !DILocation(line: 1019, column: 3, scope: !3889, inlinedAt: !3899)
!3905 = !DILocation(line: 174, column: 12, scope: !2815, inlinedAt: !3904)
!3906 = !DILocation(line: 175, column: 8, scope: !2828, inlinedAt: !3904)
!3907 = !DILocation(line: 175, column: 19, scope: !2828, inlinedAt: !3904)
!3908 = !DILocation(line: 176, column: 5, scope: !2828, inlinedAt: !3904)
!3909 = !DILocation(line: 177, column: 6, scope: !2815, inlinedAt: !3904)
!3910 = !DILocation(line: 177, column: 17, scope: !2815, inlinedAt: !3904)
!3911 = !DILocation(line: 178, column: 6, scope: !2815, inlinedAt: !3904)
!3912 = !DILocation(line: 178, column: 18, scope: !2815, inlinedAt: !3904)
!3913 = !DILocation(line: 1020, column: 10, scope: !3889, inlinedAt: !3899)
!3914 = !DILocation(line: 1021, column: 1, scope: !3889, inlinedAt: !3899)
!3915 = !DILocation(line: 1009, column: 3, scope: !3879)
!3916 = !DILocation(line: 0, scope: !3889)
!3917 = !DILocation(line: 1018, column: 3, scope: !3889)
!3918 = !DILocation(line: 1018, column: 26, scope: !3889)
!3919 = !DILocation(line: 1018, column: 30, scope: !3889)
!3920 = !DILocation(line: 0, scope: !2815, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 1019, column: 3, scope: !3889)
!3922 = !DILocation(line: 174, column: 12, scope: !2815, inlinedAt: !3921)
!3923 = !DILocation(line: 175, column: 8, scope: !2828, inlinedAt: !3921)
!3924 = !DILocation(line: 175, column: 19, scope: !2828, inlinedAt: !3921)
!3925 = !DILocation(line: 176, column: 5, scope: !2828, inlinedAt: !3921)
!3926 = !DILocation(line: 177, column: 6, scope: !2815, inlinedAt: !3921)
!3927 = !DILocation(line: 177, column: 17, scope: !2815, inlinedAt: !3921)
!3928 = !DILocation(line: 178, column: 6, scope: !2815, inlinedAt: !3921)
!3929 = !DILocation(line: 178, column: 18, scope: !2815, inlinedAt: !3921)
!3930 = !DILocation(line: 1020, column: 10, scope: !3889)
!3931 = !DILocation(line: 1021, column: 1, scope: !3889)
!3932 = !DILocation(line: 1020, column: 3, scope: !3889)
!3933 = distinct !DISubprogram(name: "quotearg_custom", scope: !644, file: !644, line: 1024, type: !3934, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3936)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!317, !265, !265, !265}
!3936 = !{!3937, !3938, !3939}
!3937 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3933, file: !644, line: 1024, type: !265)
!3938 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3933, file: !644, line: 1024, type: !265)
!3939 = !DILocalVariable(name: "arg", arg: 3, scope: !3933, file: !644, line: 1025, type: !265)
!3940 = !DILocation(line: 0, scope: !3933)
!3941 = !DILocation(line: 0, scope: !3879, inlinedAt: !3942)
!3942 = distinct !DILocation(line: 1027, column: 10, scope: !3933)
!3943 = !DILocation(line: 0, scope: !3889, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 1009, column: 10, scope: !3879, inlinedAt: !3942)
!3945 = !DILocation(line: 1018, column: 3, scope: !3889, inlinedAt: !3944)
!3946 = !DILocation(line: 1018, column: 26, scope: !3889, inlinedAt: !3944)
!3947 = !DILocation(line: 1018, column: 30, scope: !3889, inlinedAt: !3944)
!3948 = !DILocation(line: 0, scope: !2815, inlinedAt: !3949)
!3949 = distinct !DILocation(line: 1019, column: 3, scope: !3889, inlinedAt: !3944)
!3950 = !DILocation(line: 174, column: 12, scope: !2815, inlinedAt: !3949)
!3951 = !DILocation(line: 175, column: 8, scope: !2828, inlinedAt: !3949)
!3952 = !DILocation(line: 175, column: 19, scope: !2828, inlinedAt: !3949)
!3953 = !DILocation(line: 176, column: 5, scope: !2828, inlinedAt: !3949)
!3954 = !DILocation(line: 177, column: 6, scope: !2815, inlinedAt: !3949)
!3955 = !DILocation(line: 177, column: 17, scope: !2815, inlinedAt: !3949)
!3956 = !DILocation(line: 178, column: 6, scope: !2815, inlinedAt: !3949)
!3957 = !DILocation(line: 178, column: 18, scope: !2815, inlinedAt: !3949)
!3958 = !DILocation(line: 1020, column: 10, scope: !3889, inlinedAt: !3944)
!3959 = !DILocation(line: 1021, column: 1, scope: !3889, inlinedAt: !3944)
!3960 = !DILocation(line: 1027, column: 3, scope: !3933)
!3961 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !644, file: !644, line: 1031, type: !3962, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3964)
!3962 = !DISubroutineType(types: !3963)
!3963 = !{!317, !265, !265, !265, !262}
!3964 = !{!3965, !3966, !3967, !3968}
!3965 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3961, file: !644, line: 1031, type: !265)
!3966 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3961, file: !644, line: 1031, type: !265)
!3967 = !DILocalVariable(name: "arg", arg: 3, scope: !3961, file: !644, line: 1032, type: !265)
!3968 = !DILocalVariable(name: "argsize", arg: 4, scope: !3961, file: !644, line: 1032, type: !262)
!3969 = !DILocation(line: 0, scope: !3961)
!3970 = !DILocation(line: 0, scope: !3889, inlinedAt: !3971)
!3971 = distinct !DILocation(line: 1034, column: 10, scope: !3961)
!3972 = !DILocation(line: 1018, column: 3, scope: !3889, inlinedAt: !3971)
!3973 = !DILocation(line: 1018, column: 26, scope: !3889, inlinedAt: !3971)
!3974 = !DILocation(line: 1018, column: 30, scope: !3889, inlinedAt: !3971)
!3975 = !DILocation(line: 0, scope: !2815, inlinedAt: !3976)
!3976 = distinct !DILocation(line: 1019, column: 3, scope: !3889, inlinedAt: !3971)
!3977 = !DILocation(line: 174, column: 12, scope: !2815, inlinedAt: !3976)
!3978 = !DILocation(line: 175, column: 8, scope: !2828, inlinedAt: !3976)
!3979 = !DILocation(line: 175, column: 19, scope: !2828, inlinedAt: !3976)
!3980 = !DILocation(line: 176, column: 5, scope: !2828, inlinedAt: !3976)
!3981 = !DILocation(line: 177, column: 6, scope: !2815, inlinedAt: !3976)
!3982 = !DILocation(line: 177, column: 17, scope: !2815, inlinedAt: !3976)
!3983 = !DILocation(line: 178, column: 6, scope: !2815, inlinedAt: !3976)
!3984 = !DILocation(line: 178, column: 18, scope: !2815, inlinedAt: !3976)
!3985 = !DILocation(line: 1020, column: 10, scope: !3889, inlinedAt: !3971)
!3986 = !DILocation(line: 1021, column: 1, scope: !3889, inlinedAt: !3971)
!3987 = !DILocation(line: 1034, column: 3, scope: !3961)
!3988 = distinct !DISubprogram(name: "quote_n_mem", scope: !644, file: !644, line: 1049, type: !3989, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !3991)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!265, !260, !265, !262}
!3991 = !{!3992, !3993, !3994}
!3992 = !DILocalVariable(name: "n", arg: 1, scope: !3988, file: !644, line: 1049, type: !260)
!3993 = !DILocalVariable(name: "arg", arg: 2, scope: !3988, file: !644, line: 1049, type: !265)
!3994 = !DILocalVariable(name: "argsize", arg: 3, scope: !3988, file: !644, line: 1049, type: !262)
!3995 = !DILocation(line: 0, scope: !3988)
!3996 = !DILocation(line: 1051, column: 10, scope: !3988)
!3997 = !DILocation(line: 1051, column: 3, scope: !3988)
!3998 = distinct !DISubprogram(name: "quote_mem", scope: !644, file: !644, line: 1055, type: !3999, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !4001)
!3999 = !DISubroutineType(types: !4000)
!4000 = !{!265, !265, !262}
!4001 = !{!4002, !4003}
!4002 = !DILocalVariable(name: "arg", arg: 1, scope: !3998, file: !644, line: 1055, type: !265)
!4003 = !DILocalVariable(name: "argsize", arg: 2, scope: !3998, file: !644, line: 1055, type: !262)
!4004 = !DILocation(line: 0, scope: !3998)
!4005 = !DILocation(line: 0, scope: !3988, inlinedAt: !4006)
!4006 = distinct !DILocation(line: 1057, column: 10, scope: !3998)
!4007 = !DILocation(line: 1051, column: 10, scope: !3988, inlinedAt: !4006)
!4008 = !DILocation(line: 1057, column: 3, scope: !3998)
!4009 = distinct !DISubprogram(name: "quote_n", scope: !644, file: !644, line: 1061, type: !4010, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !4012)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!265, !260, !265}
!4012 = !{!4013, !4014}
!4013 = !DILocalVariable(name: "n", arg: 1, scope: !4009, file: !644, line: 1061, type: !260)
!4014 = !DILocalVariable(name: "arg", arg: 2, scope: !4009, file: !644, line: 1061, type: !265)
!4015 = !DILocation(line: 0, scope: !4009)
!4016 = !DILocation(line: 0, scope: !3988, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 1063, column: 10, scope: !4009)
!4018 = !DILocation(line: 1051, column: 10, scope: !3988, inlinedAt: !4017)
!4019 = !DILocation(line: 1063, column: 3, scope: !4009)
!4020 = distinct !DISubprogram(name: "quote", scope: !644, file: !644, line: 1067, type: !2330, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !668, retainedNodes: !4021)
!4021 = !{!4022}
!4022 = !DILocalVariable(name: "arg", arg: 1, scope: !4020, file: !644, line: 1067, type: !265)
!4023 = !DILocation(line: 0, scope: !4020)
!4024 = !DILocation(line: 0, scope: !4009, inlinedAt: !4025)
!4025 = distinct !DILocation(line: 1069, column: 10, scope: !4020)
!4026 = !DILocation(line: 0, scope: !3988, inlinedAt: !4027)
!4027 = distinct !DILocation(line: 1063, column: 10, scope: !4009, inlinedAt: !4025)
!4028 = !DILocation(line: 1051, column: 10, scope: !3988, inlinedAt: !4027)
!4029 = !DILocation(line: 1069, column: 3, scope: !4020)
!4030 = distinct !DISubprogram(name: "strintcmp", scope: !877, file: !877, line: 31, type: !1186, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4031)
!4031 = !{!4032, !4033}
!4032 = !DILocalVariable(name: "a", arg: 1, scope: !4030, file: !877, line: 31, type: !265)
!4033 = !DILocalVariable(name: "b", arg: 2, scope: !4030, file: !877, line: 31, type: !265)
!4034 = !DILocation(line: 0, scope: !4030)
!4035 = !DILocalVariable(name: "a", arg: 1, scope: !4036, file: !4037, line: 105, type: !265)
!4036 = distinct !DISubprogram(name: "numcompare", scope: !4037, file: !4037, line: 105, type: !4038, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4040)
!4037 = !DIFile(filename: "./lib/strnumcmp-in.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f69f23aa922f1f0bf768a1237830bd5f")
!4038 = !DISubroutineType(types: !4039)
!4039 = !{!260, !265, !265, !260, !260}
!4040 = !{!4035, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048}
!4041 = !DILocalVariable(name: "b", arg: 2, scope: !4036, file: !4037, line: 105, type: !265)
!4042 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !4036, file: !4037, line: 106, type: !260)
!4043 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !4036, file: !4037, line: 106, type: !260)
!4044 = !DILocalVariable(name: "tmpa", scope: !4036, file: !4037, line: 108, type: !4)
!4045 = !DILocalVariable(name: "tmpb", scope: !4036, file: !4037, line: 109, type: !4)
!4046 = !DILocalVariable(name: "tmp", scope: !4036, file: !4037, line: 110, type: !260)
!4047 = !DILocalVariable(name: "log_a", scope: !4036, file: !4037, line: 111, type: !262)
!4048 = !DILocalVariable(name: "log_b", scope: !4036, file: !4037, line: 112, type: !262)
!4049 = !DILocation(line: 0, scope: !4036, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 33, column: 10, scope: !4030)
!4051 = !DILocation(line: 108, column: 15, scope: !4036, inlinedAt: !4050)
!4052 = !DILocation(line: 109, column: 15, scope: !4036, inlinedAt: !4050)
!4053 = !DILocation(line: 114, column: 12, scope: !4054, inlinedAt: !4050)
!4054 = distinct !DILexicalBlock(scope: !4036, file: !4037, line: 114, column: 7)
!4055 = !DILocation(line: 114, column: 7, scope: !4036, inlinedAt: !4050)
!4056 = !DILocation(line: 117, column: 17, scope: !4057, inlinedAt: !4050)
!4057 = distinct !DILexicalBlock(scope: !4054, file: !4037, line: 115, column: 5)
!4058 = !DILocation(line: 117, column: 16, scope: !4057, inlinedAt: !4050)
!4059 = !DILocation(line: 118, column: 19, scope: !4057, inlinedAt: !4050)
!4060 = !DILocation(line: 117, column: 9, scope: !4057, inlinedAt: !4050)
!4061 = distinct !{!4061, !4062, !4063, !1104}
!4062 = !DILocation(line: 116, column: 7, scope: !4057, inlinedAt: !4050)
!4063 = !DILocation(line: 118, column: 59, scope: !4057, inlinedAt: !4050)
!4064 = !DILocation(line: 119, column: 16, scope: !4065, inlinedAt: !4050)
!4065 = distinct !DILexicalBlock(scope: !4057, file: !4037, line: 119, column: 11)
!4066 = !DILocation(line: 119, column: 11, scope: !4057, inlinedAt: !4050)
!4067 = !DILocation(line: 125, column: 26, scope: !4068, inlinedAt: !4050)
!4068 = distinct !DILexicalBlock(scope: !4069, file: !4037, line: 125, column: 15)
!4069 = distinct !DILexicalBlock(scope: !4065, file: !4037, line: 120, column: 9)
!4070 = !DILocalVariable(name: "c", arg: 1, scope: !4071, file: !2353, line: 233, type: !260)
!4071 = distinct !DISubprogram(name: "c_isdigit", scope: !2353, file: !2353, line: 233, type: !1256, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !876, retainedNodes: !4072)
!4072 = !{!4070}
!4073 = !DILocation(line: 0, scope: !4071, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 125, column: 15, scope: !4068, inlinedAt: !4050)
!4075 = !DILocation(line: 235, column: 3, scope: !4071, inlinedAt: !4074)
!4076 = !DILocation(line: 125, column: 15, scope: !4069, inlinedAt: !4050)
!4077 = !DILocation(line: 127, column: 23, scope: !4069, inlinedAt: !4050)
!4078 = !DILocation(line: 127, column: 11, scope: !4069, inlinedAt: !4050)
!4079 = !DILocation(line: 128, column: 21, scope: !4069, inlinedAt: !4050)
!4080 = !DILocation(line: 128, column: 20, scope: !4069, inlinedAt: !4050)
!4081 = distinct !{!4081, !4078, !4082, !1104}
!4082 = !DILocation(line: 128, column: 23, scope: !4069, inlinedAt: !4050)
!4083 = !DILocation(line: 133, column: 31, scope: !4069, inlinedAt: !4050)
!4084 = !DILocation(line: 0, scope: !4071, inlinedAt: !4085)
!4085 = distinct !DILocation(line: 133, column: 20, scope: !4069, inlinedAt: !4050)
!4086 = !DILocation(line: 235, column: 3, scope: !4071, inlinedAt: !4085)
!4087 = !DILocation(line: 133, column: 20, scope: !4069, inlinedAt: !4050)
!4088 = !DILocation(line: 133, column: 11, scope: !4069, inlinedAt: !4050)
!4089 = !DILocation(line: 136, column: 17, scope: !4057, inlinedAt: !4050)
!4090 = !DILocation(line: 136, column: 16, scope: !4057, inlinedAt: !4050)
!4091 = !DILocation(line: 137, column: 19, scope: !4057, inlinedAt: !4050)
!4092 = !DILocation(line: 136, column: 9, scope: !4057, inlinedAt: !4050)
!4093 = distinct !{!4093, !4094, !4095, !1104}
!4094 = !DILocation(line: 135, column: 7, scope: !4057, inlinedAt: !4050)
!4095 = !DILocation(line: 137, column: 59, scope: !4057, inlinedAt: !4050)
!4096 = !DILocation(line: 139, column: 14, scope: !4057, inlinedAt: !4050)
!4097 = !DILocation(line: 139, column: 19, scope: !4057, inlinedAt: !4050)
!4098 = !DILocation(line: 139, column: 27, scope: !4057, inlinedAt: !4050)
!4099 = !DILocation(line: 0, scope: !4071, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 139, column: 30, scope: !4057, inlinedAt: !4050)
!4101 = !DILocation(line: 142, column: 21, scope: !4102, inlinedAt: !4050)
!4102 = distinct !DILexicalBlock(scope: !4057, file: !4037, line: 140, column: 9)
!4103 = !DILocation(line: 142, column: 20, scope: !4102, inlinedAt: !4050)
!4104 = !DILocation(line: 145, column: 21, scope: !4102, inlinedAt: !4050)
!4105 = !DILocation(line: 145, column: 20, scope: !4102, inlinedAt: !4050)
!4106 = distinct !{!4106, !4107, !4108, !1104}
!4107 = !DILocation(line: 139, column: 7, scope: !4057, inlinedAt: !4050)
!4108 = !DILocation(line: 147, column: 9, scope: !4057, inlinedAt: !4050)
!4109 = !DILocation(line: 139, column: 22, scope: !4057, inlinedAt: !4050)
!4110 = !DILocation(line: 235, column: 3, scope: !4071, inlinedAt: !4111)
!4111 = distinct !DILocation(line: 155, column: 23, scope: !4112, inlinedAt: !4050)
!4112 = distinct !DILexicalBlock(scope: !4113, file: !4037, line: 155, column: 7)
!4113 = distinct !DILexicalBlock(scope: !4057, file: !4037, line: 155, column: 7)
!4114 = !DILocation(line: 0, scope: !4057, inlinedAt: !4050)
!4115 = !DILocation(line: 153, column: 18, scope: !4057, inlinedAt: !4050)
!4116 = !DILocation(line: 0, scope: !4071, inlinedAt: !4111)
!4117 = !DILocation(line: 155, column: 7, scope: !4113, inlinedAt: !4050)
!4118 = !DILocation(line: 155, scope: !4113, inlinedAt: !4050)
!4119 = !DILocation(line: 0, scope: !4071, inlinedAt: !4120)
!4120 = distinct !DILocation(line: 160, column: 23, scope: !4121, inlinedAt: !4050)
!4121 = distinct !DILexicalBlock(scope: !4122, file: !4037, line: 160, column: 7)
!4122 = distinct !DILexicalBlock(scope: !4057, file: !4037, line: 160, column: 7)
!4123 = !DILocation(line: 235, column: 3, scope: !4071, inlinedAt: !4120)
!4124 = !DILocation(line: 160, column: 7, scope: !4122, inlinedAt: !4050)
!4125 = !DILocation(line: 157, column: 19, scope: !4112, inlinedAt: !4050)
!4126 = !DILocation(line: 157, column: 18, scope: !4112, inlinedAt: !4050)
!4127 = !DILocation(line: 155, column: 41, scope: !4112, inlinedAt: !4050)
!4128 = !DILocation(line: 155, column: 34, scope: !4112, inlinedAt: !4050)
!4129 = distinct !{!4129, !4117, !4130, !1104}
!4130 = !DILocation(line: 158, column: 37, scope: !4113, inlinedAt: !4050)
!4131 = !DILocation(line: 162, column: 19, scope: !4121, inlinedAt: !4050)
!4132 = !DILocation(line: 162, column: 18, scope: !4121, inlinedAt: !4050)
!4133 = !DILocation(line: 160, column: 41, scope: !4121, inlinedAt: !4050)
!4134 = !DILocation(line: 160, column: 34, scope: !4121, inlinedAt: !4050)
!4135 = distinct !{!4135, !4124, !4136, !1104}
!4136 = !DILocation(line: 163, column: 37, scope: !4122, inlinedAt: !4050)
!4137 = !DILocation(line: 160, scope: !4122, inlinedAt: !4050)
!4138 = !DILocation(line: 165, column: 17, scope: !4139, inlinedAt: !4050)
!4139 = distinct !DILexicalBlock(scope: !4057, file: !4037, line: 165, column: 11)
!4140 = !DILocation(line: 165, column: 11, scope: !4057, inlinedAt: !4050)
!4141 = !DILocation(line: 166, column: 22, scope: !4139, inlinedAt: !4050)
!4142 = !DILocation(line: 166, column: 16, scope: !4139, inlinedAt: !4050)
!4143 = !DILocation(line: 166, column: 9, scope: !4139, inlinedAt: !4050)
!4144 = !DILocation(line: 168, column: 12, scope: !4145, inlinedAt: !4050)
!4145 = distinct !DILexicalBlock(scope: !4057, file: !4037, line: 168, column: 11)
!4146 = !DILocation(line: 173, column: 17, scope: !4147, inlinedAt: !4050)
!4147 = distinct !DILexicalBlock(scope: !4054, file: !4037, line: 173, column: 12)
!4148 = !DILocation(line: 173, column: 12, scope: !4054, inlinedAt: !4050)
!4149 = !DILocation(line: 194, column: 19, scope: !4150, inlinedAt: !4050)
!4150 = distinct !DILexicalBlock(scope: !4147, file: !4037, line: 193, column: 5)
!4151 = !DILocation(line: 194, column: 7, scope: !4150, inlinedAt: !4050)
!4152 = !DILocation(line: 176, column: 17, scope: !4153, inlinedAt: !4050)
!4153 = distinct !DILexicalBlock(scope: !4147, file: !4037, line: 174, column: 5)
!4154 = !DILocation(line: 176, column: 16, scope: !4153, inlinedAt: !4050)
!4155 = !DILocation(line: 177, column: 19, scope: !4153, inlinedAt: !4050)
!4156 = !DILocation(line: 176, column: 9, scope: !4153, inlinedAt: !4050)
!4157 = distinct !{!4157, !4158, !4159, !1104}
!4158 = !DILocation(line: 175, column: 7, scope: !4153, inlinedAt: !4050)
!4159 = !DILocation(line: 177, column: 59, scope: !4153, inlinedAt: !4050)
!4160 = !DILocation(line: 182, column: 22, scope: !4161, inlinedAt: !4050)
!4161 = distinct !DILexicalBlock(scope: !4153, file: !4037, line: 182, column: 11)
!4162 = !DILocation(line: 0, scope: !4071, inlinedAt: !4163)
!4163 = distinct !DILocation(line: 182, column: 11, scope: !4161, inlinedAt: !4050)
!4164 = !DILocation(line: 235, column: 3, scope: !4071, inlinedAt: !4163)
!4165 = !DILocation(line: 182, column: 11, scope: !4153, inlinedAt: !4050)
!4166 = !DILocation(line: 184, column: 19, scope: !4153, inlinedAt: !4050)
!4167 = !DILocation(line: 184, column: 7, scope: !4153, inlinedAt: !4050)
!4168 = !DILocation(line: 185, column: 17, scope: !4153, inlinedAt: !4050)
!4169 = !DILocation(line: 185, column: 16, scope: !4153, inlinedAt: !4050)
!4170 = distinct !{!4170, !4167, !4171, !1104}
!4171 = !DILocation(line: 185, column: 19, scope: !4153, inlinedAt: !4050)
!4172 = !DILocation(line: 190, column: 25, scope: !4153, inlinedAt: !4050)
!4173 = !DILocation(line: 0, scope: !4071, inlinedAt: !4174)
!4174 = distinct !DILocation(line: 190, column: 14, scope: !4153, inlinedAt: !4050)
!4175 = !DILocation(line: 235, column: 3, scope: !4071, inlinedAt: !4174)
!4176 = !DILocation(line: 190, column: 14, scope: !4153, inlinedAt: !4050)
!4177 = !DILocation(line: 190, column: 7, scope: !4153, inlinedAt: !4050)
!4178 = !DILocation(line: 196, column: 19, scope: !4150, inlinedAt: !4050)
!4179 = !DILocation(line: 196, column: 7, scope: !4150, inlinedAt: !4050)
!4180 = !DILocation(line: 195, column: 17, scope: !4150, inlinedAt: !4050)
!4181 = !DILocation(line: 195, column: 16, scope: !4150, inlinedAt: !4050)
!4182 = distinct !{!4182, !4151, !4183, !1104}
!4183 = !DILocation(line: 195, column: 19, scope: !4150, inlinedAt: !4050)
!4184 = !DILocation(line: 199, column: 14, scope: !4150, inlinedAt: !4050)
!4185 = !DILocation(line: 199, column: 19, scope: !4150, inlinedAt: !4050)
!4186 = !DILocation(line: 199, column: 27, scope: !4150, inlinedAt: !4050)
!4187 = !DILocation(line: 0, scope: !4071, inlinedAt: !4188)
!4188 = distinct !DILocation(line: 199, column: 30, scope: !4150, inlinedAt: !4050)
!4189 = !DILocation(line: 197, column: 17, scope: !4150, inlinedAt: !4050)
!4190 = !DILocation(line: 197, column: 16, scope: !4150, inlinedAt: !4050)
!4191 = distinct !{!4191, !4179, !4192, !1104}
!4192 = !DILocation(line: 197, column: 19, scope: !4150, inlinedAt: !4050)
!4193 = !DILocation(line: 202, column: 21, scope: !4194, inlinedAt: !4050)
!4194 = distinct !DILexicalBlock(scope: !4150, file: !4037, line: 200, column: 9)
!4195 = !DILocation(line: 202, column: 20, scope: !4194, inlinedAt: !4050)
!4196 = !DILocation(line: 205, column: 21, scope: !4194, inlinedAt: !4050)
!4197 = !DILocation(line: 205, column: 20, scope: !4194, inlinedAt: !4050)
!4198 = distinct !{!4198, !4199, !4200, !1104}
!4199 = !DILocation(line: 199, column: 7, scope: !4150, inlinedAt: !4050)
!4200 = !DILocation(line: 207, column: 9, scope: !4150, inlinedAt: !4050)
!4201 = !DILocation(line: 199, column: 22, scope: !4150, inlinedAt: !4050)
!4202 = !DILocation(line: 235, column: 3, scope: !4071, inlinedAt: !4203)
!4203 = distinct !DILocation(line: 215, column: 23, scope: !4204, inlinedAt: !4050)
!4204 = distinct !DILexicalBlock(scope: !4205, file: !4037, line: 215, column: 7)
!4205 = distinct !DILexicalBlock(scope: !4150, file: !4037, line: 215, column: 7)
!4206 = !DILocation(line: 213, column: 18, scope: !4150, inlinedAt: !4050)
!4207 = !DILocation(line: 0, scope: !4071, inlinedAt: !4203)
!4208 = !DILocation(line: 215, column: 7, scope: !4205, inlinedAt: !4050)
!4209 = !DILocation(line: 215, scope: !4205, inlinedAt: !4050)
!4210 = !DILocation(line: 0, scope: !4071, inlinedAt: !4211)
!4211 = distinct !DILocation(line: 220, column: 23, scope: !4212, inlinedAt: !4050)
!4212 = distinct !DILexicalBlock(scope: !4213, file: !4037, line: 220, column: 7)
!4213 = distinct !DILexicalBlock(scope: !4150, file: !4037, line: 220, column: 7)
!4214 = !DILocation(line: 235, column: 3, scope: !4071, inlinedAt: !4211)
!4215 = !DILocation(line: 220, column: 7, scope: !4213, inlinedAt: !4050)
!4216 = !DILocation(line: 217, column: 19, scope: !4204, inlinedAt: !4050)
!4217 = !DILocation(line: 217, column: 18, scope: !4204, inlinedAt: !4050)
!4218 = !DILocation(line: 215, column: 41, scope: !4204, inlinedAt: !4050)
!4219 = !DILocation(line: 215, column: 34, scope: !4204, inlinedAt: !4050)
!4220 = distinct !{!4220, !4208, !4221, !1104}
!4221 = !DILocation(line: 218, column: 37, scope: !4205, inlinedAt: !4050)
!4222 = !DILocation(line: 222, column: 19, scope: !4212, inlinedAt: !4050)
!4223 = !DILocation(line: 222, column: 18, scope: !4212, inlinedAt: !4050)
!4224 = !DILocation(line: 220, column: 41, scope: !4212, inlinedAt: !4050)
!4225 = !DILocation(line: 220, column: 34, scope: !4212, inlinedAt: !4050)
!4226 = distinct !{!4226, !4215, !4227, !1104}
!4227 = !DILocation(line: 223, column: 37, scope: !4213, inlinedAt: !4050)
!4228 = !DILocation(line: 220, scope: !4213, inlinedAt: !4050)
!4229 = !DILocation(line: 225, column: 17, scope: !4230, inlinedAt: !4050)
!4230 = distinct !DILexicalBlock(scope: !4150, file: !4037, line: 225, column: 11)
!4231 = !DILocation(line: 225, column: 11, scope: !4150, inlinedAt: !4050)
!4232 = !DILocation(line: 226, column: 22, scope: !4230, inlinedAt: !4050)
!4233 = !DILocation(line: 226, column: 16, scope: !4230, inlinedAt: !4050)
!4234 = !DILocation(line: 226, column: 9, scope: !4230, inlinedAt: !4050)
!4235 = !DILocation(line: 228, column: 12, scope: !4236, inlinedAt: !4050)
!4236 = distinct !DILexicalBlock(scope: !4150, file: !4037, line: 228, column: 11)
!4237 = !DILocation(line: 0, scope: !4150, inlinedAt: !4050)
!4238 = !DILocation(line: 0, scope: !4054, inlinedAt: !4050)
!4239 = !DILocation(line: 33, column: 3, scope: !4030)
!4240 = distinct !DISubprogram(name: "version_etc_arn", scope: !764, file: !764, line: 61, type: !4241, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4278)
!4241 = !DISubroutineType(types: !4242)
!4242 = !{null, !4243, !265, !265, !265, !4277, !262}
!4243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4244, size: 64)
!4244 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !311, line: 7, baseType: !4245)
!4245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !313, line: 49, size: 1728, elements: !4246)
!4246 = !{!4247, !4248, !4249, !4250, !4251, !4252, !4253, !4254, !4255, !4256, !4257, !4258, !4259, !4260, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4269, !4270, !4271, !4272, !4273, !4274, !4275, !4276}
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4245, file: !313, line: 51, baseType: !260, size: 32)
!4248 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4245, file: !313, line: 54, baseType: !317, size: 64, offset: 64)
!4249 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4245, file: !313, line: 55, baseType: !317, size: 64, offset: 128)
!4250 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4245, file: !313, line: 56, baseType: !317, size: 64, offset: 192)
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4245, file: !313, line: 57, baseType: !317, size: 64, offset: 256)
!4252 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4245, file: !313, line: 58, baseType: !317, size: 64, offset: 320)
!4253 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4245, file: !313, line: 59, baseType: !317, size: 64, offset: 384)
!4254 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4245, file: !313, line: 60, baseType: !317, size: 64, offset: 448)
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4245, file: !313, line: 61, baseType: !317, size: 64, offset: 512)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4245, file: !313, line: 64, baseType: !317, size: 64, offset: 576)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4245, file: !313, line: 65, baseType: !317, size: 64, offset: 640)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4245, file: !313, line: 66, baseType: !317, size: 64, offset: 704)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4245, file: !313, line: 68, baseType: !329, size: 64, offset: 768)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4245, file: !313, line: 70, baseType: !4261, size: 64, offset: 832)
!4261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4245, size: 64)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4245, file: !313, line: 72, baseType: !260, size: 32, offset: 896)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4245, file: !313, line: 73, baseType: !260, size: 32, offset: 928)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4245, file: !313, line: 74, baseType: !336, size: 64, offset: 960)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4245, file: !313, line: 77, baseType: !261, size: 16, offset: 1024)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4245, file: !313, line: 78, baseType: !339, size: 8, offset: 1040)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4245, file: !313, line: 79, baseType: !206, size: 8, offset: 1048)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4245, file: !313, line: 81, baseType: !342, size: 64, offset: 1088)
!4269 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4245, file: !313, line: 89, baseType: !345, size: 64, offset: 1152)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4245, file: !313, line: 91, baseType: !347, size: 64, offset: 1216)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4245, file: !313, line: 92, baseType: !350, size: 64, offset: 1280)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4245, file: !313, line: 93, baseType: !4261, size: 64, offset: 1344)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4245, file: !313, line: 94, baseType: !354, size: 64, offset: 1408)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4245, file: !313, line: 95, baseType: !262, size: 64, offset: 1472)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4245, file: !313, line: 96, baseType: !260, size: 32, offset: 1536)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4245, file: !313, line: 98, baseType: !358, size: 160, offset: 1568)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!4278 = !{!4279, !4280, !4281, !4282, !4283, !4284}
!4279 = !DILocalVariable(name: "stream", arg: 1, scope: !4240, file: !764, line: 61, type: !4243)
!4280 = !DILocalVariable(name: "command_name", arg: 2, scope: !4240, file: !764, line: 62, type: !265)
!4281 = !DILocalVariable(name: "package", arg: 3, scope: !4240, file: !764, line: 62, type: !265)
!4282 = !DILocalVariable(name: "version", arg: 4, scope: !4240, file: !764, line: 63, type: !265)
!4283 = !DILocalVariable(name: "authors", arg: 5, scope: !4240, file: !764, line: 64, type: !4277)
!4284 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4240, file: !764, line: 64, type: !262)
!4285 = !DILocation(line: 0, scope: !4240)
!4286 = !DILocation(line: 66, column: 7, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4240, file: !764, line: 66, column: 7)
!4288 = !DILocation(line: 66, column: 7, scope: !4240)
!4289 = !DILocation(line: 67, column: 5, scope: !4287)
!4290 = !DILocation(line: 69, column: 5, scope: !4287)
!4291 = !DILocation(line: 83, column: 3, scope: !4240)
!4292 = !DILocation(line: 85, column: 3, scope: !4240)
!4293 = !DILocation(line: 88, column: 3, scope: !4240)
!4294 = !DILocation(line: 95, column: 3, scope: !4240)
!4295 = !DILocation(line: 97, column: 3, scope: !4240)
!4296 = !DILocation(line: 105, column: 7, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4240, file: !764, line: 98, column: 5)
!4298 = !DILocation(line: 106, column: 7, scope: !4297)
!4299 = !DILocation(line: 109, column: 7, scope: !4297)
!4300 = !DILocation(line: 110, column: 7, scope: !4297)
!4301 = !DILocation(line: 113, column: 7, scope: !4297)
!4302 = !DILocation(line: 115, column: 7, scope: !4297)
!4303 = !DILocation(line: 120, column: 7, scope: !4297)
!4304 = !DILocation(line: 122, column: 7, scope: !4297)
!4305 = !DILocation(line: 127, column: 7, scope: !4297)
!4306 = !DILocation(line: 129, column: 7, scope: !4297)
!4307 = !DILocation(line: 134, column: 7, scope: !4297)
!4308 = !DILocation(line: 137, column: 7, scope: !4297)
!4309 = !DILocation(line: 142, column: 7, scope: !4297)
!4310 = !DILocation(line: 145, column: 7, scope: !4297)
!4311 = !DILocation(line: 150, column: 7, scope: !4297)
!4312 = !DILocation(line: 154, column: 7, scope: !4297)
!4313 = !DILocation(line: 159, column: 7, scope: !4297)
!4314 = !DILocation(line: 163, column: 7, scope: !4297)
!4315 = !DILocation(line: 170, column: 7, scope: !4297)
!4316 = !DILocation(line: 174, column: 7, scope: !4297)
!4317 = !DILocation(line: 176, column: 1, scope: !4240)
!4318 = distinct !DISubprogram(name: "version_etc_ar", scope: !764, file: !764, line: 183, type: !4319, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4321)
!4319 = !DISubroutineType(types: !4320)
!4320 = !{null, !4243, !265, !265, !265, !4277}
!4321 = !{!4322, !4323, !4324, !4325, !4326, !4327}
!4322 = !DILocalVariable(name: "stream", arg: 1, scope: !4318, file: !764, line: 183, type: !4243)
!4323 = !DILocalVariable(name: "command_name", arg: 2, scope: !4318, file: !764, line: 184, type: !265)
!4324 = !DILocalVariable(name: "package", arg: 3, scope: !4318, file: !764, line: 184, type: !265)
!4325 = !DILocalVariable(name: "version", arg: 4, scope: !4318, file: !764, line: 185, type: !265)
!4326 = !DILocalVariable(name: "authors", arg: 5, scope: !4318, file: !764, line: 185, type: !4277)
!4327 = !DILocalVariable(name: "n_authors", scope: !4318, file: !764, line: 187, type: !262)
!4328 = !DILocation(line: 0, scope: !4318)
!4329 = !DILocation(line: 189, column: 8, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4318, file: !764, line: 189, column: 3)
!4331 = !DILocation(line: 189, scope: !4330)
!4332 = !DILocation(line: 189, column: 23, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4330, file: !764, line: 189, column: 3)
!4334 = !DILocation(line: 189, column: 3, scope: !4330)
!4335 = !DILocation(line: 189, column: 52, scope: !4333)
!4336 = distinct !{!4336, !4334, !4337, !1104}
!4337 = !DILocation(line: 190, column: 5, scope: !4330)
!4338 = !DILocation(line: 191, column: 3, scope: !4318)
!4339 = !DILocation(line: 192, column: 1, scope: !4318)
!4340 = distinct !DISubprogram(name: "version_etc_va", scope: !764, file: !764, line: 199, type: !4341, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4354)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{null, !4243, !265, !265, !265, !4343}
!4343 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !591, line: 52, baseType: !4344)
!4344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !593, line: 14, baseType: !4345)
!4345 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4346, baseType: !4347)
!4346 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4348)
!4348 = !{!4349, !4350, !4351, !4352, !4353}
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4347, file: !4346, line: 192, baseType: !354, size: 64)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4347, file: !4346, line: 192, baseType: !354, size: 64, offset: 64)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4347, file: !4346, line: 192, baseType: !354, size: 64, offset: 128)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4347, file: !4346, line: 192, baseType: !260, size: 32, offset: 192)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4347, file: !4346, line: 192, baseType: !260, size: 32, offset: 224)
!4354 = !{!4355, !4356, !4357, !4358, !4359, !4360, !4361}
!4355 = !DILocalVariable(name: "stream", arg: 1, scope: !4340, file: !764, line: 199, type: !4243)
!4356 = !DILocalVariable(name: "command_name", arg: 2, scope: !4340, file: !764, line: 200, type: !265)
!4357 = !DILocalVariable(name: "package", arg: 3, scope: !4340, file: !764, line: 200, type: !265)
!4358 = !DILocalVariable(name: "version", arg: 4, scope: !4340, file: !764, line: 201, type: !265)
!4359 = !DILocalVariable(name: "authors", arg: 5, scope: !4340, file: !764, line: 201, type: !4343)
!4360 = !DILocalVariable(name: "n_authors", scope: !4340, file: !764, line: 203, type: !262)
!4361 = !DILocalVariable(name: "authtab", scope: !4340, file: !764, line: 204, type: !4362)
!4362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 640, elements: !212)
!4363 = !DILocation(line: 0, scope: !4340)
!4364 = !DILocation(line: 201, column: 46, scope: !4340)
!4365 = !DILocation(line: 204, column: 3, scope: !4340)
!4366 = !DILocation(line: 204, column: 15, scope: !4340)
!4367 = !DILocation(line: 208, column: 35, scope: !4368)
!4368 = distinct !DILexicalBlock(scope: !4369, file: !764, line: 206, column: 3)
!4369 = distinct !DILexicalBlock(scope: !4340, file: !764, line: 206, column: 3)
!4370 = !DILocation(line: 208, column: 33, scope: !4368)
!4371 = !DILocation(line: 208, column: 67, scope: !4368)
!4372 = !DILocation(line: 206, column: 3, scope: !4369)
!4373 = !DILocation(line: 208, column: 14, scope: !4368)
!4374 = !DILocation(line: 0, scope: !4369)
!4375 = !DILocation(line: 211, column: 3, scope: !4340)
!4376 = !DILocation(line: 213, column: 1, scope: !4340)
!4377 = distinct !DISubprogram(name: "version_etc", scope: !764, file: !764, line: 230, type: !4378, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !4380)
!4378 = !DISubroutineType(types: !4379)
!4379 = !{null, !4243, !265, !265, !265, null}
!4380 = !{!4381, !4382, !4383, !4384, !4385}
!4381 = !DILocalVariable(name: "stream", arg: 1, scope: !4377, file: !764, line: 230, type: !4243)
!4382 = !DILocalVariable(name: "command_name", arg: 2, scope: !4377, file: !764, line: 231, type: !265)
!4383 = !DILocalVariable(name: "package", arg: 3, scope: !4377, file: !764, line: 231, type: !265)
!4384 = !DILocalVariable(name: "version", arg: 4, scope: !4377, file: !764, line: 232, type: !265)
!4385 = !DILocalVariable(name: "authors", scope: !4377, file: !764, line: 234, type: !4343)
!4386 = !DILocation(line: 0, scope: !4377)
!4387 = !DILocation(line: 234, column: 3, scope: !4377)
!4388 = !DILocation(line: 234, column: 11, scope: !4377)
!4389 = !DILocation(line: 235, column: 3, scope: !4377)
!4390 = !DILocation(line: 236, column: 3, scope: !4377)
!4391 = !DILocation(line: 237, column: 3, scope: !4377)
!4392 = !DILocation(line: 238, column: 1, scope: !4377)
!4393 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !764, file: !764, line: 241, type: !630, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !878, retainedNodes: !1045)
!4394 = !DILocation(line: 243, column: 3, scope: !4393)
!4395 = !DILocation(line: 248, column: 3, scope: !4393)
!4396 = !DILocation(line: 254, column: 3, scope: !4393)
!4397 = !DILocation(line: 259, column: 3, scope: !4393)
!4398 = !DILocation(line: 261, column: 1, scope: !4393)
!4399 = distinct !DISubprogram(name: "xnrealloc", scope: !4400, file: !4400, line: 147, type: !4401, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4403)
!4400 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4401 = !DISubroutineType(types: !4402)
!4402 = !{!354, !354, !262, !262}
!4403 = !{!4404, !4405, !4406}
!4404 = !DILocalVariable(name: "p", arg: 1, scope: !4399, file: !4400, line: 147, type: !354)
!4405 = !DILocalVariable(name: "n", arg: 2, scope: !4399, file: !4400, line: 147, type: !262)
!4406 = !DILocalVariable(name: "s", arg: 3, scope: !4399, file: !4400, line: 147, type: !262)
!4407 = !DILocation(line: 0, scope: !4399)
!4408 = !DILocalVariable(name: "p", arg: 1, scope: !4409, file: !886, line: 83, type: !354)
!4409 = distinct !DISubprogram(name: "xreallocarray", scope: !886, file: !886, line: 83, type: !4401, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4410)
!4410 = !{!4408, !4411, !4412}
!4411 = !DILocalVariable(name: "n", arg: 2, scope: !4409, file: !886, line: 83, type: !262)
!4412 = !DILocalVariable(name: "s", arg: 3, scope: !4409, file: !886, line: 83, type: !262)
!4413 = !DILocation(line: 0, scope: !4409, inlinedAt: !4414)
!4414 = distinct !DILocation(line: 149, column: 10, scope: !4399)
!4415 = !DILocation(line: 85, column: 25, scope: !4409, inlinedAt: !4414)
!4416 = !DILocalVariable(name: "p", arg: 1, scope: !4417, file: !886, line: 37, type: !354)
!4417 = distinct !DISubprogram(name: "check_nonnull", scope: !886, file: !886, line: 37, type: !4418, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4420)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{!354, !354}
!4420 = !{!4416}
!4421 = !DILocation(line: 0, scope: !4417, inlinedAt: !4422)
!4422 = distinct !DILocation(line: 85, column: 10, scope: !4409, inlinedAt: !4414)
!4423 = !DILocation(line: 39, column: 8, scope: !4424, inlinedAt: !4422)
!4424 = distinct !DILexicalBlock(scope: !4417, file: !886, line: 39, column: 7)
!4425 = !DILocation(line: 39, column: 7, scope: !4417, inlinedAt: !4422)
!4426 = !DILocation(line: 40, column: 5, scope: !4424, inlinedAt: !4422)
!4427 = !DILocation(line: 149, column: 3, scope: !4399)
!4428 = !DILocation(line: 0, scope: !4409)
!4429 = !DILocation(line: 85, column: 25, scope: !4409)
!4430 = !DILocation(line: 0, scope: !4417, inlinedAt: !4431)
!4431 = distinct !DILocation(line: 85, column: 10, scope: !4409)
!4432 = !DILocation(line: 39, column: 8, scope: !4424, inlinedAt: !4431)
!4433 = !DILocation(line: 39, column: 7, scope: !4417, inlinedAt: !4431)
!4434 = !DILocation(line: 40, column: 5, scope: !4424, inlinedAt: !4431)
!4435 = !DILocation(line: 85, column: 3, scope: !4409)
!4436 = distinct !DISubprogram(name: "xmalloc", scope: !886, file: !886, line: 47, type: !4437, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4439)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!354, !262}
!4439 = !{!4440}
!4440 = !DILocalVariable(name: "s", arg: 1, scope: !4436, file: !886, line: 47, type: !262)
!4441 = !DILocation(line: 0, scope: !4436)
!4442 = !DILocation(line: 49, column: 25, scope: !4436)
!4443 = !DILocation(line: 0, scope: !4417, inlinedAt: !4444)
!4444 = distinct !DILocation(line: 49, column: 10, scope: !4436)
!4445 = !DILocation(line: 39, column: 8, scope: !4424, inlinedAt: !4444)
!4446 = !DILocation(line: 39, column: 7, scope: !4417, inlinedAt: !4444)
!4447 = !DILocation(line: 40, column: 5, scope: !4424, inlinedAt: !4444)
!4448 = !DILocation(line: 49, column: 3, scope: !4436)
!4449 = !DISubprogram(name: "malloc", scope: !1181, file: !1181, line: 540, type: !4437, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!4450 = distinct !DISubprogram(name: "ximalloc", scope: !886, file: !886, line: 53, type: !4451, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4453)
!4451 = !DISubroutineType(types: !4452)
!4452 = !{!354, !905}
!4453 = !{!4454}
!4454 = !DILocalVariable(name: "s", arg: 1, scope: !4450, file: !886, line: 53, type: !905)
!4455 = !DILocation(line: 0, scope: !4450)
!4456 = !DILocalVariable(name: "s", arg: 1, scope: !4457, file: !4458, line: 55, type: !905)
!4457 = distinct !DISubprogram(name: "imalloc", scope: !4458, file: !4458, line: 55, type: !4451, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4459)
!4458 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4459 = !{!4456}
!4460 = !DILocation(line: 0, scope: !4457, inlinedAt: !4461)
!4461 = distinct !DILocation(line: 55, column: 25, scope: !4450)
!4462 = !DILocation(line: 57, column: 26, scope: !4457, inlinedAt: !4461)
!4463 = !DILocation(line: 0, scope: !4417, inlinedAt: !4464)
!4464 = distinct !DILocation(line: 55, column: 10, scope: !4450)
!4465 = !DILocation(line: 39, column: 8, scope: !4424, inlinedAt: !4464)
!4466 = !DILocation(line: 39, column: 7, scope: !4417, inlinedAt: !4464)
!4467 = !DILocation(line: 40, column: 5, scope: !4424, inlinedAt: !4464)
!4468 = !DILocation(line: 55, column: 3, scope: !4450)
!4469 = distinct !DISubprogram(name: "xcharalloc", scope: !886, file: !886, line: 59, type: !4470, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4472)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!317, !262}
!4472 = !{!4473}
!4473 = !DILocalVariable(name: "n", arg: 1, scope: !4469, file: !886, line: 59, type: !262)
!4474 = !DILocation(line: 0, scope: !4469)
!4475 = !DILocation(line: 0, scope: !4436, inlinedAt: !4476)
!4476 = distinct !DILocation(line: 61, column: 10, scope: !4469)
!4477 = !DILocation(line: 49, column: 25, scope: !4436, inlinedAt: !4476)
!4478 = !DILocation(line: 0, scope: !4417, inlinedAt: !4479)
!4479 = distinct !DILocation(line: 49, column: 10, scope: !4436, inlinedAt: !4476)
!4480 = !DILocation(line: 39, column: 8, scope: !4424, inlinedAt: !4479)
!4481 = !DILocation(line: 39, column: 7, scope: !4417, inlinedAt: !4479)
!4482 = !DILocation(line: 40, column: 5, scope: !4424, inlinedAt: !4479)
!4483 = !DILocation(line: 61, column: 3, scope: !4469)
!4484 = distinct !DISubprogram(name: "xrealloc", scope: !886, file: !886, line: 68, type: !4485, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4487)
!4485 = !DISubroutineType(types: !4486)
!4486 = !{!354, !354, !262}
!4487 = !{!4488, !4489}
!4488 = !DILocalVariable(name: "p", arg: 1, scope: !4484, file: !886, line: 68, type: !354)
!4489 = !DILocalVariable(name: "s", arg: 2, scope: !4484, file: !886, line: 68, type: !262)
!4490 = !DILocation(line: 0, scope: !4484)
!4491 = !DILocalVariable(name: "ptr", arg: 1, scope: !4492, file: !4493, line: 2057, type: !354)
!4492 = distinct !DISubprogram(name: "rpl_realloc", scope: !4493, file: !4493, line: 2057, type: !4485, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4494)
!4493 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4494 = !{!4491, !4495}
!4495 = !DILocalVariable(name: "size", arg: 2, scope: !4492, file: !4493, line: 2057, type: !262)
!4496 = !DILocation(line: 0, scope: !4492, inlinedAt: !4497)
!4497 = distinct !DILocation(line: 70, column: 25, scope: !4484)
!4498 = !DILocation(line: 2059, column: 24, scope: !4492, inlinedAt: !4497)
!4499 = !DILocation(line: 2059, column: 10, scope: !4492, inlinedAt: !4497)
!4500 = !DILocation(line: 0, scope: !4417, inlinedAt: !4501)
!4501 = distinct !DILocation(line: 70, column: 10, scope: !4484)
!4502 = !DILocation(line: 39, column: 8, scope: !4424, inlinedAt: !4501)
!4503 = !DILocation(line: 39, column: 7, scope: !4417, inlinedAt: !4501)
!4504 = !DILocation(line: 40, column: 5, scope: !4424, inlinedAt: !4501)
!4505 = !DILocation(line: 70, column: 3, scope: !4484)
!4506 = !DISubprogram(name: "realloc", scope: !1181, file: !1181, line: 551, type: !4485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!4507 = distinct !DISubprogram(name: "xirealloc", scope: !886, file: !886, line: 74, type: !4508, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4510)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{!354, !354, !905}
!4510 = !{!4511, !4512}
!4511 = !DILocalVariable(name: "p", arg: 1, scope: !4507, file: !886, line: 74, type: !354)
!4512 = !DILocalVariable(name: "s", arg: 2, scope: !4507, file: !886, line: 74, type: !905)
!4513 = !DILocation(line: 0, scope: !4507)
!4514 = !DILocalVariable(name: "p", arg: 1, scope: !4515, file: !4458, line: 66, type: !354)
!4515 = distinct !DISubprogram(name: "irealloc", scope: !4458, file: !4458, line: 66, type: !4508, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4516)
!4516 = !{!4514, !4517}
!4517 = !DILocalVariable(name: "s", arg: 2, scope: !4515, file: !4458, line: 66, type: !905)
!4518 = !DILocation(line: 0, scope: !4515, inlinedAt: !4519)
!4519 = distinct !DILocation(line: 76, column: 25, scope: !4507)
!4520 = !DILocation(line: 0, scope: !4492, inlinedAt: !4521)
!4521 = distinct !DILocation(line: 68, column: 26, scope: !4515, inlinedAt: !4519)
!4522 = !DILocation(line: 2059, column: 24, scope: !4492, inlinedAt: !4521)
!4523 = !DILocation(line: 2059, column: 10, scope: !4492, inlinedAt: !4521)
!4524 = !DILocation(line: 0, scope: !4417, inlinedAt: !4525)
!4525 = distinct !DILocation(line: 76, column: 10, scope: !4507)
!4526 = !DILocation(line: 39, column: 8, scope: !4424, inlinedAt: !4525)
!4527 = !DILocation(line: 39, column: 7, scope: !4417, inlinedAt: !4525)
!4528 = !DILocation(line: 40, column: 5, scope: !4424, inlinedAt: !4525)
!4529 = !DILocation(line: 76, column: 3, scope: !4507)
!4530 = distinct !DISubprogram(name: "xireallocarray", scope: !886, file: !886, line: 89, type: !4531, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4533)
!4531 = !DISubroutineType(types: !4532)
!4532 = !{!354, !354, !905, !905}
!4533 = !{!4534, !4535, !4536}
!4534 = !DILocalVariable(name: "p", arg: 1, scope: !4530, file: !886, line: 89, type: !354)
!4535 = !DILocalVariable(name: "n", arg: 2, scope: !4530, file: !886, line: 89, type: !905)
!4536 = !DILocalVariable(name: "s", arg: 3, scope: !4530, file: !886, line: 89, type: !905)
!4537 = !DILocation(line: 0, scope: !4530)
!4538 = !DILocalVariable(name: "p", arg: 1, scope: !4539, file: !4458, line: 98, type: !354)
!4539 = distinct !DISubprogram(name: "ireallocarray", scope: !4458, file: !4458, line: 98, type: !4531, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4540)
!4540 = !{!4538, !4541, !4542}
!4541 = !DILocalVariable(name: "n", arg: 2, scope: !4539, file: !4458, line: 98, type: !905)
!4542 = !DILocalVariable(name: "s", arg: 3, scope: !4539, file: !4458, line: 98, type: !905)
!4543 = !DILocation(line: 0, scope: !4539, inlinedAt: !4544)
!4544 = distinct !DILocation(line: 91, column: 25, scope: !4530)
!4545 = !DILocation(line: 101, column: 13, scope: !4539, inlinedAt: !4544)
!4546 = !DILocation(line: 0, scope: !4417, inlinedAt: !4547)
!4547 = distinct !DILocation(line: 91, column: 10, scope: !4530)
!4548 = !DILocation(line: 39, column: 8, scope: !4424, inlinedAt: !4547)
!4549 = !DILocation(line: 39, column: 7, scope: !4417, inlinedAt: !4547)
!4550 = !DILocation(line: 40, column: 5, scope: !4424, inlinedAt: !4547)
!4551 = !DILocation(line: 91, column: 3, scope: !4530)
!4552 = distinct !DISubprogram(name: "xnmalloc", scope: !886, file: !886, line: 98, type: !4553, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4555)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{!354, !262, !262}
!4555 = !{!4556, !4557}
!4556 = !DILocalVariable(name: "n", arg: 1, scope: !4552, file: !886, line: 98, type: !262)
!4557 = !DILocalVariable(name: "s", arg: 2, scope: !4552, file: !886, line: 98, type: !262)
!4558 = !DILocation(line: 0, scope: !4552)
!4559 = !DILocation(line: 0, scope: !4409, inlinedAt: !4560)
!4560 = distinct !DILocation(line: 100, column: 10, scope: !4552)
!4561 = !DILocation(line: 85, column: 25, scope: !4409, inlinedAt: !4560)
!4562 = !DILocation(line: 0, scope: !4417, inlinedAt: !4563)
!4563 = distinct !DILocation(line: 85, column: 10, scope: !4409, inlinedAt: !4560)
!4564 = !DILocation(line: 39, column: 8, scope: !4424, inlinedAt: !4563)
!4565 = !DILocation(line: 39, column: 7, scope: !4417, inlinedAt: !4563)
!4566 = !DILocation(line: 40, column: 5, scope: !4424, inlinedAt: !4563)
!4567 = !DILocation(line: 100, column: 3, scope: !4552)
!4568 = distinct !DISubprogram(name: "xinmalloc", scope: !886, file: !886, line: 104, type: !4569, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4571)
!4569 = !DISubroutineType(types: !4570)
!4570 = !{!354, !905, !905}
!4571 = !{!4572, !4573}
!4572 = !DILocalVariable(name: "n", arg: 1, scope: !4568, file: !886, line: 104, type: !905)
!4573 = !DILocalVariable(name: "s", arg: 2, scope: !4568, file: !886, line: 104, type: !905)
!4574 = !DILocation(line: 0, scope: !4568)
!4575 = !DILocation(line: 0, scope: !4530, inlinedAt: !4576)
!4576 = distinct !DILocation(line: 106, column: 10, scope: !4568)
!4577 = !DILocation(line: 0, scope: !4539, inlinedAt: !4578)
!4578 = distinct !DILocation(line: 91, column: 25, scope: !4530, inlinedAt: !4576)
!4579 = !DILocation(line: 101, column: 13, scope: !4539, inlinedAt: !4578)
!4580 = !DILocation(line: 0, scope: !4417, inlinedAt: !4581)
!4581 = distinct !DILocation(line: 91, column: 10, scope: !4530, inlinedAt: !4576)
!4582 = !DILocation(line: 39, column: 8, scope: !4424, inlinedAt: !4581)
!4583 = !DILocation(line: 39, column: 7, scope: !4417, inlinedAt: !4581)
!4584 = !DILocation(line: 40, column: 5, scope: !4424, inlinedAt: !4581)
!4585 = !DILocation(line: 106, column: 3, scope: !4568)
!4586 = distinct !DISubprogram(name: "x2realloc", scope: !886, file: !886, line: 116, type: !4587, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4589)
!4587 = !DISubroutineType(types: !4588)
!4588 = !{!354, !354, !892}
!4589 = !{!4590, !4591}
!4590 = !DILocalVariable(name: "p", arg: 1, scope: !4586, file: !886, line: 116, type: !354)
!4591 = !DILocalVariable(name: "ps", arg: 2, scope: !4586, file: !886, line: 116, type: !892)
!4592 = !DILocation(line: 0, scope: !4586)
!4593 = !DILocation(line: 0, scope: !889, inlinedAt: !4594)
!4594 = distinct !DILocation(line: 118, column: 10, scope: !4586)
!4595 = !DILocation(line: 178, column: 14, scope: !889, inlinedAt: !4594)
!4596 = !DILocation(line: 180, column: 9, scope: !4597, inlinedAt: !4594)
!4597 = distinct !DILexicalBlock(scope: !889, file: !886, line: 180, column: 7)
!4598 = !DILocation(line: 180, column: 7, scope: !889, inlinedAt: !4594)
!4599 = !DILocation(line: 182, column: 13, scope: !4600, inlinedAt: !4594)
!4600 = distinct !DILexicalBlock(scope: !4601, file: !886, line: 182, column: 11)
!4601 = distinct !DILexicalBlock(scope: !4597, file: !886, line: 181, column: 5)
!4602 = !DILocation(line: 182, column: 11, scope: !4601, inlinedAt: !4594)
!4603 = !DILocation(line: 197, column: 11, scope: !4604, inlinedAt: !4594)
!4604 = distinct !DILexicalBlock(scope: !4605, file: !886, line: 197, column: 11)
!4605 = distinct !DILexicalBlock(scope: !4597, file: !886, line: 195, column: 5)
!4606 = !DILocation(line: 197, column: 11, scope: !4605, inlinedAt: !4594)
!4607 = !DILocation(line: 198, column: 9, scope: !4604, inlinedAt: !4594)
!4608 = !DILocation(line: 0, scope: !4409, inlinedAt: !4609)
!4609 = distinct !DILocation(line: 201, column: 7, scope: !889, inlinedAt: !4594)
!4610 = !DILocation(line: 85, column: 25, scope: !4409, inlinedAt: !4609)
!4611 = !DILocation(line: 0, scope: !4417, inlinedAt: !4612)
!4612 = distinct !DILocation(line: 85, column: 10, scope: !4409, inlinedAt: !4609)
!4613 = !DILocation(line: 39, column: 8, scope: !4424, inlinedAt: !4612)
!4614 = !DILocation(line: 39, column: 7, scope: !4417, inlinedAt: !4612)
!4615 = !DILocation(line: 40, column: 5, scope: !4424, inlinedAt: !4612)
!4616 = !DILocation(line: 202, column: 7, scope: !889, inlinedAt: !4594)
!4617 = !DILocation(line: 118, column: 3, scope: !4586)
!4618 = !DILocation(line: 0, scope: !889)
!4619 = !DILocation(line: 178, column: 14, scope: !889)
!4620 = !DILocation(line: 180, column: 9, scope: !4597)
!4621 = !DILocation(line: 180, column: 7, scope: !889)
!4622 = !DILocation(line: 182, column: 13, scope: !4600)
!4623 = !DILocation(line: 182, column: 11, scope: !4601)
!4624 = !DILocation(line: 190, column: 30, scope: !4625)
!4625 = distinct !DILexicalBlock(scope: !4600, file: !886, line: 183, column: 9)
!4626 = !DILocation(line: 191, column: 16, scope: !4625)
!4627 = !DILocation(line: 191, column: 13, scope: !4625)
!4628 = !DILocation(line: 192, column: 9, scope: !4625)
!4629 = !DILocation(line: 197, column: 11, scope: !4604)
!4630 = !DILocation(line: 197, column: 11, scope: !4605)
!4631 = !DILocation(line: 198, column: 9, scope: !4604)
!4632 = !DILocation(line: 0, scope: !4409, inlinedAt: !4633)
!4633 = distinct !DILocation(line: 201, column: 7, scope: !889)
!4634 = !DILocation(line: 85, column: 25, scope: !4409, inlinedAt: !4633)
!4635 = !DILocation(line: 0, scope: !4417, inlinedAt: !4636)
!4636 = distinct !DILocation(line: 85, column: 10, scope: !4409, inlinedAt: !4633)
!4637 = !DILocation(line: 39, column: 8, scope: !4424, inlinedAt: !4636)
!4638 = !DILocation(line: 39, column: 7, scope: !4417, inlinedAt: !4636)
!4639 = !DILocation(line: 40, column: 5, scope: !4424, inlinedAt: !4636)
!4640 = !DILocation(line: 202, column: 7, scope: !889)
!4641 = !DILocation(line: 203, column: 3, scope: !889)
!4642 = !DILocation(line: 0, scope: !901)
!4643 = !DILocation(line: 230, column: 14, scope: !901)
!4644 = !DILocation(line: 238, column: 7, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !901, file: !886, line: 238, column: 7)
!4646 = !DILocation(line: 238, column: 7, scope: !901)
!4647 = !DILocation(line: 240, column: 9, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !901, file: !886, line: 240, column: 7)
!4649 = !DILocation(line: 240, column: 18, scope: !4648)
!4650 = !DILocation(line: 253, column: 8, scope: !901)
!4651 = !DILocation(line: 258, column: 27, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4653, file: !886, line: 257, column: 5)
!4653 = distinct !DILexicalBlock(scope: !901, file: !886, line: 256, column: 7)
!4654 = !DILocation(line: 259, column: 32, scope: !4652)
!4655 = !DILocation(line: 260, column: 5, scope: !4652)
!4656 = !DILocation(line: 262, column: 9, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !901, file: !886, line: 262, column: 7)
!4658 = !DILocation(line: 262, column: 7, scope: !901)
!4659 = !DILocation(line: 263, column: 9, scope: !4657)
!4660 = !DILocation(line: 263, column: 5, scope: !4657)
!4661 = !DILocation(line: 264, column: 9, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !901, file: !886, line: 264, column: 7)
!4663 = !DILocation(line: 264, column: 14, scope: !4662)
!4664 = !DILocation(line: 265, column: 7, scope: !4662)
!4665 = !DILocation(line: 265, column: 11, scope: !4662)
!4666 = !DILocation(line: 266, column: 11, scope: !4662)
!4667 = !DILocation(line: 267, column: 14, scope: !4662)
!4668 = !DILocation(line: 264, column: 7, scope: !901)
!4669 = !DILocation(line: 268, column: 5, scope: !4662)
!4670 = !DILocation(line: 0, scope: !4484, inlinedAt: !4671)
!4671 = distinct !DILocation(line: 269, column: 8, scope: !901)
!4672 = !DILocation(line: 0, scope: !4492, inlinedAt: !4673)
!4673 = distinct !DILocation(line: 70, column: 25, scope: !4484, inlinedAt: !4671)
!4674 = !DILocation(line: 2059, column: 24, scope: !4492, inlinedAt: !4673)
!4675 = !DILocation(line: 2059, column: 10, scope: !4492, inlinedAt: !4673)
!4676 = !DILocation(line: 0, scope: !4417, inlinedAt: !4677)
!4677 = distinct !DILocation(line: 70, column: 10, scope: !4484, inlinedAt: !4671)
!4678 = !DILocation(line: 39, column: 8, scope: !4424, inlinedAt: !4677)
!4679 = !DILocation(line: 39, column: 7, scope: !4417, inlinedAt: !4677)
!4680 = !DILocation(line: 40, column: 5, scope: !4424, inlinedAt: !4677)
!4681 = !DILocation(line: 270, column: 7, scope: !901)
!4682 = !DILocation(line: 271, column: 3, scope: !901)
!4683 = distinct !DISubprogram(name: "xzalloc", scope: !886, file: !886, line: 279, type: !4437, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4684)
!4684 = !{!4685}
!4685 = !DILocalVariable(name: "s", arg: 1, scope: !4683, file: !886, line: 279, type: !262)
!4686 = !DILocation(line: 0, scope: !4683)
!4687 = !DILocalVariable(name: "n", arg: 1, scope: !4688, file: !886, line: 294, type: !262)
!4688 = distinct !DISubprogram(name: "xcalloc", scope: !886, file: !886, line: 294, type: !4553, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4689)
!4689 = !{!4687, !4690}
!4690 = !DILocalVariable(name: "s", arg: 2, scope: !4688, file: !886, line: 294, type: !262)
!4691 = !DILocation(line: 0, scope: !4688, inlinedAt: !4692)
!4692 = distinct !DILocation(line: 281, column: 10, scope: !4683)
!4693 = !DILocation(line: 296, column: 25, scope: !4688, inlinedAt: !4692)
!4694 = !DILocation(line: 0, scope: !4417, inlinedAt: !4695)
!4695 = distinct !DILocation(line: 296, column: 10, scope: !4688, inlinedAt: !4692)
!4696 = !DILocation(line: 39, column: 8, scope: !4424, inlinedAt: !4695)
!4697 = !DILocation(line: 39, column: 7, scope: !4417, inlinedAt: !4695)
!4698 = !DILocation(line: 40, column: 5, scope: !4424, inlinedAt: !4695)
!4699 = !DILocation(line: 281, column: 3, scope: !4683)
!4700 = !DISubprogram(name: "calloc", scope: !1181, file: !1181, line: 543, type: !4553, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!4701 = !DILocation(line: 0, scope: !4688)
!4702 = !DILocation(line: 296, column: 25, scope: !4688)
!4703 = !DILocation(line: 0, scope: !4417, inlinedAt: !4704)
!4704 = distinct !DILocation(line: 296, column: 10, scope: !4688)
!4705 = !DILocation(line: 39, column: 8, scope: !4424, inlinedAt: !4704)
!4706 = !DILocation(line: 39, column: 7, scope: !4417, inlinedAt: !4704)
!4707 = !DILocation(line: 40, column: 5, scope: !4424, inlinedAt: !4704)
!4708 = !DILocation(line: 296, column: 3, scope: !4688)
!4709 = distinct !DISubprogram(name: "xizalloc", scope: !886, file: !886, line: 285, type: !4451, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4710)
!4710 = !{!4711}
!4711 = !DILocalVariable(name: "s", arg: 1, scope: !4709, file: !886, line: 285, type: !905)
!4712 = !DILocation(line: 0, scope: !4709)
!4713 = !DILocalVariable(name: "n", arg: 1, scope: !4714, file: !886, line: 300, type: !905)
!4714 = distinct !DISubprogram(name: "xicalloc", scope: !886, file: !886, line: 300, type: !4569, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4715)
!4715 = !{!4713, !4716}
!4716 = !DILocalVariable(name: "s", arg: 2, scope: !4714, file: !886, line: 300, type: !905)
!4717 = !DILocation(line: 0, scope: !4714, inlinedAt: !4718)
!4718 = distinct !DILocation(line: 287, column: 10, scope: !4709)
!4719 = !DILocalVariable(name: "n", arg: 1, scope: !4720, file: !4458, line: 77, type: !905)
!4720 = distinct !DISubprogram(name: "icalloc", scope: !4458, file: !4458, line: 77, type: !4569, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4721)
!4721 = !{!4719, !4722}
!4722 = !DILocalVariable(name: "s", arg: 2, scope: !4720, file: !4458, line: 77, type: !905)
!4723 = !DILocation(line: 0, scope: !4720, inlinedAt: !4724)
!4724 = distinct !DILocation(line: 302, column: 25, scope: !4714, inlinedAt: !4718)
!4725 = !DILocation(line: 91, column: 10, scope: !4720, inlinedAt: !4724)
!4726 = !DILocation(line: 0, scope: !4417, inlinedAt: !4727)
!4727 = distinct !DILocation(line: 302, column: 10, scope: !4714, inlinedAt: !4718)
!4728 = !DILocation(line: 39, column: 8, scope: !4424, inlinedAt: !4727)
!4729 = !DILocation(line: 39, column: 7, scope: !4417, inlinedAt: !4727)
!4730 = !DILocation(line: 40, column: 5, scope: !4424, inlinedAt: !4727)
!4731 = !DILocation(line: 287, column: 3, scope: !4709)
!4732 = !DILocation(line: 0, scope: !4714)
!4733 = !DILocation(line: 0, scope: !4720, inlinedAt: !4734)
!4734 = distinct !DILocation(line: 302, column: 25, scope: !4714)
!4735 = !DILocation(line: 91, column: 10, scope: !4720, inlinedAt: !4734)
!4736 = !DILocation(line: 0, scope: !4417, inlinedAt: !4737)
!4737 = distinct !DILocation(line: 302, column: 10, scope: !4714)
!4738 = !DILocation(line: 39, column: 8, scope: !4424, inlinedAt: !4737)
!4739 = !DILocation(line: 39, column: 7, scope: !4417, inlinedAt: !4737)
!4740 = !DILocation(line: 40, column: 5, scope: !4424, inlinedAt: !4737)
!4741 = !DILocation(line: 302, column: 3, scope: !4714)
!4742 = distinct !DISubprogram(name: "xmemdup", scope: !886, file: !886, line: 310, type: !4743, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4745)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!354, !1205, !262}
!4745 = !{!4746, !4747}
!4746 = !DILocalVariable(name: "p", arg: 1, scope: !4742, file: !886, line: 310, type: !1205)
!4747 = !DILocalVariable(name: "s", arg: 2, scope: !4742, file: !886, line: 310, type: !262)
!4748 = !DILocation(line: 0, scope: !4742)
!4749 = !DILocation(line: 0, scope: !4436, inlinedAt: !4750)
!4750 = distinct !DILocation(line: 312, column: 18, scope: !4742)
!4751 = !DILocation(line: 49, column: 25, scope: !4436, inlinedAt: !4750)
!4752 = !DILocation(line: 0, scope: !4417, inlinedAt: !4753)
!4753 = distinct !DILocation(line: 49, column: 10, scope: !4436, inlinedAt: !4750)
!4754 = !DILocation(line: 39, column: 8, scope: !4424, inlinedAt: !4753)
!4755 = !DILocation(line: 39, column: 7, scope: !4417, inlinedAt: !4753)
!4756 = !DILocation(line: 40, column: 5, scope: !4424, inlinedAt: !4753)
!4757 = !DILocalVariable(name: "__dest", arg: 1, scope: !4758, file: !2967, line: 26, type: !4761)
!4758 = distinct !DISubprogram(name: "memcpy", scope: !2967, file: !2967, line: 26, type: !4759, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4762)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!354, !4761, !1204, !262}
!4761 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !354)
!4762 = !{!4757, !4763, !4764}
!4763 = !DILocalVariable(name: "__src", arg: 2, scope: !4758, file: !2967, line: 26, type: !1204)
!4764 = !DILocalVariable(name: "__len", arg: 3, scope: !4758, file: !2967, line: 26, type: !262)
!4765 = !DILocation(line: 0, scope: !4758, inlinedAt: !4766)
!4766 = distinct !DILocation(line: 312, column: 10, scope: !4742)
!4767 = !DILocation(line: 29, column: 10, scope: !4758, inlinedAt: !4766)
!4768 = !DILocation(line: 312, column: 3, scope: !4742)
!4769 = distinct !DISubprogram(name: "ximemdup", scope: !886, file: !886, line: 316, type: !4770, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4772)
!4770 = !DISubroutineType(types: !4771)
!4771 = !{!354, !1205, !905}
!4772 = !{!4773, !4774}
!4773 = !DILocalVariable(name: "p", arg: 1, scope: !4769, file: !886, line: 316, type: !1205)
!4774 = !DILocalVariable(name: "s", arg: 2, scope: !4769, file: !886, line: 316, type: !905)
!4775 = !DILocation(line: 0, scope: !4769)
!4776 = !DILocation(line: 0, scope: !4450, inlinedAt: !4777)
!4777 = distinct !DILocation(line: 318, column: 18, scope: !4769)
!4778 = !DILocation(line: 0, scope: !4457, inlinedAt: !4779)
!4779 = distinct !DILocation(line: 55, column: 25, scope: !4450, inlinedAt: !4777)
!4780 = !DILocation(line: 57, column: 26, scope: !4457, inlinedAt: !4779)
!4781 = !DILocation(line: 0, scope: !4417, inlinedAt: !4782)
!4782 = distinct !DILocation(line: 55, column: 10, scope: !4450, inlinedAt: !4777)
!4783 = !DILocation(line: 39, column: 8, scope: !4424, inlinedAt: !4782)
!4784 = !DILocation(line: 39, column: 7, scope: !4417, inlinedAt: !4782)
!4785 = !DILocation(line: 40, column: 5, scope: !4424, inlinedAt: !4782)
!4786 = !DILocation(line: 0, scope: !4758, inlinedAt: !4787)
!4787 = distinct !DILocation(line: 318, column: 10, scope: !4769)
!4788 = !DILocation(line: 29, column: 10, scope: !4758, inlinedAt: !4787)
!4789 = !DILocation(line: 318, column: 3, scope: !4769)
!4790 = distinct !DISubprogram(name: "ximemdup0", scope: !886, file: !886, line: 325, type: !4791, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4793)
!4791 = !DISubroutineType(types: !4792)
!4792 = !{!317, !1205, !905}
!4793 = !{!4794, !4795, !4796}
!4794 = !DILocalVariable(name: "p", arg: 1, scope: !4790, file: !886, line: 325, type: !1205)
!4795 = !DILocalVariable(name: "s", arg: 2, scope: !4790, file: !886, line: 325, type: !905)
!4796 = !DILocalVariable(name: "result", scope: !4790, file: !886, line: 327, type: !317)
!4797 = !DILocation(line: 0, scope: !4790)
!4798 = !DILocation(line: 327, column: 30, scope: !4790)
!4799 = !DILocation(line: 0, scope: !4450, inlinedAt: !4800)
!4800 = distinct !DILocation(line: 327, column: 18, scope: !4790)
!4801 = !DILocation(line: 0, scope: !4457, inlinedAt: !4802)
!4802 = distinct !DILocation(line: 55, column: 25, scope: !4450, inlinedAt: !4800)
!4803 = !DILocation(line: 57, column: 26, scope: !4457, inlinedAt: !4802)
!4804 = !DILocation(line: 0, scope: !4417, inlinedAt: !4805)
!4805 = distinct !DILocation(line: 55, column: 10, scope: !4450, inlinedAt: !4800)
!4806 = !DILocation(line: 39, column: 8, scope: !4424, inlinedAt: !4805)
!4807 = !DILocation(line: 39, column: 7, scope: !4417, inlinedAt: !4805)
!4808 = !DILocation(line: 40, column: 5, scope: !4424, inlinedAt: !4805)
!4809 = !DILocation(line: 328, column: 3, scope: !4790)
!4810 = !DILocation(line: 328, column: 13, scope: !4790)
!4811 = !DILocation(line: 0, scope: !4758, inlinedAt: !4812)
!4812 = distinct !DILocation(line: 329, column: 10, scope: !4790)
!4813 = !DILocation(line: 29, column: 10, scope: !4758, inlinedAt: !4812)
!4814 = !DILocation(line: 329, column: 3, scope: !4790)
!4815 = distinct !DISubprogram(name: "xstrdup", scope: !886, file: !886, line: 335, type: !1183, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !885, retainedNodes: !4816)
!4816 = !{!4817}
!4817 = !DILocalVariable(name: "string", arg: 1, scope: !4815, file: !886, line: 335, type: !265)
!4818 = !DILocation(line: 0, scope: !4815)
!4819 = !DILocation(line: 337, column: 27, scope: !4815)
!4820 = !DILocation(line: 337, column: 43, scope: !4815)
!4821 = !DILocation(line: 0, scope: !4742, inlinedAt: !4822)
!4822 = distinct !DILocation(line: 337, column: 10, scope: !4815)
!4823 = !DILocation(line: 0, scope: !4436, inlinedAt: !4824)
!4824 = distinct !DILocation(line: 312, column: 18, scope: !4742, inlinedAt: !4822)
!4825 = !DILocation(line: 49, column: 25, scope: !4436, inlinedAt: !4824)
!4826 = !DILocation(line: 0, scope: !4417, inlinedAt: !4827)
!4827 = distinct !DILocation(line: 49, column: 10, scope: !4436, inlinedAt: !4824)
!4828 = !DILocation(line: 39, column: 8, scope: !4424, inlinedAt: !4827)
!4829 = !DILocation(line: 39, column: 7, scope: !4417, inlinedAt: !4827)
!4830 = !DILocation(line: 40, column: 5, scope: !4424, inlinedAt: !4827)
!4831 = !DILocation(line: 0, scope: !4758, inlinedAt: !4832)
!4832 = distinct !DILocation(line: 312, column: 10, scope: !4742, inlinedAt: !4822)
!4833 = !DILocation(line: 29, column: 10, scope: !4758, inlinedAt: !4832)
!4834 = !DILocation(line: 337, column: 3, scope: !4815)
!4835 = distinct !DISubprogram(name: "xalloc_die", scope: !840, file: !840, line: 32, type: !630, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !919, retainedNodes: !4836)
!4836 = !{!4837}
!4837 = !DILocalVariable(name: "__errstatus", scope: !4838, file: !840, line: 34, type: !4839)
!4838 = distinct !DILexicalBlock(scope: !4835, file: !840, line: 34, column: 3)
!4839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!4840 = !DILocation(line: 34, column: 3, scope: !4838)
!4841 = !DILocation(line: 0, scope: !4838)
!4842 = !DILocation(line: 40, column: 3, scope: !4835)
!4843 = distinct !DISubprogram(name: "close_stream", scope: !922, file: !922, line: 55, type: !4844, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4880)
!4844 = !DISubroutineType(types: !4845)
!4845 = !{!260, !4846}
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !311, line: 7, baseType: !4848)
!4848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !313, line: 49, size: 1728, elements: !4849)
!4849 = !{!4850, !4851, !4852, !4853, !4854, !4855, !4856, !4857, !4858, !4859, !4860, !4861, !4862, !4863, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4872, !4873, !4874, !4875, !4876, !4877, !4878, !4879}
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4848, file: !313, line: 51, baseType: !260, size: 32)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4848, file: !313, line: 54, baseType: !317, size: 64, offset: 64)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4848, file: !313, line: 55, baseType: !317, size: 64, offset: 128)
!4853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4848, file: !313, line: 56, baseType: !317, size: 64, offset: 192)
!4854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4848, file: !313, line: 57, baseType: !317, size: 64, offset: 256)
!4855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4848, file: !313, line: 58, baseType: !317, size: 64, offset: 320)
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4848, file: !313, line: 59, baseType: !317, size: 64, offset: 384)
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4848, file: !313, line: 60, baseType: !317, size: 64, offset: 448)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4848, file: !313, line: 61, baseType: !317, size: 64, offset: 512)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4848, file: !313, line: 64, baseType: !317, size: 64, offset: 576)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4848, file: !313, line: 65, baseType: !317, size: 64, offset: 640)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4848, file: !313, line: 66, baseType: !317, size: 64, offset: 704)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4848, file: !313, line: 68, baseType: !329, size: 64, offset: 768)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4848, file: !313, line: 70, baseType: !4864, size: 64, offset: 832)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4848, size: 64)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4848, file: !313, line: 72, baseType: !260, size: 32, offset: 896)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4848, file: !313, line: 73, baseType: !260, size: 32, offset: 928)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4848, file: !313, line: 74, baseType: !336, size: 64, offset: 960)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4848, file: !313, line: 77, baseType: !261, size: 16, offset: 1024)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4848, file: !313, line: 78, baseType: !339, size: 8, offset: 1040)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4848, file: !313, line: 79, baseType: !206, size: 8, offset: 1048)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4848, file: !313, line: 81, baseType: !342, size: 64, offset: 1088)
!4872 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4848, file: !313, line: 89, baseType: !345, size: 64, offset: 1152)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4848, file: !313, line: 91, baseType: !347, size: 64, offset: 1216)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4848, file: !313, line: 92, baseType: !350, size: 64, offset: 1280)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4848, file: !313, line: 93, baseType: !4864, size: 64, offset: 1344)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4848, file: !313, line: 94, baseType: !354, size: 64, offset: 1408)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4848, file: !313, line: 95, baseType: !262, size: 64, offset: 1472)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4848, file: !313, line: 96, baseType: !260, size: 32, offset: 1536)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4848, file: !313, line: 98, baseType: !358, size: 160, offset: 1568)
!4880 = !{!4881, !4882, !4884, !4885}
!4881 = !DILocalVariable(name: "stream", arg: 1, scope: !4843, file: !922, line: 55, type: !4846)
!4882 = !DILocalVariable(name: "some_pending", scope: !4843, file: !922, line: 57, type: !4883)
!4883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!4884 = !DILocalVariable(name: "prev_fail", scope: !4843, file: !922, line: 58, type: !4883)
!4885 = !DILocalVariable(name: "fclose_fail", scope: !4843, file: !922, line: 59, type: !4883)
!4886 = !DILocation(line: 0, scope: !4843)
!4887 = !DILocation(line: 57, column: 30, scope: !4843)
!4888 = !DILocalVariable(name: "__stream", arg: 1, scope: !4889, file: !2578, line: 135, type: !4846)
!4889 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2578, file: !2578, line: 135, type: !4844, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !921, retainedNodes: !4890)
!4890 = !{!4888}
!4891 = !DILocation(line: 0, scope: !4889, inlinedAt: !4892)
!4892 = distinct !DILocation(line: 58, column: 27, scope: !4843)
!4893 = !DILocation(line: 137, column: 10, scope: !4889, inlinedAt: !4892)
!4894 = !{!2587, !1058, i64 0}
!4895 = !DILocation(line: 58, column: 43, scope: !4843)
!4896 = !DILocation(line: 59, column: 29, scope: !4843)
!4897 = !DILocation(line: 59, column: 45, scope: !4843)
!4898 = !DILocation(line: 69, column: 17, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4843, file: !922, line: 69, column: 7)
!4900 = !DILocation(line: 57, column: 50, scope: !4843)
!4901 = !DILocation(line: 69, column: 33, scope: !4899)
!4902 = !DILocation(line: 69, column: 53, scope: !4899)
!4903 = !DILocation(line: 69, column: 59, scope: !4899)
!4904 = !DILocation(line: 69, column: 7, scope: !4843)
!4905 = !DILocation(line: 71, column: 11, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4899, file: !922, line: 70, column: 5)
!4907 = !DILocation(line: 72, column: 9, scope: !4908)
!4908 = distinct !DILexicalBlock(scope: !4906, file: !922, line: 71, column: 11)
!4909 = !DILocation(line: 72, column: 15, scope: !4908)
!4910 = !DILocation(line: 77, column: 1, scope: !4843)
!4911 = !DISubprogram(name: "__fpending", scope: !4912, file: !4912, line: 75, type: !4913, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!4912 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4913 = !DISubroutineType(types: !4914)
!4914 = !{!262, !4846}
!4915 = distinct !DISubprogram(name: "rpl_fclose", scope: !924, file: !924, line: 58, type: !4916, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !923, retainedNodes: !4952)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{!260, !4918}
!4918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4919, size: 64)
!4919 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !311, line: 7, baseType: !4920)
!4920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !313, line: 49, size: 1728, elements: !4921)
!4921 = !{!4922, !4923, !4924, !4925, !4926, !4927, !4928, !4929, !4930, !4931, !4932, !4933, !4934, !4935, !4937, !4938, !4939, !4940, !4941, !4942, !4943, !4944, !4945, !4946, !4947, !4948, !4949, !4950, !4951}
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4920, file: !313, line: 51, baseType: !260, size: 32)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4920, file: !313, line: 54, baseType: !317, size: 64, offset: 64)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4920, file: !313, line: 55, baseType: !317, size: 64, offset: 128)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4920, file: !313, line: 56, baseType: !317, size: 64, offset: 192)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4920, file: !313, line: 57, baseType: !317, size: 64, offset: 256)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4920, file: !313, line: 58, baseType: !317, size: 64, offset: 320)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4920, file: !313, line: 59, baseType: !317, size: 64, offset: 384)
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4920, file: !313, line: 60, baseType: !317, size: 64, offset: 448)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4920, file: !313, line: 61, baseType: !317, size: 64, offset: 512)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4920, file: !313, line: 64, baseType: !317, size: 64, offset: 576)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4920, file: !313, line: 65, baseType: !317, size: 64, offset: 640)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4920, file: !313, line: 66, baseType: !317, size: 64, offset: 704)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4920, file: !313, line: 68, baseType: !329, size: 64, offset: 768)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4920, file: !313, line: 70, baseType: !4936, size: 64, offset: 832)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4920, size: 64)
!4937 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4920, file: !313, line: 72, baseType: !260, size: 32, offset: 896)
!4938 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4920, file: !313, line: 73, baseType: !260, size: 32, offset: 928)
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4920, file: !313, line: 74, baseType: !336, size: 64, offset: 960)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4920, file: !313, line: 77, baseType: !261, size: 16, offset: 1024)
!4941 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4920, file: !313, line: 78, baseType: !339, size: 8, offset: 1040)
!4942 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4920, file: !313, line: 79, baseType: !206, size: 8, offset: 1048)
!4943 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4920, file: !313, line: 81, baseType: !342, size: 64, offset: 1088)
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4920, file: !313, line: 89, baseType: !345, size: 64, offset: 1152)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4920, file: !313, line: 91, baseType: !347, size: 64, offset: 1216)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4920, file: !313, line: 92, baseType: !350, size: 64, offset: 1280)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4920, file: !313, line: 93, baseType: !4936, size: 64, offset: 1344)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4920, file: !313, line: 94, baseType: !354, size: 64, offset: 1408)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4920, file: !313, line: 95, baseType: !262, size: 64, offset: 1472)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4920, file: !313, line: 96, baseType: !260, size: 32, offset: 1536)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4920, file: !313, line: 98, baseType: !358, size: 160, offset: 1568)
!4952 = !{!4953, !4954, !4955, !4956}
!4953 = !DILocalVariable(name: "fp", arg: 1, scope: !4915, file: !924, line: 58, type: !4918)
!4954 = !DILocalVariable(name: "saved_errno", scope: !4915, file: !924, line: 60, type: !260)
!4955 = !DILocalVariable(name: "fd", scope: !4915, file: !924, line: 63, type: !260)
!4956 = !DILocalVariable(name: "result", scope: !4915, file: !924, line: 74, type: !260)
!4957 = !DILocation(line: 0, scope: !4915)
!4958 = !DILocation(line: 63, column: 12, scope: !4915)
!4959 = !DILocation(line: 64, column: 10, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4915, file: !924, line: 64, column: 7)
!4961 = !DILocation(line: 64, column: 7, scope: !4915)
!4962 = !DILocation(line: 65, column: 12, scope: !4960)
!4963 = !DILocation(line: 65, column: 5, scope: !4960)
!4964 = !DILocation(line: 70, column: 9, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4915, file: !924, line: 70, column: 7)
!4966 = !DILocation(line: 70, column: 23, scope: !4965)
!4967 = !DILocation(line: 70, column: 33, scope: !4965)
!4968 = !DILocation(line: 70, column: 26, scope: !4965)
!4969 = !DILocation(line: 70, column: 59, scope: !4965)
!4970 = !DILocation(line: 71, column: 7, scope: !4965)
!4971 = !DILocation(line: 71, column: 10, scope: !4965)
!4972 = !DILocation(line: 70, column: 7, scope: !4915)
!4973 = !DILocation(line: 100, column: 12, scope: !4915)
!4974 = !DILocation(line: 105, column: 7, scope: !4915)
!4975 = !DILocation(line: 72, column: 19, scope: !4965)
!4976 = !DILocation(line: 105, column: 19, scope: !4977)
!4977 = distinct !DILexicalBlock(scope: !4915, file: !924, line: 105, column: 7)
!4978 = !DILocation(line: 107, column: 13, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4977, file: !924, line: 106, column: 5)
!4980 = !DILocation(line: 109, column: 5, scope: !4979)
!4981 = !DILocation(line: 112, column: 1, scope: !4915)
!4982 = !DISubprogram(name: "fileno", scope: !591, file: !591, line: 809, type: !4916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!4983 = !DISubprogram(name: "fclose", scope: !591, file: !591, line: 178, type: !4916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!4984 = !DISubprogram(name: "__freading", scope: !4912, file: !4912, line: 51, type: !4916, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!4985 = !DISubprogram(name: "lseek", scope: !2387, file: !2387, line: 339, type: !4986, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!4986 = !DISubroutineType(types: !4987)
!4987 = !{!336, !260, !336, !260}
!4988 = distinct !DISubprogram(name: "rpl_fflush", scope: !926, file: !926, line: 130, type: !4989, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !925, retainedNodes: !5025)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{!260, !4991}
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4992, size: 64)
!4992 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !311, line: 7, baseType: !4993)
!4993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !313, line: 49, size: 1728, elements: !4994)
!4994 = !{!4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5010, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024}
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4993, file: !313, line: 51, baseType: !260, size: 32)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4993, file: !313, line: 54, baseType: !317, size: 64, offset: 64)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4993, file: !313, line: 55, baseType: !317, size: 64, offset: 128)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4993, file: !313, line: 56, baseType: !317, size: 64, offset: 192)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4993, file: !313, line: 57, baseType: !317, size: 64, offset: 256)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4993, file: !313, line: 58, baseType: !317, size: 64, offset: 320)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4993, file: !313, line: 59, baseType: !317, size: 64, offset: 384)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4993, file: !313, line: 60, baseType: !317, size: 64, offset: 448)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4993, file: !313, line: 61, baseType: !317, size: 64, offset: 512)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4993, file: !313, line: 64, baseType: !317, size: 64, offset: 576)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4993, file: !313, line: 65, baseType: !317, size: 64, offset: 640)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4993, file: !313, line: 66, baseType: !317, size: 64, offset: 704)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4993, file: !313, line: 68, baseType: !329, size: 64, offset: 768)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4993, file: !313, line: 70, baseType: !5009, size: 64, offset: 832)
!5009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!5010 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4993, file: !313, line: 72, baseType: !260, size: 32, offset: 896)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4993, file: !313, line: 73, baseType: !260, size: 32, offset: 928)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4993, file: !313, line: 74, baseType: !336, size: 64, offset: 960)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4993, file: !313, line: 77, baseType: !261, size: 16, offset: 1024)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4993, file: !313, line: 78, baseType: !339, size: 8, offset: 1040)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4993, file: !313, line: 79, baseType: !206, size: 8, offset: 1048)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4993, file: !313, line: 81, baseType: !342, size: 64, offset: 1088)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4993, file: !313, line: 89, baseType: !345, size: 64, offset: 1152)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4993, file: !313, line: 91, baseType: !347, size: 64, offset: 1216)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4993, file: !313, line: 92, baseType: !350, size: 64, offset: 1280)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4993, file: !313, line: 93, baseType: !5009, size: 64, offset: 1344)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4993, file: !313, line: 94, baseType: !354, size: 64, offset: 1408)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4993, file: !313, line: 95, baseType: !262, size: 64, offset: 1472)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4993, file: !313, line: 96, baseType: !260, size: 32, offset: 1536)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4993, file: !313, line: 98, baseType: !358, size: 160, offset: 1568)
!5025 = !{!5026}
!5026 = !DILocalVariable(name: "stream", arg: 1, scope: !4988, file: !926, line: 130, type: !4991)
!5027 = !DILocation(line: 0, scope: !4988)
!5028 = !DILocation(line: 151, column: 14, scope: !5029)
!5029 = distinct !DILexicalBlock(scope: !4988, file: !926, line: 151, column: 7)
!5030 = !DILocation(line: 151, column: 22, scope: !5029)
!5031 = !DILocation(line: 151, column: 27, scope: !5029)
!5032 = !DILocation(line: 151, column: 7, scope: !4988)
!5033 = !DILocation(line: 152, column: 12, scope: !5029)
!5034 = !DILocation(line: 152, column: 5, scope: !5029)
!5035 = !DILocalVariable(name: "fp", arg: 1, scope: !5036, file: !926, line: 42, type: !4991)
!5036 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !926, file: !926, line: 42, type: !5037, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !925, retainedNodes: !5039)
!5037 = !DISubroutineType(types: !5038)
!5038 = !{null, !4991}
!5039 = !{!5035}
!5040 = !DILocation(line: 0, scope: !5036, inlinedAt: !5041)
!5041 = distinct !DILocation(line: 157, column: 3, scope: !4988)
!5042 = !DILocation(line: 44, column: 12, scope: !5043, inlinedAt: !5041)
!5043 = distinct !DILexicalBlock(scope: !5036, file: !926, line: 44, column: 7)
!5044 = !DILocation(line: 44, column: 19, scope: !5043, inlinedAt: !5041)
!5045 = !DILocation(line: 44, column: 7, scope: !5036, inlinedAt: !5041)
!5046 = !DILocation(line: 46, column: 5, scope: !5043, inlinedAt: !5041)
!5047 = !DILocation(line: 159, column: 10, scope: !4988)
!5048 = !DILocation(line: 159, column: 3, scope: !4988)
!5049 = !DILocation(line: 236, column: 1, scope: !4988)
!5050 = !DISubprogram(name: "fflush", scope: !591, file: !591, line: 230, type: !4989, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!5051 = distinct !DISubprogram(name: "rpl_fseeko", scope: !928, file: !928, line: 28, type: !5052, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !927, retainedNodes: !5089)
!5052 = !DISubroutineType(types: !5053)
!5053 = !{!260, !5054, !5088, !260}
!5054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5055, size: 64)
!5055 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !311, line: 7, baseType: !5056)
!5056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !313, line: 49, size: 1728, elements: !5057)
!5057 = !{!5058, !5059, !5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087}
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5056, file: !313, line: 51, baseType: !260, size: 32)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5056, file: !313, line: 54, baseType: !317, size: 64, offset: 64)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5056, file: !313, line: 55, baseType: !317, size: 64, offset: 128)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5056, file: !313, line: 56, baseType: !317, size: 64, offset: 192)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5056, file: !313, line: 57, baseType: !317, size: 64, offset: 256)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5056, file: !313, line: 58, baseType: !317, size: 64, offset: 320)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5056, file: !313, line: 59, baseType: !317, size: 64, offset: 384)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5056, file: !313, line: 60, baseType: !317, size: 64, offset: 448)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5056, file: !313, line: 61, baseType: !317, size: 64, offset: 512)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5056, file: !313, line: 64, baseType: !317, size: 64, offset: 576)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5056, file: !313, line: 65, baseType: !317, size: 64, offset: 640)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5056, file: !313, line: 66, baseType: !317, size: 64, offset: 704)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5056, file: !313, line: 68, baseType: !329, size: 64, offset: 768)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5056, file: !313, line: 70, baseType: !5072, size: 64, offset: 832)
!5072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5056, file: !313, line: 72, baseType: !260, size: 32, offset: 896)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5056, file: !313, line: 73, baseType: !260, size: 32, offset: 928)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5056, file: !313, line: 74, baseType: !336, size: 64, offset: 960)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5056, file: !313, line: 77, baseType: !261, size: 16, offset: 1024)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5056, file: !313, line: 78, baseType: !339, size: 8, offset: 1040)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5056, file: !313, line: 79, baseType: !206, size: 8, offset: 1048)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5056, file: !313, line: 81, baseType: !342, size: 64, offset: 1088)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5056, file: !313, line: 89, baseType: !345, size: 64, offset: 1152)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5056, file: !313, line: 91, baseType: !347, size: 64, offset: 1216)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5056, file: !313, line: 92, baseType: !350, size: 64, offset: 1280)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5056, file: !313, line: 93, baseType: !5072, size: 64, offset: 1344)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5056, file: !313, line: 94, baseType: !354, size: 64, offset: 1408)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5056, file: !313, line: 95, baseType: !262, size: 64, offset: 1472)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5056, file: !313, line: 96, baseType: !260, size: 32, offset: 1536)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5056, file: !313, line: 98, baseType: !358, size: 160, offset: 1568)
!5088 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !591, line: 63, baseType: !336)
!5089 = !{!5090, !5091, !5092, !5093}
!5090 = !DILocalVariable(name: "fp", arg: 1, scope: !5051, file: !928, line: 28, type: !5054)
!5091 = !DILocalVariable(name: "offset", arg: 2, scope: !5051, file: !928, line: 28, type: !5088)
!5092 = !DILocalVariable(name: "whence", arg: 3, scope: !5051, file: !928, line: 28, type: !260)
!5093 = !DILocalVariable(name: "pos", scope: !5094, file: !928, line: 123, type: !5088)
!5094 = distinct !DILexicalBlock(scope: !5095, file: !928, line: 119, column: 5)
!5095 = distinct !DILexicalBlock(scope: !5051, file: !928, line: 55, column: 7)
!5096 = !DILocation(line: 0, scope: !5051)
!5097 = !DILocation(line: 55, column: 12, scope: !5095)
!5098 = !{!2587, !958, i64 16}
!5099 = !DILocation(line: 55, column: 33, scope: !5095)
!5100 = !{!2587, !958, i64 8}
!5101 = !DILocation(line: 55, column: 25, scope: !5095)
!5102 = !DILocation(line: 56, column: 7, scope: !5095)
!5103 = !DILocation(line: 56, column: 15, scope: !5095)
!5104 = !DILocation(line: 56, column: 37, scope: !5095)
!5105 = !{!2587, !958, i64 32}
!5106 = !DILocation(line: 56, column: 29, scope: !5095)
!5107 = !DILocation(line: 57, column: 7, scope: !5095)
!5108 = !DILocation(line: 57, column: 15, scope: !5095)
!5109 = !{!2587, !958, i64 72}
!5110 = !DILocation(line: 57, column: 29, scope: !5095)
!5111 = !DILocation(line: 55, column: 7, scope: !5051)
!5112 = !DILocation(line: 123, column: 26, scope: !5094)
!5113 = !DILocation(line: 123, column: 19, scope: !5094)
!5114 = !DILocation(line: 0, scope: !5094)
!5115 = !DILocation(line: 124, column: 15, scope: !5116)
!5116 = distinct !DILexicalBlock(scope: !5094, file: !928, line: 124, column: 11)
!5117 = !DILocation(line: 124, column: 11, scope: !5094)
!5118 = !DILocation(line: 135, column: 19, scope: !5094)
!5119 = !DILocation(line: 136, column: 12, scope: !5094)
!5120 = !DILocation(line: 136, column: 20, scope: !5094)
!5121 = !{!2587, !1591, i64 144}
!5122 = !DILocation(line: 167, column: 7, scope: !5094)
!5123 = !DILocation(line: 169, column: 10, scope: !5051)
!5124 = !DILocation(line: 169, column: 3, scope: !5051)
!5125 = !DILocation(line: 170, column: 1, scope: !5051)
!5126 = !DISubprogram(name: "fseeko", scope: !591, file: !591, line: 736, type: !5127, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{!260, !5054, !336, !260}
!5129 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !847, file: !847, line: 100, type: !5130, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !850, retainedNodes: !5134)
!5130 = !DISubroutineType(types: !5131)
!5131 = !{!262, !5132, !265, !262, !5133}
!5132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!5133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!5134 = !{!5135, !5136, !5137, !5138, !5139}
!5135 = !DILocalVariable(name: "pwc", arg: 1, scope: !5129, file: !847, line: 100, type: !5132)
!5136 = !DILocalVariable(name: "s", arg: 2, scope: !5129, file: !847, line: 100, type: !265)
!5137 = !DILocalVariable(name: "n", arg: 3, scope: !5129, file: !847, line: 100, type: !262)
!5138 = !DILocalVariable(name: "ps", arg: 4, scope: !5129, file: !847, line: 100, type: !5133)
!5139 = !DILocalVariable(name: "ret", scope: !5129, file: !847, line: 130, type: !262)
!5140 = !DILocation(line: 0, scope: !5129)
!5141 = !DILocation(line: 105, column: 9, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5129, file: !847, line: 105, column: 7)
!5143 = !DILocation(line: 105, column: 7, scope: !5129)
!5144 = !DILocation(line: 117, column: 10, scope: !5145)
!5145 = distinct !DILexicalBlock(scope: !5129, file: !847, line: 117, column: 7)
!5146 = !DILocation(line: 117, column: 7, scope: !5129)
!5147 = !DILocation(line: 130, column: 16, scope: !5129)
!5148 = !DILocation(line: 135, column: 11, scope: !5149)
!5149 = distinct !DILexicalBlock(scope: !5129, file: !847, line: 135, column: 7)
!5150 = !DILocation(line: 135, column: 25, scope: !5149)
!5151 = !DILocation(line: 135, column: 30, scope: !5149)
!5152 = !DILocation(line: 135, column: 7, scope: !5129)
!5153 = !DILocalVariable(name: "ps", arg: 1, scope: !5154, file: !2958, line: 1135, type: !5133)
!5154 = distinct !DISubprogram(name: "mbszero", scope: !2958, file: !2958, line: 1135, type: !5155, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !850, retainedNodes: !5157)
!5155 = !DISubroutineType(types: !5156)
!5156 = !{null, !5133}
!5157 = !{!5153}
!5158 = !DILocation(line: 0, scope: !5154, inlinedAt: !5159)
!5159 = distinct !DILocation(line: 137, column: 5, scope: !5149)
!5160 = !DILocalVariable(name: "__dest", arg: 1, scope: !5161, file: !2967, line: 57, type: !354)
!5161 = distinct !DISubprogram(name: "memset", scope: !2967, file: !2967, line: 57, type: !2968, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !850, retainedNodes: !5162)
!5162 = !{!5160, !5163, !5164}
!5163 = !DILocalVariable(name: "__ch", arg: 2, scope: !5161, file: !2967, line: 57, type: !260)
!5164 = !DILocalVariable(name: "__len", arg: 3, scope: !5161, file: !2967, line: 57, type: !262)
!5165 = !DILocation(line: 0, scope: !5161, inlinedAt: !5166)
!5166 = distinct !DILocation(line: 1137, column: 3, scope: !5154, inlinedAt: !5159)
!5167 = !DILocation(line: 59, column: 10, scope: !5161, inlinedAt: !5166)
!5168 = !DILocation(line: 137, column: 5, scope: !5149)
!5169 = !DILocation(line: 138, column: 11, scope: !5170)
!5170 = distinct !DILexicalBlock(scope: !5129, file: !847, line: 138, column: 7)
!5171 = !DILocation(line: 138, column: 7, scope: !5129)
!5172 = !DILocation(line: 139, column: 5, scope: !5170)
!5173 = !DILocation(line: 143, column: 26, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5129, file: !847, line: 143, column: 7)
!5175 = !DILocation(line: 143, column: 41, scope: !5174)
!5176 = !DILocation(line: 143, column: 7, scope: !5129)
!5177 = !DILocation(line: 145, column: 15, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5179, file: !847, line: 145, column: 11)
!5179 = distinct !DILexicalBlock(scope: !5174, file: !847, line: 144, column: 5)
!5180 = !DILocation(line: 145, column: 11, scope: !5179)
!5181 = !DILocation(line: 146, column: 32, scope: !5178)
!5182 = !DILocation(line: 146, column: 16, scope: !5178)
!5183 = !DILocation(line: 146, column: 14, scope: !5178)
!5184 = !DILocation(line: 146, column: 9, scope: !5178)
!5185 = !DILocation(line: 286, column: 1, scope: !5129)
!5186 = !DISubprogram(name: "mbrtoc32", scope: !731, file: !731, line: 57, type: !5187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!5187 = !DISubroutineType(types: !5188)
!5188 = !{!262, !5189, !1051, !262, !5190}
!5189 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5132)
!5190 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5133)
!5191 = !DISubprogram(name: "mbsinit", scope: !5192, file: !5192, line: 293, type: !5193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1045)
!5192 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5193 = !DISubroutineType(types: !5194)
!5194 = !{!260, !5195}
!5195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5196, size: 64)
!5196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !853)
!5197 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !930, file: !930, line: 27, type: !4401, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !929, retainedNodes: !5198)
!5198 = !{!5199, !5200, !5201, !5202}
!5199 = !DILocalVariable(name: "ptr", arg: 1, scope: !5197, file: !930, line: 27, type: !354)
!5200 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5197, file: !930, line: 27, type: !262)
!5201 = !DILocalVariable(name: "size", arg: 3, scope: !5197, file: !930, line: 27, type: !262)
!5202 = !DILocalVariable(name: "nbytes", scope: !5197, file: !930, line: 29, type: !262)
!5203 = !DILocation(line: 0, scope: !5197)
!5204 = !DILocation(line: 30, column: 7, scope: !5205)
!5205 = distinct !DILexicalBlock(scope: !5197, file: !930, line: 30, column: 7)
!5206 = !DILocalVariable(name: "ptr", arg: 1, scope: !5207, file: !4493, line: 2057, type: !354)
!5207 = distinct !DISubprogram(name: "rpl_realloc", scope: !4493, file: !4493, line: 2057, type: !4485, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !929, retainedNodes: !5208)
!5208 = !{!5206, !5209}
!5209 = !DILocalVariable(name: "size", arg: 2, scope: !5207, file: !4493, line: 2057, type: !262)
!5210 = !DILocation(line: 0, scope: !5207, inlinedAt: !5211)
!5211 = distinct !DILocation(line: 37, column: 10, scope: !5197)
!5212 = !DILocation(line: 2059, column: 24, scope: !5207, inlinedAt: !5211)
!5213 = !DILocation(line: 2059, column: 10, scope: !5207, inlinedAt: !5211)
!5214 = !DILocation(line: 37, column: 3, scope: !5197)
!5215 = !DILocation(line: 32, column: 7, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5205, file: !930, line: 31, column: 5)
!5217 = !DILocation(line: 32, column: 13, scope: !5216)
!5218 = !DILocation(line: 33, column: 7, scope: !5216)
!5219 = !DILocation(line: 38, column: 1, scope: !5197)
!5220 = distinct !DISubprogram(name: "hard_locale", scope: !865, file: !865, line: 28, type: !1256, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !932, retainedNodes: !5221)
!5221 = !{!5222, !5223}
!5222 = !DILocalVariable(name: "category", arg: 1, scope: !5220, file: !865, line: 28, type: !260)
!5223 = !DILocalVariable(name: "locale", scope: !5220, file: !865, line: 30, type: !5224)
!5224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5225)
!5225 = !{!5226}
!5226 = !DISubrange(count: 257)
!5227 = !DILocation(line: 0, scope: !5220)
!5228 = !DILocation(line: 30, column: 3, scope: !5220)
!5229 = !DILocation(line: 30, column: 8, scope: !5220)
!5230 = !DILocation(line: 32, column: 7, scope: !5231)
!5231 = distinct !DILexicalBlock(scope: !5220, file: !865, line: 32, column: 7)
!5232 = !DILocation(line: 32, column: 7, scope: !5220)
!5233 = !DILocalVariable(name: "__s1", arg: 1, scope: !5234, file: !1070, line: 1359, type: !265)
!5234 = distinct !DISubprogram(name: "streq", scope: !1070, file: !1070, line: 1359, type: !1071, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !932, retainedNodes: !5235)
!5235 = !{!5233, !5236}
!5236 = !DILocalVariable(name: "__s2", arg: 2, scope: !5234, file: !1070, line: 1359, type: !265)
!5237 = !DILocation(line: 0, scope: !5234, inlinedAt: !5238)
!5238 = distinct !DILocation(line: 35, column: 9, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5220, file: !865, line: 35, column: 7)
!5240 = !DILocation(line: 1361, column: 11, scope: !5234, inlinedAt: !5238)
!5241 = !DILocation(line: 1361, column: 10, scope: !5234, inlinedAt: !5238)
!5242 = !DILocation(line: 35, column: 29, scope: !5239)
!5243 = !DILocation(line: 0, scope: !5234, inlinedAt: !5244)
!5244 = distinct !DILocation(line: 35, column: 32, scope: !5239)
!5245 = !DILocation(line: 1361, column: 11, scope: !5234, inlinedAt: !5244)
!5246 = !DILocation(line: 1361, column: 10, scope: !5234, inlinedAt: !5244)
!5247 = !DILocation(line: 35, column: 7, scope: !5220)
!5248 = !DILocation(line: 46, column: 3, scope: !5220)
!5249 = !DILocation(line: 47, column: 1, scope: !5220)
!5250 = distinct !DISubprogram(name: "setlocale_null_r", scope: !935, file: !935, line: 154, type: !5251, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !934, retainedNodes: !5253)
!5251 = !DISubroutineType(types: !5252)
!5252 = !{!260, !260, !317, !262}
!5253 = !{!5254, !5255, !5256}
!5254 = !DILocalVariable(name: "category", arg: 1, scope: !5250, file: !935, line: 154, type: !260)
!5255 = !DILocalVariable(name: "buf", arg: 2, scope: !5250, file: !935, line: 154, type: !317)
!5256 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5250, file: !935, line: 154, type: !262)
!5257 = !DILocation(line: 0, scope: !5250)
!5258 = !DILocation(line: 159, column: 10, scope: !5250)
!5259 = !DILocation(line: 159, column: 3, scope: !5250)
!5260 = distinct !DISubprogram(name: "setlocale_null", scope: !935, file: !935, line: 186, type: !5261, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !934, retainedNodes: !5263)
!5261 = !DISubroutineType(types: !5262)
!5262 = !{!265, !260}
!5263 = !{!5264}
!5264 = !DILocalVariable(name: "category", arg: 1, scope: !5260, file: !935, line: 186, type: !260)
!5265 = !DILocation(line: 0, scope: !5260)
!5266 = !DILocation(line: 189, column: 10, scope: !5260)
!5267 = !DILocation(line: 189, column: 3, scope: !5260)
!5268 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !937, file: !937, line: 35, type: !5261, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !936, retainedNodes: !5269)
!5269 = !{!5270, !5271}
!5270 = !DILocalVariable(name: "category", arg: 1, scope: !5268, file: !937, line: 35, type: !260)
!5271 = !DILocalVariable(name: "result", scope: !5268, file: !937, line: 37, type: !265)
!5272 = !DILocation(line: 0, scope: !5268)
!5273 = !DILocation(line: 37, column: 24, scope: !5268)
!5274 = !DILocation(line: 62, column: 3, scope: !5268)
!5275 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !937, file: !937, line: 66, type: !5251, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !936, retainedNodes: !5276)
!5276 = !{!5277, !5278, !5279, !5280, !5281}
!5277 = !DILocalVariable(name: "category", arg: 1, scope: !5275, file: !937, line: 66, type: !260)
!5278 = !DILocalVariable(name: "buf", arg: 2, scope: !5275, file: !937, line: 66, type: !317)
!5279 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5275, file: !937, line: 66, type: !262)
!5280 = !DILocalVariable(name: "result", scope: !5275, file: !937, line: 111, type: !265)
!5281 = !DILocalVariable(name: "length", scope: !5282, file: !937, line: 125, type: !262)
!5282 = distinct !DILexicalBlock(scope: !5283, file: !937, line: 124, column: 5)
!5283 = distinct !DILexicalBlock(scope: !5275, file: !937, line: 113, column: 7)
!5284 = !DILocation(line: 0, scope: !5275)
!5285 = !DILocation(line: 0, scope: !5268, inlinedAt: !5286)
!5286 = distinct !DILocation(line: 111, column: 24, scope: !5275)
!5287 = !DILocation(line: 37, column: 24, scope: !5268, inlinedAt: !5286)
!5288 = !DILocation(line: 113, column: 14, scope: !5283)
!5289 = !DILocation(line: 113, column: 7, scope: !5275)
!5290 = !DILocation(line: 116, column: 19, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !5292, file: !937, line: 116, column: 11)
!5292 = distinct !DILexicalBlock(scope: !5283, file: !937, line: 114, column: 5)
!5293 = !DILocation(line: 116, column: 11, scope: !5292)
!5294 = !DILocation(line: 120, column: 16, scope: !5291)
!5295 = !DILocation(line: 120, column: 9, scope: !5291)
!5296 = !DILocation(line: 125, column: 23, scope: !5282)
!5297 = !DILocation(line: 0, scope: !5282)
!5298 = !DILocation(line: 126, column: 18, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5282, file: !937, line: 126, column: 11)
!5300 = !DILocation(line: 126, column: 11, scope: !5282)
!5301 = !DILocation(line: 128, column: 39, scope: !5302)
!5302 = distinct !DILexicalBlock(scope: !5299, file: !937, line: 127, column: 9)
!5303 = !DILocalVariable(name: "__dest", arg: 1, scope: !5304, file: !2967, line: 26, type: !4761)
!5304 = distinct !DISubprogram(name: "memcpy", scope: !2967, file: !2967, line: 26, type: !4759, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !936, retainedNodes: !5305)
!5305 = !{!5303, !5306, !5307}
!5306 = !DILocalVariable(name: "__src", arg: 2, scope: !5304, file: !2967, line: 26, type: !1204)
!5307 = !DILocalVariable(name: "__len", arg: 3, scope: !5304, file: !2967, line: 26, type: !262)
!5308 = !DILocation(line: 0, scope: !5304, inlinedAt: !5309)
!5309 = distinct !DILocation(line: 128, column: 11, scope: !5302)
!5310 = !DILocation(line: 29, column: 10, scope: !5304, inlinedAt: !5309)
!5311 = !DILocation(line: 129, column: 11, scope: !5302)
!5312 = !DILocation(line: 133, column: 23, scope: !5313)
!5313 = distinct !DILexicalBlock(scope: !5314, file: !937, line: 133, column: 15)
!5314 = distinct !DILexicalBlock(scope: !5299, file: !937, line: 132, column: 9)
!5315 = !DILocation(line: 133, column: 15, scope: !5314)
!5316 = !DILocation(line: 138, column: 44, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5313, file: !937, line: 134, column: 13)
!5318 = !DILocation(line: 0, scope: !5304, inlinedAt: !5319)
!5319 = distinct !DILocation(line: 138, column: 15, scope: !5317)
!5320 = !DILocation(line: 29, column: 10, scope: !5304, inlinedAt: !5319)
!5321 = !DILocation(line: 139, column: 15, scope: !5317)
!5322 = !DILocation(line: 139, column: 32, scope: !5317)
!5323 = !DILocation(line: 140, column: 13, scope: !5317)
!5324 = !DILocation(line: 0, scope: !5283)
!5325 = !DILocation(line: 145, column: 1, scope: !5275)
