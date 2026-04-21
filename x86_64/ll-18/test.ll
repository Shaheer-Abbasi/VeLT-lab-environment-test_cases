; ModuleID = 'src/test.bc'
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !575
@.str.55 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !567
@.str.1.56 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !569
@.str.2.57 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !571
@.str.3.58 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !573
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !577
@stderr = external local_unnamed_addr global ptr, align 8
@.str.61 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !583
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !614
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !585
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !604
@.str.1.67 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !606
@.str.2.69 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !608
@.str.3.68 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !610
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !612
@.str.4.62 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !616
@.str.5.63 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !618
@.str.6.64 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !621
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !626
@.str.116 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !632
@.str.1.117 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !634
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@.str.118 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !636
@.str.1.119 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !639
@.str.2.120 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !641
@.str.3.121 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !646
@.str.4.122 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !648
@.str.5.123 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !650
@.str.6.124 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !652
@.str.7.125 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !654
@.str.8.126 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !656
@.str.9.127 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !658
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.118, ptr @.str.1.119, ptr @.str.2.120, ptr @.str.3.121, ptr @.str.4.122, ptr @.str.5.123, ptr @.str.6.124, ptr @.str.7.125, ptr @.str.8.126, ptr @.str.9.127, ptr null], align 16, !dbg !660
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !685
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !699
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !743
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !750
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !701
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !752
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !689
@.str.10.130 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !706
@.str.11.128 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !708
@.str.12.131 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !710
@.str.13.129 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !712
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !714
@.str.140 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !756
@.str.1.141 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !759
@.str.2.142 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !761
@.str.3.143 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !763
@.str.4.144 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !765
@.str.5.145 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !767
@.str.6.146 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !772
@.str.7.147 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !777
@.str.8.148 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !779
@.str.9.149 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !781
@.str.10.150 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !783
@.str.11.151 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !788
@.str.12.152 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !793
@.str.13.153 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !795
@.str.14.154 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !800
@.str.15.155 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !802
@.str.16.156 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !804
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.159 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !806
@.str.18.160 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !808
@.str.19.161 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !810
@.str.20.162 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !812
@.str.21.163 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !814
@.str.22.164 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !816
@.str.23.165 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !818
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !820
@exit_failure = dso_local global i32 1, align 4, !dbg !826
@.str.178 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !832
@.str.1.176 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !835
@.str.2.177 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !837
@.str.189 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !839
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !842
@.str.1.194 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !857

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !940 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !944, metadata !DIExpression()), !dbg !945
  %2 = icmp eq i32 %0, 0, !dbg !946
  br i1 %2, label %8, label %3, !dbg !948

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !949, !tbaa !951
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #40, !dbg !949
  %6 = load ptr, ptr @program_name, align 8, !dbg !949, !tbaa !951
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #40, !dbg !949
  br label %98, !dbg !949

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #40, !dbg !955
  %10 = load ptr, ptr @stdout, align 8, !dbg !955, !tbaa !951
  %11 = tail call i32 @fputs_unlocked(ptr noundef %9, ptr noundef %10), !dbg !955
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #40, !dbg !957
  %13 = load ptr, ptr @stdout, align 8, !dbg !957, !tbaa !951
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !957
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #40, !dbg !958
  tail call fastcc void @oputs_(ptr noundef %15), !dbg !958
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #40, !dbg !959
  tail call fastcc void @oputs_(ptr noundef %16), !dbg !959
  %17 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #40, !dbg !960
  %18 = load ptr, ptr @stdout, align 8, !dbg !960, !tbaa !951
  %19 = tail call i32 @fputs_unlocked(ptr noundef %17, ptr noundef %18), !dbg !960
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #40, !dbg !961
  %21 = load ptr, ptr @stdout, align 8, !dbg !961, !tbaa !951
  %22 = tail call i32 @fputs_unlocked(ptr noundef %20, ptr noundef %21), !dbg !961
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !962
  %24 = load ptr, ptr @stdout, align 8, !dbg !962, !tbaa !951
  %25 = tail call i32 @fputs_unlocked(ptr noundef %23, ptr noundef %24), !dbg !962
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #40, !dbg !963
  tail call fastcc void @oputs_(ptr noundef %26), !dbg !963
  %27 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10, i32 noundef 5) #40, !dbg !964
  %28 = load ptr, ptr @stdout, align 8, !dbg !964, !tbaa !951
  %29 = tail call i32 @fputs_unlocked(ptr noundef %27, ptr noundef %28), !dbg !964
  %30 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #40, !dbg !965
  tail call fastcc void @oputs_(ptr noundef %30), !dbg !965
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12, i32 noundef 5) #40, !dbg !966
  %32 = load ptr, ptr @stdout, align 8, !dbg !966, !tbaa !951
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !966
  %34 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !967
  %35 = load ptr, ptr @stdout, align 8, !dbg !967, !tbaa !951
  %36 = tail call i32 @fputs_unlocked(ptr noundef %34, ptr noundef %35), !dbg !967
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #40, !dbg !968
  tail call fastcc void @oputs_(ptr noundef %37), !dbg !968
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #40, !dbg !969
  tail call fastcc void @oputs_(ptr noundef %38), !dbg !969
  %39 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #40, !dbg !970
  tail call fastcc void @oputs_(ptr noundef %39), !dbg !970
  %40 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #40, !dbg !971
  tail call fastcc void @oputs_(ptr noundef %40), !dbg !971
  %41 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #40, !dbg !972
  tail call fastcc void @oputs_(ptr noundef %41), !dbg !972
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.18, i32 noundef 5) #40, !dbg !973
  tail call fastcc void @oputs_(ptr noundef %42), !dbg !973
  %43 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !974
  %44 = load ptr, ptr @stdout, align 8, !dbg !974, !tbaa !951
  %45 = tail call i32 @fputs_unlocked(ptr noundef %43, ptr noundef %44), !dbg !974
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #40, !dbg !975
  tail call fastcc void @oputs_(ptr noundef %46), !dbg !975
  %47 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.20, i32 noundef 5) #40, !dbg !976
  tail call fastcc void @oputs_(ptr noundef %47), !dbg !976
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 5) #40, !dbg !977
  tail call fastcc void @oputs_(ptr noundef %48), !dbg !977
  %49 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #40, !dbg !978
  %50 = load ptr, ptr @stdout, align 8, !dbg !978, !tbaa !951
  %51 = tail call i32 @fputs_unlocked(ptr noundef %49, ptr noundef %50), !dbg !978
  %52 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #40, !dbg !979
  tail call fastcc void @oputs_(ptr noundef %52), !dbg !979
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.23, i32 noundef 5) #40, !dbg !980
  tail call fastcc void @oputs_(ptr noundef %53), !dbg !980
  %54 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.24, i32 noundef 5) #40, !dbg !981
  tail call fastcc void @oputs_(ptr noundef %54), !dbg !981
  %55 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.25, i32 noundef 5) #40, !dbg !982
  tail call fastcc void @oputs_(ptr noundef %55), !dbg !982
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.26, i32 noundef 5) #40, !dbg !983
  tail call fastcc void @oputs_(ptr noundef %56), !dbg !983
  %57 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.27, i32 noundef 5) #40, !dbg !984
  tail call fastcc void @oputs_(ptr noundef %57), !dbg !984
  %58 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.28, i32 noundef 5) #40, !dbg !985
  tail call fastcc void @oputs_(ptr noundef %58), !dbg !985
  %59 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.29, i32 noundef 5) #40, !dbg !986
  tail call fastcc void @oputs_(ptr noundef %59), !dbg !986
  %60 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.30, i32 noundef 5) #40, !dbg !987
  tail call fastcc void @oputs_(ptr noundef %60), !dbg !987
  %61 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.31, i32 noundef 5) #40, !dbg !988
  tail call fastcc void @oputs_(ptr noundef %61), !dbg !988
  %62 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #40, !dbg !989
  tail call fastcc void @oputs_(ptr noundef %62), !dbg !989
  %63 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.33, i32 noundef 5) #40, !dbg !990
  tail call fastcc void @oputs_(ptr noundef %63), !dbg !990
  %64 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #40, !dbg !991
  tail call fastcc void @oputs_(ptr noundef %64), !dbg !991
  %65 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.35, i32 noundef 5) #40, !dbg !992
  tail call fastcc void @oputs_(ptr noundef %65), !dbg !992
  %66 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #40, !dbg !993
  tail call fastcc void @oputs_(ptr noundef %66), !dbg !993
  %67 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.37, i32 noundef 5) #40, !dbg !994
  tail call fastcc void @oputs_(ptr noundef %67), !dbg !994
  %68 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.38, i32 noundef 5) #40, !dbg !995
  tail call fastcc void @oputs_(ptr noundef %68), !dbg !995
  %69 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.39, i32 noundef 5) #40, !dbg !996
  tail call fastcc void @oputs_(ptr noundef %69), !dbg !996
  %70 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.40, i32 noundef 5) #40, !dbg !997
  tail call fastcc void @oputs_(ptr noundef %70), !dbg !997
  %71 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #40, !dbg !998
  tail call fastcc void @oputs_(ptr noundef %71), !dbg !998
  %72 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #40, !dbg !999
  %73 = load ptr, ptr @stdout, align 8, !dbg !999, !tbaa !951
  %74 = tail call i32 @fputs_unlocked(ptr noundef %72, ptr noundef %73), !dbg !999
  %75 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.43, i32 noundef 5) #40, !dbg !1000
  %76 = load ptr, ptr @stdout, align 8, !dbg !1000, !tbaa !951
  %77 = tail call i32 @fputs_unlocked(ptr noundef %75, ptr noundef %76), !dbg !1000
  %78 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.44, i32 noundef 5) #40, !dbg !1001
  %79 = load ptr, ptr @stdout, align 8, !dbg !1001, !tbaa !951
  %80 = tail call i32 @fputs_unlocked(ptr noundef %78, ptr noundef %79), !dbg !1001
  %81 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.45, i32 noundef 5) #40, !dbg !1002
  %82 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #40, !dbg !1002
  %83 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %81, ptr noundef %82) #40, !dbg !1002
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1003, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata !1022, metadata !1016, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata ptr poison, metadata !1015, metadata !DIExpression()), !dbg !1020
  tail call void @emit_bug_reporting_address() #40, !dbg !1023
  %84 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #40, !dbg !1024
  call void @llvm.dbg.value(metadata ptr %84, metadata !1018, metadata !DIExpression()), !dbg !1020
  %85 = icmp eq ptr %84, null, !dbg !1025
  br i1 %85, label %93, label %86, !dbg !1027

86:                                               ; preds = %8
  %87 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(4) @.str.80, i64 noundef 3) #41, !dbg !1028
  %88 = icmp eq i32 %87, 0, !dbg !1028
  br i1 %88, label %93, label %89, !dbg !1029

89:                                               ; preds = %86
  %90 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.81, i32 noundef 5) #40, !dbg !1030
  %91 = load ptr, ptr @stdout, align 8, !dbg !1030, !tbaa !951
  %92 = tail call i32 @fputs_unlocked(ptr noundef %90, ptr noundef %91), !dbg !1030
  br label %93, !dbg !1032

93:                                               ; preds = %8, %86, %89
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1015, metadata !DIExpression()), !dbg !1020
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1019, metadata !DIExpression()), !dbg !1020
  %94 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.82, i32 noundef 5) #40, !dbg !1033
  %95 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %94, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.3) #40, !dbg !1033
  %96 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.83, i32 noundef 5) #40, !dbg !1034
  %97 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %96, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.84) #40, !dbg !1034
  br label %98

98:                                               ; preds = %93, %3
  tail call void @exit(i32 noundef %0) #42, !dbg !1035
  unreachable, !dbg !1035
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1036 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1040 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1046 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !286 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !291, metadata !DIExpression()), !dbg !1050
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !292, metadata !DIExpression()), !dbg !1050
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1051, !tbaa !1052
  %3 = icmp eq i32 %2, -1, !dbg !1054
  br i1 %3, label %4, label %16, !dbg !1055

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.51) #40, !dbg !1056
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !293, metadata !DIExpression()), !dbg !1057
  %6 = icmp eq ptr %5, null, !dbg !1058
  br i1 %6, label %14, label %7, !dbg !1059

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1060, !tbaa !1061
  %9 = icmp eq i8 %8, 0, !dbg !1060
  br i1 %9, label %14, label %10, !dbg !1062

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1063, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.value(metadata ptr @.str.52, metadata !1069, metadata !DIExpression()), !dbg !1070
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.52) #41, !dbg !1072
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
  br label %124, !dbg !1081

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !296, metadata !DIExpression()), !dbg !1050
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.53) #41, !dbg !1082
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1083
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !298, metadata !DIExpression()), !dbg !1050
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #41, !dbg !1084
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !299, metadata !DIExpression()), !dbg !1050
  %26 = icmp eq ptr %25, null, !dbg !1085
  br i1 %26, label %54, label %27, !dbg !1086

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1087
  br i1 %28, label %54, label %29, !dbg !1088

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !300, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata i64 0, metadata !304, metadata !DIExpression()), !dbg !1089
  %30 = icmp ult ptr %24, %25, !dbg !1090
  br i1 %30, label %31, label %54, !dbg !1091

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #43, !dbg !1050
  %33 = load ptr, ptr %32, align 8, !tbaa !951
  br label %34, !dbg !1091

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !300, metadata !DIExpression()), !dbg !1089
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !304, metadata !DIExpression()), !dbg !1089
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1092
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !300, metadata !DIExpression()), !dbg !1089
  %38 = load i8, ptr %35, align 1, !dbg !1092, !tbaa !1061
  %39 = sext i8 %38 to i64, !dbg !1092
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1092
  %41 = load i16, ptr %40, align 2, !dbg !1092, !tbaa !1093
  %42 = freeze i16 %41, !dbg !1095
  %43 = lshr i16 %42, 13, !dbg !1095
  %44 = and i16 %43, 1, !dbg !1095
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1096
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !304, metadata !DIExpression()), !dbg !1089
  %47 = icmp ult ptr %37, %25, !dbg !1090
  %48 = icmp ult i64 %46, 2, !dbg !1097
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1097
  br i1 %49, label %34, label %50, !dbg !1091, !llvm.loop !1098

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1100
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1102
  %53 = zext i1 %51 to i8, !dbg !1102
  br label %54, !dbg !1102

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1050
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !1050
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !296, metadata !DIExpression()), !dbg !1050
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !299, metadata !DIExpression()), !dbg !1050
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.54) #41, !dbg !1103
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !305, metadata !DIExpression()), !dbg !1050
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1104
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !306, metadata !DIExpression()), !dbg !1050
  br label %59, !dbg !1105

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !1050
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !1050
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !296, metadata !DIExpression()), !dbg !1050
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !306, metadata !DIExpression()), !dbg !1050
  %62 = load i8, ptr %60, align 1, !dbg !1106, !tbaa !1061
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !1107

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1108
  %65 = load i8, ptr %64, align 1, !dbg !1111, !tbaa !1061
  %66 = icmp eq i8 %65, 45, !dbg !1112
  %67 = select i1 %66, i8 0, i8 %61, !dbg !1113
  br label %68, !dbg !1113

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !1050
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !296, metadata !DIExpression()), !dbg !1050
  %70 = tail call ptr @__ctype_b_loc() #43, !dbg !1114
  %71 = load ptr, ptr %70, align 8, !dbg !1114, !tbaa !951
  %72 = sext i8 %62 to i64, !dbg !1114
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1114
  %74 = load i16, ptr %73, align 2, !dbg !1114, !tbaa !1093
  %75 = and i16 %74, 8192, !dbg !1114
  %76 = icmp eq i16 %75, 0, !dbg !1114
  br i1 %76, label %92, label %77, !dbg !1116

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1117
  br i1 %78, label %94, label %79, !dbg !1120

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1121
  %81 = load i8, ptr %80, align 1, !dbg !1121, !tbaa !1061
  %82 = sext i8 %81 to i64, !dbg !1121
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1121
  %84 = load i16, ptr %83, align 2, !dbg !1121, !tbaa !1093
  %85 = and i16 %84, 8192, !dbg !1121
  %86 = icmp eq i16 %85, 0, !dbg !1121
  br i1 %86, label %87, label %94, !dbg !1122

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !1123
  %89 = icmp ne i8 %88, 0, !dbg !1123
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1125
  br i1 %91, label %92, label %94, !dbg !1125

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1126
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !306, metadata !DIExpression()), !dbg !1050
  br label %59, !dbg !1105, !llvm.loop !1127

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1129
  %96 = load ptr, ptr @stdout, align 8, !dbg !1129, !tbaa !951
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1129
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata !1022, metadata !1069, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata !1022, metadata !1069, metadata !DIExpression()), !dbg !1132
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata !1022, metadata !1069, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata !1022, metadata !1069, metadata !DIExpression()), !dbg !1136
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata !1022, metadata !1069, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata !1022, metadata !1069, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata !1022, metadata !1069, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata !1022, metadata !1069, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata !1022, metadata !1069, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1063, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata !1022, metadata !1069, metadata !DIExpression()), !dbg !1148
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !362, metadata !DIExpression()), !dbg !1050
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.67, i64 noundef 6) #41, !dbg !1150
  %99 = icmp eq i32 %98, 0, !dbg !1150
  br i1 %99, label %103, label %100, !dbg !1152

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.68, i64 noundef 9) #41, !dbg !1153
  %102 = icmp eq i32 %101, 0, !dbg !1153
  br i1 %102, label %103, label %106, !dbg !1154

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1155
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #40, !dbg !1155
  br label %109, !dbg !1157

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1158
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #40, !dbg !1158
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1160, !tbaa !951
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.73, ptr noundef %110), !dbg !1160
  %112 = load ptr, ptr @stdout, align 8, !dbg !1161, !tbaa !951
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.74, ptr noundef %112), !dbg !1161
  %114 = ptrtoint ptr %60 to i64, !dbg !1162
  %115 = sub i64 %114, %95, !dbg !1162
  %116 = load ptr, ptr @stdout, align 8, !dbg !1162, !tbaa !951
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1162
  %118 = load ptr, ptr @stdout, align 8, !dbg !1163, !tbaa !951
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.75, ptr noundef %118), !dbg !1163
  %120 = load ptr, ptr @stdout, align 8, !dbg !1164, !tbaa !951
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.76, ptr noundef %120), !dbg !1164
  %122 = load ptr, ptr @stdout, align 8, !dbg !1165, !tbaa !951
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1165
  br label %124, !dbg !1166

124:                                              ; preds = %109, %19
  ret void, !dbg !1166
}

declare !dbg !1167 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1170 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1174 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1178 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1180 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1183 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1186 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1189 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1192 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1198 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1199 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1205 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1209, metadata !DIExpression()), !dbg !1212
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1210, metadata !DIExpression()), !dbg !1212
  %3 = load ptr, ptr %1, align 8, !dbg !1213, !tbaa !951
  tail call void @set_program_name(ptr noundef %3) #40, !dbg !1214
  %4 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.47) #40, !dbg !1215
  %5 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49) #40, !dbg !1216
  %6 = tail call ptr @textdomain(ptr noundef nonnull @.str.48) #40, !dbg !1217
  tail call void @llvm.dbg.value(metadata i32 2, metadata !1218, metadata !DIExpression()), !dbg !1221
  store volatile i32 2, ptr @exit_failure, align 4, !dbg !1223, !tbaa !1052
  %7 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #40, !dbg !1225
  store ptr %1, ptr @argv, align 8, !dbg !1226, !tbaa !951
  store i32 %0, ptr @argc, align 4, !dbg !1227, !tbaa !1052
  store i32 1, ptr @pos, align 4, !dbg !1228, !tbaa !1052
  %8 = icmp slt i32 %0, 2, !dbg !1229
  br i1 %8, label %26, label %9, !dbg !1231

9:                                                ; preds = %2
  %10 = add nsw i32 %0, -1, !dbg !1232
  %11 = tail call fastcc zeroext i1 @posixtest(i32 noundef %10), !dbg !1233
  tail call void @llvm.dbg.value(metadata i1 %11, metadata !1211, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1212
  %12 = load i32, ptr @pos, align 4, !dbg !1234, !tbaa !1052
  %13 = load i32, ptr @argc, align 4, !dbg !1236, !tbaa !1052
  %14 = icmp eq i32 %12, %13, !dbg !1237
  br i1 %14, label %23, label %15, !dbg !1238

15:                                               ; preds = %9
  %16 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #40, !dbg !1239
  %17 = load ptr, ptr @argv, align 8, !dbg !1240, !tbaa !951
  %18 = load i32, ptr @pos, align 4, !dbg !1241, !tbaa !1052
  %19 = sext i32 %18 to i64, !dbg !1240
  %20 = getelementptr inbounds ptr, ptr %17, i64 %19, !dbg !1240
  %21 = load ptr, ptr %20, align 8, !dbg !1240, !tbaa !951
  %22 = tail call ptr @quote(ptr noundef %21) #40, !dbg !1242
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %16, ptr noundef %22) #44, !dbg !1243
  unreachable, !dbg !1243

23:                                               ; preds = %9
  %24 = xor i1 %11, true, !dbg !1244
  %25 = zext i1 %24 to i32, !dbg !1244
  br label %26, !dbg !1244

26:                                               ; preds = %2, %23
  %27 = phi i32 [ %25, %23 ], [ 1, %2 ], !dbg !1212
  ret i32 %27, !dbg !1245
}

; Function Attrs: nounwind
declare !dbg !1246 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1249 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1250 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @posixtest(i32 noundef %0) unnamed_addr #10 !dbg !1253 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1257, metadata !DIExpression()), !dbg !1259
  switch i32 %0, label %97 [
    i32 1, label %2
    i32 2, label %11
    i32 3, label %39
    i32 4, label %41
  ], !dbg !1260

2:                                                ; preds = %1
  %3 = load ptr, ptr @argv, align 8, !dbg !1261, !tbaa !951
  %4 = load i32, ptr @pos, align 4, !dbg !1267, !tbaa !1052
  %5 = add nsw i32 %4, 1, !dbg !1267
  store i32 %5, ptr @pos, align 4, !dbg !1267, !tbaa !1052
  %6 = sext i32 %4 to i64, !dbg !1261
  %7 = getelementptr inbounds ptr, ptr %3, i64 %6, !dbg !1261
  %8 = load ptr, ptr %7, align 8, !dbg !1261, !tbaa !951
  %9 = load i8, ptr %8, align 1, !dbg !1261, !tbaa !1061
  %10 = icmp ne i8 %9, 0, !dbg !1268
  tail call void @llvm.dbg.value(metadata i1 %10, metadata !1258, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1259
  br label %109, !dbg !1269

11:                                               ; preds = %1
  %12 = load ptr, ptr @argv, align 8, !dbg !1270, !tbaa !951
  %13 = load i32, ptr @pos, align 4, !dbg !1276, !tbaa !1052
  %14 = sext i32 %13 to i64, !dbg !1270
  %15 = getelementptr ptr, ptr %12, i64 %14, !dbg !1270
  %16 = load ptr, ptr %15, align 8, !dbg !1270, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %16, metadata !1063, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.value(metadata ptr @.str.85, metadata !1069, metadata !DIExpression()), !dbg !1277
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(2) @.str.85) #41, !dbg !1279
  %18 = icmp eq i32 %17, 0, !dbg !1280
  br i1 %18, label %19, label %25, !dbg !1281

19:                                               ; preds = %11
  %20 = add nsw i32 %13, 2, !dbg !1282
  store i32 %20, ptr @pos, align 4, !dbg !1282, !tbaa !1052
  %21 = getelementptr ptr, ptr %15, i64 1, !dbg !1285
  %22 = load ptr, ptr %21, align 8, !dbg !1285, !tbaa !951
  %23 = load i8, ptr %22, align 1, !dbg !1285, !tbaa !1061
  %24 = icmp eq i8 %23, 0, !dbg !1286
  call void @llvm.dbg.value(metadata i1 %24, metadata !1274, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1287
  br label %109, !dbg !1288

25:                                               ; preds = %11
  %26 = load i8, ptr %16, align 1, !dbg !1289, !tbaa !1061
  %27 = icmp eq i8 %26, 45, !dbg !1291
  br i1 %27, label %28, label %38, !dbg !1292

28:                                               ; preds = %25
  %29 = getelementptr inbounds i8, ptr %16, i64 1, !dbg !1293
  %30 = load i8, ptr %29, align 1, !dbg !1293, !tbaa !1061
  %31 = icmp eq i8 %30, 0, !dbg !1294
  br i1 %31, label %38, label %32, !dbg !1295

32:                                               ; preds = %28
  %33 = getelementptr inbounds i8, ptr %16, i64 2, !dbg !1296
  %34 = load i8, ptr %33, align 1, !dbg !1296, !tbaa !1061
  %35 = icmp eq i8 %34, 0, !dbg !1297
  br i1 %35, label %36, label %38, !dbg !1298

36:                                               ; preds = %32
  %37 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1299
  call void @llvm.dbg.value(metadata i1 %37, metadata !1274, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1287
  br label %109

38:                                               ; preds = %32, %28, %25
  tail call fastcc void @beyond() #44, !dbg !1301
  unreachable, !dbg !1301

39:                                               ; preds = %1
  %40 = tail call fastcc zeroext i1 @three_arguments(), !dbg !1302
  tail call void @llvm.dbg.value(metadata i1 %40, metadata !1258, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1259
  br label %109, !dbg !1303

41:                                               ; preds = %1
  %42 = load ptr, ptr @argv, align 8, !dbg !1304, !tbaa !951
  %43 = load i32, ptr @pos, align 4, !dbg !1306, !tbaa !1052
  %44 = sext i32 %43 to i64, !dbg !1304
  %45 = getelementptr inbounds ptr, ptr %42, i64 %44, !dbg !1304
  %46 = load ptr, ptr %45, align 8, !dbg !1304, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %46, metadata !1063, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata ptr @.str.85, metadata !1069, metadata !DIExpression()), !dbg !1307
  %47 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(2) @.str.85) #41, !dbg !1309
  %48 = icmp eq i32 %47, 0, !dbg !1310
  br i1 %48, label %49, label %57, !dbg !1311

49:                                               ; preds = %41
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1317
  %50 = add nsw i32 %43, 1, !dbg !1320
  store i32 %50, ptr @pos, align 4, !dbg !1320, !tbaa !1052
  %51 = load i32, ptr @argc, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %54, label %53, !dbg !1321

53:                                               ; preds = %49
  tail call fastcc void @beyond(), !dbg !1323
  unreachable, !dbg !1323

54:                                               ; preds = %49
  %55 = tail call fastcc zeroext i1 @three_arguments(), !dbg !1324
  %56 = xor i1 %55, true, !dbg !1325
  tail call void @llvm.dbg.value(metadata i1 %56, metadata !1258, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1259
  br label %109, !dbg !1326

57:                                               ; preds = %41
  call void @llvm.dbg.value(metadata ptr %46, metadata !1063, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.value(metadata ptr @.str.86, metadata !1069, metadata !DIExpression()), !dbg !1327
  %58 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(2) @.str.86) #41, !dbg !1330
  %59 = icmp eq i32 %58, 0, !dbg !1331
  br i1 %59, label %60, label %102, !dbg !1332

60:                                               ; preds = %57
  %61 = getelementptr ptr, ptr %45, i64 3, !dbg !1333
  %62 = load ptr, ptr %61, align 8, !dbg !1333, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %62, metadata !1063, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1069, metadata !DIExpression()), !dbg !1334
  %63 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %62, ptr noundef nonnull dereferenceable(2) @.str.87) #41, !dbg !1336
  %64 = icmp eq i32 %63, 0, !dbg !1337
  br i1 %64, label %65, label %102, !dbg !1338

65:                                               ; preds = %60
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1339
  %66 = add nsw i32 %43, 1, !dbg !1342
  store i32 %66, ptr @pos, align 4, !dbg !1342, !tbaa !1052
  %67 = sext i32 %66 to i64, !dbg !1343
  %68 = getelementptr ptr, ptr %42, i64 %67, !dbg !1343
  %69 = load ptr, ptr %68, align 8, !dbg !1343, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %69, metadata !1063, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata ptr @.str.85, metadata !1069, metadata !DIExpression()), !dbg !1345
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %69, ptr noundef nonnull dereferenceable(2) @.str.85) #41, !dbg !1347
  %71 = icmp eq i32 %70, 0, !dbg !1348
  br i1 %71, label %72, label %78, !dbg !1349

72:                                               ; preds = %65
  %73 = add nsw i32 %43, 3, !dbg !1350
  %74 = getelementptr ptr, ptr %68, i64 1, !dbg !1352
  %75 = load ptr, ptr %74, align 8, !dbg !1352, !tbaa !951
  %76 = load i8, ptr %75, align 1, !dbg !1352, !tbaa !1061
  %77 = icmp eq i8 %76, 0, !dbg !1353
  call void @llvm.dbg.value(metadata i1 %77, metadata !1274, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1354
  br label %93, !dbg !1355

78:                                               ; preds = %65
  %79 = load i8, ptr %69, align 1, !dbg !1356, !tbaa !1061
  %80 = icmp eq i8 %79, 45, !dbg !1357
  br i1 %80, label %81, label %92, !dbg !1358

81:                                               ; preds = %78
  %82 = getelementptr inbounds i8, ptr %69, i64 1, !dbg !1359
  %83 = load i8, ptr %82, align 1, !dbg !1359, !tbaa !1061
  %84 = icmp eq i8 %83, 0, !dbg !1360
  br i1 %84, label %92, label %85, !dbg !1361

85:                                               ; preds = %81
  %86 = getelementptr inbounds i8, ptr %69, i64 2, !dbg !1362
  %87 = load i8, ptr %86, align 1, !dbg !1362, !tbaa !1061
  %88 = icmp eq i8 %87, 0, !dbg !1363
  br i1 %88, label %89, label %92, !dbg !1364

89:                                               ; preds = %85
  %90 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1365
  call void @llvm.dbg.value(metadata i1 %90, metadata !1274, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1354
  %91 = load i32, ptr @pos, align 4, !dbg !1366, !tbaa !1052
  br label %93

92:                                               ; preds = %85, %81, %78
  tail call fastcc void @beyond() #44, !dbg !1368
  unreachable, !dbg !1368

93:                                               ; preds = %72, %89
  %94 = phi i32 [ %73, %72 ], [ %91, %89 ], !dbg !1366
  %95 = phi i1 [ %77, %72 ], [ %90, %89 ]
  call void @llvm.dbg.value(metadata i1 %95, metadata !1274, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1354
  tail call void @llvm.dbg.value(metadata i1 %95, metadata !1258, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1259
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1369
  %96 = add nsw i32 %94, 1, !dbg !1366
  store i32 %96, ptr @pos, align 4, !dbg !1366, !tbaa !1052
  br label %109, !dbg !1370

97:                                               ; preds = %1
  %98 = icmp sgt i32 %0, 0, !dbg !1371
  br i1 %98, label %99, label %101, !dbg !1374

99:                                               ; preds = %97
  %100 = load i32, ptr @pos, align 4, !dbg !1375, !tbaa !1052
  br label %102, !dbg !1374

101:                                              ; preds = %97
  tail call void @__assert_fail(ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.89, i32 noundef 651, ptr noundef nonnull @__PRETTY_FUNCTION__.posixtest) #42, !dbg !1371
  unreachable, !dbg !1371

102:                                              ; preds = %99, %57, %60
  %103 = phi i32 [ %100, %99 ], [ %43, %57 ], [ %43, %60 ], !dbg !1375
  %104 = load i32, ptr @argc, align 4, !dbg !1379, !tbaa !1052
  %105 = icmp slt i32 %103, %104, !dbg !1380
  br i1 %105, label %107, label %106, !dbg !1381

106:                                              ; preds = %102
  tail call fastcc void @beyond() #44, !dbg !1382
  unreachable, !dbg !1382

107:                                              ; preds = %102
  %108 = tail call fastcc zeroext i1 @or(), !dbg !1383
  tail call void @llvm.dbg.value(metadata i1 %108, metadata !1258, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1259
  br label %109, !dbg !1384

109:                                              ; preds = %36, %19, %107, %93, %54, %39, %2
  %110 = phi i1 [ %108, %107 ], [ %56, %54 ], [ %95, %93 ], [ %40, %39 ], [ %10, %2 ], [ %24, %19 ], [ %37, %36 ]
  tail call void @llvm.dbg.value(metadata i1 %110, metadata !1258, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1259
  ret i1 %110, !dbg !1385
}

; Function Attrs: noreturn nounwind uwtable
define internal void @test_syntax_error(ptr noundef %0, ...) unnamed_addr #0 !dbg !1386 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !1402
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1391, metadata !DIExpression(), metadata !1402, metadata ptr %2, metadata !DIExpression()), !dbg !1403
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1390, metadata !DIExpression()), !dbg !1403
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #40, !dbg !1404
  call void @llvm.va_start(ptr nonnull %2), !dbg !1405
  call void @verror(i32 noundef 0, i32 noundef 0, ptr noundef %0, ptr noundef nonnull %2) #45, !dbg !1406
  call void @exit(i32 noundef 2) #42, !dbg !1407
  unreachable, !dbg !1407
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #12

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @unary_operator() unnamed_addr #10 !dbg !1408 {
  %1 = alloca [1 x i8], align 1, !DIAssignID !1460
  %2 = alloca %struct.stat, align 8, !DIAssignID !1461
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1410, metadata !DIExpression(), metadata !1461, metadata ptr %2, metadata !DIExpression()), !dbg !1462
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #40, !dbg !1463
  %3 = load ptr, ptr @argv, align 8, !dbg !1464, !tbaa !951
  %4 = load i32, ptr @pos, align 4, !dbg !1465, !tbaa !1052
  %5 = sext i32 %4 to i64, !dbg !1464
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5, !dbg !1464
  %7 = load ptr, ptr %6, align 8, !dbg !1464, !tbaa !951
  %8 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !1464
  %9 = load i8, ptr %8, align 1, !dbg !1464, !tbaa !1061
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
  ], !dbg !1466

10:                                               ; preds = %0
  %11 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.90, i32 noundef 5) #40, !dbg !1467
  %12 = load ptr, ptr @argv, align 8, !dbg !1468, !tbaa !951
  %13 = load i32, ptr @pos, align 4, !dbg !1469, !tbaa !1052
  %14 = sext i32 %13 to i64, !dbg !1468
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14, !dbg !1468
  %16 = load ptr, ptr %15, align 8, !dbg !1468, !tbaa !951
  %17 = tail call ptr @quote(ptr noundef %16) #40, !dbg !1470
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %11, ptr noundef %17) #44, !dbg !1471
  unreachable, !dbg !1471

18:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1472
  %19 = add nsw i32 %4, 1, !dbg !1476
  store i32 %19, ptr @pos, align 4, !dbg !1476, !tbaa !1052
  %20 = load i32, ptr @argc, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %23, label %22, !dbg !1477

22:                                               ; preds = %18
  tail call fastcc void @beyond(), !dbg !1478
  unreachable, !dbg !1478

23:                                               ; preds = %18
  %24 = add nsw i32 %4, 2, !dbg !1479
  store i32 %24, ptr @pos, align 4, !dbg !1479, !tbaa !1052
  %25 = sext i32 %24 to i64, !dbg !1480
  %26 = getelementptr ptr, ptr %3, i64 %25, !dbg !1480
  %27 = getelementptr ptr, ptr %26, i64 -1, !dbg !1480
  %28 = load ptr, ptr %27, align 8, !dbg !1480, !tbaa !951
  %29 = call i32 @stat(ptr noundef %28, ptr noundef nonnull %2) #40, !dbg !1481
  %30 = icmp eq i32 %29, 0, !dbg !1482
  br label %395, !dbg !1483

31:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1484
  %32 = add nsw i32 %4, 1, !dbg !1487
  store i32 %32, ptr @pos, align 4, !dbg !1487, !tbaa !1052
  %33 = load i32, ptr @argc, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %36, label %35, !dbg !1488

35:                                               ; preds = %31
  tail call fastcc void @beyond(), !dbg !1489
  unreachable, !dbg !1489

36:                                               ; preds = %31
  %37 = add nsw i32 %4, 2, !dbg !1490
  store i32 %37, ptr @pos, align 4, !dbg !1490, !tbaa !1052
  %38 = sext i32 %37 to i64, !dbg !1491
  %39 = getelementptr ptr, ptr %3, i64 %38, !dbg !1491
  %40 = getelementptr ptr, ptr %39, i64 -1, !dbg !1491
  %41 = load ptr, ptr %40, align 8, !dbg !1491, !tbaa !951
  %42 = tail call i32 @euidaccess(ptr noundef %41, i32 noundef 4) #40, !dbg !1492
  %43 = icmp eq i32 %42, 0, !dbg !1493
  br label %395, !dbg !1494

44:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1495
  %45 = add nsw i32 %4, 1, !dbg !1498
  store i32 %45, ptr @pos, align 4, !dbg !1498, !tbaa !1052
  %46 = load i32, ptr @argc, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %49, label %48, !dbg !1499

48:                                               ; preds = %44
  tail call fastcc void @beyond(), !dbg !1500
  unreachable, !dbg !1500

49:                                               ; preds = %44
  %50 = add nsw i32 %4, 2, !dbg !1501
  store i32 %50, ptr @pos, align 4, !dbg !1501, !tbaa !1052
  %51 = sext i32 %50 to i64, !dbg !1502
  %52 = getelementptr ptr, ptr %3, i64 %51, !dbg !1502
  %53 = getelementptr ptr, ptr %52, i64 -1, !dbg !1502
  %54 = load ptr, ptr %53, align 8, !dbg !1502, !tbaa !951
  %55 = tail call i32 @euidaccess(ptr noundef %54, i32 noundef 2) #40, !dbg !1503
  %56 = icmp eq i32 %55, 0, !dbg !1504
  br label %395, !dbg !1505

57:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1506
  %58 = add nsw i32 %4, 1, !dbg !1509
  store i32 %58, ptr @pos, align 4, !dbg !1509, !tbaa !1052
  %59 = load i32, ptr @argc, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %62, label %61, !dbg !1510

61:                                               ; preds = %57
  tail call fastcc void @beyond(), !dbg !1511
  unreachable, !dbg !1511

62:                                               ; preds = %57
  %63 = add nsw i32 %4, 2, !dbg !1512
  store i32 %63, ptr @pos, align 4, !dbg !1512, !tbaa !1052
  %64 = sext i32 %63 to i64, !dbg !1513
  %65 = getelementptr ptr, ptr %3, i64 %64, !dbg !1513
  %66 = getelementptr ptr, ptr %65, i64 -1, !dbg !1513
  %67 = load ptr, ptr %66, align 8, !dbg !1513, !tbaa !951
  %68 = tail call i32 @euidaccess(ptr noundef %67, i32 noundef 1) #40, !dbg !1514
  %69 = icmp eq i32 %68, 0, !dbg !1515
  br label %395, !dbg !1516

70:                                               ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1517
  %71 = add nsw i32 %4, 1, !dbg !1520
  store i32 %71, ptr @pos, align 4, !dbg !1520, !tbaa !1052
  %72 = load i32, ptr @argc, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %75, label %74, !dbg !1521

74:                                               ; preds = %70
  tail call fastcc void @beyond(), !dbg !1522
  unreachable, !dbg !1522

75:                                               ; preds = %70
  %76 = add nsw i32 %4, 2, !dbg !1523
  store i32 %76, ptr @pos, align 4, !dbg !1523, !tbaa !1052
  %77 = sext i32 %76 to i64, !dbg !1524
  %78 = getelementptr ptr, ptr %3, i64 %77, !dbg !1524
  %79 = getelementptr ptr, ptr %78, i64 -1, !dbg !1524
  %80 = load ptr, ptr %79, align 8, !dbg !1524, !tbaa !951
  %81 = call i32 @stat(ptr noundef %80, ptr noundef nonnull %2) #40, !dbg !1526
  %82 = icmp eq i32 %81, 0, !dbg !1527
  br i1 %82, label %83, label %395, !dbg !1528

83:                                               ; preds = %75
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1529, metadata !DIExpression()), !dbg !1537
  %84 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 11, !dbg !1539
  %85 = load i64, ptr %84, align 8, !dbg !1539, !tbaa.struct !1540
  %86 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 11, i32 1, !dbg !1539
  %87 = load i64, ptr %86, align 8, !dbg !1539, !tbaa.struct !1543
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !1444, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1544
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !1444, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1544
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1545, metadata !DIExpression()), !dbg !1548
  %88 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 12, !dbg !1550
  %89 = load i64, ptr %88, align 8, !dbg !1550, !tbaa.struct !1540
  %90 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 12, i32 1, !dbg !1550
  %91 = load i64, ptr %90, align 8, !dbg !1550, !tbaa.struct !1543
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1447, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1544
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !1447, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1544
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !1551, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1558
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !1551, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1558
  tail call void @llvm.dbg.value(metadata i64 %85, metadata !1557, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1558
  tail call void @llvm.dbg.value(metadata i64 %87, metadata !1557, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1558
  %92 = icmp sgt i64 %89, %85, !dbg !1560
  %93 = zext i1 %92 to i32, !dbg !1560
  %94 = icmp slt i64 %89, %85, !dbg !1560
  %95 = sext i1 %94 to i32, !dbg !1560
  %96 = add nsw i32 %95, %93, !dbg !1560
  %97 = shl nsw i32 %96, 1, !dbg !1561
  %98 = icmp sgt i64 %91, %87, !dbg !1562
  %99 = zext i1 %98 to i32, !dbg !1562
  %100 = icmp slt i64 %91, %87, !dbg !1562
  %101 = sext i1 %100 to i32, !dbg !1562
  %102 = add nsw i32 %101, %99, !dbg !1562
  %103 = add nsw i32 %102, %97, !dbg !1563
  %104 = icmp sgt i32 %103, 0, !dbg !1564
  br label %395

105:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1565
  %106 = add nsw i32 %4, 1, !dbg !1568
  store i32 %106, ptr @pos, align 4, !dbg !1568, !tbaa !1052
  %107 = load i32, ptr @argc, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %110, label %109, !dbg !1569

109:                                              ; preds = %105
  tail call fastcc void @beyond(), !dbg !1570
  unreachable, !dbg !1570

110:                                              ; preds = %105
  %111 = add nsw i32 %4, 2, !dbg !1571
  store i32 %111, ptr @pos, align 4, !dbg !1571, !tbaa !1052
  %112 = sext i32 %111 to i64, !dbg !1572
  %113 = getelementptr ptr, ptr %3, i64 %112, !dbg !1572
  %114 = getelementptr ptr, ptr %113, i64 -1, !dbg !1572
  %115 = load ptr, ptr %114, align 8, !dbg !1572, !tbaa !951
  %116 = call i32 @stat(ptr noundef %115, ptr noundef nonnull %2) #40, !dbg !1574
  %117 = icmp eq i32 %116, 0, !dbg !1575
  br i1 %117, label %118, label %395, !dbg !1576

118:                                              ; preds = %110
  %119 = tail call ptr @__errno_location() #43, !dbg !1577
  store i32 0, ptr %119, align 4, !dbg !1578, !tbaa !1052
  %120 = tail call i32 @geteuid() #40, !dbg !1579
  tail call void @llvm.dbg.value(metadata i32 %120, metadata !1448, metadata !DIExpression()), !dbg !1580
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1452, metadata !DIExpression()), !dbg !1580
  %121 = icmp eq i32 %120, -1, !dbg !1581
  br i1 %121, label %122, label %125, !dbg !1582

122:                                              ; preds = %118
  %123 = load i32, ptr %119, align 4, !dbg !1583, !tbaa !1052
  %124 = icmp eq i32 %123, 0, !dbg !1583
  br i1 %124, label %125, label %395, !dbg !1584

125:                                              ; preds = %122, %118
  %126 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 4, !dbg !1585
  %127 = load i32, ptr %126, align 4, !dbg !1585, !tbaa !1586
  %128 = icmp eq i32 %120, %127, !dbg !1589
  br label %395

129:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1590
  %130 = add nsw i32 %4, 1, !dbg !1593
  store i32 %130, ptr @pos, align 4, !dbg !1593, !tbaa !1052
  %131 = load i32, ptr @argc, align 4
  %132 = icmp slt i32 %130, %131
  br i1 %132, label %134, label %133, !dbg !1594

133:                                              ; preds = %129
  tail call fastcc void @beyond(), !dbg !1595
  unreachable, !dbg !1595

134:                                              ; preds = %129
  %135 = add nsw i32 %4, 2, !dbg !1596
  store i32 %135, ptr @pos, align 4, !dbg !1596, !tbaa !1052
  %136 = sext i32 %135 to i64, !dbg !1597
  %137 = getelementptr ptr, ptr %3, i64 %136, !dbg !1597
  %138 = getelementptr ptr, ptr %137, i64 -1, !dbg !1597
  %139 = load ptr, ptr %138, align 8, !dbg !1597, !tbaa !951
  %140 = call i32 @stat(ptr noundef %139, ptr noundef nonnull %2) #40, !dbg !1599
  %141 = icmp eq i32 %140, 0, !dbg !1600
  br i1 %141, label %142, label %395, !dbg !1601

142:                                              ; preds = %134
  %143 = tail call ptr @__errno_location() #43, !dbg !1602
  store i32 0, ptr %143, align 4, !dbg !1603, !tbaa !1052
  %144 = tail call i32 @getegid() #40, !dbg !1604
  tail call void @llvm.dbg.value(metadata i32 %144, metadata !1453, metadata !DIExpression()), !dbg !1605
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !1456, metadata !DIExpression()), !dbg !1605
  %145 = icmp eq i32 %144, -1, !dbg !1606
  br i1 %145, label %146, label %149, !dbg !1607

146:                                              ; preds = %142
  %147 = load i32, ptr %143, align 4, !dbg !1608, !tbaa !1052
  %148 = icmp eq i32 %147, 0, !dbg !1608
  br i1 %148, label %149, label %395, !dbg !1609

149:                                              ; preds = %146, %142
  %150 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 5, !dbg !1610
  %151 = load i32, ptr %150, align 8, !dbg !1610, !tbaa !1611
  %152 = icmp eq i32 %144, %151, !dbg !1612
  br label %395

153:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1613
  %154 = add nsw i32 %4, 1, !dbg !1616
  store i32 %154, ptr @pos, align 4, !dbg !1616, !tbaa !1052
  %155 = load i32, ptr @argc, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %158, label %157, !dbg !1617

157:                                              ; preds = %153
  tail call fastcc void @beyond(), !dbg !1618
  unreachable, !dbg !1618

158:                                              ; preds = %153
  %159 = add nsw i32 %4, 2, !dbg !1619
  store i32 %159, ptr @pos, align 4, !dbg !1619, !tbaa !1052
  %160 = sext i32 %159 to i64, !dbg !1620
  %161 = getelementptr ptr, ptr %3, i64 %160, !dbg !1620
  %162 = getelementptr ptr, ptr %161, i64 -1, !dbg !1620
  %163 = load ptr, ptr %162, align 8, !dbg !1620, !tbaa !951
  %164 = call i32 @stat(ptr noundef %163, ptr noundef nonnull %2) #40, !dbg !1621
  %165 = icmp eq i32 %164, 0, !dbg !1622
  %166 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1623
  %167 = load i32, ptr %166, align 8, !dbg !1623
  %168 = and i32 %167, 61440, !dbg !1623
  %169 = icmp eq i32 %168, 32768, !dbg !1623
  %170 = select i1 %165, i1 %169, i1 false, !dbg !1623
  br label %395, !dbg !1624

171:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1625
  %172 = add nsw i32 %4, 1, !dbg !1628
  store i32 %172, ptr @pos, align 4, !dbg !1628, !tbaa !1052
  %173 = load i32, ptr @argc, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %176, label %175, !dbg !1629

175:                                              ; preds = %171
  tail call fastcc void @beyond(), !dbg !1630
  unreachable, !dbg !1630

176:                                              ; preds = %171
  %177 = add nsw i32 %4, 2, !dbg !1631
  store i32 %177, ptr @pos, align 4, !dbg !1631, !tbaa !1052
  %178 = sext i32 %177 to i64, !dbg !1632
  %179 = getelementptr ptr, ptr %3, i64 %178, !dbg !1632
  %180 = getelementptr ptr, ptr %179, i64 -1, !dbg !1632
  %181 = load ptr, ptr %180, align 8, !dbg !1632, !tbaa !951
  %182 = call i32 @stat(ptr noundef %181, ptr noundef nonnull %2) #40, !dbg !1633
  %183 = icmp eq i32 %182, 0, !dbg !1634
  %184 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1635
  %185 = load i32, ptr %184, align 8, !dbg !1635
  %186 = and i32 %185, 61440, !dbg !1635
  %187 = icmp eq i32 %186, 16384, !dbg !1635
  %188 = select i1 %183, i1 %187, i1 false, !dbg !1635
  br label %395, !dbg !1636

189:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1637
  %190 = add nsw i32 %4, 1, !dbg !1640
  store i32 %190, ptr @pos, align 4, !dbg !1640, !tbaa !1052
  %191 = load i32, ptr @argc, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %194, label %193, !dbg !1641

193:                                              ; preds = %189
  tail call fastcc void @beyond(), !dbg !1642
  unreachable, !dbg !1642

194:                                              ; preds = %189
  %195 = add nsw i32 %4, 2, !dbg !1643
  store i32 %195, ptr @pos, align 4, !dbg !1643, !tbaa !1052
  %196 = sext i32 %195 to i64, !dbg !1644
  %197 = getelementptr ptr, ptr %3, i64 %196, !dbg !1644
  %198 = getelementptr ptr, ptr %197, i64 -1, !dbg !1644
  %199 = load ptr, ptr %198, align 8, !dbg !1644, !tbaa !951
  %200 = call i32 @stat(ptr noundef %199, ptr noundef nonnull %2) #40, !dbg !1645
  %201 = icmp eq i32 %200, 0, !dbg !1646
  %202 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 8, !dbg !1647
  %203 = load i64, ptr %202, align 8, !dbg !1647
  %204 = icmp sgt i64 %203, 0, !dbg !1647
  %205 = select i1 %201, i1 %204, i1 false, !dbg !1647
  br label %395, !dbg !1648

206:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1649
  %207 = add nsw i32 %4, 1, !dbg !1652
  store i32 %207, ptr @pos, align 4, !dbg !1652, !tbaa !1052
  %208 = load i32, ptr @argc, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %211, label %210, !dbg !1653

210:                                              ; preds = %206
  tail call fastcc void @beyond(), !dbg !1654
  unreachable, !dbg !1654

211:                                              ; preds = %206
  %212 = add nsw i32 %4, 2, !dbg !1655
  store i32 %212, ptr @pos, align 4, !dbg !1655, !tbaa !1052
  %213 = sext i32 %212 to i64, !dbg !1656
  %214 = getelementptr ptr, ptr %3, i64 %213, !dbg !1656
  %215 = getelementptr ptr, ptr %214, i64 -1, !dbg !1656
  %216 = load ptr, ptr %215, align 8, !dbg !1656, !tbaa !951
  %217 = call i32 @stat(ptr noundef %216, ptr noundef nonnull %2) #40, !dbg !1657
  %218 = icmp eq i32 %217, 0, !dbg !1658
  %219 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1659
  %220 = load i32, ptr %219, align 8, !dbg !1659
  %221 = and i32 %220, 61440, !dbg !1659
  %222 = icmp eq i32 %221, 49152, !dbg !1659
  %223 = select i1 %218, i1 %222, i1 false, !dbg !1659
  br label %395, !dbg !1660

224:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1661
  %225 = add nsw i32 %4, 1, !dbg !1664
  store i32 %225, ptr @pos, align 4, !dbg !1664, !tbaa !1052
  %226 = load i32, ptr @argc, align 4
  %227 = icmp slt i32 %225, %226
  br i1 %227, label %229, label %228, !dbg !1665

228:                                              ; preds = %224
  tail call fastcc void @beyond(), !dbg !1666
  unreachable, !dbg !1666

229:                                              ; preds = %224
  %230 = add nsw i32 %4, 2, !dbg !1667
  store i32 %230, ptr @pos, align 4, !dbg !1667, !tbaa !1052
  %231 = sext i32 %230 to i64, !dbg !1668
  %232 = getelementptr ptr, ptr %3, i64 %231, !dbg !1668
  %233 = getelementptr ptr, ptr %232, i64 -1, !dbg !1668
  %234 = load ptr, ptr %233, align 8, !dbg !1668, !tbaa !951
  %235 = call i32 @stat(ptr noundef %234, ptr noundef nonnull %2) #40, !dbg !1669
  %236 = icmp eq i32 %235, 0, !dbg !1670
  %237 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1671
  %238 = load i32, ptr %237, align 8, !dbg !1671
  %239 = and i32 %238, 61440, !dbg !1671
  %240 = icmp eq i32 %239, 8192, !dbg !1671
  %241 = select i1 %236, i1 %240, i1 false, !dbg !1671
  br label %395, !dbg !1672

242:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1673
  %243 = add nsw i32 %4, 1, !dbg !1676
  store i32 %243, ptr @pos, align 4, !dbg !1676, !tbaa !1052
  %244 = load i32, ptr @argc, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %247, label %246, !dbg !1677

246:                                              ; preds = %242
  tail call fastcc void @beyond(), !dbg !1678
  unreachable, !dbg !1678

247:                                              ; preds = %242
  %248 = add nsw i32 %4, 2, !dbg !1679
  store i32 %248, ptr @pos, align 4, !dbg !1679, !tbaa !1052
  %249 = sext i32 %248 to i64, !dbg !1680
  %250 = getelementptr ptr, ptr %3, i64 %249, !dbg !1680
  %251 = getelementptr ptr, ptr %250, i64 -1, !dbg !1680
  %252 = load ptr, ptr %251, align 8, !dbg !1680, !tbaa !951
  %253 = call i32 @stat(ptr noundef %252, ptr noundef nonnull %2) #40, !dbg !1681
  %254 = icmp eq i32 %253, 0, !dbg !1682
  %255 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1683
  %256 = load i32, ptr %255, align 8, !dbg !1683
  %257 = and i32 %256, 61440, !dbg !1683
  %258 = icmp eq i32 %257, 24576, !dbg !1683
  %259 = select i1 %254, i1 %258, i1 false, !dbg !1683
  br label %395, !dbg !1684

260:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1685
  %261 = add nsw i32 %4, 1, !dbg !1688
  store i32 %261, ptr @pos, align 4, !dbg !1688, !tbaa !1052
  %262 = load i32, ptr @argc, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %265, label %264, !dbg !1689

264:                                              ; preds = %260
  tail call fastcc void @beyond(), !dbg !1690
  unreachable, !dbg !1690

265:                                              ; preds = %260
  %266 = add nsw i32 %4, 2, !dbg !1691
  store i32 %266, ptr @pos, align 4, !dbg !1691, !tbaa !1052
  %267 = sext i32 %266 to i64, !dbg !1692
  %268 = getelementptr ptr, ptr %3, i64 %267, !dbg !1692
  %269 = getelementptr ptr, ptr %268, i64 -1, !dbg !1692
  %270 = load ptr, ptr %269, align 8, !dbg !1692, !tbaa !951
  %271 = call i32 @stat(ptr noundef %270, ptr noundef nonnull %2) #40, !dbg !1693
  %272 = icmp eq i32 %271, 0, !dbg !1694
  %273 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1695
  %274 = load i32, ptr %273, align 8, !dbg !1695
  %275 = and i32 %274, 61440, !dbg !1695
  %276 = icmp eq i32 %275, 4096, !dbg !1695
  %277 = select i1 %272, i1 %276, i1 false, !dbg !1695
  br label %395, !dbg !1696

278:                                              ; preds = %0, %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1697
  %279 = add nsw i32 %4, 1, !dbg !1700
  store i32 %279, ptr @pos, align 4, !dbg !1700, !tbaa !1052
  %280 = load i32, ptr @argc, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %283, label %282, !dbg !1701

282:                                              ; preds = %278
  tail call fastcc void @beyond(), !dbg !1702
  unreachable, !dbg !1702

283:                                              ; preds = %278
  %284 = add nsw i32 %4, 2, !dbg !1703
  store i32 %284, ptr @pos, align 4, !dbg !1703, !tbaa !1052
  %285 = sext i32 %284 to i64, !dbg !1704
  %286 = getelementptr ptr, ptr %3, i64 %285, !dbg !1704
  %287 = getelementptr ptr, ptr %286, i64 -1, !dbg !1704
  %288 = load ptr, ptr %287, align 8, !dbg !1704, !tbaa !951
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1705, metadata !DIExpression(), metadata !1460, metadata ptr %1, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata ptr %288, metadata !1711, metadata !DIExpression()), !dbg !1712
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #40, !dbg !1714
  %289 = call i64 @readlink(ptr noundef nonnull %288, ptr noundef nonnull %1, i64 noundef 1) #40, !dbg !1715
  %290 = icmp sgt i64 %289, -1, !dbg !1717
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #40, !dbg !1718
  br label %395, !dbg !1719

291:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1720
  %292 = add nsw i32 %4, 1, !dbg !1723
  store i32 %292, ptr @pos, align 4, !dbg !1723, !tbaa !1052
  %293 = load i32, ptr @argc, align 4
  %294 = icmp slt i32 %292, %293
  br i1 %294, label %296, label %295, !dbg !1724

295:                                              ; preds = %291
  tail call fastcc void @beyond(), !dbg !1725
  unreachable, !dbg !1725

296:                                              ; preds = %291
  %297 = add nsw i32 %4, 2, !dbg !1726
  store i32 %297, ptr @pos, align 4, !dbg !1726, !tbaa !1052
  %298 = sext i32 %297 to i64, !dbg !1727
  %299 = getelementptr ptr, ptr %3, i64 %298, !dbg !1727
  %300 = getelementptr ptr, ptr %299, i64 -1, !dbg !1727
  %301 = load ptr, ptr %300, align 8, !dbg !1727, !tbaa !951
  %302 = call i32 @stat(ptr noundef %301, ptr noundef nonnull %2) #40, !dbg !1728
  %303 = icmp eq i32 %302, 0, !dbg !1729
  %304 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1730
  %305 = load i32, ptr %304, align 8, !dbg !1730
  %306 = and i32 %305, 2048, !dbg !1730
  %307 = icmp ne i32 %306, 0, !dbg !1730
  %308 = select i1 %303, i1 %307, i1 false, !dbg !1730
  br label %395, !dbg !1731

309:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1732
  %310 = add nsw i32 %4, 1, !dbg !1735
  store i32 %310, ptr @pos, align 4, !dbg !1735, !tbaa !1052
  %311 = load i32, ptr @argc, align 4
  %312 = icmp slt i32 %310, %311
  br i1 %312, label %314, label %313, !dbg !1736

313:                                              ; preds = %309
  tail call fastcc void @beyond(), !dbg !1737
  unreachable, !dbg !1737

314:                                              ; preds = %309
  %315 = add nsw i32 %4, 2, !dbg !1738
  store i32 %315, ptr @pos, align 4, !dbg !1738, !tbaa !1052
  %316 = sext i32 %315 to i64, !dbg !1739
  %317 = getelementptr ptr, ptr %3, i64 %316, !dbg !1739
  %318 = getelementptr ptr, ptr %317, i64 -1, !dbg !1739
  %319 = load ptr, ptr %318, align 8, !dbg !1739, !tbaa !951
  %320 = call i32 @stat(ptr noundef %319, ptr noundef nonnull %2) #40, !dbg !1740
  %321 = icmp eq i32 %320, 0, !dbg !1741
  %322 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1742
  %323 = load i32, ptr %322, align 8, !dbg !1742
  %324 = and i32 %323, 1024, !dbg !1742
  %325 = icmp ne i32 %324, 0, !dbg !1742
  %326 = select i1 %321, i1 %325, i1 false, !dbg !1742
  br label %395, !dbg !1743

327:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1744
  %328 = add nsw i32 %4, 1, !dbg !1747
  store i32 %328, ptr @pos, align 4, !dbg !1747, !tbaa !1052
  %329 = load i32, ptr @argc, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %332, label %331, !dbg !1748

331:                                              ; preds = %327
  tail call fastcc void @beyond(), !dbg !1749
  unreachable, !dbg !1749

332:                                              ; preds = %327
  %333 = add nsw i32 %4, 2, !dbg !1750
  store i32 %333, ptr @pos, align 4, !dbg !1750, !tbaa !1052
  %334 = sext i32 %333 to i64, !dbg !1751
  %335 = getelementptr ptr, ptr %3, i64 %334, !dbg !1751
  %336 = getelementptr ptr, ptr %335, i64 -1, !dbg !1751
  %337 = load ptr, ptr %336, align 8, !dbg !1751, !tbaa !951
  %338 = call i32 @stat(ptr noundef %337, ptr noundef nonnull %2) #40, !dbg !1752
  %339 = icmp eq i32 %338, 0, !dbg !1753
  %340 = getelementptr inbounds %struct.stat, ptr %2, i64 0, i32 3, !dbg !1754
  %341 = load i32, ptr %340, align 8, !dbg !1754
  %342 = and i32 %341, 512, !dbg !1754
  %343 = icmp ne i32 %342, 0, !dbg !1754
  %344 = select i1 %339, i1 %343, i1 false, !dbg !1754
  br label %395, !dbg !1755

345:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1756
  %346 = add nsw i32 %4, 1, !dbg !1759
  store i32 %346, ptr @pos, align 4, !dbg !1759, !tbaa !1052
  %347 = load i32, ptr @argc, align 4
  %348 = icmp slt i32 %346, %347
  br i1 %348, label %350, label %349, !dbg !1760

349:                                              ; preds = %345
  tail call fastcc void @beyond(), !dbg !1761
  unreachable, !dbg !1761

350:                                              ; preds = %345
  %351 = add nsw i32 %4, 2, !dbg !1762
  store i32 %351, ptr @pos, align 4, !dbg !1762, !tbaa !1052
  %352 = sext i32 %351 to i64, !dbg !1763
  %353 = getelementptr ptr, ptr %3, i64 %352, !dbg !1763
  %354 = getelementptr ptr, ptr %353, i64 -1, !dbg !1763
  %355 = load ptr, ptr %354, align 8, !dbg !1763, !tbaa !951
  %356 = tail call fastcc ptr @find_int(ptr noundef %355), !dbg !1764
  tail call void @llvm.dbg.value(metadata ptr %356, metadata !1459, metadata !DIExpression()), !dbg !1765
  %357 = tail call ptr @__errno_location() #43, !dbg !1766
  store i32 0, ptr %357, align 4, !dbg !1767, !tbaa !1052
  %358 = tail call i64 @strtol(ptr nocapture noundef %356, ptr noundef null, i32 noundef 10) #40, !dbg !1768
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !1457, metadata !DIExpression()), !dbg !1765
  %359 = load i32, ptr %357, align 4, !dbg !1769, !tbaa !1052
  %360 = icmp ne i32 %359, 34, !dbg !1770
  %361 = icmp sgt i64 %358, -1
  %362 = select i1 %360, i1 %361, i1 false, !dbg !1771
  %363 = icmp slt i64 %358, 2147483648
  %364 = select i1 %362, i1 %363, i1 false, !dbg !1771
  br i1 %364, label %365, label %395, !dbg !1771

365:                                              ; preds = %350
  %366 = trunc i64 %358 to i32, !dbg !1772
  %367 = tail call i32 @isatty(i32 noundef %366) #40, !dbg !1773
  %368 = icmp ne i32 %367, 0, !dbg !1774
  br label %395

369:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1775
  %370 = add nsw i32 %4, 1, !dbg !1778
  store i32 %370, ptr @pos, align 4, !dbg !1778, !tbaa !1052
  %371 = load i32, ptr @argc, align 4
  %372 = icmp slt i32 %370, %371
  br i1 %372, label %374, label %373, !dbg !1779

373:                                              ; preds = %369
  tail call fastcc void @beyond(), !dbg !1780
  unreachable, !dbg !1780

374:                                              ; preds = %369
  %375 = add nsw i32 %4, 2, !dbg !1781
  store i32 %375, ptr @pos, align 4, !dbg !1781, !tbaa !1052
  %376 = sext i32 %375 to i64, !dbg !1782
  %377 = getelementptr ptr, ptr %3, i64 %376, !dbg !1782
  %378 = getelementptr ptr, ptr %377, i64 -1, !dbg !1782
  %379 = load ptr, ptr %378, align 8, !dbg !1782, !tbaa !951
  %380 = load i8, ptr %379, align 1, !dbg !1782, !tbaa !1061
  %381 = icmp ne i8 %380, 0, !dbg !1783
  br label %395, !dbg !1784

382:                                              ; preds = %0
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1785
  %383 = add nsw i32 %4, 1, !dbg !1788
  store i32 %383, ptr @pos, align 4, !dbg !1788, !tbaa !1052
  %384 = load i32, ptr @argc, align 4
  %385 = icmp slt i32 %383, %384
  br i1 %385, label %387, label %386, !dbg !1789

386:                                              ; preds = %382
  tail call fastcc void @beyond(), !dbg !1790
  unreachable, !dbg !1790

387:                                              ; preds = %382
  %388 = add nsw i32 %4, 2, !dbg !1791
  store i32 %388, ptr @pos, align 4, !dbg !1791, !tbaa !1052
  %389 = sext i32 %388 to i64, !dbg !1792
  %390 = getelementptr ptr, ptr %3, i64 %389, !dbg !1792
  %391 = getelementptr ptr, ptr %390, i64 -1, !dbg !1792
  %392 = load ptr, ptr %391, align 8, !dbg !1792, !tbaa !951
  %393 = load i8, ptr %392, align 1, !dbg !1792, !tbaa !1061
  %394 = icmp eq i8 %393, 0, !dbg !1793
  br label %395, !dbg !1794

395:                                              ; preds = %350, %365, %146, %149, %134, %122, %125, %110, %75, %387, %374, %332, %314, %296, %283, %265, %247, %229, %211, %194, %176, %158, %83, %62, %49, %36, %23
  %396 = phi i1 [ %394, %387 ], [ %381, %374 ], [ %344, %332 ], [ %326, %314 ], [ %308, %296 ], [ %290, %283 ], [ %277, %265 ], [ %259, %247 ], [ %241, %229 ], [ %223, %211 ], [ %205, %194 ], [ %188, %176 ], [ %170, %158 ], [ %104, %83 ], [ %69, %62 ], [ %56, %49 ], [ %43, %36 ], [ %30, %23 ], [ false, %75 ], [ false, %110 ], [ false, %122 ], [ %128, %125 ], [ false, %134 ], [ false, %146 ], [ %152, %149 ], [ false, %350 ], [ %368, %365 ], !dbg !1795
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #40, !dbg !1796
  ret i1 %396, !dbg !1796
}

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @beyond() unnamed_addr #0 !dbg !1797 {
  %1 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.92, i32 noundef 5) #40, !dbg !1798
  %2 = load ptr, ptr @argv, align 8, !dbg !1799, !tbaa !951
  %3 = load i32, ptr @argc, align 4, !dbg !1800, !tbaa !1052
  %4 = sext i32 %3 to i64, !dbg !1799
  %5 = getelementptr ptr, ptr %2, i64 %4, !dbg !1799
  %6 = getelementptr ptr, ptr %5, i64 -1, !dbg !1799
  %7 = load ptr, ptr %6, align 8, !dbg !1799, !tbaa !951
  %8 = tail call ptr @quote(ptr noundef %7) #40, !dbg !1801
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %1, ptr noundef %8) #44, !dbg !1802
  unreachable, !dbg !1802
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @three_arguments() unnamed_addr #10 !dbg !1803 {
  %1 = load ptr, ptr @argv, align 8, !dbg !1807, !tbaa !951
  %2 = load i32, ptr @pos, align 4, !dbg !1808, !tbaa !1052
  %3 = sext i32 %2 to i64, !dbg !1807
  %4 = getelementptr ptr, ptr %1, i64 %3, !dbg !1807
  %5 = getelementptr ptr, ptr %4, i64 1, !dbg !1807
  %6 = load ptr, ptr %5, align 8, !dbg !1807, !tbaa !951
  %7 = tail call fastcc i32 @binop(ptr noundef %6), !dbg !1809, !range !1810
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !1806, metadata !DIExpression()), !dbg !1811
  %8 = icmp sgt i32 %7, -1, !dbg !1812
  br i1 %8, label %9, label %11, !dbg !1814

9:                                                ; preds = %0
  %10 = tail call fastcc zeroext i1 @binary_operator(i1 noundef zeroext false, i32 noundef %7), !dbg !1815
  tail call void @llvm.dbg.value(metadata i1 %10, metadata !1805, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1811
  br label %87, !dbg !1816

11:                                               ; preds = %0
  %12 = load ptr, ptr %4, align 8, !dbg !1817, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %12, metadata !1063, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata ptr @.str.85, metadata !1069, metadata !DIExpression()), !dbg !1819
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(2) @.str.85) #41, !dbg !1821
  %14 = icmp eq i32 %13, 0, !dbg !1822
  br i1 %14, label %15, label %48, !dbg !1823

15:                                               ; preds = %11
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1824
  %16 = add nsw i32 %2, 1, !dbg !1827
  store i32 %16, ptr @pos, align 4, !dbg !1827, !tbaa !1052
  %17 = load i32, ptr @argc, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %20, label %19, !dbg !1828

19:                                               ; preds = %15
  tail call fastcc void @beyond(), !dbg !1829
  unreachable, !dbg !1829

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %6, metadata !1063, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata ptr @.str.85, metadata !1069, metadata !DIExpression()), !dbg !1830
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.85) #41, !dbg !1833
  %22 = icmp eq i32 %21, 0, !dbg !1834
  br i1 %22, label %23, label %31, !dbg !1835

23:                                               ; preds = %20
  %24 = sext i32 %16 to i64, !dbg !1836
  %25 = getelementptr ptr, ptr %1, i64 %24, !dbg !1836
  %26 = add nsw i32 %2, 3, !dbg !1837
  store i32 %26, ptr @pos, align 4, !dbg !1837, !tbaa !1052
  %27 = getelementptr ptr, ptr %25, i64 1, !dbg !1839
  %28 = load ptr, ptr %27, align 8, !dbg !1839, !tbaa !951
  %29 = load i8, ptr %28, align 1, !dbg !1839, !tbaa !1061
  %30 = icmp eq i8 %29, 0, !dbg !1840
  call void @llvm.dbg.value(metadata i1 %30, metadata !1274, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1841
  br label %45, !dbg !1842

31:                                               ; preds = %20
  %32 = load i8, ptr %6, align 1, !dbg !1843, !tbaa !1061
  %33 = icmp eq i8 %32, 45, !dbg !1844
  br i1 %33, label %34, label %44, !dbg !1845

34:                                               ; preds = %31
  %35 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !1846
  %36 = load i8, ptr %35, align 1, !dbg !1846, !tbaa !1061
  %37 = icmp eq i8 %36, 0, !dbg !1847
  br i1 %37, label %44, label %38, !dbg !1848

38:                                               ; preds = %34
  %39 = getelementptr inbounds i8, ptr %6, i64 2, !dbg !1849
  %40 = load i8, ptr %39, align 1, !dbg !1849, !tbaa !1061
  %41 = icmp eq i8 %40, 0, !dbg !1850
  br i1 %41, label %42, label %44, !dbg !1851

42:                                               ; preds = %38
  %43 = tail call fastcc zeroext i1 @unary_operator(), !dbg !1852
  call void @llvm.dbg.value(metadata i1 %43, metadata !1274, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1841
  br label %45

44:                                               ; preds = %38, %34, %31
  tail call fastcc void @beyond() #44, !dbg !1853
  unreachable, !dbg !1853

45:                                               ; preds = %23, %42
  %46 = phi i1 [ %30, %23 ], [ %43, %42 ]
  call void @llvm.dbg.value(metadata i1 %46, metadata !1274, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1841
  %47 = xor i1 %46, true, !dbg !1854
  tail call void @llvm.dbg.value(metadata i1 %47, metadata !1805, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1811
  br label %87, !dbg !1855

48:                                               ; preds = %11
  call void @llvm.dbg.value(metadata ptr %12, metadata !1063, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata ptr @.str.86, metadata !1069, metadata !DIExpression()), !dbg !1856
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(2) @.str.86) #41, !dbg !1859
  %50 = icmp eq i32 %49, 0, !dbg !1860
  br i1 %50, label %51, label %60, !dbg !1861

51:                                               ; preds = %48
  %52 = getelementptr ptr, ptr %4, i64 2, !dbg !1862
  %53 = load ptr, ptr %52, align 8, !dbg !1862, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %53, metadata !1063, metadata !DIExpression()), !dbg !1863
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1069, metadata !DIExpression()), !dbg !1863
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %53, ptr noundef nonnull dereferenceable(2) @.str.87) #41, !dbg !1865
  %55 = icmp eq i32 %54, 0, !dbg !1866
  br i1 %55, label %56, label %60, !dbg !1867

56:                                               ; preds = %51
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1868
  %57 = load i8, ptr %6, align 1, !dbg !1871, !tbaa !1061
  %58 = icmp ne i8 %57, 0, !dbg !1873
  tail call void @llvm.dbg.value(metadata i1 %58, metadata !1805, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1811
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1874
  %59 = add nsw i32 %2, 3, !dbg !1876
  store i32 %59, ptr @pos, align 4, !dbg !1876, !tbaa !1052
  br label %87, !dbg !1877

60:                                               ; preds = %51, %48
  call void @llvm.dbg.value(metadata ptr %6, metadata !1063, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata ptr @.str.93, metadata !1069, metadata !DIExpression()), !dbg !1878
  %61 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(3) @.str.93) #41, !dbg !1881
  %62 = icmp eq i32 %61, 0, !dbg !1882
  br i1 %62, label %72, label %63, !dbg !1883

63:                                               ; preds = %60
  call void @llvm.dbg.value(metadata ptr %6, metadata !1063, metadata !DIExpression()), !dbg !1884
  call void @llvm.dbg.value(metadata ptr @.str.94, metadata !1069, metadata !DIExpression()), !dbg !1884
  %64 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(3) @.str.94) #41, !dbg !1886
  %65 = icmp eq i32 %64, 0, !dbg !1887
  br i1 %65, label %72, label %66, !dbg !1888

66:                                               ; preds = %63
  call void @llvm.dbg.value(metadata ptr %6, metadata !1063, metadata !DIExpression()), !dbg !1889
  call void @llvm.dbg.value(metadata ptr @.str.95, metadata !1069, metadata !DIExpression()), !dbg !1889
  %67 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.95) #41, !dbg !1891
  %68 = icmp eq i32 %67, 0, !dbg !1892
  br i1 %68, label %72, label %69, !dbg !1893

69:                                               ; preds = %66
  call void @llvm.dbg.value(metadata ptr %6, metadata !1063, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata ptr @.str.96, metadata !1069, metadata !DIExpression()), !dbg !1894
  %70 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(2) @.str.96) #41, !dbg !1896
  %71 = icmp eq i32 %70, 0, !dbg !1897
  br i1 %71, label %72, label %78, !dbg !1898

72:                                               ; preds = %69, %66, %63, %60
  %73 = load i32, ptr @argc, align 4, !dbg !1899, !tbaa !1052
  %74 = icmp slt i32 %2, %73, !dbg !1901
  br i1 %74, label %76, label %75, !dbg !1902

75:                                               ; preds = %72
  tail call fastcc void @beyond() #44, !dbg !1903
  unreachable, !dbg !1903

76:                                               ; preds = %72
  %77 = tail call fastcc zeroext i1 @or(), !dbg !1904
  tail call void @llvm.dbg.value(metadata i1 %77, metadata !1805, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1811
  br label %87

78:                                               ; preds = %69
  %79 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.97, i32 noundef 5) #40, !dbg !1905
  %80 = load ptr, ptr @argv, align 8, !dbg !1906, !tbaa !951
  %81 = load i32, ptr @pos, align 4, !dbg !1907, !tbaa !1052
  %82 = sext i32 %81 to i64, !dbg !1906
  %83 = getelementptr ptr, ptr %80, i64 %82, !dbg !1906
  %84 = getelementptr ptr, ptr %83, i64 1, !dbg !1906
  %85 = load ptr, ptr %84, align 8, !dbg !1906, !tbaa !951
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
define internal fastcc zeroext i1 @or() unnamed_addr #10 !dbg !1915 {
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1917, metadata !DIExpression()), !dbg !1918
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1917, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 1, metadata !1919, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i8 poison, metadata !1919, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i8 0, metadata !1925, metadata !DIExpression()), !dbg !1933
  %1 = load i32, ptr @argc, align 4
  %2 = load i32, ptr @pos, align 4, !tbaa !1052
  call void @llvm.dbg.value(metadata i8 poison, metadata !1925, metadata !DIExpression()), !dbg !1933
  %3 = icmp slt i32 %2, %1, !dbg !1936
  br i1 %3, label %4, label %43, !dbg !1937

4:                                                ; preds = %0
  %5 = load ptr, ptr @argv, align 8, !tbaa !951
  br label %6, !dbg !1938

6:                                                ; preds = %4, %194
  %7 = phi ptr [ %177, %194 ], [ %5, %4 ]
  %8 = phi i32 [ %195, %194 ], [ %2, %4 ]
  %9 = phi i32 [ %174, %194 ], [ %1, %4 ]
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
  %20 = load ptr, ptr %19, align 8, !dbg !1939, !tbaa !951
  %21 = load i8, ptr %20, align 1, !dbg !1939, !tbaa !1061
  %22 = icmp eq i8 %21, 33, !dbg !1940
  br i1 %22, label %23, label %44, !dbg !1941

23:                                               ; preds = %11, %36
  %24 = phi ptr [ %40, %36 ], [ %20, %11 ]
  %25 = phi i1 [ %37, %36 ], [ false, %11 ]
  %26 = phi i64 [ %32, %36 ], [ %16, %11 ]
  %27 = phi i32 [ %38, %36 ], [ %18, %11 ]
  %28 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1942
  %29 = load i8, ptr %28, align 1, !dbg !1942, !tbaa !1061
  %30 = icmp eq i8 %29, 0, !dbg !1943
  br i1 %30, label %31, label %44, !dbg !1944

31:                                               ; preds = %23
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1945
  %32 = add nsw i64 %26, 1, !dbg !1948
  %33 = trunc i64 %32 to i32, !dbg !1948
  store i32 %33, ptr @pos, align 4, !dbg !1948, !tbaa !1052
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
  %40 = load ptr, ptr %39, align 8, !dbg !1939, !tbaa !951
  %41 = load i8, ptr %40, align 1, !dbg !1939, !tbaa !1061
  %42 = icmp eq i8 %41, 33, !dbg !1940
  br i1 %42, label %23, label %44, !dbg !1941, !llvm.loop !1952

43:                                               ; preds = %194, %183, %0
  tail call fastcc void @beyond() #44, !dbg !1954
  unreachable, !dbg !1954

44:                                               ; preds = %36, %23, %11
  %45 = phi i32 [ %18, %11 ], [ %38, %36 ], [ %27, %23 ]
  %46 = phi i64 [ %16, %11 ], [ %32, %36 ], [ %26, %23 ]
  %47 = phi i1 [ false, %11 ], [ %37, %36 ], [ %25, %23 ]
  %48 = trunc i64 %46 to i32
  %49 = shl i64 %46, 32, !dbg !1956
  %50 = ashr exact i64 %49, 32, !dbg !1956
  %51 = getelementptr inbounds ptr, ptr %12, i64 %50, !dbg !1956
  %52 = load ptr, ptr %51, align 8, !dbg !1956, !tbaa !951
  %53 = load i8, ptr %52, align 1, !dbg !1956, !tbaa !1061
  %54 = icmp eq i8 %53, 40, !dbg !1957
  br i1 %54, label %55, label %132, !dbg !1958

55:                                               ; preds = %44
  %56 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !1959
  %57 = load i8, ptr %56, align 1, !dbg !1959, !tbaa !1061
  %58 = icmp eq i8 %57, 0, !dbg !1960
  br i1 %58, label %59, label %132, !dbg !1961

59:                                               ; preds = %55
  call void @llvm.dbg.value(metadata i1 true, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1962
  %60 = add nsw i32 %48, 1, !dbg !1964
  store i32 %60, ptr @pos, align 4, !dbg !1964, !tbaa !1052
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
  %69 = load ptr, ptr %68, align 8, !dbg !1973, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %69, metadata !1063, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1069, metadata !DIExpression()), !dbg !1974
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
  %79 = load ptr, ptr %78, align 8, !dbg !1973, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %79, metadata !1063, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1069, metadata !DIExpression()), !dbg !1974
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
  %88 = load ptr, ptr %87, align 8, !dbg !1973, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %88, metadata !1063, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1069, metadata !DIExpression()), !dbg !1974
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
  %97 = load ptr, ptr %96, align 8, !dbg !1973, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %97, metadata !1063, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata ptr @.str.87, metadata !1069, metadata !DIExpression()), !dbg !1974
  %98 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %97, ptr noundef nonnull dereferenceable(2) @.str.87) #41, !dbg !1976
  %99 = icmp eq i32 %98, 0, !dbg !1977
  %100 = sub nsw i32 %14, %60
  %101 = select i1 %99, i32 4, i32 %100, !dbg !1972
  br label %102, !dbg !1972

102:                                              ; preds = %94, %73, %65, %76, %82, %85, %91, %62
  %103 = phi i32 [ 1, %62 ], [ 1, %65 ], [ 2, %73 ], [ 2, %76 ], [ 3, %82 ], [ 3, %85 ], [ 4, %91 ], [ %101, %94 ], !dbg !1981
  call void @llvm.dbg.value(metadata i32 %103, metadata !1930, metadata !DIExpression()), !dbg !1966
  %104 = tail call fastcc zeroext i1 @posixtest(i32 noundef %103), !dbg !1982
  call void @llvm.dbg.value(metadata i1 %104, metadata !1928, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1933
  %105 = load ptr, ptr @argv, align 8, !dbg !1983, !tbaa !951
  %106 = load i32, ptr @pos, align 4, !dbg !1985, !tbaa !1052
  %107 = sext i32 %106 to i64, !dbg !1983
  %108 = getelementptr inbounds ptr, ptr %105, i64 %107, !dbg !1983
  %109 = load ptr, ptr %108, align 8, !dbg !1983, !tbaa !951
  %110 = icmp eq ptr %109, null, !dbg !1983
  br i1 %110, label %111, label %114, !dbg !1986

111:                                              ; preds = %102
  %112 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.114, i32 noundef 5) #40, !dbg !1987
  %113 = tail call ptr @quote(ptr noundef nonnull @.str.87) #40, !dbg !1988
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %112, ptr noundef %113) #44, !dbg !1989
  unreachable, !dbg !1989

114:                                              ; preds = %102
  %115 = load i8, ptr %109, align 1, !dbg !1990, !tbaa !1061
  %116 = icmp eq i8 %115, 41, !dbg !1992
  br i1 %116, label %117, label %121, !dbg !1993

117:                                              ; preds = %114
  %118 = getelementptr inbounds i8, ptr %109, i64 1, !dbg !1994
  %119 = load i8, ptr %118, align 1, !dbg !1994, !tbaa !1061
  %120 = icmp eq i8 %119, 0, !dbg !1994
  br i1 %120, label %130, label %121, !dbg !1995

121:                                              ; preds = %117, %114
  %122 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.115, i32 noundef 5) #40, !dbg !1996
  %123 = tail call ptr @quote_n(i32 noundef 0, ptr noundef nonnull @.str.87) #40, !dbg !1997
  %124 = load ptr, ptr @argv, align 8, !dbg !1998, !tbaa !951
  %125 = load i32, ptr @pos, align 4, !dbg !1999, !tbaa !1052
  %126 = sext i32 %125 to i64, !dbg !1998
  %127 = getelementptr inbounds ptr, ptr %124, i64 %126, !dbg !1998
  %128 = load ptr, ptr %127, align 8, !dbg !1998, !tbaa !951
  %129 = tail call ptr @quote_n(i32 noundef 1, ptr noundef %128) #40, !dbg !2000
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %122, ptr noundef %123, ptr noundef %129) #44, !dbg !2001
  unreachable, !dbg !2001

130:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i1 false, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2002
  %131 = add nsw i32 %106, 1, !dbg !2004
  store i32 %131, ptr @pos, align 4, !dbg !2004, !tbaa !1052
  br label %169, !dbg !2005

132:                                              ; preds = %55, %44
  %133 = sub nsw i32 %14, %48, !dbg !2006
  %134 = icmp sgt i32 %133, 3, !dbg !2008
  br i1 %134, label %135, label %145, !dbg !2009

135:                                              ; preds = %132
  call void @llvm.dbg.value(metadata ptr %52, metadata !1063, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata ptr @.str.110, metadata !1069, metadata !DIExpression()), !dbg !2010
  %136 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %52, ptr noundef nonnull dereferenceable(3) @.str.110) #41, !dbg !2012
  %137 = icmp eq i32 %136, 0, !dbg !2013
  br i1 %137, label %138, label %147, !dbg !2014

138:                                              ; preds = %135
  %139 = getelementptr ptr, ptr %51, i64 2, !dbg !2015
  %140 = load ptr, ptr %139, align 8, !dbg !2015, !tbaa !951
  %141 = tail call fastcc i32 @binop(ptr noundef %140), !dbg !2016, !range !1810
  call void @llvm.dbg.value(metadata i32 %141, metadata !1929, metadata !DIExpression()), !dbg !1933
  %142 = icmp sgt i32 %141, -1, !dbg !2017
  br i1 %142, label %143, label %147, !dbg !2018

143:                                              ; preds = %138
  %144 = tail call fastcc zeroext i1 @binary_operator(i1 noundef zeroext true, i32 noundef %141), !dbg !2019
  call void @llvm.dbg.value(metadata i1 %144, metadata !1928, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1933
  br label %169, !dbg !2020

145:                                              ; preds = %132
  %146 = icmp eq i32 %133, 3, !dbg !2021
  br i1 %146, label %147, label %154, !dbg !2023

147:                                              ; preds = %135, %138, %145
  %148 = getelementptr ptr, ptr %51, i64 1, !dbg !2024
  %149 = load ptr, ptr %148, align 8, !dbg !2024, !tbaa !951
  %150 = tail call fastcc i32 @binop(ptr noundef %149), !dbg !2025, !range !1810
  call void @llvm.dbg.value(metadata i32 %150, metadata !1929, metadata !DIExpression()), !dbg !1933
  %151 = icmp sgt i32 %150, -1, !dbg !2026
  br i1 %151, label %152, label %154, !dbg !2027

152:                                              ; preds = %147
  %153 = tail call fastcc zeroext i1 @binary_operator(i1 noundef zeroext false, i32 noundef %150), !dbg !2028
  call void @llvm.dbg.value(metadata i1 %153, metadata !1928, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1933
  br label %169, !dbg !2029

154:                                              ; preds = %147, %145
  %155 = icmp eq i8 %53, 45, !dbg !2030
  br i1 %155, label %156, label %166, !dbg !2032

156:                                              ; preds = %154
  %157 = getelementptr inbounds i8, ptr %52, i64 1, !dbg !2033
  %158 = load i8, ptr %157, align 1, !dbg !2033, !tbaa !1061
  %159 = icmp eq i8 %158, 0, !dbg !2033
  br i1 %159, label %166, label %160, !dbg !2034

160:                                              ; preds = %156
  %161 = getelementptr inbounds i8, ptr %52, i64 2, !dbg !2035
  %162 = load i8, ptr %161, align 1, !dbg !2035, !tbaa !1061
  %163 = icmp eq i8 %162, 0, !dbg !2036
  br i1 %163, label %164, label %166, !dbg !2037

164:                                              ; preds = %160
  %165 = tail call fastcc zeroext i1 @unary_operator(), !dbg !2038
  call void @llvm.dbg.value(metadata i1 %165, metadata !1928, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1933
  br label %169, !dbg !2039

166:                                              ; preds = %160, %156, %154
  %167 = icmp ne i8 %53, 0, !dbg !2040
  call void @llvm.dbg.value(metadata i1 %167, metadata !1928, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1933
  call void @llvm.dbg.value(metadata i1 false, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2042
  %168 = add nsw i32 %48, 1, !dbg !2044
  store i32 %168, ptr @pos, align 4, !dbg !2044, !tbaa !1052
  br label %169

169:                                              ; preds = %130, %143, %152, %164, %166
  %170 = phi i1 [ %104, %130 ], [ %144, %143 ], [ %153, %152 ], [ %165, %164 ], [ %167, %166 ]
  call void @llvm.dbg.value(metadata i1 %170, metadata !1928, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1933
  %171 = xor i1 %47, %170, !dbg !2045
  %172 = and i1 %15, %171, !dbg !2046
  call void @llvm.dbg.value(metadata i1 %172, metadata !1919, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1922
  %173 = load i32, ptr @pos, align 4, !dbg !2047, !tbaa !1052
  %174 = load i32, ptr @argc, align 4, !dbg !2049
  %175 = icmp slt i32 %173, %174, !dbg !2050
  br i1 %175, label %176, label %186, !dbg !2051

176:                                              ; preds = %169
  %177 = load ptr, ptr @argv, align 8, !dbg !2052, !tbaa !951
  %178 = sext i32 %173 to i64, !dbg !2052
  %179 = getelementptr inbounds ptr, ptr %177, i64 %178, !dbg !2052
  %180 = load ptr, ptr %179, align 8, !dbg !2052, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %180, metadata !1063, metadata !DIExpression()), !dbg !2053
  call void @llvm.dbg.value(metadata ptr @.str.93, metadata !1069, metadata !DIExpression()), !dbg !2053
  %181 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %180, ptr noundef nonnull dereferenceable(3) @.str.93) #41, !dbg !2055
  %182 = icmp eq i32 %181, 0, !dbg !2056
  br i1 %182, label %183, label %188, !dbg !2057

183:                                              ; preds = %176
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2058
  %184 = add nsw i32 %173, 1, !dbg !2060
  store i32 %184, ptr @pos, align 4, !dbg !2060, !tbaa !1052
  call void @llvm.dbg.value(metadata i8 poison, metadata !1919, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i8 poison, metadata !1925, metadata !DIExpression()), !dbg !1933
  %185 = icmp slt i32 %184, %174, !dbg !1936
  br i1 %185, label %11, label %43, !dbg !1937, !llvm.loop !2061

186:                                              ; preds = %169
  %187 = or i1 %10, %172, !dbg !2064
  tail call void @llvm.dbg.value(metadata i1 %187, metadata !1917, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1918
  br label %192

188:                                              ; preds = %176
  %189 = or i1 %10, %172, !dbg !2064
  tail call void @llvm.dbg.value(metadata i1 %189, metadata !1917, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1918
  call void @llvm.dbg.value(metadata ptr %180, metadata !1063, metadata !DIExpression()), !dbg !2065
  call void @llvm.dbg.value(metadata ptr @.str.94, metadata !1069, metadata !DIExpression()), !dbg !2065
  %190 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %180, ptr noundef nonnull dereferenceable(3) @.str.94) #41, !dbg !2068
  %191 = icmp eq i32 %190, 0, !dbg !2069
  br i1 %191, label %194, label %192, !dbg !2070

192:                                              ; preds = %188, %186
  %193 = phi i1 [ %187, %186 ], [ %189, %188 ]
  ret i1 %193, !dbg !2071

194:                                              ; preds = %188
  tail call void @llvm.dbg.value(metadata i1 false, metadata !1312, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2072
  %195 = add nsw i32 %173, 1, !dbg !2074
  store i32 %195, ptr @pos, align 4, !dbg !2074, !tbaa !1052
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1917, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 poison, metadata !1919, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i8 poison, metadata !1925, metadata !DIExpression()), !dbg !1933
  %196 = icmp slt i32 %195, %174, !dbg !1936
  br i1 %196, label %6, label %43, !dbg !1937, !llvm.loop !2075
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define internal fastcc i32 @binop(ptr nocapture noundef readonly %0) unnamed_addr #13 !dbg !2077 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2079, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2081
  call void @llvm.dbg.value(metadata ptr @.str.98, metadata !1069, metadata !DIExpression()), !dbg !2081
  %2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.98) #41, !dbg !2083
  %3 = icmp eq i32 %2, 0, !dbg !2084
  br i1 %3, label %44, label %4, !dbg !2085

4:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata ptr @.str.99, metadata !1069, metadata !DIExpression()), !dbg !2086
  %5 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.99) #41, !dbg !2088
  %6 = icmp eq i32 %5, 0, !dbg !2089
  br i1 %6, label %44, label %7, !dbg !2090

7:                                                ; preds = %4
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata ptr @.str.100, metadata !1069, metadata !DIExpression()), !dbg !2091
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(3) @.str.100) #41, !dbg !2093
  %9 = icmp eq i32 %8, 0, !dbg !2094
  br i1 %9, label %44, label %10, !dbg !2095

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2096
  call void @llvm.dbg.value(metadata ptr @.str.95, metadata !1069, metadata !DIExpression()), !dbg !2096
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.95) #41, !dbg !2098
  %12 = icmp eq i32 %11, 0, !dbg !2099
  br i1 %12, label %44, label %13, !dbg !2100

13:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2101
  call void @llvm.dbg.value(metadata ptr @.str.96, metadata !1069, metadata !DIExpression()), !dbg !2101
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.96) #41, !dbg !2103
  %15 = icmp eq i32 %14, 0, !dbg !2104
  br i1 %15, label %44, label %16, !dbg !2105

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2106
  call void @llvm.dbg.value(metadata ptr @.str.101, metadata !1069, metadata !DIExpression()), !dbg !2106
  %17 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.101) #41, !dbg !2108
  %18 = icmp eq i32 %17, 0, !dbg !2109
  br i1 %18, label %44, label %19, !dbg !2110

19:                                               ; preds = %16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2111
  call void @llvm.dbg.value(metadata ptr @.str.102, metadata !1069, metadata !DIExpression()), !dbg !2111
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.102) #41, !dbg !2113
  %21 = icmp eq i32 %20, 0, !dbg !2114
  br i1 %21, label %44, label %22, !dbg !2115

22:                                               ; preds = %19
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata ptr @.str.103, metadata !1069, metadata !DIExpression()), !dbg !2116
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.103) #41, !dbg !2118
  %24 = icmp eq i32 %23, 0, !dbg !2119
  br i1 %24, label %44, label %25, !dbg !2120

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata ptr @.str.104, metadata !1069, metadata !DIExpression()), !dbg !2121
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.104) #41, !dbg !2123
  %27 = icmp eq i32 %26, 0, !dbg !2124
  br i1 %27, label %44, label %28, !dbg !2125

28:                                               ; preds = %25
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata ptr @.str.105, metadata !1069, metadata !DIExpression()), !dbg !2126
  %29 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.105) #41, !dbg !2128
  %30 = icmp eq i32 %29, 0, !dbg !2129
  br i1 %30, label %44, label %31, !dbg !2130

31:                                               ; preds = %28
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2131
  call void @llvm.dbg.value(metadata ptr @.str.106, metadata !1069, metadata !DIExpression()), !dbg !2131
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.106) #41, !dbg !2133
  %33 = icmp eq i32 %32, 0, !dbg !2134
  br i1 %33, label %44, label %34, !dbg !2135

34:                                               ; preds = %31
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata ptr @.str.107, metadata !1069, metadata !DIExpression()), !dbg !2136
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.107) #41, !dbg !2138
  %36 = icmp eq i32 %35, 0, !dbg !2139
  br i1 %36, label %44, label %37, !dbg !2140

37:                                               ; preds = %34
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata ptr @.str.108, metadata !1069, metadata !DIExpression()), !dbg !2141
  %38 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.108) #41, !dbg !2143
  %39 = icmp eq i32 %38, 0, !dbg !2144
  br i1 %39, label %44, label %40, !dbg !2145

40:                                               ; preds = %37
  call void @llvm.dbg.value(metadata ptr %0, metadata !1063, metadata !DIExpression()), !dbg !2146
  call void @llvm.dbg.value(metadata ptr @.str.109, metadata !1069, metadata !DIExpression()), !dbg !2146
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.109) #41, !dbg !2148
  %42 = icmp eq i32 %41, 0, !dbg !2149
  %43 = select i1 %42, i32 10, i32 -1, !dbg !2150
  br label %44, !dbg !2145

44:                                               ; preds = %4, %10, %16, %22, %28, %34, %37, %40, %31, %25, %19, %13, %7, %1
  %45 = phi i32 [ 0, %1 ], [ 0, %4 ], [ 3, %7 ], [ 1, %10 ], [ 2, %13 ], [ 4, %16 ], [ 9, %19 ], [ 8, %22 ], [ 7, %25 ], [ 6, %28 ], [ 5, %31 ], [ 12, %34 ], [ %43, %40 ], [ 11, %37 ], !dbg !2085
  ret i32 %45, !dbg !2151
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @binary_operator(i1 noundef zeroext %0, i32 noundef %1) unnamed_addr #10 !dbg !2152 {
  %3 = alloca %struct.stat, align 8, !DIAssignID !2175
  %4 = alloca %struct.stat, align 8, !DIAssignID !2176
  %5 = alloca [21 x i8], align 16, !DIAssignID !2177
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2160, metadata !DIExpression(), metadata !2177, metadata ptr %5, metadata !DIExpression()), !dbg !2178
  %6 = alloca [21 x i8], align 16, !DIAssignID !2179
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2163, metadata !DIExpression(), metadata !2179, metadata ptr %6, metadata !DIExpression()), !dbg !2178
  %7 = alloca [2 x %struct.stat], align 16, !DIAssignID !2180
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2169, metadata !DIExpression(), metadata !2180, metadata ptr %7, metadata !DIExpression()), !dbg !2181
  tail call void @llvm.dbg.value(metadata i1 %0, metadata !2156, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2182
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2157, metadata !DIExpression()), !dbg !2182
  %8 = load i32, ptr @pos, align 4, !dbg !2183, !tbaa !1052
  %9 = zext i1 %0 to i32, !dbg !2184
  %10 = add nsw i32 %8, %9, !dbg !2184
  %11 = add nsw i32 %10, 1, !dbg !2185
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2158, metadata !DIExpression()), !dbg !2182
  %12 = load i32, ptr @argc, align 4, !dbg !2186
  %13 = add nsw i32 %12, -2, !dbg !2187
  %14 = icmp slt i32 %11, %13, !dbg !2188
  br i1 %14, label %15, label %24, !dbg !2189

15:                                               ; preds = %2
  %16 = load ptr, ptr @argv, align 8, !dbg !2190, !tbaa !951
  %17 = sext i32 %10 to i64, !dbg !2190
  %18 = getelementptr ptr, ptr %16, i64 %17, !dbg !2190
  %19 = getelementptr ptr, ptr %18, i64 2, !dbg !2190
  %20 = load ptr, ptr %19, align 8, !dbg !2190, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %20, metadata !1063, metadata !DIExpression()), !dbg !2191
  call void @llvm.dbg.value(metadata ptr @.str.110, metadata !1069, metadata !DIExpression()), !dbg !2191
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(3) @.str.110) #41, !dbg !2193
  %22 = icmp eq i32 %21, 0, !dbg !2194
  tail call void @llvm.dbg.value(metadata i1 %22, metadata !2159, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2182
  %23 = select i1 %22, i32 %11, i32 %10, !dbg !2195
  br label %24, !dbg !2195

24:                                               ; preds = %15, %2
  %25 = phi i32 [ %10, %2 ], [ %23, %15 ], !dbg !2196
  %26 = phi i1 [ false, %2 ], [ %22, %15 ]
  %27 = add nsw i32 %25, 3, !dbg !2196
  store i32 %27, ptr @pos, align 4, !dbg !2196, !tbaa !1052
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
  %29 = load ptr, ptr @argv, align 8, !dbg !2178, !tbaa !951
  %30 = sext i32 %10 to i64, !dbg !2178
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30, !dbg !2178
  %32 = load ptr, ptr %31, align 8, !dbg !2178, !tbaa !951
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
  %40 = load ptr, ptr @argv, align 8, !dbg !2178, !tbaa !951
  %41 = sext i32 %10 to i64, !dbg !2178
  %42 = getelementptr ptr, ptr %40, i64 %41, !dbg !2178
  br i1 %26, label %43, label %48, !dbg !2204

43:                                               ; preds = %38
  %44 = getelementptr ptr, ptr %42, i64 3, !dbg !2205
  %45 = load ptr, ptr %44, align 8, !dbg !2205, !tbaa !951
  %46 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #41, !dbg !2206
  %47 = call ptr @umaxtostr(i64 noundef %46, ptr noundef nonnull %6) #40, !dbg !2207
  br label %52, !dbg !2204

48:                                               ; preds = %38
  %49 = getelementptr ptr, ptr %42, i64 2, !dbg !2208
  %50 = load ptr, ptr %49, align 8, !dbg !2208, !tbaa !951
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
  %74 = load ptr, ptr @argv, align 8, !dbg !2232, !tbaa !951
  %75 = sext i32 %11 to i64, !dbg !2232
  %76 = getelementptr inbounds ptr, ptr %74, i64 %75, !dbg !2232
  %77 = load ptr, ptr %76, align 8, !dbg !2232, !tbaa !951
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %73, ptr noundef %77) #44, !dbg !2233
  unreachable, !dbg !2233

78:                                               ; preds = %70
  %79 = load ptr, ptr @argv, align 8, !dbg !2234, !tbaa !951
  %80 = sext i32 %10 to i64, !dbg !2234
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80, !dbg !2234
  %82 = load ptr, ptr %81, align 8, !dbg !2234, !tbaa !951
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2235, metadata !DIExpression(), metadata !2176, metadata ptr %4, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata ptr %82, metadata !2240, metadata !DIExpression()), !dbg !2241
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #40, !dbg !2243
  %83 = call i32 @stat(ptr noundef %82, ptr noundef nonnull %4) #40, !dbg !2244
  %84 = icmp slt i32 %83, 0, !dbg !2245
  %85 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 12, !dbg !2244
  %86 = load i64, ptr %85, align 8, !dbg !2244
  %87 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 12, i32 1, !dbg !2244
  %88 = load i64, ptr %87, align 8, !dbg !2244
  %89 = insertvalue { i64, i64 } poison, i64 %86, 0, !dbg !2244
  %90 = insertvalue { i64, i64 } %89, i64 %88, 1, !dbg !2244
  %91 = select i1 %84, { i64, i64 } { i64 -9223372036854775808, i64 -1 }, { i64, i64 } %90, !dbg !2244
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #40, !dbg !2246
  %92 = extractvalue { i64, i64 } %91, 0, !dbg !2247
  %93 = extractvalue { i64, i64 } %91, 1, !dbg !2247
  %94 = load ptr, ptr @argv, align 8, !dbg !2248, !tbaa !951
  %95 = getelementptr ptr, ptr %94, i64 %80, !dbg !2248
  %96 = getelementptr ptr, ptr %95, i64 2, !dbg !2248
  %97 = load ptr, ptr %96, align 8, !dbg !2248, !tbaa !951
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2235, metadata !DIExpression(), metadata !2175, metadata ptr %3, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata ptr %97, metadata !2240, metadata !DIExpression()), !dbg !2249
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #40, !dbg !2251
  %98 = call i32 @stat(ptr noundef %97, ptr noundef nonnull %3) #40, !dbg !2252
  %99 = icmp slt i32 %98, 0, !dbg !2253
  %100 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 12, !dbg !2252
  %101 = load i64, ptr %100, align 8, !dbg !2252
  %102 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 12, i32 1, !dbg !2252
  %103 = load i64, ptr %102, align 8, !dbg !2252
  %104 = insertvalue { i64, i64 } poison, i64 %101, 0, !dbg !2252
  %105 = insertvalue { i64, i64 } %104, i64 %103, 1, !dbg !2252
  %106 = select i1 %99, { i64, i64 } { i64 -9223372036854775808, i64 -1 }, { i64, i64 } %105, !dbg !2252
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #40, !dbg !2254
  %107 = extractvalue { i64, i64 } %106, 0, !dbg !2255
  %108 = extractvalue { i64, i64 } %106, 1, !dbg !2255
  tail call void @llvm.dbg.value(metadata i64 %92, metadata !1551, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2256
  tail call void @llvm.dbg.value(metadata i64 %93, metadata !1551, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2256
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1557, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !2256
  tail call void @llvm.dbg.value(metadata i64 %108, metadata !1557, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !2256
  %109 = icmp sgt i64 %92, %107, !dbg !2258
  %110 = zext i1 %109 to i32, !dbg !2258
  %111 = icmp slt i64 %92, %107, !dbg !2258
  %112 = sext i1 %111 to i32, !dbg !2258
  %113 = add nsw i32 %112, %110, !dbg !2258
  %114 = shl nsw i32 %113, 1, !dbg !2259
  %115 = icmp sgt i64 %93, %108, !dbg !2260
  %116 = zext i1 %115 to i32, !dbg !2260
  %117 = icmp slt i64 %93, %108, !dbg !2260
  %118 = sext i1 %117 to i32, !dbg !2260
  %119 = add nsw i32 %118, %116, !dbg !2260
  %120 = add nsw i32 %119, %114, !dbg !2261
  tail call void @llvm.dbg.value(metadata i32 %120, metadata !2167, metadata !DIExpression()), !dbg !2262
  %121 = icmp eq i32 %1, 12, !dbg !2263
  %122 = icmp slt i32 %120, 0, !dbg !2264
  %123 = icmp sgt i32 %120, 0, !dbg !2264
  %124 = select i1 %121, i1 %122, i1 %123, !dbg !2264
  br label %180

125:                                              ; preds = %24
  %126 = or i1 %26, %0, !dbg !2265
  br i1 %126, label %127, label %129, !dbg !2266

127:                                              ; preds = %125
  %128 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.112, i32 noundef 5) #40, !dbg !2267
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %128) #44, !dbg !2268
  unreachable, !dbg !2268

129:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %7) #40, !dbg !2269
  %130 = load ptr, ptr @argv, align 8, !dbg !2270, !tbaa !951
  %131 = sext i32 %10 to i64, !dbg !2270
  %132 = getelementptr inbounds ptr, ptr %130, i64 %131, !dbg !2270
  %133 = load ptr, ptr %132, align 8, !dbg !2270, !tbaa !951
  %134 = call i32 @stat(ptr noundef %133, ptr noundef nonnull %7) #40, !dbg !2271
  %135 = icmp eq i32 %134, 0, !dbg !2272
  br i1 %135, label %136, label %154, !dbg !2273

136:                                              ; preds = %129
  %137 = load ptr, ptr @argv, align 8, !dbg !2274, !tbaa !951
  %138 = getelementptr ptr, ptr %137, i64 %131, !dbg !2274
  %139 = getelementptr ptr, ptr %138, i64 2, !dbg !2274
  %140 = load ptr, ptr %139, align 8, !dbg !2274, !tbaa !951
  %141 = getelementptr inbounds [2 x %struct.stat], ptr %7, i64 0, i64 1, !dbg !2275
  %142 = call i32 @stat(ptr noundef %140, ptr noundef nonnull %141) #40, !dbg !2276
  %143 = icmp eq i32 %142, 0, !dbg !2277
  br i1 %143, label %144, label %154, !dbg !2278

144:                                              ; preds = %136
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2279, metadata !DIExpression()), !dbg !2286
  tail call void @llvm.dbg.value(metadata ptr %141, metadata !2285, metadata !DIExpression()), !dbg !2286
  %145 = load i64, ptr %7, align 16, !dbg !2288, !tbaa !2289
  %146 = load i64, ptr %141, align 16, !dbg !2288, !tbaa !2289
  %147 = icmp eq i64 %145, %146, !dbg !2288
  %148 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 1, !dbg !2288
  %149 = load i64, ptr %148, align 8, !dbg !2288, !tbaa !2290
  %150 = getelementptr inbounds [2 x %struct.stat], ptr %7, i64 0, i64 1, i32 1, !dbg !2288
  %151 = load i64, ptr %150, align 8, !dbg !2288, !tbaa !2290
  %152 = icmp eq i64 %149, %151, !dbg !2288
  %153 = and i1 %147, %152, !dbg !2288
  br label %154

154:                                              ; preds = %144, %136, %129
  %155 = phi i1 [ false, %136 ], [ false, %129 ], [ %153, %144 ], !dbg !2181
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %7) #40, !dbg !2291
  br label %180

156:                                              ; preds = %24, %24
  %157 = load ptr, ptr @argv, align 8, !dbg !2292, !tbaa !951
  %158 = sext i32 %10 to i64, !dbg !2292
  %159 = getelementptr inbounds ptr, ptr %157, i64 %158, !dbg !2292
  %160 = load ptr, ptr %159, align 8, !dbg !2292, !tbaa !951
  %161 = getelementptr ptr, ptr %159, i64 2, !dbg !2293
  %162 = load ptr, ptr %161, align 8, !dbg !2293, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %160, metadata !1063, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata ptr %162, metadata !1069, metadata !DIExpression()), !dbg !2294
  %163 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %160, ptr noundef nonnull dereferenceable(1) %162) #41, !dbg !2296
  %164 = icmp eq i32 %163, 0, !dbg !2297
  %165 = icmp ne i32 %1, 0, !dbg !2298
  %166 = xor i1 %165, %164, !dbg !2298
  br label %180, !dbg !2299

167:                                              ; preds = %24, %24
  %168 = load ptr, ptr @argv, align 8, !dbg !2300, !tbaa !951
  %169 = sext i32 %10 to i64, !dbg !2300
  %170 = getelementptr inbounds ptr, ptr %168, i64 %169, !dbg !2300
  %171 = load ptr, ptr %170, align 8, !dbg !2300, !tbaa !951
  %172 = getelementptr ptr, ptr %170, i64 2, !dbg !2301
  %173 = load ptr, ptr %172, align 8, !dbg !2301, !tbaa !951
  %174 = tail call i32 @strcoll(ptr noundef %171, ptr noundef %173) #41, !dbg !2302
  tail call void @llvm.dbg.value(metadata i32 %174, metadata !2173, metadata !DIExpression()), !dbg !2303
  %175 = icmp eq i32 %1, 2, !dbg !2304
  %176 = icmp slt i32 %174, 0, !dbg !2305
  %177 = icmp sgt i32 %174, 0, !dbg !2305
  %178 = select i1 %175, i1 %176, i1 %177, !dbg !2305
  br label %180

179:                                              ; preds = %24
  tail call void @__assert_fail(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.89, i32 noundef 362, ptr noundef nonnull @__PRETTY_FUNCTION__.binary_operator) #42, !dbg !2306
  unreachable, !dbg !2306

180:                                              ; preds = %167, %156, %154, %78, %68
  %181 = phi i1 [ %178, %167 ], [ %166, %156 ], [ %155, %154 ], [ %124, %78 ], [ %69, %68 ], !dbg !2309
  ret i1 %181, !dbg !2310
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2311 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal fastcc ptr @find_int(ptr noundef %0) unnamed_addr #10 !dbg !2314 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2318, metadata !DIExpression()), !dbg !2321
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2319, metadata !DIExpression()), !dbg !2321
  %2 = tail call ptr @__ctype_b_loc() #43, !dbg !2321
  %3 = load ptr, ptr %2, align 8, !tbaa !951
  br label %4, !dbg !2322

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %0, %1 ], [ %12, %4 ], !dbg !2324
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2319, metadata !DIExpression()), !dbg !2321
  %6 = load i8, ptr %5, align 1, !dbg !2325, !tbaa !1061
  %7 = zext i8 %6 to i64
  %8 = getelementptr inbounds i16, ptr %3, i64 %7, !dbg !2325
  %9 = load i16, ptr %8, align 2, !dbg !2325, !tbaa !1093
  %10 = and i16 %9, 8192, !dbg !2325
  %11 = icmp eq i16 %10, 0, !dbg !2327
  %12 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !2328
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !2319, metadata !DIExpression()), !dbg !2321
  br i1 %11, label %13, label %4, !dbg !2327, !llvm.loop !2329

13:                                               ; preds = %4
  %14 = icmp eq i8 %6, 43, !dbg !2331
  %15 = icmp eq i8 %6, 45, !dbg !2333
  %16 = zext i1 %15 to i64, !dbg !2333
  %17 = getelementptr inbounds i8, ptr %5, i64 %16, !dbg !2333
  %18 = select i1 %14, ptr %12, ptr %17, !dbg !2333
  tail call void @llvm.dbg.value(metadata ptr poison, metadata !2320, metadata !DIExpression()), !dbg !2321
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !2319, metadata !DIExpression()), !dbg !2321
  tail call void @llvm.dbg.value(metadata ptr %18, metadata !2319, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2321
  %19 = load i8, ptr %18, align 1, !dbg !2334, !tbaa !1061
  %20 = sext i8 %19 to i32, !dbg !2334
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2336, metadata !DIExpression()), !dbg !2340
  %21 = add nsw i32 %20, -48, !dbg !2342
  %22 = icmp ult i32 %21, 10, !dbg !2342
  br i1 %22, label %23, label %50, !dbg !2343

23:                                               ; preds = %13, %23
  %24 = phi ptr [ %25, %23 ], [ %18, %13 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2344
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !2319, metadata !DIExpression()), !dbg !2321
  %26 = load i8, ptr %25, align 1, !dbg !2345, !tbaa !1061
  %27 = sext i8 %26 to i32, !dbg !2345
  tail call void @llvm.dbg.value(metadata i32 %27, metadata !2336, metadata !DIExpression()), !dbg !2347
  %28 = add nsw i32 %27, -48, !dbg !2349
  %29 = icmp ult i32 %28, 10, !dbg !2349
  br i1 %29, label %23, label %30, !dbg !2350, !llvm.loop !2351

30:                                               ; preds = %23
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !2319, metadata !DIExpression()), !dbg !2321
  %31 = zext i8 %26 to i64
  %32 = getelementptr inbounds i16, ptr %3, i64 %31, !dbg !2353
  %33 = load i16, ptr %32, align 2, !dbg !2353, !tbaa !1093
  %34 = and i16 %33, 8192, !dbg !2353
  %35 = icmp eq i16 %34, 0, !dbg !2354
  br i1 %35, label %45, label %36, !dbg !2354

36:                                               ; preds = %30, %36
  %37 = phi ptr [ %38, %36 ], [ %25, %30 ]
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !2319, metadata !DIExpression()), !dbg !2321
  %38 = getelementptr inbounds i8, ptr %37, i64 1, !dbg !2355
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !2319, metadata !DIExpression()), !dbg !2321
  %39 = load i8, ptr %38, align 1, !dbg !2353, !tbaa !1061
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i16, ptr %3, i64 %40, !dbg !2353
  %42 = load i16, ptr %41, align 2, !dbg !2353, !tbaa !1093
  %43 = and i16 %42, 8192, !dbg !2353
  %44 = icmp eq i16 %43, 0, !dbg !2354
  br i1 %44, label %45, label %36, !dbg !2354, !llvm.loop !2356

45:                                               ; preds = %36, %30
  %46 = phi i8 [ %26, %30 ], [ %39, %36 ], !dbg !2353
  %47 = icmp eq i8 %46, 0, !dbg !2357
  br i1 %47, label %48, label %50, !dbg !2359

48:                                               ; preds = %45
  %49 = select i1 %14, ptr %12, ptr %5, !dbg !2333
  tail call void @llvm.dbg.value(metadata ptr %49, metadata !2320, metadata !DIExpression()), !dbg !2321
  ret ptr %49, !dbg !2360

50:                                               ; preds = %45, %13
  %51 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.91, i32 noundef 5) #40, !dbg !2361
  %52 = tail call ptr @quote(ptr noundef %0) #40, !dbg !2362
  tail call void (ptr, ...) @test_syntax_error(ptr noundef %51, ptr noundef %52) #44, !dbg !2363
  unreachable, !dbg !2363
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !2364 noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !2370 i32 @strcoll(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind
declare !dbg !2371 i32 @euidaccess(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !2375 ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind
declare !dbg !2380 i32 @geteuid() local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2383 i32 @getegid() local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @readlink(ptr nocapture noundef readonly, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn
declare !dbg !2386 i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare !dbg !2390 i32 @isatty(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #16 !dbg !2393 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2395, metadata !DIExpression()), !dbg !2396
  store ptr %0, ptr @file_name, align 8, !dbg !2397, !tbaa !951
  ret void, !dbg !2398
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #16 !dbg !2399 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2401, metadata !DIExpression()), !dbg !2402
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !2403, !tbaa !2404
  ret void, !dbg !2406
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2407 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2412, !tbaa !951
  %2 = tail call i32 @close_stream(ptr noundef %1) #40, !dbg !2413
  %3 = icmp eq i32 %2, 0, !dbg !2414
  br i1 %3, label %22, label %4, !dbg !2415

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !2416, !tbaa !2404, !range !2417, !noundef !1022
  %6 = icmp eq i8 %5, 0, !dbg !2416
  br i1 %6, label %11, label %7, !dbg !2418

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #43, !dbg !2419
  %9 = load i32, ptr %8, align 4, !dbg !2419, !tbaa !1052
  %10 = icmp eq i32 %9, 32, !dbg !2420
  br i1 %10, label %22, label %11, !dbg !2421

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.1.56, i32 noundef 5) #40, !dbg !2422
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !2409, metadata !DIExpression()), !dbg !2423
  %13 = load ptr, ptr @file_name, align 8, !dbg !2424, !tbaa !951
  %14 = icmp eq ptr %13, null, !dbg !2424
  %15 = tail call ptr @__errno_location() #43, !dbg !2426
  %16 = load i32, ptr %15, align 4, !dbg !2426, !tbaa !1052
  br i1 %14, label %19, label %17, !dbg !2427

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #40, !dbg !2428
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.57, ptr noundef %18, ptr noundef %12) #40, !dbg !2428
  br label %20, !dbg !2428

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.58, ptr noundef %12) #40, !dbg !2429
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2430, !tbaa !1052
  tail call void @_exit(i32 noundef %21) #42, !dbg !2431
  unreachable, !dbg !2431

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2432, !tbaa !951
  %24 = tail call i32 @close_stream(ptr noundef %23) #40, !dbg !2434
  %25 = icmp eq i32 %24, 0, !dbg !2435
  br i1 %25, label %28, label %26, !dbg !2436

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2437, !tbaa !1052
  tail call void @_exit(i32 noundef %27) #42, !dbg !2438
  unreachable, !dbg !2438

28:                                               ; preds = %22
  ret void, !dbg !2439
}

; Function Attrs: noreturn
declare !dbg !2440 void @_exit(i32 noundef) local_unnamed_addr #17

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #18 !dbg !2441 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2445, metadata !DIExpression()), !dbg !2449
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2446, metadata !DIExpression()), !dbg !2449
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2447, metadata !DIExpression()), !dbg !2449
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2448, metadata !DIExpression()), !dbg !2449
  tail call fastcc void @flush_stdout(), !dbg !2450
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2451, !tbaa !951
  %6 = icmp eq ptr %5, null, !dbg !2451
  br i1 %6, label %8, label %7, !dbg !2453

7:                                                ; preds = %4
  tail call void %5() #40, !dbg !2454
  br label %12, !dbg !2454

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2455, !tbaa !951
  %10 = tail call ptr @getprogname() #41, !dbg !2455
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.61, ptr noundef %10) #40, !dbg !2455
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2457
  ret void, !dbg !2458
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2459 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2461, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i32 1, metadata !2463, metadata !DIExpression()), !dbg !2466
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #40, !dbg !2469
  %2 = icmp slt i32 %1, 0, !dbg !2470
  br i1 %2, label %6, label %3, !dbg !2471

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2472, !tbaa !951
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #40, !dbg !2472
  br label %6, !dbg !2472

6:                                                ; preds = %3, %0
  ret void, !dbg !2473
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2474 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !2480
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2476, metadata !DIExpression()), !dbg !2481
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2477, metadata !DIExpression()), !dbg !2481
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2478, metadata !DIExpression()), !dbg !2481
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2479, metadata !DIExpression()), !dbg !2481
  %6 = load ptr, ptr @stderr, align 8, !dbg !2482, !tbaa !951
  call void @llvm.dbg.value(metadata ptr %6, metadata !2483, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata ptr %2, metadata !2523, metadata !DIExpression()), !dbg !2525
  call void @llvm.dbg.value(metadata ptr %3, metadata !2524, metadata !DIExpression()), !dbg !2525
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #40, !dbg !2527
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2528, !tbaa !1052
  %9 = add i32 %8, 1, !dbg !2528
  store i32 %9, ptr @error_message_count, align 4, !dbg !2528, !tbaa !1052
  %10 = icmp eq i32 %1, 0, !dbg !2529
  br i1 %10, label %20, label %11, !dbg !2531

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2532, metadata !DIExpression(), metadata !2480, metadata ptr %5, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i32 %1, metadata !2535, metadata !DIExpression()), !dbg !2540
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #40, !dbg !2542
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #40, !dbg !2543
  call void @llvm.dbg.value(metadata ptr %12, metadata !2536, metadata !DIExpression()), !dbg !2540
  %13 = icmp eq ptr %12, null, !dbg !2544
  br i1 %13, label %14, label %16, !dbg !2546

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.62, ptr noundef nonnull @.str.5.63, i32 noundef 5) #40, !dbg !2547
  call void @llvm.dbg.value(metadata ptr %15, metadata !2536, metadata !DIExpression()), !dbg !2540
  br label %16, !dbg !2548

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2540
  call void @llvm.dbg.value(metadata ptr %17, metadata !2536, metadata !DIExpression()), !dbg !2540
  %18 = load ptr, ptr @stderr, align 8, !dbg !2549, !tbaa !951
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.64, ptr noundef %17) #40, !dbg !2549
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #40, !dbg !2550
  br label %20, !dbg !2551

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2552, !tbaa !951
  call void @llvm.dbg.value(metadata i32 10, metadata !2553, metadata !DIExpression()), !dbg !2560
  call void @llvm.dbg.value(metadata ptr %21, metadata !2559, metadata !DIExpression()), !dbg !2560
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2562
  %23 = load ptr, ptr %22, align 8, !dbg !2562, !tbaa !2563
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2562
  %25 = load ptr, ptr %24, align 8, !dbg !2562, !tbaa !2565
  %26 = icmp ult ptr %23, %25, !dbg !2562
  br i1 %26, label %29, label %27, !dbg !2562, !prof !2566

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #40, !dbg !2562
  br label %31, !dbg !2562

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2562
  store ptr %30, ptr %22, align 8, !dbg !2562, !tbaa !2563
  store i8 10, ptr %23, align 1, !dbg !2562, !tbaa !1061
  br label %31, !dbg !2562

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2567, !tbaa !951
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #40, !dbg !2567
  %34 = icmp eq i32 %0, 0, !dbg !2568
  br i1 %34, label %36, label %35, !dbg !2570

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #42, !dbg !2571
  unreachable, !dbg !2571

36:                                               ; preds = %31
  ret void, !dbg !2572
}

declare !dbg !2573 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2576 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2579 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

declare !dbg !2582 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

declare !dbg !2585 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2589 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2602
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2596, metadata !DIExpression(), metadata !2602, metadata ptr %4, metadata !DIExpression()), !dbg !2603
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2593, metadata !DIExpression()), !dbg !2603
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2594, metadata !DIExpression()), !dbg !2603
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2595, metadata !DIExpression()), !dbg !2603
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #40, !dbg !2604
  call void @llvm.va_start(ptr nonnull %4), !dbg !2605
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #46, !dbg !2606
  call void @llvm.va_end(ptr nonnull %4), !dbg !2607
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #40, !dbg !2608
  ret void, !dbg !2608
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #12

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #18 !dbg !587 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !598, metadata !DIExpression()), !dbg !2609
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !599, metadata !DIExpression()), !dbg !2609
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !600, metadata !DIExpression()), !dbg !2609
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !601, metadata !DIExpression()), !dbg !2609
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !602, metadata !DIExpression()), !dbg !2609
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !603, metadata !DIExpression()), !dbg !2609
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2610, !tbaa !1052
  %8 = icmp eq i32 %7, 0, !dbg !2610
  br i1 %8, label %23, label %9, !dbg !2612

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2613, !tbaa !1052
  %11 = icmp eq i32 %10, %3, !dbg !2616
  br i1 %11, label %12, label %22, !dbg !2617

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2618, !tbaa !951
  %14 = icmp eq ptr %13, %2, !dbg !2619
  br i1 %14, label %36, label %15, !dbg !2620

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2621
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2622
  br i1 %18, label %19, label %22, !dbg !2622

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !2623
  %21 = icmp eq i32 %20, 0, !dbg !2624
  br i1 %21, label %36, label %22, !dbg !2625

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2626, !tbaa !951
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2627, !tbaa !1052
  br label %23, !dbg !2628

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2629
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2630, !tbaa !951
  %25 = icmp eq ptr %24, null, !dbg !2630
  br i1 %25, label %27, label %26, !dbg !2632

26:                                               ; preds = %23
  tail call void %24() #40, !dbg !2633
  br label %31, !dbg !2633

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2634, !tbaa !951
  %29 = tail call ptr @getprogname() #41, !dbg !2634
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.67, ptr noundef %29) #40, !dbg !2634
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2636, !tbaa !951
  %33 = icmp eq ptr %2, null, !dbg !2636
  %34 = select i1 %33, ptr @.str.3.68, ptr @.str.2.69, !dbg !2636
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #40, !dbg !2636
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2637
  br label %36, !dbg !2638

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2638
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2639 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2649
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2648, metadata !DIExpression(), metadata !2649, metadata ptr %6, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2643, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2644, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2645, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2646, metadata !DIExpression()), !dbg !2650
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2647, metadata !DIExpression()), !dbg !2650
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #40, !dbg !2651
  call void @llvm.va_start(ptr nonnull %6), !dbg !2652
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #46, !dbg !2653
  call void @llvm.va_end(ptr nonnull %6), !dbg !2654
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #40, !dbg !2655
  ret void, !dbg !2655
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !2656 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2659, !tbaa !951
  ret ptr %1, !dbg !2660
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) uwtable
define dso_local noundef nonnull ptr @umaxtostr(i64 noundef %0, ptr noundef writeonly %1) local_unnamed_addr #20 !dbg !2661 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2666, metadata !DIExpression()), !dbg !2669
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2667, metadata !DIExpression()), !dbg !2669
  %3 = getelementptr inbounds i8, ptr %1, i64 20, !dbg !2670
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2668, metadata !DIExpression()), !dbg !2669
  store i8 0, ptr %3, align 1, !dbg !2671, !tbaa !1061
  br label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %0, %2 ], [ %11, %4 ]
  %6 = phi ptr [ %3, %2 ], [ %10, %4 ], !dbg !2669
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2668, metadata !DIExpression()), !dbg !2669
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !2666, metadata !DIExpression()), !dbg !2669
  %7 = urem i64 %5, 10, !dbg !2672
  %8 = trunc i64 %7 to i8, !dbg !2675
  %9 = or disjoint i8 %8, 48, !dbg !2675
  %10 = getelementptr inbounds i8, ptr %6, i64 -1, !dbg !2676
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !2668, metadata !DIExpression()), !dbg !2669
  store i8 %9, ptr %10, align 1, !dbg !2677, !tbaa !1061
  %11 = udiv i64 %5, 10, !dbg !2678
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !2666, metadata !DIExpression()), !dbg !2669
  %12 = icmp ult i64 %5, 10, !dbg !2679
  br i1 %12, label %13, label %4, !dbg !2680, !llvm.loop !2681

13:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !2668, metadata !DIExpression()), !dbg !2669
  ret ptr %10, !dbg !2684
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #21 !dbg !2685 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2687, metadata !DIExpression()), !dbg !2690
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #41, !dbg !2691
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2688, metadata !DIExpression()), !dbg !2690
  %3 = icmp eq ptr %2, null, !dbg !2692
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2692
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2692
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2689, metadata !DIExpression()), !dbg !2690
  %6 = ptrtoint ptr %5 to i64, !dbg !2693
  %7 = ptrtoint ptr %0 to i64, !dbg !2693
  %8 = sub i64 %6, %7, !dbg !2693
  %9 = icmp sgt i64 %8, 6, !dbg !2695
  br i1 %9, label %10, label %19, !dbg !2696

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2697
  call void @llvm.dbg.value(metadata ptr %11, metadata !2698, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata ptr @.str.116, metadata !2703, metadata !DIExpression()), !dbg !2705
  call void @llvm.dbg.value(metadata i64 7, metadata !2704, metadata !DIExpression()), !dbg !2705
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.116, i64 7), !dbg !2707
  %13 = icmp eq i32 %12, 0, !dbg !2708
  br i1 %13, label %14, label %19, !dbg !2709

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2687, metadata !DIExpression()), !dbg !2690
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.117, i64 noundef 3) #41, !dbg !2710
  %16 = icmp eq i32 %15, 0, !dbg !2713
  %17 = select i1 %16, i64 3, i64 0, !dbg !2714
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2714
  br label %19, !dbg !2714

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2690
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2689, metadata !DIExpression()), !dbg !2690
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2687, metadata !DIExpression()), !dbg !2690
  store ptr %20, ptr @program_name, align 8, !dbg !2715, !tbaa !951
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2716, !tbaa !951
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2717, !tbaa !951
  ret void, !dbg !2718
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2719 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #22

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2720 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2725, metadata !DIExpression()), !dbg !2728
  %2 = tail call ptr @__errno_location() #43, !dbg !2729
  %3 = load i32, ptr %2, align 4, !dbg !2729, !tbaa !1052
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2726, metadata !DIExpression()), !dbg !2728
  %4 = icmp eq ptr %0, null, !dbg !2730
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2730
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #47, !dbg !2731
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2727, metadata !DIExpression()), !dbg !2728
  store i32 %3, ptr %2, align 4, !dbg !2732, !tbaa !1052
  ret ptr %6, !dbg !2733
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #23 !dbg !2734 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2740, metadata !DIExpression()), !dbg !2741
  %2 = icmp eq ptr %0, null, !dbg !2742
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2742
  %4 = load i32, ptr %3, align 8, !dbg !2743, !tbaa !2744
  ret i32 %4, !dbg !2746
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2747 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2751, metadata !DIExpression()), !dbg !2753
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2752, metadata !DIExpression()), !dbg !2753
  %3 = icmp eq ptr %0, null, !dbg !2754
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2754
  store i32 %1, ptr %4, align 8, !dbg !2755, !tbaa !2744
  ret void, !dbg !2756
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #25 !dbg !2757 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2761, metadata !DIExpression()), !dbg !2769
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2762, metadata !DIExpression()), !dbg !2769
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2763, metadata !DIExpression()), !dbg !2769
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2764, metadata !DIExpression()), !dbg !2769
  %4 = icmp eq ptr %0, null, !dbg !2770
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2770
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2771
  %7 = lshr i8 %1, 5, !dbg !2772
  %8 = zext nneg i8 %7 to i64, !dbg !2772
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2773
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2765, metadata !DIExpression()), !dbg !2769
  %10 = and i8 %1, 31, !dbg !2774
  %11 = zext nneg i8 %10 to i32, !dbg !2774
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2767, metadata !DIExpression()), !dbg !2769
  %12 = load i32, ptr %9, align 4, !dbg !2775, !tbaa !1052
  %13 = lshr i32 %12, %11, !dbg !2776
  %14 = and i32 %13, 1, !dbg !2777
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2768, metadata !DIExpression()), !dbg !2769
  %15 = xor i32 %13, %2, !dbg !2778
  %16 = and i32 %15, 1, !dbg !2778
  %17 = shl nuw i32 %16, %11, !dbg !2779
  %18 = xor i32 %17, %12, !dbg !2780
  store i32 %18, ptr %9, align 4, !dbg !2780, !tbaa !1052
  ret i32 %14, !dbg !2781
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #25 !dbg !2782 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2786, metadata !DIExpression()), !dbg !2789
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2787, metadata !DIExpression()), !dbg !2789
  %3 = icmp eq ptr %0, null, !dbg !2790
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2792
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2786, metadata !DIExpression()), !dbg !2789
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !2793
  %6 = load i32, ptr %5, align 4, !dbg !2793, !tbaa !2794
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2788, metadata !DIExpression()), !dbg !2789
  store i32 %1, ptr %5, align 4, !dbg !2795, !tbaa !2794
  ret i32 %6, !dbg !2796
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !2797 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2801, metadata !DIExpression()), !dbg !2804
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2802, metadata !DIExpression()), !dbg !2804
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2803, metadata !DIExpression()), !dbg !2804
  %4 = icmp eq ptr %0, null, !dbg !2805
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2807
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2801, metadata !DIExpression()), !dbg !2804
  store i32 10, ptr %5, align 8, !dbg !2808, !tbaa !2744
  %6 = icmp ne ptr %1, null, !dbg !2809
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !2811
  br i1 %8, label %10, label %9, !dbg !2811

9:                                                ; preds = %3
  tail call void @abort() #42, !dbg !2812
  unreachable, !dbg !2812

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !2813
  store ptr %1, ptr %11, align 8, !dbg !2814, !tbaa !2815
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !2816
  store ptr %2, ptr %12, align 8, !dbg !2817, !tbaa !2818
  ret void, !dbg !2819
}

; Function Attrs: noreturn nounwind
declare !dbg !2820 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !2821 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2825, metadata !DIExpression()), !dbg !2833
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2826, metadata !DIExpression()), !dbg !2833
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2827, metadata !DIExpression()), !dbg !2833
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2828, metadata !DIExpression()), !dbg !2833
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2829, metadata !DIExpression()), !dbg !2833
  %6 = icmp eq ptr %4, null, !dbg !2834
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !2834
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2830, metadata !DIExpression()), !dbg !2833
  %8 = tail call ptr @__errno_location() #43, !dbg !2835
  %9 = load i32, ptr %8, align 4, !dbg !2835, !tbaa !1052
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !2831, metadata !DIExpression()), !dbg !2833
  %10 = load i32, ptr %7, align 8, !dbg !2836, !tbaa !2744
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !2837
  %12 = load i32, ptr %11, align 4, !dbg !2837, !tbaa !2794
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !2838
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !2839
  %15 = load ptr, ptr %14, align 8, !dbg !2839, !tbaa !2815
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !2840
  %17 = load ptr, ptr %16, align 8, !dbg !2840, !tbaa !2818
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !2841
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2832, metadata !DIExpression()), !dbg !2833
  store i32 %9, ptr %8, align 4, !dbg !2842, !tbaa !1052
  ret i64 %18, !dbg !2843
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !2844 {
  %10 = alloca i32, align 4, !DIAssignID !2912
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2913
  %12 = alloca i32, align 4, !DIAssignID !2914
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2915
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2916
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2890, metadata !DIExpression(), metadata !2916, metadata ptr %14, metadata !DIExpression()), !dbg !2917
  %15 = alloca i32, align 4, !DIAssignID !2918
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2893, metadata !DIExpression(), metadata !2918, metadata ptr %15, metadata !DIExpression()), !dbg !2919
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2850, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2851, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2852, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !2853, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !2854, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !2855, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2856, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !2857, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2858, metadata !DIExpression()), !dbg !2920
  %16 = tail call i64 @__ctype_get_mb_cur_max() #40, !dbg !2921
  %17 = icmp eq i64 %16, 1, !dbg !2922
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !2859, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2860, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2861, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata ptr null, metadata !2862, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2863, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2864, metadata !DIExpression()), !dbg !2920
  %18 = trunc i32 %5 to i8, !dbg !2923
  %19 = lshr i8 %18, 1, !dbg !2923
  %20 = and i8 %19, 1, !dbg !2923
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !2865, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2866, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2867, metadata !DIExpression()), !dbg !2920
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !2924

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !2925
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !2926
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !2927
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !2928
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !2920
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !2929
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !2930
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !2851, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !2867, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !2866, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2865, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !2864, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !2863, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !2862, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !2861, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2860, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !2853, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !2858, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !2857, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !2854, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.label(metadata !2868), !dbg !2931
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2869, metadata !DIExpression()), !dbg !2920
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
  ], !dbg !2932

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2865, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2854, metadata !DIExpression()), !dbg !2920
  br label %114, !dbg !2933

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !2865, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i32 5, metadata !2854, metadata !DIExpression()), !dbg !2920
  %43 = and i8 %37, 1, !dbg !2934
  %44 = icmp eq i8 %43, 0, !dbg !2934
  br i1 %44, label %45, label %114, !dbg !2933

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !2936
  br i1 %46, label %114, label %47, !dbg !2939

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !2936, !tbaa !1061
  br label %114, !dbg !2936

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !723, metadata !DIExpression(), metadata !2914, metadata ptr %12, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.assign(metadata i1 undef, metadata !728, metadata !DIExpression(), metadata !2915, metadata ptr %13, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata ptr @.str.11.128, metadata !720, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i32 %29, metadata !721, metadata !DIExpression()), !dbg !2940
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.129, ptr noundef nonnull @.str.11.128, i32 noundef 5) #40, !dbg !2944
  call void @llvm.dbg.value(metadata ptr %49, metadata !722, metadata !DIExpression()), !dbg !2940
  %50 = icmp eq ptr %49, @.str.11.128, !dbg !2945
  br i1 %50, label %51, label %60, !dbg !2947

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40, !dbg !2948
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40, !dbg !2949
  call void @llvm.dbg.value(metadata ptr %13, metadata !2950, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata ptr %13, metadata !2959, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i32 0, metadata !2965, metadata !DIExpression()), !dbg !2967
  call void @llvm.dbg.value(metadata i64 8, metadata !2966, metadata !DIExpression()), !dbg !2967
  store i64 0, ptr %13, align 8, !dbg !2969
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #40, !dbg !2970
  %53 = icmp eq i64 %52, 3, !dbg !2972
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !2973
  %57 = icmp eq i32 %29, 9, !dbg !2973
  %58 = select i1 %57, ptr @.str.10.130, ptr @.str.12.131, !dbg !2973
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !2973
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40, !dbg !2974
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40, !dbg !2974
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !2940
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !2857, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.assign(metadata i1 undef, metadata !723, metadata !DIExpression(), metadata !2912, metadata ptr %10, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.assign(metadata i1 undef, metadata !728, metadata !DIExpression(), metadata !2913, metadata ptr %11, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata ptr @.str.12.131, metadata !720, metadata !DIExpression()), !dbg !2975
  call void @llvm.dbg.value(metadata i32 %29, metadata !721, metadata !DIExpression()), !dbg !2975
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.129, ptr noundef nonnull @.str.12.131, i32 noundef 5) #40, !dbg !2977
  call void @llvm.dbg.value(metadata ptr %62, metadata !722, metadata !DIExpression()), !dbg !2975
  %63 = icmp eq ptr %62, @.str.12.131, !dbg !2978
  br i1 %63, label %64, label %73, !dbg !2979

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #40, !dbg !2980
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40, !dbg !2981
  call void @llvm.dbg.value(metadata ptr %11, metadata !2950, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.value(metadata ptr %11, metadata !2959, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i32 0, metadata !2965, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata i64 8, metadata !2966, metadata !DIExpression()), !dbg !2984
  store i64 0, ptr %11, align 8, !dbg !2986
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #40, !dbg !2987
  %66 = icmp eq i64 %65, 3, !dbg !2988
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !2989
  %70 = icmp eq i32 %29, 9, !dbg !2989
  %71 = select i1 %70, ptr @.str.10.130, ptr @.str.12.131, !dbg !2989
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !2989
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40, !dbg !2990
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #40, !dbg !2990
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2858, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2857, metadata !DIExpression()), !dbg !2920
  %76 = and i8 %37, 1, !dbg !2991
  %77 = icmp eq i8 %76, 0, !dbg !2991
  br i1 %77, label %78, label %93, !dbg !2992

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !2870, metadata !DIExpression()), !dbg !2993
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2860, metadata !DIExpression()), !dbg !2920
  %79 = load i8, ptr %74, align 1, !dbg !2994, !tbaa !1061
  %80 = icmp eq i8 %79, 0, !dbg !2996
  br i1 %80, label %93, label %81, !dbg !2996

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !2870, metadata !DIExpression()), !dbg !2993
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !2860, metadata !DIExpression()), !dbg !2920
  %85 = icmp ult i64 %84, %40, !dbg !2997
  br i1 %85, label %86, label %88, !dbg !3000

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !2997
  store i8 %82, ptr %87, align 1, !dbg !2997, !tbaa !1061
  br label %88, !dbg !2997

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !3000
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !2860, metadata !DIExpression()), !dbg !2920
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3001
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !2870, metadata !DIExpression()), !dbg !2993
  %91 = load i8, ptr %90, align 1, !dbg !2994, !tbaa !1061
  %92 = icmp eq i8 %91, 0, !dbg !2996
  br i1 %92, label %93, label %81, !dbg !2996, !llvm.loop !3002

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !2860, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2864, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !2862, metadata !DIExpression()), !dbg !2920
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #41, !dbg !3005
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !2863, metadata !DIExpression()), !dbg !2920
  br label %114, !dbg !3006

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2864, metadata !DIExpression()), !dbg !2920
  br label %98, !dbg !3007

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !2864, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2865, metadata !DIExpression()), !dbg !2920
  br label %98, !dbg !3008

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !2928
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !2865, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !2864, metadata !DIExpression()), !dbg !2920
  %101 = and i8 %100, 1, !dbg !3009
  %102 = icmp eq i8 %101, 0, !dbg !3009
  %103 = select i1 %102, i8 1, i8 %99, !dbg !3011
  br label %104, !dbg !3011

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !2920
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !2923
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !2865, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !2864, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i32 2, metadata !2854, metadata !DIExpression()), !dbg !2920
  %107 = and i8 %106, 1, !dbg !3012
  %108 = icmp eq i8 %107, 0, !dbg !3012
  br i1 %108, label %109, label %114, !dbg !3014

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !3015
  br i1 %110, label %114, label %111, !dbg !3018

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !3015, !tbaa !1061
  br label %114, !dbg !3015

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2865, metadata !DIExpression()), !dbg !2920
  br label %114, !dbg !3019

113:                                              ; preds = %28
  call void @abort() #42, !dbg !3020
  unreachable, !dbg !3020

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !3004
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.130, %45 ], [ @.str.10.130, %47 ], [ @.str.10.130, %42 ], [ %34, %28 ], [ @.str.12.131, %109 ], [ @.str.12.131, %111 ], [ @.str.12.131, %104 ], [ @.str.10.130, %41 ], !dbg !2920
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !2920
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !2920
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !2865, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !2864, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !2863, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2862, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !2860, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !2858, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !2857, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !2854, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2875, metadata !DIExpression()), !dbg !3021
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
  br label %138, !dbg !3022

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !3004
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !2925
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !2929
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !2930
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !3023
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !3024
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2851, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2875, metadata !DIExpression()), !dbg !3021
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2869, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2867, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2866, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2861, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2860, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2853, metadata !DIExpression()), !dbg !2920
  %147 = icmp eq i64 %139, -1, !dbg !3025
  br i1 %147, label %148, label %152, !dbg !3026

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3027
  %150 = load i8, ptr %149, align 1, !dbg !3027, !tbaa !1061
  %151 = icmp eq i8 %150, 0, !dbg !3028
  br i1 %151, label %612, label %154, !dbg !3029

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !3030
  br i1 %153, label %612, label %154, !dbg !3029

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2877, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2880, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2881, metadata !DIExpression()), !dbg !3031
  br i1 %128, label %155, label %170, !dbg !3032

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !3034
  %157 = select i1 %147, i1 %129, i1 false, !dbg !3035
  br i1 %157, label %158, label %160, !dbg !3035

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !3036
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !2853, metadata !DIExpression()), !dbg !2920
  br label %160, !dbg !3037

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !3037
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !2853, metadata !DIExpression()), !dbg !2920
  %162 = icmp ugt i64 %156, %161, !dbg !3038
  br i1 %162, label %170, label %163, !dbg !3039

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3040
  call void @llvm.dbg.value(metadata ptr %164, metadata !3041, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata ptr %119, metadata !3044, metadata !DIExpression()), !dbg !3046
  call void @llvm.dbg.value(metadata i64 %120, metadata !3045, metadata !DIExpression()), !dbg !3046
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !3048
  %166 = icmp ne i32 %165, 0, !dbg !3049
  %167 = select i1 %166, i1 true, i1 %131, !dbg !3050
  %168 = xor i1 %166, true, !dbg !3050
  %169 = zext i1 %168 to i8, !dbg !3050
  br i1 %167, label %170, label %666, !dbg !3050

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !3031
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2877, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !2853, metadata !DIExpression()), !dbg !2920
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3051
  %175 = load i8, ptr %174, align 1, !dbg !3051, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2882, metadata !DIExpression()), !dbg !3031
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
  ], !dbg !3052

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !3053

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !3054

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2880, metadata !DIExpression()), !dbg !3031
  %179 = and i8 %144, 1, !dbg !3058
  %180 = icmp eq i8 %179, 0, !dbg !3058
  %181 = select i1 %132, i1 %180, i1 false, !dbg !3058
  br i1 %181, label %182, label %198, !dbg !3058

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !3060
  br i1 %183, label %184, label %186, !dbg !3064

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3060
  store i8 39, ptr %185, align 1, !dbg !3060, !tbaa !1061
  br label %186, !dbg !3060

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !3064
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !2860, metadata !DIExpression()), !dbg !2920
  %188 = icmp ult i64 %187, %146, !dbg !3065
  br i1 %188, label %189, label %191, !dbg !3068

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !3065
  store i8 36, ptr %190, align 1, !dbg !3065, !tbaa !1061
  br label %191, !dbg !3065

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !3068
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !2860, metadata !DIExpression()), !dbg !2920
  %193 = icmp ult i64 %192, %146, !dbg !3069
  br i1 %193, label %194, label %196, !dbg !3072

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !3069
  store i8 39, ptr %195, align 1, !dbg !3069, !tbaa !1061
  br label %196, !dbg !3069

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !3072
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !2860, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2869, metadata !DIExpression()), !dbg !2920
  br label %198, !dbg !3073

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !2920
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !2869, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !2860, metadata !DIExpression()), !dbg !2920
  %201 = icmp ult i64 %199, %146, !dbg !3074
  br i1 %201, label %202, label %204, !dbg !3077

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !3074
  store i8 92, ptr %203, align 1, !dbg !3074, !tbaa !1061
  br label %204, !dbg !3074

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !3077
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !2860, metadata !DIExpression()), !dbg !2920
  br i1 %125, label %206, label %476, !dbg !3078

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !3080
  %208 = icmp ult i64 %207, %171, !dbg !3081
  br i1 %208, label %209, label %465, !dbg !3082

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !3083
  %211 = load i8, ptr %210, align 1, !dbg !3083, !tbaa !1061
  %212 = add i8 %211, -48, !dbg !3084
  %213 = icmp ult i8 %212, 10, !dbg !3084
  br i1 %213, label %214, label %465, !dbg !3084

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !3085
  br i1 %215, label %216, label %218, !dbg !3089

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !3085
  store i8 48, ptr %217, align 1, !dbg !3085, !tbaa !1061
  br label %218, !dbg !3085

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !3089
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !2860, metadata !DIExpression()), !dbg !2920
  %220 = icmp ult i64 %219, %146, !dbg !3090
  br i1 %220, label %221, label %223, !dbg !3093

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !3090
  store i8 48, ptr %222, align 1, !dbg !3090, !tbaa !1061
  br label %223, !dbg !3090

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !3093
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !2860, metadata !DIExpression()), !dbg !2920
  br label %465, !dbg !3094

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !3095

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !3096

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !3097

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !3099

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !3101
  %231 = icmp ult i64 %230, %171, !dbg !3102
  br i1 %231, label %232, label %465, !dbg !3103

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !3104
  %234 = load i8, ptr %233, align 1, !dbg !3104, !tbaa !1061
  %235 = icmp eq i8 %234, 63, !dbg !3105
  br i1 %235, label %236, label %465, !dbg !3106

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !3107
  %238 = load i8, ptr %237, align 1, !dbg !3107, !tbaa !1061
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
  ], !dbg !3108

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !3109

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !2882, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !2875, metadata !DIExpression()), !dbg !3021
  %241 = icmp ult i64 %140, %146, !dbg !3111
  br i1 %241, label %242, label %244, !dbg !3114

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3111
  store i8 63, ptr %243, align 1, !dbg !3111, !tbaa !1061
  br label %244, !dbg !3111

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !3114
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !2860, metadata !DIExpression()), !dbg !2920
  %246 = icmp ult i64 %245, %146, !dbg !3115
  br i1 %246, label %247, label %249, !dbg !3118

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !3115
  store i8 34, ptr %248, align 1, !dbg !3115, !tbaa !1061
  br label %249, !dbg !3115

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !3118
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !2860, metadata !DIExpression()), !dbg !2920
  %251 = icmp ult i64 %250, %146, !dbg !3119
  br i1 %251, label %252, label %254, !dbg !3122

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !3119
  store i8 34, ptr %253, align 1, !dbg !3119, !tbaa !1061
  br label %254, !dbg !3119

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !3122
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !2860, metadata !DIExpression()), !dbg !2920
  %256 = icmp ult i64 %255, %146, !dbg !3123
  br i1 %256, label %257, label %259, !dbg !3126

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !3123
  store i8 63, ptr %258, align 1, !dbg !3123, !tbaa !1061
  br label %259, !dbg !3123

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !3126
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !2860, metadata !DIExpression()), !dbg !2920
  br label %465, !dbg !3127

261:                                              ; preds = %170
  br label %272, !dbg !3128

262:                                              ; preds = %170
  br label %272, !dbg !3129

263:                                              ; preds = %170
  br label %270, !dbg !3130

264:                                              ; preds = %170
  br label %270, !dbg !3131

265:                                              ; preds = %170
  br label %272, !dbg !3132

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !3133

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !3134

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !3137

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !3139

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !3140
  call void @llvm.dbg.label(metadata !2883), !dbg !3141
  br i1 %133, label %272, label %655, !dbg !3142

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !3140
  call void @llvm.dbg.label(metadata !2886), !dbg !3144
  br i1 %124, label %520, label %476, !dbg !3145

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !3146

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !3147, !tbaa !1061
  %277 = icmp eq i8 %276, 0, !dbg !3149
  br i1 %277, label %278, label %465, !dbg !3150

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !3151
  br i1 %279, label %280, label %465, !dbg !3153

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2881, metadata !DIExpression()), !dbg !3031
  br label %281, !dbg !3154

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !2881, metadata !DIExpression()), !dbg !3031
  br i1 %133, label %465, label %655, !dbg !3155

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2866, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2881, metadata !DIExpression()), !dbg !3031
  br i1 %132, label %284, label %465, !dbg !3157

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !3158

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !3161
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !3163
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !3163
  %290 = select i1 %288, i64 %146, i64 0, !dbg !3163
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !2851, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !2861, metadata !DIExpression()), !dbg !2920
  %291 = icmp ult i64 %140, %290, !dbg !3164
  br i1 %291, label %292, label %294, !dbg !3167

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3164
  store i8 39, ptr %293, align 1, !dbg !3164, !tbaa !1061
  br label %294, !dbg !3164

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !3167
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !2860, metadata !DIExpression()), !dbg !2920
  %296 = icmp ult i64 %295, %290, !dbg !3168
  br i1 %296, label %297, label %299, !dbg !3171

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !3168
  store i8 92, ptr %298, align 1, !dbg !3168, !tbaa !1061
  br label %299, !dbg !3168

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !3171
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !2860, metadata !DIExpression()), !dbg !2920
  %301 = icmp ult i64 %300, %290, !dbg !3172
  br i1 %301, label %302, label %304, !dbg !3175

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !3172
  store i8 39, ptr %303, align 1, !dbg !3172, !tbaa !1061
  br label %304, !dbg !3172

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !3175
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !2860, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2869, metadata !DIExpression()), !dbg !2920
  br label %465, !dbg !3176

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !3177

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2887, metadata !DIExpression()), !dbg !3178
  %308 = tail call ptr @__ctype_b_loc() #43, !dbg !3179
  %309 = load ptr, ptr %308, align 8, !dbg !3179, !tbaa !951
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !3179
  %312 = load i16, ptr %311, align 2, !dbg !3179, !tbaa !1093
  %313 = and i16 %312, 16384, !dbg !3181
  %314 = icmp ne i16 %313, 0, !dbg !3181
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !2889, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3178
  br label %355, !dbg !3182

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40, !dbg !3183
  call void @llvm.dbg.value(metadata ptr %14, metadata !2950, metadata !DIExpression()), !dbg !3184
  call void @llvm.dbg.value(metadata ptr %14, metadata !2959, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i32 0, metadata !2965, metadata !DIExpression()), !dbg !3186
  call void @llvm.dbg.value(metadata i64 8, metadata !2966, metadata !DIExpression()), !dbg !3186
  store i64 0, ptr %14, align 8, !dbg !3188
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2887, metadata !DIExpression()), !dbg !3178
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2889, metadata !DIExpression()), !dbg !3178
  %316 = icmp eq i64 %171, -1, !dbg !3189
  br i1 %316, label %317, label %319, !dbg !3191

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #41, !dbg !3192
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !2853, metadata !DIExpression()), !dbg !2920
  br label %319, !dbg !3193

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !3031
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !2853, metadata !DIExpression()), !dbg !2920
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #40, !dbg !3194
  %321 = sub i64 %320, %145, !dbg !3195
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #40, !dbg !3196
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2897, metadata !DIExpression()), !dbg !2919
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !3197

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2887, metadata !DIExpression()), !dbg !3178
  %324 = icmp ult i64 %145, %320, !dbg !3198
  br i1 %324, label %326, label %351, !dbg !3200

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2889, metadata !DIExpression()), !dbg !3178
  br label %351, !dbg !3201

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !2887, metadata !DIExpression()), !dbg !3178
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !3203
  %330 = load i8, ptr %329, align 1, !dbg !3203, !tbaa !1061
  %331 = icmp eq i8 %330, 0, !dbg !3200
  br i1 %331, label %351, label %332, !dbg !3204

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !3205
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !2887, metadata !DIExpression()), !dbg !3178
  %334 = add i64 %333, %145, !dbg !3206
  %335 = icmp eq i64 %333, %321, !dbg !3198
  br i1 %335, label %351, label %326, !dbg !3200, !llvm.loop !3207

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2898, metadata !DIExpression()), !dbg !3208
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !3209
  %339 = and i1 %338, %132, !dbg !3209
  br i1 %339, label %340, label %347, !dbg !3209

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !2898, metadata !DIExpression()), !dbg !3208
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !3210
  %343 = load i8, ptr %342, align 1, !dbg !3210, !tbaa !1061
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !3212

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !3213
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !2898, metadata !DIExpression()), !dbg !3208
  %346 = icmp eq i64 %345, %322, !dbg !3214
  br i1 %346, label %347, label %340, !dbg !3215, !llvm.loop !3216

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !3218, !tbaa !1052
  call void @llvm.dbg.value(metadata i32 %348, metadata !3220, metadata !DIExpression()), !dbg !3228
  %349 = call i32 @iswprint(i32 noundef %348) #40, !dbg !3230
  %350 = icmp ne i32 %349, 0, !dbg !3231
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2889, metadata !DIExpression()), !dbg !3178
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !2887, metadata !DIExpression()), !dbg !3178
  br label %351, !dbg !3232

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2889, metadata !DIExpression()), !dbg !3178
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !2887, metadata !DIExpression()), !dbg !3178
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3233
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3234
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2889, metadata !DIExpression()), !dbg !3178
  tail call void @llvm.dbg.value(metadata i64 0, metadata !2887, metadata !DIExpression()), !dbg !3178
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #40, !dbg !3233
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40, !dbg !3234
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !3031
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !3235
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !3235
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !2889, metadata !DIExpression()), !dbg !3178
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !2887, metadata !DIExpression()), !dbg !3178
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2853, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !2881, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3031
  %359 = icmp ult i64 %357, 2, !dbg !3236
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !3237
  br i1 %361, label %461, label %362, !dbg !3237

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !3238
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !2906, metadata !DIExpression()), !dbg !3239
  br label %364, !dbg !3240

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !2920
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !3023
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !3021
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !3031
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !3241
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !2882, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !2880, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !2877, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2875, metadata !DIExpression()), !dbg !3021
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !2869, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !2860, metadata !DIExpression()), !dbg !2920
  br i1 %360, label %417, label %371, !dbg !3242

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !3247

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2880, metadata !DIExpression()), !dbg !3031
  %373 = and i8 %366, 1, !dbg !3250
  %374 = icmp eq i8 %373, 0, !dbg !3250
  %375 = select i1 %132, i1 %374, i1 false, !dbg !3250
  br i1 %375, label %376, label %392, !dbg !3250

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !3252
  br i1 %377, label %378, label %380, !dbg !3256

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3252
  store i8 39, ptr %379, align 1, !dbg !3252, !tbaa !1061
  br label %380, !dbg !3252

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !2860, metadata !DIExpression()), !dbg !2920
  %382 = icmp ult i64 %381, %146, !dbg !3257
  br i1 %382, label %383, label %385, !dbg !3260

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !3257
  store i8 36, ptr %384, align 1, !dbg !3257, !tbaa !1061
  br label %385, !dbg !3257

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !3260
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !2860, metadata !DIExpression()), !dbg !2920
  %387 = icmp ult i64 %386, %146, !dbg !3261
  br i1 %387, label %388, label %390, !dbg !3264

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3261
  store i8 39, ptr %389, align 1, !dbg !3261, !tbaa !1061
  br label %390, !dbg !3261

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !3264
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !2860, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2869, metadata !DIExpression()), !dbg !2920
  br label %392, !dbg !3265

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !2920
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !2869, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !2860, metadata !DIExpression()), !dbg !2920
  %395 = icmp ult i64 %393, %146, !dbg !3266
  br i1 %395, label %396, label %398, !dbg !3269

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !3266
  store i8 92, ptr %397, align 1, !dbg !3266, !tbaa !1061
  br label %398, !dbg !3266

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !3269
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !2860, metadata !DIExpression()), !dbg !2920
  %400 = icmp ult i64 %399, %146, !dbg !3270
  br i1 %400, label %401, label %405, !dbg !3273

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !3270
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !3270
  store i8 %403, ptr %404, align 1, !dbg !3270, !tbaa !1061
  br label %405, !dbg !3270

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !3273
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !2860, metadata !DIExpression()), !dbg !2920
  %407 = icmp ult i64 %406, %146, !dbg !3274
  br i1 %407, label %408, label %413, !dbg !3277

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !3274
  %411 = or disjoint i8 %410, 48, !dbg !3274
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !3274
  store i8 %411, ptr %412, align 1, !dbg !3274, !tbaa !1061
  br label %413, !dbg !3274

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !3277
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !2860, metadata !DIExpression()), !dbg !2920
  %415 = and i8 %370, 7, !dbg !3278
  %416 = or disjoint i8 %415, 48, !dbg !3279
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !2882, metadata !DIExpression()), !dbg !3031
  br label %426, !dbg !3280

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !3281
  %419 = icmp eq i8 %418, 0, !dbg !3281
  br i1 %419, label %426, label %420, !dbg !3283

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !3284
  br i1 %421, label %422, label %424, !dbg !3288

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3284
  store i8 92, ptr %423, align 1, !dbg !3284, !tbaa !1061
  br label %424, !dbg !3284

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !3288
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !2860, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2877, metadata !DIExpression()), !dbg !3031
  br label %426, !dbg !3289

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !2920
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !3023
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !3031
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !3031
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2882, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2880, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2877, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2869, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2860, metadata !DIExpression()), !dbg !2920
  %432 = add i64 %367, 1, !dbg !3290
  %433 = icmp ugt i64 %363, %432, !dbg !3292
  br i1 %433, label %434, label %463, !dbg !3293

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !3294
  %436 = icmp ne i8 %435, 0, !dbg !3294
  %437 = and i8 %430, 1, !dbg !3294
  %438 = icmp eq i8 %437, 0, !dbg !3294
  %439 = select i1 %436, i1 %438, i1 false, !dbg !3294
  br i1 %439, label %440, label %451, !dbg !3294

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !3297
  br i1 %441, label %442, label %444, !dbg !3301

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !3297
  store i8 39, ptr %443, align 1, !dbg !3297, !tbaa !1061
  br label %444, !dbg !3297

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !3301
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !2860, metadata !DIExpression()), !dbg !2920
  %446 = icmp ult i64 %445, %146, !dbg !3302
  br i1 %446, label %447, label %449, !dbg !3305

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !3302
  store i8 39, ptr %448, align 1, !dbg !3302, !tbaa !1061
  br label %449, !dbg !3302

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !3305
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !2860, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2869, metadata !DIExpression()), !dbg !2920
  br label %451, !dbg !3306

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !3307
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !2869, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !2860, metadata !DIExpression()), !dbg !2920
  %454 = icmp ult i64 %452, %146, !dbg !3308
  br i1 %454, label %455, label %457, !dbg !3311

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !3308
  store i8 %431, ptr %456, align 1, !dbg !3308, !tbaa !1061
  br label %457, !dbg !3308

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !3311
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !2860, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !2875, metadata !DIExpression()), !dbg !3021
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !3312
  %460 = load i8, ptr %459, align 1, !dbg !3312, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !2882, metadata !DIExpression()), !dbg !3031
  br label %364, !dbg !3313, !llvm.loop !3314

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !2882, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !2881, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2880, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2877, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !2875, metadata !DIExpression()), !dbg !3021
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !2869, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2860, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2853, metadata !DIExpression()), !dbg !2920
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !2882, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !2881, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !2880, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !2877, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !2875, metadata !DIExpression()), !dbg !3021
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !2869, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !2860, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !2853, metadata !DIExpression()), !dbg !2920
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !3317
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !2920
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !2925
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !2920
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !2920
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !3021
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !3031
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !3031
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !3031
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !2851, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !2882, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !2881, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !2880, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !2877, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !2875, metadata !DIExpression()), !dbg !3021
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !2869, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !2866, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !2861, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !2860, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !2853, metadata !DIExpression()), !dbg !2920
  br i1 %126, label %487, label %476, !dbg !3318

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
  br i1 %137, label %488, label %509, !dbg !3320

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !3321

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
  %499 = lshr i8 %490, 5, !dbg !3322
  %500 = zext nneg i8 %499 to i64, !dbg !3322
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !3323
  %502 = load i32, ptr %501, align 4, !dbg !3323, !tbaa !1052
  %503 = and i8 %490, 31, !dbg !3324
  %504 = zext nneg i8 %503 to i32, !dbg !3324
  %505 = shl nuw i32 1, %504, !dbg !3325
  %506 = and i32 %502, %505, !dbg !3325
  %507 = icmp eq i32 %506, 0, !dbg !3325
  %508 = and i1 %172, %507, !dbg !3326
  br i1 %508, label %558, label %520, !dbg !3326

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
  br i1 %172, label %558, label %520, !dbg !3327

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !3317
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !2920
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !2925
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !2929
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !3023
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !3328
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !3031
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !3031
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2851, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2882, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2881, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2875, metadata !DIExpression()), !dbg !3021
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !2869, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2866, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2861, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !2860, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2853, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.label(metadata !2909), !dbg !3329
  br i1 %131, label %530, label %659, !dbg !3330

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2880, metadata !DIExpression()), !dbg !3031
  %531 = and i8 %525, 1, !dbg !3332
  %532 = icmp eq i8 %531, 0, !dbg !3332
  %533 = select i1 %132, i1 %532, i1 false, !dbg !3332
  br i1 %533, label %534, label %550, !dbg !3332

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !3334
  br i1 %535, label %536, label %538, !dbg !3338

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3334
  store i8 39, ptr %537, align 1, !dbg !3334, !tbaa !1061
  br label %538, !dbg !3334

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !3338
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !2860, metadata !DIExpression()), !dbg !2920
  %540 = icmp ult i64 %539, %529, !dbg !3339
  br i1 %540, label %541, label %543, !dbg !3342

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !3339
  store i8 36, ptr %542, align 1, !dbg !3339, !tbaa !1061
  br label %543, !dbg !3339

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !3342
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !2860, metadata !DIExpression()), !dbg !2920
  %545 = icmp ult i64 %544, %529, !dbg !3343
  br i1 %545, label %546, label %548, !dbg !3346

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !3343
  store i8 39, ptr %547, align 1, !dbg !3343, !tbaa !1061
  br label %548, !dbg !3343

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !3346
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !2860, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2869, metadata !DIExpression()), !dbg !2920
  br label %550, !dbg !3347

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !3031
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2869, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !2860, metadata !DIExpression()), !dbg !2920
  %553 = icmp ult i64 %551, %529, !dbg !3348
  br i1 %553, label %554, label %556, !dbg !3351

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !3348
  store i8 92, ptr %555, align 1, !dbg !3348, !tbaa !1061
  br label %556, !dbg !3348

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !3351
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !2851, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !2882, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !2881, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 1, metadata !2880, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !2875, metadata !DIExpression()), !dbg !3021
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !2869, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !2866, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !2861, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !2860, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !2853, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.label(metadata !2910), !dbg !3352
  br label %585, !dbg !3353

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !3317
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !2920
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !2925
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !2929
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !3023
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !3328
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !3031
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !3031
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !3356
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !2851, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !2882, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !2881, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !2880, metadata !DIExpression()), !dbg !3031
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !2875, metadata !DIExpression()), !dbg !3021
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !2869, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !2866, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !2861, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !2860, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !2853, metadata !DIExpression()), !dbg !2920
  call void @llvm.dbg.label(metadata !2910), !dbg !3352
  %569 = and i8 %563, 1, !dbg !3353
  %570 = icmp ne i8 %569, 0, !dbg !3353
  %571 = and i8 %565, 1, !dbg !3353
  %572 = icmp eq i8 %571, 0, !dbg !3353
  %573 = select i1 %570, i1 %572, i1 false, !dbg !3353
  br i1 %573, label %574, label %585, !dbg !3353

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !3357
  br i1 %575, label %576, label %578, !dbg !3361

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !3357
  store i8 39, ptr %577, align 1, !dbg !3357, !tbaa !1061
  br label %578, !dbg !3357

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !3361
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !2860, metadata !DIExpression()), !dbg !2920
  %580 = icmp ult i64 %579, %568, !dbg !3362
  br i1 %580, label %581, label %583, !dbg !3365

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !3362
  store i8 39, ptr %582, align 1, !dbg !3362, !tbaa !1061
  br label %583, !dbg !3362

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !3365
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !2860, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 0, metadata !2869, metadata !DIExpression()), !dbg !2920
  br label %585, !dbg !3366

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !3031
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !2869, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !2860, metadata !DIExpression()), !dbg !2920
  %595 = icmp ult i64 %593, %586, !dbg !3367
  br i1 %595, label %596, label %598, !dbg !3370

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !3367
  store i8 %587, ptr %597, align 1, !dbg !3367, !tbaa !1061
  br label %598, !dbg !3367

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !3370
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !2860, metadata !DIExpression()), !dbg !2920
  %600 = icmp eq i8 %588, 0, !dbg !3371
  %601 = select i1 %600, i8 0, i8 %143, !dbg !3373
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !2867, metadata !DIExpression()), !dbg !2920
  br label %602, !dbg !3374

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !3317
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !2920
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !2925
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !2929
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !2930
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !3023
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !3328
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !2851, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !2875, metadata !DIExpression()), !dbg !3021
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !2869, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !2867, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !2866, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !2861, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !2860, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !2853, metadata !DIExpression()), !dbg !2920
  %611 = add i64 %609, 1, !dbg !3375
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !2875, metadata !DIExpression()), !dbg !3021
  br label %138, !dbg !3376, !llvm.loop !3377

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !2851, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !2867, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !2866, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !2861, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2860, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !2853, metadata !DIExpression()), !dbg !2920
  %613 = icmp eq i64 %140, 0, !dbg !3379
  %614 = and i1 %132, %613, !dbg !3381
  %615 = xor i1 %614, true, !dbg !3381
  %616 = select i1 %615, i1 true, i1 %131, !dbg !3381
  br i1 %616, label %617, label %655, !dbg !3381

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !3382
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !3382
  br i1 %621, label %622, label %631, !dbg !3382

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !3384
  %624 = icmp eq i8 %623, 0, !dbg !3384
  br i1 %624, label %627, label %625, !dbg !3387

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !3388
  br label %672, !dbg !3389

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !3390
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !3392
  br i1 %630, label %28, label %631, !dbg !3392

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !3393
  %634 = select i1 %633, i1 %632, i1 false, !dbg !3395
  br i1 %634, label %635, label %650, !dbg !3395

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !2862, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !2860, metadata !DIExpression()), !dbg !2920
  %636 = load i8, ptr %119, align 1, !dbg !3396, !tbaa !1061
  %637 = icmp eq i8 %636, 0, !dbg !3399
  br i1 %637, label %650, label %638, !dbg !3399

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !2862, metadata !DIExpression()), !dbg !2920
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !2860, metadata !DIExpression()), !dbg !2920
  %642 = icmp ult i64 %641, %146, !dbg !3400
  br i1 %642, label %643, label %645, !dbg !3403

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !3400
  store i8 %639, ptr %644, align 1, !dbg !3400, !tbaa !1061
  br label %645, !dbg !3400

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !2860, metadata !DIExpression()), !dbg !2920
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !3404
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !2862, metadata !DIExpression()), !dbg !2920
  %648 = load i8, ptr %647, align 1, !dbg !3396, !tbaa !1061
  %649 = icmp eq i8 %648, 0, !dbg !3399
  br i1 %649, label %650, label %638, !dbg !3399, !llvm.loop !3405

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !3004
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !2860, metadata !DIExpression()), !dbg !2920
  %652 = icmp ult i64 %651, %146, !dbg !3407
  br i1 %652, label %653, label %672, !dbg !3409

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !3410
  store i8 0, ptr %654, align 1, !dbg !3411, !tbaa !1061
  br label %672, !dbg !3410

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !2911), !dbg !3412
  %657 = icmp eq i8 %123, 0, !dbg !3413
  %658 = select i1 %657, i32 2, i32 4, !dbg !3413
  br label %666, !dbg !3413

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !2911), !dbg !3412
  %662 = icmp eq i32 %115, 2, !dbg !3415
  %663 = icmp eq i8 %123, 0, !dbg !3413
  %664 = select i1 %663, i32 2, i32 4, !dbg !3413
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !3413
  br label %666, !dbg !3413

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !2854, metadata !DIExpression()), !dbg !2920
  %670 = and i32 %5, -3, !dbg !3416
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !3417
  br label %672, !dbg !3418

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !3419
}

; Function Attrs: nounwind
declare !dbg !3420 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nounwind
declare !dbg !3423 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3425 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3429, metadata !DIExpression()), !dbg !3432
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3430, metadata !DIExpression()), !dbg !3432
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3431, metadata !DIExpression()), !dbg !3432
  call void @llvm.dbg.value(metadata ptr %0, metadata !3433, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata i64 %1, metadata !3438, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata ptr null, metadata !3439, metadata !DIExpression()), !dbg !3446
  call void @llvm.dbg.value(metadata ptr %2, metadata !3440, metadata !DIExpression()), !dbg !3446
  %4 = icmp eq ptr %2, null, !dbg !3448
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3448
  call void @llvm.dbg.value(metadata ptr %5, metadata !3441, metadata !DIExpression()), !dbg !3446
  %6 = tail call ptr @__errno_location() #43, !dbg !3449
  %7 = load i32, ptr %6, align 4, !dbg !3449, !tbaa !1052
  call void @llvm.dbg.value(metadata i32 %7, metadata !3442, metadata !DIExpression()), !dbg !3446
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3450
  %9 = load i32, ptr %8, align 4, !dbg !3450, !tbaa !2794
  %10 = or i32 %9, 1, !dbg !3451
  call void @llvm.dbg.value(metadata i32 %10, metadata !3443, metadata !DIExpression()), !dbg !3446
  %11 = load i32, ptr %5, align 8, !dbg !3452, !tbaa !2744
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3453
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3454
  %14 = load ptr, ptr %13, align 8, !dbg !3454, !tbaa !2815
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3455
  %16 = load ptr, ptr %15, align 8, !dbg !3455, !tbaa !2818
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3456
  %18 = add i64 %17, 1, !dbg !3457
  call void @llvm.dbg.value(metadata i64 %18, metadata !3444, metadata !DIExpression()), !dbg !3446
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #48, !dbg !3458
  call void @llvm.dbg.value(metadata ptr %19, metadata !3445, metadata !DIExpression()), !dbg !3446
  %20 = load i32, ptr %5, align 8, !dbg !3459, !tbaa !2744
  %21 = load ptr, ptr %13, align 8, !dbg !3460, !tbaa !2815
  %22 = load ptr, ptr %15, align 8, !dbg !3461, !tbaa !2818
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3462
  store i32 %7, ptr %6, align 4, !dbg !3463, !tbaa !1052
  ret ptr %19, !dbg !3464
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3434 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3433, metadata !DIExpression()), !dbg !3465
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3438, metadata !DIExpression()), !dbg !3465
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3439, metadata !DIExpression()), !dbg !3465
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3440, metadata !DIExpression()), !dbg !3465
  %5 = icmp eq ptr %3, null, !dbg !3466
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3466
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3441, metadata !DIExpression()), !dbg !3465
  %7 = tail call ptr @__errno_location() #43, !dbg !3467
  %8 = load i32, ptr %7, align 4, !dbg !3467, !tbaa !1052
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3442, metadata !DIExpression()), !dbg !3465
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3468
  %10 = load i32, ptr %9, align 4, !dbg !3468, !tbaa !2794
  %11 = icmp eq ptr %2, null, !dbg !3469
  %12 = zext i1 %11 to i32, !dbg !3469
  %13 = or i32 %10, %12, !dbg !3470
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3443, metadata !DIExpression()), !dbg !3465
  %14 = load i32, ptr %6, align 8, !dbg !3471, !tbaa !2744
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3472
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3473
  %17 = load ptr, ptr %16, align 8, !dbg !3473, !tbaa !2815
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3474
  %19 = load ptr, ptr %18, align 8, !dbg !3474, !tbaa !2818
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3475
  %21 = add i64 %20, 1, !dbg !3476
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3444, metadata !DIExpression()), !dbg !3465
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #48, !dbg !3477
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3445, metadata !DIExpression()), !dbg !3465
  %23 = load i32, ptr %6, align 8, !dbg !3478, !tbaa !2744
  %24 = load ptr, ptr %16, align 8, !dbg !3479, !tbaa !2815
  %25 = load ptr, ptr %18, align 8, !dbg !3480, !tbaa !2818
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3481
  store i32 %8, ptr %7, align 4, !dbg !3482, !tbaa !1052
  br i1 %11, label %28, label %27, !dbg !3483

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3484, !tbaa !1541
  br label %28, !dbg !3486

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3487
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3488 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3493, !tbaa !951
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3490, metadata !DIExpression()), !dbg !3494
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3491, metadata !DIExpression()), !dbg !3495
  %2 = load i32, ptr @nslots, align 4, !tbaa !1052
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3491, metadata !DIExpression()), !dbg !3495
  %3 = icmp sgt i32 %2, 1, !dbg !3496
  br i1 %3, label %4, label %6, !dbg !3498

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3496
  br label %10, !dbg !3498

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3499
  %8 = load ptr, ptr %7, align 8, !dbg !3499, !tbaa !3501
  %9 = icmp eq ptr %8, @slot0, !dbg !3503
  br i1 %9, label %17, label %16, !dbg !3504

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3491, metadata !DIExpression()), !dbg !3495
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3505
  %13 = load ptr, ptr %12, align 8, !dbg !3505, !tbaa !3501
  tail call void @free(ptr noundef %13) #40, !dbg !3506
  %14 = add nuw nsw i64 %11, 1, !dbg !3507
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3491, metadata !DIExpression()), !dbg !3495
  %15 = icmp eq i64 %14, %5, !dbg !3496
  br i1 %15, label %6, label %10, !dbg !3498, !llvm.loop !3508

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #40, !dbg !3510
  store i64 256, ptr @slotvec0, align 8, !dbg !3512, !tbaa !3513
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3514, !tbaa !3501
  br label %17, !dbg !3515

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3516
  br i1 %18, label %20, label %19, !dbg !3518

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #40, !dbg !3519
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3521, !tbaa !951
  br label %20, !dbg !3522

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3523, !tbaa !1052
  ret void, !dbg !3524
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !3525 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #26

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3528 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3530, metadata !DIExpression()), !dbg !3532
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3531, metadata !DIExpression()), !dbg !3532
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3533
  ret ptr %3, !dbg !3534
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3535 {
  %5 = alloca i64, align 8, !DIAssignID !3555
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3549, metadata !DIExpression(), metadata !3555, metadata ptr %5, metadata !DIExpression()), !dbg !3556
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3539, metadata !DIExpression()), !dbg !3557
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3540, metadata !DIExpression()), !dbg !3557
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3541, metadata !DIExpression()), !dbg !3557
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3542, metadata !DIExpression()), !dbg !3557
  %6 = tail call ptr @__errno_location() #43, !dbg !3558
  %7 = load i32, ptr %6, align 4, !dbg !3558, !tbaa !1052
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3543, metadata !DIExpression()), !dbg !3557
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3559, !tbaa !951
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3544, metadata !DIExpression()), !dbg !3557
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3545, metadata !DIExpression()), !dbg !3557
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3560
  br i1 %9, label %10, label %11, !dbg !3560

10:                                               ; preds = %4
  tail call void @abort() #42, !dbg !3562
  unreachable, !dbg !3562

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3563, !tbaa !1052
  %13 = icmp sgt i32 %12, %0, !dbg !3564
  br i1 %13, label %32, label %14, !dbg !3565

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3566
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3546, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3556
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40, !dbg !3567
  %16 = sext i32 %12 to i64, !dbg !3568
  store i64 %16, ptr %5, align 8, !dbg !3569, !tbaa !1541, !DIAssignID !3570
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3549, metadata !DIExpression(), metadata !3570, metadata ptr %5, metadata !DIExpression()), !dbg !3556
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3571
  %18 = add nuw nsw i32 %0, 1, !dbg !3572
  %19 = sub i32 %18, %12, !dbg !3573
  %20 = sext i32 %19 to i64, !dbg !3574
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #40, !dbg !3575
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3544, metadata !DIExpression()), !dbg !3557
  store ptr %21, ptr @slotvec, align 8, !dbg !3576, !tbaa !951
  br i1 %15, label %22, label %23, !dbg !3577

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3578, !tbaa.struct !3580
  br label %23, !dbg !3581

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3582, !tbaa !1052
  %25 = sext i32 %24 to i64, !dbg !3583
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3583
  %27 = load i64, ptr %5, align 8, !dbg !3584, !tbaa !1541
  %28 = sub nsw i64 %27, %25, !dbg !3585
  %29 = shl i64 %28, 4, !dbg !3586
  call void @llvm.dbg.value(metadata ptr %26, metadata !2959, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i32 0, metadata !2965, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata i64 %29, metadata !2966, metadata !DIExpression()), !dbg !3587
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #40, !dbg !3589
  %30 = load i64, ptr %5, align 8, !dbg !3590, !tbaa !1541
  %31 = trunc i64 %30 to i32, !dbg !3590
  store i32 %31, ptr @nslots, align 4, !dbg !3591, !tbaa !1052
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40, !dbg !3592
  br label %32, !dbg !3593

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3557
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3544, metadata !DIExpression()), !dbg !3557
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3594
  %36 = load i64, ptr %35, align 8, !dbg !3595, !tbaa !3513
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3550, metadata !DIExpression()), !dbg !3596
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3597
  %38 = load ptr, ptr %37, align 8, !dbg !3597, !tbaa !3501
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3552, metadata !DIExpression()), !dbg !3596
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3598
  %40 = load i32, ptr %39, align 4, !dbg !3598, !tbaa !2794
  %41 = or i32 %40, 1, !dbg !3599
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3553, metadata !DIExpression()), !dbg !3596
  %42 = load i32, ptr %3, align 8, !dbg !3600, !tbaa !2744
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3601
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3602
  %45 = load ptr, ptr %44, align 8, !dbg !3602, !tbaa !2815
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3603
  %47 = load ptr, ptr %46, align 8, !dbg !3603, !tbaa !2818
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3604
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3554, metadata !DIExpression()), !dbg !3596
  %49 = icmp ugt i64 %36, %48, !dbg !3605
  br i1 %49, label %60, label %50, !dbg !3607

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3608
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3550, metadata !DIExpression()), !dbg !3596
  store i64 %51, ptr %35, align 8, !dbg !3610, !tbaa !3513
  %52 = icmp eq ptr %38, @slot0, !dbg !3611
  br i1 %52, label %54, label %53, !dbg !3613

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #40, !dbg !3614
  br label %54, !dbg !3614

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #48, !dbg !3615
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3552, metadata !DIExpression()), !dbg !3596
  store ptr %55, ptr %37, align 8, !dbg !3616, !tbaa !3501
  %56 = load i32, ptr %3, align 8, !dbg !3617, !tbaa !2744
  %57 = load ptr, ptr %44, align 8, !dbg !3618, !tbaa !2815
  %58 = load ptr, ptr %46, align 8, !dbg !3619, !tbaa !2818
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3620
  br label %60, !dbg !3621

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3596
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3552, metadata !DIExpression()), !dbg !3596
  store i32 %7, ptr %6, align 4, !dbg !3622, !tbaa !1052
  ret ptr %61, !dbg !3623
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #27

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #28

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3624 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3628, metadata !DIExpression()), !dbg !3631
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3629, metadata !DIExpression()), !dbg !3631
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3630, metadata !DIExpression()), !dbg !3631
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3632
  ret ptr %4, !dbg !3633
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3634 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3636, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i32 0, metadata !3530, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata ptr %0, metadata !3531, metadata !DIExpression()), !dbg !3638
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3640
  ret ptr %2, !dbg !3641
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3642 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3646, metadata !DIExpression()), !dbg !3648
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3647, metadata !DIExpression()), !dbg !3648
  call void @llvm.dbg.value(metadata i32 0, metadata !3628, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata ptr %0, metadata !3629, metadata !DIExpression()), !dbg !3649
  call void @llvm.dbg.value(metadata i64 %1, metadata !3630, metadata !DIExpression()), !dbg !3649
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3651
  ret ptr %3, !dbg !3652
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3653 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3661
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3660, metadata !DIExpression(), metadata !3661, metadata ptr %4, metadata !DIExpression()), !dbg !3662
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3657, metadata !DIExpression()), !dbg !3662
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3658, metadata !DIExpression()), !dbg !3662
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3659, metadata !DIExpression()), !dbg !3662
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3663
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3664), !dbg !3667
  call void @llvm.dbg.value(metadata i32 %1, metadata !3668, metadata !DIExpression()), !dbg !3674
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3673, metadata !DIExpression()), !dbg !3676
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3676, !alias.scope !3664, !DIAssignID !3677
  call void @llvm.dbg.assign(metadata i8 0, metadata !3660, metadata !DIExpression(), metadata !3677, metadata ptr %4, metadata !DIExpression()), !dbg !3662
  %5 = icmp eq i32 %1, 10, !dbg !3678
  br i1 %5, label %6, label %7, !dbg !3680

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3681, !noalias !3664
  unreachable, !dbg !3681

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3682, !tbaa !2744, !alias.scope !3664, !DIAssignID !3683
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3660, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3683, metadata ptr %4, metadata !DIExpression()), !dbg !3662
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3684
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3685
  ret ptr %8, !dbg !3686
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3687 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3696
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3695, metadata !DIExpression(), metadata !3696, metadata ptr %5, metadata !DIExpression()), !dbg !3697
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3691, metadata !DIExpression()), !dbg !3697
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3692, metadata !DIExpression()), !dbg !3697
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3693, metadata !DIExpression()), !dbg !3697
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3694, metadata !DIExpression()), !dbg !3697
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3698
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3699), !dbg !3702
  call void @llvm.dbg.value(metadata i32 %1, metadata !3668, metadata !DIExpression()), !dbg !3703
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3673, metadata !DIExpression()), !dbg !3705
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3705, !alias.scope !3699, !DIAssignID !3706
  call void @llvm.dbg.assign(metadata i8 0, metadata !3695, metadata !DIExpression(), metadata !3706, metadata ptr %5, metadata !DIExpression()), !dbg !3697
  %6 = icmp eq i32 %1, 10, !dbg !3707
  br i1 %6, label %7, label %8, !dbg !3708

7:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3709, !noalias !3699
  unreachable, !dbg !3709

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3710, !tbaa !2744, !alias.scope !3699, !DIAssignID !3711
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3695, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3711, metadata ptr %5, metadata !DIExpression()), !dbg !3697
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3712
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3713
  ret ptr %9, !dbg !3714
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3715 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3721
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3719, metadata !DIExpression()), !dbg !3722
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3720, metadata !DIExpression()), !dbg !3722
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3660, metadata !DIExpression(), metadata !3721, metadata ptr %3, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i32 0, metadata !3657, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata i32 %0, metadata !3658, metadata !DIExpression()), !dbg !3723
  call void @llvm.dbg.value(metadata ptr %1, metadata !3659, metadata !DIExpression()), !dbg !3723
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3725
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3726), !dbg !3729
  call void @llvm.dbg.value(metadata i32 %0, metadata !3668, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3673, metadata !DIExpression()), !dbg !3732
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3732, !alias.scope !3726, !DIAssignID !3733
  call void @llvm.dbg.assign(metadata i8 0, metadata !3660, metadata !DIExpression(), metadata !3733, metadata ptr %3, metadata !DIExpression()), !dbg !3723
  %4 = icmp eq i32 %0, 10, !dbg !3734
  br i1 %4, label %5, label %6, !dbg !3735

5:                                                ; preds = %2
  tail call void @abort() #42, !dbg !3736, !noalias !3726
  unreachable, !dbg !3736

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3737, !tbaa !2744, !alias.scope !3726, !DIAssignID !3738
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3660, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3738, metadata ptr %3, metadata !DIExpression()), !dbg !3723
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3739
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3740
  ret ptr %7, !dbg !3741
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3742 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3749
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3746, metadata !DIExpression()), !dbg !3750
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3747, metadata !DIExpression()), !dbg !3750
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3748, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3695, metadata !DIExpression(), metadata !3749, metadata ptr %4, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 0, metadata !3691, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i32 %0, metadata !3692, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata ptr %1, metadata !3693, metadata !DIExpression()), !dbg !3751
  call void @llvm.dbg.value(metadata i64 %2, metadata !3694, metadata !DIExpression()), !dbg !3751
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3753
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3754), !dbg !3757
  call void @llvm.dbg.value(metadata i32 %0, metadata !3668, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3673, metadata !DIExpression()), !dbg !3760
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3760, !alias.scope !3754, !DIAssignID !3761
  call void @llvm.dbg.assign(metadata i8 0, metadata !3695, metadata !DIExpression(), metadata !3761, metadata ptr %4, metadata !DIExpression()), !dbg !3751
  %5 = icmp eq i32 %0, 10, !dbg !3762
  br i1 %5, label %6, label %7, !dbg !3763

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3764, !noalias !3754
  unreachable, !dbg !3764

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3765, !tbaa !2744, !alias.scope !3754, !DIAssignID !3766
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3695, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3766, metadata ptr %4, metadata !DIExpression()), !dbg !3751
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3767
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3768
  ret ptr %8, !dbg !3769
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !3770 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3778
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3777, metadata !DIExpression(), metadata !3778, metadata ptr %4, metadata !DIExpression()), !dbg !3779
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3774, metadata !DIExpression()), !dbg !3779
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3775, metadata !DIExpression()), !dbg !3779
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3776, metadata !DIExpression()), !dbg !3779
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3781, !tbaa.struct !3782, !DIAssignID !3783
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3777, metadata !DIExpression(), metadata !3783, metadata ptr %4, metadata !DIExpression()), !dbg !3779
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2761, metadata !DIExpression()), !dbg !3784
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2762, metadata !DIExpression()), !dbg !3784
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2763, metadata !DIExpression()), !dbg !3784
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2764, metadata !DIExpression()), !dbg !3784
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3786
  %6 = lshr i8 %2, 5, !dbg !3787
  %7 = zext nneg i8 %6 to i64, !dbg !3787
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3788
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2765, metadata !DIExpression()), !dbg !3784
  %9 = and i8 %2, 31, !dbg !3789
  %10 = zext nneg i8 %9 to i32, !dbg !3789
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2767, metadata !DIExpression()), !dbg !3784
  %11 = load i32, ptr %8, align 4, !dbg !3790, !tbaa !1052
  %12 = lshr i32 %11, %10, !dbg !3791
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2768, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3784
  %13 = and i32 %12, 1, !dbg !3792
  %14 = xor i32 %13, 1, !dbg !3792
  %15 = shl nuw i32 %14, %10, !dbg !3793
  %16 = xor i32 %15, %11, !dbg !3794
  store i32 %16, ptr %8, align 4, !dbg !3794, !tbaa !1052
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3795
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3796
  ret ptr %17, !dbg !3797
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !3798 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3804
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3802, metadata !DIExpression()), !dbg !3805
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3803, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3777, metadata !DIExpression(), metadata !3804, metadata ptr %3, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata ptr %0, metadata !3774, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i64 -1, metadata !3775, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata i8 %1, metadata !3776, metadata !DIExpression()), !dbg !3806
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3808
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3809, !tbaa.struct !3782, !DIAssignID !3810
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3777, metadata !DIExpression(), metadata !3810, metadata ptr %3, metadata !DIExpression()), !dbg !3806
  call void @llvm.dbg.value(metadata ptr %3, metadata !2761, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i8 %1, metadata !2762, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i32 1, metadata !2763, metadata !DIExpression()), !dbg !3811
  call void @llvm.dbg.value(metadata i8 %1, metadata !2764, metadata !DIExpression()), !dbg !3811
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3813
  %5 = lshr i8 %1, 5, !dbg !3814
  %6 = zext nneg i8 %5 to i64, !dbg !3814
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3815
  call void @llvm.dbg.value(metadata ptr %7, metadata !2765, metadata !DIExpression()), !dbg !3811
  %8 = and i8 %1, 31, !dbg !3816
  %9 = zext nneg i8 %8 to i32, !dbg !3816
  call void @llvm.dbg.value(metadata i32 %9, metadata !2767, metadata !DIExpression()), !dbg !3811
  %10 = load i32, ptr %7, align 4, !dbg !3817, !tbaa !1052
  %11 = lshr i32 %10, %9, !dbg !3818
  call void @llvm.dbg.value(metadata i32 %11, metadata !2768, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3811
  %12 = and i32 %11, 1, !dbg !3819
  %13 = xor i32 %12, 1, !dbg !3819
  %14 = shl nuw i32 %13, %9, !dbg !3820
  %15 = xor i32 %14, %10, !dbg !3821
  store i32 %15, ptr %7, align 4, !dbg !3821, !tbaa !1052
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !3822
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3823
  ret ptr %16, !dbg !3824
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !3825 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !3828
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3827, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata ptr %0, metadata !3802, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i8 58, metadata !3803, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3777, metadata !DIExpression(), metadata !3828, metadata ptr %2, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata ptr %0, metadata !3774, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata i64 -1, metadata !3775, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata i8 58, metadata !3776, metadata !DIExpression()), !dbg !3832
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #40, !dbg !3834
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3835, !tbaa.struct !3782, !DIAssignID !3836
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3777, metadata !DIExpression(), metadata !3836, metadata ptr %2, metadata !DIExpression()), !dbg !3832
  call void @llvm.dbg.value(metadata ptr %2, metadata !2761, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i8 58, metadata !2762, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i32 1, metadata !2763, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i8 58, metadata !2764, metadata !DIExpression()), !dbg !3837
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !3839
  call void @llvm.dbg.value(metadata ptr %3, metadata !2765, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.value(metadata i32 26, metadata !2767, metadata !DIExpression()), !dbg !3837
  %4 = load i32, ptr %3, align 4, !dbg !3840, !tbaa !1052
  call void @llvm.dbg.value(metadata i32 %4, metadata !2768, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3837
  %5 = or i32 %4, 67108864, !dbg !3841
  store i32 %5, ptr %3, align 4, !dbg !3841, !tbaa !1052
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !3842
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #40, !dbg !3843
  ret ptr %6, !dbg !3844
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3845 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3849
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3847, metadata !DIExpression()), !dbg !3850
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3848, metadata !DIExpression()), !dbg !3850
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3777, metadata !DIExpression(), metadata !3849, metadata ptr %3, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata ptr %0, metadata !3774, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i64 %1, metadata !3775, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata i8 58, metadata !3776, metadata !DIExpression()), !dbg !3851
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #40, !dbg !3853
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3854, !tbaa.struct !3782, !DIAssignID !3855
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3777, metadata !DIExpression(), metadata !3855, metadata ptr %3, metadata !DIExpression()), !dbg !3851
  call void @llvm.dbg.value(metadata ptr %3, metadata !2761, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i8 58, metadata !2762, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i32 1, metadata !2763, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i8 58, metadata !2764, metadata !DIExpression()), !dbg !3856
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !3858
  call void @llvm.dbg.value(metadata ptr %4, metadata !2765, metadata !DIExpression()), !dbg !3856
  call void @llvm.dbg.value(metadata i32 26, metadata !2767, metadata !DIExpression()), !dbg !3856
  %5 = load i32, ptr %4, align 4, !dbg !3859, !tbaa !1052
  call void @llvm.dbg.value(metadata i32 %5, metadata !2768, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3856
  %6 = or i32 %5, 67108864, !dbg !3860
  store i32 %6, ptr %4, align 4, !dbg !3860, !tbaa !1052
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !3861
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #40, !dbg !3862
  ret ptr %7, !dbg !3863
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3864 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3870
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3869, metadata !DIExpression(), metadata !3870, metadata ptr %4, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3673, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !3872
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3866, metadata !DIExpression()), !dbg !3871
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3867, metadata !DIExpression()), !dbg !3871
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3868, metadata !DIExpression()), !dbg !3871
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3874
  call void @llvm.dbg.value(metadata i32 %1, metadata !3668, metadata !DIExpression()), !dbg !3875
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3673, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3875
  %5 = icmp eq i32 %1, 10, !dbg !3876
  br i1 %5, label %6, label %7, !dbg !3877

6:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3878, !noalias !3879
  unreachable, !dbg !3878

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3673, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !3875
  store i32 %1, ptr %4, align 8, !dbg !3882, !tbaa.struct !3782, !DIAssignID !3883
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !3882
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !3882
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3869, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3883, metadata ptr %4, metadata !DIExpression()), !dbg !3871
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3869, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !3884, metadata ptr %8, metadata !DIExpression()), !dbg !3871
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2761, metadata !DIExpression()), !dbg !3885
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2762, metadata !DIExpression()), !dbg !3885
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2763, metadata !DIExpression()), !dbg !3885
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2764, metadata !DIExpression()), !dbg !3885
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !3887
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2765, metadata !DIExpression()), !dbg !3885
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2767, metadata !DIExpression()), !dbg !3885
  %10 = load i32, ptr %9, align 4, !dbg !3888, !tbaa !1052
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2768, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3885
  %11 = or i32 %10, 67108864, !dbg !3889
  store i32 %11, ptr %9, align 4, !dbg !3889, !tbaa !1052, !DIAssignID !3890
  call void @llvm.dbg.assign(metadata i32 %11, metadata !3869, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !3890, metadata ptr %9, metadata !DIExpression()), !dbg !3871
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3891
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3892
  ret ptr %12, !dbg !3893
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3894 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3902
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3898, metadata !DIExpression()), !dbg !3903
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3899, metadata !DIExpression()), !dbg !3903
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3900, metadata !DIExpression()), !dbg !3903
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3901, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3904, metadata !DIExpression(), metadata !3902, metadata ptr %5, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i32 %0, metadata !3909, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata ptr %1, metadata !3910, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata ptr %2, metadata !3911, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata ptr %3, metadata !3912, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata i64 -1, metadata !3913, metadata !DIExpression()), !dbg !3914
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !3916
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3917, !tbaa.struct !3782, !DIAssignID !3918
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3904, metadata !DIExpression(), metadata !3918, metadata ptr %5, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3904, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3919, metadata ptr undef, metadata !DIExpression()), !dbg !3914
  call void @llvm.dbg.value(metadata ptr %5, metadata !2801, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata ptr %1, metadata !2802, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata ptr %2, metadata !2803, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata ptr %5, metadata !2801, metadata !DIExpression()), !dbg !3920
  store i32 10, ptr %5, align 8, !dbg !3922, !tbaa !2744, !DIAssignID !3923
  call void @llvm.dbg.assign(metadata i32 10, metadata !3904, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3923, metadata ptr %5, metadata !DIExpression()), !dbg !3914
  %6 = icmp ne ptr %1, null, !dbg !3924
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3925
  br i1 %8, label %10, label %9, !dbg !3925

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !3926
  unreachable, !dbg !3926

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3927
  store ptr %1, ptr %11, align 8, !dbg !3928, !tbaa !2815, !DIAssignID !3929
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3904, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3929, metadata ptr %11, metadata !DIExpression()), !dbg !3914
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3930
  store ptr %2, ptr %12, align 8, !dbg !3931, !tbaa !2818, !DIAssignID !3932
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3904, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3932, metadata ptr %12, metadata !DIExpression()), !dbg !3914
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !3933
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !3934
  ret ptr %13, !dbg !3935
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !3905 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !3936
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3904, metadata !DIExpression(), metadata !3936, metadata ptr %6, metadata !DIExpression()), !dbg !3937
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3909, metadata !DIExpression()), !dbg !3937
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3910, metadata !DIExpression()), !dbg !3937
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3911, metadata !DIExpression()), !dbg !3937
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3912, metadata !DIExpression()), !dbg !3937
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !3913, metadata !DIExpression()), !dbg !3937
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #40, !dbg !3938
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3939, !tbaa.struct !3782, !DIAssignID !3940
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3904, metadata !DIExpression(), metadata !3940, metadata ptr %6, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3904, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3941, metadata ptr undef, metadata !DIExpression()), !dbg !3937
  call void @llvm.dbg.value(metadata ptr %6, metadata !2801, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata ptr %1, metadata !2802, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata ptr %2, metadata !2803, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata ptr %6, metadata !2801, metadata !DIExpression()), !dbg !3942
  store i32 10, ptr %6, align 8, !dbg !3944, !tbaa !2744, !DIAssignID !3945
  call void @llvm.dbg.assign(metadata i32 10, metadata !3904, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3945, metadata ptr %6, metadata !DIExpression()), !dbg !3937
  %7 = icmp ne ptr %1, null, !dbg !3946
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !3947
  br i1 %9, label %11, label %10, !dbg !3947

10:                                               ; preds = %5
  tail call void @abort() #42, !dbg !3948
  unreachable, !dbg !3948

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3949
  store ptr %1, ptr %12, align 8, !dbg !3950, !tbaa !2815, !DIAssignID !3951
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3904, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3951, metadata ptr %12, metadata !DIExpression()), !dbg !3937
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3952
  store ptr %2, ptr %13, align 8, !dbg !3953, !tbaa !2818, !DIAssignID !3954
  call void @llvm.dbg.assign(metadata ptr %2, metadata !3904, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3954, metadata ptr %13, metadata !DIExpression()), !dbg !3937
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !3955
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #40, !dbg !3956
  ret ptr %14, !dbg !3957
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3958 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3965
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3962, metadata !DIExpression()), !dbg !3966
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3963, metadata !DIExpression()), !dbg !3966
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3964, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i32 0, metadata !3898, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata ptr %0, metadata !3899, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata ptr %1, metadata !3900, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata ptr %2, metadata !3901, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3904, metadata !DIExpression(), metadata !3965, metadata ptr %4, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i32 0, metadata !3909, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata ptr %0, metadata !3910, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata ptr %1, metadata !3911, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata ptr %2, metadata !3912, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i64 -1, metadata !3913, metadata !DIExpression()), !dbg !3969
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #40, !dbg !3971
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !3972, !tbaa.struct !3782, !DIAssignID !3973
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3904, metadata !DIExpression(), metadata !3973, metadata ptr %4, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3904, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !3974, metadata ptr undef, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata ptr %4, metadata !2801, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata ptr %0, metadata !2802, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata ptr %1, metadata !2803, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.value(metadata ptr %4, metadata !2801, metadata !DIExpression()), !dbg !3975
  store i32 10, ptr %4, align 8, !dbg !3977, !tbaa !2744, !DIAssignID !3978
  call void @llvm.dbg.assign(metadata i32 10, metadata !3904, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3978, metadata ptr %4, metadata !DIExpression()), !dbg !3969
  %5 = icmp ne ptr %0, null, !dbg !3979
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !3980
  br i1 %7, label %9, label %8, !dbg !3980

8:                                                ; preds = %3
  tail call void @abort() #42, !dbg !3981
  unreachable, !dbg !3981

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !3982
  store ptr %0, ptr %10, align 8, !dbg !3983, !tbaa !2815, !DIAssignID !3984
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3904, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !3984, metadata ptr %10, metadata !DIExpression()), !dbg !3969
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !3985
  store ptr %1, ptr %11, align 8, !dbg !3986, !tbaa !2818, !DIAssignID !3987
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3904, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !3987, metadata ptr %11, metadata !DIExpression()), !dbg !3969
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3988
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #40, !dbg !3989
  ret ptr %12, !dbg !3990
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3991 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3999
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3995, metadata !DIExpression()), !dbg !4000
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3996, metadata !DIExpression()), !dbg !4000
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3997, metadata !DIExpression()), !dbg !4000
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3998, metadata !DIExpression()), !dbg !4000
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3904, metadata !DIExpression(), metadata !3999, metadata ptr %5, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i32 0, metadata !3909, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata ptr %0, metadata !3910, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata ptr %1, metadata !3911, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata ptr %2, metadata !3912, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata i64 %3, metadata !3913, metadata !DIExpression()), !dbg !4001
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #40, !dbg !4003
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4004, !tbaa.struct !3782, !DIAssignID !4005
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3904, metadata !DIExpression(), metadata !4005, metadata ptr %5, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3904, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4006, metadata ptr undef, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.value(metadata ptr %5, metadata !2801, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata ptr %0, metadata !2802, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata ptr %1, metadata !2803, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.value(metadata ptr %5, metadata !2801, metadata !DIExpression()), !dbg !4007
  store i32 10, ptr %5, align 8, !dbg !4009, !tbaa !2744, !DIAssignID !4010
  call void @llvm.dbg.assign(metadata i32 10, metadata !3904, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4010, metadata ptr %5, metadata !DIExpression()), !dbg !4001
  %6 = icmp ne ptr %0, null, !dbg !4011
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4012
  br i1 %8, label %10, label %9, !dbg !4012

9:                                                ; preds = %4
  tail call void @abort() #42, !dbg !4013
  unreachable, !dbg !4013

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4014
  store ptr %0, ptr %11, align 8, !dbg !4015, !tbaa !2815, !DIAssignID !4016
  call void @llvm.dbg.assign(metadata ptr %0, metadata !3904, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4016, metadata ptr %11, metadata !DIExpression()), !dbg !4001
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4017
  store ptr %1, ptr %12, align 8, !dbg !4018, !tbaa !2818, !DIAssignID !4019
  call void @llvm.dbg.assign(metadata ptr %1, metadata !3904, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4019, metadata ptr %12, metadata !DIExpression()), !dbg !4001
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4020
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #40, !dbg !4021
  ret ptr %13, !dbg !4022
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4023 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4027, metadata !DIExpression()), !dbg !4030
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4028, metadata !DIExpression()), !dbg !4030
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4029, metadata !DIExpression()), !dbg !4030
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4031
  ret ptr %4, !dbg !4032
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4033 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4037, metadata !DIExpression()), !dbg !4039
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4038, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.value(metadata i32 0, metadata !4027, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata ptr %0, metadata !4028, metadata !DIExpression()), !dbg !4040
  call void @llvm.dbg.value(metadata i64 %1, metadata !4029, metadata !DIExpression()), !dbg !4040
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4042
  ret ptr %3, !dbg !4043
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4044 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4048, metadata !DIExpression()), !dbg !4050
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4049, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.value(metadata i32 %0, metadata !4027, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata ptr %1, metadata !4028, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.value(metadata i64 -1, metadata !4029, metadata !DIExpression()), !dbg !4051
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4053
  ret ptr %3, !dbg !4054
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4055 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4057, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.value(metadata i32 0, metadata !4048, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata ptr %0, metadata !4049, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.value(metadata i32 0, metadata !4027, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata ptr %0, metadata !4028, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i64 -1, metadata !4029, metadata !DIExpression()), !dbg !4061
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4063
  ret ptr %2, !dbg !4064
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @strintcmp(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #23 !dbg !4065 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4067, metadata !DIExpression()), !dbg !4069
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4068, metadata !DIExpression()), !dbg !4069
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4070, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4076, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata i32 128, metadata !4077, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata i32 128, metadata !4078, metadata !DIExpression()), !dbg !4084
  %3 = load i8, ptr %0, align 1, !dbg !4086, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i8 %3, metadata !4079, metadata !DIExpression()), !dbg !4084
  %4 = load i8, ptr %1, align 1, !dbg !4087, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i8 %4, metadata !4080, metadata !DIExpression()), !dbg !4084
  %5 = icmp eq i8 %3, 45, !dbg !4088
  br i1 %5, label %6, label %93, !dbg !4090

6:                                                ; preds = %2, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %2 ]
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !4070, metadata !DIExpression()), !dbg !4084
  %8 = getelementptr inbounds i8, ptr %7, i64 1, !dbg !4091
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !4070, metadata !DIExpression()), !dbg !4084
  %9 = load i8, ptr %8, align 1, !dbg !4093, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i8 %9, metadata !4079, metadata !DIExpression()), !dbg !4084
  %10 = icmp eq i8 %9, 48, !dbg !4094
  br i1 %10, label %6, label %11, !dbg !4095, !llvm.loop !4096

11:                                               ; preds = %6
  %12 = icmp eq i8 %4, 45, !dbg !4099
  br i1 %12, label %30, label %13, !dbg !4101

13:                                               ; preds = %11
  tail call void @llvm.dbg.value(metadata i8 %9, metadata !4079, metadata !DIExpression()), !dbg !4084
  %14 = sext i8 %9 to i32, !dbg !4102
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !4105, metadata !DIExpression()), !dbg !4109
  %15 = add nsw i32 %14, -48, !dbg !4111
  %16 = icmp ult i32 %15, 10, !dbg !4111
  br i1 %16, label %193, label %17, !dbg !4112

17:                                               ; preds = %13
  tail call void @llvm.dbg.value(metadata i8 %4, metadata !4080, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4076, metadata !DIExpression()), !dbg !4084
  %18 = icmp eq i8 %4, 48, !dbg !4113
  br i1 %18, label %19, label %24, !dbg !4114

19:                                               ; preds = %17, %19
  %20 = phi ptr [ %21, %19 ], [ %1, %17 ]
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !4076, metadata !DIExpression()), !dbg !4084
  %21 = getelementptr inbounds i8, ptr %20, i64 1, !dbg !4115
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !4076, metadata !DIExpression()), !dbg !4084
  %22 = load i8, ptr %21, align 1, !dbg !4116, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i8 %22, metadata !4080, metadata !DIExpression()), !dbg !4084
  %23 = icmp eq i8 %22, 48, !dbg !4113
  br i1 %23, label %19, label %24, !dbg !4114, !llvm.loop !4117

24:                                               ; preds = %19, %17
  %25 = phi i8 [ %4, %17 ], [ %22, %19 ], !dbg !4084
  tail call void @llvm.dbg.value(metadata i8 %25, metadata !4080, metadata !DIExpression()), !dbg !4084
  %26 = sext i8 %25 to i32, !dbg !4119
  tail call void @llvm.dbg.value(metadata i32 %26, metadata !4105, metadata !DIExpression()), !dbg !4120
  %27 = add nsw i32 %26, -48, !dbg !4122
  %28 = icmp ult i32 %27, 10, !dbg !4122
  %29 = sext i1 %28 to i32, !dbg !4123
  br label %193, !dbg !4124

30:                                               ; preds = %11, %30
  %31 = phi ptr [ %32, %30 ], [ %1, %11 ]
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !4076, metadata !DIExpression()), !dbg !4084
  %32 = getelementptr inbounds i8, ptr %31, i64 1, !dbg !4125
  tail call void @llvm.dbg.value(metadata ptr %32, metadata !4076, metadata !DIExpression()), !dbg !4084
  %33 = load i8, ptr %32, align 1, !dbg !4126, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i8 %33, metadata !4080, metadata !DIExpression()), !dbg !4084
  %34 = icmp eq i8 %33, 48, !dbg !4127
  br i1 %34, label %30, label %35, !dbg !4128, !llvm.loop !4129

35:                                               ; preds = %30
  tail call void @llvm.dbg.value(metadata i8 %33, metadata !4080, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata i8 %9, metadata !4079, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !4070, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %32, metadata !4076, metadata !DIExpression()), !dbg !4084
  %36 = sext i8 %9 to i32, !dbg !4132
  %37 = icmp eq i8 %9, %33, !dbg !4133
  tail call void @llvm.dbg.value(metadata i32 %36, metadata !4105, metadata !DIExpression()), !dbg !4134
  %38 = add nsw i32 %36, -48
  %39 = icmp ult i32 %38, 10
  %40 = select i1 %37, i1 %39, i1 false, !dbg !4136
  br i1 %40, label %41, label %53, !dbg !4136

41:                                               ; preds = %35, %41
  %42 = phi ptr [ %44, %41 ], [ %8, %35 ]
  %43 = phi ptr [ %46, %41 ], [ %32, %35 ]
  tail call void @llvm.dbg.value(metadata ptr %43, metadata !4076, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !4070, metadata !DIExpression()), !dbg !4084
  %44 = getelementptr inbounds i8, ptr %42, i64 1, !dbg !4137
  tail call void @llvm.dbg.value(metadata ptr %44, metadata !4070, metadata !DIExpression()), !dbg !4084
  %45 = load i8, ptr %44, align 1, !dbg !4139, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i8 %45, metadata !4079, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %43, metadata !4076, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4084
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4080, metadata !DIExpression()), !dbg !4084
  %46 = getelementptr inbounds i8, ptr %43, i64 1, !dbg !4140
  tail call void @llvm.dbg.value(metadata ptr %46, metadata !4076, metadata !DIExpression()), !dbg !4084
  %47 = load i8, ptr %46, align 1, !dbg !4141, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i8 %47, metadata !4080, metadata !DIExpression()), !dbg !4084
  %48 = sext i8 %45 to i32, !dbg !4132
  %49 = icmp eq i8 %45, %47, !dbg !4133
  tail call void @llvm.dbg.value(metadata i32 %48, metadata !4105, metadata !DIExpression()), !dbg !4134
  %50 = add nsw i32 %48, -48
  %51 = icmp ult i32 %50, 10
  %52 = select i1 %49, i1 %51, i1 false, !dbg !4136
  br i1 %52, label %41, label %53, !dbg !4136, !llvm.loop !4142

53:                                               ; preds = %41, %35
  %54 = phi i32 [ %38, %35 ], [ %50, %41 ], !dbg !4145
  %55 = phi ptr [ %32, %35 ], [ %46, %41 ], !dbg !4149
  %56 = phi ptr [ %8, %35 ], [ %44, %41 ], !dbg !4149
  %57 = phi i8 [ %33, %35 ], [ %47, %41 ], !dbg !4149
  %58 = phi i32 [ %36, %35 ], [ %48, %41 ], !dbg !4132
  %59 = sext i8 %57 to i32, !dbg !4150
  %60 = sub nsw i32 %59, %58, !dbg !4151
  tail call void @llvm.dbg.value(metadata i32 %60, metadata !4081, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4082, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4079, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %56, metadata !4070, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !4105, metadata !DIExpression()), !dbg !4152
  %61 = icmp ult i32 %54, 10, !dbg !4145
  br i1 %61, label %66, label %62, !dbg !4153

62:                                               ; preds = %66, %53
  %63 = phi i64 [ 0, %53 ], [ %71, %66 ], !dbg !4154
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4083, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata i8 %57, metadata !4080, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !4076, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata i32 %59, metadata !4105, metadata !DIExpression()), !dbg !4155
  %64 = add nsw i32 %59, -48, !dbg !4159
  %65 = icmp ult i32 %64, 10, !dbg !4159
  br i1 %65, label %75, label %84, !dbg !4160

66:                                               ; preds = %53, %66
  %67 = phi i64 [ %71, %66 ], [ 0, %53 ]
  %68 = phi ptr [ %69, %66 ], [ %56, %53 ]
  tail call void @llvm.dbg.value(metadata i64 %67, metadata !4082, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %68, metadata !4070, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4084
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4079, metadata !DIExpression()), !dbg !4084
  %69 = getelementptr inbounds i8, ptr %68, i64 1, !dbg !4161
  tail call void @llvm.dbg.value(metadata ptr %69, metadata !4070, metadata !DIExpression()), !dbg !4084
  %70 = load i8, ptr %69, align 1, !dbg !4162, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i8 %70, metadata !4079, metadata !DIExpression()), !dbg !4084
  %71 = add i64 %67, 1, !dbg !4163
  tail call void @llvm.dbg.value(metadata i64 %71, metadata !4082, metadata !DIExpression()), !dbg !4084
  %72 = sext i8 %70 to i32, !dbg !4164
  tail call void @llvm.dbg.value(metadata i32 %72, metadata !4105, metadata !DIExpression()), !dbg !4152
  %73 = add nsw i32 %72, -48, !dbg !4145
  %74 = icmp ult i32 %73, 10, !dbg !4145
  br i1 %74, label %66, label %62, !dbg !4153, !llvm.loop !4165

75:                                               ; preds = %62, %75
  %76 = phi i64 [ %80, %75 ], [ 0, %62 ]
  %77 = phi ptr [ %78, %75 ], [ %55, %62 ]
  tail call void @llvm.dbg.value(metadata i64 %76, metadata !4083, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %77, metadata !4076, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4084
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4080, metadata !DIExpression()), !dbg !4084
  %78 = getelementptr inbounds i8, ptr %77, i64 1, !dbg !4167
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !4076, metadata !DIExpression()), !dbg !4084
  %79 = load i8, ptr %78, align 1, !dbg !4168, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i8 %79, metadata !4080, metadata !DIExpression()), !dbg !4084
  %80 = add i64 %76, 1, !dbg !4169
  tail call void @llvm.dbg.value(metadata i64 %80, metadata !4083, metadata !DIExpression()), !dbg !4084
  %81 = sext i8 %79 to i32, !dbg !4170
  tail call void @llvm.dbg.value(metadata i32 %81, metadata !4105, metadata !DIExpression()), !dbg !4155
  %82 = add nsw i32 %81, -48, !dbg !4159
  %83 = icmp ult i32 %82, 10, !dbg !4159
  br i1 %83, label %75, label %84, !dbg !4160, !llvm.loop !4171

84:                                               ; preds = %75, %62
  %85 = phi i64 [ 0, %62 ], [ %80, %75 ], !dbg !4173
  %86 = icmp eq i64 %63, %85, !dbg !4174
  br i1 %86, label %90, label %87, !dbg !4176

87:                                               ; preds = %84
  %88 = icmp ult i64 %63, %85, !dbg !4177
  %89 = select i1 %88, i32 1, i32 -1, !dbg !4178
  br label %193, !dbg !4179

90:                                               ; preds = %84
  %91 = icmp eq i64 %63, 0, !dbg !4180
  %92 = select i1 %91, i32 0, i32 %60, !dbg !4149
  br label %193, !dbg !4149

93:                                               ; preds = %2
  %94 = icmp eq i8 %4, 45, !dbg !4182
  br i1 %94, label %97, label %95, !dbg !4184

95:                                               ; preds = %93
  tail call void @llvm.dbg.value(metadata i8 %3, metadata !4079, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4070, metadata !DIExpression()), !dbg !4084
  %96 = icmp eq i8 %3, 48, !dbg !4185
  br i1 %96, label %123, label %119, !dbg !4187

97:                                               ; preds = %93, %97
  %98 = phi ptr [ %99, %97 ], [ %1, %93 ]
  tail call void @llvm.dbg.value(metadata ptr %98, metadata !4076, metadata !DIExpression()), !dbg !4084
  %99 = getelementptr inbounds i8, ptr %98, i64 1, !dbg !4188
  tail call void @llvm.dbg.value(metadata ptr %99, metadata !4076, metadata !DIExpression()), !dbg !4084
  %100 = load i8, ptr %99, align 1, !dbg !4190, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !4080, metadata !DIExpression()), !dbg !4084
  %101 = icmp eq i8 %100, 48, !dbg !4191
  br i1 %101, label %97, label %102, !dbg !4192, !llvm.loop !4193

102:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !4080, metadata !DIExpression()), !dbg !4084
  %103 = sext i8 %100 to i32, !dbg !4196
  tail call void @llvm.dbg.value(metadata i32 %103, metadata !4105, metadata !DIExpression()), !dbg !4198
  %104 = add nsw i32 %103, -48, !dbg !4200
  %105 = icmp ult i32 %104, 10, !dbg !4200
  br i1 %105, label %193, label %106, !dbg !4201

106:                                              ; preds = %102
  tail call void @llvm.dbg.value(metadata i8 %3, metadata !4079, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4070, metadata !DIExpression()), !dbg !4084
  %107 = icmp eq i8 %3, 48, !dbg !4202
  br i1 %107, label %108, label %113, !dbg !4203

108:                                              ; preds = %106, %108
  %109 = phi ptr [ %110, %108 ], [ %0, %106 ]
  tail call void @llvm.dbg.value(metadata ptr %109, metadata !4070, metadata !DIExpression()), !dbg !4084
  %110 = getelementptr inbounds i8, ptr %109, i64 1, !dbg !4204
  tail call void @llvm.dbg.value(metadata ptr %110, metadata !4070, metadata !DIExpression()), !dbg !4084
  %111 = load i8, ptr %110, align 1, !dbg !4205, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i8 %111, metadata !4079, metadata !DIExpression()), !dbg !4084
  %112 = icmp eq i8 %111, 48, !dbg !4202
  br i1 %112, label %108, label %113, !dbg !4203, !llvm.loop !4206

113:                                              ; preds = %108, %106
  %114 = phi i8 [ %3, %106 ], [ %111, %108 ], !dbg !4084
  tail call void @llvm.dbg.value(metadata i8 %114, metadata !4079, metadata !DIExpression()), !dbg !4084
  %115 = sext i8 %114 to i32, !dbg !4208
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !4105, metadata !DIExpression()), !dbg !4209
  %116 = add nsw i32 %115, -48, !dbg !4211
  %117 = icmp ult i32 %116, 10, !dbg !4211
  %118 = zext i1 %117 to i32, !dbg !4212
  br label %193, !dbg !4213

119:                                              ; preds = %123, %95
  %120 = phi ptr [ %0, %95 ], [ %125, %123 ]
  %121 = phi i8 [ %3, %95 ], [ %126, %123 ], !dbg !4084
  tail call void @llvm.dbg.value(metadata i8 %4, metadata !4080, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4076, metadata !DIExpression()), !dbg !4084
  %122 = icmp eq i8 %4, 48, !dbg !4214
  br i1 %122, label %136, label %128, !dbg !4215

123:                                              ; preds = %95, %123
  %124 = phi ptr [ %125, %123 ], [ %0, %95 ]
  tail call void @llvm.dbg.value(metadata ptr %124, metadata !4070, metadata !DIExpression()), !dbg !4084
  %125 = getelementptr inbounds i8, ptr %124, i64 1, !dbg !4216
  tail call void @llvm.dbg.value(metadata ptr %125, metadata !4070, metadata !DIExpression()), !dbg !4084
  %126 = load i8, ptr %125, align 1, !dbg !4217, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i8 %126, metadata !4079, metadata !DIExpression()), !dbg !4084
  %127 = icmp eq i8 %126, 48, !dbg !4185
  br i1 %127, label %123, label %119, !dbg !4187, !llvm.loop !4218

128:                                              ; preds = %136, %119
  %129 = phi ptr [ %1, %119 ], [ %138, %136 ]
  %130 = phi i8 [ %4, %119 ], [ %139, %136 ], !dbg !4084
  tail call void @llvm.dbg.value(metadata i8 %130, metadata !4080, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !4079, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %120, metadata !4070, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %129, metadata !4076, metadata !DIExpression()), !dbg !4084
  %131 = sext i8 %121 to i32, !dbg !4220
  %132 = icmp eq i8 %121, %130, !dbg !4221
  tail call void @llvm.dbg.value(metadata i32 %131, metadata !4105, metadata !DIExpression()), !dbg !4222
  %133 = add nsw i32 %131, -48
  %134 = icmp ult i32 %133, 10
  %135 = select i1 %132, i1 %134, i1 false, !dbg !4224
  br i1 %135, label %141, label %153, !dbg !4224

136:                                              ; preds = %119, %136
  %137 = phi ptr [ %138, %136 ], [ %1, %119 ]
  tail call void @llvm.dbg.value(metadata ptr %137, metadata !4076, metadata !DIExpression()), !dbg !4084
  %138 = getelementptr inbounds i8, ptr %137, i64 1, !dbg !4225
  tail call void @llvm.dbg.value(metadata ptr %138, metadata !4076, metadata !DIExpression()), !dbg !4084
  %139 = load i8, ptr %138, align 1, !dbg !4226, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i8 %139, metadata !4080, metadata !DIExpression()), !dbg !4084
  %140 = icmp eq i8 %139, 48, !dbg !4214
  br i1 %140, label %136, label %128, !dbg !4215, !llvm.loop !4227

141:                                              ; preds = %128, %141
  %142 = phi ptr [ %144, %141 ], [ %120, %128 ]
  %143 = phi ptr [ %146, %141 ], [ %129, %128 ]
  tail call void @llvm.dbg.value(metadata ptr %143, metadata !4076, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %142, metadata !4070, metadata !DIExpression()), !dbg !4084
  %144 = getelementptr inbounds i8, ptr %142, i64 1, !dbg !4229
  tail call void @llvm.dbg.value(metadata ptr %144, metadata !4070, metadata !DIExpression()), !dbg !4084
  %145 = load i8, ptr %144, align 1, !dbg !4231, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i8 %145, metadata !4079, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %143, metadata !4076, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4084
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4080, metadata !DIExpression()), !dbg !4084
  %146 = getelementptr inbounds i8, ptr %143, i64 1, !dbg !4232
  tail call void @llvm.dbg.value(metadata ptr %146, metadata !4076, metadata !DIExpression()), !dbg !4084
  %147 = load i8, ptr %146, align 1, !dbg !4233, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i8 %147, metadata !4080, metadata !DIExpression()), !dbg !4084
  %148 = sext i8 %145 to i32, !dbg !4220
  %149 = icmp eq i8 %145, %147, !dbg !4221
  tail call void @llvm.dbg.value(metadata i32 %148, metadata !4105, metadata !DIExpression()), !dbg !4222
  %150 = add nsw i32 %148, -48
  %151 = icmp ult i32 %150, 10
  %152 = select i1 %149, i1 %151, i1 false, !dbg !4224
  br i1 %152, label %141, label %153, !dbg !4224, !llvm.loop !4234

153:                                              ; preds = %141, %128
  %154 = phi i32 [ %133, %128 ], [ %150, %141 ], !dbg !4237
  %155 = phi ptr [ %129, %128 ], [ %146, %141 ]
  %156 = phi ptr [ %120, %128 ], [ %144, %141 ]
  %157 = phi i8 [ %130, %128 ], [ %147, %141 ], !dbg !4084
  %158 = phi i32 [ %131, %128 ], [ %148, %141 ], !dbg !4220
  %159 = sext i8 %157 to i32, !dbg !4241
  %160 = sub nsw i32 %158, %159, !dbg !4242
  tail call void @llvm.dbg.value(metadata i32 %160, metadata !4081, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4082, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4079, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %156, metadata !4070, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata i32 poison, metadata !4105, metadata !DIExpression()), !dbg !4243
  %161 = icmp ult i32 %154, 10, !dbg !4237
  br i1 %161, label %166, label %162, !dbg !4244

162:                                              ; preds = %166, %153
  %163 = phi i64 [ 0, %153 ], [ %171, %166 ], !dbg !4245
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4083, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata i8 %157, metadata !4080, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %155, metadata !4076, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata i32 %159, metadata !4105, metadata !DIExpression()), !dbg !4246
  %164 = add nsw i32 %159, -48, !dbg !4250
  %165 = icmp ult i32 %164, 10, !dbg !4250
  br i1 %165, label %175, label %184, !dbg !4251

166:                                              ; preds = %153, %166
  %167 = phi i64 [ %171, %166 ], [ 0, %153 ]
  %168 = phi ptr [ %169, %166 ], [ %156, %153 ]
  tail call void @llvm.dbg.value(metadata i64 %167, metadata !4082, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %168, metadata !4070, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4084
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4079, metadata !DIExpression()), !dbg !4084
  %169 = getelementptr inbounds i8, ptr %168, i64 1, !dbg !4252
  tail call void @llvm.dbg.value(metadata ptr %169, metadata !4070, metadata !DIExpression()), !dbg !4084
  %170 = load i8, ptr %169, align 1, !dbg !4253, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i8 %170, metadata !4079, metadata !DIExpression()), !dbg !4084
  %171 = add i64 %167, 1, !dbg !4254
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !4082, metadata !DIExpression()), !dbg !4084
  %172 = sext i8 %170 to i32, !dbg !4255
  tail call void @llvm.dbg.value(metadata i32 %172, metadata !4105, metadata !DIExpression()), !dbg !4243
  %173 = add nsw i32 %172, -48, !dbg !4237
  %174 = icmp ult i32 %173, 10, !dbg !4237
  br i1 %174, label %166, label %162, !dbg !4244, !llvm.loop !4256

175:                                              ; preds = %162, %175
  %176 = phi i64 [ %180, %175 ], [ 0, %162 ]
  %177 = phi ptr [ %178, %175 ], [ %155, %162 ]
  tail call void @llvm.dbg.value(metadata i64 %176, metadata !4083, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %177, metadata !4076, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !4084
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4080, metadata !DIExpression()), !dbg !4084
  %178 = getelementptr inbounds i8, ptr %177, i64 1, !dbg !4258
  tail call void @llvm.dbg.value(metadata ptr %178, metadata !4076, metadata !DIExpression()), !dbg !4084
  %179 = load i8, ptr %178, align 1, !dbg !4259, !tbaa !1061
  tail call void @llvm.dbg.value(metadata i8 %179, metadata !4080, metadata !DIExpression()), !dbg !4084
  %180 = add i64 %176, 1, !dbg !4260
  tail call void @llvm.dbg.value(metadata i64 %180, metadata !4083, metadata !DIExpression()), !dbg !4084
  %181 = sext i8 %179 to i32, !dbg !4261
  tail call void @llvm.dbg.value(metadata i32 %181, metadata !4105, metadata !DIExpression()), !dbg !4246
  %182 = add nsw i32 %181, -48, !dbg !4250
  %183 = icmp ult i32 %182, 10, !dbg !4250
  br i1 %183, label %175, label %184, !dbg !4251, !llvm.loop !4262

184:                                              ; preds = %175, %162
  %185 = phi i64 [ 0, %162 ], [ %180, %175 ], !dbg !4264
  %186 = icmp eq i64 %163, %185, !dbg !4265
  br i1 %186, label %190, label %187, !dbg !4267

187:                                              ; preds = %184
  %188 = icmp ult i64 %163, %185, !dbg !4268
  %189 = select i1 %188, i32 -1, i32 1, !dbg !4269
  br label %193, !dbg !4270

190:                                              ; preds = %184
  %191 = icmp eq i64 %163, 0, !dbg !4271
  %192 = select i1 %191, i32 0, i32 %160, !dbg !4273
  br label %193, !dbg !4273

193:                                              ; preds = %13, %24, %87, %90, %102, %113, %187, %190
  %194 = phi i32 [ %29, %24 ], [ %89, %87 ], [ %118, %113 ], [ %189, %187 ], [ -1, %13 ], [ %92, %90 ], [ 1, %102 ], [ %192, %190 ], !dbg !4274
  ret i32 %194, !dbg !4275
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4276 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4315, metadata !DIExpression()), !dbg !4321
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4316, metadata !DIExpression()), !dbg !4321
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4317, metadata !DIExpression()), !dbg !4321
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4318, metadata !DIExpression()), !dbg !4321
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4319, metadata !DIExpression()), !dbg !4321
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4320, metadata !DIExpression()), !dbg !4321
  %7 = icmp eq ptr %1, null, !dbg !4322
  br i1 %7, label %10, label %8, !dbg !4324

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.140, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #40, !dbg !4325
  br label %12, !dbg !4325

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.141, ptr noundef %2, ptr noundef %3) #40, !dbg !4326
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.3.143, i32 noundef 5) #40, !dbg !4327
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #40, !dbg !4327
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.144, ptr noundef %0), !dbg !4328
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.5.145, i32 noundef 5) #40, !dbg !4329
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.146) #40, !dbg !4329
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.144, ptr noundef %0), !dbg !4330
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
  ], !dbg !4331

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.7.147, i32 noundef 5) #40, !dbg !4332
  %21 = load ptr, ptr %4, align 8, !dbg !4332, !tbaa !951
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #40, !dbg !4332
  br label %147, !dbg !4334

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.8.148, i32 noundef 5) #40, !dbg !4335
  %25 = load ptr, ptr %4, align 8, !dbg !4335, !tbaa !951
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4335
  %27 = load ptr, ptr %26, align 8, !dbg !4335, !tbaa !951
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #40, !dbg !4335
  br label %147, !dbg !4336

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.9.149, i32 noundef 5) #40, !dbg !4337
  %31 = load ptr, ptr %4, align 8, !dbg !4337, !tbaa !951
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4337
  %33 = load ptr, ptr %32, align 8, !dbg !4337, !tbaa !951
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4337
  %35 = load ptr, ptr %34, align 8, !dbg !4337, !tbaa !951
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #40, !dbg !4337
  br label %147, !dbg !4338

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.10.150, i32 noundef 5) #40, !dbg !4339
  %39 = load ptr, ptr %4, align 8, !dbg !4339, !tbaa !951
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4339
  %41 = load ptr, ptr %40, align 8, !dbg !4339, !tbaa !951
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4339
  %43 = load ptr, ptr %42, align 8, !dbg !4339, !tbaa !951
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4339
  %45 = load ptr, ptr %44, align 8, !dbg !4339, !tbaa !951
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #40, !dbg !4339
  br label %147, !dbg !4340

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.11.151, i32 noundef 5) #40, !dbg !4341
  %49 = load ptr, ptr %4, align 8, !dbg !4341, !tbaa !951
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4341
  %51 = load ptr, ptr %50, align 8, !dbg !4341, !tbaa !951
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4341
  %53 = load ptr, ptr %52, align 8, !dbg !4341, !tbaa !951
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4341
  %55 = load ptr, ptr %54, align 8, !dbg !4341, !tbaa !951
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4341
  %57 = load ptr, ptr %56, align 8, !dbg !4341, !tbaa !951
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #40, !dbg !4341
  br label %147, !dbg !4342

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.12.152, i32 noundef 5) #40, !dbg !4343
  %61 = load ptr, ptr %4, align 8, !dbg !4343, !tbaa !951
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4343
  %63 = load ptr, ptr %62, align 8, !dbg !4343, !tbaa !951
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4343
  %65 = load ptr, ptr %64, align 8, !dbg !4343, !tbaa !951
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4343
  %67 = load ptr, ptr %66, align 8, !dbg !4343, !tbaa !951
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4343
  %69 = load ptr, ptr %68, align 8, !dbg !4343, !tbaa !951
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4343
  %71 = load ptr, ptr %70, align 8, !dbg !4343, !tbaa !951
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #40, !dbg !4343
  br label %147, !dbg !4344

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.13.153, i32 noundef 5) #40, !dbg !4345
  %75 = load ptr, ptr %4, align 8, !dbg !4345, !tbaa !951
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4345
  %77 = load ptr, ptr %76, align 8, !dbg !4345, !tbaa !951
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4345
  %79 = load ptr, ptr %78, align 8, !dbg !4345, !tbaa !951
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4345
  %81 = load ptr, ptr %80, align 8, !dbg !4345, !tbaa !951
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4345
  %83 = load ptr, ptr %82, align 8, !dbg !4345, !tbaa !951
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4345
  %85 = load ptr, ptr %84, align 8, !dbg !4345, !tbaa !951
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4345
  %87 = load ptr, ptr %86, align 8, !dbg !4345, !tbaa !951
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #40, !dbg !4345
  br label %147, !dbg !4346

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.14.154, i32 noundef 5) #40, !dbg !4347
  %91 = load ptr, ptr %4, align 8, !dbg !4347, !tbaa !951
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4347
  %93 = load ptr, ptr %92, align 8, !dbg !4347, !tbaa !951
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4347
  %95 = load ptr, ptr %94, align 8, !dbg !4347, !tbaa !951
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4347
  %97 = load ptr, ptr %96, align 8, !dbg !4347, !tbaa !951
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4347
  %99 = load ptr, ptr %98, align 8, !dbg !4347, !tbaa !951
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4347
  %101 = load ptr, ptr %100, align 8, !dbg !4347, !tbaa !951
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4347
  %103 = load ptr, ptr %102, align 8, !dbg !4347, !tbaa !951
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4347
  %105 = load ptr, ptr %104, align 8, !dbg !4347, !tbaa !951
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #40, !dbg !4347
  br label %147, !dbg !4348

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.15.155, i32 noundef 5) #40, !dbg !4349
  %109 = load ptr, ptr %4, align 8, !dbg !4349, !tbaa !951
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4349
  %111 = load ptr, ptr %110, align 8, !dbg !4349, !tbaa !951
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4349
  %113 = load ptr, ptr %112, align 8, !dbg !4349, !tbaa !951
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4349
  %115 = load ptr, ptr %114, align 8, !dbg !4349, !tbaa !951
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4349
  %117 = load ptr, ptr %116, align 8, !dbg !4349, !tbaa !951
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4349
  %119 = load ptr, ptr %118, align 8, !dbg !4349, !tbaa !951
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4349
  %121 = load ptr, ptr %120, align 8, !dbg !4349, !tbaa !951
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4349
  %123 = load ptr, ptr %122, align 8, !dbg !4349, !tbaa !951
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4349
  %125 = load ptr, ptr %124, align 8, !dbg !4349, !tbaa !951
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #40, !dbg !4349
  br label %147, !dbg !4350

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.16.156, i32 noundef 5) #40, !dbg !4351
  %129 = load ptr, ptr %4, align 8, !dbg !4351, !tbaa !951
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4351
  %131 = load ptr, ptr %130, align 8, !dbg !4351, !tbaa !951
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4351
  %133 = load ptr, ptr %132, align 8, !dbg !4351, !tbaa !951
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4351
  %135 = load ptr, ptr %134, align 8, !dbg !4351, !tbaa !951
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4351
  %137 = load ptr, ptr %136, align 8, !dbg !4351, !tbaa !951
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4351
  %139 = load ptr, ptr %138, align 8, !dbg !4351, !tbaa !951
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4351
  %141 = load ptr, ptr %140, align 8, !dbg !4351, !tbaa !951
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4351
  %143 = load ptr, ptr %142, align 8, !dbg !4351, !tbaa !951
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4351
  %145 = load ptr, ptr %144, align 8, !dbg !4351, !tbaa !951
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #40, !dbg !4351
  br label %147, !dbg !4352

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4353
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4354 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4358, metadata !DIExpression()), !dbg !4364
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4359, metadata !DIExpression()), !dbg !4364
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4360, metadata !DIExpression()), !dbg !4364
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4361, metadata !DIExpression()), !dbg !4364
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4362, metadata !DIExpression()), !dbg !4364
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4363, metadata !DIExpression()), !dbg !4364
  br label %6, !dbg !4365

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4367
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4363, metadata !DIExpression()), !dbg !4364
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4368
  %9 = load ptr, ptr %8, align 8, !dbg !4368, !tbaa !951
  %10 = icmp eq ptr %9, null, !dbg !4370
  %11 = add i64 %7, 1, !dbg !4371
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4363, metadata !DIExpression()), !dbg !4364
  br i1 %10, label %12, label %6, !dbg !4370, !llvm.loop !4372

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4374
  ret void, !dbg !4375
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4376 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !4395
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4393, metadata !DIExpression(), metadata !4395, metadata ptr %6, metadata !DIExpression()), !dbg !4396
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4387, metadata !DIExpression()), !dbg !4396
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4388, metadata !DIExpression()), !dbg !4396
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4389, metadata !DIExpression()), !dbg !4396
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4390, metadata !DIExpression()), !dbg !4396
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4391, metadata !DIExpression()), !dbg !4396
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #40, !dbg !4397
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4392, metadata !DIExpression()), !dbg !4396
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4392, metadata !DIExpression()), !dbg !4396
  %10 = icmp ult i32 %9, 41, !dbg !4398
  br i1 %10, label %11, label %16, !dbg !4398

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4398
  %13 = zext nneg i32 %9 to i64, !dbg !4398
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4398
  %15 = add nuw nsw i32 %9, 8, !dbg !4398
  store i32 %15, ptr %4, align 8, !dbg !4398
  br label %19, !dbg !4398

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4398
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4398
  store ptr %18, ptr %7, align 8, !dbg !4398
  br label %19, !dbg !4398

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4398
  %22 = load ptr, ptr %21, align 8, !dbg !4398
  store ptr %22, ptr %6, align 16, !dbg !4401, !tbaa !951
  %23 = icmp eq ptr %22, null, !dbg !4402
  br i1 %23, label %128, label %24, !dbg !4403

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4392, metadata !DIExpression()), !dbg !4396
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4392, metadata !DIExpression()), !dbg !4396
  %25 = icmp ult i32 %20, 41, !dbg !4398
  br i1 %25, label %29, label %26, !dbg !4398

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4398
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4398
  store ptr %28, ptr %7, align 8, !dbg !4398
  br label %34, !dbg !4398

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4398
  %31 = zext nneg i32 %20 to i64, !dbg !4398
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4398
  %33 = add nuw nsw i32 %20, 8, !dbg !4398
  store i32 %33, ptr %4, align 8, !dbg !4398
  br label %34, !dbg !4398

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4398
  %37 = load ptr, ptr %36, align 8, !dbg !4398
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4404
  store ptr %37, ptr %38, align 8, !dbg !4401, !tbaa !951
  %39 = icmp eq ptr %37, null, !dbg !4402
  br i1 %39, label %128, label %40, !dbg !4403

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4392, metadata !DIExpression()), !dbg !4396
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4392, metadata !DIExpression()), !dbg !4396
  %41 = icmp ult i32 %35, 41, !dbg !4398
  br i1 %41, label %45, label %42, !dbg !4398

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4398
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4398
  store ptr %44, ptr %7, align 8, !dbg !4398
  br label %50, !dbg !4398

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4398
  %47 = zext nneg i32 %35 to i64, !dbg !4398
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4398
  %49 = add nuw nsw i32 %35, 8, !dbg !4398
  store i32 %49, ptr %4, align 8, !dbg !4398
  br label %50, !dbg !4398

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4398
  %53 = load ptr, ptr %52, align 8, !dbg !4398
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4404
  store ptr %53, ptr %54, align 16, !dbg !4401, !tbaa !951
  %55 = icmp eq ptr %53, null, !dbg !4402
  br i1 %55, label %128, label %56, !dbg !4403

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4392, metadata !DIExpression()), !dbg !4396
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4392, metadata !DIExpression()), !dbg !4396
  %57 = icmp ult i32 %51, 41, !dbg !4398
  br i1 %57, label %61, label %58, !dbg !4398

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4398
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4398
  store ptr %60, ptr %7, align 8, !dbg !4398
  br label %66, !dbg !4398

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4398
  %63 = zext nneg i32 %51 to i64, !dbg !4398
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4398
  %65 = add nuw nsw i32 %51, 8, !dbg !4398
  store i32 %65, ptr %4, align 8, !dbg !4398
  br label %66, !dbg !4398

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4398
  %69 = load ptr, ptr %68, align 8, !dbg !4398
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4404
  store ptr %69, ptr %70, align 8, !dbg !4401, !tbaa !951
  %71 = icmp eq ptr %69, null, !dbg !4402
  br i1 %71, label %128, label %72, !dbg !4403

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4392, metadata !DIExpression()), !dbg !4396
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4392, metadata !DIExpression()), !dbg !4396
  %73 = icmp ult i32 %67, 41, !dbg !4398
  br i1 %73, label %77, label %74, !dbg !4398

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4398
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4398
  store ptr %76, ptr %7, align 8, !dbg !4398
  br label %82, !dbg !4398

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4398
  %79 = zext nneg i32 %67 to i64, !dbg !4398
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4398
  %81 = add nuw nsw i32 %67, 8, !dbg !4398
  store i32 %81, ptr %4, align 8, !dbg !4398
  br label %82, !dbg !4398

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4398
  %85 = load ptr, ptr %84, align 8, !dbg !4398
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4404
  store ptr %85, ptr %86, align 16, !dbg !4401, !tbaa !951
  %87 = icmp eq ptr %85, null, !dbg !4402
  br i1 %87, label %128, label %88, !dbg !4403

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4392, metadata !DIExpression()), !dbg !4396
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4392, metadata !DIExpression()), !dbg !4396
  %89 = icmp ult i32 %83, 41, !dbg !4398
  br i1 %89, label %93, label %90, !dbg !4398

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4398
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4398
  store ptr %92, ptr %7, align 8, !dbg !4398
  br label %98, !dbg !4398

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4398
  %95 = zext nneg i32 %83 to i64, !dbg !4398
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4398
  %97 = add nuw nsw i32 %83, 8, !dbg !4398
  store i32 %97, ptr %4, align 8, !dbg !4398
  br label %98, !dbg !4398

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4398
  %100 = load ptr, ptr %99, align 8, !dbg !4398
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4404
  store ptr %100, ptr %101, align 8, !dbg !4401, !tbaa !951
  %102 = icmp eq ptr %100, null, !dbg !4402
  br i1 %102, label %128, label %103, !dbg !4403

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4392, metadata !DIExpression()), !dbg !4396
  %104 = load ptr, ptr %7, align 8, !dbg !4398
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4398
  store ptr %105, ptr %7, align 8, !dbg !4398
  %106 = load ptr, ptr %104, align 8, !dbg !4398
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4404
  store ptr %106, ptr %107, align 16, !dbg !4401, !tbaa !951
  %108 = icmp eq ptr %106, null, !dbg !4402
  br i1 %108, label %128, label %109, !dbg !4403

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4392, metadata !DIExpression()), !dbg !4396
  %110 = load ptr, ptr %7, align 8, !dbg !4398
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4398
  store ptr %111, ptr %7, align 8, !dbg !4398
  %112 = load ptr, ptr %110, align 8, !dbg !4398
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4404
  store ptr %112, ptr %113, align 8, !dbg !4401, !tbaa !951
  %114 = icmp eq ptr %112, null, !dbg !4402
  br i1 %114, label %128, label %115, !dbg !4403

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4392, metadata !DIExpression()), !dbg !4396
  %116 = load ptr, ptr %7, align 8, !dbg !4398
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4398
  store ptr %117, ptr %7, align 8, !dbg !4398
  %118 = load ptr, ptr %116, align 8, !dbg !4398
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4404
  store ptr %118, ptr %119, align 16, !dbg !4401, !tbaa !951
  %120 = icmp eq ptr %118, null, !dbg !4402
  br i1 %120, label %128, label %121, !dbg !4403

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4392, metadata !DIExpression()), !dbg !4396
  %122 = load ptr, ptr %7, align 8, !dbg !4398
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4398
  store ptr %123, ptr %7, align 8, !dbg !4398
  %124 = load ptr, ptr %122, align 8, !dbg !4398
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4404
  store ptr %124, ptr %125, align 8, !dbg !4401, !tbaa !951
  %126 = icmp eq ptr %124, null, !dbg !4402
  %127 = select i1 %126, i64 9, i64 10, !dbg !4403
  br label %128, !dbg !4403

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4405
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4406
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #40, !dbg !4407
  ret void, !dbg !4407
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4408 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !4421
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4416, metadata !DIExpression(), metadata !4421, metadata ptr %5, metadata !DIExpression()), !dbg !4422
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4412, metadata !DIExpression()), !dbg !4422
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4413, metadata !DIExpression()), !dbg !4422
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4414, metadata !DIExpression()), !dbg !4422
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4415, metadata !DIExpression()), !dbg !4422
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #40, !dbg !4423
  call void @llvm.va_start(ptr nonnull %5), !dbg !4424
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4425
  call void @llvm.va_end(ptr nonnull %5), !dbg !4426
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #40, !dbg !4427
  ret void, !dbg !4427
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4428 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4429, !tbaa !951
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.144, ptr noundef %1), !dbg !4429
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.17.159, i32 noundef 5) #40, !dbg !4430
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.160) #40, !dbg !4430
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.19.161, i32 noundef 5) #40, !dbg !4431
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.162, ptr noundef nonnull @.str.21.163) #40, !dbg !4431
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.142, ptr noundef nonnull @.str.22.164, i32 noundef 5) #40, !dbg !4432
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.165) #40, !dbg !4432
  ret void, !dbg !4433
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #30 !dbg !4434 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4439, metadata !DIExpression()), !dbg !4442
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4440, metadata !DIExpression()), !dbg !4442
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4441, metadata !DIExpression()), !dbg !4442
  call void @llvm.dbg.value(metadata ptr %0, metadata !4443, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata i64 %1, metadata !4446, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.value(metadata i64 %2, metadata !4447, metadata !DIExpression()), !dbg !4448
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4450
  call void @llvm.dbg.value(metadata ptr %4, metadata !4451, metadata !DIExpression()), !dbg !4456
  %5 = icmp eq ptr %4, null, !dbg !4458
  br i1 %5, label %6, label %7, !dbg !4460

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4461
  unreachable, !dbg !4461

7:                                                ; preds = %3
  ret ptr %4, !dbg !4462
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4444 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4443, metadata !DIExpression()), !dbg !4463
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4446, metadata !DIExpression()), !dbg !4463
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4447, metadata !DIExpression()), !dbg !4463
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4464
  call void @llvm.dbg.value(metadata ptr %4, metadata !4451, metadata !DIExpression()), !dbg !4465
  %5 = icmp eq ptr %4, null, !dbg !4467
  br i1 %5, label %6, label %7, !dbg !4468

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4469
  unreachable, !dbg !4469

7:                                                ; preds = %3
  ret ptr %4, !dbg !4470
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4471 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4475, metadata !DIExpression()), !dbg !4476
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4477
  call void @llvm.dbg.value(metadata ptr %2, metadata !4451, metadata !DIExpression()), !dbg !4478
  %3 = icmp eq ptr %2, null, !dbg !4480
  br i1 %3, label %4, label %5, !dbg !4481

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4482
  unreachable, !dbg !4482

5:                                                ; preds = %1
  ret ptr %2, !dbg !4483
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4484 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4485 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4489, metadata !DIExpression()), !dbg !4490
  call void @llvm.dbg.value(metadata i64 %0, metadata !4491, metadata !DIExpression()), !dbg !4495
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4497
  call void @llvm.dbg.value(metadata ptr %2, metadata !4451, metadata !DIExpression()), !dbg !4498
  %3 = icmp eq ptr %2, null, !dbg !4500
  br i1 %3, label %4, label %5, !dbg !4501

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4502
  unreachable, !dbg !4502

5:                                                ; preds = %1
  ret ptr %2, !dbg !4503
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4504 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4508, metadata !DIExpression()), !dbg !4509
  call void @llvm.dbg.value(metadata i64 %0, metadata !4475, metadata !DIExpression()), !dbg !4510
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #48, !dbg !4512
  call void @llvm.dbg.value(metadata ptr %2, metadata !4451, metadata !DIExpression()), !dbg !4513
  %3 = icmp eq ptr %2, null, !dbg !4515
  br i1 %3, label %4, label %5, !dbg !4516

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4517
  unreachable, !dbg !4517

5:                                                ; preds = %1
  ret ptr %2, !dbg !4518
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4519 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4523, metadata !DIExpression()), !dbg !4525
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4524, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata ptr %0, metadata !4526, metadata !DIExpression()), !dbg !4531
  call void @llvm.dbg.value(metadata i64 %1, metadata !4530, metadata !DIExpression()), !dbg !4531
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4533
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4534
  call void @llvm.dbg.value(metadata ptr %4, metadata !4451, metadata !DIExpression()), !dbg !4535
  %5 = icmp eq ptr %4, null, !dbg !4537
  br i1 %5, label %6, label %7, !dbg !4538

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4539
  unreachable, !dbg !4539

7:                                                ; preds = %2
  ret ptr %4, !dbg !4540
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4541 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #35

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4542 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4546, metadata !DIExpression()), !dbg !4548
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4547, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata ptr %0, metadata !4549, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata i64 %1, metadata !4552, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata ptr %0, metadata !4526, metadata !DIExpression()), !dbg !4555
  call void @llvm.dbg.value(metadata i64 %1, metadata !4530, metadata !DIExpression()), !dbg !4555
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4557
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #47, !dbg !4558
  call void @llvm.dbg.value(metadata ptr %4, metadata !4451, metadata !DIExpression()), !dbg !4559
  %5 = icmp eq ptr %4, null, !dbg !4561
  br i1 %5, label %6, label %7, !dbg !4562

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4563
  unreachable, !dbg !4563

7:                                                ; preds = %2
  ret ptr %4, !dbg !4564
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #31 !dbg !4565 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4569, metadata !DIExpression()), !dbg !4572
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4570, metadata !DIExpression()), !dbg !4572
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4571, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata ptr %0, metadata !4573, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i64 %1, metadata !4576, metadata !DIExpression()), !dbg !4578
  call void @llvm.dbg.value(metadata i64 %2, metadata !4577, metadata !DIExpression()), !dbg !4578
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #40, !dbg !4580
  call void @llvm.dbg.value(metadata ptr %4, metadata !4451, metadata !DIExpression()), !dbg !4581
  %5 = icmp eq ptr %4, null, !dbg !4583
  br i1 %5, label %6, label %7, !dbg !4584

6:                                                ; preds = %3
  tail call void @xalloc_die() #42, !dbg !4585
  unreachable, !dbg !4585

7:                                                ; preds = %3
  ret ptr %4, !dbg !4586
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4587 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4591, metadata !DIExpression()), !dbg !4593
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4592, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata ptr null, metadata !4443, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata i64 %0, metadata !4446, metadata !DIExpression()), !dbg !4594
  call void @llvm.dbg.value(metadata i64 %1, metadata !4447, metadata !DIExpression()), !dbg !4594
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4596
  call void @llvm.dbg.value(metadata ptr %3, metadata !4451, metadata !DIExpression()), !dbg !4597
  %4 = icmp eq ptr %3, null, !dbg !4599
  br i1 %4, label %5, label %6, !dbg !4600

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4601
  unreachable, !dbg !4601

6:                                                ; preds = %2
  ret ptr %3, !dbg !4602
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4603 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4607, metadata !DIExpression()), !dbg !4609
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4608, metadata !DIExpression()), !dbg !4609
  call void @llvm.dbg.value(metadata ptr null, metadata !4569, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata i64 %0, metadata !4570, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata i64 %1, metadata !4571, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata ptr null, metadata !4573, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.value(metadata i64 %0, metadata !4576, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.value(metadata i64 %1, metadata !4577, metadata !DIExpression()), !dbg !4612
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #40, !dbg !4614
  call void @llvm.dbg.value(metadata ptr %3, metadata !4451, metadata !DIExpression()), !dbg !4615
  %4 = icmp eq ptr %3, null, !dbg !4617
  br i1 %4, label %5, label %6, !dbg !4618

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4619
  unreachable, !dbg !4619

6:                                                ; preds = %2
  ret ptr %3, !dbg !4620
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4621 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4625, metadata !DIExpression()), !dbg !4627
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4626, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata ptr %0, metadata !886, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata ptr %1, metadata !887, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata i64 1, metadata !888, metadata !DIExpression()), !dbg !4628
  %3 = load i64, ptr %1, align 8, !dbg !4630, !tbaa !1541
  call void @llvm.dbg.value(metadata i64 %3, metadata !889, metadata !DIExpression()), !dbg !4628
  %4 = icmp eq ptr %0, null, !dbg !4631
  br i1 %4, label %5, label %8, !dbg !4633

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4634
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4637
  br label %15, !dbg !4637

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4638
  %10 = add nuw i64 %9, 1, !dbg !4638
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4638
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4638
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4638
  call void @llvm.dbg.value(metadata i64 %13, metadata !889, metadata !DIExpression()), !dbg !4628
  br i1 %12, label %14, label %15, !dbg !4641

14:                                               ; preds = %8
  tail call void @xalloc_die() #42, !dbg !4642
  unreachable, !dbg !4642

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4628
  call void @llvm.dbg.value(metadata i64 %16, metadata !889, metadata !DIExpression()), !dbg !4628
  call void @llvm.dbg.value(metadata ptr %0, metadata !4443, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i64 %16, metadata !4446, metadata !DIExpression()), !dbg !4643
  call void @llvm.dbg.value(metadata i64 1, metadata !4447, metadata !DIExpression()), !dbg !4643
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #40, !dbg !4645
  call void @llvm.dbg.value(metadata ptr %17, metadata !4451, metadata !DIExpression()), !dbg !4646
  %18 = icmp eq ptr %17, null, !dbg !4648
  br i1 %18, label %19, label %20, !dbg !4649

19:                                               ; preds = %15
  tail call void @xalloc_die() #42, !dbg !4650
  unreachable, !dbg !4650

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !886, metadata !DIExpression()), !dbg !4628
  store i64 %16, ptr %1, align 8, !dbg !4651, !tbaa !1541
  ret ptr %17, !dbg !4652
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !881 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !886, metadata !DIExpression()), !dbg !4653
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !887, metadata !DIExpression()), !dbg !4653
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !888, metadata !DIExpression()), !dbg !4653
  %4 = load i64, ptr %1, align 8, !dbg !4654, !tbaa !1541
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !889, metadata !DIExpression()), !dbg !4653
  %5 = icmp eq ptr %0, null, !dbg !4655
  br i1 %5, label %6, label %13, !dbg !4656

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4657
  br i1 %7, label %8, label %20, !dbg !4658

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4659
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !889, metadata !DIExpression()), !dbg !4653
  %10 = icmp ugt i64 %2, 128, !dbg !4661
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4662
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !889, metadata !DIExpression()), !dbg !4653
  br label %20, !dbg !4663

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4664
  %15 = add nuw i64 %14, 1, !dbg !4664
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4664
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4664
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4664
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !889, metadata !DIExpression()), !dbg !4653
  br i1 %17, label %19, label %20, !dbg !4665

19:                                               ; preds = %13
  tail call void @xalloc_die() #42, !dbg !4666
  unreachable, !dbg !4666

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4653
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !889, metadata !DIExpression()), !dbg !4653
  call void @llvm.dbg.value(metadata ptr %0, metadata !4443, metadata !DIExpression()), !dbg !4667
  call void @llvm.dbg.value(metadata i64 %21, metadata !4446, metadata !DIExpression()), !dbg !4667
  call void @llvm.dbg.value(metadata i64 %2, metadata !4447, metadata !DIExpression()), !dbg !4667
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #40, !dbg !4669
  call void @llvm.dbg.value(metadata ptr %22, metadata !4451, metadata !DIExpression()), !dbg !4670
  %23 = icmp eq ptr %22, null, !dbg !4672
  br i1 %23, label %24, label %25, !dbg !4673

24:                                               ; preds = %20
  tail call void @xalloc_die() #42, !dbg !4674
  unreachable, !dbg !4674

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !886, metadata !DIExpression()), !dbg !4653
  store i64 %21, ptr %1, align 8, !dbg !4675, !tbaa !1541
  ret ptr %22, !dbg !4676
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !893 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !902, metadata !DIExpression()), !dbg !4677
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !903, metadata !DIExpression()), !dbg !4677
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !904, metadata !DIExpression()), !dbg !4677
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !905, metadata !DIExpression()), !dbg !4677
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !906, metadata !DIExpression()), !dbg !4677
  %6 = load i64, ptr %1, align 8, !dbg !4678, !tbaa !1541
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !907, metadata !DIExpression()), !dbg !4677
  %7 = ashr i64 %6, 1, !dbg !4679
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4679
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4679
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4679
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !908, metadata !DIExpression()), !dbg !4677
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4681
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !908, metadata !DIExpression()), !dbg !4677
  %12 = icmp sgt i64 %3, -1, !dbg !4682
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4684
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4684
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !908, metadata !DIExpression()), !dbg !4677
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4685
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4685
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4685
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !909, metadata !DIExpression()), !dbg !4677
  %18 = icmp slt i64 %17, 128, !dbg !4685
  %19 = select i1 %18, i64 128, i64 0, !dbg !4685
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4685
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !910, metadata !DIExpression()), !dbg !4677
  %21 = icmp eq i64 %20, 0, !dbg !4686
  br i1 %21, label %26, label %22, !dbg !4688

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4689
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !908, metadata !DIExpression()), !dbg !4677
  %24 = srem i64 %20, %4, !dbg !4691
  %25 = sub nsw i64 %20, %24, !dbg !4692
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !909, metadata !DIExpression()), !dbg !4677
  br label %26, !dbg !4693

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4677
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4677
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !909, metadata !DIExpression()), !dbg !4677
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !908, metadata !DIExpression()), !dbg !4677
  %29 = icmp eq ptr %0, null, !dbg !4694
  br i1 %29, label %30, label %31, !dbg !4696

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4697, !tbaa !1541
  br label %31, !dbg !4698

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4699
  %33 = icmp slt i64 %32, %2, !dbg !4701
  br i1 %33, label %34, label %46, !dbg !4702

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4703
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4703
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4703
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !908, metadata !DIExpression()), !dbg !4677
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4704
  br i1 %40, label %45, label %41, !dbg !4704

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4705
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4705
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4705
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !909, metadata !DIExpression()), !dbg !4677
  br i1 %43, label %45, label %46, !dbg !4706

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #42, !dbg !4707
  unreachable, !dbg !4707

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4677
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4677
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !909, metadata !DIExpression()), !dbg !4677
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !908, metadata !DIExpression()), !dbg !4677
  call void @llvm.dbg.value(metadata ptr %0, metadata !4523, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.value(metadata i64 %48, metadata !4524, metadata !DIExpression()), !dbg !4708
  call void @llvm.dbg.value(metadata ptr %0, metadata !4526, metadata !DIExpression()), !dbg !4710
  call void @llvm.dbg.value(metadata i64 %48, metadata !4530, metadata !DIExpression()), !dbg !4710
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4712
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #47, !dbg !4713
  call void @llvm.dbg.value(metadata ptr %50, metadata !4451, metadata !DIExpression()), !dbg !4714
  %51 = icmp eq ptr %50, null, !dbg !4716
  br i1 %51, label %52, label %53, !dbg !4717

52:                                               ; preds = %46
  tail call void @xalloc_die() #42, !dbg !4718
  unreachable, !dbg !4718

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !902, metadata !DIExpression()), !dbg !4677
  store i64 %47, ptr %1, align 8, !dbg !4719, !tbaa !1541
  ret ptr %50, !dbg !4720
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4721 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4723, metadata !DIExpression()), !dbg !4724
  call void @llvm.dbg.value(metadata i64 %0, metadata !4725, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata i64 1, metadata !4728, metadata !DIExpression()), !dbg !4729
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4731
  call void @llvm.dbg.value(metadata ptr %2, metadata !4451, metadata !DIExpression()), !dbg !4732
  %3 = icmp eq ptr %2, null, !dbg !4734
  br i1 %3, label %4, label %5, !dbg !4735

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4736
  unreachable, !dbg !4736

5:                                                ; preds = %1
  ret ptr %2, !dbg !4737
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4738 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #37

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4726 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4725, metadata !DIExpression()), !dbg !4739
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4728, metadata !DIExpression()), !dbg !4739
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4740
  call void @llvm.dbg.value(metadata ptr %3, metadata !4451, metadata !DIExpression()), !dbg !4741
  %4 = icmp eq ptr %3, null, !dbg !4743
  br i1 %4, label %5, label %6, !dbg !4744

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4745
  unreachable, !dbg !4745

6:                                                ; preds = %2
  ret ptr %3, !dbg !4746
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #32 !dbg !4747 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4749, metadata !DIExpression()), !dbg !4750
  call void @llvm.dbg.value(metadata i64 %0, metadata !4751, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.value(metadata i64 1, metadata !4754, metadata !DIExpression()), !dbg !4755
  call void @llvm.dbg.value(metadata i64 %0, metadata !4757, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i64 1, metadata !4760, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i64 %0, metadata !4757, metadata !DIExpression()), !dbg !4761
  call void @llvm.dbg.value(metadata i64 1, metadata !4760, metadata !DIExpression()), !dbg !4761
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #49, !dbg !4763
  call void @llvm.dbg.value(metadata ptr %2, metadata !4451, metadata !DIExpression()), !dbg !4764
  %3 = icmp eq ptr %2, null, !dbg !4766
  br i1 %3, label %4, label %5, !dbg !4767

4:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4768
  unreachable, !dbg !4768

5:                                                ; preds = %1
  ret ptr %2, !dbg !4769
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #36 !dbg !4752 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4751, metadata !DIExpression()), !dbg !4770
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4754, metadata !DIExpression()), !dbg !4770
  call void @llvm.dbg.value(metadata i64 %0, metadata !4757, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i64 %1, metadata !4760, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i64 %0, metadata !4757, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i64 %1, metadata !4760, metadata !DIExpression()), !dbg !4771
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #49, !dbg !4773
  call void @llvm.dbg.value(metadata ptr %3, metadata !4451, metadata !DIExpression()), !dbg !4774
  %4 = icmp eq ptr %3, null, !dbg !4776
  br i1 %4, label %5, label %6, !dbg !4777

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4778
  unreachable, !dbg !4778

6:                                                ; preds = %2
  ret ptr %3, !dbg !4779
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4780 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4784, metadata !DIExpression()), !dbg !4786
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4785, metadata !DIExpression()), !dbg !4786
  call void @llvm.dbg.value(metadata i64 %1, metadata !4475, metadata !DIExpression()), !dbg !4787
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4789
  call void @llvm.dbg.value(metadata ptr %3, metadata !4451, metadata !DIExpression()), !dbg !4790
  %4 = icmp eq ptr %3, null, !dbg !4792
  br i1 %4, label %5, label %6, !dbg !4793

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4794
  unreachable, !dbg !4794

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4795, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.value(metadata ptr %0, metadata !4801, metadata !DIExpression()), !dbg !4803
  call void @llvm.dbg.value(metadata i64 %1, metadata !4802, metadata !DIExpression()), !dbg !4803
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4805
  ret ptr %3, !dbg !4806
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #34 !dbg !4807 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4811, metadata !DIExpression()), !dbg !4813
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4812, metadata !DIExpression()), !dbg !4813
  call void @llvm.dbg.value(metadata i64 %1, metadata !4489, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i64 %1, metadata !4491, metadata !DIExpression()), !dbg !4816
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #48, !dbg !4818
  call void @llvm.dbg.value(metadata ptr %3, metadata !4451, metadata !DIExpression()), !dbg !4819
  %4 = icmp eq ptr %3, null, !dbg !4821
  br i1 %4, label %5, label %6, !dbg !4822

5:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4823
  unreachable, !dbg !4823

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4795, metadata !DIExpression()), !dbg !4824
  call void @llvm.dbg.value(metadata ptr %0, metadata !4801, metadata !DIExpression()), !dbg !4824
  call void @llvm.dbg.value(metadata i64 %1, metadata !4802, metadata !DIExpression()), !dbg !4824
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4826
  ret ptr %3, !dbg !4827
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4828 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4832, metadata !DIExpression()), !dbg !4835
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4833, metadata !DIExpression()), !dbg !4835
  %3 = add nsw i64 %1, 1, !dbg !4836
  call void @llvm.dbg.value(metadata i64 %3, metadata !4489, metadata !DIExpression()), !dbg !4837
  call void @llvm.dbg.value(metadata i64 %3, metadata !4491, metadata !DIExpression()), !dbg !4839
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4841
  call void @llvm.dbg.value(metadata ptr %4, metadata !4451, metadata !DIExpression()), !dbg !4842
  %5 = icmp eq ptr %4, null, !dbg !4844
  br i1 %5, label %6, label %7, !dbg !4845

6:                                                ; preds = %2
  tail call void @xalloc_die() #42, !dbg !4846
  unreachable, !dbg !4846

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4834, metadata !DIExpression()), !dbg !4835
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4847
  store i8 0, ptr %8, align 1, !dbg !4848, !tbaa !1061
  call void @llvm.dbg.value(metadata ptr %4, metadata !4795, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata ptr %0, metadata !4801, metadata !DIExpression()), !dbg !4849
  call void @llvm.dbg.value(metadata i64 %1, metadata !4802, metadata !DIExpression()), !dbg !4849
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #40, !dbg !4851
  ret ptr %4, !dbg !4852
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4853 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4855, metadata !DIExpression()), !dbg !4856
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #41, !dbg !4857
  %3 = add i64 %2, 1, !dbg !4858
  call void @llvm.dbg.value(metadata ptr %0, metadata !4784, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 %3, metadata !4785, metadata !DIExpression()), !dbg !4859
  call void @llvm.dbg.value(metadata i64 %3, metadata !4475, metadata !DIExpression()), !dbg !4861
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #48, !dbg !4863
  call void @llvm.dbg.value(metadata ptr %4, metadata !4451, metadata !DIExpression()), !dbg !4864
  %5 = icmp eq ptr %4, null, !dbg !4866
  br i1 %5, label %6, label %7, !dbg !4867

6:                                                ; preds = %1
  tail call void @xalloc_die() #42, !dbg !4868
  unreachable, !dbg !4868

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4795, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata ptr %0, metadata !4801, metadata !DIExpression()), !dbg !4869
  call void @llvm.dbg.value(metadata i64 %3, metadata !4802, metadata !DIExpression()), !dbg !4869
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #40, !dbg !4871
  ret ptr %4, !dbg !4872
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4873 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4878, !tbaa !1052
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4875, metadata !DIExpression()), !dbg !4879
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.176, ptr noundef nonnull @.str.2.177, i32 noundef 5) #40, !dbg !4878
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.178, ptr noundef %2) #40, !dbg !4878
  %3 = icmp eq i32 %1, 0, !dbg !4878
  tail call void @llvm.assume(i1 %3), !dbg !4878
  tail call void @abort() #42, !dbg !4880
  unreachable, !dbg !4880
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #38

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !4881 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4919, metadata !DIExpression()), !dbg !4924
  %2 = tail call i64 @__fpending(ptr noundef %0) #40, !dbg !4925
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4920, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4924
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4926, metadata !DIExpression()), !dbg !4929
  %3 = load i32, ptr %0, align 8, !dbg !4931, !tbaa !4932
  %4 = and i32 %3, 32, !dbg !4933
  %5 = icmp eq i32 %4, 0, !dbg !4933
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !4922, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4924
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #40, !dbg !4934
  %7 = icmp eq i32 %6, 0, !dbg !4935
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !4923, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4924
  br i1 %5, label %8, label %18, !dbg !4936

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !4938
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !4920, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !4924
  %10 = select i1 %7, i1 true, i1 %9, !dbg !4939
  %11 = xor i1 %7, true, !dbg !4939
  %12 = sext i1 %11 to i32, !dbg !4939
  br i1 %10, label %21, label %13, !dbg !4939

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #43, !dbg !4940
  %15 = load i32, ptr %14, align 4, !dbg !4940, !tbaa !1052
  %16 = icmp ne i32 %15, 9, !dbg !4941
  %17 = sext i1 %16 to i32, !dbg !4942
  br label %21, !dbg !4942

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !4943

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #43, !dbg !4945
  store i32 0, ptr %20, align 4, !dbg !4947, !tbaa !1052
  br label %21, !dbg !4945

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !4924
  ret i32 %22, !dbg !4948
}

; Function Attrs: nounwind
declare !dbg !4949 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !4953 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4991, metadata !DIExpression()), !dbg !4995
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4992, metadata !DIExpression()), !dbg !4995
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !4996
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !4993, metadata !DIExpression()), !dbg !4995
  %3 = icmp slt i32 %2, 0, !dbg !4997
  br i1 %3, label %4, label %6, !dbg !4999

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5000
  br label %24, !dbg !5001

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !5002
  %8 = icmp eq i32 %7, 0, !dbg !5002
  br i1 %8, label %13, label %9, !dbg !5004

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !5005
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #40, !dbg !5006
  %12 = icmp eq i64 %11, -1, !dbg !5007
  br i1 %12, label %16, label %13, !dbg !5008

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #40, !dbg !5009
  %15 = icmp eq i32 %14, 0, !dbg !5009
  br i1 %15, label %16, label %18, !dbg !5010

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4992, metadata !DIExpression()), !dbg !4995
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4994, metadata !DIExpression()), !dbg !4995
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5011
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4994, metadata !DIExpression()), !dbg !4995
  br label %24, !dbg !5012

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #43, !dbg !5013
  %20 = load i32, ptr %19, align 4, !dbg !5013, !tbaa !1052
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !4992, metadata !DIExpression()), !dbg !4995
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4994, metadata !DIExpression()), !dbg !4995
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !5011
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !4994, metadata !DIExpression()), !dbg !4995
  %22 = icmp eq i32 %20, 0, !dbg !5014
  br i1 %22, label %24, label %23, !dbg !5012

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !5016, !tbaa !1052
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !4994, metadata !DIExpression()), !dbg !4995
  br label %24, !dbg !5018

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !4995
  ret i32 %25, !dbg !5019
}

; Function Attrs: nofree nounwind
declare !dbg !5020 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare !dbg !5021 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !5022 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !5023 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !5026 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5064, metadata !DIExpression()), !dbg !5065
  %2 = icmp eq ptr %0, null, !dbg !5066
  br i1 %2, label %6, label %3, !dbg !5068

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #40, !dbg !5069
  %5 = icmp eq i32 %4, 0, !dbg !5069
  br i1 %5, label %6, label %8, !dbg !5070

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !5071
  br label %16, !dbg !5072

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !5073, metadata !DIExpression()), !dbg !5078
  %9 = load i32, ptr %0, align 8, !dbg !5080, !tbaa !4932
  %10 = and i32 %9, 256, !dbg !5082
  %11 = icmp eq i32 %10, 0, !dbg !5082
  br i1 %11, label %14, label %12, !dbg !5083

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #40, !dbg !5084
  br label %14, !dbg !5084

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !5085
  br label %16, !dbg !5086

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !5065
  ret i32 %17, !dbg !5087
}

; Function Attrs: nofree nounwind
declare !dbg !5088 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !5089 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5128, metadata !DIExpression()), !dbg !5134
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5129, metadata !DIExpression()), !dbg !5134
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !5130, metadata !DIExpression()), !dbg !5134
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !5135
  %5 = load ptr, ptr %4, align 8, !dbg !5135, !tbaa !5136
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !5137
  %7 = load ptr, ptr %6, align 8, !dbg !5137, !tbaa !5138
  %8 = icmp eq ptr %5, %7, !dbg !5139
  br i1 %8, label %9, label %27, !dbg !5140

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !5141
  %11 = load ptr, ptr %10, align 8, !dbg !5141, !tbaa !2563
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !5142
  %13 = load ptr, ptr %12, align 8, !dbg !5142, !tbaa !5143
  %14 = icmp eq ptr %11, %13, !dbg !5144
  br i1 %14, label %15, label %27, !dbg !5145

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !5146
  %17 = load ptr, ptr %16, align 8, !dbg !5146, !tbaa !5147
  %18 = icmp eq ptr %17, null, !dbg !5148
  br i1 %18, label %19, label %27, !dbg !5149

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #40, !dbg !5150
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #40, !dbg !5151
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !5131, metadata !DIExpression()), !dbg !5152
  %22 = icmp eq i64 %21, -1, !dbg !5153
  br i1 %22, label %29, label %23, !dbg !5155

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !5156, !tbaa !4932
  %25 = and i32 %24, -17, !dbg !5156
  store i32 %25, ptr %0, align 8, !dbg !5156, !tbaa !4932
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !5157
  store i64 %21, ptr %26, align 8, !dbg !5158, !tbaa !5159
  br label %29, !dbg !5160

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !5161
  br label %29, !dbg !5162

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !5134
  ret i32 %30, !dbg !5163
}

; Function Attrs: nofree nounwind
declare !dbg !5164 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5167 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5173, metadata !DIExpression()), !dbg !5178
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5174, metadata !DIExpression()), !dbg !5178
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5175, metadata !DIExpression()), !dbg !5178
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5176, metadata !DIExpression()), !dbg !5178
  %5 = icmp eq ptr %1, null, !dbg !5179
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5181
  %7 = select i1 %5, ptr @.str.189, ptr %1, !dbg !5181
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5181
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !5175, metadata !DIExpression()), !dbg !5178
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !5174, metadata !DIExpression()), !dbg !5178
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5173, metadata !DIExpression()), !dbg !5178
  %9 = icmp eq ptr %3, null, !dbg !5182
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5184
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5176, metadata !DIExpression()), !dbg !5178
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #40, !dbg !5185
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5177, metadata !DIExpression()), !dbg !5178
  %12 = icmp ult i64 %11, -3, !dbg !5186
  br i1 %12, label %13, label %17, !dbg !5188

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #41, !dbg !5189
  %15 = icmp eq i32 %14, 0, !dbg !5189
  br i1 %15, label %16, label %29, !dbg !5190

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5191, metadata !DIExpression()), !dbg !5196
  call void @llvm.dbg.value(metadata ptr %10, metadata !5198, metadata !DIExpression()), !dbg !5203
  call void @llvm.dbg.value(metadata i32 0, metadata !5201, metadata !DIExpression()), !dbg !5203
  call void @llvm.dbg.value(metadata i64 8, metadata !5202, metadata !DIExpression()), !dbg !5203
  store i64 0, ptr %10, align 1, !dbg !5205
  br label %29, !dbg !5206

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5207
  br i1 %18, label %19, label %20, !dbg !5209

19:                                               ; preds = %17
  tail call void @abort() #42, !dbg !5210
  unreachable, !dbg !5210

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5211

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #40, !dbg !5213
  br i1 %23, label %29, label %24, !dbg !5214

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5215
  br i1 %25, label %29, label %26, !dbg !5218

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5219, !tbaa !1061
  %28 = zext i8 %27 to i32, !dbg !5220
  store i32 %28, ptr %6, align 4, !dbg !5221, !tbaa !1052
  br label %29, !dbg !5222

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5178
  ret i64 %30, !dbg !5223
}

; Function Attrs: nounwind
declare !dbg !5224 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5229 i32 @mbsinit(ptr noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #39 !dbg !5235 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5237, metadata !DIExpression()), !dbg !5241
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5238, metadata !DIExpression()), !dbg !5241
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5239, metadata !DIExpression()), !dbg !5241
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5242
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5242
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5240, metadata !DIExpression()), !dbg !5241
  br i1 %5, label %6, label %8, !dbg !5244

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #43, !dbg !5245
  store i32 12, ptr %7, align 4, !dbg !5247, !tbaa !1052
  br label %12, !dbg !5248

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5242
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5240, metadata !DIExpression()), !dbg !5241
  call void @llvm.dbg.value(metadata ptr %0, metadata !5249, metadata !DIExpression()), !dbg !5253
  call void @llvm.dbg.value(metadata i64 %9, metadata !5252, metadata !DIExpression()), !dbg !5253
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5255
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #47, !dbg !5256
  br label %12, !dbg !5257

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5241
  ret ptr %13, !dbg !5258
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5259 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !5266
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5262, metadata !DIExpression(), metadata !5266, metadata ptr %2, metadata !DIExpression()), !dbg !5267
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5261, metadata !DIExpression()), !dbg !5267
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #40, !dbg !5268
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #40, !dbg !5269
  %4 = icmp eq i32 %3, 0, !dbg !5269
  br i1 %4, label %5, label %12, !dbg !5271

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5272, metadata !DIExpression()), !dbg !5276
  call void @llvm.dbg.value(metadata !1022, metadata !5275, metadata !DIExpression()), !dbg !5276
  %6 = load i16, ptr %2, align 16, !dbg !5279
  %7 = icmp eq i16 %6, 67, !dbg !5279
  br i1 %7, label %11, label %8, !dbg !5280

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5272, metadata !DIExpression()), !dbg !5281
  call void @llvm.dbg.value(metadata ptr @.str.1.194, metadata !5275, metadata !DIExpression()), !dbg !5281
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.194, i64 6), !dbg !5283
  %10 = icmp eq i32 %9, 0, !dbg !5284
  br i1 %10, label %11, label %12, !dbg !5285

11:                                               ; preds = %8, %5
  br label %12, !dbg !5286

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5267
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #40, !dbg !5287
  ret i1 %13, !dbg !5287
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5288 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5292, metadata !DIExpression()), !dbg !5295
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5293, metadata !DIExpression()), !dbg !5295
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5294, metadata !DIExpression()), !dbg !5295
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #40, !dbg !5296
  ret i32 %4, !dbg !5297
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5298 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5302, metadata !DIExpression()), !dbg !5303
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #40, !dbg !5304
  ret ptr %2, !dbg !5305
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5306 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5308, metadata !DIExpression()), !dbg !5310
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5311
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5309, metadata !DIExpression()), !dbg !5310
  ret ptr %2, !dbg !5312
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5313 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5315, metadata !DIExpression()), !dbg !5322
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5316, metadata !DIExpression()), !dbg !5322
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5317, metadata !DIExpression()), !dbg !5322
  call void @llvm.dbg.value(metadata i32 %0, metadata !5308, metadata !DIExpression()), !dbg !5323
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #40, !dbg !5325
  call void @llvm.dbg.value(metadata ptr %4, metadata !5309, metadata !DIExpression()), !dbg !5323
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5318, metadata !DIExpression()), !dbg !5322
  %5 = icmp eq ptr %4, null, !dbg !5326
  br i1 %5, label %6, label %9, !dbg !5327

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5328
  br i1 %7, label %19, label %8, !dbg !5331

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5332, !tbaa !1061
  br label %19, !dbg !5333

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #41, !dbg !5334
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5319, metadata !DIExpression()), !dbg !5335
  %11 = icmp ult i64 %10, %2, !dbg !5336
  br i1 %11, label %12, label %14, !dbg !5338

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5339
  call void @llvm.dbg.value(metadata ptr %1, metadata !5341, metadata !DIExpression()), !dbg !5346
  call void @llvm.dbg.value(metadata ptr %4, metadata !5344, metadata !DIExpression()), !dbg !5346
  call void @llvm.dbg.value(metadata i64 %13, metadata !5345, metadata !DIExpression()), !dbg !5346
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #40, !dbg !5348
  br label %19, !dbg !5349

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5350
  br i1 %15, label %19, label %16, !dbg !5353

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5354
  call void @llvm.dbg.value(metadata ptr %1, metadata !5341, metadata !DIExpression()), !dbg !5356
  call void @llvm.dbg.value(metadata ptr %4, metadata !5344, metadata !DIExpression()), !dbg !5356
  call void @llvm.dbg.value(metadata i64 %17, metadata !5345, metadata !DIExpression()), !dbg !5356
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #40, !dbg !5358
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5359
  store i8 0, ptr %18, align 1, !dbg !5360, !tbaa !1061
  br label %19, !dbg !5361

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5362
  ret i32 %20, !dbg !5363
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
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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

!llvm.dbg.cu = !{!221, !564, !579, !828, !860, !862, !628, !662, !868, !870, !822, !877, !912, !914, !916, !918, !920, !844, !922, !924, !928, !930}
!llvm.ident = !{!932, !932, !932, !932, !932, !932, !932, !932, !932, !932, !932, !932, !932, !932, !932, !932, !932, !932, !932, !932, !932, !932}
!llvm.module.flags = !{!933, !934, !935, !936, !937, !938, !939}

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
!270 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !272, line: 160, baseType: !273)
!272 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!312 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !314, line: 49, size: 1728, elements: !315)
!314 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!578 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !579, file: !580, line: 66, type: !623, isLocal: false, isDefinition: true)
!579 = distinct !DICompileUnit(language: DW_LANG_C11, file: !580, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !581, globals: !582, splitDebugInlining: false, nameTableKind: None)
!580 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!581 = !{!268, !267}
!582 = !{!583, !585, !604, !606, !608, !610, !577, !612, !614, !616, !618, !621}
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(scope: null, file: !580, line: 272, type: !19, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(name: "old_file_name", scope: !587, file: !580, line: 304, type: !265, isLocal: true, isDefinition: true)
!587 = distinct !DISubprogram(name: "verror_at_line", scope: !580, file: !580, line: 298, type: !588, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !597)
!588 = !DISubroutineType(types: !589)
!589 = !{null, !260, !260, !265, !224, !265, !590}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !592)
!592 = !{!593, !594, !595, !596}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !591, file: !580, baseType: !224, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !591, file: !580, baseType: !224, size: 32, offset: 32)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !591, file: !580, baseType: !268, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !591, file: !580, baseType: !268, size: 64, offset: 128)
!597 = !{!598, !599, !600, !601, !602, !603}
!598 = !DILocalVariable(name: "status", arg: 1, scope: !587, file: !580, line: 298, type: !260)
!599 = !DILocalVariable(name: "errnum", arg: 2, scope: !587, file: !580, line: 298, type: !260)
!600 = !DILocalVariable(name: "file_name", arg: 3, scope: !587, file: !580, line: 298, type: !265)
!601 = !DILocalVariable(name: "line_number", arg: 4, scope: !587, file: !580, line: 298, type: !224)
!602 = !DILocalVariable(name: "message", arg: 5, scope: !587, file: !580, line: 298, type: !265)
!603 = !DILocalVariable(name: "args", arg: 6, scope: !587, file: !580, line: 298, type: !590)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(name: "old_line_number", scope: !587, file: !580, line: 305, type: !224, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(scope: null, file: !580, line: 338, type: !373, isLocal: true, isDefinition: true)
!608 = !DIGlobalVariableExpression(var: !609, expr: !DIExpression())
!609 = distinct !DIGlobalVariable(scope: null, file: !580, line: 346, type: !403, isLocal: true, isDefinition: true)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !580, line: 346, type: !44, isLocal: true, isDefinition: true)
!612 = !DIGlobalVariableExpression(var: !613, expr: !DIExpression())
!613 = distinct !DIGlobalVariable(name: "error_message_count", scope: !579, file: !580, line: 69, type: !224, isLocal: false, isDefinition: true)
!614 = !DIGlobalVariableExpression(var: !615, expr: !DIExpression())
!615 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !579, file: !580, line: 295, type: !260, isLocal: false, isDefinition: true)
!616 = !DIGlobalVariableExpression(var: !617, expr: !DIExpression())
!617 = distinct !DIGlobalVariable(scope: null, file: !580, line: 208, type: !398, isLocal: true, isDefinition: true)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !580, line: 208, type: !620, isLocal: true, isDefinition: true)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !487)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !580, line: 214, type: !19, isLocal: true, isDefinition: true)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{null}
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(name: "program_name", scope: !628, file: !629, line: 31, type: !265, isLocal: false, isDefinition: true)
!628 = distinct !DICompileUnit(language: DW_LANG_C11, file: !629, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !630, globals: !631, splitDebugInlining: false, nameTableKind: None)
!629 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!630 = !{!268, !318}
!631 = !{!626, !632, !634}
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !629, line: 46, type: !403, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !629, line: 49, type: !373, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !638, line: 78, type: !403, isLocal: true, isDefinition: true)
!638 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !638, line: 79, type: !378, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !638, line: 80, type: !643, isLocal: true, isDefinition: true)
!643 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !644)
!644 = !{!645}
!645 = !DISubrange(count: 13)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !638, line: 81, type: !643, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !638, line: 82, type: !358, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !638, line: 83, type: !44, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !638, line: 84, type: !403, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !638, line: 85, type: !398, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !638, line: 86, type: !398, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !638, line: 87, type: !403, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !662, file: !638, line: 76, type: !754, isLocal: false, isDefinition: true)
!662 = distinct !DICompileUnit(language: DW_LANG_C11, file: !638, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !663, retainedTypes: !683, globals: !684, splitDebugInlining: false, nameTableKind: None)
!663 = !{!664, !678, !229}
!664 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !665, line: 42, baseType: !224, size: 32, elements: !666)
!665 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!666 = !{!667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677}
!667 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!668 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!669 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!670 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!671 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!672 = !DIEnumerator(name: "c_quoting_style", value: 5)
!673 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!674 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!675 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!676 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!677 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!678 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !665, line: 254, baseType: !224, size: 32, elements: !679)
!679 = !{!680, !681, !682}
!680 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!681 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!682 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!683 = !{!268, !260, !261, !262}
!684 = !{!636, !639, !641, !646, !648, !650, !652, !654, !656, !658, !660, !685, !689, !699, !701, !706, !708, !710, !712, !714, !743, !750, !752}
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !662, file: !638, line: 92, type: !687, isLocal: false, isDefinition: true)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !688, size: 320, elements: !212)
!688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !664)
!689 = !DIGlobalVariableExpression(var: !690, expr: !DIExpression())
!690 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !662, file: !638, line: 1040, type: !691, isLocal: false, isDefinition: true)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !638, line: 56, size: 448, elements: !692)
!692 = !{!693, !694, !695, !697, !698}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !691, file: !638, line: 59, baseType: !664, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !638, line: 62, baseType: !260, size: 32, offset: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !691, file: !638, line: 66, baseType: !696, size: 256, offset: 64)
!696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !224, size: 256, elements: !404)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !691, file: !638, line: 69, baseType: !265, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !691, file: !638, line: 72, baseType: !265, size: 64, offset: 384)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !662, file: !638, line: 107, type: !691, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(name: "slot0", scope: !662, file: !638, line: 831, type: !703, isLocal: true, isDefinition: true)
!703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !704)
!704 = !{!705}
!705 = !DISubrange(count: 256)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !638, line: 321, type: !44, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !638, line: 357, type: !44, isLocal: true, isDefinition: true)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !638, line: 358, type: !44, isLocal: true, isDefinition: true)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !638, line: 199, type: !398, isLocal: true, isDefinition: true)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(name: "quote", scope: !716, file: !638, line: 228, type: !741, isLocal: true, isDefinition: true)
!716 = distinct !DISubprogram(name: "gettext_quote", scope: !638, file: !638, line: 197, type: !717, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !719)
!717 = !DISubroutineType(types: !718)
!718 = !{!265, !265, !664}
!719 = !{!720, !721, !722, !723, !728}
!720 = !DILocalVariable(name: "msgid", arg: 1, scope: !716, file: !638, line: 197, type: !265)
!721 = !DILocalVariable(name: "s", arg: 2, scope: !716, file: !638, line: 197, type: !664)
!722 = !DILocalVariable(name: "translation", scope: !716, file: !638, line: 199, type: !265)
!723 = !DILocalVariable(name: "w", scope: !716, file: !638, line: 229, type: !724)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !725, line: 37, baseType: !726)
!725 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !272, line: 57, baseType: !727)
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !272, line: 42, baseType: !224)
!728 = !DILocalVariable(name: "mbs", scope: !716, file: !638, line: 230, type: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !730, line: 6, baseType: !731)
!730 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !732, line: 21, baseType: !733)
!732 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !732, line: 13, size: 64, elements: !734)
!734 = !{!735, !736}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !733, file: !732, line: 15, baseType: !260, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !733, file: !732, line: 20, baseType: !737, size: 32, offset: 32)
!737 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !733, file: !732, line: 16, size: 32, elements: !738)
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !737, file: !732, line: 18, baseType: !224, size: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !737, file: !732, line: 19, baseType: !373, size: 32)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 64, elements: !742)
!742 = !{!46, !375}
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(name: "slotvec", scope: !662, file: !638, line: 834, type: !745, isLocal: true, isDefinition: true)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !638, line: 823, size: 128, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !746, file: !638, line: 825, baseType: !262, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !746, file: !638, line: 826, baseType: !318, size: 64, offset: 64)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(name: "nslots", scope: !662, file: !638, line: 832, type: !260, isLocal: true, isDefinition: true)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(name: "slotvec0", scope: !662, file: !638, line: 833, type: !746, isLocal: true, isDefinition: true)
!754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !755, size: 704, elements: !482)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!756 = !DIGlobalVariableExpression(var: !757, expr: !DIExpression())
!757 = distinct !DIGlobalVariable(scope: null, file: !758, line: 67, type: !468, isLocal: true, isDefinition: true)
!758 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !758, line: 69, type: !398, isLocal: true, isDefinition: true)
!761 = !DIGlobalVariableExpression(var: !762, expr: !DIExpression())
!762 = distinct !DIGlobalVariable(scope: null, file: !758, line: 83, type: !398, isLocal: true, isDefinition: true)
!763 = !DIGlobalVariableExpression(var: !764, expr: !DIExpression())
!764 = distinct !DIGlobalVariable(scope: null, file: !758, line: 83, type: !373, isLocal: true, isDefinition: true)
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !758, line: 85, type: !44, isLocal: true, isDefinition: true)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(scope: null, file: !758, line: 88, type: !769, isLocal: true, isDefinition: true)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !770)
!770 = !{!771}
!771 = !DISubrange(count: 171)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(scope: null, file: !758, line: 88, type: !774, isLocal: true, isDefinition: true)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !775)
!775 = !{!776}
!776 = !DISubrange(count: 34)
!777 = !DIGlobalVariableExpression(var: !778, expr: !DIExpression())
!778 = distinct !DIGlobalVariable(scope: null, file: !758, line: 105, type: !445, isLocal: true, isDefinition: true)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(scope: null, file: !758, line: 109, type: !547, isLocal: true, isDefinition: true)
!781 = !DIGlobalVariableExpression(var: !782, expr: !DIExpression())
!782 = distinct !DIGlobalVariable(scope: null, file: !758, line: 113, type: !491, isLocal: true, isDefinition: true)
!783 = !DIGlobalVariableExpression(var: !784, expr: !DIExpression())
!784 = distinct !DIGlobalVariable(scope: null, file: !758, line: 120, type: !785, isLocal: true, isDefinition: true)
!785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !786)
!786 = !{!787}
!787 = !DISubrange(count: 32)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(scope: null, file: !758, line: 127, type: !790, isLocal: true, isDefinition: true)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !791)
!791 = !{!792}
!792 = !DISubrange(count: 36)
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(scope: null, file: !758, line: 134, type: !425, isLocal: true, isDefinition: true)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(scope: null, file: !758, line: 142, type: !797, isLocal: true, isDefinition: true)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !798)
!798 = !{!799}
!799 = !DISubrange(count: 44)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(scope: null, file: !758, line: 150, type: !54, isLocal: true, isDefinition: true)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(scope: null, file: !758, line: 159, type: !113, isLocal: true, isDefinition: true)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !758, line: 170, type: !163, isLocal: true, isDefinition: true)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(scope: null, file: !758, line: 248, type: !358, isLocal: true, isDefinition: true)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(scope: null, file: !758, line: 248, type: !450, isLocal: true, isDefinition: true)
!810 = !DIGlobalVariableExpression(var: !811, expr: !DIExpression())
!811 = distinct !DIGlobalVariable(scope: null, file: !758, line: 254, type: !358, isLocal: true, isDefinition: true)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(scope: null, file: !758, line: 254, type: !201, isLocal: true, isDefinition: true)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(scope: null, file: !758, line: 254, type: !425, isLocal: true, isDefinition: true)
!816 = !DIGlobalVariableExpression(var: !817, expr: !DIExpression())
!817 = distinct !DIGlobalVariable(scope: null, file: !758, line: 259, type: !3, isLocal: true, isDefinition: true)
!818 = !DIGlobalVariableExpression(var: !819, expr: !DIExpression())
!819 = distinct !DIGlobalVariable(scope: null, file: !758, line: 259, type: !514, isLocal: true, isDefinition: true)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !822, file: !823, line: 26, type: !825, isLocal: false, isDefinition: true)
!822 = distinct !DICompileUnit(language: DW_LANG_C11, file: !823, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !824, splitDebugInlining: false, nameTableKind: None)
!823 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!824 = !{!820}
!825 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 376, elements: !107)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(name: "exit_failure", scope: !828, file: !829, line: 24, type: !831, isLocal: false, isDefinition: true)
!828 = distinct !DICompileUnit(language: DW_LANG_C11, file: !829, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !830, splitDebugInlining: false, nameTableKind: None)
!829 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!830 = !{!826}
!831 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !260)
!832 = !DIGlobalVariableExpression(var: !833, expr: !DIExpression())
!833 = distinct !DIGlobalVariable(scope: null, file: !834, line: 34, type: !387, isLocal: true, isDefinition: true)
!834 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(scope: null, file: !834, line: 34, type: !398, isLocal: true, isDefinition: true)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(scope: null, file: !834, line: 34, type: !420, isLocal: true, isDefinition: true)
!839 = !DIGlobalVariableExpression(var: !840, expr: !DIExpression())
!840 = distinct !DIGlobalVariable(scope: null, file: !841, line: 108, type: !206, isLocal: true, isDefinition: true)
!841 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(name: "internal_state", scope: !844, file: !841, line: 97, type: !847, isLocal: true, isDefinition: true)
!844 = distinct !DICompileUnit(language: DW_LANG_C11, file: !841, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !845, globals: !846, splitDebugInlining: false, nameTableKind: None)
!845 = !{!268, !262, !267}
!846 = !{!839, !842}
!847 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !730, line: 6, baseType: !848)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !732, line: 21, baseType: !849)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !732, line: 13, size: 64, elements: !850)
!850 = !{!851, !852}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !849, file: !732, line: 15, baseType: !260, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !849, file: !732, line: 20, baseType: !853, size: 32, offset: 32)
!853 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !849, file: !732, line: 16, size: 32, elements: !854)
!854 = !{!855, !856}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !853, file: !732, line: 18, baseType: !224, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !853, file: !732, line: 19, baseType: !373, size: 32)
!857 = !DIGlobalVariableExpression(var: !858, expr: !DIExpression())
!858 = distinct !DIGlobalVariable(scope: null, file: !859, line: 35, type: !378, isLocal: true, isDefinition: true)
!859 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!860 = distinct !DICompileUnit(language: DW_LANG_C11, file: !861, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!861 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!862 = distinct !DICompileUnit(language: DW_LANG_C11, file: !863, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-umaxtostr.o -MD -MP -MF lib/.deps/libcoreutils_a-umaxtostr.Tpo -c lib/umaxtostr.c -o lib/.libcoreutils_a-umaxtostr.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !864, splitDebugInlining: false, nameTableKind: None)
!863 = !DIFile(filename: "lib/umaxtostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "afa759af6e92fed26f32f683da6c23a8")
!864 = !{!865}
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !866, line: 102, baseType: !867)
!866 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !272, line: 73, baseType: !264)
!868 = distinct !DICompileUnit(language: DW_LANG_C11, file: !869, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-strintcmp.o -MD -MP -MF lib/.deps/libcoreutils_a-strintcmp.Tpo -c lib/strintcmp.c -o lib/.libcoreutils_a-strintcmp.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!869 = !DIFile(filename: "lib/strintcmp.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cbb3801b0b03f23f2fd643484b645368")
!870 = distinct !DICompileUnit(language: DW_LANG_C11, file: !758, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !871, retainedTypes: !875, globals: !876, splitDebugInlining: false, nameTableKind: None)
!871 = !{!872}
!872 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !758, line: 40, baseType: !224, size: 32, elements: !873)
!873 = !{!874}
!874 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!875 = !{!268}
!876 = !{!756, !759, !761, !763, !765, !767, !772, !777, !779, !781, !783, !788, !793, !795, !800, !802, !804, !806, !808, !810, !812, !814, !816, !818}
!877 = distinct !DICompileUnit(language: DW_LANG_C11, file: !878, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !879, retainedTypes: !911, splitDebugInlining: false, nameTableKind: None)
!878 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!879 = !{!880, !892}
!880 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !881, file: !878, line: 188, baseType: !224, size: 32, elements: !890)
!881 = distinct !DISubprogram(name: "x2nrealloc", scope: !878, file: !878, line: 176, type: !882, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !885)
!882 = !DISubroutineType(types: !883)
!883 = !{!268, !268, !884, !262}
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!885 = !{!886, !887, !888, !889}
!886 = !DILocalVariable(name: "p", arg: 1, scope: !881, file: !878, line: 176, type: !268)
!887 = !DILocalVariable(name: "pn", arg: 2, scope: !881, file: !878, line: 176, type: !884)
!888 = !DILocalVariable(name: "s", arg: 3, scope: !881, file: !878, line: 176, type: !262)
!889 = !DILocalVariable(name: "n", scope: !881, file: !878, line: 178, type: !262)
!890 = !{!891}
!891 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!892 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !893, file: !878, line: 228, baseType: !224, size: 32, elements: !890)
!893 = distinct !DISubprogram(name: "xpalloc", scope: !878, file: !878, line: 223, type: !894, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !901)
!894 = !DISubroutineType(types: !895)
!895 = !{!268, !268, !896, !897, !899, !897}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !898, line: 130, baseType: !899)
!898 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !900, line: 18, baseType: !273)
!900 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!901 = !{!902, !903, !904, !905, !906, !907, !908, !909, !910}
!902 = !DILocalVariable(name: "pa", arg: 1, scope: !893, file: !878, line: 223, type: !268)
!903 = !DILocalVariable(name: "pn", arg: 2, scope: !893, file: !878, line: 223, type: !896)
!904 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !893, file: !878, line: 223, type: !897)
!905 = !DILocalVariable(name: "n_max", arg: 4, scope: !893, file: !878, line: 223, type: !899)
!906 = !DILocalVariable(name: "s", arg: 5, scope: !893, file: !878, line: 223, type: !897)
!907 = !DILocalVariable(name: "n0", scope: !893, file: !878, line: 230, type: !897)
!908 = !DILocalVariable(name: "n", scope: !893, file: !878, line: 237, type: !897)
!909 = !DILocalVariable(name: "nbytes", scope: !893, file: !878, line: 248, type: !897)
!910 = !DILocalVariable(name: "adjusted_nbytes", scope: !893, file: !878, line: 252, type: !897)
!911 = !{!318, !268}
!912 = distinct !DICompileUnit(language: DW_LANG_C11, file: !834, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !913, splitDebugInlining: false, nameTableKind: None)
!913 = !{!832, !835, !837}
!914 = distinct !DICompileUnit(language: DW_LANG_C11, file: !915, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!915 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!916 = distinct !DICompileUnit(language: DW_LANG_C11, file: !917, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!917 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!918 = distinct !DICompileUnit(language: DW_LANG_C11, file: !919, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !875, splitDebugInlining: false, nameTableKind: None)
!919 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!920 = distinct !DICompileUnit(language: DW_LANG_C11, file: !921, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !875, splitDebugInlining: false, nameTableKind: None)
!921 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!922 = distinct !DICompileUnit(language: DW_LANG_C11, file: !923, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !875, splitDebugInlining: false, nameTableKind: None)
!923 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!924 = distinct !DICompileUnit(language: DW_LANG_C11, file: !859, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !925, splitDebugInlining: false, nameTableKind: None)
!925 = !{!926, !857}
!926 = !DIGlobalVariableExpression(var: !927, expr: !DIExpression())
!927 = distinct !DIGlobalVariable(scope: null, file: !859, line: 35, type: !44, isLocal: true, isDefinition: true)
!928 = distinct !DICompileUnit(language: DW_LANG_C11, file: !929, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!929 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!930 = distinct !DICompileUnit(language: DW_LANG_C11, file: !931, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !875, splitDebugInlining: false, nameTableKind: None)
!931 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!932 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!933 = !{i32 7, !"Dwarf Version", i32 5}
!934 = !{i32 2, !"Debug Info Version", i32 3}
!935 = !{i32 1, !"wchar_size", i32 4}
!936 = !{i32 8, !"PIC Level", i32 2}
!937 = !{i32 7, !"PIE Level", i32 2}
!938 = !{i32 7, !"uwtable", i32 2}
!939 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
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
!1003 = !DILocalVariable(name: "program", arg: 1, scope: !1004, file: !287, line: 836, type: !265)
!1004 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !287, file: !287, line: 836, type: !1005, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1007)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{null, !265}
!1007 = !{!1003, !1008, !1015, !1016, !1018, !1019}
!1008 = !DILocalVariable(name: "infomap", scope: !1004, file: !287, line: 838, type: !1009)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1010, size: 896, elements: !399)
!1010 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1011)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1004, file: !287, line: 838, size: 128, elements: !1012)
!1012 = !{!1013, !1014}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1011, file: !287, line: 838, baseType: !265, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1011, file: !287, line: 838, baseType: !265, size: 64, offset: 64)
!1015 = !DILocalVariable(name: "node", scope: !1004, file: !287, line: 848, type: !265)
!1016 = !DILocalVariable(name: "map_prog", scope: !1004, file: !287, line: 849, type: !1017)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1018 = !DILocalVariable(name: "lc_messages", scope: !1004, file: !287, line: 861, type: !265)
!1019 = !DILocalVariable(name: "url_program", scope: !1004, file: !287, line: 874, type: !265)
!1020 = !DILocation(line: 0, scope: !1004, inlinedAt: !1021)
!1021 = distinct !DILocation(line: 822, column: 7, scope: !956)
!1022 = !{}
!1023 = !DILocation(line: 857, column: 3, scope: !1004, inlinedAt: !1021)
!1024 = !DILocation(line: 861, column: 29, scope: !1004, inlinedAt: !1021)
!1025 = !DILocation(line: 862, column: 7, scope: !1026, inlinedAt: !1021)
!1026 = distinct !DILexicalBlock(scope: !1004, file: !287, line: 862, column: 7)
!1027 = !DILocation(line: 862, column: 19, scope: !1026, inlinedAt: !1021)
!1028 = !DILocation(line: 862, column: 22, scope: !1026, inlinedAt: !1021)
!1029 = !DILocation(line: 862, column: 7, scope: !1004, inlinedAt: !1021)
!1030 = !DILocation(line: 868, column: 7, scope: !1031, inlinedAt: !1021)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !287, line: 863, column: 5)
!1032 = !DILocation(line: 870, column: 5, scope: !1031, inlinedAt: !1021)
!1033 = !DILocation(line: 875, column: 3, scope: !1004, inlinedAt: !1021)
!1034 = !DILocation(line: 877, column: 3, scope: !1004, inlinedAt: !1021)
!1035 = !DILocation(line: 824, column: 3, scope: !940)
!1036 = !DISubprogram(name: "dcgettext", scope: !1037, file: !1037, line: 51, type: !1038, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1037 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!318, !265, !265, !260}
!1040 = !DISubprogram(name: "__fprintf_chk", scope: !1041, file: !1041, line: 93, type: !1042, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1041 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!260, !1044, !260, !1045, null}
!1044 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !310)
!1045 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !265)
!1046 = !DISubprogram(name: "fputs_unlocked", scope: !1047, file: !1047, line: 691, type: !1048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1047 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!260, !1045, !1044}
!1050 = !DILocation(line: 0, scope: !286)
!1051 = !DILocation(line: 581, column: 7, scope: !295)
!1052 = !{!1053, !1053, i64 0}
!1053 = !{!"int", !953, i64 0}
!1054 = !DILocation(line: 581, column: 19, scope: !295)
!1055 = !DILocation(line: 581, column: 7, scope: !286)
!1056 = !DILocation(line: 585, column: 26, scope: !294)
!1057 = !DILocation(line: 0, scope: !294)
!1058 = !DILocation(line: 586, column: 23, scope: !294)
!1059 = !DILocation(line: 586, column: 28, scope: !294)
!1060 = !DILocation(line: 586, column: 32, scope: !294)
!1061 = !{!953, !953, i64 0}
!1062 = !DILocation(line: 586, column: 38, scope: !294)
!1063 = !DILocalVariable(name: "__s1", arg: 1, scope: !1064, file: !1065, line: 1359, type: !265)
!1064 = distinct !DISubprogram(name: "streq", scope: !1065, file: !1065, line: 1359, type: !1066, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1068)
!1065 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!297, !265, !265}
!1068 = !{!1063, !1069}
!1069 = !DILocalVariable(name: "__s2", arg: 2, scope: !1064, file: !1065, line: 1359, type: !265)
!1070 = !DILocation(line: 0, scope: !1064, inlinedAt: !1071)
!1071 = distinct !DILocation(line: 586, column: 41, scope: !294)
!1072 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1071)
!1073 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1071)
!1074 = !DILocation(line: 586, column: 19, scope: !294)
!1075 = !DILocation(line: 587, column: 5, scope: !294)
!1076 = !DILocation(line: 588, column: 7, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !286, file: !287, line: 588, column: 7)
!1078 = !DILocation(line: 588, column: 7, scope: !286)
!1079 = !DILocation(line: 590, column: 7, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1077, file: !287, line: 589, column: 5)
!1081 = !DILocation(line: 591, column: 7, scope: !1080)
!1082 = !DILocation(line: 595, column: 37, scope: !286)
!1083 = !DILocation(line: 595, column: 35, scope: !286)
!1084 = !DILocation(line: 596, column: 29, scope: !286)
!1085 = !DILocation(line: 597, column: 8, scope: !303)
!1086 = !DILocation(line: 597, column: 7, scope: !286)
!1087 = !DILocation(line: 604, column: 24, scope: !302)
!1088 = !DILocation(line: 604, column: 12, scope: !303)
!1089 = !DILocation(line: 0, scope: !301)
!1090 = !DILocation(line: 610, column: 16, scope: !301)
!1091 = !DILocation(line: 610, column: 7, scope: !301)
!1092 = !DILocation(line: 611, column: 21, scope: !301)
!1093 = !{!1094, !1094, i64 0}
!1094 = !{!"short", !953, i64 0}
!1095 = !DILocation(line: 611, column: 19, scope: !301)
!1096 = !DILocation(line: 611, column: 16, scope: !301)
!1097 = !DILocation(line: 610, column: 30, scope: !301)
!1098 = distinct !{!1098, !1091, !1092, !1099}
!1099 = !{!"llvm.loop.mustprogress"}
!1100 = !DILocation(line: 612, column: 18, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !301, file: !287, line: 612, column: 11)
!1102 = !DILocation(line: 612, column: 11, scope: !301)
!1103 = !DILocation(line: 620, column: 23, scope: !286)
!1104 = !DILocation(line: 625, column: 39, scope: !286)
!1105 = !DILocation(line: 626, column: 3, scope: !286)
!1106 = !DILocation(line: 626, column: 10, scope: !286)
!1107 = !DILocation(line: 626, column: 21, scope: !286)
!1108 = !DILocation(line: 628, column: 44, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !287, line: 628, column: 11)
!1110 = distinct !DILexicalBlock(scope: !286, file: !287, line: 627, column: 5)
!1111 = !DILocation(line: 628, column: 32, scope: !1109)
!1112 = !DILocation(line: 628, column: 49, scope: !1109)
!1113 = !DILocation(line: 628, column: 11, scope: !1110)
!1114 = !DILocation(line: 630, column: 11, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1110, file: !287, line: 630, column: 11)
!1116 = !DILocation(line: 630, column: 11, scope: !1110)
!1117 = !DILocation(line: 632, column: 26, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !287, line: 632, column: 15)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !287, line: 631, column: 9)
!1120 = !DILocation(line: 632, column: 34, scope: !1118)
!1121 = !DILocation(line: 632, column: 37, scope: !1118)
!1122 = !DILocation(line: 632, column: 15, scope: !1119)
!1123 = !DILocation(line: 636, column: 16, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1119, file: !287, line: 636, column: 15)
!1125 = !DILocation(line: 636, column: 29, scope: !1124)
!1126 = !DILocation(line: 640, column: 16, scope: !1110)
!1127 = distinct !{!1127, !1105, !1128, !1099}
!1128 = !DILocation(line: 641, column: 5, scope: !286)
!1129 = !DILocation(line: 644, column: 3, scope: !286)
!1130 = !DILocation(line: 0, scope: !1064, inlinedAt: !1131)
!1131 = distinct !DILocation(line: 648, column: 31, scope: !286)
!1132 = !DILocation(line: 0, scope: !1064, inlinedAt: !1133)
!1133 = distinct !DILocation(line: 649, column: 31, scope: !286)
!1134 = !DILocation(line: 0, scope: !1064, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 650, column: 31, scope: !286)
!1136 = !DILocation(line: 0, scope: !1064, inlinedAt: !1137)
!1137 = distinct !DILocation(line: 651, column: 31, scope: !286)
!1138 = !DILocation(line: 0, scope: !1064, inlinedAt: !1139)
!1139 = distinct !DILocation(line: 652, column: 31, scope: !286)
!1140 = !DILocation(line: 0, scope: !1064, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 653, column: 31, scope: !286)
!1142 = !DILocation(line: 0, scope: !1064, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 654, column: 31, scope: !286)
!1144 = !DILocation(line: 0, scope: !1064, inlinedAt: !1145)
!1145 = distinct !DILocation(line: 655, column: 31, scope: !286)
!1146 = !DILocation(line: 0, scope: !1064, inlinedAt: !1147)
!1147 = distinct !DILocation(line: 656, column: 31, scope: !286)
!1148 = !DILocation(line: 0, scope: !1064, inlinedAt: !1149)
!1149 = distinct !DILocation(line: 657, column: 31, scope: !286)
!1150 = !DILocation(line: 663, column: 7, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !286, file: !287, line: 663, column: 7)
!1152 = !DILocation(line: 664, column: 7, scope: !1151)
!1153 = !DILocation(line: 664, column: 10, scope: !1151)
!1154 = !DILocation(line: 663, column: 7, scope: !286)
!1155 = !DILocation(line: 669, column: 7, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1151, file: !287, line: 665, column: 5)
!1157 = !DILocation(line: 671, column: 5, scope: !1156)
!1158 = !DILocation(line: 676, column: 7, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1151, file: !287, line: 673, column: 5)
!1160 = !DILocation(line: 679, column: 3, scope: !286)
!1161 = !DILocation(line: 683, column: 3, scope: !286)
!1162 = !DILocation(line: 686, column: 3, scope: !286)
!1163 = !DILocation(line: 688, column: 3, scope: !286)
!1164 = !DILocation(line: 691, column: 3, scope: !286)
!1165 = !DILocation(line: 695, column: 3, scope: !286)
!1166 = !DILocation(line: 696, column: 1, scope: !286)
!1167 = !DISubprogram(name: "__printf_chk", scope: !1041, file: !1041, line: 95, type: !1168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{!260, !260, !1045, null}
!1170 = !DISubprogram(name: "setlocale", scope: !1171, file: !1171, line: 122, type: !1172, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1171 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!318, !260, !265}
!1174 = !DISubprogram(name: "strncmp", scope: !1175, file: !1175, line: 159, type: !1176, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1175 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!260, !265, !265, !262}
!1178 = !DISubprogram(name: "exit", scope: !1179, file: !1179, line: 624, type: !941, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1179 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1180 = !DISubprogram(name: "getenv", scope: !1179, file: !1179, line: 641, type: !1181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!318, !265}
!1183 = !DISubprogram(name: "strcmp", scope: !1175, file: !1175, line: 156, type: !1184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!260, !265, !265}
!1186 = !DISubprogram(name: "strspn", scope: !1175, file: !1175, line: 297, type: !1187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!264, !265, !265}
!1189 = !DISubprogram(name: "strchr", scope: !1175, file: !1175, line: 246, type: !1190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!318, !265, !260}
!1192 = !DISubprogram(name: "__ctype_b_loc", scope: !230, file: !230, line: 79, type: !1193, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1193 = !DISubroutineType(types: !1194)
!1194 = !{!1195}
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!1198 = !DISubprogram(name: "strcspn", scope: !1175, file: !1175, line: 293, type: !1187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1199 = !DISubprogram(name: "fwrite_unlocked", scope: !1047, file: !1047, line: 704, type: !1200, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1200 = !DISubroutineType(types: !1201)
!1201 = !{!262, !1202, !262, !262, !1044}
!1202 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1203)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1205 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 843, type: !1206, scopeLine: 844, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1208)
!1206 = !DISubroutineType(types: !1207)
!1207 = !{!260, !260, !561}
!1208 = !{!1209, !1210, !1211}
!1209 = !DILocalVariable(name: "margc", arg: 1, scope: !1205, file: !2, line: 843, type: !260)
!1210 = !DILocalVariable(name: "margv", arg: 2, scope: !1205, file: !2, line: 843, type: !561)
!1211 = !DILocalVariable(name: "value", scope: !1205, file: !2, line: 845, type: !297)
!1212 = !DILocation(line: 0, scope: !1205)
!1213 = !DILocation(line: 856, column: 21, scope: !1205)
!1214 = !DILocation(line: 856, column: 3, scope: !1205)
!1215 = !DILocation(line: 857, column: 3, scope: !1205)
!1216 = !DILocation(line: 858, column: 3, scope: !1205)
!1217 = !DILocation(line: 859, column: 3, scope: !1205)
!1218 = !DILocalVariable(name: "status", arg: 1, scope: !1219, file: !287, line: 102, type: !260)
!1219 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !287, file: !287, line: 102, type: !941, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1220)
!1220 = !{!1218}
!1221 = !DILocation(line: 0, scope: !1219, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 861, column: 3, scope: !1205)
!1223 = !DILocation(line: 105, column: 18, scope: !1224, inlinedAt: !1222)
!1224 = distinct !DILexicalBlock(scope: !1219, file: !287, line: 104, column: 7)
!1225 = !DILocation(line: 862, column: 3, scope: !1205)
!1226 = !DILocation(line: 865, column: 8, scope: !1205)
!1227 = !DILocation(line: 893, column: 8, scope: !1205)
!1228 = !DILocation(line: 894, column: 7, scope: !1205)
!1229 = !DILocation(line: 896, column: 11, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 896, column: 7)
!1231 = !DILocation(line: 896, column: 7, scope: !1205)
!1232 = !DILocation(line: 899, column: 27, scope: !1205)
!1233 = !DILocation(line: 899, column: 11, scope: !1205)
!1234 = !DILocation(line: 901, column: 7, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 901, column: 7)
!1236 = !DILocation(line: 901, column: 14, scope: !1235)
!1237 = !DILocation(line: 901, column: 11, scope: !1235)
!1238 = !DILocation(line: 901, column: 7, scope: !1205)
!1239 = !DILocation(line: 902, column: 24, scope: !1235)
!1240 = !DILocation(line: 902, column: 55, scope: !1235)
!1241 = !DILocation(line: 902, column: 60, scope: !1235)
!1242 = !DILocation(line: 902, column: 48, scope: !1235)
!1243 = !DILocation(line: 902, column: 5, scope: !1235)
!1244 = !DILocation(line: 904, column: 3, scope: !1205)
!1245 = !DILocation(line: 905, column: 1, scope: !1205)
!1246 = !DISubprogram(name: "bindtextdomain", scope: !1037, file: !1037, line: 86, type: !1247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1247 = !DISubroutineType(types: !1248)
!1248 = !{!318, !265, !265}
!1249 = !DISubprogram(name: "textdomain", scope: !1037, file: !1037, line: 82, type: !1181, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1250 = !DISubprogram(name: "atexit", scope: !1179, file: !1179, line: 602, type: !1251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1251 = !DISubroutineType(types: !1252)
!1252 = !{!260, !623}
!1253 = distinct !DISubprogram(name: "posixtest", scope: !2, file: !2, line: 616, type: !1254, scopeLine: 617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1256)
!1254 = !DISubroutineType(types: !1255)
!1255 = !{!297, !260}
!1256 = !{!1257, !1258}
!1257 = !DILocalVariable(name: "nargs", arg: 1, scope: !1253, file: !2, line: 616, type: !260)
!1258 = !DILocalVariable(name: "value", scope: !1253, file: !2, line: 618, type: !297)
!1259 = !DILocation(line: 0, scope: !1253)
!1260 = !DILocation(line: 620, column: 3, scope: !1253)
!1261 = !DILocation(line: 562, column: 10, scope: !1262, inlinedAt: !1265)
!1262 = distinct !DISubprogram(name: "one_argument", scope: !2, file: !2, line: 560, type: !1263, scopeLine: 561, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!297}
!1265 = distinct !DILocation(line: 623, column: 17, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1253, file: !2, line: 621, column: 5)
!1267 = !DILocation(line: 562, column: 18, scope: !1262, inlinedAt: !1265)
!1268 = !DILocation(line: 562, column: 25, scope: !1262, inlinedAt: !1265)
!1269 = !DILocation(line: 624, column: 9, scope: !1266)
!1270 = !DILocation(line: 570, column: 14, scope: !1271, inlinedAt: !1275)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 570, column: 7)
!1272 = distinct !DISubprogram(name: "two_arguments", scope: !2, file: !2, line: 566, type: !1263, scopeLine: 567, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1273)
!1273 = !{!1274}
!1274 = !DILocalVariable(name: "value", scope: !1272, file: !2, line: 568, type: !297)
!1275 = distinct !DILocation(line: 627, column: 17, scope: !1266)
!1276 = !DILocation(line: 570, column: 19, scope: !1271, inlinedAt: !1275)
!1277 = !DILocation(line: 0, scope: !1064, inlinedAt: !1278)
!1278 = distinct !DILocation(line: 570, column: 7, scope: !1271, inlinedAt: !1275)
!1279 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1278)
!1280 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1278)
!1281 = !DILocation(line: 570, column: 7, scope: !1272, inlinedAt: !1275)
!1282 = !DILocation(line: 562, column: 18, scope: !1262, inlinedAt: !1283)
!1283 = distinct !DILocation(line: 573, column: 17, scope: !1284, inlinedAt: !1275)
!1284 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 571, column: 5)
!1285 = !DILocation(line: 562, column: 10, scope: !1262, inlinedAt: !1283)
!1286 = !DILocation(line: 562, column: 25, scope: !1262, inlinedAt: !1283)
!1287 = !DILocation(line: 0, scope: !1272, inlinedAt: !1275)
!1288 = !DILocation(line: 574, column: 5, scope: !1284, inlinedAt: !1275)
!1289 = !DILocation(line: 575, column: 12, scope: !1290, inlinedAt: !1275)
!1290 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 575, column: 12)
!1291 = !DILocation(line: 575, column: 25, scope: !1290, inlinedAt: !1275)
!1292 = !DILocation(line: 576, column: 12, scope: !1290, inlinedAt: !1275)
!1293 = !DILocation(line: 576, column: 15, scope: !1290, inlinedAt: !1275)
!1294 = !DILocation(line: 576, column: 28, scope: !1290, inlinedAt: !1275)
!1295 = !DILocation(line: 577, column: 12, scope: !1290, inlinedAt: !1275)
!1296 = !DILocation(line: 577, column: 15, scope: !1290, inlinedAt: !1275)
!1297 = !DILocation(line: 577, column: 28, scope: !1290, inlinedAt: !1275)
!1298 = !DILocation(line: 575, column: 12, scope: !1271, inlinedAt: !1275)
!1299 = !DILocation(line: 579, column: 15, scope: !1300, inlinedAt: !1275)
!1300 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 578, column: 5)
!1301 = !DILocation(line: 582, column: 5, scope: !1290, inlinedAt: !1275)
!1302 = !DILocation(line: 631, column: 17, scope: !1266)
!1303 = !DILocation(line: 632, column: 9, scope: !1266)
!1304 = !DILocation(line: 635, column: 20, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 635, column: 13)
!1306 = !DILocation(line: 635, column: 25, scope: !1305)
!1307 = !DILocation(line: 0, scope: !1064, inlinedAt: !1308)
!1308 = distinct !DILocation(line: 635, column: 13, scope: !1305)
!1309 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1308)
!1310 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1308)
!1311 = !DILocation(line: 635, column: 13, scope: !1266)
!1312 = !DILocalVariable(name: "f", arg: 1, scope: !1313, file: !2, line: 110, type: !297)
!1313 = distinct !DISubprogram(name: "advance", scope: !2, file: !2, line: 110, type: !1314, scopeLine: 111, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1316)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{null, !297}
!1316 = !{!1312}
!1317 = !DILocation(line: 0, scope: !1313, inlinedAt: !1318)
!1318 = distinct !DILocation(line: 637, column: 13, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1305, file: !2, line: 636, column: 11)
!1320 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1318)
!1321 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1318)
!1322 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 114, column: 7)
!1323 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1318)
!1324 = !DILocation(line: 638, column: 22, scope: !1319)
!1325 = !DILocation(line: 638, column: 21, scope: !1319)
!1326 = !DILocation(line: 639, column: 13, scope: !1319)
!1327 = !DILocation(line: 0, scope: !1064, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 641, column: 13, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 641, column: 13)
!1330 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1328)
!1331 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1328)
!1332 = !DILocation(line: 641, column: 36, scope: !1329)
!1333 = !DILocation(line: 641, column: 46, scope: !1329)
!1334 = !DILocation(line: 0, scope: !1064, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 641, column: 39, scope: !1329)
!1336 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1335)
!1337 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1335)
!1338 = !DILocation(line: 641, column: 13, scope: !1266)
!1339 = !DILocation(line: 0, scope: !1313, inlinedAt: !1340)
!1340 = distinct !DILocation(line: 643, column: 13, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1329, file: !2, line: 642, column: 11)
!1342 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1340)
!1343 = !DILocation(line: 570, column: 14, scope: !1271, inlinedAt: !1344)
!1344 = distinct !DILocation(line: 644, column: 21, scope: !1341)
!1345 = !DILocation(line: 0, scope: !1064, inlinedAt: !1346)
!1346 = distinct !DILocation(line: 570, column: 7, scope: !1271, inlinedAt: !1344)
!1347 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1346)
!1348 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1346)
!1349 = !DILocation(line: 570, column: 7, scope: !1272, inlinedAt: !1344)
!1350 = !DILocation(line: 562, column: 18, scope: !1262, inlinedAt: !1351)
!1351 = distinct !DILocation(line: 573, column: 17, scope: !1284, inlinedAt: !1344)
!1352 = !DILocation(line: 562, column: 10, scope: !1262, inlinedAt: !1351)
!1353 = !DILocation(line: 562, column: 25, scope: !1262, inlinedAt: !1351)
!1354 = !DILocation(line: 0, scope: !1272, inlinedAt: !1344)
!1355 = !DILocation(line: 574, column: 5, scope: !1284, inlinedAt: !1344)
!1356 = !DILocation(line: 575, column: 12, scope: !1290, inlinedAt: !1344)
!1357 = !DILocation(line: 575, column: 25, scope: !1290, inlinedAt: !1344)
!1358 = !DILocation(line: 576, column: 12, scope: !1290, inlinedAt: !1344)
!1359 = !DILocation(line: 576, column: 15, scope: !1290, inlinedAt: !1344)
!1360 = !DILocation(line: 576, column: 28, scope: !1290, inlinedAt: !1344)
!1361 = !DILocation(line: 577, column: 12, scope: !1290, inlinedAt: !1344)
!1362 = !DILocation(line: 577, column: 15, scope: !1290, inlinedAt: !1344)
!1363 = !DILocation(line: 577, column: 28, scope: !1290, inlinedAt: !1344)
!1364 = !DILocation(line: 575, column: 12, scope: !1271, inlinedAt: !1344)
!1365 = !DILocation(line: 579, column: 15, scope: !1300, inlinedAt: !1344)
!1366 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1367)
!1367 = distinct !DILocation(line: 645, column: 13, scope: !1341)
!1368 = !DILocation(line: 582, column: 5, scope: !1290, inlinedAt: !1344)
!1369 = !DILocation(line: 0, scope: !1313, inlinedAt: !1367)
!1370 = !DILocation(line: 646, column: 13, scope: !1341)
!1371 = !DILocation(line: 651, column: 9, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !2, line: 651, column: 9)
!1373 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 651, column: 9)
!1374 = !DILocation(line: 651, column: 9, scope: !1373)
!1375 = !DILocation(line: 553, column: 7, scope: !1376, inlinedAt: !1378)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 553, column: 7)
!1377 = distinct !DISubprogram(name: "expr", scope: !2, file: !2, line: 551, type: !1263, scopeLine: 552, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221)
!1378 = distinct !DILocation(line: 652, column: 17, scope: !1266)
!1379 = !DILocation(line: 553, column: 14, scope: !1376, inlinedAt: !1378)
!1380 = !DILocation(line: 553, column: 11, scope: !1376, inlinedAt: !1378)
!1381 = !DILocation(line: 553, column: 7, scope: !1377, inlinedAt: !1378)
!1382 = !DILocation(line: 554, column: 5, scope: !1376, inlinedAt: !1378)
!1383 = !DILocation(line: 556, column: 10, scope: !1377, inlinedAt: !1378)
!1384 = !DILocation(line: 653, column: 5, scope: !1266)
!1385 = !DILocation(line: 655, column: 3, scope: !1253)
!1386 = distinct !DISubprogram(name: "test_syntax_error", scope: !2, file: !2, line: 97, type: !1387, scopeLine: 98, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1389)
!1387 = !DISubroutineType(types: !1388)
!1388 = !{null, !265, null}
!1389 = !{!1390, !1391}
!1390 = !DILocalVariable(name: "format", arg: 1, scope: !1386, file: !2, line: 97, type: !265)
!1391 = !DILocalVariable(name: "ap", scope: !1386, file: !2, line: 99, type: !1392)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1393, line: 12, baseType: !1394)
!1393 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "7bd78a282b99fcfe41a9e3c566d14f7d")
!1394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !1395)
!1395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1396, size: 192, elements: !207)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1397)
!1397 = !{!1398, !1399, !1400, !1401}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1396, file: !2, line: 99, baseType: !224, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1396, file: !2, line: 99, baseType: !224, size: 32, offset: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1396, file: !2, line: 99, baseType: !268, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1396, file: !2, line: 99, baseType: !268, size: 64, offset: 128)
!1402 = distinct !DIAssignID()
!1403 = !DILocation(line: 0, scope: !1386)
!1404 = !DILocation(line: 99, column: 3, scope: !1386)
!1405 = !DILocation(line: 100, column: 3, scope: !1386)
!1406 = !DILocation(line: 101, column: 3, scope: !1386)
!1407 = !DILocation(line: 102, column: 3, scope: !1386)
!1408 = distinct !DISubprogram(name: "unary_operator", scope: !2, file: !2, line: 366, type: !1263, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1409)
!1409 = !{!1410, !1444, !1447, !1448, !1452, !1453, !1456, !1457, !1459}
!1410 = !DILocalVariable(name: "stat_buf", scope: !1408, file: !2, line: 368, type: !1411)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1412, line: 26, size: 1152, elements: !1413)
!1412 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!1413 = !{!1414, !1416, !1418, !1420, !1422, !1424, !1426, !1427, !1428, !1429, !1431, !1433, !1440, !1441, !1442}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1411, file: !1412, line: 31, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !272, line: 145, baseType: !264)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1411, file: !1412, line: 36, baseType: !1417, size: 64, offset: 64)
!1417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !272, line: 148, baseType: !264)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1411, file: !1412, line: 44, baseType: !1419, size: 64, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !272, line: 151, baseType: !264)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1411, file: !1412, line: 45, baseType: !1421, size: 32, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !272, line: 150, baseType: !224)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1411, file: !1412, line: 47, baseType: !1423, size: 32, offset: 224)
!1423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !272, line: 146, baseType: !224)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1411, file: !1412, line: 48, baseType: !1425, size: 32, offset: 256)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !272, line: 147, baseType: !224)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1411, file: !1412, line: 50, baseType: !260, size: 32, offset: 288)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1411, file: !1412, line: 52, baseType: !1415, size: 64, offset: 320)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1411, file: !1412, line: 57, baseType: !337, size: 64, offset: 384)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1411, file: !1412, line: 61, baseType: !1430, size: 64, offset: 448)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !272, line: 175, baseType: !273)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1411, file: !1412, line: 63, baseType: !1432, size: 64, offset: 512)
!1432 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !272, line: 180, baseType: !273)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1411, file: !1412, line: 74, baseType: !1434, size: 128, offset: 576)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1435, line: 11, size: 128, elements: !1436)
!1435 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!1436 = !{!1437, !1438}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1434, file: !1435, line: 16, baseType: !271, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1434, file: !1435, line: 21, baseType: !1439, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !272, line: 197, baseType: !273)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1411, file: !1412, line: 75, baseType: !1434, size: 128, offset: 704)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1411, file: !1412, line: 76, baseType: !1434, size: 128, offset: 832)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1411, file: !1412, line: 89, baseType: !1443, size: 192, offset: 960)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1439, size: 192, elements: !388)
!1444 = !DILocalVariable(name: "atime", scope: !1445, file: !2, line: 401, type: !1434)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !2, line: 397, column: 7)
!1446 = distinct !DILexicalBlock(scope: !1408, file: !2, line: 371, column: 5)
!1447 = !DILocalVariable(name: "mtime", scope: !1445, file: !2, line: 402, type: !1434)
!1448 = !DILocalVariable(name: "euid", scope: !1449, file: !2, line: 412, type: !1450)
!1449 = distinct !DILexicalBlock(scope: !1446, file: !2, line: 407, column: 7)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1451, line: 79, baseType: !1423)
!1451 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!1452 = !DILocalVariable(name: "NO_UID", scope: !1449, file: !2, line: 413, type: !1450)
!1453 = !DILocalVariable(name: "egid", scope: !1454, file: !2, line: 423, type: !1455)
!1454 = distinct !DILexicalBlock(scope: !1446, file: !2, line: 418, column: 7)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1451, line: 64, baseType: !1425)
!1456 = !DILocalVariable(name: "NO_GID", scope: !1454, file: !2, line: 424, type: !1455)
!1457 = !DILocalVariable(name: "fd", scope: !1458, file: !2, line: 489, type: !273)
!1458 = distinct !DILexicalBlock(scope: !1446, file: !2, line: 488, column: 7)
!1459 = !DILocalVariable(name: "arg", scope: !1458, file: !2, line: 490, type: !265)
!1460 = distinct !DIAssignID()
!1461 = distinct !DIAssignID()
!1462 = !DILocation(line: 0, scope: !1408)
!1463 = !DILocation(line: 368, column: 3, scope: !1408)
!1464 = !DILocation(line: 370, column: 11, scope: !1408)
!1465 = !DILocation(line: 370, column: 16, scope: !1408)
!1466 = !DILocation(line: 370, column: 3, scope: !1408)
!1467 = !DILocation(line: 373, column: 26, scope: !1446)
!1468 = !DILocation(line: 373, column: 67, scope: !1446)
!1469 = !DILocation(line: 373, column: 72, scope: !1446)
!1470 = !DILocation(line: 373, column: 60, scope: !1446)
!1471 = !DILocation(line: 373, column: 7, scope: !1446)
!1472 = !DILocation(line: 0, scope: !1313, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 121, column: 3, scope: !1474, inlinedAt: !1475)
!1474 = distinct !DISubprogram(name: "unary_advance", scope: !2, file: !2, line: 119, type: !624, scopeLine: 120, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221)
!1475 = distinct !DILocation(line: 381, column: 7, scope: !1446)
!1476 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1473)
!1477 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1473)
!1478 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1473)
!1479 = !DILocation(line: 122, column: 3, scope: !1474, inlinedAt: !1475)
!1480 = !DILocation(line: 382, column: 20, scope: !1446)
!1481 = !DILocation(line: 382, column: 14, scope: !1446)
!1482 = !DILocation(line: 382, column: 46, scope: !1446)
!1483 = !DILocation(line: 382, column: 7, scope: !1446)
!1484 = !DILocation(line: 0, scope: !1313, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 121, column: 3, scope: !1474, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 385, column: 7, scope: !1446)
!1487 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1485)
!1488 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1485)
!1489 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1485)
!1490 = !DILocation(line: 122, column: 3, scope: !1474, inlinedAt: !1486)
!1491 = !DILocation(line: 386, column: 26, scope: !1446)
!1492 = !DILocation(line: 386, column: 14, scope: !1446)
!1493 = !DILocation(line: 386, column: 47, scope: !1446)
!1494 = !DILocation(line: 386, column: 7, scope: !1446)
!1495 = !DILocation(line: 0, scope: !1313, inlinedAt: !1496)
!1496 = distinct !DILocation(line: 121, column: 3, scope: !1474, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 389, column: 7, scope: !1446)
!1498 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1496)
!1499 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1496)
!1500 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1496)
!1501 = !DILocation(line: 122, column: 3, scope: !1474, inlinedAt: !1497)
!1502 = !DILocation(line: 390, column: 26, scope: !1446)
!1503 = !DILocation(line: 390, column: 14, scope: !1446)
!1504 = !DILocation(line: 390, column: 47, scope: !1446)
!1505 = !DILocation(line: 390, column: 7, scope: !1446)
!1506 = !DILocation(line: 0, scope: !1313, inlinedAt: !1507)
!1507 = distinct !DILocation(line: 121, column: 3, scope: !1474, inlinedAt: !1508)
!1508 = distinct !DILocation(line: 393, column: 7, scope: !1446)
!1509 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1507)
!1510 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1507)
!1511 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1507)
!1512 = !DILocation(line: 122, column: 3, scope: !1474, inlinedAt: !1508)
!1513 = !DILocation(line: 394, column: 26, scope: !1446)
!1514 = !DILocation(line: 394, column: 14, scope: !1446)
!1515 = !DILocation(line: 394, column: 47, scope: !1446)
!1516 = !DILocation(line: 394, column: 7, scope: !1446)
!1517 = !DILocation(line: 0, scope: !1313, inlinedAt: !1518)
!1518 = distinct !DILocation(line: 121, column: 3, scope: !1474, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 398, column: 9, scope: !1445)
!1520 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1518)
!1521 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1518)
!1522 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1518)
!1523 = !DILocation(line: 122, column: 3, scope: !1474, inlinedAt: !1519)
!1524 = !DILocation(line: 399, column: 19, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1445, file: !2, line: 399, column: 13)
!1526 = !DILocation(line: 399, column: 13, scope: !1525)
!1527 = !DILocation(line: 399, column: 45, scope: !1525)
!1528 = !DILocation(line: 399, column: 13, scope: !1445)
!1529 = !DILocalVariable(name: "st", arg: 1, scope: !1530, file: !1531, line: 147, type: !1534)
!1530 = distinct !DISubprogram(name: "get_stat_atime", scope: !1531, file: !1531, line: 147, type: !1532, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1536)
!1531 = !DIFile(filename: "./lib/stat-time.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f4edb1fd4cb81bf2ea0eec563958d759")
!1532 = !DISubroutineType(types: !1533)
!1533 = !{!1434, !1534}
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!1536 = !{!1529}
!1537 = !DILocation(line: 0, scope: !1530, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 401, column: 33, scope: !1445)
!1539 = !DILocation(line: 150, column: 10, scope: !1530, inlinedAt: !1538)
!1540 = !{i64 0, i64 8, !1541, i64 8, i64 8, !1541}
!1541 = !{!1542, !1542, i64 0}
!1542 = !{!"long", !953, i64 0}
!1543 = !{i64 0, i64 8, !1541}
!1544 = !DILocation(line: 0, scope: !1445)
!1545 = !DILocalVariable(name: "st", arg: 1, scope: !1546, file: !1531, line: 169, type: !1534)
!1546 = distinct !DISubprogram(name: "get_stat_mtime", scope: !1531, file: !1531, line: 169, type: !1532, scopeLine: 170, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1547)
!1547 = !{!1545}
!1548 = !DILocation(line: 0, scope: !1546, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 402, column: 33, scope: !1445)
!1550 = !DILocation(line: 172, column: 10, scope: !1546, inlinedAt: !1549)
!1551 = !DILocalVariable(name: "a", arg: 1, scope: !1552, file: !1553, line: 64, type: !1434)
!1552 = distinct !DISubprogram(name: "timespec_cmp", scope: !1553, file: !1553, line: 64, type: !1554, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1556)
!1553 = !DIFile(filename: "./lib/timespec.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f2321879fdee55a014e00353b7423449")
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!260, !1434, !1434}
!1556 = !{!1551, !1557}
!1557 = !DILocalVariable(name: "b", arg: 2, scope: !1552, file: !1553, line: 64, type: !1434)
!1558 = !DILocation(line: 0, scope: !1552, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 403, column: 17, scope: !1445)
!1560 = !DILocation(line: 66, column: 14, scope: !1552, inlinedAt: !1559)
!1561 = !DILocation(line: 66, column: 12, scope: !1552, inlinedAt: !1559)
!1562 = !DILocation(line: 66, column: 45, scope: !1552, inlinedAt: !1559)
!1563 = !DILocation(line: 66, column: 43, scope: !1552, inlinedAt: !1559)
!1564 = !DILocation(line: 403, column: 45, scope: !1445)
!1565 = !DILocation(line: 0, scope: !1313, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 121, column: 3, scope: !1474, inlinedAt: !1567)
!1567 = distinct !DILocation(line: 408, column: 9, scope: !1449)
!1568 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1566)
!1569 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1566)
!1570 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1566)
!1571 = !DILocation(line: 122, column: 3, scope: !1474, inlinedAt: !1567)
!1572 = !DILocation(line: 409, column: 19, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1449, file: !2, line: 409, column: 13)
!1574 = !DILocation(line: 409, column: 13, scope: !1573)
!1575 = !DILocation(line: 409, column: 45, scope: !1573)
!1576 = !DILocation(line: 409, column: 13, scope: !1449)
!1577 = !DILocation(line: 411, column: 9, scope: !1449)
!1578 = !DILocation(line: 411, column: 15, scope: !1449)
!1579 = !DILocation(line: 412, column: 22, scope: !1449)
!1580 = !DILocation(line: 0, scope: !1449)
!1581 = !DILocation(line: 414, column: 24, scope: !1449)
!1582 = !DILocation(line: 414, column: 34, scope: !1449)
!1583 = !DILocation(line: 414, column: 37, scope: !1449)
!1584 = !DILocation(line: 414, column: 44, scope: !1449)
!1585 = !DILocation(line: 414, column: 64, scope: !1449)
!1586 = !{!1587, !1053, i64 28}
!1587 = !{!"stat", !1542, i64 0, !1542, i64 8, !1542, i64 16, !1053, i64 24, !1053, i64 28, !1053, i64 32, !1053, i64 36, !1542, i64 40, !1542, i64 48, !1542, i64 56, !1542, i64 64, !1588, i64 72, !1588, i64 88, !1588, i64 104, !953, i64 120}
!1588 = !{!"timespec", !1542, i64 0, !1542, i64 8}
!1589 = !DILocation(line: 414, column: 52, scope: !1449)
!1590 = !DILocation(line: 0, scope: !1313, inlinedAt: !1591)
!1591 = distinct !DILocation(line: 121, column: 3, scope: !1474, inlinedAt: !1592)
!1592 = distinct !DILocation(line: 419, column: 9, scope: !1454)
!1593 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1591)
!1594 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1591)
!1595 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1591)
!1596 = !DILocation(line: 122, column: 3, scope: !1474, inlinedAt: !1592)
!1597 = !DILocation(line: 420, column: 19, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1454, file: !2, line: 420, column: 13)
!1599 = !DILocation(line: 420, column: 13, scope: !1598)
!1600 = !DILocation(line: 420, column: 45, scope: !1598)
!1601 = !DILocation(line: 420, column: 13, scope: !1454)
!1602 = !DILocation(line: 422, column: 9, scope: !1454)
!1603 = !DILocation(line: 422, column: 15, scope: !1454)
!1604 = !DILocation(line: 423, column: 22, scope: !1454)
!1605 = !DILocation(line: 0, scope: !1454)
!1606 = !DILocation(line: 425, column: 24, scope: !1454)
!1607 = !DILocation(line: 425, column: 34, scope: !1454)
!1608 = !DILocation(line: 425, column: 37, scope: !1454)
!1609 = !DILocation(line: 425, column: 44, scope: !1454)
!1610 = !DILocation(line: 425, column: 64, scope: !1454)
!1611 = !{!1587, !1053, i64 32}
!1612 = !DILocation(line: 425, column: 52, scope: !1454)
!1613 = !DILocation(line: 0, scope: !1313, inlinedAt: !1614)
!1614 = distinct !DILocation(line: 121, column: 3, scope: !1474, inlinedAt: !1615)
!1615 = distinct !DILocation(line: 429, column: 7, scope: !1446)
!1616 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1614)
!1617 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1614)
!1618 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1614)
!1619 = !DILocation(line: 122, column: 3, scope: !1474, inlinedAt: !1615)
!1620 = !DILocation(line: 432, column: 21, scope: !1446)
!1621 = !DILocation(line: 432, column: 15, scope: !1446)
!1622 = !DILocation(line: 432, column: 47, scope: !1446)
!1623 = !DILocation(line: 433, column: 15, scope: !1446)
!1624 = !DILocation(line: 432, column: 7, scope: !1446)
!1625 = !DILocation(line: 0, scope: !1313, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 121, column: 3, scope: !1474, inlinedAt: !1627)
!1627 = distinct !DILocation(line: 436, column: 7, scope: !1446)
!1628 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1626)
!1629 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1626)
!1630 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1626)
!1631 = !DILocation(line: 122, column: 3, scope: !1474, inlinedAt: !1627)
!1632 = !DILocation(line: 437, column: 21, scope: !1446)
!1633 = !DILocation(line: 437, column: 15, scope: !1446)
!1634 = !DILocation(line: 437, column: 47, scope: !1446)
!1635 = !DILocation(line: 438, column: 15, scope: !1446)
!1636 = !DILocation(line: 437, column: 7, scope: !1446)
!1637 = !DILocation(line: 0, scope: !1313, inlinedAt: !1638)
!1638 = distinct !DILocation(line: 121, column: 3, scope: !1474, inlinedAt: !1639)
!1639 = distinct !DILocation(line: 441, column: 7, scope: !1446)
!1640 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1638)
!1641 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1638)
!1642 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1638)
!1643 = !DILocation(line: 122, column: 3, scope: !1474, inlinedAt: !1639)
!1644 = !DILocation(line: 442, column: 21, scope: !1446)
!1645 = !DILocation(line: 442, column: 15, scope: !1446)
!1646 = !DILocation(line: 442, column: 47, scope: !1446)
!1647 = !DILocation(line: 443, column: 15, scope: !1446)
!1648 = !DILocation(line: 442, column: 7, scope: !1446)
!1649 = !DILocation(line: 0, scope: !1313, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 121, column: 3, scope: !1474, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 446, column: 7, scope: !1446)
!1652 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1650)
!1653 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1650)
!1654 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1650)
!1655 = !DILocation(line: 122, column: 3, scope: !1474, inlinedAt: !1651)
!1656 = !DILocation(line: 447, column: 21, scope: !1446)
!1657 = !DILocation(line: 447, column: 15, scope: !1446)
!1658 = !DILocation(line: 447, column: 47, scope: !1446)
!1659 = !DILocation(line: 448, column: 15, scope: !1446)
!1660 = !DILocation(line: 447, column: 7, scope: !1446)
!1661 = !DILocation(line: 0, scope: !1313, inlinedAt: !1662)
!1662 = distinct !DILocation(line: 121, column: 3, scope: !1474, inlinedAt: !1663)
!1663 = distinct !DILocation(line: 451, column: 7, scope: !1446)
!1664 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1662)
!1665 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1662)
!1666 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1662)
!1667 = !DILocation(line: 122, column: 3, scope: !1474, inlinedAt: !1663)
!1668 = !DILocation(line: 452, column: 21, scope: !1446)
!1669 = !DILocation(line: 452, column: 15, scope: !1446)
!1670 = !DILocation(line: 452, column: 47, scope: !1446)
!1671 = !DILocation(line: 453, column: 15, scope: !1446)
!1672 = !DILocation(line: 452, column: 7, scope: !1446)
!1673 = !DILocation(line: 0, scope: !1313, inlinedAt: !1674)
!1674 = distinct !DILocation(line: 121, column: 3, scope: !1474, inlinedAt: !1675)
!1675 = distinct !DILocation(line: 456, column: 7, scope: !1446)
!1676 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1674)
!1677 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1674)
!1678 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1674)
!1679 = !DILocation(line: 122, column: 3, scope: !1474, inlinedAt: !1675)
!1680 = !DILocation(line: 457, column: 21, scope: !1446)
!1681 = !DILocation(line: 457, column: 15, scope: !1446)
!1682 = !DILocation(line: 457, column: 47, scope: !1446)
!1683 = !DILocation(line: 458, column: 15, scope: !1446)
!1684 = !DILocation(line: 457, column: 7, scope: !1446)
!1685 = !DILocation(line: 0, scope: !1313, inlinedAt: !1686)
!1686 = distinct !DILocation(line: 121, column: 3, scope: !1474, inlinedAt: !1687)
!1687 = distinct !DILocation(line: 461, column: 7, scope: !1446)
!1688 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1686)
!1689 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1686)
!1690 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1686)
!1691 = !DILocation(line: 122, column: 3, scope: !1474, inlinedAt: !1687)
!1692 = !DILocation(line: 462, column: 21, scope: !1446)
!1693 = !DILocation(line: 462, column: 15, scope: !1446)
!1694 = !DILocation(line: 462, column: 47, scope: !1446)
!1695 = !DILocation(line: 463, column: 15, scope: !1446)
!1696 = !DILocation(line: 462, column: 7, scope: !1446)
!1697 = !DILocation(line: 0, scope: !1313, inlinedAt: !1698)
!1698 = distinct !DILocation(line: 121, column: 3, scope: !1474, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 469, column: 7, scope: !1446)
!1700 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1698)
!1701 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1698)
!1702 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1698)
!1703 = !DILocation(line: 122, column: 3, scope: !1474, inlinedAt: !1699)
!1704 = !DILocation(line: 470, column: 25, scope: !1446)
!1705 = !DILocalVariable(name: "linkbuf", scope: !1706, file: !1707, line: 51, type: !206)
!1706 = distinct !DISubprogram(name: "issymlink", scope: !1707, file: !1707, line: 49, type: !1708, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1710)
!1707 = !DIFile(filename: "./lib/issymlink.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3ed5fe5c76158b7c9a68dd013fb9e151")
!1708 = !DISubroutineType(types: !1709)
!1709 = !{!260, !265}
!1710 = !{!1711, !1705}
!1711 = !DILocalVariable(name: "filename", arg: 1, scope: !1706, file: !1707, line: 49, type: !265)
!1712 = !DILocation(line: 0, scope: !1706, inlinedAt: !1713)
!1713 = distinct !DILocation(line: 470, column: 14, scope: !1446)
!1714 = !DILocation(line: 51, column: 3, scope: !1706, inlinedAt: !1713)
!1715 = !DILocation(line: 52, column: 7, scope: !1716, inlinedAt: !1713)
!1716 = distinct !DILexicalBlock(scope: !1706, file: !1707, line: 52, column: 7)
!1717 = !DILocation(line: 52, column: 54, scope: !1716, inlinedAt: !1713)
!1718 = !DILocation(line: 58, column: 1, scope: !1706, inlinedAt: !1713)
!1719 = !DILocation(line: 470, column: 7, scope: !1446)
!1720 = !DILocation(line: 0, scope: !1313, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 121, column: 3, scope: !1474, inlinedAt: !1722)
!1722 = distinct !DILocation(line: 473, column: 7, scope: !1446)
!1723 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1721)
!1724 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1721)
!1725 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1721)
!1726 = !DILocation(line: 122, column: 3, scope: !1474, inlinedAt: !1722)
!1727 = !DILocation(line: 474, column: 21, scope: !1446)
!1728 = !DILocation(line: 474, column: 15, scope: !1446)
!1729 = !DILocation(line: 474, column: 47, scope: !1446)
!1730 = !DILocation(line: 475, column: 15, scope: !1446)
!1731 = !DILocation(line: 474, column: 7, scope: !1446)
!1732 = !DILocation(line: 0, scope: !1313, inlinedAt: !1733)
!1733 = distinct !DILocation(line: 121, column: 3, scope: !1474, inlinedAt: !1734)
!1734 = distinct !DILocation(line: 478, column: 7, scope: !1446)
!1735 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1733)
!1736 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1733)
!1737 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1733)
!1738 = !DILocation(line: 122, column: 3, scope: !1474, inlinedAt: !1734)
!1739 = !DILocation(line: 479, column: 21, scope: !1446)
!1740 = !DILocation(line: 479, column: 15, scope: !1446)
!1741 = !DILocation(line: 479, column: 47, scope: !1446)
!1742 = !DILocation(line: 480, column: 15, scope: !1446)
!1743 = !DILocation(line: 479, column: 7, scope: !1446)
!1744 = !DILocation(line: 0, scope: !1313, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 121, column: 3, scope: !1474, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 483, column: 7, scope: !1446)
!1747 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1745)
!1748 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1745)
!1749 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1745)
!1750 = !DILocation(line: 122, column: 3, scope: !1474, inlinedAt: !1746)
!1751 = !DILocation(line: 484, column: 21, scope: !1446)
!1752 = !DILocation(line: 484, column: 15, scope: !1446)
!1753 = !DILocation(line: 484, column: 47, scope: !1446)
!1754 = !DILocation(line: 485, column: 15, scope: !1446)
!1755 = !DILocation(line: 484, column: 7, scope: !1446)
!1756 = !DILocation(line: 0, scope: !1313, inlinedAt: !1757)
!1757 = distinct !DILocation(line: 121, column: 3, scope: !1474, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 491, column: 9, scope: !1458)
!1759 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1757)
!1760 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1757)
!1761 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1757)
!1762 = !DILocation(line: 122, column: 3, scope: !1474, inlinedAt: !1758)
!1763 = !DILocation(line: 492, column: 25, scope: !1458)
!1764 = !DILocation(line: 492, column: 15, scope: !1458)
!1765 = !DILocation(line: 0, scope: !1458)
!1766 = !DILocation(line: 493, column: 9, scope: !1458)
!1767 = !DILocation(line: 493, column: 15, scope: !1458)
!1768 = !DILocation(line: 494, column: 14, scope: !1458)
!1769 = !DILocation(line: 495, column: 17, scope: !1458)
!1770 = !DILocation(line: 495, column: 23, scope: !1458)
!1771 = !DILocation(line: 495, column: 33, scope: !1458)
!1772 = !DILocation(line: 495, column: 72, scope: !1458)
!1773 = !DILocation(line: 495, column: 64, scope: !1458)
!1774 = !DILocation(line: 495, column: 61, scope: !1458)
!1775 = !DILocation(line: 0, scope: !1313, inlinedAt: !1776)
!1776 = distinct !DILocation(line: 121, column: 3, scope: !1474, inlinedAt: !1777)
!1777 = distinct !DILocation(line: 499, column: 7, scope: !1446)
!1778 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1776)
!1779 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1776)
!1780 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1776)
!1781 = !DILocation(line: 122, column: 3, scope: !1474, inlinedAt: !1777)
!1782 = !DILocation(line: 500, column: 14, scope: !1446)
!1783 = !DILocation(line: 500, column: 31, scope: !1446)
!1784 = !DILocation(line: 500, column: 7, scope: !1446)
!1785 = !DILocation(line: 0, scope: !1313, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 121, column: 3, scope: !1474, inlinedAt: !1787)
!1787 = distinct !DILocation(line: 503, column: 7, scope: !1446)
!1788 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1786)
!1789 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1786)
!1790 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1786)
!1791 = !DILocation(line: 122, column: 3, scope: !1474, inlinedAt: !1787)
!1792 = !DILocation(line: 504, column: 14, scope: !1446)
!1793 = !DILocation(line: 504, column: 31, scope: !1446)
!1794 = !DILocation(line: 504, column: 7, scope: !1446)
!1795 = !DILocation(line: 0, scope: !1446)
!1796 = !DILocation(line: 506, column: 1, scope: !1408)
!1797 = distinct !DISubprogram(name: "beyond", scope: !2, file: !2, line: 130, type: !624, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221)
!1798 = !DILocation(line: 132, column: 22, scope: !1797)
!1799 = !DILocation(line: 132, column: 61, scope: !1797)
!1800 = !DILocation(line: 132, column: 66, scope: !1797)
!1801 = !DILocation(line: 132, column: 54, scope: !1797)
!1802 = !DILocation(line: 132, column: 3, scope: !1797)
!1803 = distinct !DISubprogram(name: "three_arguments", scope: !2, file: !2, line: 587, type: !1263, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1804)
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
!1819 = !DILocation(line: 0, scope: !1064, inlinedAt: !1820)
!1820 = distinct !DILocation(line: 594, column: 12, scope: !1818)
!1821 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1820)
!1822 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1820)
!1823 = !DILocation(line: 594, column: 12, scope: !1813)
!1824 = !DILocation(line: 0, scope: !1313, inlinedAt: !1825)
!1825 = distinct !DILocation(line: 596, column: 7, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1818, file: !2, line: 595, column: 5)
!1827 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1825)
!1828 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1825)
!1829 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1825)
!1830 = !DILocation(line: 0, scope: !1064, inlinedAt: !1831)
!1831 = distinct !DILocation(line: 570, column: 7, scope: !1271, inlinedAt: !1832)
!1832 = distinct !DILocation(line: 597, column: 16, scope: !1826)
!1833 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1831)
!1834 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1831)
!1835 = !DILocation(line: 570, column: 7, scope: !1272, inlinedAt: !1832)
!1836 = !DILocation(line: 570, column: 14, scope: !1271, inlinedAt: !1832)
!1837 = !DILocation(line: 562, column: 18, scope: !1262, inlinedAt: !1838)
!1838 = distinct !DILocation(line: 573, column: 17, scope: !1284, inlinedAt: !1832)
!1839 = !DILocation(line: 562, column: 10, scope: !1262, inlinedAt: !1838)
!1840 = !DILocation(line: 562, column: 25, scope: !1262, inlinedAt: !1838)
!1841 = !DILocation(line: 0, scope: !1272, inlinedAt: !1832)
!1842 = !DILocation(line: 574, column: 5, scope: !1284, inlinedAt: !1832)
!1843 = !DILocation(line: 575, column: 12, scope: !1290, inlinedAt: !1832)
!1844 = !DILocation(line: 575, column: 25, scope: !1290, inlinedAt: !1832)
!1845 = !DILocation(line: 576, column: 12, scope: !1290, inlinedAt: !1832)
!1846 = !DILocation(line: 576, column: 15, scope: !1290, inlinedAt: !1832)
!1847 = !DILocation(line: 576, column: 28, scope: !1290, inlinedAt: !1832)
!1848 = !DILocation(line: 577, column: 12, scope: !1290, inlinedAt: !1832)
!1849 = !DILocation(line: 577, column: 15, scope: !1290, inlinedAt: !1832)
!1850 = !DILocation(line: 577, column: 28, scope: !1290, inlinedAt: !1832)
!1851 = !DILocation(line: 575, column: 12, scope: !1271, inlinedAt: !1832)
!1852 = !DILocation(line: 579, column: 15, scope: !1300, inlinedAt: !1832)
!1853 = !DILocation(line: 582, column: 5, scope: !1290, inlinedAt: !1832)
!1854 = !DILocation(line: 597, column: 15, scope: !1826)
!1855 = !DILocation(line: 598, column: 5, scope: !1826)
!1856 = !DILocation(line: 0, scope: !1064, inlinedAt: !1857)
!1857 = distinct !DILocation(line: 599, column: 12, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1818, file: !2, line: 599, column: 12)
!1859 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1857)
!1860 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1857)
!1861 = !DILocation(line: 599, column: 35, scope: !1858)
!1862 = !DILocation(line: 599, column: 45, scope: !1858)
!1863 = !DILocation(line: 0, scope: !1064, inlinedAt: !1864)
!1864 = distinct !DILocation(line: 599, column: 38, scope: !1858)
!1865 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1864)
!1866 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1864)
!1867 = !DILocation(line: 599, column: 12, scope: !1818)
!1868 = !DILocation(line: 0, scope: !1313, inlinedAt: !1869)
!1869 = distinct !DILocation(line: 601, column: 7, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1858, file: !2, line: 600, column: 5)
!1871 = !DILocation(line: 562, column: 10, scope: !1262, inlinedAt: !1872)
!1872 = distinct !DILocation(line: 602, column: 15, scope: !1870)
!1873 = !DILocation(line: 562, column: 25, scope: !1262, inlinedAt: !1872)
!1874 = !DILocation(line: 0, scope: !1313, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 603, column: 7, scope: !1870)
!1876 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1875)
!1877 = !DILocation(line: 604, column: 5, scope: !1870)
!1878 = !DILocation(line: 0, scope: !1064, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 605, column: 12, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1858, file: !2, line: 605, column: 12)
!1881 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1879)
!1882 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1879)
!1883 = !DILocation(line: 605, column: 40, scope: !1880)
!1884 = !DILocation(line: 0, scope: !1064, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 605, column: 43, scope: !1880)
!1886 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1885)
!1887 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1885)
!1888 = !DILocation(line: 606, column: 12, scope: !1880)
!1889 = !DILocation(line: 0, scope: !1064, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 606, column: 15, scope: !1880)
!1891 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1890)
!1892 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1890)
!1893 = !DILocation(line: 606, column: 42, scope: !1880)
!1894 = !DILocation(line: 0, scope: !1064, inlinedAt: !1895)
!1895 = distinct !DILocation(line: 606, column: 45, scope: !1880)
!1896 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1895)
!1897 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1895)
!1898 = !DILocation(line: 605, column: 12, scope: !1858)
!1899 = !DILocation(line: 553, column: 14, scope: !1376, inlinedAt: !1900)
!1900 = distinct !DILocation(line: 607, column: 13, scope: !1880)
!1901 = !DILocation(line: 553, column: 11, scope: !1376, inlinedAt: !1900)
!1902 = !DILocation(line: 553, column: 7, scope: !1377, inlinedAt: !1900)
!1903 = !DILocation(line: 554, column: 5, scope: !1376, inlinedAt: !1900)
!1904 = !DILocation(line: 556, column: 10, scope: !1377, inlinedAt: !1900)
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
!1915 = distinct !DISubprogram(name: "or", scope: !2, file: !2, line: 533, type: !1263, scopeLine: 534, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1916)
!1916 = !{!1917}
!1917 = !DILocalVariable(name: "value", scope: !1915, file: !2, line: 535, type: !297)
!1918 = !DILocation(line: 0, scope: !1915)
!1919 = !DILocalVariable(name: "value", scope: !1920, file: !2, line: 516, type: !297)
!1920 = distinct !DISubprogram(name: "and", scope: !2, file: !2, line: 514, type: !1263, scopeLine: 515, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1921)
!1921 = !{!1919}
!1922 = !DILocation(line: 0, scope: !1920, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 539, column: 16, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1915, file: !2, line: 538, column: 5)
!1925 = !DILocalVariable(name: "negated", scope: !1926, file: !2, line: 227, type: !297)
!1926 = distinct !DISubprogram(name: "term", scope: !2, file: !2, line: 224, type: !1263, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !1927)
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
!1942 = !DILocation(line: 231, column: 47, scope: !1926, inlinedAt: !1934)
!1943 = !DILocation(line: 231, column: 60, scope: !1926, inlinedAt: !1934)
!1944 = !DILocation(line: 231, column: 3, scope: !1926, inlinedAt: !1934)
!1945 = !DILocation(line: 0, scope: !1313, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 233, column: 7, scope: !1947, inlinedAt: !1934)
!1947 = distinct !DILexicalBlock(scope: !1926, file: !2, line: 232, column: 5)
!1948 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1946)
!1949 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1946)
!1950 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1946)
!1951 = !DILocation(line: 234, column: 17, scope: !1947, inlinedAt: !1934)
!1952 = distinct !{!1952, !1944, !1953, !1099}
!1953 = !DILocation(line: 235, column: 5, scope: !1926, inlinedAt: !1934)
!1954 = !DILocation(line: 238, column: 5, scope: !1955, inlinedAt: !1934)
!1955 = distinct !DILexicalBlock(scope: !1926, file: !2, line: 237, column: 7)
!1956 = !DILocation(line: 241, column: 7, scope: !1932, inlinedAt: !1934)
!1957 = !DILocation(line: 241, column: 20, scope: !1932, inlinedAt: !1934)
!1958 = !DILocation(line: 241, column: 27, scope: !1932, inlinedAt: !1934)
!1959 = !DILocation(line: 241, column: 30, scope: !1932, inlinedAt: !1934)
!1960 = !DILocation(line: 241, column: 43, scope: !1932, inlinedAt: !1934)
!1961 = !DILocation(line: 241, column: 7, scope: !1926, inlinedAt: !1934)
!1962 = !DILocation(line: 0, scope: !1313, inlinedAt: !1963)
!1963 = distinct !DILocation(line: 245, column: 7, scope: !1931, inlinedAt: !1934)
!1964 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !1963)
!1965 = !DILocation(line: 114, column: 9, scope: !1322, inlinedAt: !1963)
!1966 = !DILocation(line: 0, scope: !1931, inlinedAt: !1934)
!1967 = !DILocation(line: 248, column: 16, scope: !1968, inlinedAt: !1934)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !2, line: 247, column: 7)
!1969 = distinct !DILexicalBlock(scope: !1931, file: !2, line: 247, column: 7)
!1970 = !DILocation(line: 248, column: 24, scope: !1968, inlinedAt: !1934)
!1971 = !DILocation(line: 248, column: 31, scope: !1968, inlinedAt: !1934)
!1972 = !DILocation(line: 247, column: 7, scope: !1969, inlinedAt: !1934)
!1973 = !DILocation(line: 248, column: 43, scope: !1968, inlinedAt: !1934)
!1974 = !DILocation(line: 0, scope: !1064, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 248, column: 36, scope: !1968, inlinedAt: !1934)
!1976 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !1975)
!1977 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !1975)
!1978 = !DILocation(line: 115, column: 5, scope: !1322, inlinedAt: !1963)
!1979 = distinct !{!1979, !1972, !1980, !1099}
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
!2002 = !DILocation(line: 0, scope: !1313, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 263, column: 7, scope: !1931, inlinedAt: !1934)
!2004 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !2003)
!2005 = !DILocation(line: 264, column: 5, scope: !1931, inlinedAt: !1934)
!2006 = !DILocation(line: 267, column: 22, scope: !2007, inlinedAt: !1934)
!2007 = distinct !DILexicalBlock(scope: !1932, file: !2, line: 267, column: 12)
!2008 = !DILocation(line: 267, column: 14, scope: !2007, inlinedAt: !1934)
!2009 = !DILocation(line: 267, column: 28, scope: !2007, inlinedAt: !1934)
!2010 = !DILocation(line: 0, scope: !1064, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 267, column: 31, scope: !2007, inlinedAt: !1934)
!2012 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2011)
!2013 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2011)
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
!2042 = !DILocation(line: 0, scope: !1313, inlinedAt: !2043)
!2043 = distinct !DILocation(line: 280, column: 7, scope: !2041, inlinedAt: !1934)
!2044 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !2043)
!2045 = !DILocation(line: 283, column: 18, scope: !1926, inlinedAt: !1934)
!2046 = !DILocation(line: 520, column: 13, scope: !1935, inlinedAt: !1923)
!2047 = !DILocation(line: 521, column: 14, scope: !2048, inlinedAt: !1923)
!2048 = distinct !DILexicalBlock(scope: !1935, file: !2, line: 521, column: 11)
!2049 = !DILocation(line: 521, column: 20, scope: !2048, inlinedAt: !1923)
!2050 = !DILocation(line: 521, column: 18, scope: !2048, inlinedAt: !1923)
!2051 = !DILocation(line: 521, column: 25, scope: !2048, inlinedAt: !1923)
!2052 = !DILocation(line: 521, column: 35, scope: !2048, inlinedAt: !1923)
!2053 = !DILocation(line: 0, scope: !1064, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 521, column: 28, scope: !2048, inlinedAt: !1923)
!2055 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2054)
!2056 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2054)
!2057 = !DILocation(line: 521, column: 11, scope: !1935, inlinedAt: !1923)
!2058 = !DILocation(line: 0, scope: !1313, inlinedAt: !2059)
!2059 = distinct !DILocation(line: 523, column: 7, scope: !1935, inlinedAt: !1923)
!2060 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !2059)
!2061 = distinct !{!2061, !2062, !2063}
!2062 = !DILocation(line: 518, column: 3, scope: !1920, inlinedAt: !1923)
!2063 = !DILocation(line: 524, column: 5, scope: !1920, inlinedAt: !1923)
!2064 = !DILocation(line: 539, column: 13, scope: !1924)
!2065 = !DILocation(line: 0, scope: !1064, inlinedAt: !2066)
!2066 = distinct !DILocation(line: 540, column: 28, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1924, file: !2, line: 540, column: 11)
!2068 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2066)
!2069 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2066)
!2070 = !DILocation(line: 540, column: 11, scope: !1924)
!2071 = !DILocation(line: 541, column: 9, scope: !2067)
!2072 = !DILocation(line: 0, scope: !1313, inlinedAt: !2073)
!2073 = distinct !DILocation(line: 542, column: 7, scope: !1924)
!2074 = !DILocation(line: 112, column: 3, scope: !1313, inlinedAt: !2073)
!2075 = distinct !{!2075, !1938, !2076}
!2076 = !DILocation(line: 543, column: 5, scope: !1915)
!2077 = distinct !DISubprogram(name: "binop", scope: !2, file: !2, line: 186, type: !1708, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2078)
!2078 = !{!2079}
!2079 = !DILocalVariable(name: "s", arg: 1, scope: !2077, file: !2, line: 186, type: !265)
!2080 = !DILocation(line: 0, scope: !2077)
!2081 = !DILocation(line: 0, scope: !1064, inlinedAt: !2082)
!2082 = distinct !DILocation(line: 188, column: 13, scope: !2077)
!2083 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2082)
!2084 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2082)
!2085 = !DILocation(line: 188, column: 13, scope: !2077)
!2086 = !DILocation(line: 0, scope: !1064, inlinedAt: !2087)
!2087 = distinct !DILocation(line: 189, column: 13, scope: !2077)
!2088 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2087)
!2089 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2087)
!2090 = !DILocation(line: 189, column: 13, scope: !2077)
!2091 = !DILocation(line: 0, scope: !1064, inlinedAt: !2092)
!2092 = distinct !DILocation(line: 190, column: 13, scope: !2077)
!2093 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2092)
!2094 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2092)
!2095 = !DILocation(line: 190, column: 13, scope: !2077)
!2096 = !DILocation(line: 0, scope: !1064, inlinedAt: !2097)
!2097 = distinct !DILocation(line: 191, column: 13, scope: !2077)
!2098 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2097)
!2099 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2097)
!2100 = !DILocation(line: 191, column: 13, scope: !2077)
!2101 = !DILocation(line: 0, scope: !1064, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 192, column: 13, scope: !2077)
!2103 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2102)
!2104 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2102)
!2105 = !DILocation(line: 192, column: 13, scope: !2077)
!2106 = !DILocation(line: 0, scope: !1064, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 193, column: 13, scope: !2077)
!2108 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2107)
!2109 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2107)
!2110 = !DILocation(line: 193, column: 13, scope: !2077)
!2111 = !DILocation(line: 0, scope: !1064, inlinedAt: !2112)
!2112 = distinct !DILocation(line: 194, column: 13, scope: !2077)
!2113 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2112)
!2114 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2112)
!2115 = !DILocation(line: 194, column: 13, scope: !2077)
!2116 = !DILocation(line: 0, scope: !1064, inlinedAt: !2117)
!2117 = distinct !DILocation(line: 195, column: 13, scope: !2077)
!2118 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2117)
!2119 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2117)
!2120 = !DILocation(line: 195, column: 13, scope: !2077)
!2121 = !DILocation(line: 0, scope: !1064, inlinedAt: !2122)
!2122 = distinct !DILocation(line: 196, column: 13, scope: !2077)
!2123 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2122)
!2124 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2122)
!2125 = !DILocation(line: 196, column: 13, scope: !2077)
!2126 = !DILocation(line: 0, scope: !1064, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 197, column: 13, scope: !2077)
!2128 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2127)
!2129 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2127)
!2130 = !DILocation(line: 197, column: 13, scope: !2077)
!2131 = !DILocation(line: 0, scope: !1064, inlinedAt: !2132)
!2132 = distinct !DILocation(line: 198, column: 13, scope: !2077)
!2133 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2132)
!2134 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2132)
!2135 = !DILocation(line: 198, column: 13, scope: !2077)
!2136 = !DILocation(line: 0, scope: !1064, inlinedAt: !2137)
!2137 = distinct !DILocation(line: 199, column: 13, scope: !2077)
!2138 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2137)
!2139 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2137)
!2140 = !DILocation(line: 199, column: 13, scope: !2077)
!2141 = !DILocation(line: 0, scope: !1064, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 200, column: 13, scope: !2077)
!2143 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2142)
!2144 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2142)
!2145 = !DILocation(line: 200, column: 13, scope: !2077)
!2146 = !DILocation(line: 0, scope: !1064, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 201, column: 13, scope: !2077)
!2148 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2147)
!2149 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2147)
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
!2160 = !DILocalVariable(name: "lbuf", scope: !2161, file: !2, line: 307, type: !620)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !2, line: 306, column: 7)
!2162 = distinct !DILexicalBlock(scope: !2152, file: !2, line: 303, column: 5)
!2163 = !DILocalVariable(name: "rbuf", scope: !2161, file: !2, line: 308, type: !620)
!2164 = !DILocalVariable(name: "l", scope: !2161, file: !2, line: 309, type: !265)
!2165 = !DILocalVariable(name: "r", scope: !2161, file: !2, line: 312, type: !265)
!2166 = !DILocalVariable(name: "cmp", scope: !2161, file: !2, line: 315, type: !260)
!2167 = !DILocalVariable(name: "cmp", scope: !2168, file: !2, line: 333, type: !260)
!2168 = distinct !DILexicalBlock(scope: !2162, file: !2, line: 329, column: 7)
!2169 = !DILocalVariable(name: "st", scope: !2170, file: !2, line: 343, type: !2172)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !2, line: 342, column: 9)
!2171 = distinct !DILexicalBlock(scope: !2162, file: !2, line: 339, column: 11)
!2172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1411, size: 2304, elements: !45)
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
!2191 = !DILocation(line: 0, scope: !1064, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 296, column: 34, scope: !2152)
!2193 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2192)
!2194 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2192)
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
!2235 = !DILocalVariable(name: "finfo", scope: !2236, file: !2, line: 177, type: !1411)
!2236 = distinct !DISubprogram(name: "get_mtime", scope: !2, file: !2, line: 175, type: !2237, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2239)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!1434, !265}
!2239 = !{!2240, !2235}
!2240 = !DILocalVariable(name: "filename", arg: 1, scope: !2236, file: !2, line: 175, type: !265)
!2241 = !DILocation(line: 0, scope: !2236, inlinedAt: !2242)
!2242 = distinct !DILocation(line: 333, column: 33, scope: !2168)
!2243 = !DILocation(line: 177, column: 3, scope: !2236, inlinedAt: !2242)
!2244 = !DILocation(line: 178, column: 11, scope: !2236, inlinedAt: !2242)
!2245 = !DILocation(line: 178, column: 35, scope: !2236, inlinedAt: !2242)
!2246 = !DILocation(line: 181, column: 1, scope: !2236, inlinedAt: !2242)
!2247 = !DILocation(line: 333, column: 33, scope: !2168)
!2248 = !DILocation(line: 334, column: 44, scope: !2168)
!2249 = !DILocation(line: 0, scope: !2236, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 334, column: 33, scope: !2168)
!2251 = !DILocation(line: 177, column: 3, scope: !2236, inlinedAt: !2250)
!2252 = !DILocation(line: 178, column: 11, scope: !2236, inlinedAt: !2250)
!2253 = !DILocation(line: 178, column: 35, scope: !2236, inlinedAt: !2250)
!2254 = !DILocation(line: 181, column: 1, scope: !2236, inlinedAt: !2250)
!2255 = !DILocation(line: 334, column: 33, scope: !2168)
!2256 = !DILocation(line: 0, scope: !1552, inlinedAt: !2257)
!2257 = distinct !DILocation(line: 333, column: 19, scope: !2168)
!2258 = !DILocation(line: 66, column: 14, scope: !1552, inlinedAt: !2257)
!2259 = !DILocation(line: 66, column: 12, scope: !1552, inlinedAt: !2257)
!2260 = !DILocation(line: 66, column: 45, scope: !1552, inlinedAt: !2257)
!2261 = !DILocation(line: 66, column: 43, scope: !1552, inlinedAt: !2257)
!2262 = !DILocation(line: 0, scope: !2168)
!2263 = !DILocation(line: 335, column: 20, scope: !2168)
!2264 = !DILocation(line: 335, column: 16, scope: !2168)
!2265 = !DILocation(line: 339, column: 18, scope: !2171)
!2266 = !DILocation(line: 339, column: 11, scope: !2162)
!2267 = !DILocation(line: 340, column: 28, scope: !2171)
!2268 = !DILocation(line: 340, column: 9, scope: !2171)
!2269 = !DILocation(line: 343, column: 11, scope: !2170)
!2270 = !DILocation(line: 344, column: 25, scope: !2170)
!2271 = !DILocation(line: 344, column: 19, scope: !2170)
!2272 = !DILocation(line: 344, column: 47, scope: !2170)
!2273 = !DILocation(line: 345, column: 19, scope: !2170)
!2274 = !DILocation(line: 345, column: 28, scope: !2170)
!2275 = !DILocation(line: 345, column: 43, scope: !2170)
!2276 = !DILocation(line: 345, column: 22, scope: !2170)
!2277 = !DILocation(line: 345, column: 50, scope: !2170)
!2278 = !DILocation(line: 346, column: 19, scope: !2170)
!2279 = !DILocalVariable(name: "a", arg: 1, scope: !2280, file: !2281, line: 86, type: !1534)
!2280 = distinct !DISubprogram(name: "psame_inode", scope: !2281, file: !2281, line: 86, type: !2282, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2284)
!2281 = !DIFile(filename: "./lib/same-inode.h", directory: "/src", checksumkind: CSK_MD5, checksum: "6a49db1c884e7bc93549038e7fb28788")
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!297, !1534, !1534}
!2284 = !{!2279, !2285}
!2285 = !DILocalVariable(name: "b", arg: 2, scope: !2280, file: !2281, line: 86, type: !1534)
!2286 = !DILocation(line: 0, scope: !2280, inlinedAt: !2287)
!2287 = distinct !DILocation(line: 346, column: 22, scope: !2170)
!2288 = !DILocation(line: 90, column: 14, scope: !2280, inlinedAt: !2287)
!2289 = !{!1587, !1542, i64 0}
!2290 = !{!1587, !1542, i64 8}
!2291 = !DILocation(line: 347, column: 9, scope: !2171)
!2292 = !DILocation(line: 351, column: 21, scope: !2162)
!2293 = !DILocation(line: 351, column: 35, scope: !2162)
!2294 = !DILocation(line: 0, scope: !1064, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 351, column: 14, scope: !2162)
!2296 = !DILocation(line: 1361, column: 11, scope: !1064, inlinedAt: !2295)
!2297 = !DILocation(line: 1361, column: 10, scope: !1064, inlinedAt: !2295)
!2298 = !DILocation(line: 351, column: 49, scope: !2162)
!2299 = !DILocation(line: 351, column: 7, scope: !2162)
!2300 = !DILocation(line: 356, column: 28, scope: !2174)
!2301 = !DILocation(line: 356, column: 42, scope: !2174)
!2302 = !DILocation(line: 356, column: 19, scope: !2174)
!2303 = !DILocation(line: 0, scope: !2174)
!2304 = !DILocation(line: 357, column: 20, scope: !2174)
!2305 = !DILocation(line: 357, column: 16, scope: !2174)
!2306 = !DILocation(line: 362, column: 3, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2308, file: !2, line: 362, column: 3)
!2308 = distinct !DILexicalBlock(scope: !2152, file: !2, line: 362, column: 3)
!2309 = !DILocation(line: 0, scope: !2162)
!2310 = !DILocation(line: 363, column: 1, scope: !2152)
!2311 = !DISubprogram(name: "strlen", scope: !1175, file: !1175, line: 407, type: !2312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!264, !265}
!2314 = distinct !DISubprogram(name: "find_int", scope: !2, file: !2, line: 139, type: !2315, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2317)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!265, !265}
!2317 = !{!2318, !2319, !2320}
!2318 = !DILocalVariable(name: "string", arg: 1, scope: !2314, file: !2, line: 139, type: !265)
!2319 = !DILocalVariable(name: "p", scope: !2314, file: !2, line: 141, type: !265)
!2320 = !DILocalVariable(name: "number_start", scope: !2314, file: !2, line: 142, type: !265)
!2321 = !DILocation(line: 0, scope: !2314)
!2322 = !DILocation(line: 144, column: 8, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2314, file: !2, line: 144, column: 3)
!2324 = !DILocation(line: 144, scope: !2323)
!2325 = !DILocation(line: 144, column: 20, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2323, file: !2, line: 144, column: 3)
!2327 = !DILocation(line: 144, column: 3, scope: !2323)
!2328 = !DILocation(line: 144, column: 46, scope: !2326)
!2329 = distinct !{!2329, !2327, !2330, !1099}
!2330 = !DILocation(line: 145, column: 5, scope: !2323)
!2331 = !DILocation(line: 147, column: 10, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2314, file: !2, line: 147, column: 7)
!2333 = !DILocation(line: 147, column: 7, scope: !2314)
!2334 = !DILocation(line: 158, column: 18, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2314, file: !2, line: 158, column: 7)
!2336 = !DILocalVariable(name: "c", arg: 1, scope: !2337, file: !2338, line: 233, type: !260)
!2337 = distinct !DISubprogram(name: "c_isdigit", scope: !2338, file: !2338, line: 233, type: !1254, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !221, retainedNodes: !2339)
!2338 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!2339 = !{!2336}
!2340 = !DILocation(line: 0, scope: !2337, inlinedAt: !2341)
!2341 = distinct !DILocation(line: 158, column: 7, scope: !2335)
!2342 = !DILocation(line: 235, column: 3, scope: !2337, inlinedAt: !2341)
!2343 = !DILocation(line: 158, column: 7, scope: !2314)
!2344 = !DILocation(line: 0, scope: !2335)
!2345 = !DILocation(line: 160, column: 25, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2335, file: !2, line: 159, column: 5)
!2347 = !DILocation(line: 0, scope: !2337, inlinedAt: !2348)
!2348 = distinct !DILocation(line: 160, column: 14, scope: !2346)
!2349 = !DILocation(line: 235, column: 3, scope: !2337, inlinedAt: !2348)
!2350 = !DILocation(line: 160, column: 7, scope: !2346)
!2351 = distinct !{!2351, !2350, !2352, !1099}
!2352 = !DILocation(line: 161, column: 10, scope: !2346)
!2353 = !DILocation(line: 162, column: 14, scope: !2346)
!2354 = !DILocation(line: 162, column: 7, scope: !2346)
!2355 = !DILocation(line: 163, column: 10, scope: !2346)
!2356 = distinct !{!2356, !2354, !2355, !1099}
!2357 = !DILocation(line: 164, column: 12, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2346, file: !2, line: 164, column: 11)
!2359 = !DILocation(line: 164, column: 11, scope: !2346)
!2360 = !DILocation(line: 165, column: 9, scope: !2358)
!2361 = !DILocation(line: 168, column: 22, scope: !2314)
!2362 = !DILocation(line: 168, column: 47, scope: !2314)
!2363 = !DILocation(line: 168, column: 3, scope: !2314)
!2364 = !DISubprogram(name: "stat", scope: !2365, file: !2365, line: 205, type: !2366, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2365 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "", checksumkind: CSK_MD5, checksum: "1e5cd132abb12ea0c79aeae3bfa4573e")
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!260, !1045, !2368}
!2368 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2369)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!2370 = !DISubprogram(name: "strcoll", scope: !1175, file: !1175, line: 163, type: !1184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2371 = !DISubprogram(name: "euidaccess", scope: !2372, file: !2372, line: 292, type: !2373, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2372 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!260, !265, !260}
!2375 = !DISubprogram(name: "__errno_location", scope: !2376, file: !2376, line: 37, type: !2377, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2376 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!2377 = !DISubroutineType(types: !2378)
!2378 = !{!2379}
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!2380 = !DISubprogram(name: "geteuid", scope: !2372, file: !2372, line: 700, type: !2381, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!1423}
!2383 = !DISubprogram(name: "getegid", scope: !2372, file: !2372, line: 706, type: !2384, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2384 = !DISubroutineType(types: !2385)
!2385 = !{!1425}
!2386 = !DISubprogram(name: "strtol", scope: !1179, file: !1179, line: 177, type: !2387, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!273, !1045, !2389, !260}
!2389 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !561)
!2390 = !DISubprogram(name: "isatty", scope: !2372, file: !2372, line: 809, type: !2391, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!260, !260}
!2393 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !565, file: !565, line: 50, type: !1005, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2394)
!2394 = !{!2395}
!2395 = !DILocalVariable(name: "file", arg: 1, scope: !2393, file: !565, line: 50, type: !265)
!2396 = !DILocation(line: 0, scope: !2393)
!2397 = !DILocation(line: 52, column: 13, scope: !2393)
!2398 = !DILocation(line: 53, column: 1, scope: !2393)
!2399 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !565, file: !565, line: 87, type: !1314, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2400)
!2400 = !{!2401}
!2401 = !DILocalVariable(name: "ignore", arg: 1, scope: !2399, file: !565, line: 87, type: !297)
!2402 = !DILocation(line: 0, scope: !2399)
!2403 = !DILocation(line: 89, column: 16, scope: !2399)
!2404 = !{!2405, !2405, i64 0}
!2405 = !{!"_Bool", !953, i64 0}
!2406 = !DILocation(line: 90, column: 1, scope: !2399)
!2407 = distinct !DISubprogram(name: "close_stdout", scope: !565, file: !565, line: 116, type: !624, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !564, retainedNodes: !2408)
!2408 = !{!2409}
!2409 = !DILocalVariable(name: "write_error", scope: !2410, file: !565, line: 121, type: !265)
!2410 = distinct !DILexicalBlock(scope: !2411, file: !565, line: 120, column: 5)
!2411 = distinct !DILexicalBlock(scope: !2407, file: !565, line: 118, column: 7)
!2412 = !DILocation(line: 118, column: 21, scope: !2411)
!2413 = !DILocation(line: 118, column: 7, scope: !2411)
!2414 = !DILocation(line: 118, column: 29, scope: !2411)
!2415 = !DILocation(line: 119, column: 7, scope: !2411)
!2416 = !DILocation(line: 119, column: 12, scope: !2411)
!2417 = !{i8 0, i8 2}
!2418 = !DILocation(line: 119, column: 25, scope: !2411)
!2419 = !DILocation(line: 119, column: 28, scope: !2411)
!2420 = !DILocation(line: 119, column: 34, scope: !2411)
!2421 = !DILocation(line: 118, column: 7, scope: !2407)
!2422 = !DILocation(line: 121, column: 33, scope: !2410)
!2423 = !DILocation(line: 0, scope: !2410)
!2424 = !DILocation(line: 122, column: 11, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2410, file: !565, line: 122, column: 11)
!2426 = !DILocation(line: 0, scope: !2425)
!2427 = !DILocation(line: 122, column: 11, scope: !2410)
!2428 = !DILocation(line: 123, column: 9, scope: !2425)
!2429 = !DILocation(line: 126, column: 9, scope: !2425)
!2430 = !DILocation(line: 128, column: 14, scope: !2410)
!2431 = !DILocation(line: 128, column: 7, scope: !2410)
!2432 = !DILocation(line: 133, column: 42, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2407, file: !565, line: 133, column: 7)
!2434 = !DILocation(line: 133, column: 28, scope: !2433)
!2435 = !DILocation(line: 133, column: 50, scope: !2433)
!2436 = !DILocation(line: 133, column: 7, scope: !2407)
!2437 = !DILocation(line: 134, column: 12, scope: !2433)
!2438 = !DILocation(line: 134, column: 5, scope: !2433)
!2439 = !DILocation(line: 135, column: 1, scope: !2407)
!2440 = !DISubprogram(name: "_exit", scope: !2372, file: !2372, line: 624, type: !941, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2441 = distinct !DISubprogram(name: "verror", scope: !580, file: !580, line: 251, type: !2442, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2444)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{null, !260, !260, !265, !590}
!2444 = !{!2445, !2446, !2447, !2448}
!2445 = !DILocalVariable(name: "status", arg: 1, scope: !2441, file: !580, line: 251, type: !260)
!2446 = !DILocalVariable(name: "errnum", arg: 2, scope: !2441, file: !580, line: 251, type: !260)
!2447 = !DILocalVariable(name: "message", arg: 3, scope: !2441, file: !580, line: 251, type: !265)
!2448 = !DILocalVariable(name: "args", arg: 4, scope: !2441, file: !580, line: 251, type: !590)
!2449 = !DILocation(line: 0, scope: !2441)
!2450 = !DILocation(line: 261, column: 3, scope: !2441)
!2451 = !DILocation(line: 265, column: 7, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2441, file: !580, line: 265, column: 7)
!2453 = !DILocation(line: 265, column: 7, scope: !2441)
!2454 = !DILocation(line: 266, column: 5, scope: !2452)
!2455 = !DILocation(line: 272, column: 7, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2452, file: !580, line: 268, column: 5)
!2457 = !DILocation(line: 276, column: 3, scope: !2441)
!2458 = !DILocation(line: 282, column: 1, scope: !2441)
!2459 = distinct !DISubprogram(name: "flush_stdout", scope: !580, file: !580, line: 163, type: !624, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2460)
!2460 = !{!2461}
!2461 = !DILocalVariable(name: "stdout_fd", scope: !2459, file: !580, line: 166, type: !260)
!2462 = !DILocation(line: 0, scope: !2459)
!2463 = !DILocalVariable(name: "fd", arg: 1, scope: !2464, file: !580, line: 145, type: !260)
!2464 = distinct !DISubprogram(name: "is_open", scope: !580, file: !580, line: 145, type: !2391, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2465)
!2465 = !{!2463}
!2466 = !DILocation(line: 0, scope: !2464, inlinedAt: !2467)
!2467 = distinct !DILocation(line: 182, column: 25, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2459, file: !580, line: 182, column: 7)
!2469 = !DILocation(line: 157, column: 15, scope: !2464, inlinedAt: !2467)
!2470 = !DILocation(line: 157, column: 12, scope: !2464, inlinedAt: !2467)
!2471 = !DILocation(line: 182, column: 7, scope: !2459)
!2472 = !DILocation(line: 184, column: 5, scope: !2468)
!2473 = !DILocation(line: 185, column: 1, scope: !2459)
!2474 = distinct !DISubprogram(name: "error_tail", scope: !580, file: !580, line: 219, type: !2442, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2475)
!2475 = !{!2476, !2477, !2478, !2479}
!2476 = !DILocalVariable(name: "status", arg: 1, scope: !2474, file: !580, line: 219, type: !260)
!2477 = !DILocalVariable(name: "errnum", arg: 2, scope: !2474, file: !580, line: 219, type: !260)
!2478 = !DILocalVariable(name: "message", arg: 3, scope: !2474, file: !580, line: 219, type: !265)
!2479 = !DILocalVariable(name: "args", arg: 4, scope: !2474, file: !580, line: 219, type: !590)
!2480 = distinct !DIAssignID()
!2481 = !DILocation(line: 0, scope: !2474)
!2482 = !DILocation(line: 229, column: 13, scope: !2474)
!2483 = !DILocalVariable(name: "__stream", arg: 1, scope: !2484, file: !1041, line: 132, type: !2487)
!2484 = distinct !DISubprogram(name: "vfprintf", scope: !1041, file: !1041, line: 132, type: !2485, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2522)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!260, !2487, !1045, !590}
!2487 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2488)
!2488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2489, size: 64)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !312, line: 7, baseType: !2490)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !314, line: 49, size: 1728, elements: !2491)
!2491 = !{!2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2490, file: !314, line: 51, baseType: !260, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2490, file: !314, line: 54, baseType: !318, size: 64, offset: 64)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2490, file: !314, line: 55, baseType: !318, size: 64, offset: 128)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2490, file: !314, line: 56, baseType: !318, size: 64, offset: 192)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2490, file: !314, line: 57, baseType: !318, size: 64, offset: 256)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2490, file: !314, line: 58, baseType: !318, size: 64, offset: 320)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2490, file: !314, line: 59, baseType: !318, size: 64, offset: 384)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2490, file: !314, line: 60, baseType: !318, size: 64, offset: 448)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2490, file: !314, line: 61, baseType: !318, size: 64, offset: 512)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2490, file: !314, line: 64, baseType: !318, size: 64, offset: 576)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2490, file: !314, line: 65, baseType: !318, size: 64, offset: 640)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2490, file: !314, line: 66, baseType: !318, size: 64, offset: 704)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2490, file: !314, line: 68, baseType: !330, size: 64, offset: 768)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2490, file: !314, line: 70, baseType: !2506, size: 64, offset: 832)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2490, file: !314, line: 72, baseType: !260, size: 32, offset: 896)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2490, file: !314, line: 73, baseType: !260, size: 32, offset: 928)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2490, file: !314, line: 74, baseType: !337, size: 64, offset: 960)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2490, file: !314, line: 77, baseType: !261, size: 16, offset: 1024)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2490, file: !314, line: 78, baseType: !340, size: 8, offset: 1040)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2490, file: !314, line: 79, baseType: !206, size: 8, offset: 1048)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2490, file: !314, line: 81, baseType: !343, size: 64, offset: 1088)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2490, file: !314, line: 89, baseType: !346, size: 64, offset: 1152)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2490, file: !314, line: 91, baseType: !348, size: 64, offset: 1216)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2490, file: !314, line: 92, baseType: !351, size: 64, offset: 1280)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2490, file: !314, line: 93, baseType: !2506, size: 64, offset: 1344)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2490, file: !314, line: 94, baseType: !268, size: 64, offset: 1408)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2490, file: !314, line: 95, baseType: !262, size: 64, offset: 1472)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2490, file: !314, line: 96, baseType: !260, size: 32, offset: 1536)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2490, file: !314, line: 98, baseType: !358, size: 160, offset: 1568)
!2522 = !{!2483, !2523, !2524}
!2523 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2484, file: !1041, line: 133, type: !1045)
!2524 = !DILocalVariable(name: "__ap", arg: 3, scope: !2484, file: !1041, line: 133, type: !590)
!2525 = !DILocation(line: 0, scope: !2484, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 229, column: 3, scope: !2474)
!2527 = !DILocation(line: 135, column: 10, scope: !2484, inlinedAt: !2526)
!2528 = !DILocation(line: 232, column: 3, scope: !2474)
!2529 = !DILocation(line: 233, column: 7, scope: !2530)
!2530 = distinct !DILexicalBlock(scope: !2474, file: !580, line: 233, column: 7)
!2531 = !DILocation(line: 233, column: 7, scope: !2474)
!2532 = !DILocalVariable(name: "errbuf", scope: !2533, file: !580, line: 193, type: !2537)
!2533 = distinct !DISubprogram(name: "print_errno_message", scope: !580, file: !580, line: 188, type: !941, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2534)
!2534 = !{!2535, !2536, !2532}
!2535 = !DILocalVariable(name: "errnum", arg: 1, scope: !2533, file: !580, line: 188, type: !260)
!2536 = !DILocalVariable(name: "s", scope: !2533, file: !580, line: 190, type: !265)
!2537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2538)
!2538 = !{!2539}
!2539 = !DISubrange(count: 1024)
!2540 = !DILocation(line: 0, scope: !2533, inlinedAt: !2541)
!2541 = distinct !DILocation(line: 234, column: 5, scope: !2530)
!2542 = !DILocation(line: 193, column: 3, scope: !2533, inlinedAt: !2541)
!2543 = !DILocation(line: 195, column: 7, scope: !2533, inlinedAt: !2541)
!2544 = !DILocation(line: 207, column: 9, scope: !2545, inlinedAt: !2541)
!2545 = distinct !DILexicalBlock(scope: !2533, file: !580, line: 207, column: 7)
!2546 = !DILocation(line: 207, column: 7, scope: !2533, inlinedAt: !2541)
!2547 = !DILocation(line: 208, column: 9, scope: !2545, inlinedAt: !2541)
!2548 = !DILocation(line: 208, column: 5, scope: !2545, inlinedAt: !2541)
!2549 = !DILocation(line: 214, column: 3, scope: !2533, inlinedAt: !2541)
!2550 = !DILocation(line: 216, column: 1, scope: !2533, inlinedAt: !2541)
!2551 = !DILocation(line: 234, column: 5, scope: !2530)
!2552 = !DILocation(line: 238, column: 3, scope: !2474)
!2553 = !DILocalVariable(name: "__c", arg: 1, scope: !2554, file: !2555, line: 101, type: !260)
!2554 = distinct !DISubprogram(name: "putc_unlocked", scope: !2555, file: !2555, line: 101, type: !2556, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2558)
!2555 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!260, !260, !2488}
!2558 = !{!2553, !2559}
!2559 = !DILocalVariable(name: "__stream", arg: 2, scope: !2554, file: !2555, line: 101, type: !2488)
!2560 = !DILocation(line: 0, scope: !2554, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 238, column: 3, scope: !2474)
!2562 = !DILocation(line: 103, column: 10, scope: !2554, inlinedAt: !2561)
!2563 = !{!2564, !952, i64 40}
!2564 = !{!"_IO_FILE", !1053, i64 0, !952, i64 8, !952, i64 16, !952, i64 24, !952, i64 32, !952, i64 40, !952, i64 48, !952, i64 56, !952, i64 64, !952, i64 72, !952, i64 80, !952, i64 88, !952, i64 96, !952, i64 104, !1053, i64 112, !1053, i64 116, !1542, i64 120, !1094, i64 128, !953, i64 130, !953, i64 131, !952, i64 136, !1542, i64 144, !952, i64 152, !952, i64 160, !952, i64 168, !952, i64 176, !1542, i64 184, !1053, i64 192, !953, i64 196}
!2565 = !{!2564, !952, i64 48}
!2566 = !{!"branch_weights", i32 2000, i32 1}
!2567 = !DILocation(line: 240, column: 3, scope: !2474)
!2568 = !DILocation(line: 241, column: 7, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2474, file: !580, line: 241, column: 7)
!2570 = !DILocation(line: 241, column: 7, scope: !2474)
!2571 = !DILocation(line: 242, column: 5, scope: !2569)
!2572 = !DILocation(line: 243, column: 1, scope: !2474)
!2573 = !DISubprogram(name: "__vfprintf_chk", scope: !1041, file: !1041, line: 96, type: !2574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!260, !2487, !260, !1045, !590}
!2576 = !DISubprogram(name: "strerror_r", scope: !1175, file: !1175, line: 444, type: !2577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!318, !260, !318, !262}
!2579 = !DISubprogram(name: "__overflow", scope: !1047, file: !1047, line: 886, type: !2580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!260, !2488, !260}
!2582 = !DISubprogram(name: "fflush_unlocked", scope: !1047, file: !1047, line: 239, type: !2583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2583 = !DISubroutineType(types: !2584)
!2584 = !{!260, !2488}
!2585 = !DISubprogram(name: "fcntl", scope: !2586, file: !2586, line: 149, type: !2587, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2586 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!260, !260, !260, null}
!2589 = distinct !DISubprogram(name: "error", scope: !580, file: !580, line: 285, type: !2590, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2592)
!2590 = !DISubroutineType(types: !2591)
!2591 = !{null, !260, !260, !265, null}
!2592 = !{!2593, !2594, !2595, !2596}
!2593 = !DILocalVariable(name: "status", arg: 1, scope: !2589, file: !580, line: 285, type: !260)
!2594 = !DILocalVariable(name: "errnum", arg: 2, scope: !2589, file: !580, line: 285, type: !260)
!2595 = !DILocalVariable(name: "message", arg: 3, scope: !2589, file: !580, line: 285, type: !265)
!2596 = !DILocalVariable(name: "ap", scope: !2589, file: !580, line: 287, type: !2597)
!2597 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1047, line: 52, baseType: !2598)
!2598 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2599, line: 12, baseType: !2600)
!2599 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!2600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !580, baseType: !2601)
!2601 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 192, elements: !207)
!2602 = distinct !DIAssignID()
!2603 = !DILocation(line: 0, scope: !2589)
!2604 = !DILocation(line: 287, column: 3, scope: !2589)
!2605 = !DILocation(line: 288, column: 3, scope: !2589)
!2606 = !DILocation(line: 289, column: 3, scope: !2589)
!2607 = !DILocation(line: 290, column: 3, scope: !2589)
!2608 = !DILocation(line: 291, column: 1, scope: !2589)
!2609 = !DILocation(line: 0, scope: !587)
!2610 = !DILocation(line: 302, column: 7, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !587, file: !580, line: 302, column: 7)
!2612 = !DILocation(line: 302, column: 7, scope: !587)
!2613 = !DILocation(line: 307, column: 11, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !580, line: 307, column: 11)
!2615 = distinct !DILexicalBlock(scope: !2611, file: !580, line: 303, column: 5)
!2616 = !DILocation(line: 307, column: 27, scope: !2614)
!2617 = !DILocation(line: 308, column: 11, scope: !2614)
!2618 = !DILocation(line: 308, column: 28, scope: !2614)
!2619 = !DILocation(line: 308, column: 25, scope: !2614)
!2620 = !DILocation(line: 309, column: 15, scope: !2614)
!2621 = !DILocation(line: 309, column: 33, scope: !2614)
!2622 = !DILocation(line: 310, column: 19, scope: !2614)
!2623 = !DILocation(line: 311, column: 22, scope: !2614)
!2624 = !DILocation(line: 311, column: 56, scope: !2614)
!2625 = !DILocation(line: 307, column: 11, scope: !2615)
!2626 = !DILocation(line: 316, column: 21, scope: !2615)
!2627 = !DILocation(line: 317, column: 23, scope: !2615)
!2628 = !DILocation(line: 318, column: 5, scope: !2615)
!2629 = !DILocation(line: 327, column: 3, scope: !587)
!2630 = !DILocation(line: 331, column: 7, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !587, file: !580, line: 331, column: 7)
!2632 = !DILocation(line: 331, column: 7, scope: !587)
!2633 = !DILocation(line: 332, column: 5, scope: !2631)
!2634 = !DILocation(line: 338, column: 7, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2631, file: !580, line: 334, column: 5)
!2636 = !DILocation(line: 346, column: 3, scope: !587)
!2637 = !DILocation(line: 350, column: 3, scope: !587)
!2638 = !DILocation(line: 356, column: 1, scope: !587)
!2639 = distinct !DISubprogram(name: "error_at_line", scope: !580, file: !580, line: 359, type: !2640, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !579, retainedNodes: !2642)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{null, !260, !260, !265, !224, !265, null}
!2642 = !{!2643, !2644, !2645, !2646, !2647, !2648}
!2643 = !DILocalVariable(name: "status", arg: 1, scope: !2639, file: !580, line: 359, type: !260)
!2644 = !DILocalVariable(name: "errnum", arg: 2, scope: !2639, file: !580, line: 359, type: !260)
!2645 = !DILocalVariable(name: "file_name", arg: 3, scope: !2639, file: !580, line: 359, type: !265)
!2646 = !DILocalVariable(name: "line_number", arg: 4, scope: !2639, file: !580, line: 360, type: !224)
!2647 = !DILocalVariable(name: "message", arg: 5, scope: !2639, file: !580, line: 360, type: !265)
!2648 = !DILocalVariable(name: "ap", scope: !2639, file: !580, line: 362, type: !2597)
!2649 = distinct !DIAssignID()
!2650 = !DILocation(line: 0, scope: !2639)
!2651 = !DILocation(line: 362, column: 3, scope: !2639)
!2652 = !DILocation(line: 363, column: 3, scope: !2639)
!2653 = !DILocation(line: 364, column: 3, scope: !2639)
!2654 = !DILocation(line: 366, column: 3, scope: !2639)
!2655 = !DILocation(line: 367, column: 1, scope: !2639)
!2656 = distinct !DISubprogram(name: "getprogname", scope: !861, file: !861, line: 54, type: !2657, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !860)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!265}
!2659 = !DILocation(line: 58, column: 10, scope: !2656)
!2660 = !DILocation(line: 58, column: 3, scope: !2656)
!2661 = distinct !DISubprogram(name: "umaxtostr", scope: !2662, file: !2662, line: 29, type: !2663, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !862, retainedNodes: !2665)
!2662 = !DIFile(filename: "lib/anytostr.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e5b8bc0749223f86edfe264a04f25de0")
!2663 = !DISubroutineType(types: !2664)
!2664 = !{!318, !865, !318}
!2665 = !{!2666, !2667, !2668}
!2666 = !DILocalVariable(name: "i", arg: 1, scope: !2661, file: !2662, line: 29, type: !865)
!2667 = !DILocalVariable(name: "buf", arg: 2, scope: !2661, file: !2662, line: 29, type: !318)
!2668 = !DILocalVariable(name: "p", scope: !2661, file: !2662, line: 31, type: !318)
!2669 = !DILocation(line: 0, scope: !2661)
!2670 = !DILocation(line: 31, column: 17, scope: !2661)
!2671 = !DILocation(line: 32, column: 6, scope: !2661)
!2672 = !DILocation(line: 45, column: 24, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !2662, line: 43, column: 5)
!2674 = distinct !DILexicalBlock(scope: !2661, file: !2662, line: 34, column: 7)
!2675 = !DILocation(line: 45, column: 16, scope: !2673)
!2676 = !DILocation(line: 45, column: 10, scope: !2673)
!2677 = !DILocation(line: 45, column: 14, scope: !2673)
!2678 = !DILocation(line: 46, column: 17, scope: !2673)
!2679 = !DILocation(line: 46, column: 24, scope: !2673)
!2680 = !DILocation(line: 45, column: 9, scope: !2673)
!2681 = distinct !{!2681, !2682, !2683, !1099}
!2682 = !DILocation(line: 44, column: 7, scope: !2673)
!2683 = !DILocation(line: 46, column: 28, scope: !2673)
!2684 = !DILocation(line: 49, column: 3, scope: !2661)
!2685 = distinct !DISubprogram(name: "set_program_name", scope: !629, file: !629, line: 37, type: !1005, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !2686)
!2686 = !{!2687, !2688, !2689}
!2687 = !DILocalVariable(name: "argv0", arg: 1, scope: !2685, file: !629, line: 37, type: !265)
!2688 = !DILocalVariable(name: "slash", scope: !2685, file: !629, line: 44, type: !265)
!2689 = !DILocalVariable(name: "base", scope: !2685, file: !629, line: 45, type: !265)
!2690 = !DILocation(line: 0, scope: !2685)
!2691 = !DILocation(line: 44, column: 23, scope: !2685)
!2692 = !DILocation(line: 45, column: 22, scope: !2685)
!2693 = !DILocation(line: 46, column: 17, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2685, file: !629, line: 46, column: 7)
!2695 = !DILocation(line: 46, column: 9, scope: !2694)
!2696 = !DILocation(line: 46, column: 25, scope: !2694)
!2697 = !DILocation(line: 46, column: 40, scope: !2694)
!2698 = !DILocalVariable(name: "__s1", arg: 1, scope: !2699, file: !1065, line: 974, type: !1203)
!2699 = distinct !DISubprogram(name: "memeq", scope: !1065, file: !1065, line: 974, type: !2700, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !628, retainedNodes: !2702)
!2700 = !DISubroutineType(types: !2701)
!2701 = !{!297, !1203, !1203, !262}
!2702 = !{!2698, !2703, !2704}
!2703 = !DILocalVariable(name: "__s2", arg: 2, scope: !2699, file: !1065, line: 974, type: !1203)
!2704 = !DILocalVariable(name: "__n", arg: 3, scope: !2699, file: !1065, line: 974, type: !262)
!2705 = !DILocation(line: 0, scope: !2699, inlinedAt: !2706)
!2706 = distinct !DILocation(line: 46, column: 28, scope: !2694)
!2707 = !DILocation(line: 976, column: 11, scope: !2699, inlinedAt: !2706)
!2708 = !DILocation(line: 976, column: 10, scope: !2699, inlinedAt: !2706)
!2709 = !DILocation(line: 46, column: 7, scope: !2685)
!2710 = !DILocation(line: 49, column: 11, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2712, file: !629, line: 49, column: 11)
!2712 = distinct !DILexicalBlock(scope: !2694, file: !629, line: 47, column: 5)
!2713 = !DILocation(line: 49, column: 36, scope: !2711)
!2714 = !DILocation(line: 49, column: 11, scope: !2712)
!2715 = !DILocation(line: 65, column: 16, scope: !2685)
!2716 = !DILocation(line: 71, column: 27, scope: !2685)
!2717 = !DILocation(line: 74, column: 33, scope: !2685)
!2718 = !DILocation(line: 76, column: 1, scope: !2685)
!2719 = !DISubprogram(name: "strrchr", scope: !1175, file: !1175, line: 273, type: !1190, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2720 = distinct !DISubprogram(name: "clone_quoting_options", scope: !638, file: !638, line: 113, type: !2721, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !2724)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{!2723, !2723}
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!2724 = !{!2725, !2726, !2727}
!2725 = !DILocalVariable(name: "o", arg: 1, scope: !2720, file: !638, line: 113, type: !2723)
!2726 = !DILocalVariable(name: "saved_errno", scope: !2720, file: !638, line: 115, type: !260)
!2727 = !DILocalVariable(name: "p", scope: !2720, file: !638, line: 116, type: !2723)
!2728 = !DILocation(line: 0, scope: !2720)
!2729 = !DILocation(line: 115, column: 21, scope: !2720)
!2730 = !DILocation(line: 116, column: 40, scope: !2720)
!2731 = !DILocation(line: 116, column: 31, scope: !2720)
!2732 = !DILocation(line: 118, column: 9, scope: !2720)
!2733 = !DILocation(line: 119, column: 3, scope: !2720)
!2734 = distinct !DISubprogram(name: "get_quoting_style", scope: !638, file: !638, line: 124, type: !2735, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !2739)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{!664, !2737}
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !691)
!2739 = !{!2740}
!2740 = !DILocalVariable(name: "o", arg: 1, scope: !2734, file: !638, line: 124, type: !2737)
!2741 = !DILocation(line: 0, scope: !2734)
!2742 = !DILocation(line: 126, column: 11, scope: !2734)
!2743 = !DILocation(line: 126, column: 46, scope: !2734)
!2744 = !{!2745, !1053, i64 0}
!2745 = !{!"quoting_options", !1053, i64 0, !1053, i64 4, !953, i64 8, !952, i64 40, !952, i64 48}
!2746 = !DILocation(line: 126, column: 3, scope: !2734)
!2747 = distinct !DISubprogram(name: "set_quoting_style", scope: !638, file: !638, line: 132, type: !2748, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !2750)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{null, !2723, !664}
!2750 = !{!2751, !2752}
!2751 = !DILocalVariable(name: "o", arg: 1, scope: !2747, file: !638, line: 132, type: !2723)
!2752 = !DILocalVariable(name: "s", arg: 2, scope: !2747, file: !638, line: 132, type: !664)
!2753 = !DILocation(line: 0, scope: !2747)
!2754 = !DILocation(line: 134, column: 4, scope: !2747)
!2755 = !DILocation(line: 134, column: 45, scope: !2747)
!2756 = !DILocation(line: 135, column: 1, scope: !2747)
!2757 = distinct !DISubprogram(name: "set_char_quoting", scope: !638, file: !638, line: 143, type: !2758, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !2760)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!260, !2723, !4, !260}
!2760 = !{!2761, !2762, !2763, !2764, !2765, !2767, !2768}
!2761 = !DILocalVariable(name: "o", arg: 1, scope: !2757, file: !638, line: 143, type: !2723)
!2762 = !DILocalVariable(name: "c", arg: 2, scope: !2757, file: !638, line: 143, type: !4)
!2763 = !DILocalVariable(name: "i", arg: 3, scope: !2757, file: !638, line: 143, type: !260)
!2764 = !DILocalVariable(name: "uc", scope: !2757, file: !638, line: 145, type: !267)
!2765 = !DILocalVariable(name: "p", scope: !2757, file: !638, line: 146, type: !2766)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!2767 = !DILocalVariable(name: "shift", scope: !2757, file: !638, line: 148, type: !260)
!2768 = !DILocalVariable(name: "r", scope: !2757, file: !638, line: 149, type: !224)
!2769 = !DILocation(line: 0, scope: !2757)
!2770 = !DILocation(line: 147, column: 6, scope: !2757)
!2771 = !DILocation(line: 147, column: 41, scope: !2757)
!2772 = !DILocation(line: 147, column: 62, scope: !2757)
!2773 = !DILocation(line: 147, column: 57, scope: !2757)
!2774 = !DILocation(line: 148, column: 15, scope: !2757)
!2775 = !DILocation(line: 149, column: 21, scope: !2757)
!2776 = !DILocation(line: 149, column: 24, scope: !2757)
!2777 = !DILocation(line: 149, column: 34, scope: !2757)
!2778 = !DILocation(line: 150, column: 19, scope: !2757)
!2779 = !DILocation(line: 150, column: 24, scope: !2757)
!2780 = !DILocation(line: 150, column: 6, scope: !2757)
!2781 = !DILocation(line: 151, column: 3, scope: !2757)
!2782 = distinct !DISubprogram(name: "set_quoting_flags", scope: !638, file: !638, line: 159, type: !2783, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!260, !2723, !260}
!2785 = !{!2786, !2787, !2788}
!2786 = !DILocalVariable(name: "o", arg: 1, scope: !2782, file: !638, line: 159, type: !2723)
!2787 = !DILocalVariable(name: "i", arg: 2, scope: !2782, file: !638, line: 159, type: !260)
!2788 = !DILocalVariable(name: "r", scope: !2782, file: !638, line: 163, type: !260)
!2789 = !DILocation(line: 0, scope: !2782)
!2790 = !DILocation(line: 161, column: 8, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2782, file: !638, line: 161, column: 7)
!2792 = !DILocation(line: 161, column: 7, scope: !2782)
!2793 = !DILocation(line: 163, column: 14, scope: !2782)
!2794 = !{!2745, !1053, i64 4}
!2795 = !DILocation(line: 164, column: 12, scope: !2782)
!2796 = !DILocation(line: 165, column: 3, scope: !2782)
!2797 = distinct !DISubprogram(name: "set_custom_quoting", scope: !638, file: !638, line: 169, type: !2798, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !2800)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{null, !2723, !265, !265}
!2800 = !{!2801, !2802, !2803}
!2801 = !DILocalVariable(name: "o", arg: 1, scope: !2797, file: !638, line: 169, type: !2723)
!2802 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2797, file: !638, line: 170, type: !265)
!2803 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2797, file: !638, line: 170, type: !265)
!2804 = !DILocation(line: 0, scope: !2797)
!2805 = !DILocation(line: 172, column: 8, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2797, file: !638, line: 172, column: 7)
!2807 = !DILocation(line: 172, column: 7, scope: !2797)
!2808 = !DILocation(line: 174, column: 12, scope: !2797)
!2809 = !DILocation(line: 175, column: 8, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2797, file: !638, line: 175, column: 7)
!2811 = !DILocation(line: 175, column: 19, scope: !2810)
!2812 = !DILocation(line: 176, column: 5, scope: !2810)
!2813 = !DILocation(line: 177, column: 6, scope: !2797)
!2814 = !DILocation(line: 177, column: 17, scope: !2797)
!2815 = !{!2745, !952, i64 40}
!2816 = !DILocation(line: 178, column: 6, scope: !2797)
!2817 = !DILocation(line: 178, column: 18, scope: !2797)
!2818 = !{!2745, !952, i64 48}
!2819 = !DILocation(line: 179, column: 1, scope: !2797)
!2820 = !DISubprogram(name: "abort", scope: !1179, file: !1179, line: 598, type: !624, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2821 = distinct !DISubprogram(name: "quotearg_buffer", scope: !638, file: !638, line: 774, type: !2822, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !2824)
!2822 = !DISubroutineType(types: !2823)
!2823 = !{!262, !318, !262, !265, !262, !2737}
!2824 = !{!2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832}
!2825 = !DILocalVariable(name: "buffer", arg: 1, scope: !2821, file: !638, line: 774, type: !318)
!2826 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2821, file: !638, line: 774, type: !262)
!2827 = !DILocalVariable(name: "arg", arg: 3, scope: !2821, file: !638, line: 775, type: !265)
!2828 = !DILocalVariable(name: "argsize", arg: 4, scope: !2821, file: !638, line: 775, type: !262)
!2829 = !DILocalVariable(name: "o", arg: 5, scope: !2821, file: !638, line: 776, type: !2737)
!2830 = !DILocalVariable(name: "p", scope: !2821, file: !638, line: 778, type: !2737)
!2831 = !DILocalVariable(name: "saved_errno", scope: !2821, file: !638, line: 779, type: !260)
!2832 = !DILocalVariable(name: "r", scope: !2821, file: !638, line: 780, type: !262)
!2833 = !DILocation(line: 0, scope: !2821)
!2834 = !DILocation(line: 778, column: 37, scope: !2821)
!2835 = !DILocation(line: 779, column: 21, scope: !2821)
!2836 = !DILocation(line: 781, column: 43, scope: !2821)
!2837 = !DILocation(line: 781, column: 53, scope: !2821)
!2838 = !DILocation(line: 781, column: 63, scope: !2821)
!2839 = !DILocation(line: 782, column: 43, scope: !2821)
!2840 = !DILocation(line: 782, column: 58, scope: !2821)
!2841 = !DILocation(line: 780, column: 14, scope: !2821)
!2842 = !DILocation(line: 783, column: 9, scope: !2821)
!2843 = !DILocation(line: 784, column: 3, scope: !2821)
!2844 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !638, file: !638, line: 251, type: !2845, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !2849)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!262, !318, !262, !265, !262, !664, !260, !2847, !265, !265}
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!2849 = !{!2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2875, !2877, !2880, !2881, !2882, !2883, !2886, !2887, !2889, !2890, !2893, !2897, !2898, !2906, !2909, !2910, !2911}
!2850 = !DILocalVariable(name: "buffer", arg: 1, scope: !2844, file: !638, line: 251, type: !318)
!2851 = !DILocalVariable(name: "buffersize", arg: 2, scope: !2844, file: !638, line: 251, type: !262)
!2852 = !DILocalVariable(name: "arg", arg: 3, scope: !2844, file: !638, line: 252, type: !265)
!2853 = !DILocalVariable(name: "argsize", arg: 4, scope: !2844, file: !638, line: 252, type: !262)
!2854 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !2844, file: !638, line: 253, type: !664)
!2855 = !DILocalVariable(name: "flags", arg: 6, scope: !2844, file: !638, line: 253, type: !260)
!2856 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !2844, file: !638, line: 254, type: !2847)
!2857 = !DILocalVariable(name: "left_quote", arg: 8, scope: !2844, file: !638, line: 255, type: !265)
!2858 = !DILocalVariable(name: "right_quote", arg: 9, scope: !2844, file: !638, line: 256, type: !265)
!2859 = !DILocalVariable(name: "unibyte_locale", scope: !2844, file: !638, line: 258, type: !297)
!2860 = !DILocalVariable(name: "len", scope: !2844, file: !638, line: 260, type: !262)
!2861 = !DILocalVariable(name: "orig_buffersize", scope: !2844, file: !638, line: 261, type: !262)
!2862 = !DILocalVariable(name: "quote_string", scope: !2844, file: !638, line: 262, type: !265)
!2863 = !DILocalVariable(name: "quote_string_len", scope: !2844, file: !638, line: 263, type: !262)
!2864 = !DILocalVariable(name: "backslash_escapes", scope: !2844, file: !638, line: 264, type: !297)
!2865 = !DILocalVariable(name: "elide_outer_quotes", scope: !2844, file: !638, line: 265, type: !297)
!2866 = !DILocalVariable(name: "encountered_single_quote", scope: !2844, file: !638, line: 266, type: !297)
!2867 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !2844, file: !638, line: 267, type: !297)
!2868 = !DILabel(scope: !2844, name: "process_input", file: !638, line: 308)
!2869 = !DILocalVariable(name: "pending_shell_escape_end", scope: !2844, file: !638, line: 309, type: !297)
!2870 = !DILocalVariable(name: "lq", scope: !2871, file: !638, line: 361, type: !265)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !638, line: 361, column: 11)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !638, line: 360, column: 13)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !638, line: 333, column: 7)
!2874 = distinct !DILexicalBlock(scope: !2844, file: !638, line: 312, column: 5)
!2875 = !DILocalVariable(name: "i", scope: !2876, file: !638, line: 395, type: !262)
!2876 = distinct !DILexicalBlock(scope: !2844, file: !638, line: 395, column: 3)
!2877 = !DILocalVariable(name: "is_right_quote", scope: !2878, file: !638, line: 397, type: !297)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !638, line: 396, column: 5)
!2879 = distinct !DILexicalBlock(scope: !2876, file: !638, line: 395, column: 3)
!2880 = !DILocalVariable(name: "escaping", scope: !2878, file: !638, line: 398, type: !297)
!2881 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !2878, file: !638, line: 399, type: !297)
!2882 = !DILocalVariable(name: "c", scope: !2878, file: !638, line: 417, type: !267)
!2883 = !DILabel(scope: !2884, name: "c_and_shell_escape", file: !638, line: 502)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !638, line: 478, column: 9)
!2885 = distinct !DILexicalBlock(scope: !2878, file: !638, line: 419, column: 9)
!2886 = !DILabel(scope: !2884, name: "c_escape", file: !638, line: 507)
!2887 = !DILocalVariable(name: "m", scope: !2888, file: !638, line: 598, type: !262)
!2888 = distinct !DILexicalBlock(scope: !2885, file: !638, line: 596, column: 11)
!2889 = !DILocalVariable(name: "printable", scope: !2888, file: !638, line: 600, type: !297)
!2890 = !DILocalVariable(name: "mbs", scope: !2891, file: !638, line: 609, type: !729)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !638, line: 608, column: 15)
!2892 = distinct !DILexicalBlock(scope: !2888, file: !638, line: 602, column: 17)
!2893 = !DILocalVariable(name: "w", scope: !2894, file: !638, line: 618, type: !724)
!2894 = distinct !DILexicalBlock(scope: !2895, file: !638, line: 617, column: 19)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !638, line: 616, column: 17)
!2896 = distinct !DILexicalBlock(scope: !2891, file: !638, line: 616, column: 17)
!2897 = !DILocalVariable(name: "bytes", scope: !2894, file: !638, line: 619, type: !262)
!2898 = !DILocalVariable(name: "j", scope: !2899, file: !638, line: 648, type: !262)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !638, line: 648, column: 29)
!2900 = distinct !DILexicalBlock(scope: !2901, file: !638, line: 647, column: 27)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !638, line: 645, column: 29)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !638, line: 636, column: 23)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !638, line: 628, column: 30)
!2904 = distinct !DILexicalBlock(scope: !2905, file: !638, line: 623, column: 30)
!2905 = distinct !DILexicalBlock(scope: !2894, file: !638, line: 621, column: 25)
!2906 = !DILocalVariable(name: "ilim", scope: !2907, file: !638, line: 674, type: !262)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !638, line: 671, column: 15)
!2908 = distinct !DILexicalBlock(scope: !2888, file: !638, line: 670, column: 17)
!2909 = !DILabel(scope: !2878, name: "store_escape", file: !638, line: 709)
!2910 = !DILabel(scope: !2878, name: "store_c", file: !638, line: 712)
!2911 = !DILabel(scope: !2844, name: "force_outer_quoting_style", file: !638, line: 753)
!2912 = distinct !DIAssignID()
!2913 = distinct !DIAssignID()
!2914 = distinct !DIAssignID()
!2915 = distinct !DIAssignID()
!2916 = distinct !DIAssignID()
!2917 = !DILocation(line: 0, scope: !2891)
!2918 = distinct !DIAssignID()
!2919 = !DILocation(line: 0, scope: !2894)
!2920 = !DILocation(line: 0, scope: !2844)
!2921 = !DILocation(line: 258, column: 25, scope: !2844)
!2922 = !DILocation(line: 258, column: 36, scope: !2844)
!2923 = !DILocation(line: 265, column: 8, scope: !2844)
!2924 = !DILocation(line: 267, column: 3, scope: !2844)
!2925 = !DILocation(line: 261, column: 10, scope: !2844)
!2926 = !DILocation(line: 262, column: 15, scope: !2844)
!2927 = !DILocation(line: 263, column: 10, scope: !2844)
!2928 = !DILocation(line: 264, column: 8, scope: !2844)
!2929 = !DILocation(line: 266, column: 8, scope: !2844)
!2930 = !DILocation(line: 267, column: 8, scope: !2844)
!2931 = !DILocation(line: 308, column: 2, scope: !2844)
!2932 = !DILocation(line: 311, column: 3, scope: !2844)
!2933 = !DILocation(line: 318, column: 11, scope: !2874)
!2934 = !DILocation(line: 318, column: 12, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2874, file: !638, line: 318, column: 11)
!2936 = !DILocation(line: 319, column: 9, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !638, line: 319, column: 9)
!2938 = distinct !DILexicalBlock(scope: !2935, file: !638, line: 319, column: 9)
!2939 = !DILocation(line: 319, column: 9, scope: !2938)
!2940 = !DILocation(line: 0, scope: !716, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 357, column: 26, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !638, line: 335, column: 11)
!2943 = distinct !DILexicalBlock(scope: !2873, file: !638, line: 334, column: 13)
!2944 = !DILocation(line: 199, column: 29, scope: !716, inlinedAt: !2941)
!2945 = !DILocation(line: 201, column: 19, scope: !2946, inlinedAt: !2941)
!2946 = distinct !DILexicalBlock(scope: !716, file: !638, line: 201, column: 7)
!2947 = !DILocation(line: 201, column: 7, scope: !716, inlinedAt: !2941)
!2948 = !DILocation(line: 229, column: 3, scope: !716, inlinedAt: !2941)
!2949 = !DILocation(line: 230, column: 3, scope: !716, inlinedAt: !2941)
!2950 = !DILocalVariable(name: "ps", arg: 1, scope: !2951, file: !2952, line: 1135, type: !2955)
!2951 = distinct !DISubprogram(name: "mbszero", scope: !2952, file: !2952, line: 1135, type: !2953, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !2956)
!2952 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2953 = !DISubroutineType(types: !2954)
!2954 = !{null, !2955}
!2955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!2956 = !{!2950}
!2957 = !DILocation(line: 0, scope: !2951, inlinedAt: !2958)
!2958 = distinct !DILocation(line: 230, column: 18, scope: !716, inlinedAt: !2941)
!2959 = !DILocalVariable(name: "__dest", arg: 1, scope: !2960, file: !2961, line: 57, type: !268)
!2960 = distinct !DISubprogram(name: "memset", scope: !2961, file: !2961, line: 57, type: !2962, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !2964)
!2961 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!268, !268, !260, !262}
!2964 = !{!2959, !2965, !2966}
!2965 = !DILocalVariable(name: "__ch", arg: 2, scope: !2960, file: !2961, line: 57, type: !260)
!2966 = !DILocalVariable(name: "__len", arg: 3, scope: !2960, file: !2961, line: 57, type: !262)
!2967 = !DILocation(line: 0, scope: !2960, inlinedAt: !2968)
!2968 = distinct !DILocation(line: 1137, column: 3, scope: !2951, inlinedAt: !2958)
!2969 = !DILocation(line: 59, column: 10, scope: !2960, inlinedAt: !2968)
!2970 = !DILocation(line: 231, column: 7, scope: !2971, inlinedAt: !2941)
!2971 = distinct !DILexicalBlock(scope: !716, file: !638, line: 231, column: 7)
!2972 = !DILocation(line: 231, column: 40, scope: !2971, inlinedAt: !2941)
!2973 = !DILocation(line: 231, column: 45, scope: !2971, inlinedAt: !2941)
!2974 = !DILocation(line: 235, column: 1, scope: !716, inlinedAt: !2941)
!2975 = !DILocation(line: 0, scope: !716, inlinedAt: !2976)
!2976 = distinct !DILocation(line: 358, column: 27, scope: !2942)
!2977 = !DILocation(line: 199, column: 29, scope: !716, inlinedAt: !2976)
!2978 = !DILocation(line: 201, column: 19, scope: !2946, inlinedAt: !2976)
!2979 = !DILocation(line: 201, column: 7, scope: !716, inlinedAt: !2976)
!2980 = !DILocation(line: 229, column: 3, scope: !716, inlinedAt: !2976)
!2981 = !DILocation(line: 230, column: 3, scope: !716, inlinedAt: !2976)
!2982 = !DILocation(line: 0, scope: !2951, inlinedAt: !2983)
!2983 = distinct !DILocation(line: 230, column: 18, scope: !716, inlinedAt: !2976)
!2984 = !DILocation(line: 0, scope: !2960, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 1137, column: 3, scope: !2951, inlinedAt: !2983)
!2986 = !DILocation(line: 59, column: 10, scope: !2960, inlinedAt: !2985)
!2987 = !DILocation(line: 231, column: 7, scope: !2971, inlinedAt: !2976)
!2988 = !DILocation(line: 231, column: 40, scope: !2971, inlinedAt: !2976)
!2989 = !DILocation(line: 231, column: 45, scope: !2971, inlinedAt: !2976)
!2990 = !DILocation(line: 235, column: 1, scope: !716, inlinedAt: !2976)
!2991 = !DILocation(line: 360, column: 14, scope: !2872)
!2992 = !DILocation(line: 360, column: 13, scope: !2873)
!2993 = !DILocation(line: 0, scope: !2871)
!2994 = !DILocation(line: 361, column: 45, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2871, file: !638, line: 361, column: 11)
!2996 = !DILocation(line: 361, column: 11, scope: !2871)
!2997 = !DILocation(line: 362, column: 13, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !638, line: 362, column: 13)
!2999 = distinct !DILexicalBlock(scope: !2995, file: !638, line: 362, column: 13)
!3000 = !DILocation(line: 362, column: 13, scope: !2999)
!3001 = !DILocation(line: 361, column: 52, scope: !2995)
!3002 = distinct !{!3002, !2996, !3003, !1099}
!3003 = !DILocation(line: 362, column: 13, scope: !2871)
!3004 = !DILocation(line: 260, column: 10, scope: !2844)
!3005 = !DILocation(line: 365, column: 28, scope: !2873)
!3006 = !DILocation(line: 367, column: 7, scope: !2874)
!3007 = !DILocation(line: 370, column: 7, scope: !2874)
!3008 = !DILocation(line: 373, column: 7, scope: !2874)
!3009 = !DILocation(line: 376, column: 12, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2874, file: !638, line: 376, column: 11)
!3011 = !DILocation(line: 376, column: 11, scope: !2874)
!3012 = !DILocation(line: 381, column: 12, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2874, file: !638, line: 381, column: 11)
!3014 = !DILocation(line: 381, column: 11, scope: !2874)
!3015 = !DILocation(line: 382, column: 9, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !638, line: 382, column: 9)
!3017 = distinct !DILexicalBlock(scope: !3013, file: !638, line: 382, column: 9)
!3018 = !DILocation(line: 382, column: 9, scope: !3017)
!3019 = !DILocation(line: 389, column: 7, scope: !2874)
!3020 = !DILocation(line: 392, column: 7, scope: !2874)
!3021 = !DILocation(line: 0, scope: !2876)
!3022 = !DILocation(line: 395, column: 8, scope: !2876)
!3023 = !DILocation(line: 309, column: 8, scope: !2844)
!3024 = !DILocation(line: 395, scope: !2876)
!3025 = !DILocation(line: 395, column: 34, scope: !2879)
!3026 = !DILocation(line: 395, column: 26, scope: !2879)
!3027 = !DILocation(line: 395, column: 48, scope: !2879)
!3028 = !DILocation(line: 395, column: 55, scope: !2879)
!3029 = !DILocation(line: 395, column: 3, scope: !2876)
!3030 = !DILocation(line: 395, column: 67, scope: !2879)
!3031 = !DILocation(line: 0, scope: !2878)
!3032 = !DILocation(line: 402, column: 11, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !2878, file: !638, line: 401, column: 11)
!3034 = !DILocation(line: 404, column: 17, scope: !3033)
!3035 = !DILocation(line: 405, column: 39, scope: !3033)
!3036 = !DILocation(line: 409, column: 32, scope: !3033)
!3037 = !DILocation(line: 405, column: 19, scope: !3033)
!3038 = !DILocation(line: 405, column: 15, scope: !3033)
!3039 = !DILocation(line: 410, column: 11, scope: !3033)
!3040 = !DILocation(line: 410, column: 25, scope: !3033)
!3041 = !DILocalVariable(name: "__s1", arg: 1, scope: !3042, file: !1065, line: 974, type: !1203)
!3042 = distinct !DISubprogram(name: "memeq", scope: !1065, file: !1065, line: 974, type: !2700, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3043)
!3043 = !{!3041, !3044, !3045}
!3044 = !DILocalVariable(name: "__s2", arg: 2, scope: !3042, file: !1065, line: 974, type: !1203)
!3045 = !DILocalVariable(name: "__n", arg: 3, scope: !3042, file: !1065, line: 974, type: !262)
!3046 = !DILocation(line: 0, scope: !3042, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 410, column: 14, scope: !3033)
!3048 = !DILocation(line: 976, column: 11, scope: !3042, inlinedAt: !3047)
!3049 = !DILocation(line: 976, column: 10, scope: !3042, inlinedAt: !3047)
!3050 = !DILocation(line: 401, column: 11, scope: !2878)
!3051 = !DILocation(line: 417, column: 25, scope: !2878)
!3052 = !DILocation(line: 418, column: 7, scope: !2878)
!3053 = !DILocation(line: 421, column: 15, scope: !2885)
!3054 = !DILocation(line: 423, column: 15, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3056, file: !638, line: 423, column: 15)
!3056 = distinct !DILexicalBlock(scope: !3057, file: !638, line: 422, column: 13)
!3057 = distinct !DILexicalBlock(scope: !2885, file: !638, line: 421, column: 15)
!3058 = !DILocation(line: 423, column: 15, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3055, file: !638, line: 423, column: 15)
!3060 = !DILocation(line: 423, column: 15, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !638, line: 423, column: 15)
!3062 = distinct !DILexicalBlock(scope: !3063, file: !638, line: 423, column: 15)
!3063 = distinct !DILexicalBlock(scope: !3059, file: !638, line: 423, column: 15)
!3064 = !DILocation(line: 423, column: 15, scope: !3062)
!3065 = !DILocation(line: 423, column: 15, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3067, file: !638, line: 423, column: 15)
!3067 = distinct !DILexicalBlock(scope: !3063, file: !638, line: 423, column: 15)
!3068 = !DILocation(line: 423, column: 15, scope: !3067)
!3069 = !DILocation(line: 423, column: 15, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3071, file: !638, line: 423, column: 15)
!3071 = distinct !DILexicalBlock(scope: !3063, file: !638, line: 423, column: 15)
!3072 = !DILocation(line: 423, column: 15, scope: !3071)
!3073 = !DILocation(line: 423, column: 15, scope: !3063)
!3074 = !DILocation(line: 423, column: 15, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !3076, file: !638, line: 423, column: 15)
!3076 = distinct !DILexicalBlock(scope: !3055, file: !638, line: 423, column: 15)
!3077 = !DILocation(line: 423, column: 15, scope: !3076)
!3078 = !DILocation(line: 431, column: 19, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3056, file: !638, line: 430, column: 19)
!3080 = !DILocation(line: 431, column: 24, scope: !3079)
!3081 = !DILocation(line: 431, column: 28, scope: !3079)
!3082 = !DILocation(line: 431, column: 38, scope: !3079)
!3083 = !DILocation(line: 431, column: 48, scope: !3079)
!3084 = !DILocation(line: 431, column: 59, scope: !3079)
!3085 = !DILocation(line: 433, column: 19, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3087, file: !638, line: 433, column: 19)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !638, line: 433, column: 19)
!3088 = distinct !DILexicalBlock(scope: !3079, file: !638, line: 432, column: 17)
!3089 = !DILocation(line: 433, column: 19, scope: !3087)
!3090 = !DILocation(line: 434, column: 19, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !638, line: 434, column: 19)
!3092 = distinct !DILexicalBlock(scope: !3088, file: !638, line: 434, column: 19)
!3093 = !DILocation(line: 434, column: 19, scope: !3092)
!3094 = !DILocation(line: 435, column: 17, scope: !3088)
!3095 = !DILocation(line: 442, column: 20, scope: !3057)
!3096 = !DILocation(line: 447, column: 11, scope: !2885)
!3097 = !DILocation(line: 450, column: 19, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !2885, file: !638, line: 448, column: 13)
!3099 = !DILocation(line: 456, column: 19, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3098, file: !638, line: 455, column: 19)
!3101 = !DILocation(line: 456, column: 24, scope: !3100)
!3102 = !DILocation(line: 456, column: 28, scope: !3100)
!3103 = !DILocation(line: 456, column: 38, scope: !3100)
!3104 = !DILocation(line: 456, column: 41, scope: !3100)
!3105 = !DILocation(line: 456, column: 52, scope: !3100)
!3106 = !DILocation(line: 455, column: 19, scope: !3098)
!3107 = !DILocation(line: 457, column: 25, scope: !3100)
!3108 = !DILocation(line: 457, column: 17, scope: !3100)
!3109 = !DILocation(line: 464, column: 25, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3100, file: !638, line: 458, column: 19)
!3111 = !DILocation(line: 468, column: 21, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !638, line: 468, column: 21)
!3113 = distinct !DILexicalBlock(scope: !3110, file: !638, line: 468, column: 21)
!3114 = !DILocation(line: 468, column: 21, scope: !3113)
!3115 = !DILocation(line: 469, column: 21, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !638, line: 469, column: 21)
!3117 = distinct !DILexicalBlock(scope: !3110, file: !638, line: 469, column: 21)
!3118 = !DILocation(line: 469, column: 21, scope: !3117)
!3119 = !DILocation(line: 470, column: 21, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !638, line: 470, column: 21)
!3121 = distinct !DILexicalBlock(scope: !3110, file: !638, line: 470, column: 21)
!3122 = !DILocation(line: 470, column: 21, scope: !3121)
!3123 = !DILocation(line: 471, column: 21, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !638, line: 471, column: 21)
!3125 = distinct !DILexicalBlock(scope: !3110, file: !638, line: 471, column: 21)
!3126 = !DILocation(line: 471, column: 21, scope: !3125)
!3127 = !DILocation(line: 472, column: 21, scope: !3110)
!3128 = !DILocation(line: 482, column: 33, scope: !2884)
!3129 = !DILocation(line: 483, column: 33, scope: !2884)
!3130 = !DILocation(line: 485, column: 33, scope: !2884)
!3131 = !DILocation(line: 486, column: 33, scope: !2884)
!3132 = !DILocation(line: 487, column: 33, scope: !2884)
!3133 = !DILocation(line: 490, column: 17, scope: !2884)
!3134 = !DILocation(line: 492, column: 21, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !638, line: 491, column: 15)
!3136 = distinct !DILexicalBlock(scope: !2884, file: !638, line: 490, column: 17)
!3137 = !DILocation(line: 499, column: 35, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !2884, file: !638, line: 499, column: 17)
!3139 = !DILocation(line: 499, column: 57, scope: !3138)
!3140 = !DILocation(line: 0, scope: !2884)
!3141 = !DILocation(line: 502, column: 11, scope: !2884)
!3142 = !DILocation(line: 504, column: 17, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !2884, file: !638, line: 503, column: 17)
!3144 = !DILocation(line: 507, column: 11, scope: !2884)
!3145 = !DILocation(line: 508, column: 17, scope: !2884)
!3146 = !DILocation(line: 517, column: 15, scope: !2885)
!3147 = !DILocation(line: 517, column: 40, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !2885, file: !638, line: 517, column: 15)
!3149 = !DILocation(line: 517, column: 47, scope: !3148)
!3150 = !DILocation(line: 517, column: 18, scope: !3148)
!3151 = !DILocation(line: 521, column: 17, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !2885, file: !638, line: 521, column: 15)
!3153 = !DILocation(line: 521, column: 15, scope: !2885)
!3154 = !DILocation(line: 525, column: 11, scope: !2885)
!3155 = !DILocation(line: 537, column: 15, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !2885, file: !638, line: 536, column: 15)
!3157 = !DILocation(line: 544, column: 15, scope: !2885)
!3158 = !DILocation(line: 546, column: 19, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !638, line: 545, column: 13)
!3160 = distinct !DILexicalBlock(scope: !2885, file: !638, line: 544, column: 15)
!3161 = !DILocation(line: 549, column: 19, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3159, file: !638, line: 549, column: 19)
!3163 = !DILocation(line: 549, column: 30, scope: !3162)
!3164 = !DILocation(line: 558, column: 15, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !638, line: 558, column: 15)
!3166 = distinct !DILexicalBlock(scope: !3159, file: !638, line: 558, column: 15)
!3167 = !DILocation(line: 558, column: 15, scope: !3166)
!3168 = !DILocation(line: 559, column: 15, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !638, line: 559, column: 15)
!3170 = distinct !DILexicalBlock(scope: !3159, file: !638, line: 559, column: 15)
!3171 = !DILocation(line: 559, column: 15, scope: !3170)
!3172 = !DILocation(line: 560, column: 15, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3174, file: !638, line: 560, column: 15)
!3174 = distinct !DILexicalBlock(scope: !3159, file: !638, line: 560, column: 15)
!3175 = !DILocation(line: 560, column: 15, scope: !3174)
!3176 = !DILocation(line: 562, column: 13, scope: !3159)
!3177 = !DILocation(line: 602, column: 17, scope: !2888)
!3178 = !DILocation(line: 0, scope: !2888)
!3179 = !DILocation(line: 605, column: 29, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !2892, file: !638, line: 603, column: 15)
!3181 = !DILocation(line: 605, column: 27, scope: !3180)
!3182 = !DILocation(line: 606, column: 15, scope: !3180)
!3183 = !DILocation(line: 609, column: 17, scope: !2891)
!3184 = !DILocation(line: 0, scope: !2951, inlinedAt: !3185)
!3185 = distinct !DILocation(line: 609, column: 32, scope: !2891)
!3186 = !DILocation(line: 0, scope: !2960, inlinedAt: !3187)
!3187 = distinct !DILocation(line: 1137, column: 3, scope: !2951, inlinedAt: !3185)
!3188 = !DILocation(line: 59, column: 10, scope: !2960, inlinedAt: !3187)
!3189 = !DILocation(line: 613, column: 29, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !2891, file: !638, line: 613, column: 21)
!3191 = !DILocation(line: 613, column: 21, scope: !2891)
!3192 = !DILocation(line: 614, column: 29, scope: !3190)
!3193 = !DILocation(line: 614, column: 19, scope: !3190)
!3194 = !DILocation(line: 618, column: 21, scope: !2894)
!3195 = !DILocation(line: 620, column: 54, scope: !2894)
!3196 = !DILocation(line: 619, column: 36, scope: !2894)
!3197 = !DILocation(line: 621, column: 25, scope: !2894)
!3198 = !DILocation(line: 631, column: 38, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !2903, file: !638, line: 629, column: 23)
!3200 = !DILocation(line: 631, column: 48, scope: !3199)
!3201 = !DILocation(line: 626, column: 25, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !2904, file: !638, line: 624, column: 23)
!3203 = !DILocation(line: 631, column: 51, scope: !3199)
!3204 = !DILocation(line: 631, column: 25, scope: !3199)
!3205 = !DILocation(line: 632, column: 28, scope: !3199)
!3206 = !DILocation(line: 631, column: 34, scope: !3199)
!3207 = distinct !{!3207, !3204, !3205, !1099}
!3208 = !DILocation(line: 0, scope: !2899)
!3209 = !DILocation(line: 646, column: 29, scope: !2901)
!3210 = !DILocation(line: 649, column: 39, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !2899, file: !638, line: 648, column: 29)
!3212 = !DILocation(line: 649, column: 31, scope: !3211)
!3213 = !DILocation(line: 648, column: 60, scope: !3211)
!3214 = !DILocation(line: 648, column: 50, scope: !3211)
!3215 = !DILocation(line: 648, column: 29, scope: !2899)
!3216 = distinct !{!3216, !3215, !3217, !1099}
!3217 = !DILocation(line: 654, column: 33, scope: !2899)
!3218 = !DILocation(line: 657, column: 43, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !2902, file: !638, line: 657, column: 29)
!3220 = !DILocalVariable(name: "wc", arg: 1, scope: !3221, file: !3222, line: 865, type: !3225)
!3221 = distinct !DISubprogram(name: "c32isprint", scope: !3222, file: !3222, line: 865, type: !3223, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3227)
!3222 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!3223 = !DISubroutineType(types: !3224)
!3224 = !{!260, !3225}
!3225 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !3226, line: 20, baseType: !224)
!3226 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!3227 = !{!3220}
!3228 = !DILocation(line: 0, scope: !3221, inlinedAt: !3229)
!3229 = distinct !DILocation(line: 657, column: 31, scope: !3219)
!3230 = !DILocation(line: 871, column: 10, scope: !3221, inlinedAt: !3229)
!3231 = !DILocation(line: 657, column: 31, scope: !3219)
!3232 = !DILocation(line: 664, column: 23, scope: !2894)
!3233 = !DILocation(line: 665, column: 19, scope: !2895)
!3234 = !DILocation(line: 666, column: 15, scope: !2892)
!3235 = !DILocation(line: 0, scope: !2892)
!3236 = !DILocation(line: 670, column: 19, scope: !2908)
!3237 = !DILocation(line: 670, column: 23, scope: !2908)
!3238 = !DILocation(line: 674, column: 33, scope: !2907)
!3239 = !DILocation(line: 0, scope: !2907)
!3240 = !DILocation(line: 676, column: 17, scope: !2907)
!3241 = !DILocation(line: 398, column: 12, scope: !2878)
!3242 = !DILocation(line: 678, column: 43, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !638, line: 678, column: 25)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !638, line: 677, column: 19)
!3245 = distinct !DILexicalBlock(scope: !3246, file: !638, line: 676, column: 17)
!3246 = distinct !DILexicalBlock(scope: !2907, file: !638, line: 676, column: 17)
!3247 = !DILocation(line: 680, column: 25, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3249, file: !638, line: 680, column: 25)
!3249 = distinct !DILexicalBlock(scope: !3243, file: !638, line: 679, column: 23)
!3250 = !DILocation(line: 680, column: 25, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3248, file: !638, line: 680, column: 25)
!3252 = !DILocation(line: 680, column: 25, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !638, line: 680, column: 25)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !638, line: 680, column: 25)
!3255 = distinct !DILexicalBlock(scope: !3251, file: !638, line: 680, column: 25)
!3256 = !DILocation(line: 680, column: 25, scope: !3254)
!3257 = !DILocation(line: 680, column: 25, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !638, line: 680, column: 25)
!3259 = distinct !DILexicalBlock(scope: !3255, file: !638, line: 680, column: 25)
!3260 = !DILocation(line: 680, column: 25, scope: !3259)
!3261 = !DILocation(line: 680, column: 25, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !638, line: 680, column: 25)
!3263 = distinct !DILexicalBlock(scope: !3255, file: !638, line: 680, column: 25)
!3264 = !DILocation(line: 680, column: 25, scope: !3263)
!3265 = !DILocation(line: 680, column: 25, scope: !3255)
!3266 = !DILocation(line: 680, column: 25, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3268, file: !638, line: 680, column: 25)
!3268 = distinct !DILexicalBlock(scope: !3248, file: !638, line: 680, column: 25)
!3269 = !DILocation(line: 680, column: 25, scope: !3268)
!3270 = !DILocation(line: 681, column: 25, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !638, line: 681, column: 25)
!3272 = distinct !DILexicalBlock(scope: !3249, file: !638, line: 681, column: 25)
!3273 = !DILocation(line: 681, column: 25, scope: !3272)
!3274 = !DILocation(line: 682, column: 25, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3276, file: !638, line: 682, column: 25)
!3276 = distinct !DILexicalBlock(scope: !3249, file: !638, line: 682, column: 25)
!3277 = !DILocation(line: 682, column: 25, scope: !3276)
!3278 = !DILocation(line: 683, column: 38, scope: !3249)
!3279 = !DILocation(line: 683, column: 33, scope: !3249)
!3280 = !DILocation(line: 684, column: 23, scope: !3249)
!3281 = !DILocation(line: 685, column: 30, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3243, file: !638, line: 685, column: 30)
!3283 = !DILocation(line: 685, column: 30, scope: !3243)
!3284 = !DILocation(line: 687, column: 25, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !638, line: 687, column: 25)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !638, line: 687, column: 25)
!3287 = distinct !DILexicalBlock(scope: !3282, file: !638, line: 686, column: 23)
!3288 = !DILocation(line: 687, column: 25, scope: !3286)
!3289 = !DILocation(line: 689, column: 23, scope: !3287)
!3290 = !DILocation(line: 690, column: 35, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3244, file: !638, line: 690, column: 25)
!3292 = !DILocation(line: 690, column: 30, scope: !3291)
!3293 = !DILocation(line: 690, column: 25, scope: !3244)
!3294 = !DILocation(line: 692, column: 21, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !638, line: 692, column: 21)
!3296 = distinct !DILexicalBlock(scope: !3244, file: !638, line: 692, column: 21)
!3297 = !DILocation(line: 692, column: 21, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3299, file: !638, line: 692, column: 21)
!3299 = distinct !DILexicalBlock(scope: !3300, file: !638, line: 692, column: 21)
!3300 = distinct !DILexicalBlock(scope: !3295, file: !638, line: 692, column: 21)
!3301 = !DILocation(line: 692, column: 21, scope: !3299)
!3302 = !DILocation(line: 692, column: 21, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3304, file: !638, line: 692, column: 21)
!3304 = distinct !DILexicalBlock(scope: !3300, file: !638, line: 692, column: 21)
!3305 = !DILocation(line: 692, column: 21, scope: !3304)
!3306 = !DILocation(line: 692, column: 21, scope: !3300)
!3307 = !DILocation(line: 0, scope: !3244)
!3308 = !DILocation(line: 693, column: 21, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !638, line: 693, column: 21)
!3310 = distinct !DILexicalBlock(scope: !3244, file: !638, line: 693, column: 21)
!3311 = !DILocation(line: 693, column: 21, scope: !3310)
!3312 = !DILocation(line: 694, column: 25, scope: !3244)
!3313 = !DILocation(line: 676, column: 17, scope: !3245)
!3314 = distinct !{!3314, !3315, !3316}
!3315 = !DILocation(line: 676, column: 17, scope: !3246)
!3316 = !DILocation(line: 695, column: 19, scope: !3246)
!3317 = !DILocation(line: 409, column: 30, scope: !3033)
!3318 = !DILocation(line: 702, column: 34, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !2878, file: !638, line: 702, column: 11)
!3320 = !DILocation(line: 704, column: 14, scope: !3319)
!3321 = !DILocation(line: 705, column: 14, scope: !3319)
!3322 = !DILocation(line: 705, column: 35, scope: !3319)
!3323 = !DILocation(line: 705, column: 17, scope: !3319)
!3324 = !DILocation(line: 705, column: 47, scope: !3319)
!3325 = !DILocation(line: 705, column: 65, scope: !3319)
!3326 = !DILocation(line: 706, column: 11, scope: !3319)
!3327 = !DILocation(line: 702, column: 11, scope: !2878)
!3328 = !DILocation(line: 395, column: 15, scope: !2876)
!3329 = !DILocation(line: 709, column: 5, scope: !2878)
!3330 = !DILocation(line: 710, column: 7, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !2878, file: !638, line: 710, column: 7)
!3332 = !DILocation(line: 710, column: 7, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3331, file: !638, line: 710, column: 7)
!3334 = !DILocation(line: 710, column: 7, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3336, file: !638, line: 710, column: 7)
!3336 = distinct !DILexicalBlock(scope: !3337, file: !638, line: 710, column: 7)
!3337 = distinct !DILexicalBlock(scope: !3333, file: !638, line: 710, column: 7)
!3338 = !DILocation(line: 710, column: 7, scope: !3336)
!3339 = !DILocation(line: 710, column: 7, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !638, line: 710, column: 7)
!3341 = distinct !DILexicalBlock(scope: !3337, file: !638, line: 710, column: 7)
!3342 = !DILocation(line: 710, column: 7, scope: !3341)
!3343 = !DILocation(line: 710, column: 7, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !638, line: 710, column: 7)
!3345 = distinct !DILexicalBlock(scope: !3337, file: !638, line: 710, column: 7)
!3346 = !DILocation(line: 710, column: 7, scope: !3345)
!3347 = !DILocation(line: 710, column: 7, scope: !3337)
!3348 = !DILocation(line: 710, column: 7, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !638, line: 710, column: 7)
!3350 = distinct !DILexicalBlock(scope: !3331, file: !638, line: 710, column: 7)
!3351 = !DILocation(line: 710, column: 7, scope: !3350)
!3352 = !DILocation(line: 712, column: 5, scope: !2878)
!3353 = !DILocation(line: 713, column: 7, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !638, line: 713, column: 7)
!3355 = distinct !DILexicalBlock(scope: !2878, file: !638, line: 713, column: 7)
!3356 = !DILocation(line: 417, column: 21, scope: !2878)
!3357 = !DILocation(line: 713, column: 7, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !638, line: 713, column: 7)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !638, line: 713, column: 7)
!3360 = distinct !DILexicalBlock(scope: !3354, file: !638, line: 713, column: 7)
!3361 = !DILocation(line: 713, column: 7, scope: !3359)
!3362 = !DILocation(line: 713, column: 7, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !638, line: 713, column: 7)
!3364 = distinct !DILexicalBlock(scope: !3360, file: !638, line: 713, column: 7)
!3365 = !DILocation(line: 713, column: 7, scope: !3364)
!3366 = !DILocation(line: 713, column: 7, scope: !3360)
!3367 = !DILocation(line: 714, column: 7, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3369, file: !638, line: 714, column: 7)
!3369 = distinct !DILexicalBlock(scope: !2878, file: !638, line: 714, column: 7)
!3370 = !DILocation(line: 714, column: 7, scope: !3369)
!3371 = !DILocation(line: 716, column: 13, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !2878, file: !638, line: 716, column: 11)
!3373 = !DILocation(line: 716, column: 11, scope: !2878)
!3374 = !DILocation(line: 718, column: 5, scope: !2879)
!3375 = !DILocation(line: 395, column: 82, scope: !2879)
!3376 = !DILocation(line: 395, column: 3, scope: !2879)
!3377 = distinct !{!3377, !3029, !3378, !1099}
!3378 = !DILocation(line: 718, column: 5, scope: !2876)
!3379 = !DILocation(line: 720, column: 11, scope: !3380)
!3380 = distinct !DILexicalBlock(scope: !2844, file: !638, line: 720, column: 7)
!3381 = !DILocation(line: 720, column: 16, scope: !3380)
!3382 = !DILocation(line: 728, column: 51, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !2844, file: !638, line: 728, column: 7)
!3384 = !DILocation(line: 731, column: 11, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !638, line: 731, column: 11)
!3386 = distinct !DILexicalBlock(scope: !3383, file: !638, line: 730, column: 5)
!3387 = !DILocation(line: 731, column: 11, scope: !3386)
!3388 = !DILocation(line: 732, column: 16, scope: !3385)
!3389 = !DILocation(line: 732, column: 9, scope: !3385)
!3390 = !DILocation(line: 736, column: 18, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3385, file: !638, line: 736, column: 16)
!3392 = !DILocation(line: 736, column: 29, scope: !3391)
!3393 = !DILocation(line: 745, column: 7, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !2844, file: !638, line: 745, column: 7)
!3395 = !DILocation(line: 745, column: 20, scope: !3394)
!3396 = !DILocation(line: 746, column: 12, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3398, file: !638, line: 746, column: 5)
!3398 = distinct !DILexicalBlock(scope: !3394, file: !638, line: 746, column: 5)
!3399 = !DILocation(line: 746, column: 5, scope: !3398)
!3400 = !DILocation(line: 747, column: 7, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !638, line: 747, column: 7)
!3402 = distinct !DILexicalBlock(scope: !3397, file: !638, line: 747, column: 7)
!3403 = !DILocation(line: 747, column: 7, scope: !3402)
!3404 = !DILocation(line: 746, column: 39, scope: !3397)
!3405 = distinct !{!3405, !3399, !3406, !1099}
!3406 = !DILocation(line: 747, column: 7, scope: !3398)
!3407 = !DILocation(line: 749, column: 11, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !2844, file: !638, line: 749, column: 7)
!3409 = !DILocation(line: 749, column: 7, scope: !2844)
!3410 = !DILocation(line: 750, column: 5, scope: !3408)
!3411 = !DILocation(line: 750, column: 17, scope: !3408)
!3412 = !DILocation(line: 753, column: 2, scope: !2844)
!3413 = !DILocation(line: 756, column: 51, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !2844, file: !638, line: 756, column: 7)
!3415 = !DILocation(line: 756, column: 21, scope: !3414)
!3416 = !DILocation(line: 760, column: 42, scope: !2844)
!3417 = !DILocation(line: 758, column: 10, scope: !2844)
!3418 = !DILocation(line: 758, column: 3, scope: !2844)
!3419 = !DILocation(line: 762, column: 1, scope: !2844)
!3420 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1179, file: !1179, line: 98, type: !3421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!262}
!3423 = !DISubprogram(name: "iswprint", scope: !3424, file: !3424, line: 120, type: !3223, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3424 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!3425 = distinct !DISubprogram(name: "quotearg_alloc", scope: !638, file: !638, line: 788, type: !3426, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3428)
!3426 = !DISubroutineType(types: !3427)
!3427 = !{!318, !265, !262, !2737}
!3428 = !{!3429, !3430, !3431}
!3429 = !DILocalVariable(name: "arg", arg: 1, scope: !3425, file: !638, line: 788, type: !265)
!3430 = !DILocalVariable(name: "argsize", arg: 2, scope: !3425, file: !638, line: 788, type: !262)
!3431 = !DILocalVariable(name: "o", arg: 3, scope: !3425, file: !638, line: 789, type: !2737)
!3432 = !DILocation(line: 0, scope: !3425)
!3433 = !DILocalVariable(name: "arg", arg: 1, scope: !3434, file: !638, line: 801, type: !265)
!3434 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !638, file: !638, line: 801, type: !3435, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3437)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!318, !265, !262, !884, !2737}
!3437 = !{!3433, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445}
!3438 = !DILocalVariable(name: "argsize", arg: 2, scope: !3434, file: !638, line: 801, type: !262)
!3439 = !DILocalVariable(name: "size", arg: 3, scope: !3434, file: !638, line: 801, type: !884)
!3440 = !DILocalVariable(name: "o", arg: 4, scope: !3434, file: !638, line: 802, type: !2737)
!3441 = !DILocalVariable(name: "p", scope: !3434, file: !638, line: 804, type: !2737)
!3442 = !DILocalVariable(name: "saved_errno", scope: !3434, file: !638, line: 805, type: !260)
!3443 = !DILocalVariable(name: "flags", scope: !3434, file: !638, line: 807, type: !260)
!3444 = !DILocalVariable(name: "bufsize", scope: !3434, file: !638, line: 808, type: !262)
!3445 = !DILocalVariable(name: "buf", scope: !3434, file: !638, line: 812, type: !318)
!3446 = !DILocation(line: 0, scope: !3434, inlinedAt: !3447)
!3447 = distinct !DILocation(line: 791, column: 10, scope: !3425)
!3448 = !DILocation(line: 804, column: 37, scope: !3434, inlinedAt: !3447)
!3449 = !DILocation(line: 805, column: 21, scope: !3434, inlinedAt: !3447)
!3450 = !DILocation(line: 807, column: 18, scope: !3434, inlinedAt: !3447)
!3451 = !DILocation(line: 807, column: 24, scope: !3434, inlinedAt: !3447)
!3452 = !DILocation(line: 808, column: 72, scope: !3434, inlinedAt: !3447)
!3453 = !DILocation(line: 809, column: 56, scope: !3434, inlinedAt: !3447)
!3454 = !DILocation(line: 810, column: 49, scope: !3434, inlinedAt: !3447)
!3455 = !DILocation(line: 811, column: 49, scope: !3434, inlinedAt: !3447)
!3456 = !DILocation(line: 808, column: 20, scope: !3434, inlinedAt: !3447)
!3457 = !DILocation(line: 811, column: 62, scope: !3434, inlinedAt: !3447)
!3458 = !DILocation(line: 812, column: 15, scope: !3434, inlinedAt: !3447)
!3459 = !DILocation(line: 813, column: 60, scope: !3434, inlinedAt: !3447)
!3460 = !DILocation(line: 815, column: 32, scope: !3434, inlinedAt: !3447)
!3461 = !DILocation(line: 815, column: 47, scope: !3434, inlinedAt: !3447)
!3462 = !DILocation(line: 813, column: 3, scope: !3434, inlinedAt: !3447)
!3463 = !DILocation(line: 816, column: 9, scope: !3434, inlinedAt: !3447)
!3464 = !DILocation(line: 791, column: 3, scope: !3425)
!3465 = !DILocation(line: 0, scope: !3434)
!3466 = !DILocation(line: 804, column: 37, scope: !3434)
!3467 = !DILocation(line: 805, column: 21, scope: !3434)
!3468 = !DILocation(line: 807, column: 18, scope: !3434)
!3469 = !DILocation(line: 807, column: 27, scope: !3434)
!3470 = !DILocation(line: 807, column: 24, scope: !3434)
!3471 = !DILocation(line: 808, column: 72, scope: !3434)
!3472 = !DILocation(line: 809, column: 56, scope: !3434)
!3473 = !DILocation(line: 810, column: 49, scope: !3434)
!3474 = !DILocation(line: 811, column: 49, scope: !3434)
!3475 = !DILocation(line: 808, column: 20, scope: !3434)
!3476 = !DILocation(line: 811, column: 62, scope: !3434)
!3477 = !DILocation(line: 812, column: 15, scope: !3434)
!3478 = !DILocation(line: 813, column: 60, scope: !3434)
!3479 = !DILocation(line: 815, column: 32, scope: !3434)
!3480 = !DILocation(line: 815, column: 47, scope: !3434)
!3481 = !DILocation(line: 813, column: 3, scope: !3434)
!3482 = !DILocation(line: 816, column: 9, scope: !3434)
!3483 = !DILocation(line: 817, column: 7, scope: !3434)
!3484 = !DILocation(line: 818, column: 11, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3434, file: !638, line: 817, column: 7)
!3486 = !DILocation(line: 818, column: 5, scope: !3485)
!3487 = !DILocation(line: 819, column: 3, scope: !3434)
!3488 = distinct !DISubprogram(name: "quotearg_free", scope: !638, file: !638, line: 837, type: !624, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3489)
!3489 = !{!3490, !3491}
!3490 = !DILocalVariable(name: "sv", scope: !3488, file: !638, line: 839, type: !745)
!3491 = !DILocalVariable(name: "i", scope: !3492, file: !638, line: 840, type: !260)
!3492 = distinct !DILexicalBlock(scope: !3488, file: !638, line: 840, column: 3)
!3493 = !DILocation(line: 839, column: 24, scope: !3488)
!3494 = !DILocation(line: 0, scope: !3488)
!3495 = !DILocation(line: 0, scope: !3492)
!3496 = !DILocation(line: 840, column: 21, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3492, file: !638, line: 840, column: 3)
!3498 = !DILocation(line: 840, column: 3, scope: !3492)
!3499 = !DILocation(line: 842, column: 13, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3488, file: !638, line: 842, column: 7)
!3501 = !{!3502, !952, i64 8}
!3502 = !{!"slotvec", !1542, i64 0, !952, i64 8}
!3503 = !DILocation(line: 842, column: 17, scope: !3500)
!3504 = !DILocation(line: 842, column: 7, scope: !3488)
!3505 = !DILocation(line: 841, column: 17, scope: !3497)
!3506 = !DILocation(line: 841, column: 5, scope: !3497)
!3507 = !DILocation(line: 840, column: 32, scope: !3497)
!3508 = distinct !{!3508, !3498, !3509, !1099}
!3509 = !DILocation(line: 841, column: 20, scope: !3492)
!3510 = !DILocation(line: 844, column: 7, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3500, file: !638, line: 843, column: 5)
!3512 = !DILocation(line: 845, column: 21, scope: !3511)
!3513 = !{!3502, !1542, i64 0}
!3514 = !DILocation(line: 846, column: 20, scope: !3511)
!3515 = !DILocation(line: 847, column: 5, scope: !3511)
!3516 = !DILocation(line: 848, column: 10, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3488, file: !638, line: 848, column: 7)
!3518 = !DILocation(line: 848, column: 7, scope: !3488)
!3519 = !DILocation(line: 850, column: 7, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3517, file: !638, line: 849, column: 5)
!3521 = !DILocation(line: 851, column: 15, scope: !3520)
!3522 = !DILocation(line: 852, column: 5, scope: !3520)
!3523 = !DILocation(line: 853, column: 10, scope: !3488)
!3524 = !DILocation(line: 854, column: 1, scope: !3488)
!3525 = !DISubprogram(name: "free", scope: !2952, file: !2952, line: 786, type: !3526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{null, !268}
!3528 = distinct !DISubprogram(name: "quotearg_n", scope: !638, file: !638, line: 919, type: !1172, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3529)
!3529 = !{!3530, !3531}
!3530 = !DILocalVariable(name: "n", arg: 1, scope: !3528, file: !638, line: 919, type: !260)
!3531 = !DILocalVariable(name: "arg", arg: 2, scope: !3528, file: !638, line: 919, type: !265)
!3532 = !DILocation(line: 0, scope: !3528)
!3533 = !DILocation(line: 921, column: 10, scope: !3528)
!3534 = !DILocation(line: 921, column: 3, scope: !3528)
!3535 = distinct !DISubprogram(name: "quotearg_n_options", scope: !638, file: !638, line: 866, type: !3536, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3538)
!3536 = !DISubroutineType(types: !3537)
!3537 = !{!318, !260, !265, !262, !2737}
!3538 = !{!3539, !3540, !3541, !3542, !3543, !3544, !3545, !3546, !3549, !3550, !3552, !3553, !3554}
!3539 = !DILocalVariable(name: "n", arg: 1, scope: !3535, file: !638, line: 866, type: !260)
!3540 = !DILocalVariable(name: "arg", arg: 2, scope: !3535, file: !638, line: 866, type: !265)
!3541 = !DILocalVariable(name: "argsize", arg: 3, scope: !3535, file: !638, line: 866, type: !262)
!3542 = !DILocalVariable(name: "options", arg: 4, scope: !3535, file: !638, line: 867, type: !2737)
!3543 = !DILocalVariable(name: "saved_errno", scope: !3535, file: !638, line: 869, type: !260)
!3544 = !DILocalVariable(name: "sv", scope: !3535, file: !638, line: 871, type: !745)
!3545 = !DILocalVariable(name: "nslots_max", scope: !3535, file: !638, line: 873, type: !260)
!3546 = !DILocalVariable(name: "preallocated", scope: !3547, file: !638, line: 879, type: !297)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !638, line: 878, column: 5)
!3548 = distinct !DILexicalBlock(scope: !3535, file: !638, line: 877, column: 7)
!3549 = !DILocalVariable(name: "new_nslots", scope: !3547, file: !638, line: 880, type: !897)
!3550 = !DILocalVariable(name: "size", scope: !3551, file: !638, line: 891, type: !262)
!3551 = distinct !DILexicalBlock(scope: !3535, file: !638, line: 890, column: 3)
!3552 = !DILocalVariable(name: "val", scope: !3551, file: !638, line: 892, type: !318)
!3553 = !DILocalVariable(name: "flags", scope: !3551, file: !638, line: 894, type: !260)
!3554 = !DILocalVariable(name: "qsize", scope: !3551, file: !638, line: 895, type: !262)
!3555 = distinct !DIAssignID()
!3556 = !DILocation(line: 0, scope: !3547)
!3557 = !DILocation(line: 0, scope: !3535)
!3558 = !DILocation(line: 869, column: 21, scope: !3535)
!3559 = !DILocation(line: 871, column: 24, scope: !3535)
!3560 = !DILocation(line: 874, column: 17, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3535, file: !638, line: 874, column: 7)
!3562 = !DILocation(line: 875, column: 5, scope: !3561)
!3563 = !DILocation(line: 877, column: 7, scope: !3548)
!3564 = !DILocation(line: 877, column: 14, scope: !3548)
!3565 = !DILocation(line: 877, column: 7, scope: !3535)
!3566 = !DILocation(line: 879, column: 31, scope: !3547)
!3567 = !DILocation(line: 880, column: 7, scope: !3547)
!3568 = !DILocation(line: 880, column: 26, scope: !3547)
!3569 = !DILocation(line: 880, column: 13, scope: !3547)
!3570 = distinct !DIAssignID()
!3571 = !DILocation(line: 882, column: 31, scope: !3547)
!3572 = !DILocation(line: 883, column: 33, scope: !3547)
!3573 = !DILocation(line: 883, column: 42, scope: !3547)
!3574 = !DILocation(line: 883, column: 31, scope: !3547)
!3575 = !DILocation(line: 882, column: 22, scope: !3547)
!3576 = !DILocation(line: 882, column: 15, scope: !3547)
!3577 = !DILocation(line: 884, column: 11, scope: !3547)
!3578 = !DILocation(line: 885, column: 15, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3547, file: !638, line: 884, column: 11)
!3580 = !{i64 0, i64 8, !1541, i64 8, i64 8, !951}
!3581 = !DILocation(line: 885, column: 9, scope: !3579)
!3582 = !DILocation(line: 886, column: 20, scope: !3547)
!3583 = !DILocation(line: 886, column: 18, scope: !3547)
!3584 = !DILocation(line: 886, column: 32, scope: !3547)
!3585 = !DILocation(line: 886, column: 43, scope: !3547)
!3586 = !DILocation(line: 886, column: 53, scope: !3547)
!3587 = !DILocation(line: 0, scope: !2960, inlinedAt: !3588)
!3588 = distinct !DILocation(line: 886, column: 7, scope: !3547)
!3589 = !DILocation(line: 59, column: 10, scope: !2960, inlinedAt: !3588)
!3590 = !DILocation(line: 887, column: 16, scope: !3547)
!3591 = !DILocation(line: 887, column: 14, scope: !3547)
!3592 = !DILocation(line: 888, column: 5, scope: !3548)
!3593 = !DILocation(line: 888, column: 5, scope: !3547)
!3594 = !DILocation(line: 891, column: 19, scope: !3551)
!3595 = !DILocation(line: 891, column: 25, scope: !3551)
!3596 = !DILocation(line: 0, scope: !3551)
!3597 = !DILocation(line: 892, column: 23, scope: !3551)
!3598 = !DILocation(line: 894, column: 26, scope: !3551)
!3599 = !DILocation(line: 894, column: 32, scope: !3551)
!3600 = !DILocation(line: 896, column: 55, scope: !3551)
!3601 = !DILocation(line: 897, column: 55, scope: !3551)
!3602 = !DILocation(line: 898, column: 55, scope: !3551)
!3603 = !DILocation(line: 899, column: 55, scope: !3551)
!3604 = !DILocation(line: 895, column: 20, scope: !3551)
!3605 = !DILocation(line: 901, column: 14, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3551, file: !638, line: 901, column: 9)
!3607 = !DILocation(line: 901, column: 9, scope: !3551)
!3608 = !DILocation(line: 903, column: 35, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3606, file: !638, line: 902, column: 7)
!3610 = !DILocation(line: 903, column: 20, scope: !3609)
!3611 = !DILocation(line: 904, column: 17, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3609, file: !638, line: 904, column: 13)
!3613 = !DILocation(line: 904, column: 13, scope: !3609)
!3614 = !DILocation(line: 905, column: 11, scope: !3612)
!3615 = !DILocation(line: 906, column: 27, scope: !3609)
!3616 = !DILocation(line: 906, column: 19, scope: !3609)
!3617 = !DILocation(line: 907, column: 69, scope: !3609)
!3618 = !DILocation(line: 909, column: 44, scope: !3609)
!3619 = !DILocation(line: 910, column: 44, scope: !3609)
!3620 = !DILocation(line: 907, column: 9, scope: !3609)
!3621 = !DILocation(line: 911, column: 7, scope: !3609)
!3622 = !DILocation(line: 913, column: 11, scope: !3551)
!3623 = !DILocation(line: 914, column: 5, scope: !3551)
!3624 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !638, file: !638, line: 925, type: !3625, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3627)
!3625 = !DISubroutineType(types: !3626)
!3626 = !{!318, !260, !265, !262}
!3627 = !{!3628, !3629, !3630}
!3628 = !DILocalVariable(name: "n", arg: 1, scope: !3624, file: !638, line: 925, type: !260)
!3629 = !DILocalVariable(name: "arg", arg: 2, scope: !3624, file: !638, line: 925, type: !265)
!3630 = !DILocalVariable(name: "argsize", arg: 3, scope: !3624, file: !638, line: 925, type: !262)
!3631 = !DILocation(line: 0, scope: !3624)
!3632 = !DILocation(line: 927, column: 10, scope: !3624)
!3633 = !DILocation(line: 927, column: 3, scope: !3624)
!3634 = distinct !DISubprogram(name: "quotearg", scope: !638, file: !638, line: 931, type: !1181, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3635)
!3635 = !{!3636}
!3636 = !DILocalVariable(name: "arg", arg: 1, scope: !3634, file: !638, line: 931, type: !265)
!3637 = !DILocation(line: 0, scope: !3634)
!3638 = !DILocation(line: 0, scope: !3528, inlinedAt: !3639)
!3639 = distinct !DILocation(line: 933, column: 10, scope: !3634)
!3640 = !DILocation(line: 921, column: 10, scope: !3528, inlinedAt: !3639)
!3641 = !DILocation(line: 933, column: 3, scope: !3634)
!3642 = distinct !DISubprogram(name: "quotearg_mem", scope: !638, file: !638, line: 937, type: !3643, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3645)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!318, !265, !262}
!3645 = !{!3646, !3647}
!3646 = !DILocalVariable(name: "arg", arg: 1, scope: !3642, file: !638, line: 937, type: !265)
!3647 = !DILocalVariable(name: "argsize", arg: 2, scope: !3642, file: !638, line: 937, type: !262)
!3648 = !DILocation(line: 0, scope: !3642)
!3649 = !DILocation(line: 0, scope: !3624, inlinedAt: !3650)
!3650 = distinct !DILocation(line: 939, column: 10, scope: !3642)
!3651 = !DILocation(line: 927, column: 10, scope: !3624, inlinedAt: !3650)
!3652 = !DILocation(line: 939, column: 3, scope: !3642)
!3653 = distinct !DISubprogram(name: "quotearg_n_style", scope: !638, file: !638, line: 943, type: !3654, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3656)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{!318, !260, !664, !265}
!3656 = !{!3657, !3658, !3659, !3660}
!3657 = !DILocalVariable(name: "n", arg: 1, scope: !3653, file: !638, line: 943, type: !260)
!3658 = !DILocalVariable(name: "s", arg: 2, scope: !3653, file: !638, line: 943, type: !664)
!3659 = !DILocalVariable(name: "arg", arg: 3, scope: !3653, file: !638, line: 943, type: !265)
!3660 = !DILocalVariable(name: "o", scope: !3653, file: !638, line: 945, type: !2738)
!3661 = distinct !DIAssignID()
!3662 = !DILocation(line: 0, scope: !3653)
!3663 = !DILocation(line: 945, column: 3, scope: !3653)
!3664 = !{!3665}
!3665 = distinct !{!3665, !3666, !"quoting_options_from_style: argument 0"}
!3666 = distinct !{!3666, !"quoting_options_from_style"}
!3667 = !DILocation(line: 945, column: 36, scope: !3653)
!3668 = !DILocalVariable(name: "style", arg: 1, scope: !3669, file: !638, line: 183, type: !664)
!3669 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !638, file: !638, line: 183, type: !3670, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3672)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!691, !664}
!3672 = !{!3668, !3673}
!3673 = !DILocalVariable(name: "o", scope: !3669, file: !638, line: 185, type: !691)
!3674 = !DILocation(line: 0, scope: !3669, inlinedAt: !3675)
!3675 = distinct !DILocation(line: 945, column: 36, scope: !3653)
!3676 = !DILocation(line: 185, column: 26, scope: !3669, inlinedAt: !3675)
!3677 = distinct !DIAssignID()
!3678 = !DILocation(line: 186, column: 13, scope: !3679, inlinedAt: !3675)
!3679 = distinct !DILexicalBlock(scope: !3669, file: !638, line: 186, column: 7)
!3680 = !DILocation(line: 186, column: 7, scope: !3669, inlinedAt: !3675)
!3681 = !DILocation(line: 187, column: 5, scope: !3679, inlinedAt: !3675)
!3682 = !DILocation(line: 188, column: 11, scope: !3669, inlinedAt: !3675)
!3683 = distinct !DIAssignID()
!3684 = !DILocation(line: 946, column: 10, scope: !3653)
!3685 = !DILocation(line: 947, column: 1, scope: !3653)
!3686 = !DILocation(line: 946, column: 3, scope: !3653)
!3687 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !638, file: !638, line: 950, type: !3688, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3690)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!318, !260, !664, !265, !262}
!3690 = !{!3691, !3692, !3693, !3694, !3695}
!3691 = !DILocalVariable(name: "n", arg: 1, scope: !3687, file: !638, line: 950, type: !260)
!3692 = !DILocalVariable(name: "s", arg: 2, scope: !3687, file: !638, line: 950, type: !664)
!3693 = !DILocalVariable(name: "arg", arg: 3, scope: !3687, file: !638, line: 951, type: !265)
!3694 = !DILocalVariable(name: "argsize", arg: 4, scope: !3687, file: !638, line: 951, type: !262)
!3695 = !DILocalVariable(name: "o", scope: !3687, file: !638, line: 953, type: !2738)
!3696 = distinct !DIAssignID()
!3697 = !DILocation(line: 0, scope: !3687)
!3698 = !DILocation(line: 953, column: 3, scope: !3687)
!3699 = !{!3700}
!3700 = distinct !{!3700, !3701, !"quoting_options_from_style: argument 0"}
!3701 = distinct !{!3701, !"quoting_options_from_style"}
!3702 = !DILocation(line: 953, column: 36, scope: !3687)
!3703 = !DILocation(line: 0, scope: !3669, inlinedAt: !3704)
!3704 = distinct !DILocation(line: 953, column: 36, scope: !3687)
!3705 = !DILocation(line: 185, column: 26, scope: !3669, inlinedAt: !3704)
!3706 = distinct !DIAssignID()
!3707 = !DILocation(line: 186, column: 13, scope: !3679, inlinedAt: !3704)
!3708 = !DILocation(line: 186, column: 7, scope: !3669, inlinedAt: !3704)
!3709 = !DILocation(line: 187, column: 5, scope: !3679, inlinedAt: !3704)
!3710 = !DILocation(line: 188, column: 11, scope: !3669, inlinedAt: !3704)
!3711 = distinct !DIAssignID()
!3712 = !DILocation(line: 954, column: 10, scope: !3687)
!3713 = !DILocation(line: 955, column: 1, scope: !3687)
!3714 = !DILocation(line: 954, column: 3, scope: !3687)
!3715 = distinct !DISubprogram(name: "quotearg_style", scope: !638, file: !638, line: 958, type: !3716, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3718)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!318, !664, !265}
!3718 = !{!3719, !3720}
!3719 = !DILocalVariable(name: "s", arg: 1, scope: !3715, file: !638, line: 958, type: !664)
!3720 = !DILocalVariable(name: "arg", arg: 2, scope: !3715, file: !638, line: 958, type: !265)
!3721 = distinct !DIAssignID()
!3722 = !DILocation(line: 0, scope: !3715)
!3723 = !DILocation(line: 0, scope: !3653, inlinedAt: !3724)
!3724 = distinct !DILocation(line: 960, column: 10, scope: !3715)
!3725 = !DILocation(line: 945, column: 3, scope: !3653, inlinedAt: !3724)
!3726 = !{!3727}
!3727 = distinct !{!3727, !3728, !"quoting_options_from_style: argument 0"}
!3728 = distinct !{!3728, !"quoting_options_from_style"}
!3729 = !DILocation(line: 945, column: 36, scope: !3653, inlinedAt: !3724)
!3730 = !DILocation(line: 0, scope: !3669, inlinedAt: !3731)
!3731 = distinct !DILocation(line: 945, column: 36, scope: !3653, inlinedAt: !3724)
!3732 = !DILocation(line: 185, column: 26, scope: !3669, inlinedAt: !3731)
!3733 = distinct !DIAssignID()
!3734 = !DILocation(line: 186, column: 13, scope: !3679, inlinedAt: !3731)
!3735 = !DILocation(line: 186, column: 7, scope: !3669, inlinedAt: !3731)
!3736 = !DILocation(line: 187, column: 5, scope: !3679, inlinedAt: !3731)
!3737 = !DILocation(line: 188, column: 11, scope: !3669, inlinedAt: !3731)
!3738 = distinct !DIAssignID()
!3739 = !DILocation(line: 946, column: 10, scope: !3653, inlinedAt: !3724)
!3740 = !DILocation(line: 947, column: 1, scope: !3653, inlinedAt: !3724)
!3741 = !DILocation(line: 960, column: 3, scope: !3715)
!3742 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !638, file: !638, line: 964, type: !3743, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3745)
!3743 = !DISubroutineType(types: !3744)
!3744 = !{!318, !664, !265, !262}
!3745 = !{!3746, !3747, !3748}
!3746 = !DILocalVariable(name: "s", arg: 1, scope: !3742, file: !638, line: 964, type: !664)
!3747 = !DILocalVariable(name: "arg", arg: 2, scope: !3742, file: !638, line: 964, type: !265)
!3748 = !DILocalVariable(name: "argsize", arg: 3, scope: !3742, file: !638, line: 964, type: !262)
!3749 = distinct !DIAssignID()
!3750 = !DILocation(line: 0, scope: !3742)
!3751 = !DILocation(line: 0, scope: !3687, inlinedAt: !3752)
!3752 = distinct !DILocation(line: 966, column: 10, scope: !3742)
!3753 = !DILocation(line: 953, column: 3, scope: !3687, inlinedAt: !3752)
!3754 = !{!3755}
!3755 = distinct !{!3755, !3756, !"quoting_options_from_style: argument 0"}
!3756 = distinct !{!3756, !"quoting_options_from_style"}
!3757 = !DILocation(line: 953, column: 36, scope: !3687, inlinedAt: !3752)
!3758 = !DILocation(line: 0, scope: !3669, inlinedAt: !3759)
!3759 = distinct !DILocation(line: 953, column: 36, scope: !3687, inlinedAt: !3752)
!3760 = !DILocation(line: 185, column: 26, scope: !3669, inlinedAt: !3759)
!3761 = distinct !DIAssignID()
!3762 = !DILocation(line: 186, column: 13, scope: !3679, inlinedAt: !3759)
!3763 = !DILocation(line: 186, column: 7, scope: !3669, inlinedAt: !3759)
!3764 = !DILocation(line: 187, column: 5, scope: !3679, inlinedAt: !3759)
!3765 = !DILocation(line: 188, column: 11, scope: !3669, inlinedAt: !3759)
!3766 = distinct !DIAssignID()
!3767 = !DILocation(line: 954, column: 10, scope: !3687, inlinedAt: !3752)
!3768 = !DILocation(line: 955, column: 1, scope: !3687, inlinedAt: !3752)
!3769 = !DILocation(line: 966, column: 3, scope: !3742)
!3770 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !638, file: !638, line: 970, type: !3771, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3773)
!3771 = !DISubroutineType(types: !3772)
!3772 = !{!318, !265, !262, !4}
!3773 = !{!3774, !3775, !3776, !3777}
!3774 = !DILocalVariable(name: "arg", arg: 1, scope: !3770, file: !638, line: 970, type: !265)
!3775 = !DILocalVariable(name: "argsize", arg: 2, scope: !3770, file: !638, line: 970, type: !262)
!3776 = !DILocalVariable(name: "ch", arg: 3, scope: !3770, file: !638, line: 970, type: !4)
!3777 = !DILocalVariable(name: "options", scope: !3770, file: !638, line: 972, type: !691)
!3778 = distinct !DIAssignID()
!3779 = !DILocation(line: 0, scope: !3770)
!3780 = !DILocation(line: 972, column: 3, scope: !3770)
!3781 = !DILocation(line: 973, column: 13, scope: !3770)
!3782 = !{i64 0, i64 4, !1052, i64 4, i64 4, !1052, i64 8, i64 32, !1061, i64 40, i64 8, !951, i64 48, i64 8, !951}
!3783 = distinct !DIAssignID()
!3784 = !DILocation(line: 0, scope: !2757, inlinedAt: !3785)
!3785 = distinct !DILocation(line: 974, column: 3, scope: !3770)
!3786 = !DILocation(line: 147, column: 41, scope: !2757, inlinedAt: !3785)
!3787 = !DILocation(line: 147, column: 62, scope: !2757, inlinedAt: !3785)
!3788 = !DILocation(line: 147, column: 57, scope: !2757, inlinedAt: !3785)
!3789 = !DILocation(line: 148, column: 15, scope: !2757, inlinedAt: !3785)
!3790 = !DILocation(line: 149, column: 21, scope: !2757, inlinedAt: !3785)
!3791 = !DILocation(line: 149, column: 24, scope: !2757, inlinedAt: !3785)
!3792 = !DILocation(line: 150, column: 19, scope: !2757, inlinedAt: !3785)
!3793 = !DILocation(line: 150, column: 24, scope: !2757, inlinedAt: !3785)
!3794 = !DILocation(line: 150, column: 6, scope: !2757, inlinedAt: !3785)
!3795 = !DILocation(line: 975, column: 10, scope: !3770)
!3796 = !DILocation(line: 976, column: 1, scope: !3770)
!3797 = !DILocation(line: 975, column: 3, scope: !3770)
!3798 = distinct !DISubprogram(name: "quotearg_char", scope: !638, file: !638, line: 979, type: !3799, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3801)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!318, !265, !4}
!3801 = !{!3802, !3803}
!3802 = !DILocalVariable(name: "arg", arg: 1, scope: !3798, file: !638, line: 979, type: !265)
!3803 = !DILocalVariable(name: "ch", arg: 2, scope: !3798, file: !638, line: 979, type: !4)
!3804 = distinct !DIAssignID()
!3805 = !DILocation(line: 0, scope: !3798)
!3806 = !DILocation(line: 0, scope: !3770, inlinedAt: !3807)
!3807 = distinct !DILocation(line: 981, column: 10, scope: !3798)
!3808 = !DILocation(line: 972, column: 3, scope: !3770, inlinedAt: !3807)
!3809 = !DILocation(line: 973, column: 13, scope: !3770, inlinedAt: !3807)
!3810 = distinct !DIAssignID()
!3811 = !DILocation(line: 0, scope: !2757, inlinedAt: !3812)
!3812 = distinct !DILocation(line: 974, column: 3, scope: !3770, inlinedAt: !3807)
!3813 = !DILocation(line: 147, column: 41, scope: !2757, inlinedAt: !3812)
!3814 = !DILocation(line: 147, column: 62, scope: !2757, inlinedAt: !3812)
!3815 = !DILocation(line: 147, column: 57, scope: !2757, inlinedAt: !3812)
!3816 = !DILocation(line: 148, column: 15, scope: !2757, inlinedAt: !3812)
!3817 = !DILocation(line: 149, column: 21, scope: !2757, inlinedAt: !3812)
!3818 = !DILocation(line: 149, column: 24, scope: !2757, inlinedAt: !3812)
!3819 = !DILocation(line: 150, column: 19, scope: !2757, inlinedAt: !3812)
!3820 = !DILocation(line: 150, column: 24, scope: !2757, inlinedAt: !3812)
!3821 = !DILocation(line: 150, column: 6, scope: !2757, inlinedAt: !3812)
!3822 = !DILocation(line: 975, column: 10, scope: !3770, inlinedAt: !3807)
!3823 = !DILocation(line: 976, column: 1, scope: !3770, inlinedAt: !3807)
!3824 = !DILocation(line: 981, column: 3, scope: !3798)
!3825 = distinct !DISubprogram(name: "quotearg_colon", scope: !638, file: !638, line: 985, type: !1181, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3826)
!3826 = !{!3827}
!3827 = !DILocalVariable(name: "arg", arg: 1, scope: !3825, file: !638, line: 985, type: !265)
!3828 = distinct !DIAssignID()
!3829 = !DILocation(line: 0, scope: !3825)
!3830 = !DILocation(line: 0, scope: !3798, inlinedAt: !3831)
!3831 = distinct !DILocation(line: 987, column: 10, scope: !3825)
!3832 = !DILocation(line: 0, scope: !3770, inlinedAt: !3833)
!3833 = distinct !DILocation(line: 981, column: 10, scope: !3798, inlinedAt: !3831)
!3834 = !DILocation(line: 972, column: 3, scope: !3770, inlinedAt: !3833)
!3835 = !DILocation(line: 973, column: 13, scope: !3770, inlinedAt: !3833)
!3836 = distinct !DIAssignID()
!3837 = !DILocation(line: 0, scope: !2757, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 974, column: 3, scope: !3770, inlinedAt: !3833)
!3839 = !DILocation(line: 147, column: 57, scope: !2757, inlinedAt: !3838)
!3840 = !DILocation(line: 149, column: 21, scope: !2757, inlinedAt: !3838)
!3841 = !DILocation(line: 150, column: 6, scope: !2757, inlinedAt: !3838)
!3842 = !DILocation(line: 975, column: 10, scope: !3770, inlinedAt: !3833)
!3843 = !DILocation(line: 976, column: 1, scope: !3770, inlinedAt: !3833)
!3844 = !DILocation(line: 987, column: 3, scope: !3825)
!3845 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !638, file: !638, line: 991, type: !3643, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3846)
!3846 = !{!3847, !3848}
!3847 = !DILocalVariable(name: "arg", arg: 1, scope: !3845, file: !638, line: 991, type: !265)
!3848 = !DILocalVariable(name: "argsize", arg: 2, scope: !3845, file: !638, line: 991, type: !262)
!3849 = distinct !DIAssignID()
!3850 = !DILocation(line: 0, scope: !3845)
!3851 = !DILocation(line: 0, scope: !3770, inlinedAt: !3852)
!3852 = distinct !DILocation(line: 993, column: 10, scope: !3845)
!3853 = !DILocation(line: 972, column: 3, scope: !3770, inlinedAt: !3852)
!3854 = !DILocation(line: 973, column: 13, scope: !3770, inlinedAt: !3852)
!3855 = distinct !DIAssignID()
!3856 = !DILocation(line: 0, scope: !2757, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 974, column: 3, scope: !3770, inlinedAt: !3852)
!3858 = !DILocation(line: 147, column: 57, scope: !2757, inlinedAt: !3857)
!3859 = !DILocation(line: 149, column: 21, scope: !2757, inlinedAt: !3857)
!3860 = !DILocation(line: 150, column: 6, scope: !2757, inlinedAt: !3857)
!3861 = !DILocation(line: 975, column: 10, scope: !3770, inlinedAt: !3852)
!3862 = !DILocation(line: 976, column: 1, scope: !3770, inlinedAt: !3852)
!3863 = !DILocation(line: 993, column: 3, scope: !3845)
!3864 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !638, file: !638, line: 997, type: !3654, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3865)
!3865 = !{!3866, !3867, !3868, !3869}
!3866 = !DILocalVariable(name: "n", arg: 1, scope: !3864, file: !638, line: 997, type: !260)
!3867 = !DILocalVariable(name: "s", arg: 2, scope: !3864, file: !638, line: 997, type: !664)
!3868 = !DILocalVariable(name: "arg", arg: 3, scope: !3864, file: !638, line: 997, type: !265)
!3869 = !DILocalVariable(name: "options", scope: !3864, file: !638, line: 999, type: !691)
!3870 = distinct !DIAssignID()
!3871 = !DILocation(line: 0, scope: !3864)
!3872 = !DILocation(line: 185, column: 26, scope: !3669, inlinedAt: !3873)
!3873 = distinct !DILocation(line: 1000, column: 13, scope: !3864)
!3874 = !DILocation(line: 999, column: 3, scope: !3864)
!3875 = !DILocation(line: 0, scope: !3669, inlinedAt: !3873)
!3876 = !DILocation(line: 186, column: 13, scope: !3679, inlinedAt: !3873)
!3877 = !DILocation(line: 186, column: 7, scope: !3669, inlinedAt: !3873)
!3878 = !DILocation(line: 187, column: 5, scope: !3679, inlinedAt: !3873)
!3879 = !{!3880}
!3880 = distinct !{!3880, !3881, !"quoting_options_from_style: argument 0"}
!3881 = distinct !{!3881, !"quoting_options_from_style"}
!3882 = !DILocation(line: 1000, column: 13, scope: !3864)
!3883 = distinct !DIAssignID()
!3884 = distinct !DIAssignID()
!3885 = !DILocation(line: 0, scope: !2757, inlinedAt: !3886)
!3886 = distinct !DILocation(line: 1001, column: 3, scope: !3864)
!3887 = !DILocation(line: 147, column: 57, scope: !2757, inlinedAt: !3886)
!3888 = !DILocation(line: 149, column: 21, scope: !2757, inlinedAt: !3886)
!3889 = !DILocation(line: 150, column: 6, scope: !2757, inlinedAt: !3886)
!3890 = distinct !DIAssignID()
!3891 = !DILocation(line: 1002, column: 10, scope: !3864)
!3892 = !DILocation(line: 1003, column: 1, scope: !3864)
!3893 = !DILocation(line: 1002, column: 3, scope: !3864)
!3894 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !638, file: !638, line: 1006, type: !3895, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3897)
!3895 = !DISubroutineType(types: !3896)
!3896 = !{!318, !260, !265, !265, !265}
!3897 = !{!3898, !3899, !3900, !3901}
!3898 = !DILocalVariable(name: "n", arg: 1, scope: !3894, file: !638, line: 1006, type: !260)
!3899 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3894, file: !638, line: 1006, type: !265)
!3900 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3894, file: !638, line: 1007, type: !265)
!3901 = !DILocalVariable(name: "arg", arg: 4, scope: !3894, file: !638, line: 1007, type: !265)
!3902 = distinct !DIAssignID()
!3903 = !DILocation(line: 0, scope: !3894)
!3904 = !DILocalVariable(name: "o", scope: !3905, file: !638, line: 1018, type: !691)
!3905 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !638, file: !638, line: 1014, type: !3906, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3908)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!318, !260, !265, !265, !265, !262}
!3908 = !{!3909, !3910, !3911, !3912, !3913, !3904}
!3909 = !DILocalVariable(name: "n", arg: 1, scope: !3905, file: !638, line: 1014, type: !260)
!3910 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3905, file: !638, line: 1014, type: !265)
!3911 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3905, file: !638, line: 1015, type: !265)
!3912 = !DILocalVariable(name: "arg", arg: 4, scope: !3905, file: !638, line: 1016, type: !265)
!3913 = !DILocalVariable(name: "argsize", arg: 5, scope: !3905, file: !638, line: 1016, type: !262)
!3914 = !DILocation(line: 0, scope: !3905, inlinedAt: !3915)
!3915 = distinct !DILocation(line: 1009, column: 10, scope: !3894)
!3916 = !DILocation(line: 1018, column: 3, scope: !3905, inlinedAt: !3915)
!3917 = !DILocation(line: 1018, column: 30, scope: !3905, inlinedAt: !3915)
!3918 = distinct !DIAssignID()
!3919 = distinct !DIAssignID()
!3920 = !DILocation(line: 0, scope: !2797, inlinedAt: !3921)
!3921 = distinct !DILocation(line: 1019, column: 3, scope: !3905, inlinedAt: !3915)
!3922 = !DILocation(line: 174, column: 12, scope: !2797, inlinedAt: !3921)
!3923 = distinct !DIAssignID()
!3924 = !DILocation(line: 175, column: 8, scope: !2810, inlinedAt: !3921)
!3925 = !DILocation(line: 175, column: 19, scope: !2810, inlinedAt: !3921)
!3926 = !DILocation(line: 176, column: 5, scope: !2810, inlinedAt: !3921)
!3927 = !DILocation(line: 177, column: 6, scope: !2797, inlinedAt: !3921)
!3928 = !DILocation(line: 177, column: 17, scope: !2797, inlinedAt: !3921)
!3929 = distinct !DIAssignID()
!3930 = !DILocation(line: 178, column: 6, scope: !2797, inlinedAt: !3921)
!3931 = !DILocation(line: 178, column: 18, scope: !2797, inlinedAt: !3921)
!3932 = distinct !DIAssignID()
!3933 = !DILocation(line: 1020, column: 10, scope: !3905, inlinedAt: !3915)
!3934 = !DILocation(line: 1021, column: 1, scope: !3905, inlinedAt: !3915)
!3935 = !DILocation(line: 1009, column: 3, scope: !3894)
!3936 = distinct !DIAssignID()
!3937 = !DILocation(line: 0, scope: !3905)
!3938 = !DILocation(line: 1018, column: 3, scope: !3905)
!3939 = !DILocation(line: 1018, column: 30, scope: !3905)
!3940 = distinct !DIAssignID()
!3941 = distinct !DIAssignID()
!3942 = !DILocation(line: 0, scope: !2797, inlinedAt: !3943)
!3943 = distinct !DILocation(line: 1019, column: 3, scope: !3905)
!3944 = !DILocation(line: 174, column: 12, scope: !2797, inlinedAt: !3943)
!3945 = distinct !DIAssignID()
!3946 = !DILocation(line: 175, column: 8, scope: !2810, inlinedAt: !3943)
!3947 = !DILocation(line: 175, column: 19, scope: !2810, inlinedAt: !3943)
!3948 = !DILocation(line: 176, column: 5, scope: !2810, inlinedAt: !3943)
!3949 = !DILocation(line: 177, column: 6, scope: !2797, inlinedAt: !3943)
!3950 = !DILocation(line: 177, column: 17, scope: !2797, inlinedAt: !3943)
!3951 = distinct !DIAssignID()
!3952 = !DILocation(line: 178, column: 6, scope: !2797, inlinedAt: !3943)
!3953 = !DILocation(line: 178, column: 18, scope: !2797, inlinedAt: !3943)
!3954 = distinct !DIAssignID()
!3955 = !DILocation(line: 1020, column: 10, scope: !3905)
!3956 = !DILocation(line: 1021, column: 1, scope: !3905)
!3957 = !DILocation(line: 1020, column: 3, scope: !3905)
!3958 = distinct !DISubprogram(name: "quotearg_custom", scope: !638, file: !638, line: 1024, type: !3959, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3961)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!318, !265, !265, !265}
!3961 = !{!3962, !3963, !3964}
!3962 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3958, file: !638, line: 1024, type: !265)
!3963 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3958, file: !638, line: 1024, type: !265)
!3964 = !DILocalVariable(name: "arg", arg: 3, scope: !3958, file: !638, line: 1025, type: !265)
!3965 = distinct !DIAssignID()
!3966 = !DILocation(line: 0, scope: !3958)
!3967 = !DILocation(line: 0, scope: !3894, inlinedAt: !3968)
!3968 = distinct !DILocation(line: 1027, column: 10, scope: !3958)
!3969 = !DILocation(line: 0, scope: !3905, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 1009, column: 10, scope: !3894, inlinedAt: !3968)
!3971 = !DILocation(line: 1018, column: 3, scope: !3905, inlinedAt: !3970)
!3972 = !DILocation(line: 1018, column: 30, scope: !3905, inlinedAt: !3970)
!3973 = distinct !DIAssignID()
!3974 = distinct !DIAssignID()
!3975 = !DILocation(line: 0, scope: !2797, inlinedAt: !3976)
!3976 = distinct !DILocation(line: 1019, column: 3, scope: !3905, inlinedAt: !3970)
!3977 = !DILocation(line: 174, column: 12, scope: !2797, inlinedAt: !3976)
!3978 = distinct !DIAssignID()
!3979 = !DILocation(line: 175, column: 8, scope: !2810, inlinedAt: !3976)
!3980 = !DILocation(line: 175, column: 19, scope: !2810, inlinedAt: !3976)
!3981 = !DILocation(line: 176, column: 5, scope: !2810, inlinedAt: !3976)
!3982 = !DILocation(line: 177, column: 6, scope: !2797, inlinedAt: !3976)
!3983 = !DILocation(line: 177, column: 17, scope: !2797, inlinedAt: !3976)
!3984 = distinct !DIAssignID()
!3985 = !DILocation(line: 178, column: 6, scope: !2797, inlinedAt: !3976)
!3986 = !DILocation(line: 178, column: 18, scope: !2797, inlinedAt: !3976)
!3987 = distinct !DIAssignID()
!3988 = !DILocation(line: 1020, column: 10, scope: !3905, inlinedAt: !3970)
!3989 = !DILocation(line: 1021, column: 1, scope: !3905, inlinedAt: !3970)
!3990 = !DILocation(line: 1027, column: 3, scope: !3958)
!3991 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !638, file: !638, line: 1031, type: !3992, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !3994)
!3992 = !DISubroutineType(types: !3993)
!3993 = !{!318, !265, !265, !265, !262}
!3994 = !{!3995, !3996, !3997, !3998}
!3995 = !DILocalVariable(name: "left_quote", arg: 1, scope: !3991, file: !638, line: 1031, type: !265)
!3996 = !DILocalVariable(name: "right_quote", arg: 2, scope: !3991, file: !638, line: 1031, type: !265)
!3997 = !DILocalVariable(name: "arg", arg: 3, scope: !3991, file: !638, line: 1032, type: !265)
!3998 = !DILocalVariable(name: "argsize", arg: 4, scope: !3991, file: !638, line: 1032, type: !262)
!3999 = distinct !DIAssignID()
!4000 = !DILocation(line: 0, scope: !3991)
!4001 = !DILocation(line: 0, scope: !3905, inlinedAt: !4002)
!4002 = distinct !DILocation(line: 1034, column: 10, scope: !3991)
!4003 = !DILocation(line: 1018, column: 3, scope: !3905, inlinedAt: !4002)
!4004 = !DILocation(line: 1018, column: 30, scope: !3905, inlinedAt: !4002)
!4005 = distinct !DIAssignID()
!4006 = distinct !DIAssignID()
!4007 = !DILocation(line: 0, scope: !2797, inlinedAt: !4008)
!4008 = distinct !DILocation(line: 1019, column: 3, scope: !3905, inlinedAt: !4002)
!4009 = !DILocation(line: 174, column: 12, scope: !2797, inlinedAt: !4008)
!4010 = distinct !DIAssignID()
!4011 = !DILocation(line: 175, column: 8, scope: !2810, inlinedAt: !4008)
!4012 = !DILocation(line: 175, column: 19, scope: !2810, inlinedAt: !4008)
!4013 = !DILocation(line: 176, column: 5, scope: !2810, inlinedAt: !4008)
!4014 = !DILocation(line: 177, column: 6, scope: !2797, inlinedAt: !4008)
!4015 = !DILocation(line: 177, column: 17, scope: !2797, inlinedAt: !4008)
!4016 = distinct !DIAssignID()
!4017 = !DILocation(line: 178, column: 6, scope: !2797, inlinedAt: !4008)
!4018 = !DILocation(line: 178, column: 18, scope: !2797, inlinedAt: !4008)
!4019 = distinct !DIAssignID()
!4020 = !DILocation(line: 1020, column: 10, scope: !3905, inlinedAt: !4002)
!4021 = !DILocation(line: 1021, column: 1, scope: !3905, inlinedAt: !4002)
!4022 = !DILocation(line: 1034, column: 3, scope: !3991)
!4023 = distinct !DISubprogram(name: "quote_n_mem", scope: !638, file: !638, line: 1049, type: !4024, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !4026)
!4024 = !DISubroutineType(types: !4025)
!4025 = !{!265, !260, !265, !262}
!4026 = !{!4027, !4028, !4029}
!4027 = !DILocalVariable(name: "n", arg: 1, scope: !4023, file: !638, line: 1049, type: !260)
!4028 = !DILocalVariable(name: "arg", arg: 2, scope: !4023, file: !638, line: 1049, type: !265)
!4029 = !DILocalVariable(name: "argsize", arg: 3, scope: !4023, file: !638, line: 1049, type: !262)
!4030 = !DILocation(line: 0, scope: !4023)
!4031 = !DILocation(line: 1051, column: 10, scope: !4023)
!4032 = !DILocation(line: 1051, column: 3, scope: !4023)
!4033 = distinct !DISubprogram(name: "quote_mem", scope: !638, file: !638, line: 1055, type: !4034, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !4036)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!265, !265, !262}
!4036 = !{!4037, !4038}
!4037 = !DILocalVariable(name: "arg", arg: 1, scope: !4033, file: !638, line: 1055, type: !265)
!4038 = !DILocalVariable(name: "argsize", arg: 2, scope: !4033, file: !638, line: 1055, type: !262)
!4039 = !DILocation(line: 0, scope: !4033)
!4040 = !DILocation(line: 0, scope: !4023, inlinedAt: !4041)
!4041 = distinct !DILocation(line: 1057, column: 10, scope: !4033)
!4042 = !DILocation(line: 1051, column: 10, scope: !4023, inlinedAt: !4041)
!4043 = !DILocation(line: 1057, column: 3, scope: !4033)
!4044 = distinct !DISubprogram(name: "quote_n", scope: !638, file: !638, line: 1061, type: !4045, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !4047)
!4045 = !DISubroutineType(types: !4046)
!4046 = !{!265, !260, !265}
!4047 = !{!4048, !4049}
!4048 = !DILocalVariable(name: "n", arg: 1, scope: !4044, file: !638, line: 1061, type: !260)
!4049 = !DILocalVariable(name: "arg", arg: 2, scope: !4044, file: !638, line: 1061, type: !265)
!4050 = !DILocation(line: 0, scope: !4044)
!4051 = !DILocation(line: 0, scope: !4023, inlinedAt: !4052)
!4052 = distinct !DILocation(line: 1063, column: 10, scope: !4044)
!4053 = !DILocation(line: 1051, column: 10, scope: !4023, inlinedAt: !4052)
!4054 = !DILocation(line: 1063, column: 3, scope: !4044)
!4055 = distinct !DISubprogram(name: "quote", scope: !638, file: !638, line: 1067, type: !2315, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !662, retainedNodes: !4056)
!4056 = !{!4057}
!4057 = !DILocalVariable(name: "arg", arg: 1, scope: !4055, file: !638, line: 1067, type: !265)
!4058 = !DILocation(line: 0, scope: !4055)
!4059 = !DILocation(line: 0, scope: !4044, inlinedAt: !4060)
!4060 = distinct !DILocation(line: 1069, column: 10, scope: !4055)
!4061 = !DILocation(line: 0, scope: !4023, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 1063, column: 10, scope: !4044, inlinedAt: !4060)
!4063 = !DILocation(line: 1051, column: 10, scope: !4023, inlinedAt: !4062)
!4064 = !DILocation(line: 1069, column: 3, scope: !4055)
!4065 = distinct !DISubprogram(name: "strintcmp", scope: !869, file: !869, line: 31, type: !1184, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4066)
!4066 = !{!4067, !4068}
!4067 = !DILocalVariable(name: "a", arg: 1, scope: !4065, file: !869, line: 31, type: !265)
!4068 = !DILocalVariable(name: "b", arg: 2, scope: !4065, file: !869, line: 31, type: !265)
!4069 = !DILocation(line: 0, scope: !4065)
!4070 = !DILocalVariable(name: "a", arg: 1, scope: !4071, file: !4072, line: 105, type: !265)
!4071 = distinct !DISubprogram(name: "numcompare", scope: !4072, file: !4072, line: 105, type: !4073, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4075)
!4072 = !DIFile(filename: "lib/strnumcmp-in.h", directory: "/src", checksumkind: CSK_MD5, checksum: "f69f23aa922f1f0bf768a1237830bd5f")
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!260, !265, !265, !260, !260}
!4075 = !{!4070, !4076, !4077, !4078, !4079, !4080, !4081, !4082, !4083}
!4076 = !DILocalVariable(name: "b", arg: 2, scope: !4071, file: !4072, line: 105, type: !265)
!4077 = !DILocalVariable(name: "decimal_point", arg: 3, scope: !4071, file: !4072, line: 106, type: !260)
!4078 = !DILocalVariable(name: "thousands_sep", arg: 4, scope: !4071, file: !4072, line: 106, type: !260)
!4079 = !DILocalVariable(name: "tmpa", scope: !4071, file: !4072, line: 108, type: !4)
!4080 = !DILocalVariable(name: "tmpb", scope: !4071, file: !4072, line: 109, type: !4)
!4081 = !DILocalVariable(name: "tmp", scope: !4071, file: !4072, line: 110, type: !260)
!4082 = !DILocalVariable(name: "log_a", scope: !4071, file: !4072, line: 111, type: !262)
!4083 = !DILocalVariable(name: "log_b", scope: !4071, file: !4072, line: 112, type: !262)
!4084 = !DILocation(line: 0, scope: !4071, inlinedAt: !4085)
!4085 = distinct !DILocation(line: 33, column: 10, scope: !4065)
!4086 = !DILocation(line: 108, column: 15, scope: !4071, inlinedAt: !4085)
!4087 = !DILocation(line: 109, column: 15, scope: !4071, inlinedAt: !4085)
!4088 = !DILocation(line: 114, column: 12, scope: !4089, inlinedAt: !4085)
!4089 = distinct !DILexicalBlock(scope: !4071, file: !4072, line: 114, column: 7)
!4090 = !DILocation(line: 114, column: 7, scope: !4071, inlinedAt: !4085)
!4091 = !DILocation(line: 117, column: 17, scope: !4092, inlinedAt: !4085)
!4092 = distinct !DILexicalBlock(scope: !4089, file: !4072, line: 115, column: 5)
!4093 = !DILocation(line: 117, column: 16, scope: !4092, inlinedAt: !4085)
!4094 = !DILocation(line: 118, column: 19, scope: !4092, inlinedAt: !4085)
!4095 = !DILocation(line: 117, column: 9, scope: !4092, inlinedAt: !4085)
!4096 = distinct !{!4096, !4097, !4098, !1099}
!4097 = !DILocation(line: 116, column: 7, scope: !4092, inlinedAt: !4085)
!4098 = !DILocation(line: 118, column: 59, scope: !4092, inlinedAt: !4085)
!4099 = !DILocation(line: 119, column: 16, scope: !4100, inlinedAt: !4085)
!4100 = distinct !DILexicalBlock(scope: !4092, file: !4072, line: 119, column: 11)
!4101 = !DILocation(line: 119, column: 11, scope: !4092, inlinedAt: !4085)
!4102 = !DILocation(line: 125, column: 26, scope: !4103, inlinedAt: !4085)
!4103 = distinct !DILexicalBlock(scope: !4104, file: !4072, line: 125, column: 15)
!4104 = distinct !DILexicalBlock(scope: !4100, file: !4072, line: 120, column: 9)
!4105 = !DILocalVariable(name: "c", arg: 1, scope: !4106, file: !4107, line: 233, type: !260)
!4106 = distinct !DISubprogram(name: "c_isdigit", scope: !4107, file: !4107, line: 233, type: !1254, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !868, retainedNodes: !4108)
!4107 = !DIFile(filename: "lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!4108 = !{!4105}
!4109 = !DILocation(line: 0, scope: !4106, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 125, column: 15, scope: !4103, inlinedAt: !4085)
!4111 = !DILocation(line: 235, column: 3, scope: !4106, inlinedAt: !4110)
!4112 = !DILocation(line: 125, column: 15, scope: !4104, inlinedAt: !4085)
!4113 = !DILocation(line: 127, column: 23, scope: !4104, inlinedAt: !4085)
!4114 = !DILocation(line: 127, column: 11, scope: !4104, inlinedAt: !4085)
!4115 = !DILocation(line: 128, column: 21, scope: !4104, inlinedAt: !4085)
!4116 = !DILocation(line: 128, column: 20, scope: !4104, inlinedAt: !4085)
!4117 = distinct !{!4117, !4114, !4118, !1099}
!4118 = !DILocation(line: 128, column: 23, scope: !4104, inlinedAt: !4085)
!4119 = !DILocation(line: 133, column: 31, scope: !4104, inlinedAt: !4085)
!4120 = !DILocation(line: 0, scope: !4106, inlinedAt: !4121)
!4121 = distinct !DILocation(line: 133, column: 20, scope: !4104, inlinedAt: !4085)
!4122 = !DILocation(line: 235, column: 3, scope: !4106, inlinedAt: !4121)
!4123 = !DILocation(line: 133, column: 20, scope: !4104, inlinedAt: !4085)
!4124 = !DILocation(line: 133, column: 11, scope: !4104, inlinedAt: !4085)
!4125 = !DILocation(line: 136, column: 17, scope: !4092, inlinedAt: !4085)
!4126 = !DILocation(line: 136, column: 16, scope: !4092, inlinedAt: !4085)
!4127 = !DILocation(line: 137, column: 19, scope: !4092, inlinedAt: !4085)
!4128 = !DILocation(line: 136, column: 9, scope: !4092, inlinedAt: !4085)
!4129 = distinct !{!4129, !4130, !4131, !1099}
!4130 = !DILocation(line: 135, column: 7, scope: !4092, inlinedAt: !4085)
!4131 = !DILocation(line: 137, column: 59, scope: !4092, inlinedAt: !4085)
!4132 = !DILocation(line: 139, column: 14, scope: !4092, inlinedAt: !4085)
!4133 = !DILocation(line: 139, column: 19, scope: !4092, inlinedAt: !4085)
!4134 = !DILocation(line: 0, scope: !4106, inlinedAt: !4135)
!4135 = distinct !DILocation(line: 139, column: 30, scope: !4092, inlinedAt: !4085)
!4136 = !DILocation(line: 139, column: 27, scope: !4092, inlinedAt: !4085)
!4137 = !DILocation(line: 142, column: 21, scope: !4138, inlinedAt: !4085)
!4138 = distinct !DILexicalBlock(scope: !4092, file: !4072, line: 140, column: 9)
!4139 = !DILocation(line: 142, column: 20, scope: !4138, inlinedAt: !4085)
!4140 = !DILocation(line: 145, column: 21, scope: !4138, inlinedAt: !4085)
!4141 = !DILocation(line: 145, column: 20, scope: !4138, inlinedAt: !4085)
!4142 = distinct !{!4142, !4143, !4144, !1099}
!4143 = !DILocation(line: 139, column: 7, scope: !4092, inlinedAt: !4085)
!4144 = !DILocation(line: 147, column: 9, scope: !4092, inlinedAt: !4085)
!4145 = !DILocation(line: 235, column: 3, scope: !4106, inlinedAt: !4146)
!4146 = distinct !DILocation(line: 155, column: 23, scope: !4147, inlinedAt: !4085)
!4147 = distinct !DILexicalBlock(scope: !4148, file: !4072, line: 155, column: 7)
!4148 = distinct !DILexicalBlock(scope: !4092, file: !4072, line: 155, column: 7)
!4149 = !DILocation(line: 0, scope: !4092, inlinedAt: !4085)
!4150 = !DILocation(line: 139, column: 22, scope: !4092, inlinedAt: !4085)
!4151 = !DILocation(line: 153, column: 18, scope: !4092, inlinedAt: !4085)
!4152 = !DILocation(line: 0, scope: !4106, inlinedAt: !4146)
!4153 = !DILocation(line: 155, column: 7, scope: !4148, inlinedAt: !4085)
!4154 = !DILocation(line: 155, scope: !4148, inlinedAt: !4085)
!4155 = !DILocation(line: 0, scope: !4106, inlinedAt: !4156)
!4156 = distinct !DILocation(line: 160, column: 23, scope: !4157, inlinedAt: !4085)
!4157 = distinct !DILexicalBlock(scope: !4158, file: !4072, line: 160, column: 7)
!4158 = distinct !DILexicalBlock(scope: !4092, file: !4072, line: 160, column: 7)
!4159 = !DILocation(line: 235, column: 3, scope: !4106, inlinedAt: !4156)
!4160 = !DILocation(line: 160, column: 7, scope: !4158, inlinedAt: !4085)
!4161 = !DILocation(line: 157, column: 19, scope: !4147, inlinedAt: !4085)
!4162 = !DILocation(line: 157, column: 18, scope: !4147, inlinedAt: !4085)
!4163 = !DILocation(line: 155, column: 41, scope: !4147, inlinedAt: !4085)
!4164 = !DILocation(line: 155, column: 34, scope: !4147, inlinedAt: !4085)
!4165 = distinct !{!4165, !4153, !4166, !1099}
!4166 = !DILocation(line: 158, column: 37, scope: !4148, inlinedAt: !4085)
!4167 = !DILocation(line: 162, column: 19, scope: !4157, inlinedAt: !4085)
!4168 = !DILocation(line: 162, column: 18, scope: !4157, inlinedAt: !4085)
!4169 = !DILocation(line: 160, column: 41, scope: !4157, inlinedAt: !4085)
!4170 = !DILocation(line: 160, column: 34, scope: !4157, inlinedAt: !4085)
!4171 = distinct !{!4171, !4160, !4172, !1099}
!4172 = !DILocation(line: 163, column: 37, scope: !4158, inlinedAt: !4085)
!4173 = !DILocation(line: 160, scope: !4158, inlinedAt: !4085)
!4174 = !DILocation(line: 165, column: 17, scope: !4175, inlinedAt: !4085)
!4175 = distinct !DILexicalBlock(scope: !4092, file: !4072, line: 165, column: 11)
!4176 = !DILocation(line: 165, column: 11, scope: !4092, inlinedAt: !4085)
!4177 = !DILocation(line: 166, column: 22, scope: !4175, inlinedAt: !4085)
!4178 = !DILocation(line: 166, column: 16, scope: !4175, inlinedAt: !4085)
!4179 = !DILocation(line: 166, column: 9, scope: !4175, inlinedAt: !4085)
!4180 = !DILocation(line: 168, column: 12, scope: !4181, inlinedAt: !4085)
!4181 = distinct !DILexicalBlock(scope: !4092, file: !4072, line: 168, column: 11)
!4182 = !DILocation(line: 173, column: 17, scope: !4183, inlinedAt: !4085)
!4183 = distinct !DILexicalBlock(scope: !4089, file: !4072, line: 173, column: 12)
!4184 = !DILocation(line: 173, column: 12, scope: !4089, inlinedAt: !4085)
!4185 = !DILocation(line: 194, column: 19, scope: !4186, inlinedAt: !4085)
!4186 = distinct !DILexicalBlock(scope: !4183, file: !4072, line: 193, column: 5)
!4187 = !DILocation(line: 194, column: 7, scope: !4186, inlinedAt: !4085)
!4188 = !DILocation(line: 176, column: 17, scope: !4189, inlinedAt: !4085)
!4189 = distinct !DILexicalBlock(scope: !4183, file: !4072, line: 174, column: 5)
!4190 = !DILocation(line: 176, column: 16, scope: !4189, inlinedAt: !4085)
!4191 = !DILocation(line: 177, column: 19, scope: !4189, inlinedAt: !4085)
!4192 = !DILocation(line: 176, column: 9, scope: !4189, inlinedAt: !4085)
!4193 = distinct !{!4193, !4194, !4195, !1099}
!4194 = !DILocation(line: 175, column: 7, scope: !4189, inlinedAt: !4085)
!4195 = !DILocation(line: 177, column: 59, scope: !4189, inlinedAt: !4085)
!4196 = !DILocation(line: 182, column: 22, scope: !4197, inlinedAt: !4085)
!4197 = distinct !DILexicalBlock(scope: !4189, file: !4072, line: 182, column: 11)
!4198 = !DILocation(line: 0, scope: !4106, inlinedAt: !4199)
!4199 = distinct !DILocation(line: 182, column: 11, scope: !4197, inlinedAt: !4085)
!4200 = !DILocation(line: 235, column: 3, scope: !4106, inlinedAt: !4199)
!4201 = !DILocation(line: 182, column: 11, scope: !4189, inlinedAt: !4085)
!4202 = !DILocation(line: 184, column: 19, scope: !4189, inlinedAt: !4085)
!4203 = !DILocation(line: 184, column: 7, scope: !4189, inlinedAt: !4085)
!4204 = !DILocation(line: 185, column: 17, scope: !4189, inlinedAt: !4085)
!4205 = !DILocation(line: 185, column: 16, scope: !4189, inlinedAt: !4085)
!4206 = distinct !{!4206, !4203, !4207, !1099}
!4207 = !DILocation(line: 185, column: 19, scope: !4189, inlinedAt: !4085)
!4208 = !DILocation(line: 190, column: 25, scope: !4189, inlinedAt: !4085)
!4209 = !DILocation(line: 0, scope: !4106, inlinedAt: !4210)
!4210 = distinct !DILocation(line: 190, column: 14, scope: !4189, inlinedAt: !4085)
!4211 = !DILocation(line: 235, column: 3, scope: !4106, inlinedAt: !4210)
!4212 = !DILocation(line: 190, column: 14, scope: !4189, inlinedAt: !4085)
!4213 = !DILocation(line: 190, column: 7, scope: !4189, inlinedAt: !4085)
!4214 = !DILocation(line: 196, column: 19, scope: !4186, inlinedAt: !4085)
!4215 = !DILocation(line: 196, column: 7, scope: !4186, inlinedAt: !4085)
!4216 = !DILocation(line: 195, column: 17, scope: !4186, inlinedAt: !4085)
!4217 = !DILocation(line: 195, column: 16, scope: !4186, inlinedAt: !4085)
!4218 = distinct !{!4218, !4187, !4219, !1099}
!4219 = !DILocation(line: 195, column: 19, scope: !4186, inlinedAt: !4085)
!4220 = !DILocation(line: 199, column: 14, scope: !4186, inlinedAt: !4085)
!4221 = !DILocation(line: 199, column: 19, scope: !4186, inlinedAt: !4085)
!4222 = !DILocation(line: 0, scope: !4106, inlinedAt: !4223)
!4223 = distinct !DILocation(line: 199, column: 30, scope: !4186, inlinedAt: !4085)
!4224 = !DILocation(line: 199, column: 27, scope: !4186, inlinedAt: !4085)
!4225 = !DILocation(line: 197, column: 17, scope: !4186, inlinedAt: !4085)
!4226 = !DILocation(line: 197, column: 16, scope: !4186, inlinedAt: !4085)
!4227 = distinct !{!4227, !4215, !4228, !1099}
!4228 = !DILocation(line: 197, column: 19, scope: !4186, inlinedAt: !4085)
!4229 = !DILocation(line: 202, column: 21, scope: !4230, inlinedAt: !4085)
!4230 = distinct !DILexicalBlock(scope: !4186, file: !4072, line: 200, column: 9)
!4231 = !DILocation(line: 202, column: 20, scope: !4230, inlinedAt: !4085)
!4232 = !DILocation(line: 205, column: 21, scope: !4230, inlinedAt: !4085)
!4233 = !DILocation(line: 205, column: 20, scope: !4230, inlinedAt: !4085)
!4234 = distinct !{!4234, !4235, !4236, !1099}
!4235 = !DILocation(line: 199, column: 7, scope: !4186, inlinedAt: !4085)
!4236 = !DILocation(line: 207, column: 9, scope: !4186, inlinedAt: !4085)
!4237 = !DILocation(line: 235, column: 3, scope: !4106, inlinedAt: !4238)
!4238 = distinct !DILocation(line: 215, column: 23, scope: !4239, inlinedAt: !4085)
!4239 = distinct !DILexicalBlock(scope: !4240, file: !4072, line: 215, column: 7)
!4240 = distinct !DILexicalBlock(scope: !4186, file: !4072, line: 215, column: 7)
!4241 = !DILocation(line: 199, column: 22, scope: !4186, inlinedAt: !4085)
!4242 = !DILocation(line: 213, column: 18, scope: !4186, inlinedAt: !4085)
!4243 = !DILocation(line: 0, scope: !4106, inlinedAt: !4238)
!4244 = !DILocation(line: 215, column: 7, scope: !4240, inlinedAt: !4085)
!4245 = !DILocation(line: 215, scope: !4240, inlinedAt: !4085)
!4246 = !DILocation(line: 0, scope: !4106, inlinedAt: !4247)
!4247 = distinct !DILocation(line: 220, column: 23, scope: !4248, inlinedAt: !4085)
!4248 = distinct !DILexicalBlock(scope: !4249, file: !4072, line: 220, column: 7)
!4249 = distinct !DILexicalBlock(scope: !4186, file: !4072, line: 220, column: 7)
!4250 = !DILocation(line: 235, column: 3, scope: !4106, inlinedAt: !4247)
!4251 = !DILocation(line: 220, column: 7, scope: !4249, inlinedAt: !4085)
!4252 = !DILocation(line: 217, column: 19, scope: !4239, inlinedAt: !4085)
!4253 = !DILocation(line: 217, column: 18, scope: !4239, inlinedAt: !4085)
!4254 = !DILocation(line: 215, column: 41, scope: !4239, inlinedAt: !4085)
!4255 = !DILocation(line: 215, column: 34, scope: !4239, inlinedAt: !4085)
!4256 = distinct !{!4256, !4244, !4257, !1099}
!4257 = !DILocation(line: 218, column: 37, scope: !4240, inlinedAt: !4085)
!4258 = !DILocation(line: 222, column: 19, scope: !4248, inlinedAt: !4085)
!4259 = !DILocation(line: 222, column: 18, scope: !4248, inlinedAt: !4085)
!4260 = !DILocation(line: 220, column: 41, scope: !4248, inlinedAt: !4085)
!4261 = !DILocation(line: 220, column: 34, scope: !4248, inlinedAt: !4085)
!4262 = distinct !{!4262, !4251, !4263, !1099}
!4263 = !DILocation(line: 223, column: 37, scope: !4249, inlinedAt: !4085)
!4264 = !DILocation(line: 220, scope: !4249, inlinedAt: !4085)
!4265 = !DILocation(line: 225, column: 17, scope: !4266, inlinedAt: !4085)
!4266 = distinct !DILexicalBlock(scope: !4186, file: !4072, line: 225, column: 11)
!4267 = !DILocation(line: 225, column: 11, scope: !4186, inlinedAt: !4085)
!4268 = !DILocation(line: 226, column: 22, scope: !4266, inlinedAt: !4085)
!4269 = !DILocation(line: 226, column: 16, scope: !4266, inlinedAt: !4085)
!4270 = !DILocation(line: 226, column: 9, scope: !4266, inlinedAt: !4085)
!4271 = !DILocation(line: 228, column: 12, scope: !4272, inlinedAt: !4085)
!4272 = distinct !DILexicalBlock(scope: !4186, file: !4072, line: 228, column: 11)
!4273 = !DILocation(line: 0, scope: !4186, inlinedAt: !4085)
!4274 = !DILocation(line: 0, scope: !4089, inlinedAt: !4085)
!4275 = !DILocation(line: 33, column: 3, scope: !4065)
!4276 = distinct !DISubprogram(name: "version_etc_arn", scope: !758, file: !758, line: 61, type: !4277, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !4314)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{null, !4279, !265, !265, !265, !4313, !262}
!4279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4280, size: 64)
!4280 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !312, line: 7, baseType: !4281)
!4281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !314, line: 49, size: 1728, elements: !4282)
!4282 = !{!4283, !4284, !4285, !4286, !4287, !4288, !4289, !4290, !4291, !4292, !4293, !4294, !4295, !4296, !4298, !4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312}
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4281, file: !314, line: 51, baseType: !260, size: 32)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4281, file: !314, line: 54, baseType: !318, size: 64, offset: 64)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4281, file: !314, line: 55, baseType: !318, size: 64, offset: 128)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4281, file: !314, line: 56, baseType: !318, size: 64, offset: 192)
!4287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4281, file: !314, line: 57, baseType: !318, size: 64, offset: 256)
!4288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4281, file: !314, line: 58, baseType: !318, size: 64, offset: 320)
!4289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4281, file: !314, line: 59, baseType: !318, size: 64, offset: 384)
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4281, file: !314, line: 60, baseType: !318, size: 64, offset: 448)
!4291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4281, file: !314, line: 61, baseType: !318, size: 64, offset: 512)
!4292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4281, file: !314, line: 64, baseType: !318, size: 64, offset: 576)
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4281, file: !314, line: 65, baseType: !318, size: 64, offset: 640)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4281, file: !314, line: 66, baseType: !318, size: 64, offset: 704)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4281, file: !314, line: 68, baseType: !330, size: 64, offset: 768)
!4296 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4281, file: !314, line: 70, baseType: !4297, size: 64, offset: 832)
!4297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4281, size: 64)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4281, file: !314, line: 72, baseType: !260, size: 32, offset: 896)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4281, file: !314, line: 73, baseType: !260, size: 32, offset: 928)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4281, file: !314, line: 74, baseType: !337, size: 64, offset: 960)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4281, file: !314, line: 77, baseType: !261, size: 16, offset: 1024)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4281, file: !314, line: 78, baseType: !340, size: 8, offset: 1040)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4281, file: !314, line: 79, baseType: !206, size: 8, offset: 1048)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4281, file: !314, line: 81, baseType: !343, size: 64, offset: 1088)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4281, file: !314, line: 89, baseType: !346, size: 64, offset: 1152)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4281, file: !314, line: 91, baseType: !348, size: 64, offset: 1216)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4281, file: !314, line: 92, baseType: !351, size: 64, offset: 1280)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4281, file: !314, line: 93, baseType: !4297, size: 64, offset: 1344)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4281, file: !314, line: 94, baseType: !268, size: 64, offset: 1408)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4281, file: !314, line: 95, baseType: !262, size: 64, offset: 1472)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4281, file: !314, line: 96, baseType: !260, size: 32, offset: 1536)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4281, file: !314, line: 98, baseType: !358, size: 160, offset: 1568)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!4314 = !{!4315, !4316, !4317, !4318, !4319, !4320}
!4315 = !DILocalVariable(name: "stream", arg: 1, scope: !4276, file: !758, line: 61, type: !4279)
!4316 = !DILocalVariable(name: "command_name", arg: 2, scope: !4276, file: !758, line: 62, type: !265)
!4317 = !DILocalVariable(name: "package", arg: 3, scope: !4276, file: !758, line: 62, type: !265)
!4318 = !DILocalVariable(name: "version", arg: 4, scope: !4276, file: !758, line: 63, type: !265)
!4319 = !DILocalVariable(name: "authors", arg: 5, scope: !4276, file: !758, line: 64, type: !4313)
!4320 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4276, file: !758, line: 64, type: !262)
!4321 = !DILocation(line: 0, scope: !4276)
!4322 = !DILocation(line: 66, column: 7, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4276, file: !758, line: 66, column: 7)
!4324 = !DILocation(line: 66, column: 7, scope: !4276)
!4325 = !DILocation(line: 67, column: 5, scope: !4323)
!4326 = !DILocation(line: 69, column: 5, scope: !4323)
!4327 = !DILocation(line: 83, column: 3, scope: !4276)
!4328 = !DILocation(line: 85, column: 3, scope: !4276)
!4329 = !DILocation(line: 88, column: 3, scope: !4276)
!4330 = !DILocation(line: 95, column: 3, scope: !4276)
!4331 = !DILocation(line: 97, column: 3, scope: !4276)
!4332 = !DILocation(line: 105, column: 7, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4276, file: !758, line: 98, column: 5)
!4334 = !DILocation(line: 106, column: 7, scope: !4333)
!4335 = !DILocation(line: 109, column: 7, scope: !4333)
!4336 = !DILocation(line: 110, column: 7, scope: !4333)
!4337 = !DILocation(line: 113, column: 7, scope: !4333)
!4338 = !DILocation(line: 115, column: 7, scope: !4333)
!4339 = !DILocation(line: 120, column: 7, scope: !4333)
!4340 = !DILocation(line: 122, column: 7, scope: !4333)
!4341 = !DILocation(line: 127, column: 7, scope: !4333)
!4342 = !DILocation(line: 129, column: 7, scope: !4333)
!4343 = !DILocation(line: 134, column: 7, scope: !4333)
!4344 = !DILocation(line: 137, column: 7, scope: !4333)
!4345 = !DILocation(line: 142, column: 7, scope: !4333)
!4346 = !DILocation(line: 145, column: 7, scope: !4333)
!4347 = !DILocation(line: 150, column: 7, scope: !4333)
!4348 = !DILocation(line: 154, column: 7, scope: !4333)
!4349 = !DILocation(line: 159, column: 7, scope: !4333)
!4350 = !DILocation(line: 163, column: 7, scope: !4333)
!4351 = !DILocation(line: 170, column: 7, scope: !4333)
!4352 = !DILocation(line: 174, column: 7, scope: !4333)
!4353 = !DILocation(line: 176, column: 1, scope: !4276)
!4354 = distinct !DISubprogram(name: "version_etc_ar", scope: !758, file: !758, line: 183, type: !4355, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !4357)
!4355 = !DISubroutineType(types: !4356)
!4356 = !{null, !4279, !265, !265, !265, !4313}
!4357 = !{!4358, !4359, !4360, !4361, !4362, !4363}
!4358 = !DILocalVariable(name: "stream", arg: 1, scope: !4354, file: !758, line: 183, type: !4279)
!4359 = !DILocalVariable(name: "command_name", arg: 2, scope: !4354, file: !758, line: 184, type: !265)
!4360 = !DILocalVariable(name: "package", arg: 3, scope: !4354, file: !758, line: 184, type: !265)
!4361 = !DILocalVariable(name: "version", arg: 4, scope: !4354, file: !758, line: 185, type: !265)
!4362 = !DILocalVariable(name: "authors", arg: 5, scope: !4354, file: !758, line: 185, type: !4313)
!4363 = !DILocalVariable(name: "n_authors", scope: !4354, file: !758, line: 187, type: !262)
!4364 = !DILocation(line: 0, scope: !4354)
!4365 = !DILocation(line: 189, column: 8, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4354, file: !758, line: 189, column: 3)
!4367 = !DILocation(line: 189, scope: !4366)
!4368 = !DILocation(line: 189, column: 23, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4366, file: !758, line: 189, column: 3)
!4370 = !DILocation(line: 189, column: 3, scope: !4366)
!4371 = !DILocation(line: 189, column: 52, scope: !4369)
!4372 = distinct !{!4372, !4370, !4373, !1099}
!4373 = !DILocation(line: 190, column: 5, scope: !4366)
!4374 = !DILocation(line: 191, column: 3, scope: !4354)
!4375 = !DILocation(line: 192, column: 1, scope: !4354)
!4376 = distinct !DISubprogram(name: "version_etc_va", scope: !758, file: !758, line: 199, type: !4377, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !4386)
!4377 = !DISubroutineType(types: !4378)
!4378 = !{null, !4279, !265, !265, !265, !4379}
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4381)
!4381 = !{!4382, !4383, !4384, !4385}
!4382 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4380, file: !758, line: 192, baseType: !224, size: 32)
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4380, file: !758, line: 192, baseType: !224, size: 32, offset: 32)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4380, file: !758, line: 192, baseType: !268, size: 64, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4380, file: !758, line: 192, baseType: !268, size: 64, offset: 128)
!4386 = !{!4387, !4388, !4389, !4390, !4391, !4392, !4393}
!4387 = !DILocalVariable(name: "stream", arg: 1, scope: !4376, file: !758, line: 199, type: !4279)
!4388 = !DILocalVariable(name: "command_name", arg: 2, scope: !4376, file: !758, line: 200, type: !265)
!4389 = !DILocalVariable(name: "package", arg: 3, scope: !4376, file: !758, line: 200, type: !265)
!4390 = !DILocalVariable(name: "version", arg: 4, scope: !4376, file: !758, line: 201, type: !265)
!4391 = !DILocalVariable(name: "authors", arg: 5, scope: !4376, file: !758, line: 201, type: !4379)
!4392 = !DILocalVariable(name: "n_authors", scope: !4376, file: !758, line: 203, type: !262)
!4393 = !DILocalVariable(name: "authtab", scope: !4376, file: !758, line: 204, type: !4394)
!4394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 640, elements: !212)
!4395 = distinct !DIAssignID()
!4396 = !DILocation(line: 0, scope: !4376)
!4397 = !DILocation(line: 204, column: 3, scope: !4376)
!4398 = !DILocation(line: 208, column: 35, scope: !4399)
!4399 = distinct !DILexicalBlock(scope: !4400, file: !758, line: 206, column: 3)
!4400 = distinct !DILexicalBlock(scope: !4376, file: !758, line: 206, column: 3)
!4401 = !DILocation(line: 208, column: 33, scope: !4399)
!4402 = !DILocation(line: 208, column: 67, scope: !4399)
!4403 = !DILocation(line: 206, column: 3, scope: !4400)
!4404 = !DILocation(line: 208, column: 14, scope: !4399)
!4405 = !DILocation(line: 0, scope: !4400)
!4406 = !DILocation(line: 211, column: 3, scope: !4376)
!4407 = !DILocation(line: 213, column: 1, scope: !4376)
!4408 = distinct !DISubprogram(name: "version_etc", scope: !758, file: !758, line: 230, type: !4409, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870, retainedNodes: !4411)
!4409 = !DISubroutineType(types: !4410)
!4410 = !{null, !4279, !265, !265, !265, null}
!4411 = !{!4412, !4413, !4414, !4415, !4416}
!4412 = !DILocalVariable(name: "stream", arg: 1, scope: !4408, file: !758, line: 230, type: !4279)
!4413 = !DILocalVariable(name: "command_name", arg: 2, scope: !4408, file: !758, line: 231, type: !265)
!4414 = !DILocalVariable(name: "package", arg: 3, scope: !4408, file: !758, line: 231, type: !265)
!4415 = !DILocalVariable(name: "version", arg: 4, scope: !4408, file: !758, line: 232, type: !265)
!4416 = !DILocalVariable(name: "authors", scope: !4408, file: !758, line: 234, type: !4417)
!4417 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1047, line: 52, baseType: !4418)
!4418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2599, line: 12, baseType: !4419)
!4419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !758, baseType: !4420)
!4420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4380, size: 192, elements: !207)
!4421 = distinct !DIAssignID()
!4422 = !DILocation(line: 0, scope: !4408)
!4423 = !DILocation(line: 234, column: 3, scope: !4408)
!4424 = !DILocation(line: 235, column: 3, scope: !4408)
!4425 = !DILocation(line: 236, column: 3, scope: !4408)
!4426 = !DILocation(line: 237, column: 3, scope: !4408)
!4427 = !DILocation(line: 238, column: 1, scope: !4408)
!4428 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !758, file: !758, line: 241, type: !624, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !870)
!4429 = !DILocation(line: 243, column: 3, scope: !4428)
!4430 = !DILocation(line: 248, column: 3, scope: !4428)
!4431 = !DILocation(line: 254, column: 3, scope: !4428)
!4432 = !DILocation(line: 259, column: 3, scope: !4428)
!4433 = !DILocation(line: 261, column: 1, scope: !4428)
!4434 = distinct !DISubprogram(name: "xnrealloc", scope: !4435, file: !4435, line: 147, type: !4436, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4438)
!4435 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4436 = !DISubroutineType(types: !4437)
!4437 = !{!268, !268, !262, !262}
!4438 = !{!4439, !4440, !4441}
!4439 = !DILocalVariable(name: "p", arg: 1, scope: !4434, file: !4435, line: 147, type: !268)
!4440 = !DILocalVariable(name: "n", arg: 2, scope: !4434, file: !4435, line: 147, type: !262)
!4441 = !DILocalVariable(name: "s", arg: 3, scope: !4434, file: !4435, line: 147, type: !262)
!4442 = !DILocation(line: 0, scope: !4434)
!4443 = !DILocalVariable(name: "p", arg: 1, scope: !4444, file: !878, line: 83, type: !268)
!4444 = distinct !DISubprogram(name: "xreallocarray", scope: !878, file: !878, line: 83, type: !4436, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4445)
!4445 = !{!4443, !4446, !4447}
!4446 = !DILocalVariable(name: "n", arg: 2, scope: !4444, file: !878, line: 83, type: !262)
!4447 = !DILocalVariable(name: "s", arg: 3, scope: !4444, file: !878, line: 83, type: !262)
!4448 = !DILocation(line: 0, scope: !4444, inlinedAt: !4449)
!4449 = distinct !DILocation(line: 149, column: 10, scope: !4434)
!4450 = !DILocation(line: 85, column: 25, scope: !4444, inlinedAt: !4449)
!4451 = !DILocalVariable(name: "p", arg: 1, scope: !4452, file: !878, line: 37, type: !268)
!4452 = distinct !DISubprogram(name: "check_nonnull", scope: !878, file: !878, line: 37, type: !4453, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4455)
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!268, !268}
!4455 = !{!4451}
!4456 = !DILocation(line: 0, scope: !4452, inlinedAt: !4457)
!4457 = distinct !DILocation(line: 85, column: 10, scope: !4444, inlinedAt: !4449)
!4458 = !DILocation(line: 39, column: 8, scope: !4459, inlinedAt: !4457)
!4459 = distinct !DILexicalBlock(scope: !4452, file: !878, line: 39, column: 7)
!4460 = !DILocation(line: 39, column: 7, scope: !4452, inlinedAt: !4457)
!4461 = !DILocation(line: 40, column: 5, scope: !4459, inlinedAt: !4457)
!4462 = !DILocation(line: 149, column: 3, scope: !4434)
!4463 = !DILocation(line: 0, scope: !4444)
!4464 = !DILocation(line: 85, column: 25, scope: !4444)
!4465 = !DILocation(line: 0, scope: !4452, inlinedAt: !4466)
!4466 = distinct !DILocation(line: 85, column: 10, scope: !4444)
!4467 = !DILocation(line: 39, column: 8, scope: !4459, inlinedAt: !4466)
!4468 = !DILocation(line: 39, column: 7, scope: !4452, inlinedAt: !4466)
!4469 = !DILocation(line: 40, column: 5, scope: !4459, inlinedAt: !4466)
!4470 = !DILocation(line: 85, column: 3, scope: !4444)
!4471 = distinct !DISubprogram(name: "xmalloc", scope: !878, file: !878, line: 47, type: !4472, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4474)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!268, !262}
!4474 = !{!4475}
!4475 = !DILocalVariable(name: "s", arg: 1, scope: !4471, file: !878, line: 47, type: !262)
!4476 = !DILocation(line: 0, scope: !4471)
!4477 = !DILocation(line: 49, column: 25, scope: !4471)
!4478 = !DILocation(line: 0, scope: !4452, inlinedAt: !4479)
!4479 = distinct !DILocation(line: 49, column: 10, scope: !4471)
!4480 = !DILocation(line: 39, column: 8, scope: !4459, inlinedAt: !4479)
!4481 = !DILocation(line: 39, column: 7, scope: !4452, inlinedAt: !4479)
!4482 = !DILocation(line: 40, column: 5, scope: !4459, inlinedAt: !4479)
!4483 = !DILocation(line: 49, column: 3, scope: !4471)
!4484 = !DISubprogram(name: "malloc", scope: !1179, file: !1179, line: 540, type: !4472, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4485 = distinct !DISubprogram(name: "ximalloc", scope: !878, file: !878, line: 53, type: !4486, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4488)
!4486 = !DISubroutineType(types: !4487)
!4487 = !{!268, !897}
!4488 = !{!4489}
!4489 = !DILocalVariable(name: "s", arg: 1, scope: !4485, file: !878, line: 53, type: !897)
!4490 = !DILocation(line: 0, scope: !4485)
!4491 = !DILocalVariable(name: "s", arg: 1, scope: !4492, file: !4493, line: 55, type: !897)
!4492 = distinct !DISubprogram(name: "imalloc", scope: !4493, file: !4493, line: 55, type: !4486, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4494)
!4493 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4494 = !{!4491}
!4495 = !DILocation(line: 0, scope: !4492, inlinedAt: !4496)
!4496 = distinct !DILocation(line: 55, column: 25, scope: !4485)
!4497 = !DILocation(line: 57, column: 26, scope: !4492, inlinedAt: !4496)
!4498 = !DILocation(line: 0, scope: !4452, inlinedAt: !4499)
!4499 = distinct !DILocation(line: 55, column: 10, scope: !4485)
!4500 = !DILocation(line: 39, column: 8, scope: !4459, inlinedAt: !4499)
!4501 = !DILocation(line: 39, column: 7, scope: !4452, inlinedAt: !4499)
!4502 = !DILocation(line: 40, column: 5, scope: !4459, inlinedAt: !4499)
!4503 = !DILocation(line: 55, column: 3, scope: !4485)
!4504 = distinct !DISubprogram(name: "xcharalloc", scope: !878, file: !878, line: 59, type: !4505, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4507)
!4505 = !DISubroutineType(types: !4506)
!4506 = !{!318, !262}
!4507 = !{!4508}
!4508 = !DILocalVariable(name: "n", arg: 1, scope: !4504, file: !878, line: 59, type: !262)
!4509 = !DILocation(line: 0, scope: !4504)
!4510 = !DILocation(line: 0, scope: !4471, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 61, column: 10, scope: !4504)
!4512 = !DILocation(line: 49, column: 25, scope: !4471, inlinedAt: !4511)
!4513 = !DILocation(line: 0, scope: !4452, inlinedAt: !4514)
!4514 = distinct !DILocation(line: 49, column: 10, scope: !4471, inlinedAt: !4511)
!4515 = !DILocation(line: 39, column: 8, scope: !4459, inlinedAt: !4514)
!4516 = !DILocation(line: 39, column: 7, scope: !4452, inlinedAt: !4514)
!4517 = !DILocation(line: 40, column: 5, scope: !4459, inlinedAt: !4514)
!4518 = !DILocation(line: 61, column: 3, scope: !4504)
!4519 = distinct !DISubprogram(name: "xrealloc", scope: !878, file: !878, line: 68, type: !4520, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4522)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!268, !268, !262}
!4522 = !{!4523, !4524}
!4523 = !DILocalVariable(name: "p", arg: 1, scope: !4519, file: !878, line: 68, type: !268)
!4524 = !DILocalVariable(name: "s", arg: 2, scope: !4519, file: !878, line: 68, type: !262)
!4525 = !DILocation(line: 0, scope: !4519)
!4526 = !DILocalVariable(name: "ptr", arg: 1, scope: !4527, file: !4528, line: 2057, type: !268)
!4527 = distinct !DISubprogram(name: "rpl_realloc", scope: !4528, file: !4528, line: 2057, type: !4520, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4529)
!4528 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4529 = !{!4526, !4530}
!4530 = !DILocalVariable(name: "size", arg: 2, scope: !4527, file: !4528, line: 2057, type: !262)
!4531 = !DILocation(line: 0, scope: !4527, inlinedAt: !4532)
!4532 = distinct !DILocation(line: 70, column: 25, scope: !4519)
!4533 = !DILocation(line: 2059, column: 24, scope: !4527, inlinedAt: !4532)
!4534 = !DILocation(line: 2059, column: 10, scope: !4527, inlinedAt: !4532)
!4535 = !DILocation(line: 0, scope: !4452, inlinedAt: !4536)
!4536 = distinct !DILocation(line: 70, column: 10, scope: !4519)
!4537 = !DILocation(line: 39, column: 8, scope: !4459, inlinedAt: !4536)
!4538 = !DILocation(line: 39, column: 7, scope: !4452, inlinedAt: !4536)
!4539 = !DILocation(line: 40, column: 5, scope: !4459, inlinedAt: !4536)
!4540 = !DILocation(line: 70, column: 3, scope: !4519)
!4541 = !DISubprogram(name: "realloc", scope: !1179, file: !1179, line: 551, type: !4520, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4542 = distinct !DISubprogram(name: "xirealloc", scope: !878, file: !878, line: 74, type: !4543, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4545)
!4543 = !DISubroutineType(types: !4544)
!4544 = !{!268, !268, !897}
!4545 = !{!4546, !4547}
!4546 = !DILocalVariable(name: "p", arg: 1, scope: !4542, file: !878, line: 74, type: !268)
!4547 = !DILocalVariable(name: "s", arg: 2, scope: !4542, file: !878, line: 74, type: !897)
!4548 = !DILocation(line: 0, scope: !4542)
!4549 = !DILocalVariable(name: "p", arg: 1, scope: !4550, file: !4493, line: 66, type: !268)
!4550 = distinct !DISubprogram(name: "irealloc", scope: !4493, file: !4493, line: 66, type: !4543, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4551)
!4551 = !{!4549, !4552}
!4552 = !DILocalVariable(name: "s", arg: 2, scope: !4550, file: !4493, line: 66, type: !897)
!4553 = !DILocation(line: 0, scope: !4550, inlinedAt: !4554)
!4554 = distinct !DILocation(line: 76, column: 25, scope: !4542)
!4555 = !DILocation(line: 0, scope: !4527, inlinedAt: !4556)
!4556 = distinct !DILocation(line: 68, column: 26, scope: !4550, inlinedAt: !4554)
!4557 = !DILocation(line: 2059, column: 24, scope: !4527, inlinedAt: !4556)
!4558 = !DILocation(line: 2059, column: 10, scope: !4527, inlinedAt: !4556)
!4559 = !DILocation(line: 0, scope: !4452, inlinedAt: !4560)
!4560 = distinct !DILocation(line: 76, column: 10, scope: !4542)
!4561 = !DILocation(line: 39, column: 8, scope: !4459, inlinedAt: !4560)
!4562 = !DILocation(line: 39, column: 7, scope: !4452, inlinedAt: !4560)
!4563 = !DILocation(line: 40, column: 5, scope: !4459, inlinedAt: !4560)
!4564 = !DILocation(line: 76, column: 3, scope: !4542)
!4565 = distinct !DISubprogram(name: "xireallocarray", scope: !878, file: !878, line: 89, type: !4566, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4568)
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!268, !268, !897, !897}
!4568 = !{!4569, !4570, !4571}
!4569 = !DILocalVariable(name: "p", arg: 1, scope: !4565, file: !878, line: 89, type: !268)
!4570 = !DILocalVariable(name: "n", arg: 2, scope: !4565, file: !878, line: 89, type: !897)
!4571 = !DILocalVariable(name: "s", arg: 3, scope: !4565, file: !878, line: 89, type: !897)
!4572 = !DILocation(line: 0, scope: !4565)
!4573 = !DILocalVariable(name: "p", arg: 1, scope: !4574, file: !4493, line: 98, type: !268)
!4574 = distinct !DISubprogram(name: "ireallocarray", scope: !4493, file: !4493, line: 98, type: !4566, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4575)
!4575 = !{!4573, !4576, !4577}
!4576 = !DILocalVariable(name: "n", arg: 2, scope: !4574, file: !4493, line: 98, type: !897)
!4577 = !DILocalVariable(name: "s", arg: 3, scope: !4574, file: !4493, line: 98, type: !897)
!4578 = !DILocation(line: 0, scope: !4574, inlinedAt: !4579)
!4579 = distinct !DILocation(line: 91, column: 25, scope: !4565)
!4580 = !DILocation(line: 101, column: 13, scope: !4574, inlinedAt: !4579)
!4581 = !DILocation(line: 0, scope: !4452, inlinedAt: !4582)
!4582 = distinct !DILocation(line: 91, column: 10, scope: !4565)
!4583 = !DILocation(line: 39, column: 8, scope: !4459, inlinedAt: !4582)
!4584 = !DILocation(line: 39, column: 7, scope: !4452, inlinedAt: !4582)
!4585 = !DILocation(line: 40, column: 5, scope: !4459, inlinedAt: !4582)
!4586 = !DILocation(line: 91, column: 3, scope: !4565)
!4587 = distinct !DISubprogram(name: "xnmalloc", scope: !878, file: !878, line: 98, type: !4588, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4590)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!268, !262, !262}
!4590 = !{!4591, !4592}
!4591 = !DILocalVariable(name: "n", arg: 1, scope: !4587, file: !878, line: 98, type: !262)
!4592 = !DILocalVariable(name: "s", arg: 2, scope: !4587, file: !878, line: 98, type: !262)
!4593 = !DILocation(line: 0, scope: !4587)
!4594 = !DILocation(line: 0, scope: !4444, inlinedAt: !4595)
!4595 = distinct !DILocation(line: 100, column: 10, scope: !4587)
!4596 = !DILocation(line: 85, column: 25, scope: !4444, inlinedAt: !4595)
!4597 = !DILocation(line: 0, scope: !4452, inlinedAt: !4598)
!4598 = distinct !DILocation(line: 85, column: 10, scope: !4444, inlinedAt: !4595)
!4599 = !DILocation(line: 39, column: 8, scope: !4459, inlinedAt: !4598)
!4600 = !DILocation(line: 39, column: 7, scope: !4452, inlinedAt: !4598)
!4601 = !DILocation(line: 40, column: 5, scope: !4459, inlinedAt: !4598)
!4602 = !DILocation(line: 100, column: 3, scope: !4587)
!4603 = distinct !DISubprogram(name: "xinmalloc", scope: !878, file: !878, line: 104, type: !4604, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4606)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!268, !897, !897}
!4606 = !{!4607, !4608}
!4607 = !DILocalVariable(name: "n", arg: 1, scope: !4603, file: !878, line: 104, type: !897)
!4608 = !DILocalVariable(name: "s", arg: 2, scope: !4603, file: !878, line: 104, type: !897)
!4609 = !DILocation(line: 0, scope: !4603)
!4610 = !DILocation(line: 0, scope: !4565, inlinedAt: !4611)
!4611 = distinct !DILocation(line: 106, column: 10, scope: !4603)
!4612 = !DILocation(line: 0, scope: !4574, inlinedAt: !4613)
!4613 = distinct !DILocation(line: 91, column: 25, scope: !4565, inlinedAt: !4611)
!4614 = !DILocation(line: 101, column: 13, scope: !4574, inlinedAt: !4613)
!4615 = !DILocation(line: 0, scope: !4452, inlinedAt: !4616)
!4616 = distinct !DILocation(line: 91, column: 10, scope: !4565, inlinedAt: !4611)
!4617 = !DILocation(line: 39, column: 8, scope: !4459, inlinedAt: !4616)
!4618 = !DILocation(line: 39, column: 7, scope: !4452, inlinedAt: !4616)
!4619 = !DILocation(line: 40, column: 5, scope: !4459, inlinedAt: !4616)
!4620 = !DILocation(line: 106, column: 3, scope: !4603)
!4621 = distinct !DISubprogram(name: "x2realloc", scope: !878, file: !878, line: 116, type: !4622, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4624)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{!268, !268, !884}
!4624 = !{!4625, !4626}
!4625 = !DILocalVariable(name: "p", arg: 1, scope: !4621, file: !878, line: 116, type: !268)
!4626 = !DILocalVariable(name: "ps", arg: 2, scope: !4621, file: !878, line: 116, type: !884)
!4627 = !DILocation(line: 0, scope: !4621)
!4628 = !DILocation(line: 0, scope: !881, inlinedAt: !4629)
!4629 = distinct !DILocation(line: 118, column: 10, scope: !4621)
!4630 = !DILocation(line: 178, column: 14, scope: !881, inlinedAt: !4629)
!4631 = !DILocation(line: 180, column: 9, scope: !4632, inlinedAt: !4629)
!4632 = distinct !DILexicalBlock(scope: !881, file: !878, line: 180, column: 7)
!4633 = !DILocation(line: 180, column: 7, scope: !881, inlinedAt: !4629)
!4634 = !DILocation(line: 182, column: 13, scope: !4635, inlinedAt: !4629)
!4635 = distinct !DILexicalBlock(scope: !4636, file: !878, line: 182, column: 11)
!4636 = distinct !DILexicalBlock(scope: !4632, file: !878, line: 181, column: 5)
!4637 = !DILocation(line: 182, column: 11, scope: !4636, inlinedAt: !4629)
!4638 = !DILocation(line: 197, column: 11, scope: !4639, inlinedAt: !4629)
!4639 = distinct !DILexicalBlock(scope: !4640, file: !878, line: 197, column: 11)
!4640 = distinct !DILexicalBlock(scope: !4632, file: !878, line: 195, column: 5)
!4641 = !DILocation(line: 197, column: 11, scope: !4640, inlinedAt: !4629)
!4642 = !DILocation(line: 198, column: 9, scope: !4639, inlinedAt: !4629)
!4643 = !DILocation(line: 0, scope: !4444, inlinedAt: !4644)
!4644 = distinct !DILocation(line: 201, column: 7, scope: !881, inlinedAt: !4629)
!4645 = !DILocation(line: 85, column: 25, scope: !4444, inlinedAt: !4644)
!4646 = !DILocation(line: 0, scope: !4452, inlinedAt: !4647)
!4647 = distinct !DILocation(line: 85, column: 10, scope: !4444, inlinedAt: !4644)
!4648 = !DILocation(line: 39, column: 8, scope: !4459, inlinedAt: !4647)
!4649 = !DILocation(line: 39, column: 7, scope: !4452, inlinedAt: !4647)
!4650 = !DILocation(line: 40, column: 5, scope: !4459, inlinedAt: !4647)
!4651 = !DILocation(line: 202, column: 7, scope: !881, inlinedAt: !4629)
!4652 = !DILocation(line: 118, column: 3, scope: !4621)
!4653 = !DILocation(line: 0, scope: !881)
!4654 = !DILocation(line: 178, column: 14, scope: !881)
!4655 = !DILocation(line: 180, column: 9, scope: !4632)
!4656 = !DILocation(line: 180, column: 7, scope: !881)
!4657 = !DILocation(line: 182, column: 13, scope: !4635)
!4658 = !DILocation(line: 182, column: 11, scope: !4636)
!4659 = !DILocation(line: 190, column: 30, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4635, file: !878, line: 183, column: 9)
!4661 = !DILocation(line: 191, column: 16, scope: !4660)
!4662 = !DILocation(line: 191, column: 13, scope: !4660)
!4663 = !DILocation(line: 192, column: 9, scope: !4660)
!4664 = !DILocation(line: 197, column: 11, scope: !4639)
!4665 = !DILocation(line: 197, column: 11, scope: !4640)
!4666 = !DILocation(line: 198, column: 9, scope: !4639)
!4667 = !DILocation(line: 0, scope: !4444, inlinedAt: !4668)
!4668 = distinct !DILocation(line: 201, column: 7, scope: !881)
!4669 = !DILocation(line: 85, column: 25, scope: !4444, inlinedAt: !4668)
!4670 = !DILocation(line: 0, scope: !4452, inlinedAt: !4671)
!4671 = distinct !DILocation(line: 85, column: 10, scope: !4444, inlinedAt: !4668)
!4672 = !DILocation(line: 39, column: 8, scope: !4459, inlinedAt: !4671)
!4673 = !DILocation(line: 39, column: 7, scope: !4452, inlinedAt: !4671)
!4674 = !DILocation(line: 40, column: 5, scope: !4459, inlinedAt: !4671)
!4675 = !DILocation(line: 202, column: 7, scope: !881)
!4676 = !DILocation(line: 203, column: 3, scope: !881)
!4677 = !DILocation(line: 0, scope: !893)
!4678 = !DILocation(line: 230, column: 14, scope: !893)
!4679 = !DILocation(line: 238, column: 7, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !893, file: !878, line: 238, column: 7)
!4681 = !DILocation(line: 238, column: 7, scope: !893)
!4682 = !DILocation(line: 240, column: 9, scope: !4683)
!4683 = distinct !DILexicalBlock(scope: !893, file: !878, line: 240, column: 7)
!4684 = !DILocation(line: 240, column: 18, scope: !4683)
!4685 = !DILocation(line: 253, column: 8, scope: !893)
!4686 = !DILocation(line: 256, column: 7, scope: !4687)
!4687 = distinct !DILexicalBlock(scope: !893, file: !878, line: 256, column: 7)
!4688 = !DILocation(line: 256, column: 7, scope: !893)
!4689 = !DILocation(line: 258, column: 27, scope: !4690)
!4690 = distinct !DILexicalBlock(scope: !4687, file: !878, line: 257, column: 5)
!4691 = !DILocation(line: 259, column: 50, scope: !4690)
!4692 = !DILocation(line: 259, column: 32, scope: !4690)
!4693 = !DILocation(line: 260, column: 5, scope: !4690)
!4694 = !DILocation(line: 262, column: 9, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !893, file: !878, line: 262, column: 7)
!4696 = !DILocation(line: 262, column: 7, scope: !893)
!4697 = !DILocation(line: 263, column: 9, scope: !4695)
!4698 = !DILocation(line: 263, column: 5, scope: !4695)
!4699 = !DILocation(line: 264, column: 9, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !893, file: !878, line: 264, column: 7)
!4701 = !DILocation(line: 264, column: 14, scope: !4700)
!4702 = !DILocation(line: 265, column: 7, scope: !4700)
!4703 = !DILocation(line: 265, column: 11, scope: !4700)
!4704 = !DILocation(line: 266, column: 11, scope: !4700)
!4705 = !DILocation(line: 267, column: 14, scope: !4700)
!4706 = !DILocation(line: 264, column: 7, scope: !893)
!4707 = !DILocation(line: 268, column: 5, scope: !4700)
!4708 = !DILocation(line: 0, scope: !4519, inlinedAt: !4709)
!4709 = distinct !DILocation(line: 269, column: 8, scope: !893)
!4710 = !DILocation(line: 0, scope: !4527, inlinedAt: !4711)
!4711 = distinct !DILocation(line: 70, column: 25, scope: !4519, inlinedAt: !4709)
!4712 = !DILocation(line: 2059, column: 24, scope: !4527, inlinedAt: !4711)
!4713 = !DILocation(line: 2059, column: 10, scope: !4527, inlinedAt: !4711)
!4714 = !DILocation(line: 0, scope: !4452, inlinedAt: !4715)
!4715 = distinct !DILocation(line: 70, column: 10, scope: !4519, inlinedAt: !4709)
!4716 = !DILocation(line: 39, column: 8, scope: !4459, inlinedAt: !4715)
!4717 = !DILocation(line: 39, column: 7, scope: !4452, inlinedAt: !4715)
!4718 = !DILocation(line: 40, column: 5, scope: !4459, inlinedAt: !4715)
!4719 = !DILocation(line: 270, column: 7, scope: !893)
!4720 = !DILocation(line: 271, column: 3, scope: !893)
!4721 = distinct !DISubprogram(name: "xzalloc", scope: !878, file: !878, line: 279, type: !4472, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4722)
!4722 = !{!4723}
!4723 = !DILocalVariable(name: "s", arg: 1, scope: !4721, file: !878, line: 279, type: !262)
!4724 = !DILocation(line: 0, scope: !4721)
!4725 = !DILocalVariable(name: "n", arg: 1, scope: !4726, file: !878, line: 294, type: !262)
!4726 = distinct !DISubprogram(name: "xcalloc", scope: !878, file: !878, line: 294, type: !4588, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4727)
!4727 = !{!4725, !4728}
!4728 = !DILocalVariable(name: "s", arg: 2, scope: !4726, file: !878, line: 294, type: !262)
!4729 = !DILocation(line: 0, scope: !4726, inlinedAt: !4730)
!4730 = distinct !DILocation(line: 281, column: 10, scope: !4721)
!4731 = !DILocation(line: 296, column: 25, scope: !4726, inlinedAt: !4730)
!4732 = !DILocation(line: 0, scope: !4452, inlinedAt: !4733)
!4733 = distinct !DILocation(line: 296, column: 10, scope: !4726, inlinedAt: !4730)
!4734 = !DILocation(line: 39, column: 8, scope: !4459, inlinedAt: !4733)
!4735 = !DILocation(line: 39, column: 7, scope: !4452, inlinedAt: !4733)
!4736 = !DILocation(line: 40, column: 5, scope: !4459, inlinedAt: !4733)
!4737 = !DILocation(line: 281, column: 3, scope: !4721)
!4738 = !DISubprogram(name: "calloc", scope: !1179, file: !1179, line: 543, type: !4588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4739 = !DILocation(line: 0, scope: !4726)
!4740 = !DILocation(line: 296, column: 25, scope: !4726)
!4741 = !DILocation(line: 0, scope: !4452, inlinedAt: !4742)
!4742 = distinct !DILocation(line: 296, column: 10, scope: !4726)
!4743 = !DILocation(line: 39, column: 8, scope: !4459, inlinedAt: !4742)
!4744 = !DILocation(line: 39, column: 7, scope: !4452, inlinedAt: !4742)
!4745 = !DILocation(line: 40, column: 5, scope: !4459, inlinedAt: !4742)
!4746 = !DILocation(line: 296, column: 3, scope: !4726)
!4747 = distinct !DISubprogram(name: "xizalloc", scope: !878, file: !878, line: 285, type: !4486, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4748)
!4748 = !{!4749}
!4749 = !DILocalVariable(name: "s", arg: 1, scope: !4747, file: !878, line: 285, type: !897)
!4750 = !DILocation(line: 0, scope: !4747)
!4751 = !DILocalVariable(name: "n", arg: 1, scope: !4752, file: !878, line: 300, type: !897)
!4752 = distinct !DISubprogram(name: "xicalloc", scope: !878, file: !878, line: 300, type: !4604, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4753)
!4753 = !{!4751, !4754}
!4754 = !DILocalVariable(name: "s", arg: 2, scope: !4752, file: !878, line: 300, type: !897)
!4755 = !DILocation(line: 0, scope: !4752, inlinedAt: !4756)
!4756 = distinct !DILocation(line: 287, column: 10, scope: !4747)
!4757 = !DILocalVariable(name: "n", arg: 1, scope: !4758, file: !4493, line: 77, type: !897)
!4758 = distinct !DISubprogram(name: "icalloc", scope: !4493, file: !4493, line: 77, type: !4604, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4759)
!4759 = !{!4757, !4760}
!4760 = !DILocalVariable(name: "s", arg: 2, scope: !4758, file: !4493, line: 77, type: !897)
!4761 = !DILocation(line: 0, scope: !4758, inlinedAt: !4762)
!4762 = distinct !DILocation(line: 302, column: 25, scope: !4752, inlinedAt: !4756)
!4763 = !DILocation(line: 91, column: 10, scope: !4758, inlinedAt: !4762)
!4764 = !DILocation(line: 0, scope: !4452, inlinedAt: !4765)
!4765 = distinct !DILocation(line: 302, column: 10, scope: !4752, inlinedAt: !4756)
!4766 = !DILocation(line: 39, column: 8, scope: !4459, inlinedAt: !4765)
!4767 = !DILocation(line: 39, column: 7, scope: !4452, inlinedAt: !4765)
!4768 = !DILocation(line: 40, column: 5, scope: !4459, inlinedAt: !4765)
!4769 = !DILocation(line: 287, column: 3, scope: !4747)
!4770 = !DILocation(line: 0, scope: !4752)
!4771 = !DILocation(line: 0, scope: !4758, inlinedAt: !4772)
!4772 = distinct !DILocation(line: 302, column: 25, scope: !4752)
!4773 = !DILocation(line: 91, column: 10, scope: !4758, inlinedAt: !4772)
!4774 = !DILocation(line: 0, scope: !4452, inlinedAt: !4775)
!4775 = distinct !DILocation(line: 302, column: 10, scope: !4752)
!4776 = !DILocation(line: 39, column: 8, scope: !4459, inlinedAt: !4775)
!4777 = !DILocation(line: 39, column: 7, scope: !4452, inlinedAt: !4775)
!4778 = !DILocation(line: 40, column: 5, scope: !4459, inlinedAt: !4775)
!4779 = !DILocation(line: 302, column: 3, scope: !4752)
!4780 = distinct !DISubprogram(name: "xmemdup", scope: !878, file: !878, line: 310, type: !4781, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4783)
!4781 = !DISubroutineType(types: !4782)
!4782 = !{!268, !1203, !262}
!4783 = !{!4784, !4785}
!4784 = !DILocalVariable(name: "p", arg: 1, scope: !4780, file: !878, line: 310, type: !1203)
!4785 = !DILocalVariable(name: "s", arg: 2, scope: !4780, file: !878, line: 310, type: !262)
!4786 = !DILocation(line: 0, scope: !4780)
!4787 = !DILocation(line: 0, scope: !4471, inlinedAt: !4788)
!4788 = distinct !DILocation(line: 312, column: 18, scope: !4780)
!4789 = !DILocation(line: 49, column: 25, scope: !4471, inlinedAt: !4788)
!4790 = !DILocation(line: 0, scope: !4452, inlinedAt: !4791)
!4791 = distinct !DILocation(line: 49, column: 10, scope: !4471, inlinedAt: !4788)
!4792 = !DILocation(line: 39, column: 8, scope: !4459, inlinedAt: !4791)
!4793 = !DILocation(line: 39, column: 7, scope: !4452, inlinedAt: !4791)
!4794 = !DILocation(line: 40, column: 5, scope: !4459, inlinedAt: !4791)
!4795 = !DILocalVariable(name: "__dest", arg: 1, scope: !4796, file: !2961, line: 26, type: !4799)
!4796 = distinct !DISubprogram(name: "memcpy", scope: !2961, file: !2961, line: 26, type: !4797, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4800)
!4797 = !DISubroutineType(types: !4798)
!4798 = !{!268, !4799, !1202, !262}
!4799 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !268)
!4800 = !{!4795, !4801, !4802}
!4801 = !DILocalVariable(name: "__src", arg: 2, scope: !4796, file: !2961, line: 26, type: !1202)
!4802 = !DILocalVariable(name: "__len", arg: 3, scope: !4796, file: !2961, line: 26, type: !262)
!4803 = !DILocation(line: 0, scope: !4796, inlinedAt: !4804)
!4804 = distinct !DILocation(line: 312, column: 10, scope: !4780)
!4805 = !DILocation(line: 29, column: 10, scope: !4796, inlinedAt: !4804)
!4806 = !DILocation(line: 312, column: 3, scope: !4780)
!4807 = distinct !DISubprogram(name: "ximemdup", scope: !878, file: !878, line: 316, type: !4808, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4810)
!4808 = !DISubroutineType(types: !4809)
!4809 = !{!268, !1203, !897}
!4810 = !{!4811, !4812}
!4811 = !DILocalVariable(name: "p", arg: 1, scope: !4807, file: !878, line: 316, type: !1203)
!4812 = !DILocalVariable(name: "s", arg: 2, scope: !4807, file: !878, line: 316, type: !897)
!4813 = !DILocation(line: 0, scope: !4807)
!4814 = !DILocation(line: 0, scope: !4485, inlinedAt: !4815)
!4815 = distinct !DILocation(line: 318, column: 18, scope: !4807)
!4816 = !DILocation(line: 0, scope: !4492, inlinedAt: !4817)
!4817 = distinct !DILocation(line: 55, column: 25, scope: !4485, inlinedAt: !4815)
!4818 = !DILocation(line: 57, column: 26, scope: !4492, inlinedAt: !4817)
!4819 = !DILocation(line: 0, scope: !4452, inlinedAt: !4820)
!4820 = distinct !DILocation(line: 55, column: 10, scope: !4485, inlinedAt: !4815)
!4821 = !DILocation(line: 39, column: 8, scope: !4459, inlinedAt: !4820)
!4822 = !DILocation(line: 39, column: 7, scope: !4452, inlinedAt: !4820)
!4823 = !DILocation(line: 40, column: 5, scope: !4459, inlinedAt: !4820)
!4824 = !DILocation(line: 0, scope: !4796, inlinedAt: !4825)
!4825 = distinct !DILocation(line: 318, column: 10, scope: !4807)
!4826 = !DILocation(line: 29, column: 10, scope: !4796, inlinedAt: !4825)
!4827 = !DILocation(line: 318, column: 3, scope: !4807)
!4828 = distinct !DISubprogram(name: "ximemdup0", scope: !878, file: !878, line: 325, type: !4829, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4831)
!4829 = !DISubroutineType(types: !4830)
!4830 = !{!318, !1203, !897}
!4831 = !{!4832, !4833, !4834}
!4832 = !DILocalVariable(name: "p", arg: 1, scope: !4828, file: !878, line: 325, type: !1203)
!4833 = !DILocalVariable(name: "s", arg: 2, scope: !4828, file: !878, line: 325, type: !897)
!4834 = !DILocalVariable(name: "result", scope: !4828, file: !878, line: 327, type: !318)
!4835 = !DILocation(line: 0, scope: !4828)
!4836 = !DILocation(line: 327, column: 30, scope: !4828)
!4837 = !DILocation(line: 0, scope: !4485, inlinedAt: !4838)
!4838 = distinct !DILocation(line: 327, column: 18, scope: !4828)
!4839 = !DILocation(line: 0, scope: !4492, inlinedAt: !4840)
!4840 = distinct !DILocation(line: 55, column: 25, scope: !4485, inlinedAt: !4838)
!4841 = !DILocation(line: 57, column: 26, scope: !4492, inlinedAt: !4840)
!4842 = !DILocation(line: 0, scope: !4452, inlinedAt: !4843)
!4843 = distinct !DILocation(line: 55, column: 10, scope: !4485, inlinedAt: !4838)
!4844 = !DILocation(line: 39, column: 8, scope: !4459, inlinedAt: !4843)
!4845 = !DILocation(line: 39, column: 7, scope: !4452, inlinedAt: !4843)
!4846 = !DILocation(line: 40, column: 5, scope: !4459, inlinedAt: !4843)
!4847 = !DILocation(line: 328, column: 3, scope: !4828)
!4848 = !DILocation(line: 328, column: 13, scope: !4828)
!4849 = !DILocation(line: 0, scope: !4796, inlinedAt: !4850)
!4850 = distinct !DILocation(line: 329, column: 10, scope: !4828)
!4851 = !DILocation(line: 29, column: 10, scope: !4796, inlinedAt: !4850)
!4852 = !DILocation(line: 329, column: 3, scope: !4828)
!4853 = distinct !DISubprogram(name: "xstrdup", scope: !878, file: !878, line: 335, type: !1181, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !877, retainedNodes: !4854)
!4854 = !{!4855}
!4855 = !DILocalVariable(name: "string", arg: 1, scope: !4853, file: !878, line: 335, type: !265)
!4856 = !DILocation(line: 0, scope: !4853)
!4857 = !DILocation(line: 337, column: 27, scope: !4853)
!4858 = !DILocation(line: 337, column: 43, scope: !4853)
!4859 = !DILocation(line: 0, scope: !4780, inlinedAt: !4860)
!4860 = distinct !DILocation(line: 337, column: 10, scope: !4853)
!4861 = !DILocation(line: 0, scope: !4471, inlinedAt: !4862)
!4862 = distinct !DILocation(line: 312, column: 18, scope: !4780, inlinedAt: !4860)
!4863 = !DILocation(line: 49, column: 25, scope: !4471, inlinedAt: !4862)
!4864 = !DILocation(line: 0, scope: !4452, inlinedAt: !4865)
!4865 = distinct !DILocation(line: 49, column: 10, scope: !4471, inlinedAt: !4862)
!4866 = !DILocation(line: 39, column: 8, scope: !4459, inlinedAt: !4865)
!4867 = !DILocation(line: 39, column: 7, scope: !4452, inlinedAt: !4865)
!4868 = !DILocation(line: 40, column: 5, scope: !4459, inlinedAt: !4865)
!4869 = !DILocation(line: 0, scope: !4796, inlinedAt: !4870)
!4870 = distinct !DILocation(line: 312, column: 10, scope: !4780, inlinedAt: !4860)
!4871 = !DILocation(line: 29, column: 10, scope: !4796, inlinedAt: !4870)
!4872 = !DILocation(line: 337, column: 3, scope: !4853)
!4873 = distinct !DISubprogram(name: "xalloc_die", scope: !834, file: !834, line: 32, type: !624, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !912, retainedNodes: !4874)
!4874 = !{!4875}
!4875 = !DILocalVariable(name: "__errstatus", scope: !4876, file: !834, line: 34, type: !4877)
!4876 = distinct !DILexicalBlock(scope: !4873, file: !834, line: 34, column: 3)
!4877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !260)
!4878 = !DILocation(line: 34, column: 3, scope: !4876)
!4879 = !DILocation(line: 0, scope: !4876)
!4880 = !DILocation(line: 40, column: 3, scope: !4873)
!4881 = distinct !DISubprogram(name: "close_stream", scope: !915, file: !915, line: 55, type: !4882, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !914, retainedNodes: !4918)
!4882 = !DISubroutineType(types: !4883)
!4883 = !{!260, !4884}
!4884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!4885 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !312, line: 7, baseType: !4886)
!4886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !314, line: 49, size: 1728, elements: !4887)
!4887 = !{!4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917}
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4886, file: !314, line: 51, baseType: !260, size: 32)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4886, file: !314, line: 54, baseType: !318, size: 64, offset: 64)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4886, file: !314, line: 55, baseType: !318, size: 64, offset: 128)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4886, file: !314, line: 56, baseType: !318, size: 64, offset: 192)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4886, file: !314, line: 57, baseType: !318, size: 64, offset: 256)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4886, file: !314, line: 58, baseType: !318, size: 64, offset: 320)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4886, file: !314, line: 59, baseType: !318, size: 64, offset: 384)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4886, file: !314, line: 60, baseType: !318, size: 64, offset: 448)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4886, file: !314, line: 61, baseType: !318, size: 64, offset: 512)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4886, file: !314, line: 64, baseType: !318, size: 64, offset: 576)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4886, file: !314, line: 65, baseType: !318, size: 64, offset: 640)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4886, file: !314, line: 66, baseType: !318, size: 64, offset: 704)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4886, file: !314, line: 68, baseType: !330, size: 64, offset: 768)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4886, file: !314, line: 70, baseType: !4902, size: 64, offset: 832)
!4902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4886, size: 64)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4886, file: !314, line: 72, baseType: !260, size: 32, offset: 896)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4886, file: !314, line: 73, baseType: !260, size: 32, offset: 928)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4886, file: !314, line: 74, baseType: !337, size: 64, offset: 960)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4886, file: !314, line: 77, baseType: !261, size: 16, offset: 1024)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4886, file: !314, line: 78, baseType: !340, size: 8, offset: 1040)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4886, file: !314, line: 79, baseType: !206, size: 8, offset: 1048)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4886, file: !314, line: 81, baseType: !343, size: 64, offset: 1088)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4886, file: !314, line: 89, baseType: !346, size: 64, offset: 1152)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4886, file: !314, line: 91, baseType: !348, size: 64, offset: 1216)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4886, file: !314, line: 92, baseType: !351, size: 64, offset: 1280)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4886, file: !314, line: 93, baseType: !4902, size: 64, offset: 1344)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4886, file: !314, line: 94, baseType: !268, size: 64, offset: 1408)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4886, file: !314, line: 95, baseType: !262, size: 64, offset: 1472)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4886, file: !314, line: 96, baseType: !260, size: 32, offset: 1536)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4886, file: !314, line: 98, baseType: !358, size: 160, offset: 1568)
!4918 = !{!4919, !4920, !4922, !4923}
!4919 = !DILocalVariable(name: "stream", arg: 1, scope: !4881, file: !915, line: 55, type: !4884)
!4920 = !DILocalVariable(name: "some_pending", scope: !4881, file: !915, line: 57, type: !4921)
!4921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!4922 = !DILocalVariable(name: "prev_fail", scope: !4881, file: !915, line: 58, type: !4921)
!4923 = !DILocalVariable(name: "fclose_fail", scope: !4881, file: !915, line: 59, type: !4921)
!4924 = !DILocation(line: 0, scope: !4881)
!4925 = !DILocation(line: 57, column: 30, scope: !4881)
!4926 = !DILocalVariable(name: "__stream", arg: 1, scope: !4927, file: !2555, line: 135, type: !4884)
!4927 = distinct !DISubprogram(name: "ferror_unlocked", scope: !2555, file: !2555, line: 135, type: !4882, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !914, retainedNodes: !4928)
!4928 = !{!4926}
!4929 = !DILocation(line: 0, scope: !4927, inlinedAt: !4930)
!4930 = distinct !DILocation(line: 58, column: 27, scope: !4881)
!4931 = !DILocation(line: 137, column: 10, scope: !4927, inlinedAt: !4930)
!4932 = !{!2564, !1053, i64 0}
!4933 = !DILocation(line: 58, column: 43, scope: !4881)
!4934 = !DILocation(line: 59, column: 29, scope: !4881)
!4935 = !DILocation(line: 59, column: 45, scope: !4881)
!4936 = !DILocation(line: 69, column: 17, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4881, file: !915, line: 69, column: 7)
!4938 = !DILocation(line: 57, column: 50, scope: !4881)
!4939 = !DILocation(line: 69, column: 33, scope: !4937)
!4940 = !DILocation(line: 69, column: 53, scope: !4937)
!4941 = !DILocation(line: 69, column: 59, scope: !4937)
!4942 = !DILocation(line: 69, column: 7, scope: !4881)
!4943 = !DILocation(line: 71, column: 11, scope: !4944)
!4944 = distinct !DILexicalBlock(scope: !4937, file: !915, line: 70, column: 5)
!4945 = !DILocation(line: 72, column: 9, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4944, file: !915, line: 71, column: 11)
!4947 = !DILocation(line: 72, column: 15, scope: !4946)
!4948 = !DILocation(line: 77, column: 1, scope: !4881)
!4949 = !DISubprogram(name: "__fpending", scope: !4950, file: !4950, line: 75, type: !4951, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4950 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!4951 = !DISubroutineType(types: !4952)
!4952 = !{!262, !4884}
!4953 = distinct !DISubprogram(name: "rpl_fclose", scope: !917, file: !917, line: 58, type: !4954, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !916, retainedNodes: !4990)
!4954 = !DISubroutineType(types: !4955)
!4955 = !{!260, !4956}
!4956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4957, size: 64)
!4957 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !312, line: 7, baseType: !4958)
!4958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !314, line: 49, size: 1728, elements: !4959)
!4959 = !{!4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4975, !4976, !4977, !4978, !4979, !4980, !4981, !4982, !4983, !4984, !4985, !4986, !4987, !4988, !4989}
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4958, file: !314, line: 51, baseType: !260, size: 32)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4958, file: !314, line: 54, baseType: !318, size: 64, offset: 64)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4958, file: !314, line: 55, baseType: !318, size: 64, offset: 128)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4958, file: !314, line: 56, baseType: !318, size: 64, offset: 192)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4958, file: !314, line: 57, baseType: !318, size: 64, offset: 256)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4958, file: !314, line: 58, baseType: !318, size: 64, offset: 320)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4958, file: !314, line: 59, baseType: !318, size: 64, offset: 384)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4958, file: !314, line: 60, baseType: !318, size: 64, offset: 448)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4958, file: !314, line: 61, baseType: !318, size: 64, offset: 512)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4958, file: !314, line: 64, baseType: !318, size: 64, offset: 576)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4958, file: !314, line: 65, baseType: !318, size: 64, offset: 640)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4958, file: !314, line: 66, baseType: !318, size: 64, offset: 704)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4958, file: !314, line: 68, baseType: !330, size: 64, offset: 768)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4958, file: !314, line: 70, baseType: !4974, size: 64, offset: 832)
!4974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4958, size: 64)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4958, file: !314, line: 72, baseType: !260, size: 32, offset: 896)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4958, file: !314, line: 73, baseType: !260, size: 32, offset: 928)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4958, file: !314, line: 74, baseType: !337, size: 64, offset: 960)
!4978 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4958, file: !314, line: 77, baseType: !261, size: 16, offset: 1024)
!4979 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4958, file: !314, line: 78, baseType: !340, size: 8, offset: 1040)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4958, file: !314, line: 79, baseType: !206, size: 8, offset: 1048)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4958, file: !314, line: 81, baseType: !343, size: 64, offset: 1088)
!4982 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4958, file: !314, line: 89, baseType: !346, size: 64, offset: 1152)
!4983 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4958, file: !314, line: 91, baseType: !348, size: 64, offset: 1216)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4958, file: !314, line: 92, baseType: !351, size: 64, offset: 1280)
!4985 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4958, file: !314, line: 93, baseType: !4974, size: 64, offset: 1344)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4958, file: !314, line: 94, baseType: !268, size: 64, offset: 1408)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4958, file: !314, line: 95, baseType: !262, size: 64, offset: 1472)
!4988 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4958, file: !314, line: 96, baseType: !260, size: 32, offset: 1536)
!4989 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4958, file: !314, line: 98, baseType: !358, size: 160, offset: 1568)
!4990 = !{!4991, !4992, !4993, !4994}
!4991 = !DILocalVariable(name: "fp", arg: 1, scope: !4953, file: !917, line: 58, type: !4956)
!4992 = !DILocalVariable(name: "saved_errno", scope: !4953, file: !917, line: 60, type: !260)
!4993 = !DILocalVariable(name: "fd", scope: !4953, file: !917, line: 63, type: !260)
!4994 = !DILocalVariable(name: "result", scope: !4953, file: !917, line: 74, type: !260)
!4995 = !DILocation(line: 0, scope: !4953)
!4996 = !DILocation(line: 63, column: 12, scope: !4953)
!4997 = !DILocation(line: 64, column: 10, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !4953, file: !917, line: 64, column: 7)
!4999 = !DILocation(line: 64, column: 7, scope: !4953)
!5000 = !DILocation(line: 65, column: 12, scope: !4998)
!5001 = !DILocation(line: 65, column: 5, scope: !4998)
!5002 = !DILocation(line: 70, column: 9, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4953, file: !917, line: 70, column: 7)
!5004 = !DILocation(line: 70, column: 23, scope: !5003)
!5005 = !DILocation(line: 70, column: 33, scope: !5003)
!5006 = !DILocation(line: 70, column: 26, scope: !5003)
!5007 = !DILocation(line: 70, column: 59, scope: !5003)
!5008 = !DILocation(line: 71, column: 7, scope: !5003)
!5009 = !DILocation(line: 71, column: 10, scope: !5003)
!5010 = !DILocation(line: 70, column: 7, scope: !4953)
!5011 = !DILocation(line: 100, column: 12, scope: !4953)
!5012 = !DILocation(line: 105, column: 7, scope: !4953)
!5013 = !DILocation(line: 72, column: 19, scope: !5003)
!5014 = !DILocation(line: 105, column: 19, scope: !5015)
!5015 = distinct !DILexicalBlock(scope: !4953, file: !917, line: 105, column: 7)
!5016 = !DILocation(line: 107, column: 13, scope: !5017)
!5017 = distinct !DILexicalBlock(scope: !5015, file: !917, line: 106, column: 5)
!5018 = !DILocation(line: 109, column: 5, scope: !5017)
!5019 = !DILocation(line: 112, column: 1, scope: !4953)
!5020 = !DISubprogram(name: "fileno", scope: !1047, file: !1047, line: 809, type: !4954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5021 = !DISubprogram(name: "fclose", scope: !1047, file: !1047, line: 178, type: !4954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5022 = !DISubprogram(name: "__freading", scope: !4950, file: !4950, line: 51, type: !4954, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5023 = !DISubprogram(name: "lseek", scope: !2372, file: !2372, line: 339, type: !5024, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5024 = !DISubroutineType(types: !5025)
!5025 = !{!337, !260, !337, !260}
!5026 = distinct !DISubprogram(name: "rpl_fflush", scope: !919, file: !919, line: 130, type: !5027, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !5063)
!5027 = !DISubroutineType(types: !5028)
!5028 = !{!260, !5029}
!5029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5030, size: 64)
!5030 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !312, line: 7, baseType: !5031)
!5031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !314, line: 49, size: 1728, elements: !5032)
!5032 = !{!5033, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5048, !5049, !5050, !5051, !5052, !5053, !5054, !5055, !5056, !5057, !5058, !5059, !5060, !5061, !5062}
!5033 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5031, file: !314, line: 51, baseType: !260, size: 32)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5031, file: !314, line: 54, baseType: !318, size: 64, offset: 64)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5031, file: !314, line: 55, baseType: !318, size: 64, offset: 128)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5031, file: !314, line: 56, baseType: !318, size: 64, offset: 192)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5031, file: !314, line: 57, baseType: !318, size: 64, offset: 256)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5031, file: !314, line: 58, baseType: !318, size: 64, offset: 320)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5031, file: !314, line: 59, baseType: !318, size: 64, offset: 384)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5031, file: !314, line: 60, baseType: !318, size: 64, offset: 448)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5031, file: !314, line: 61, baseType: !318, size: 64, offset: 512)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5031, file: !314, line: 64, baseType: !318, size: 64, offset: 576)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5031, file: !314, line: 65, baseType: !318, size: 64, offset: 640)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5031, file: !314, line: 66, baseType: !318, size: 64, offset: 704)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5031, file: !314, line: 68, baseType: !330, size: 64, offset: 768)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5031, file: !314, line: 70, baseType: !5047, size: 64, offset: 832)
!5047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5031, file: !314, line: 72, baseType: !260, size: 32, offset: 896)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5031, file: !314, line: 73, baseType: !260, size: 32, offset: 928)
!5050 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5031, file: !314, line: 74, baseType: !337, size: 64, offset: 960)
!5051 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5031, file: !314, line: 77, baseType: !261, size: 16, offset: 1024)
!5052 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5031, file: !314, line: 78, baseType: !340, size: 8, offset: 1040)
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5031, file: !314, line: 79, baseType: !206, size: 8, offset: 1048)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5031, file: !314, line: 81, baseType: !343, size: 64, offset: 1088)
!5055 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5031, file: !314, line: 89, baseType: !346, size: 64, offset: 1152)
!5056 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5031, file: !314, line: 91, baseType: !348, size: 64, offset: 1216)
!5057 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5031, file: !314, line: 92, baseType: !351, size: 64, offset: 1280)
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5031, file: !314, line: 93, baseType: !5047, size: 64, offset: 1344)
!5059 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5031, file: !314, line: 94, baseType: !268, size: 64, offset: 1408)
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5031, file: !314, line: 95, baseType: !262, size: 64, offset: 1472)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5031, file: !314, line: 96, baseType: !260, size: 32, offset: 1536)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5031, file: !314, line: 98, baseType: !358, size: 160, offset: 1568)
!5063 = !{!5064}
!5064 = !DILocalVariable(name: "stream", arg: 1, scope: !5026, file: !919, line: 130, type: !5029)
!5065 = !DILocation(line: 0, scope: !5026)
!5066 = !DILocation(line: 151, column: 14, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5026, file: !919, line: 151, column: 7)
!5068 = !DILocation(line: 151, column: 22, scope: !5067)
!5069 = !DILocation(line: 151, column: 27, scope: !5067)
!5070 = !DILocation(line: 151, column: 7, scope: !5026)
!5071 = !DILocation(line: 152, column: 12, scope: !5067)
!5072 = !DILocation(line: 152, column: 5, scope: !5067)
!5073 = !DILocalVariable(name: "fp", arg: 1, scope: !5074, file: !919, line: 42, type: !5029)
!5074 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !919, file: !919, line: 42, type: !5075, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !918, retainedNodes: !5077)
!5075 = !DISubroutineType(types: !5076)
!5076 = !{null, !5029}
!5077 = !{!5073}
!5078 = !DILocation(line: 0, scope: !5074, inlinedAt: !5079)
!5079 = distinct !DILocation(line: 157, column: 3, scope: !5026)
!5080 = !DILocation(line: 44, column: 12, scope: !5081, inlinedAt: !5079)
!5081 = distinct !DILexicalBlock(scope: !5074, file: !919, line: 44, column: 7)
!5082 = !DILocation(line: 44, column: 19, scope: !5081, inlinedAt: !5079)
!5083 = !DILocation(line: 44, column: 7, scope: !5074, inlinedAt: !5079)
!5084 = !DILocation(line: 46, column: 5, scope: !5081, inlinedAt: !5079)
!5085 = !DILocation(line: 159, column: 10, scope: !5026)
!5086 = !DILocation(line: 159, column: 3, scope: !5026)
!5087 = !DILocation(line: 236, column: 1, scope: !5026)
!5088 = !DISubprogram(name: "fflush", scope: !1047, file: !1047, line: 230, type: !5027, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5089 = distinct !DISubprogram(name: "rpl_fseeko", scope: !921, file: !921, line: 28, type: !5090, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !920, retainedNodes: !5127)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{!260, !5092, !5126, !260}
!5092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5093, size: 64)
!5093 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !312, line: 7, baseType: !5094)
!5094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !314, line: 49, size: 1728, elements: !5095)
!5095 = !{!5096, !5097, !5098, !5099, !5100, !5101, !5102, !5103, !5104, !5105, !5106, !5107, !5108, !5109, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5121, !5122, !5123, !5124, !5125}
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5094, file: !314, line: 51, baseType: !260, size: 32)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5094, file: !314, line: 54, baseType: !318, size: 64, offset: 64)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5094, file: !314, line: 55, baseType: !318, size: 64, offset: 128)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5094, file: !314, line: 56, baseType: !318, size: 64, offset: 192)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5094, file: !314, line: 57, baseType: !318, size: 64, offset: 256)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5094, file: !314, line: 58, baseType: !318, size: 64, offset: 320)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5094, file: !314, line: 59, baseType: !318, size: 64, offset: 384)
!5103 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5094, file: !314, line: 60, baseType: !318, size: 64, offset: 448)
!5104 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5094, file: !314, line: 61, baseType: !318, size: 64, offset: 512)
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5094, file: !314, line: 64, baseType: !318, size: 64, offset: 576)
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5094, file: !314, line: 65, baseType: !318, size: 64, offset: 640)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5094, file: !314, line: 66, baseType: !318, size: 64, offset: 704)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5094, file: !314, line: 68, baseType: !330, size: 64, offset: 768)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5094, file: !314, line: 70, baseType: !5110, size: 64, offset: 832)
!5110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5094, size: 64)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5094, file: !314, line: 72, baseType: !260, size: 32, offset: 896)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5094, file: !314, line: 73, baseType: !260, size: 32, offset: 928)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5094, file: !314, line: 74, baseType: !337, size: 64, offset: 960)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5094, file: !314, line: 77, baseType: !261, size: 16, offset: 1024)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5094, file: !314, line: 78, baseType: !340, size: 8, offset: 1040)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5094, file: !314, line: 79, baseType: !206, size: 8, offset: 1048)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5094, file: !314, line: 81, baseType: !343, size: 64, offset: 1088)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5094, file: !314, line: 89, baseType: !346, size: 64, offset: 1152)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5094, file: !314, line: 91, baseType: !348, size: 64, offset: 1216)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5094, file: !314, line: 92, baseType: !351, size: 64, offset: 1280)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5094, file: !314, line: 93, baseType: !5110, size: 64, offset: 1344)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5094, file: !314, line: 94, baseType: !268, size: 64, offset: 1408)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5094, file: !314, line: 95, baseType: !262, size: 64, offset: 1472)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5094, file: !314, line: 96, baseType: !260, size: 32, offset: 1536)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5094, file: !314, line: 98, baseType: !358, size: 160, offset: 1568)
!5126 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1047, line: 63, baseType: !337)
!5127 = !{!5128, !5129, !5130, !5131}
!5128 = !DILocalVariable(name: "fp", arg: 1, scope: !5089, file: !921, line: 28, type: !5092)
!5129 = !DILocalVariable(name: "offset", arg: 2, scope: !5089, file: !921, line: 28, type: !5126)
!5130 = !DILocalVariable(name: "whence", arg: 3, scope: !5089, file: !921, line: 28, type: !260)
!5131 = !DILocalVariable(name: "pos", scope: !5132, file: !921, line: 123, type: !5126)
!5132 = distinct !DILexicalBlock(scope: !5133, file: !921, line: 119, column: 5)
!5133 = distinct !DILexicalBlock(scope: !5089, file: !921, line: 55, column: 7)
!5134 = !DILocation(line: 0, scope: !5089)
!5135 = !DILocation(line: 55, column: 12, scope: !5133)
!5136 = !{!2564, !952, i64 16}
!5137 = !DILocation(line: 55, column: 33, scope: !5133)
!5138 = !{!2564, !952, i64 8}
!5139 = !DILocation(line: 55, column: 25, scope: !5133)
!5140 = !DILocation(line: 56, column: 7, scope: !5133)
!5141 = !DILocation(line: 56, column: 15, scope: !5133)
!5142 = !DILocation(line: 56, column: 37, scope: !5133)
!5143 = !{!2564, !952, i64 32}
!5144 = !DILocation(line: 56, column: 29, scope: !5133)
!5145 = !DILocation(line: 57, column: 7, scope: !5133)
!5146 = !DILocation(line: 57, column: 15, scope: !5133)
!5147 = !{!2564, !952, i64 72}
!5148 = !DILocation(line: 57, column: 29, scope: !5133)
!5149 = !DILocation(line: 55, column: 7, scope: !5089)
!5150 = !DILocation(line: 123, column: 26, scope: !5132)
!5151 = !DILocation(line: 123, column: 19, scope: !5132)
!5152 = !DILocation(line: 0, scope: !5132)
!5153 = !DILocation(line: 124, column: 15, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5132, file: !921, line: 124, column: 11)
!5155 = !DILocation(line: 124, column: 11, scope: !5132)
!5156 = !DILocation(line: 135, column: 19, scope: !5132)
!5157 = !DILocation(line: 136, column: 12, scope: !5132)
!5158 = !DILocation(line: 136, column: 20, scope: !5132)
!5159 = !{!2564, !1542, i64 144}
!5160 = !DILocation(line: 167, column: 7, scope: !5132)
!5161 = !DILocation(line: 169, column: 10, scope: !5089)
!5162 = !DILocation(line: 169, column: 3, scope: !5089)
!5163 = !DILocation(line: 170, column: 1, scope: !5089)
!5164 = !DISubprogram(name: "fseeko", scope: !1047, file: !1047, line: 736, type: !5165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5165 = !DISubroutineType(types: !5166)
!5166 = !{!260, !5092, !337, !260}
!5167 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !841, file: !841, line: 100, type: !5168, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !844, retainedNodes: !5172)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!262, !5170, !265, !262, !5171}
!5170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!5171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!5172 = !{!5173, !5174, !5175, !5176, !5177}
!5173 = !DILocalVariable(name: "pwc", arg: 1, scope: !5167, file: !841, line: 100, type: !5170)
!5174 = !DILocalVariable(name: "s", arg: 2, scope: !5167, file: !841, line: 100, type: !265)
!5175 = !DILocalVariable(name: "n", arg: 3, scope: !5167, file: !841, line: 100, type: !262)
!5176 = !DILocalVariable(name: "ps", arg: 4, scope: !5167, file: !841, line: 100, type: !5171)
!5177 = !DILocalVariable(name: "ret", scope: !5167, file: !841, line: 130, type: !262)
!5178 = !DILocation(line: 0, scope: !5167)
!5179 = !DILocation(line: 105, column: 9, scope: !5180)
!5180 = distinct !DILexicalBlock(scope: !5167, file: !841, line: 105, column: 7)
!5181 = !DILocation(line: 105, column: 7, scope: !5167)
!5182 = !DILocation(line: 117, column: 10, scope: !5183)
!5183 = distinct !DILexicalBlock(scope: !5167, file: !841, line: 117, column: 7)
!5184 = !DILocation(line: 117, column: 7, scope: !5167)
!5185 = !DILocation(line: 130, column: 16, scope: !5167)
!5186 = !DILocation(line: 135, column: 11, scope: !5187)
!5187 = distinct !DILexicalBlock(scope: !5167, file: !841, line: 135, column: 7)
!5188 = !DILocation(line: 135, column: 25, scope: !5187)
!5189 = !DILocation(line: 135, column: 30, scope: !5187)
!5190 = !DILocation(line: 135, column: 7, scope: !5167)
!5191 = !DILocalVariable(name: "ps", arg: 1, scope: !5192, file: !2952, line: 1135, type: !5171)
!5192 = distinct !DISubprogram(name: "mbszero", scope: !2952, file: !2952, line: 1135, type: !5193, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !844, retainedNodes: !5195)
!5193 = !DISubroutineType(types: !5194)
!5194 = !{null, !5171}
!5195 = !{!5191}
!5196 = !DILocation(line: 0, scope: !5192, inlinedAt: !5197)
!5197 = distinct !DILocation(line: 137, column: 5, scope: !5187)
!5198 = !DILocalVariable(name: "__dest", arg: 1, scope: !5199, file: !2961, line: 57, type: !268)
!5199 = distinct !DISubprogram(name: "memset", scope: !2961, file: !2961, line: 57, type: !2962, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !844, retainedNodes: !5200)
!5200 = !{!5198, !5201, !5202}
!5201 = !DILocalVariable(name: "__ch", arg: 2, scope: !5199, file: !2961, line: 57, type: !260)
!5202 = !DILocalVariable(name: "__len", arg: 3, scope: !5199, file: !2961, line: 57, type: !262)
!5203 = !DILocation(line: 0, scope: !5199, inlinedAt: !5204)
!5204 = distinct !DILocation(line: 1137, column: 3, scope: !5192, inlinedAt: !5197)
!5205 = !DILocation(line: 59, column: 10, scope: !5199, inlinedAt: !5204)
!5206 = !DILocation(line: 137, column: 5, scope: !5187)
!5207 = !DILocation(line: 138, column: 11, scope: !5208)
!5208 = distinct !DILexicalBlock(scope: !5167, file: !841, line: 138, column: 7)
!5209 = !DILocation(line: 138, column: 7, scope: !5167)
!5210 = !DILocation(line: 139, column: 5, scope: !5208)
!5211 = !DILocation(line: 143, column: 26, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5167, file: !841, line: 143, column: 7)
!5213 = !DILocation(line: 143, column: 41, scope: !5212)
!5214 = !DILocation(line: 143, column: 7, scope: !5167)
!5215 = !DILocation(line: 145, column: 15, scope: !5216)
!5216 = distinct !DILexicalBlock(scope: !5217, file: !841, line: 145, column: 11)
!5217 = distinct !DILexicalBlock(scope: !5212, file: !841, line: 144, column: 5)
!5218 = !DILocation(line: 145, column: 11, scope: !5217)
!5219 = !DILocation(line: 146, column: 32, scope: !5216)
!5220 = !DILocation(line: 146, column: 16, scope: !5216)
!5221 = !DILocation(line: 146, column: 14, scope: !5216)
!5222 = !DILocation(line: 146, column: 9, scope: !5216)
!5223 = !DILocation(line: 286, column: 1, scope: !5167)
!5224 = !DISubprogram(name: "mbrtoc32", scope: !725, file: !725, line: 57, type: !5225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5225 = !DISubroutineType(types: !5226)
!5226 = !{!262, !5227, !1045, !262, !5228}
!5227 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5170)
!5228 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5171)
!5229 = !DISubprogram(name: "mbsinit", scope: !5230, file: !5230, line: 293, type: !5231, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5230 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!5231 = !DISubroutineType(types: !5232)
!5232 = !{!260, !5233}
!5233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5234, size: 64)
!5234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !847)
!5235 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !923, file: !923, line: 27, type: !4436, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !5236)
!5236 = !{!5237, !5238, !5239, !5240}
!5237 = !DILocalVariable(name: "ptr", arg: 1, scope: !5235, file: !923, line: 27, type: !268)
!5238 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5235, file: !923, line: 27, type: !262)
!5239 = !DILocalVariable(name: "size", arg: 3, scope: !5235, file: !923, line: 27, type: !262)
!5240 = !DILocalVariable(name: "nbytes", scope: !5235, file: !923, line: 29, type: !262)
!5241 = !DILocation(line: 0, scope: !5235)
!5242 = !DILocation(line: 30, column: 7, scope: !5243)
!5243 = distinct !DILexicalBlock(scope: !5235, file: !923, line: 30, column: 7)
!5244 = !DILocation(line: 30, column: 7, scope: !5235)
!5245 = !DILocation(line: 32, column: 7, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5243, file: !923, line: 31, column: 5)
!5247 = !DILocation(line: 32, column: 13, scope: !5246)
!5248 = !DILocation(line: 33, column: 7, scope: !5246)
!5249 = !DILocalVariable(name: "ptr", arg: 1, scope: !5250, file: !4528, line: 2057, type: !268)
!5250 = distinct !DISubprogram(name: "rpl_realloc", scope: !4528, file: !4528, line: 2057, type: !4520, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !922, retainedNodes: !5251)
!5251 = !{!5249, !5252}
!5252 = !DILocalVariable(name: "size", arg: 2, scope: !5250, file: !4528, line: 2057, type: !262)
!5253 = !DILocation(line: 0, scope: !5250, inlinedAt: !5254)
!5254 = distinct !DILocation(line: 37, column: 10, scope: !5235)
!5255 = !DILocation(line: 2059, column: 24, scope: !5250, inlinedAt: !5254)
!5256 = !DILocation(line: 2059, column: 10, scope: !5250, inlinedAt: !5254)
!5257 = !DILocation(line: 37, column: 3, scope: !5235)
!5258 = !DILocation(line: 38, column: 1, scope: !5235)
!5259 = distinct !DISubprogram(name: "hard_locale", scope: !859, file: !859, line: 28, type: !1254, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !924, retainedNodes: !5260)
!5260 = !{!5261, !5262}
!5261 = !DILocalVariable(name: "category", arg: 1, scope: !5259, file: !859, line: 28, type: !260)
!5262 = !DILocalVariable(name: "locale", scope: !5259, file: !859, line: 30, type: !5263)
!5263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5264)
!5264 = !{!5265}
!5265 = !DISubrange(count: 257)
!5266 = distinct !DIAssignID()
!5267 = !DILocation(line: 0, scope: !5259)
!5268 = !DILocation(line: 30, column: 3, scope: !5259)
!5269 = !DILocation(line: 32, column: 7, scope: !5270)
!5270 = distinct !DILexicalBlock(scope: !5259, file: !859, line: 32, column: 7)
!5271 = !DILocation(line: 32, column: 7, scope: !5259)
!5272 = !DILocalVariable(name: "__s1", arg: 1, scope: !5273, file: !1065, line: 1359, type: !265)
!5273 = distinct !DISubprogram(name: "streq", scope: !1065, file: !1065, line: 1359, type: !1066, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !924, retainedNodes: !5274)
!5274 = !{!5272, !5275}
!5275 = !DILocalVariable(name: "__s2", arg: 2, scope: !5273, file: !1065, line: 1359, type: !265)
!5276 = !DILocation(line: 0, scope: !5273, inlinedAt: !5277)
!5277 = distinct !DILocation(line: 35, column: 9, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5259, file: !859, line: 35, column: 7)
!5279 = !DILocation(line: 1361, column: 11, scope: !5273, inlinedAt: !5277)
!5280 = !DILocation(line: 35, column: 29, scope: !5278)
!5281 = !DILocation(line: 0, scope: !5273, inlinedAt: !5282)
!5282 = distinct !DILocation(line: 35, column: 32, scope: !5278)
!5283 = !DILocation(line: 1361, column: 11, scope: !5273, inlinedAt: !5282)
!5284 = !DILocation(line: 1361, column: 10, scope: !5273, inlinedAt: !5282)
!5285 = !DILocation(line: 35, column: 7, scope: !5259)
!5286 = !DILocation(line: 46, column: 3, scope: !5259)
!5287 = !DILocation(line: 47, column: 1, scope: !5259)
!5288 = distinct !DISubprogram(name: "setlocale_null_r", scope: !929, file: !929, line: 154, type: !5289, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !5291)
!5289 = !DISubroutineType(types: !5290)
!5290 = !{!260, !260, !318, !262}
!5291 = !{!5292, !5293, !5294}
!5292 = !DILocalVariable(name: "category", arg: 1, scope: !5288, file: !929, line: 154, type: !260)
!5293 = !DILocalVariable(name: "buf", arg: 2, scope: !5288, file: !929, line: 154, type: !318)
!5294 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5288, file: !929, line: 154, type: !262)
!5295 = !DILocation(line: 0, scope: !5288)
!5296 = !DILocation(line: 159, column: 10, scope: !5288)
!5297 = !DILocation(line: 159, column: 3, scope: !5288)
!5298 = distinct !DISubprogram(name: "setlocale_null", scope: !929, file: !929, line: 186, type: !5299, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !928, retainedNodes: !5301)
!5299 = !DISubroutineType(types: !5300)
!5300 = !{!265, !260}
!5301 = !{!5302}
!5302 = !DILocalVariable(name: "category", arg: 1, scope: !5298, file: !929, line: 186, type: !260)
!5303 = !DILocation(line: 0, scope: !5298)
!5304 = !DILocation(line: 189, column: 10, scope: !5298)
!5305 = !DILocation(line: 189, column: 3, scope: !5298)
!5306 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !931, file: !931, line: 35, type: !5299, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !930, retainedNodes: !5307)
!5307 = !{!5308, !5309}
!5308 = !DILocalVariable(name: "category", arg: 1, scope: !5306, file: !931, line: 35, type: !260)
!5309 = !DILocalVariable(name: "result", scope: !5306, file: !931, line: 37, type: !265)
!5310 = !DILocation(line: 0, scope: !5306)
!5311 = !DILocation(line: 37, column: 24, scope: !5306)
!5312 = !DILocation(line: 62, column: 3, scope: !5306)
!5313 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !931, file: !931, line: 66, type: !5289, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !930, retainedNodes: !5314)
!5314 = !{!5315, !5316, !5317, !5318, !5319}
!5315 = !DILocalVariable(name: "category", arg: 1, scope: !5313, file: !931, line: 66, type: !260)
!5316 = !DILocalVariable(name: "buf", arg: 2, scope: !5313, file: !931, line: 66, type: !318)
!5317 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5313, file: !931, line: 66, type: !262)
!5318 = !DILocalVariable(name: "result", scope: !5313, file: !931, line: 111, type: !265)
!5319 = !DILocalVariable(name: "length", scope: !5320, file: !931, line: 125, type: !262)
!5320 = distinct !DILexicalBlock(scope: !5321, file: !931, line: 124, column: 5)
!5321 = distinct !DILexicalBlock(scope: !5313, file: !931, line: 113, column: 7)
!5322 = !DILocation(line: 0, scope: !5313)
!5323 = !DILocation(line: 0, scope: !5306, inlinedAt: !5324)
!5324 = distinct !DILocation(line: 111, column: 24, scope: !5313)
!5325 = !DILocation(line: 37, column: 24, scope: !5306, inlinedAt: !5324)
!5326 = !DILocation(line: 113, column: 14, scope: !5321)
!5327 = !DILocation(line: 113, column: 7, scope: !5313)
!5328 = !DILocation(line: 116, column: 19, scope: !5329)
!5329 = distinct !DILexicalBlock(scope: !5330, file: !931, line: 116, column: 11)
!5330 = distinct !DILexicalBlock(scope: !5321, file: !931, line: 114, column: 5)
!5331 = !DILocation(line: 116, column: 11, scope: !5330)
!5332 = !DILocation(line: 120, column: 16, scope: !5329)
!5333 = !DILocation(line: 120, column: 9, scope: !5329)
!5334 = !DILocation(line: 125, column: 23, scope: !5320)
!5335 = !DILocation(line: 0, scope: !5320)
!5336 = !DILocation(line: 126, column: 18, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5320, file: !931, line: 126, column: 11)
!5338 = !DILocation(line: 126, column: 11, scope: !5320)
!5339 = !DILocation(line: 128, column: 39, scope: !5340)
!5340 = distinct !DILexicalBlock(scope: !5337, file: !931, line: 127, column: 9)
!5341 = !DILocalVariable(name: "__dest", arg: 1, scope: !5342, file: !2961, line: 26, type: !4799)
!5342 = distinct !DISubprogram(name: "memcpy", scope: !2961, file: !2961, line: 26, type: !4797, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !930, retainedNodes: !5343)
!5343 = !{!5341, !5344, !5345}
!5344 = !DILocalVariable(name: "__src", arg: 2, scope: !5342, file: !2961, line: 26, type: !1202)
!5345 = !DILocalVariable(name: "__len", arg: 3, scope: !5342, file: !2961, line: 26, type: !262)
!5346 = !DILocation(line: 0, scope: !5342, inlinedAt: !5347)
!5347 = distinct !DILocation(line: 128, column: 11, scope: !5340)
!5348 = !DILocation(line: 29, column: 10, scope: !5342, inlinedAt: !5347)
!5349 = !DILocation(line: 129, column: 11, scope: !5340)
!5350 = !DILocation(line: 133, column: 23, scope: !5351)
!5351 = distinct !DILexicalBlock(scope: !5352, file: !931, line: 133, column: 15)
!5352 = distinct !DILexicalBlock(scope: !5337, file: !931, line: 132, column: 9)
!5353 = !DILocation(line: 133, column: 15, scope: !5352)
!5354 = !DILocation(line: 138, column: 44, scope: !5355)
!5355 = distinct !DILexicalBlock(scope: !5351, file: !931, line: 134, column: 13)
!5356 = !DILocation(line: 0, scope: !5342, inlinedAt: !5357)
!5357 = distinct !DILocation(line: 138, column: 15, scope: !5355)
!5358 = !DILocation(line: 29, column: 10, scope: !5342, inlinedAt: !5357)
!5359 = !DILocation(line: 139, column: 15, scope: !5355)
!5360 = !DILocation(line: 139, column: 32, scope: !5355)
!5361 = !DILocation(line: 140, column: 13, scope: !5355)
!5362 = !DILocation(line: 0, scope: !5321)
!5363 = !DILocation(line: 145, column: 1, scope: !5313)
