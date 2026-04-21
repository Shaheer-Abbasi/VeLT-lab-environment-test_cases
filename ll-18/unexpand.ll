; ModuleID = 'src/unexpand.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list = type { ptr, ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s [OPTION]... [FILE]...\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [66 x i8] c"Convert blanks in each FILE to tabs, writing to standard output.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [9 x i8] c"unexpand\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [73 x i8] c"  -a, --all\0A         convert all blanks, instead of just initial blanks\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [85 x i8] c"      --first-only\0A         convert only leading sequences of blanks (overrides -a)\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [80 x i8] c"  -t, --tabs=N\0A         have tabs N characters apart instead of 8 (enables -a)\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !42
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !47
@.str.10 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !52
@.str.11 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !57
@.str.12 = private unnamed_addr constant [15 x i8] c",0123456789at:\00", align 1, !dbg !62
@longopts = internal constant [6 x %struct.option] [%struct.option { ptr @.str.53, i32 1, ptr null, i32 116 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 97 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 256 }, %struct.option { ptr @.str.56, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.57, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !67
@optarg = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !117
@.str.14 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !122
@.str.15 = private unnamed_addr constant [28 x i8] c"tab stop value is too large\00", align 1, !dbg !127
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !132
@.str.17 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !137
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !142
@.str.18 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !225
@.str.19 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !230
@.str.20 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !232
@.str.21 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !237
@.str.35 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !280
@.str.36 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !282
@.str.37 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !284
@.str.38 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !289
@.str.39 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !294
@.str.40 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !296
@.str.41 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !301
@.str.42 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !303
@.str.43 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !305
@.str.44 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !307
@.str.48 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !318
@.str.49 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !320
@.str.50 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !325
@.str.51 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !330
@.str.52 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !335
@.str.53 = private unnamed_addr constant [5 x i8] c"tabs\00", align 1, !dbg !340
@.str.54 = private unnamed_addr constant [4 x i8] c"all\00", align 1, !dbg !342
@.str.55 = private unnamed_addr constant [11 x i8] c"first-only\00", align 1, !dbg !344
@.str.56 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !349
@.str.57 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !351
@unexpand.line_in = internal global [262144 x i8] zeroinitializer, align 4, !dbg !353
@.str.58 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1, !dbg !423
@.str.59 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !428
@convert_entire_line = dso_local local_unnamed_addr global i8 0, align 1, !dbg !440
@exit_status = dso_local local_unnamed_addr global i32 0, align 4, !dbg !470
@first_free_tab = internal unnamed_addr global i64 0, align 8, !dbg !553
@tab_list = internal unnamed_addr global ptr null, align 8, !dbg !555
@n_tabs_allocated = internal global i64 0, align 8, !dbg !558
@.str.22 = private unnamed_addr constant [41 x i8] c"'/' specifier not at start of number: %s\00", align 1, !dbg !472
@.str.1.23 = private unnamed_addr constant [41 x i8] c"'+' specifier not at start of number: %s\00", align 1, !dbg !477
@.str.2.24 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1, !dbg !479
@.str.3.25 = private unnamed_addr constant [25 x i8] c"tab stop is too large %s\00", align 1, !dbg !481
@.str.4.26 = private unnamed_addr constant [43 x i8] c"tab size contains invalid character(s): %s\00", align 1, !dbg !486
@extend_size = internal unnamed_addr global i64 0, align 8, !dbg !581
@increment_size = internal unnamed_addr global i64 0, align 8, !dbg !583
@max_column_width = dso_local local_unnamed_addr global i64 0, align 8, !dbg !551
@tab_size = internal unnamed_addr global i64 0, align 8, !dbg !585
@.str.5.34 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1, !dbg !491
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !678
@stdin_argv = internal global [2 x ptr] [ptr @.str.6.37, ptr null], align 8, !dbg !589
@file_list = internal unnamed_addr global ptr null, align 8, !dbg !592
@next_file.prev_file = internal unnamed_addr global ptr null, align 8, !dbg !493
@.str.6.37 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !538
@.str.7.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !540
@stdin = external local_unnamed_addr global ptr, align 8
@.str.8.41 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !542
@.str.9.46 = private unnamed_addr constant [71 x i8] c"  -t, --tabs=LIST\0A         use comma separated list of tab positions.\0A\00", align 1, !dbg !544
@.str.10.63 = private unnamed_addr constant [305 x i8] c"         The last specified position can be prefixed with '/'\0A         to specify a tab size to use after the last\0A         explicitly specified tab stop.  Also a prefix of '+'\0A         can be used to align remaining tab stops relative to\0A         the last specified tab stop instead of the first column\0A\00", align 1, !dbg !546
@.str.12.11 = private unnamed_addr constant [47 x i8] c"'/' specifier only allowed with the last value\00", align 1, !dbg !562
@.str.13.12 = private unnamed_addr constant [47 x i8] c"'+' specifier only allowed with the last value\00", align 1, !dbg !567
@.str.14.29 = private unnamed_addr constant [21 x i8] c"tab size cannot be 0\00", align 1, !dbg !569
@.str.15.30 = private unnamed_addr constant [28 x i8] c"tab sizes must be ascending\00", align 1, !dbg !574
@.str.16.31 = private unnamed_addr constant [45 x i8] c"'/' specifier is mutually exclusive with '+'\00", align 1, !dbg !576
@oputs_.help_no_sgr.47 = internal unnamed_addr global i32 -1, align 4, !dbg !595
@.str.17.48 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !624
@.str.18.49 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !626
@.str.19.50 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !628
@.str.20.51 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !630
@.str.21.52 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !632
@.str.22.53 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !634
@.str.23 = private unnamed_addr constant [4 x i8] c"dir\00", align 1, !dbg !636
@.str.24 = private unnamed_addr constant [3 x i8] c"ls\00", align 1, !dbg !638
@.str.25 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1, !dbg !640
@.str.26 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1, !dbg !642
@.str.27 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1, !dbg !644
@.str.28 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1, !dbg !646
@.str.29 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1, !dbg !648
@.str.30 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !650
@.str.31 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !652
@.str.32 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !654
@.str.33 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !656
@.str.34 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !658
@.str.35.54 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !660
@.str.36.55 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !662
@.str.37.56 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !664
@.str.38.57 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !666
@.str.39.58 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !668
@.str.40.59 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !670
@.str.41.60 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !672
@.str.42.61 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !674
@.str.43.62 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !676
@.str.66 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !679
@Version = dso_local local_unnamed_addr global ptr @.str.66, align 8, !dbg !682
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !686
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !699
@.str.69 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !691
@.str.1.70 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !693
@.str.2.71 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !695
@.str.3.72 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !697
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !701
@stderr = external local_unnamed_addr global ptr, align 8
@.str.73 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !707
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !743
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !709
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !733
@.str.1.79 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !735
@.str.2.81 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !737
@.str.3.80 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !739
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !741
@.str.4.74 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !745
@.str.5.75 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !747
@.str.6.76 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !749
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !752
@.str.100 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !758
@.str.1.101 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !760
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !762
@.str.104 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !789
@.str.1.105 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !792
@.str.2.106 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !794
@.str.3.107 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !799
@.str.4.108 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !801
@.str.5.109 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !803
@.str.6.110 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !805
@.str.7.111 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !807
@.str.8.112 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !809
@.str.9.113 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !811
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.104, ptr @.str.1.105, ptr @.str.2.106, ptr @.str.3.107, ptr @.str.4.108, ptr @.str.5.109, ptr @.str.6.110, ptr @.str.7.111, ptr @.str.8.112, ptr @.str.9.113, ptr null], align 8, !dbg !813
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !826
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !840
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !878
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !885
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !842
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !887
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !830
@.str.10.116 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !847
@.str.11.114 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !849
@.str.12.117 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !851
@.str.13.115 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !853
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !855
@.str.124 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !891
@.str.1.125 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !894
@.str.2.126 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !896
@.str.3.127 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !898
@.str.4.128 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !900
@.str.5.129 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !902
@.str.6.130 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !907
@.str.7.131 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !912
@.str.8.132 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !914
@.str.9.133 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !916
@.str.10.134 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !918
@.str.11.135 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !923
@.str.12.136 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !928
@.str.13.137 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !930
@.str.14.138 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !935
@.str.15.139 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !940
@.str.16.140 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !945
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.145 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !950
@.str.18.146 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !952
@.str.19.147 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !954
@.str.20.148 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !956
@.str.21.149 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !958
@.str.22.150 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !960
@.str.23.151 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !962
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !967
@exit_failure = dso_local global i32 1, align 4, !dbg !973
@.str.168 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !979
@.str.1.166 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !982
@.str.2.167 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !984
@.str.175 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !986
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !989
@.str.180 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !1004
@.str.1.181 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !1007

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1087 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1091, metadata !DIExpression()), !dbg !1092
  %2 = icmp eq i32 %0, 0, !dbg !1093
  br i1 %2, label %8, label %3, !dbg !1095

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1096, !tbaa !1098
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !1096
  %6 = load ptr, ptr @program_name, align 8, !dbg !1096, !tbaa !1098
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !1096
  br label %40, !dbg !1096

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !1102
  %10 = load ptr, ptr @program_name, align 8, !dbg !1102, !tbaa !1098
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !1102
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !1104
  %13 = load ptr, ptr @stdout, align 8, !dbg !1104, !tbaa !1098
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1104
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #38, !dbg !1105
  %16 = load ptr, ptr @stdout, align 8, !dbg !1105, !tbaa !1098
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1105
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #38, !dbg !1108
  %19 = load ptr, ptr @stdout, align 8, !dbg !1108, !tbaa !1098
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !1108
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !1111
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1111
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !1112
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1112
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !1113
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1113
  tail call void @emit_tab_list_info(ptr noundef nonnull @.str.3) #38, !dbg !1114
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !1115
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1115
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !1116
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1116
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1117, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata !1136, metadata !1130, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr poison, metadata !1129, metadata !DIExpression()), !dbg !1134
  tail call void @emit_bug_reporting_address() #38, !dbg !1137
  %26 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !1138
  call void @llvm.dbg.value(metadata ptr %26, metadata !1132, metadata !DIExpression()), !dbg !1134
  %27 = icmp eq ptr %26, null, !dbg !1139
  br i1 %27, label %35, label %28, !dbg !1141

28:                                               ; preds = %8
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(4) @.str.48, i64 noundef 3) #39, !dbg !1142
  %30 = icmp eq i32 %29, 0, !dbg !1142
  br i1 %30, label %35, label %31, !dbg !1143

31:                                               ; preds = %28
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #38, !dbg !1144
  %33 = load ptr, ptr @stdout, align 8, !dbg !1144, !tbaa !1098
  %34 = tail call i32 @fputs_unlocked(ptr noundef %32, ptr noundef %33), !dbg !1144
  br label %35, !dbg !1146

35:                                               ; preds = %8, %28, %31
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1129, metadata !DIExpression()), !dbg !1134
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1133, metadata !DIExpression()), !dbg !1134
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #38, !dbg !1147
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3) #38, !dbg !1147
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #38, !dbg !1148
  %39 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52) #38, !dbg !1148
  br label %40

40:                                               ; preds = %35, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !1149
  unreachable, !dbg !1149
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1150 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1154 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1160 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1163 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !144 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !148, metadata !DIExpression()), !dbg !1166
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !149, metadata !DIExpression()), !dbg !1166
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1167, !tbaa !1168
  %3 = icmp eq i32 %2, -1, !dbg !1170
  br i1 %3, label %4, label %16, !dbg !1171

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.18) #38, !dbg !1172
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !150, metadata !DIExpression()), !dbg !1173
  %6 = icmp eq ptr %5, null, !dbg !1174
  br i1 %6, label %14, label %7, !dbg !1175

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1176, !tbaa !1177
  %9 = icmp eq i8 %8, 0, !dbg !1176
  br i1 %9, label %14, label %10, !dbg !1178

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1179, metadata !DIExpression()), !dbg !1186
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !1185, metadata !DIExpression()), !dbg !1186
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.19) #39, !dbg !1188
  %12 = icmp eq i32 %11, 0, !dbg !1189
  %13 = zext i1 %12 to i32, !dbg !1178
  br label %14, !dbg !1178

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1190, !tbaa !1168
  br label %16, !dbg !1191

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1192
  %18 = icmp eq i32 %17, 0, !dbg !1192
  br i1 %18, label %22, label %19, !dbg !1194

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1195, !tbaa !1098
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1195
  br label %121, !dbg !1197

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !153, metadata !DIExpression()), !dbg !1166
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.20) #39, !dbg !1198
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1199
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !155, metadata !DIExpression()), !dbg !1166
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !1200
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !156, metadata !DIExpression()), !dbg !1166
  %26 = icmp eq ptr %25, null, !dbg !1201
  br i1 %26, label %53, label %27, !dbg !1202

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1203
  br i1 %28, label %53, label %29, !dbg !1204

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !157, metadata !DIExpression()), !dbg !1205
  tail call void @llvm.dbg.value(metadata i64 0, metadata !161, metadata !DIExpression()), !dbg !1205
  %30 = icmp ult ptr %24, %25, !dbg !1206
  br i1 %30, label %31, label %53, !dbg !1207

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !1166
  %33 = load ptr, ptr %32, align 8, !tbaa !1098
  br label %34, !dbg !1207

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !157, metadata !DIExpression()), !dbg !1205
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !161, metadata !DIExpression()), !dbg !1205
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1208
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !157, metadata !DIExpression()), !dbg !1205
  %38 = load i8, ptr %35, align 1, !dbg !1208, !tbaa !1177
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1208
  %41 = load i16, ptr %40, align 2, !dbg !1208, !tbaa !1209
  %42 = freeze i16 %41, !dbg !1211
  %43 = lshr i16 %42, 13, !dbg !1211
  %44 = and i16 %43, 1, !dbg !1211
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1212
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !161, metadata !DIExpression()), !dbg !1205
  %47 = icmp ult ptr %37, %25, !dbg !1206
  %48 = icmp ult i64 %46, 2, !dbg !1213
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1213
  br i1 %49, label %34, label %50, !dbg !1207, !llvm.loop !1214

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !1212
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !1216
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1218
  br label %53, !dbg !1218

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1166
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !153, metadata !DIExpression()), !dbg !1166
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !156, metadata !DIExpression()), !dbg !1166
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.21) #39, !dbg !1219
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !162, metadata !DIExpression()), !dbg !1166
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !1220
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !163, metadata !DIExpression()), !dbg !1166
  br label %58, !dbg !1221

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !1166
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !153, metadata !DIExpression()), !dbg !1166
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !163, metadata !DIExpression()), !dbg !1166
  %61 = load i8, ptr %59, align 1, !dbg !1222, !tbaa !1177
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !1223

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1224
  %64 = load i8, ptr %63, align 1, !dbg !1227, !tbaa !1177
  %65 = icmp ne i8 %64, 45, !dbg !1228
  %66 = select i1 %65, i1 %60, i1 false, !dbg !1229
  br label %67, !dbg !1229

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !153, metadata !DIExpression()), !dbg !1166
  %69 = tail call ptr @__ctype_b_loc() #41, !dbg !1230
  %70 = load ptr, ptr %69, align 8, !dbg !1230, !tbaa !1098
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !1230
  %73 = load i16, ptr %72, align 2, !dbg !1230, !tbaa !1209
  %74 = and i16 %73, 8192, !dbg !1230
  %75 = icmp eq i16 %74, 0, !dbg !1230
  br i1 %75, label %89, label %76, !dbg !1232

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !1233
  br i1 %77, label %91, label %78, !dbg !1236

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1237
  %80 = load i8, ptr %79, align 1, !dbg !1237, !tbaa !1177
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !1237
  %83 = load i16, ptr %82, align 2, !dbg !1237, !tbaa !1209
  %84 = and i16 %83, 8192, !dbg !1237
  %85 = icmp eq i16 %84, 0, !dbg !1237
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !1238
  br i1 %88, label %89, label %91, !dbg !1238

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1239
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !163, metadata !DIExpression()), !dbg !1166
  br label %58, !dbg !1221, !llvm.loop !1240

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !1166
  %92 = ptrtoint ptr %24 to i64, !dbg !1242
  %93 = load ptr, ptr @stdout, align 8, !dbg !1242, !tbaa !1098
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !1242
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1179, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata !1136, metadata !1185, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1179, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata !1136, metadata !1185, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1179, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata !1136, metadata !1185, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1179, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata !1136, metadata !1185, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1179, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata !1136, metadata !1185, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1179, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata !1136, metadata !1185, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1179, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata !1136, metadata !1185, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1179, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata !1136, metadata !1185, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1179, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata !1136, metadata !1185, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1179, metadata !DIExpression()), !dbg !1261
  call void @llvm.dbg.value(metadata !1136, metadata !1185, metadata !DIExpression()), !dbg !1261
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !220, metadata !DIExpression()), !dbg !1166
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.35, i64 noundef 6) #39, !dbg !1263
  %96 = icmp eq i32 %95, 0, !dbg !1263
  br i1 %96, label %100, label %97, !dbg !1265

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.36, i64 noundef 9) #39, !dbg !1266
  %99 = icmp eq i32 %98, 0, !dbg !1266
  br i1 %99, label %100, label %103, !dbg !1267

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1268
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #38, !dbg !1268
  br label %106, !dbg !1270

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1271
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #38, !dbg !1271
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1273, !tbaa !1098
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %107), !dbg !1273
  %109 = load ptr, ptr @stdout, align 8, !dbg !1274, !tbaa !1098
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %109), !dbg !1274
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1275
  %112 = sub i64 %111, %92, !dbg !1275
  %113 = load ptr, ptr @stdout, align 8, !dbg !1275, !tbaa !1098
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1275
  %115 = load ptr, ptr @stdout, align 8, !dbg !1276, !tbaa !1098
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %115), !dbg !1276
  %117 = load ptr, ptr @stdout, align 8, !dbg !1277, !tbaa !1098
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %117), !dbg !1277
  %119 = load ptr, ptr @stdout, align 8, !dbg !1278, !tbaa !1098
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1278
  br label %121, !dbg !1279

121:                                              ; preds = %106, %19
  ret void, !dbg !1279
}

; Function Attrs: nounwind
declare !dbg !1280 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1284 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1288 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1290 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1293 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1296 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1299 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1302 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1308 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1309 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1315 {
  %3 = alloca %struct.__mbstate_t, align 4, !DIAssignID !1325
  %4 = alloca i32, align 4, !DIAssignID !1326
  %5 = alloca i64, align 8, !DIAssignID !1327
  %6 = alloca i8, align 4, !DIAssignID !1328
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1319, metadata !DIExpression()), !dbg !1329
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1320, metadata !DIExpression()), !dbg !1329
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1321, metadata !DIExpression()), !dbg !1329
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1324, metadata !DIExpression()), !dbg !1329
  %7 = load ptr, ptr %1, align 8, !dbg !1330, !tbaa !1098
  tail call void @set_program_name(ptr noundef %7) #38, !dbg !1331
  %8 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.9) #38, !dbg !1332
  %9 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #38, !dbg !1333
  %10 = tail call ptr @textdomain(ptr noundef nonnull @.str.10) #38, !dbg !1334
  %11 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1335
  br label %12, !dbg !1336

12:                                               ; preds = %40, %2
  %13 = phi i64 [ %46, %40 ], [ undef, %2 ]
  %14 = phi i1 [ true, %40 ], [ false, %2 ]
  %15 = phi i1 [ %.lcssa39, %40 ], [ false, %2 ]
  br label %16, !dbg !1336

16:                                               ; preds = %30, %12
  %17 = phi i1 [ %14, %12 ], [ false, %30 ]
  %18 = phi i1 [ %15, %12 ], [ %.lcssa42, %30 ]
  br label %19, !dbg !1336

.loopexit6:                                       ; preds = %21
  br label %19, !dbg !1336, !llvm.loop !1337

19:                                               ; preds = %.loopexit6, %16
  %20 = phi i1 [ %18, %16 ], [ true, %.loopexit6 ]
  br label %21, !dbg !1336

21:                                               ; preds = %27, %19
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1324, metadata !DIExpression()), !dbg !1329
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1321, metadata !DIExpression()), !dbg !1329
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !1322, metadata !DIExpression()), !dbg !1329
  %22 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1339
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !1323, metadata !DIExpression()), !dbg !1329
  switch i32 %22, label %36 [
    i32 -1, label %49
    i32 63, label %23
    i32 97, label %24
    i32 116, label %25
    i32 256, label %.loopexit6
    i32 44, label %28
    i32 -2, label %31
    i32 -3, label %32
  ], !dbg !1336

23:                                               ; preds = %21
  tail call void @usage(i32 noundef 1) #42, !dbg !1340
  unreachable, !dbg !1340

24:                                               ; preds = %21
  store i8 1, ptr @convert_entire_line, align 1, !dbg !1343, !tbaa !1344
  br label %27, !dbg !1346

25:                                               ; preds = %21
  store i8 1, ptr @convert_entire_line, align 1, !dbg !1347, !tbaa !1344
  %26 = load ptr, ptr @optarg, align 8, !dbg !1348, !tbaa !1098
  tail call void @parse_tab_stops(ptr noundef %26) #38, !dbg !1349
  br label %27, !dbg !1350

27:                                               ; preds = %25, %24
  br label %21, !dbg !1329, !llvm.loop !1337

28:                                               ; preds = %21
  %.lcssa42 = phi i1 [ %20, %21 ]
  br i1 %17, label %29, label %30, !dbg !1351

29:                                               ; preds = %28
  tail call void @add_tab_stop(i64 noundef %13) #38, !dbg !1352
  br label %30, !dbg !1352

30:                                               ; preds = %29, %28
  br label %16, !dbg !1336, !llvm.loop !1337

31:                                               ; preds = %21
  tail call void @usage(i32 noundef 0) #42, !dbg !1354
  unreachable, !dbg !1354

32:                                               ; preds = %21
  %33 = load ptr, ptr @stdout, align 8, !dbg !1355, !tbaa !1098
  %34 = load ptr, ptr @Version, align 8, !dbg !1355, !tbaa !1098
  %35 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #38, !dbg !1355
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, ptr noundef %34, ptr noundef %35, ptr noundef null) #38, !dbg !1355
  tail call void @exit(i32 noundef 0) #40, !dbg !1355
  unreachable, !dbg !1355

36:                                               ; preds = %21
  %.lcssa45 = phi i1 [ %17, %21 ]
  %.lcssa39 = phi i1 [ %20, %21 ]
  %.lcssa32 = phi i32 [ %22, %21 ], !dbg !1339
  %37 = select i1 %.lcssa45, i64 %13, i64 0, !dbg !1356
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1321, metadata !DIExpression()), !dbg !1329
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !1322, metadata !DIExpression()), !dbg !1329
  %38 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 10), !dbg !1357
  %39 = extractvalue { i64, i1 } %38, 1, !dbg !1357
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1322, metadata !DIExpression()), !dbg !1329
  br i1 %39, label %47, label %40, !dbg !1357

40:                                               ; preds = %36
  %41 = extractvalue { i64, i1 } %38, 0, !dbg !1357
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !1322, metadata !DIExpression()), !dbg !1329
  %42 = add nsw i32 %.lcssa32, -48, !dbg !1357
  %43 = sext i32 %42 to i64, !dbg !1357
  %44 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %41, i64 %43), !dbg !1357
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !1357
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !1357
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !1322, metadata !DIExpression()), !dbg !1329
  br i1 %45, label %47, label %12, !dbg !1359, !llvm.loop !1337

47:                                               ; preds = %40, %36
  %48 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #38, !dbg !1360
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %48) #38, !dbg !1360
  unreachable, !dbg !1360

49:                                               ; preds = %21
  %.lcssa50 = phi i64 [ %13, %21 ]
  %.lcssa46 = phi i1 [ %17, %21 ]
  %.lcssa40 = phi i1 [ %20, %21 ]
  br i1 %.lcssa40, label %50, label %51, !dbg !1361

50:                                               ; preds = %49
  store i8 0, ptr @convert_entire_line, align 1, !dbg !1362, !tbaa !1344
  br label %51, !dbg !1364

51:                                               ; preds = %50, %49
  br i1 %.lcssa46, label %52, label %53, !dbg !1365

52:                                               ; preds = %51
  tail call void @add_tab_stop(i64 noundef %.lcssa50) #38, !dbg !1366
  br label %53, !dbg !1366

53:                                               ; preds = %52, %51
  tail call void @finalize_tab_stops() #38, !dbg !1368
  %54 = load i32, ptr @optind, align 4, !dbg !1369
  %55 = icmp slt i32 %54, %0, !dbg !1370
  %56 = sext i32 %54 to i64, !dbg !1371
  %57 = getelementptr inbounds ptr, ptr %1, i64 %56, !dbg !1371
  %58 = select i1 %55, ptr %57, ptr null, !dbg !1371
  tail call void @set_file_list(ptr noundef %58) #38, !dbg !1372
  call void @llvm.dbg.assign(metadata i1 undef, metadata !395, metadata !DIExpression(), metadata !1327, metadata ptr %5, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.assign(metadata i1 undef, metadata !403, metadata !DIExpression(), metadata !1328, metadata ptr %6, metadata !DIExpression()), !dbg !1375
  %59 = tail call ptr @next_file(ptr noundef null) #38, !dbg !1376
  call void @llvm.dbg.value(metadata ptr %59, metadata !359, metadata !DIExpression()), !dbg !1377
  %60 = icmp eq ptr %59, null, !dbg !1378
  br i1 %60, label %352, label %61, !dbg !1380

61:                                               ; preds = %53
  call void @llvm.dbg.value(metadata ptr undef, metadata !1381, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !1387, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata i64 262144, metadata !1388, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata ptr %59, metadata !1389, metadata !DIExpression()), !dbg !1390
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %59, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 262144, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1377
  %62 = load i64, ptr @max_column_width, align 8, !dbg !1392, !tbaa !1393
  %63 = shl i64 %62, 4, !dbg !1395
  %64 = tail call noalias nonnull ptr @ximalloc(i64 noundef %63) #43, !dbg !1396
  call void @llvm.dbg.value(metadata ptr %64, metadata !360, metadata !DIExpression()), !dbg !1377
  br label %65, !dbg !1397

65:                                               ; preds = %351, %61
  %66 = phi i64 [ 0, %61 ], [ %.lcssa31, %351 ], !dbg !1377
  %67 = phi i64 [ 0, %61 ], [ %.lcssa25, %351 ], !dbg !1377
  %68 = phi ptr [ %59, %61 ], [ %.lcssa19, %351 ], !dbg !1398
  %69 = phi ptr [ %59, %61 ], [ %.lcssa13, %351 ], !dbg !1377
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %68, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 262144, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %67, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %66, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %69, metadata !359, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata i8 1, metadata !387, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 0, metadata !388, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 0, metadata !394, metadata !DIExpression()), !dbg !1373
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !1399
  store i64 0, ptr %5, align 8, !dbg !1400, !tbaa !1393, !DIAssignID !1401
  call void @llvm.dbg.assign(metadata i64 0, metadata !395, metadata !DIExpression(), metadata !1401, metadata ptr %5, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 0, metadata !396, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 1, metadata !397, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 0, metadata !398, metadata !DIExpression()), !dbg !1373
  br label %70, !dbg !1402

70:                                               ; preds = %344, %65
  %71 = phi i64 [ %66, %65 ], [ %205, %344 ], !dbg !1377
  %72 = phi i64 [ %67, %65 ], [ %206, %344 ], !dbg !1377
  %73 = phi ptr [ %68, %65 ], [ %210, %344 ], !dbg !1398
  %74 = phi i64 [ 0, %65 ], [ %345, %344 ], !dbg !1373
  %75 = phi i1 [ true, %65 ], [ %346, %344 ]
  %76 = phi i1 [ false, %65 ], [ %347, %344 ]
  %77 = phi i64 [ 0, %65 ], [ %348, %344 ], !dbg !1373
  %78 = phi i1 [ true, %65 ], [ %349, %344 ]
  %79 = phi ptr [ %69, %65 ], [ %211, %344 ], !dbg !1377
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %73, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 262144, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %72, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %71, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %79, metadata !359, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata i8 poison, metadata !387, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %77, metadata !388, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !396, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !397, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %74, metadata !398, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %73, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 262144, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %72, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %71, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %79, metadata !359, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata ptr undef, metadata !1403, metadata !DIExpression()), !dbg !1413
  %80 = sub nsw i64 %71, %72, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %80, metadata !1408, metadata !DIExpression()), !dbg !1413
  %81 = icmp slt i64 %80, 4, !dbg !1416
  br i1 %81, label %82, label %102, !dbg !1417

82:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %73, metadata !1418, metadata !DIExpression()), !dbg !1424
  %83 = load i32, ptr %73, align 8, !dbg !1426, !tbaa !1427
  %84 = and i32 %83, 16, !dbg !1429
  %85 = icmp eq i32 %84, 0, !dbg !1429
  br i1 %85, label %86, label %97, !dbg !1430

86:                                               ; preds = %82
  %87 = icmp sgt i64 %80, 0, !dbg !1431
  br i1 %87, label %88, label %91, !dbg !1433

88:                                               ; preds = %86
  %89 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %72, !dbg !1434
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !1436, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata ptr %89, metadata !1442, metadata !DIExpression()), !dbg !1444
  call void @llvm.dbg.value(metadata i64 %80, metadata !1443, metadata !DIExpression()), !dbg !1444
  %90 = call ptr @__memmove_chk(ptr noundef nonnull @unexpand.line_in, ptr noundef nonnull %89, i64 noundef %80, i64 noundef 262144) #38, !dbg !1446
  call void @llvm.dbg.value(metadata i64 %80, metadata !1409, metadata !DIExpression()), !dbg !1447
  br label %91

91:                                               ; preds = %88, %86
  %92 = phi i64 [ %80, %88 ], [ 0, %86 ], !dbg !1448
  call void @llvm.dbg.value(metadata i64 %92, metadata !1409, metadata !DIExpression()), !dbg !1447
  %93 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %92, !dbg !1449
  %94 = sub nuw nsw i64 262144, %92, !dbg !1449
  %95 = call i64 @fread_unlocked(ptr noundef nonnull %93, i64 noundef 1, i64 noundef %94, ptr noundef nonnull %73), !dbg !1449
  %96 = add i64 %95, %92, !dbg !1450
  call void @llvm.dbg.value(metadata i64 %96, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %96, metadata !1408, metadata !DIExpression()), !dbg !1413
  br label %97, !dbg !1451

97:                                               ; preds = %91, %82
  %98 = phi i64 [ %96, %91 ], [ %71, %82 ], !dbg !1377
  %99 = phi i64 [ 0, %91 ], [ %72, %82 ], !dbg !1377
  %100 = phi i64 [ %96, %91 ], [ %80, %82 ], !dbg !1413
  call void @llvm.dbg.value(metadata i64 %99, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %98, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %100, metadata !1408, metadata !DIExpression()), !dbg !1413
  %101 = icmp slt i64 %100, 1, !dbg !1452
  br i1 %101, label %148, label %102, !dbg !1454

102:                                              ; preds = %97, %70
  %103 = phi i64 [ %98, %97 ], [ %71, %70 ], !dbg !1377
  %104 = phi i64 [ %99, %97 ], [ %72, %70 ], !dbg !1377
  call void @llvm.dbg.value(metadata i64 %104, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %103, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1377
  %105 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %104, !dbg !1455
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1456, metadata !DIExpression(), metadata !1325, metadata ptr %3, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1464, metadata !DIExpression(), metadata !1326, metadata ptr %4, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata ptr %105, metadata !1461, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1462, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1476
  %106 = load i8, ptr %105, align 1, !dbg !1478, !tbaa !1177
  call void @llvm.dbg.value(metadata i8 %106, metadata !1463, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i8 %106, metadata !1479, metadata !DIExpression()), !dbg !1484
  %107 = icmp sgt i8 %106, -1, !dbg !1487
  br i1 %107, label %129, label %108, !dbg !1488

108:                                              ; preds = %102
  call void @llvm.dbg.value(metadata !DIArgList(ptr @unexpand.line_in, i64 %103), metadata !1462, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1476
  %109 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %103, !dbg !1489
  call void @llvm.dbg.value(metadata ptr %109, metadata !1462, metadata !DIExpression()), !dbg !1476
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1490
  store i32 0, ptr %3, align 4, !dbg !1491, !tbaa !1492, !DIAssignID !1494
  call void @llvm.dbg.assign(metadata i32 0, metadata !1456, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1494, metadata ptr %3, metadata !DIExpression()), !dbg !1476
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #38, !dbg !1495
  %110 = ptrtoint ptr %109 to i64, !dbg !1496
  %111 = ptrtoint ptr %105 to i64, !dbg !1496
  %112 = sub i64 %110, %111, !dbg !1496
  %113 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %105, i64 noundef %112, ptr noundef nonnull %3) #38, !dbg !1497
  call void @llvm.dbg.value(metadata i64 %113, metadata !1465, metadata !DIExpression()), !dbg !1476
  %114 = icmp slt i64 %113, 0, !dbg !1498
  br i1 %114, label %123, label %115, !dbg !1500, !prof !1501

115:                                              ; preds = %108
  %116 = load i32, ptr %4, align 4, !dbg !1502, !tbaa !1168
  call void @llvm.dbg.value(metadata i32 %116, metadata !1503, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata i64 %113, metadata !1508, metadata !DIExpression()), !dbg !1509
  %117 = icmp ne i64 %113, 0, !dbg !1511
  call void @llvm.assume(i1 %117), !dbg !1511
  %118 = icmp ult i64 %113, 5, !dbg !1512
  call void @llvm.assume(i1 %118), !dbg !1512
  %119 = icmp ult i32 %116, 1114112, !dbg !1513
  call void @llvm.assume(i1 %119), !dbg !1513
  %120 = shl nuw nsw i64 %113, 40, !dbg !1514
  %121 = zext nneg i32 %116 to i64, !dbg !1514
  %122 = or disjoint i64 %120, %121, !dbg !1514
  br label %127, !dbg !1515

123:                                              ; preds = %108
  call void @llvm.dbg.value(metadata i8 %106, metadata !1516, metadata !DIExpression()), !dbg !1521
  %124 = zext i8 %106 to i64, !dbg !1523
  %125 = shl nuw nsw i64 %124, 32, !dbg !1523
  %126 = or disjoint i64 %125, 1099511627776, !dbg !1523
  br label %127, !dbg !1524

127:                                              ; preds = %123, %115
  %128 = phi i64 [ %126, %123 ], [ %122, %115 ], !dbg !1476
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #38, !dbg !1525
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1525
  br label %132

129:                                              ; preds = %102
  call void @llvm.dbg.value(metadata i64 1, metadata !1508, metadata !DIExpression()), !dbg !1526
  %130 = zext nneg i8 %106 to i64, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %130, metadata !1503, metadata !DIExpression()), !dbg !1526
  %131 = or disjoint i64 %130, 1099511627776, !dbg !1528
  br label %132, !dbg !1529

132:                                              ; preds = %129, %127
  %133 = phi i64 [ %131, %129 ], [ %128, %127 ], !dbg !1476
  call void @llvm.dbg.value(metadata i64 %133, metadata !1412, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %133, metadata !1412, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %133, metadata !1412, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %133, metadata !1412, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1413
  %134 = and i64 %133, 1095216660480, !dbg !1530
  %135 = icmp eq i64 %134, 0, !dbg !1530
  br i1 %135, label %139, label %136, !dbg !1532

136:                                              ; preds = %132
  call void @llvm.dbg.value(metadata i64 %104, metadata !361, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1377
  %137 = load i8, ptr %105, align 1, !dbg !1533, !tbaa !1177
  %138 = zext i8 %137 to i64, !dbg !1535
  call void @llvm.dbg.value(metadata i8 %137, metadata !1412, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1413
  br label %141

139:                                              ; preds = %132
  %140 = lshr i64 %133, 40, !dbg !1536
  call void @llvm.dbg.value(metadata i64 %140, metadata !1412, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %133, metadata !1412, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1413
  call void @llvm.dbg.value(metadata !DIArgList(i64 %104, i64 %140), metadata !361, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1377
  br label %141, !dbg !1537

141:                                              ; preds = %139, %136
  %142 = phi i64 [ %140, %139 ], [ 1, %136 ]
  %143 = phi i64 [ %133, %139 ], [ %138, %136 ], !dbg !1413
  %144 = add nsw i64 %142, %104, !dbg !1538
  call void @llvm.dbg.value(metadata i64 %144, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i32 poison, metadata !1412, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1413
  %145 = and i64 %133, -4294967296, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %103, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 poison, metadata !1412, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1413
  call void @llvm.dbg.value(metadata i64 poison, metadata !1412, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1413
  call void @llvm.dbg.value(metadata i64 poison, metadata !1412, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1413
  call void @llvm.dbg.value(metadata i64 poison, metadata !1412, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1413
  %146 = trunc i64 %143 to i32, !dbg !1540
  call void @llvm.dbg.value(metadata i32 %146, metadata !375, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1373
  call void @llvm.dbg.value(metadata !DIArgList(i64 %143, i64 %145), metadata !375, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1373
  call void @llvm.dbg.value(metadata !DIArgList(i64 %143, i64 %145), metadata !375, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1373
  call void @llvm.dbg.value(metadata i64 poison, metadata !375, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1373
  %147 = icmp eq i32 %146, -1, !dbg !1541
  br i1 %147, label %148, label %204, !dbg !1542

148:                                              ; preds = %141, %97
  %149 = phi i64 [ %145, %141 ], [ 4294967295, %97 ]
  %150 = phi i64 [ %144, %141 ], [ %99, %97 ]
  %151 = phi i64 [ %103, %141 ], [ %98, %97 ]
  %152 = call ptr @next_file(ptr noundef %79) #38, !dbg !1543
  call void @llvm.dbg.value(metadata ptr %152, metadata !359, metadata !DIExpression()), !dbg !1377
  %153 = icmp eq ptr %152, null, !dbg !1542
  br i1 %153, label %204, label %.preheader, !dbg !1544

.preheader:                                       ; preds = %148
  br label %154, !dbg !1544

154:                                              ; preds = %.preheader, %198
  %155 = phi ptr [ %202, %198 ], [ %152, %.preheader ], !dbg !1545
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %155, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 262144, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %155, metadata !359, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata ptr undef, metadata !1403, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata i64 0, metadata !1408, metadata !DIExpression()), !dbg !1413
  call void @llvm.dbg.value(metadata ptr %155, metadata !1418, metadata !DIExpression()), !dbg !1424
  %156 = load i32, ptr %155, align 8, !dbg !1426, !tbaa !1427
  %157 = and i32 %156, 16, !dbg !1429
  %158 = icmp eq i32 %157, 0, !dbg !1429
  br i1 %158, label %159, label %198, !dbg !1430

159:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 0, metadata !1409, metadata !DIExpression()), !dbg !1447
  %160 = call i64 @fread_unlocked(ptr noundef nonnull @unexpand.line_in, i64 noundef 1, i64 noundef 262144, ptr noundef nonnull %155), !dbg !1449
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %160, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %160, metadata !1408, metadata !DIExpression()), !dbg !1413
  %161 = icmp slt i64 %160, 1, !dbg !1452
  br i1 %161, label %198, label %162, !dbg !1454

162:                                              ; preds = %159
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %160, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1377
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1456, metadata !DIExpression(), metadata !1325, metadata ptr %3, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1464, metadata !DIExpression(), metadata !1326, metadata ptr %4, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !1461, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1462, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1476
  %163 = load i8, ptr @unexpand.line_in, align 4, !dbg !1478
  call void @llvm.dbg.value(metadata i8 %163, metadata !1463, metadata !DIExpression()), !dbg !1476
  call void @llvm.dbg.value(metadata i8 %163, metadata !1479, metadata !DIExpression()), !dbg !1484
  %164 = icmp sgt i8 %163, -1, !dbg !1487
  br i1 %164, label %165, label %168, !dbg !1488

165:                                              ; preds = %162
  call void @llvm.dbg.value(metadata i64 1, metadata !1508, metadata !DIExpression()), !dbg !1526
  %166 = zext nneg i8 %163 to i64, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %166, metadata !1503, metadata !DIExpression()), !dbg !1526
  %167 = or disjoint i64 %166, 1099511627776, !dbg !1528
  br label %187, !dbg !1529

168:                                              ; preds = %162
  call void @llvm.dbg.value(metadata !DIArgList(ptr @unexpand.line_in, i64 %160), metadata !1462, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1476
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1490
  store i32 0, ptr %3, align 4, !dbg !1491, !tbaa !1492, !DIAssignID !1494
  call void @llvm.dbg.assign(metadata i32 0, metadata !1456, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1494, metadata ptr %3, metadata !DIExpression()), !dbg !1476
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #38, !dbg !1495
  %169 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull @unexpand.line_in, i64 noundef %160, ptr noundef nonnull %3) #38, !dbg !1497
  call void @llvm.dbg.value(metadata i64 %169, metadata !1465, metadata !DIExpression()), !dbg !1476
  %170 = icmp slt i64 %169, 0, !dbg !1498
  br i1 %170, label %171, label %175, !dbg !1500, !prof !1501

171:                                              ; preds = %168
  call void @llvm.dbg.value(metadata i8 %163, metadata !1516, metadata !DIExpression()), !dbg !1521
  %172 = zext i8 %163 to i64, !dbg !1523
  %173 = shl nuw nsw i64 %172, 32, !dbg !1523
  %174 = or disjoint i64 %173, 1099511627776, !dbg !1523
  br label %183, !dbg !1524

175:                                              ; preds = %168
  %176 = load i32, ptr %4, align 4, !dbg !1502, !tbaa !1168
  call void @llvm.dbg.value(metadata i32 %176, metadata !1503, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.value(metadata i64 %169, metadata !1508, metadata !DIExpression()), !dbg !1509
  %177 = icmp ne i64 %169, 0, !dbg !1511
  call void @llvm.assume(i1 %177), !dbg !1511
  %178 = icmp ult i64 %169, 5, !dbg !1512
  call void @llvm.assume(i1 %178), !dbg !1512
  %179 = icmp ult i32 %176, 1114112, !dbg !1513
  call void @llvm.assume(i1 %179), !dbg !1513
  %180 = shl nuw nsw i64 %169, 40, !dbg !1514
  %181 = zext nneg i32 %176 to i64, !dbg !1514
  %182 = or disjoint i64 %180, %181, !dbg !1514
  br label %183, !dbg !1515

183:                                              ; preds = %175, %171
  %184 = phi i64 [ %174, %171 ], [ %182, %175 ], !dbg !1476
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #38, !dbg !1525
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1525
  %185 = load i8, ptr @unexpand.line_in, align 4, !dbg !1532
  %186 = zext i8 %185 to i64, !dbg !1532
  br label %187

187:                                              ; preds = %183, %165
  %188 = phi i64 [ %186, %183 ], [ %166, %165 ], !dbg !1532
  %189 = phi i64 [ %184, %183 ], [ %167, %165 ], !dbg !1476
  call void @llvm.dbg.value(metadata i64 %189, metadata !1412, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %189, metadata !1412, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %189, metadata !1412, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1413
  call void @llvm.dbg.value(metadata i64 %189, metadata !1412, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1413
  %190 = and i64 %189, 1095216660480, !dbg !1530
  %191 = icmp eq i64 %190, 0, !dbg !1530
  %192 = lshr i64 %189, 40, !dbg !1532
  %193 = select i1 %191, i64 %192, i64 1, !dbg !1532
  %194 = select i1 %191, i64 %189, i64 %188, !dbg !1532
  call void @llvm.dbg.value(metadata i64 %193, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i32 poison, metadata !1412, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1413
  %195 = and i64 %189, -4294967296, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %160, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 poison, metadata !1412, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1413
  call void @llvm.dbg.value(metadata i64 poison, metadata !1412, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1413
  call void @llvm.dbg.value(metadata i64 poison, metadata !1412, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1413
  call void @llvm.dbg.value(metadata i64 poison, metadata !1412, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1413
  %196 = trunc i64 %194 to i32, !dbg !1540
  call void @llvm.dbg.value(metadata i32 %196, metadata !375, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1373
  call void @llvm.dbg.value(metadata !DIArgList(i64 %194, i64 %195), metadata !375, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1373
  call void @llvm.dbg.value(metadata !DIArgList(i64 %194, i64 %195), metadata !375, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1373
  call void @llvm.dbg.value(metadata i64 poison, metadata !375, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1373
  %197 = icmp eq i32 %196, -1, !dbg !1541
  br i1 %197, label %198, label %.loopexit, !dbg !1542

198:                                              ; preds = %187, %159, %154
  %199 = phi i64 [ %195, %187 ], [ 4294967295, %159 ], [ 4294967295, %154 ]
  %200 = phi i64 [ %193, %187 ], [ 0, %159 ], [ 0, %154 ]
  %201 = phi i64 [ %160, %187 ], [ %160, %159 ], [ 0, %154 ]
  %202 = call ptr @next_file(ptr noundef nonnull %155) #38, !dbg !1543
  call void @llvm.dbg.value(metadata ptr %202, metadata !359, metadata !DIExpression()), !dbg !1377
  %203 = icmp eq ptr %202, null, !dbg !1542
  br i1 %203, label %.loopexit, label %154, !dbg !1544, !llvm.loop !1547

.loopexit:                                        ; preds = %187, %198
  %.lcssa = phi ptr [ %155, %187 ], [ %155, %198 ], !dbg !1545
  %.ph = phi i64 [ %160, %187 ], [ %201, %198 ]
  %.ph1 = phi i64 [ %193, %187 ], [ %200, %198 ]
  %.ph2 = phi i64 [ %195, %187 ], [ %199, %198 ]
  %.ph3 = phi i32 [ %196, %187 ], [ -1, %198 ]
  %.ph4 = phi i1 [ false, %187 ], [ true, %198 ]
  %.ph5 = phi ptr [ %155, %187 ], [ null, %198 ]
  br label %204

204:                                              ; preds = %.loopexit, %148, %141
  %205 = phi i64 [ %103, %141 ], [ %151, %148 ], [ %.ph, %.loopexit ], !dbg !1550
  %206 = phi i64 [ %144, %141 ], [ %150, %148 ], [ %.ph1, %.loopexit ], !dbg !1413
  %207 = phi i64 [ %145, %141 ], [ %149, %148 ], [ %.ph2, %.loopexit ], !dbg !1551
  %208 = phi i32 [ %146, %141 ], [ -1, %148 ], [ %.ph3, %.loopexit ], !dbg !1540
  %209 = phi i1 [ false, %141 ], [ true, %148 ], [ %.ph4, %.loopexit ], !dbg !1541
  %210 = phi ptr [ %73, %141 ], [ %73, %148 ], [ %.lcssa, %.loopexit ], !dbg !1545
  %211 = phi ptr [ %79, %141 ], [ null, %148 ], [ %.ph5, %.loopexit ], !dbg !1377
  %212 = lshr i64 %207, 40
  call void @llvm.dbg.value(metadata ptr %211, metadata !359, metadata !DIExpression()), !dbg !1377
  br i1 %78, label %213, label %317, !dbg !1552

213:                                              ; preds = %204
  call void @llvm.dbg.value(metadata i32 %208, metadata !1553, metadata !DIExpression()), !dbg !1558
  call void @llvm.dbg.value(metadata i32 %208, metadata !1560, metadata !DIExpression()), !dbg !1568
  %214 = call i32 @iswblank(i32 noundef %208) #38, !dbg !1570
  %215 = icmp ne i32 %214, 0, !dbg !1571
  call void @llvm.dbg.value(metadata i1 %215, metadata !399, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1572
  br i1 %215, label %216, label %260, !dbg !1573

216:                                              ; preds = %213
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #38, !dbg !1574
  %217 = call i64 @get_next_tab_column(i64 noundef %77, ptr noundef nonnull %5, ptr noundef nonnull %6) #38, !dbg !1575
  call void @llvm.dbg.value(metadata i64 %217, metadata !394, metadata !DIExpression()), !dbg !1373
  %218 = load i8, ptr %6, align 4, !dbg !1576, !tbaa !1344, !range !1578, !noundef !1136
  %219 = icmp eq i8 %218, 0, !dbg !1576
  call void @llvm.dbg.value(metadata i8 poison, metadata !387, metadata !DIExpression()), !dbg !1373
  br i1 %219, label %220, label %256, !dbg !1579

220:                                              ; preds = %216
  %221 = icmp eq i32 %208, 9, !dbg !1580
  br i1 %221, label %222, label %224, !dbg !1584

222:                                              ; preds = %220
  call void @llvm.dbg.value(metadata i64 %217, metadata !388, metadata !DIExpression()), !dbg !1373
  %223 = icmp eq i64 %74, 0, !dbg !1585
  br i1 %223, label %253, label %251, !dbg !1588

224:                                              ; preds = %220
  call void @llvm.dbg.value(metadata i32 %208, metadata !1589, metadata !DIExpression()), !dbg !1594
  %225 = call i32 @wcwidth(i32 noundef %208) #38, !dbg !1597
  %226 = sext i32 %225 to i64, !dbg !1598
  %227 = add nsw i64 %77, %226, !dbg !1599
  call void @llvm.dbg.value(metadata i64 %227, metadata !388, metadata !DIExpression()), !dbg !1373
  %228 = icmp eq i64 %227, %217
  %229 = select i1 %75, i1 %228, i1 false, !dbg !1600
  br i1 %229, label %230, label %310, !dbg !1600

230:                                              ; preds = %224
  call void @llvm.dbg.value(metadata i8 0, metadata !375, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1373
  %231 = load ptr, ptr @stdout, align 8, !dbg !1602, !tbaa !1098
  call void @llvm.dbg.value(metadata i32 9, metadata !1604, metadata !DIExpression()), !dbg !1610
  call void @llvm.dbg.value(metadata ptr %231, metadata !1609, metadata !DIExpression()), !dbg !1610
  %232 = getelementptr inbounds %struct._IO_FILE, ptr %231, i64 0, i32 5, !dbg !1612
  %233 = load ptr, ptr %232, align 8, !dbg !1612, !tbaa !1613
  %234 = getelementptr inbounds %struct._IO_FILE, ptr %231, i64 0, i32 6, !dbg !1612
  %235 = load ptr, ptr %234, align 8, !dbg !1612, !tbaa !1614
  %236 = icmp ult ptr %233, %235, !dbg !1612
  br i1 %236, label %237, label %239, !dbg !1612, !prof !1615

237:                                              ; preds = %230
  %238 = getelementptr inbounds i8, ptr %233, i64 1, !dbg !1612
  store ptr %238, ptr %232, align 8, !dbg !1612, !tbaa !1613
  store i8 9, ptr %233, align 1, !dbg !1612, !tbaa !1177
  br label %251, !dbg !1616

239:                                              ; preds = %230
  %240 = call i32 @__overflow(ptr noundef nonnull %231, i32 noundef 9) #38, !dbg !1612
  %241 = icmp slt i32 %240, 0, !dbg !1617
  br i1 %241, label %242, label %251, !dbg !1616

242:                                              ; preds = %239
  %243 = tail call ptr @__errno_location() #41, !dbg !1618
  %244 = load i32, ptr %243, align 4, !dbg !1618, !tbaa !1168
  call void @llvm.dbg.value(metadata i32 %244, metadata !1621, metadata !DIExpression()), !dbg !1623
  %245 = load ptr, ptr @stdout, align 8, !dbg !1624, !tbaa !1098
  %246 = call i32 @fflush_unlocked(ptr noundef %245) #38, !dbg !1624
  %247 = load ptr, ptr @stdout, align 8, !dbg !1625, !tbaa !1098
  %248 = call i32 @fpurge(ptr noundef %247) #38, !dbg !1626
  %249 = load ptr, ptr @stdout, align 8, !dbg !1627, !tbaa !1098
  call void @clearerr_unlocked(ptr noundef %249) #38, !dbg !1627
  %250 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #38, !dbg !1628
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %244, ptr noundef %250) #38, !dbg !1628
  unreachable, !dbg !1628

251:                                              ; preds = %239, %237, %222
  %252 = phi i64 [ %212, %222 ], [ 0, %237 ], [ 0, %239 ]
  store i8 9, ptr %64, align 1, !dbg !1629, !tbaa !1177
  br label %253, !dbg !1630

253:                                              ; preds = %251, %222
  %254 = phi i64 [ %212, %222 ], [ %252, %251 ], !dbg !1631
  call void @llvm.dbg.value(metadata i8 poison, metadata !375, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %217, metadata !388, metadata !DIExpression()), !dbg !1373
  %255 = zext i1 %76 to i64, !dbg !1630
  call void @llvm.dbg.value(metadata i64 %255, metadata !398, metadata !DIExpression()), !dbg !1373
  br label %256, !dbg !1632

256:                                              ; preds = %253, %216
  %257 = phi i64 [ %74, %216 ], [ %255, %253 ]
  %258 = phi i64 [ %77, %216 ], [ %217, %253 ]
  %259 = phi i64 [ %212, %216 ], [ %254, %253 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !375, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %258, metadata !388, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !396, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !397, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %257, metadata !398, metadata !DIExpression()), !dbg !1373
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #38, !dbg !1633
  br label %281

260:                                              ; preds = %213
  %261 = icmp eq i32 %208, 8, !dbg !1634
  br i1 %261, label %262, label %270, !dbg !1635

262:                                              ; preds = %260
  %263 = icmp ne i64 %77, 0, !dbg !1636
  %264 = sext i1 %263 to i64
  %265 = add i64 %77, %264, !dbg !1638
  call void @llvm.dbg.value(metadata i64 %265, metadata !388, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %265, metadata !394, metadata !DIExpression()), !dbg !1373
  %266 = load i64, ptr %5, align 8, !dbg !1639, !tbaa !1393
  %267 = icmp ne i64 %266, 0, !dbg !1640
  %268 = sext i1 %267 to i64
  %269 = add i64 %266, %268, !dbg !1641
  store i64 %269, ptr %5, align 8, !dbg !1641, !tbaa !1393, !DIAssignID !1642
  call void @llvm.dbg.assign(metadata i64 %269, metadata !395, metadata !DIExpression(), metadata !1642, metadata ptr %5, metadata !DIExpression()), !dbg !1373
  br label %281, !dbg !1643

270:                                              ; preds = %260
  call void @llvm.dbg.value(metadata i32 %208, metadata !1589, metadata !DIExpression()), !dbg !1644
  %271 = call i32 @wcwidth(i32 noundef %208) #38, !dbg !1646
  call void @llvm.dbg.value(metadata i32 %271, metadata !406, metadata !DIExpression()), !dbg !1647
  %272 = icmp slt i32 %271, 0, !dbg !1648
  %273 = select i1 %272, i32 1, i32 %271, !dbg !1648
  %274 = sext i32 %273 to i64, !dbg !1648
  %275 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %77, i64 %274), !dbg !1648
  %276 = extractvalue { i64, i1 } %275, 1, !dbg !1648
  call void @llvm.dbg.value(metadata i64 poison, metadata !388, metadata !DIExpression()), !dbg !1373
  br i1 %276, label %277, label %279, !dbg !1650

277:                                              ; preds = %270
  %278 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #38, !dbg !1651
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %278) #38, !dbg !1651
  unreachable, !dbg !1651

279:                                              ; preds = %270
  %280 = extractvalue { i64, i1 } %275, 0, !dbg !1648
  call void @llvm.dbg.value(metadata i64 %280, metadata !388, metadata !DIExpression()), !dbg !1373
  br label %281

281:                                              ; preds = %279, %262, %256
  %282 = phi i64 [ %74, %262 ], [ %74, %279 ], [ %257, %256 ], !dbg !1373
  %283 = phi i64 [ %265, %262 ], [ %280, %279 ], [ %258, %256 ], !dbg !1652
  %284 = phi i1 [ true, %262 ], [ true, %279 ], [ %219, %256 ]
  %285 = phi i64 [ %212, %262 ], [ %212, %279 ], [ %259, %256 ], !dbg !1540
  call void @llvm.dbg.value(metadata i8 poison, metadata !375, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !387, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %283, metadata !388, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !396, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %282, metadata !398, metadata !DIExpression()), !dbg !1373
  %286 = icmp eq i64 %282, 0, !dbg !1653
  br i1 %286, label %304, label %287, !dbg !1654

287:                                              ; preds = %281
  %288 = icmp sgt i64 %282, 1, !dbg !1655
  %289 = select i1 %288, i1 %76, i1 false, !dbg !1657
  br i1 %289, label %290, label %291, !dbg !1657

290:                                              ; preds = %287
  store i8 9, ptr %64, align 1, !dbg !1658, !tbaa !1177
  br label %291, !dbg !1659

291:                                              ; preds = %287, %290
  %292 = load ptr, ptr @stdout, align 8, !dbg !1660, !tbaa !1098
  %293 = call i64 @fwrite_unlocked(ptr noundef nonnull %64, i64 noundef 1, i64 noundef %282, ptr noundef %292), !dbg !1660
  %294 = icmp eq i64 %293, %282, !dbg !1661
  br i1 %294, label %304, label %295, !dbg !1662

295:                                              ; preds = %291
  %296 = tail call ptr @__errno_location() #41, !dbg !1663
  %297 = load i32, ptr %296, align 4, !dbg !1663, !tbaa !1168
  call void @llvm.dbg.value(metadata i32 %297, metadata !1621, metadata !DIExpression()), !dbg !1665
  %298 = load ptr, ptr @stdout, align 8, !dbg !1666, !tbaa !1098
  %299 = call i32 @fflush_unlocked(ptr noundef %298) #38, !dbg !1666
  %300 = load ptr, ptr @stdout, align 8, !dbg !1667, !tbaa !1098
  %301 = call i32 @fpurge(ptr noundef %300) #38, !dbg !1668
  %302 = load ptr, ptr @stdout, align 8, !dbg !1669, !tbaa !1098
  call void @clearerr_unlocked(ptr noundef %302) #38, !dbg !1669
  %303 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #38, !dbg !1670
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %297, ptr noundef %303) #38, !dbg !1670
  unreachable, !dbg !1670

304:                                              ; preds = %291, %281
  %305 = phi i1 [ %76, %281 ], [ false, %291 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !396, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 0, metadata !398, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i1 %215, metadata !397, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1373
  %306 = load i8, ptr @convert_entire_line, align 1, !dbg !1671, !tbaa !1344, !range !1578, !noundef !1136
  %307 = icmp ne i8 %306, 0, !dbg !1671
  %308 = or i1 %215, %307, !dbg !1672
  %309 = and i1 %284, %308, !dbg !1673
  call void @llvm.dbg.value(metadata i8 poison, metadata !375, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !387, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %283, metadata !388, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !397, metadata !DIExpression()), !dbg !1373
  br label %317

310:                                              ; preds = %224
  %311 = select i1 %228, i1 true, i1 %76, !dbg !1674
  call void @llvm.dbg.value(metadata i8 poison, metadata !396, metadata !DIExpression()), !dbg !1373
  %312 = getelementptr inbounds i8, ptr %64, i64 %74, !dbg !1676
  call void @llvm.dbg.value(metadata !DIArgList(i64 %212, i64 0, i64 %212), metadata !1677, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 65280, DW_OP_and, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709486080, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1683
  call void @llvm.dbg.value(metadata i64 %212, metadata !1677, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1683
  call void @llvm.dbg.value(metadata !DIArgList(i64 %212, i64 0, i64 %212), metadata !1677, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 65280, DW_OP_and, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709486080, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1683
  call void @llvm.dbg.value(metadata ptr undef, metadata !1682, metadata !DIExpression()), !dbg !1683
  %313 = icmp sge i64 %206, %212, !dbg !1685
  call void @llvm.assume(i1 %313), !dbg !1687
  %314 = sub nsw i64 %206, %212, !dbg !1688
  %315 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %314, !dbg !1689
  call void @llvm.dbg.value(metadata ptr %312, metadata !1690, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata ptr %315, metadata !1696, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i64 %212, metadata !1697, metadata !DIExpression()), !dbg !1698
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %312, ptr noundef nonnull align 1 %315, i64 noundef %212, i1 noundef false) #38, !dbg !1700
  %316 = add nsw i64 %212, %74, !dbg !1701
  call void @llvm.dbg.value(metadata i64 %212, metadata !375, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %227, metadata !388, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !397, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %316, metadata !398, metadata !DIExpression()), !dbg !1373
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #38, !dbg !1633
  call void @llvm.dbg.value(metadata i8 poison, metadata !387, metadata !DIExpression()), !dbg !1373
  br label %344

317:                                              ; preds = %304, %204
  %318 = phi i64 [ %74, %204 ], [ 0, %304 ], !dbg !1373
  %319 = phi i1 [ %75, %204 ], [ %215, %304 ]
  %320 = phi i1 [ %76, %204 ], [ %305, %304 ]
  %321 = phi i64 [ %77, %204 ], [ %283, %304 ], !dbg !1373
  %322 = phi i1 [ false, %204 ], [ %309, %304 ]
  %323 = phi i64 [ %212, %204 ], [ %285, %304 ], !dbg !1540
  call void @llvm.dbg.value(metadata i8 poison, metadata !375, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !387, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %321, metadata !388, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !396, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !397, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %318, metadata !398, metadata !DIExpression()), !dbg !1373
  br i1 %209, label %324, label %325, !dbg !1702

324:                                              ; preds = %317
  call void @free(ptr noundef nonnull %64) #38, !dbg !1703
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !1706
  br label %352

325:                                              ; preds = %317
  %326 = and i64 %323, 255, !dbg !1707
  call void @llvm.dbg.value(metadata !DIArgList(i32 0, i64 0, i64 %326), metadata !1677, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1708
  call void @llvm.dbg.value(metadata i64 %326, metadata !1677, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1708
  call void @llvm.dbg.value(metadata !DIArgList(i32 0, i64 0, i64 %326), metadata !1677, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1708
  call void @llvm.dbg.value(metadata ptr undef, metadata !1682, metadata !DIExpression()), !dbg !1708
  %327 = icmp sge i64 %206, %326, !dbg !1710
  call void @llvm.assume(i1 %327), !dbg !1711
  %328 = sub nsw i64 %206, %326, !dbg !1712
  %329 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %328, !dbg !1713
  %330 = load ptr, ptr @stdout, align 8, !dbg !1707, !tbaa !1098
  %331 = call i64 @fwrite_unlocked(ptr noundef nonnull %329, i64 noundef 1, i64 noundef %326, ptr noundef %330), !dbg !1707
  %332 = load ptr, ptr @stdout, align 8, !dbg !1714, !tbaa !1098
  call void @llvm.dbg.value(metadata ptr %332, metadata !1716, metadata !DIExpression()), !dbg !1719
  %333 = load i32, ptr %332, align 8, !dbg !1721, !tbaa !1427
  %334 = and i32 %333, 32, !dbg !1714
  %335 = icmp eq i32 %334, 0, !dbg !1714
  br i1 %335, label %344, label %336, !dbg !1722

336:                                              ; preds = %325
  %.lcssa7 = phi ptr [ %332, %325 ], !dbg !1714
  %337 = tail call ptr @__errno_location() #41, !dbg !1723
  %338 = load i32, ptr %337, align 4, !dbg !1723, !tbaa !1168
  call void @llvm.dbg.value(metadata i32 %338, metadata !1621, metadata !DIExpression()), !dbg !1725
  %339 = call i32 @fflush_unlocked(ptr noundef nonnull %.lcssa7) #38, !dbg !1726
  %340 = load ptr, ptr @stdout, align 8, !dbg !1727, !tbaa !1098
  %341 = call i32 @fpurge(ptr noundef %340) #38, !dbg !1728
  %342 = load ptr, ptr @stdout, align 8, !dbg !1729, !tbaa !1098
  call void @clearerr_unlocked(ptr noundef %342) #38, !dbg !1729
  %343 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #38, !dbg !1730
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %338, ptr noundef %343) #38, !dbg !1730
  unreachable, !dbg !1730

344:                                              ; preds = %325, %310
  %345 = phi i64 [ %316, %310 ], [ %318, %325 ], !dbg !1731
  %346 = phi i1 [ true, %310 ], [ %319, %325 ]
  %347 = phi i1 [ %311, %310 ], [ %320, %325 ]
  %348 = phi i64 [ %227, %310 ], [ %321, %325 ], !dbg !1732
  %349 = phi i1 [ true, %310 ], [ %322, %325 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !387, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %348, metadata !388, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !396, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i8 poison, metadata !397, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i64 %345, metadata !398, metadata !DIExpression()), !dbg !1373
  %350 = icmp eq i32 %208, 10, !dbg !1733
  br i1 %350, label %351, label %70, !dbg !1734, !llvm.loop !1735

351:                                              ; preds = %344
  %.lcssa31 = phi i64 [ %205, %344 ], !dbg !1550
  %.lcssa25 = phi i64 [ %206, %344 ], !dbg !1413
  %.lcssa19 = phi ptr [ %210, %344 ], !dbg !1545
  %.lcssa13 = phi ptr [ %211, %344 ], !dbg !1377
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !1706
  br label %65, !llvm.loop !1737

352:                                              ; preds = %53, %324
  call void @cleanup_file_list_stdin() #38, !dbg !1738
  %353 = load i32, ptr @exit_status, align 4, !dbg !1739, !tbaa !1168
  ret i32 %353, !dbg !1740
}

; Function Attrs: nounwind
declare !dbg !1741 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1744 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1745 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1748 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1754 ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1758 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind
declare !dbg !1765 i32 @iswblank(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1767 i32 @wcwidth(i32 noundef) local_unnamed_addr #2

declare !dbg !1773 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1776 ptr @__errno_location() local_unnamed_addr #9

declare !dbg !1780 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1781 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1784 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local void @add_tab_stop(i64 noundef %0) local_unnamed_addr #10 !dbg !1787 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !1791, metadata !DIExpression()), !dbg !1794
  %2 = load i64, ptr @first_free_tab, align 8, !dbg !1795, !tbaa !1393
  %3 = icmp eq i64 %2, 0, !dbg !1795
  %4 = load ptr, ptr @tab_list, align 8, !dbg !1796, !tbaa !1098
  br i1 %3, label %9, label %5, !dbg !1795

5:                                                ; preds = %1
  %6 = getelementptr i64, ptr %4, i64 %2, !dbg !1797
  %7 = getelementptr i64, ptr %6, i64 -1, !dbg !1797
  %8 = load i64, ptr %7, align 8, !dbg !1797, !tbaa !1393
  br label %9, !dbg !1795

9:                                                ; preds = %1, %5
  %10 = phi i64 [ %8, %5 ], [ 0, %1 ], !dbg !1795
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !1792, metadata !DIExpression()), !dbg !1794
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1793, metadata !DIExpression()), !dbg !1794
  %11 = load i64, ptr @n_tabs_allocated, align 8, !dbg !1798, !tbaa !1393
  %12 = icmp eq i64 %2, %11, !dbg !1800
  br i1 %12, label %13, label %16, !dbg !1801

13:                                               ; preds = %9
  %14 = tail call nonnull ptr @xpalloc(ptr noundef %4, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #38, !dbg !1802
  store ptr %14, ptr @tab_list, align 8, !dbg !1803, !tbaa !1098
  %15 = load i64, ptr @first_free_tab, align 8, !dbg !1804, !tbaa !1393
  br label %16, !dbg !1805

16:                                               ; preds = %13, %9
  %17 = phi i64 [ %15, %13 ], [ %2, %9 ], !dbg !1804
  %18 = phi ptr [ %14, %13 ], [ %4, %9 ], !dbg !1796
  %19 = icmp sgt i64 %10, %0, !dbg !1806
  %20 = sub nsw i64 %0, %10, !dbg !1807
  %21 = select i1 %19, i64 0, i64 %20, !dbg !1807
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !1793, metadata !DIExpression()), !dbg !1794
  %22 = add nsw i64 %17, 1, !dbg !1804
  store i64 %22, ptr @first_free_tab, align 8, !dbg !1804, !tbaa !1393
  %23 = getelementptr inbounds i64, ptr %18, i64 %17, !dbg !1796
  store i64 %0, ptr %23, align 8, !dbg !1808, !tbaa !1393
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !1809, metadata !DIExpression()), !dbg !1812
  %24 = load i64, ptr @max_column_width, align 8, !dbg !1814, !tbaa !1393
  %25 = icmp slt i64 %24, %21, !dbg !1816
  br i1 %25, label %26, label %27, !dbg !1817

26:                                               ; preds = %16
  store i64 %21, ptr @max_column_width, align 8, !dbg !1818
  br label %27

27:                                               ; preds = %16, %26
  ret void, !dbg !1821
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_tab_stops(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !1822 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1824, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1825, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1826, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1827, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1828, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1829, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1830, metadata !DIExpression()), !dbg !1843
  br label %2, !dbg !1844

2:                                                ; preds = %103, %1
  %3 = phi i64 [ 0, %1 ], [ %104, %103 ], !dbg !1845
  %4 = phi i1 [ false, %1 ], [ %105, %103 ]
  %5 = phi i1 [ false, %1 ], [ %106, %103 ]
  %6 = phi ptr [ null, %1 ], [ %107, %103 ], !dbg !1846
  %7 = phi i1 [ true, %1 ], [ %108, %103 ]
  %8 = phi i1 [ false, %1 ], [ %109, %103 ]
  %9 = phi ptr [ %0, %1 ], [ %111, %103 ]
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1824, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1825, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1830, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1829, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1828, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1827, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1826, metadata !DIExpression()), !dbg !1843
  %10 = load i8, ptr %9, align 1, !dbg !1847, !tbaa !1177
  switch i8 %10, label %11 [
    i8 0, label %112
    i8 44, label %19
  ], !dbg !1848

11:                                               ; preds = %2
  %12 = tail call ptr @__ctype_b_loc() #41, !dbg !1849
  %13 = load ptr, ptr %12, align 8, !dbg !1849, !tbaa !1098
  %14 = zext i8 %10 to i64
  %15 = getelementptr inbounds i16, ptr %13, i64 %14, !dbg !1849
  %16 = load i16, ptr %15, align 2, !dbg !1849, !tbaa !1209
  %17 = and i16 %16, 1, !dbg !1849
  %18 = icmp eq i16 %17, 0, !dbg !1849
  br i1 %18, label %68, label %19, !dbg !1850

19:                                               ; preds = %2, %11
  br i1 %8, label %20, label %103, !dbg !1851

20:                                               ; preds = %19
  br i1 %4, label %21, label %31, !dbg !1853

21:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 %3, metadata !1856, metadata !DIExpression()), !dbg !1862
  call void @llvm.dbg.value(metadata i8 1, metadata !1861, metadata !DIExpression()), !dbg !1862
  %22 = load i64, ptr @extend_size, align 8, !dbg !1867, !tbaa !1393
  %23 = icmp eq i64 %22, 0, !dbg !1867
  br i1 %23, label %26, label %24, !dbg !1869

24:                                               ; preds = %21
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12.11, i32 noundef 5) #38, !dbg !1870
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %25) #38, !dbg !1870
  call void @llvm.dbg.value(metadata i8 0, metadata !1861, metadata !DIExpression()), !dbg !1862
  br label %26, !dbg !1872

26:                                               ; preds = %24, %21
  call void @llvm.dbg.value(metadata i8 poison, metadata !1861, metadata !DIExpression()), !dbg !1862
  store i64 %3, ptr @extend_size, align 8, !dbg !1873, !tbaa !1393
  call void @llvm.dbg.value(metadata i64 %3, metadata !1809, metadata !DIExpression()), !dbg !1874
  %27 = load i64, ptr @max_column_width, align 8, !dbg !1876, !tbaa !1393
  %28 = icmp slt i64 %27, %3, !dbg !1877
  br i1 %28, label %29, label %30, !dbg !1878

29:                                               ; preds = %26
  store i64 %3, ptr @max_column_width, align 8, !dbg !1879
  br label %30

30:                                               ; preds = %26, %29
  br i1 %23, label %103, label %.loopexit, !dbg !1880

31:                                               ; preds = %20
  br i1 %5, label %32, label %42, !dbg !1881

32:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %3, metadata !1882, metadata !DIExpression()), !dbg !1886
  call void @llvm.dbg.value(metadata i8 1, metadata !1885, metadata !DIExpression()), !dbg !1886
  %33 = load i64, ptr @increment_size, align 8, !dbg !1891, !tbaa !1393
  %34 = icmp eq i64 %33, 0, !dbg !1891
  br i1 %34, label %37, label %35, !dbg !1893

35:                                               ; preds = %32
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13.12, i32 noundef 5) #38, !dbg !1894
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %36) #38, !dbg !1894
  call void @llvm.dbg.value(metadata i8 0, metadata !1885, metadata !DIExpression()), !dbg !1886
  br label %37, !dbg !1896

37:                                               ; preds = %35, %32
  call void @llvm.dbg.value(metadata i8 poison, metadata !1885, metadata !DIExpression()), !dbg !1886
  store i64 %3, ptr @increment_size, align 8, !dbg !1897, !tbaa !1393
  call void @llvm.dbg.value(metadata i64 %3, metadata !1809, metadata !DIExpression()), !dbg !1898
  %38 = load i64, ptr @max_column_width, align 8, !dbg !1900, !tbaa !1393
  %39 = icmp slt i64 %38, %3, !dbg !1901
  br i1 %39, label %40, label %41, !dbg !1902

40:                                               ; preds = %37
  store i64 %3, ptr @max_column_width, align 8, !dbg !1903
  br label %41

41:                                               ; preds = %37, %40
  br i1 %34, label %103, label %.loopexit, !dbg !1904

42:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %3, metadata !1791, metadata !DIExpression()), !dbg !1905
  %43 = load i64, ptr @first_free_tab, align 8, !dbg !1907, !tbaa !1393
  %44 = icmp eq i64 %43, 0, !dbg !1907
  %45 = load ptr, ptr @tab_list, align 8, !dbg !1908, !tbaa !1098
  br i1 %44, label %50, label %46, !dbg !1907

46:                                               ; preds = %42
  %47 = getelementptr i64, ptr %45, i64 %43, !dbg !1909
  %48 = getelementptr i64, ptr %47, i64 -1, !dbg !1909
  %49 = load i64, ptr %48, align 8, !dbg !1909, !tbaa !1393
  br label %50, !dbg !1907

50:                                               ; preds = %46, %42
  %51 = phi i64 [ %49, %46 ], [ 0, %42 ], !dbg !1907
  call void @llvm.dbg.value(metadata i64 %51, metadata !1792, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata i64 poison, metadata !1793, metadata !DIExpression()), !dbg !1905
  %52 = load i64, ptr @n_tabs_allocated, align 8, !dbg !1910, !tbaa !1393
  %53 = icmp eq i64 %43, %52, !dbg !1911
  br i1 %53, label %54, label %57, !dbg !1912

54:                                               ; preds = %50
  %55 = tail call nonnull ptr @xpalloc(ptr noundef %45, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #38, !dbg !1913
  store ptr %55, ptr @tab_list, align 8, !dbg !1914, !tbaa !1098
  %56 = load i64, ptr @first_free_tab, align 8, !dbg !1915, !tbaa !1393
  br label %57, !dbg !1916

57:                                               ; preds = %54, %50
  %58 = phi i64 [ %56, %54 ], [ %43, %50 ], !dbg !1915
  %59 = phi ptr [ %55, %54 ], [ %45, %50 ], !dbg !1908
  %60 = icmp sgt i64 %51, %3, !dbg !1917
  %61 = sub nsw i64 %3, %51, !dbg !1918
  %62 = select i1 %60, i64 0, i64 %61, !dbg !1918
  call void @llvm.dbg.value(metadata i64 %62, metadata !1793, metadata !DIExpression()), !dbg !1905
  %63 = add nsw i64 %58, 1, !dbg !1915
  store i64 %63, ptr @first_free_tab, align 8, !dbg !1915, !tbaa !1393
  %64 = getelementptr inbounds i64, ptr %59, i64 %58, !dbg !1908
  store i64 %3, ptr %64, align 8, !dbg !1919, !tbaa !1393
  call void @llvm.dbg.value(metadata i64 %62, metadata !1809, metadata !DIExpression()), !dbg !1920
  %65 = load i64, ptr @max_column_width, align 8, !dbg !1922, !tbaa !1393
  %66 = icmp slt i64 %65, %62, !dbg !1923
  br i1 %66, label %67, label %103, !dbg !1924

67:                                               ; preds = %57
  store i64 %62, ptr @max_column_width, align 8, !dbg !1925
  br label %103

68:                                               ; preds = %11
  switch i8 %10, label %77 [
    i8 47, label %69
    i8 43, label %73
  ], !dbg !1926

69:                                               ; preds = %68
  br i1 %8, label %70, label %103, !dbg !1927

70:                                               ; preds = %69
  %71 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #38, !dbg !1929
  %72 = tail call ptr @quote(ptr noundef nonnull %9) #38, !dbg !1929
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %71, ptr noundef %72) #38, !dbg !1929
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1830, metadata !DIExpression()), !dbg !1843
  br label %103, !dbg !1932

73:                                               ; preds = %68
  br i1 %8, label %74, label %103, !dbg !1933

74:                                               ; preds = %73
  %75 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.23, i32 noundef 5) #38, !dbg !1935
  %76 = tail call ptr @quote(ptr noundef nonnull %9) #38, !dbg !1935
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %75, ptr noundef %76) #38, !dbg !1935
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1830, metadata !DIExpression()), !dbg !1843
  br label %103, !dbg !1938

77:                                               ; preds = %68
  %78 = zext i8 %10 to i32, !dbg !1939
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !1940, metadata !DIExpression()), !dbg !1946
  %79 = add nsw i32 %78, -48, !dbg !1948
  %80 = icmp ult i32 %79, 10, !dbg !1948
  br i1 %80, label %81, label %100, !dbg !1949

81:                                               ; preds = %77
  %82 = select i1 %8, i64 %3, i64 0, !dbg !1950
  %83 = select i1 %8, ptr %6, ptr %9, !dbg !1950
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1825, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1829, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !1826, metadata !DIExpression()), !dbg !1843
  %84 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %82, i64 10), !dbg !1951
  %85 = extractvalue { i64, i1 } %84, 1, !dbg !1951
  %86 = extractvalue { i64, i1 } %84, 0, !dbg !1951
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !1826, metadata !DIExpression()), !dbg !1843
  br i1 %85, label %92, label %87, !dbg !1951

87:                                               ; preds = %81
  %88 = add nsw i64 %14, -48, !dbg !1951
  %89 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %86, i64 %88), !dbg !1951
  %90 = extractvalue { i64, i1 } %89, 1, !dbg !1951
  %91 = extractvalue { i64, i1 } %89, 0, !dbg !1951
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !1826, metadata !DIExpression()), !dbg !1843
  br i1 %90, label %92, label %103, !dbg !1952

92:                                               ; preds = %87, %81
  %93 = phi i64 [ %86, %81 ], [ %91, %87 ], !dbg !1951
  tail call void @llvm.dbg.value(metadata i64 %93, metadata !1826, metadata !DIExpression()), !dbg !1843
  %94 = tail call i64 @strspn(ptr noundef %83, ptr noundef nonnull @.str.2.24) #39, !dbg !1953
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1831, metadata !DIExpression()), !dbg !1954
  %95 = tail call noalias nonnull ptr @ximemdup0(ptr noundef %83, i64 noundef %94) #38, !dbg !1955
  tail call void @llvm.dbg.value(metadata ptr %95, metadata !1842, metadata !DIExpression()), !dbg !1954
  %96 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3.25, i32 noundef 5) #38, !dbg !1956
  %97 = tail call ptr @quote(ptr noundef nonnull %95) #38, !dbg !1956
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %96, ptr noundef %97) #38, !dbg !1956
  tail call void @free(ptr noundef nonnull %95) #38, !dbg !1957
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1830, metadata !DIExpression()), !dbg !1843
  %98 = getelementptr inbounds i8, ptr %83, i64 %94, !dbg !1958
  %99 = getelementptr inbounds i8, ptr %98, i64 -1, !dbg !1959
  tail call void @llvm.dbg.value(metadata ptr %99, metadata !1824, metadata !DIExpression()), !dbg !1843
  br label %103, !dbg !1960

100:                                              ; preds = %77
  %.lcssa2 = phi ptr [ %9, %77 ]
  %101 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4.26, i32 noundef 5) #38, !dbg !1961
  %102 = tail call ptr @quote(ptr noundef nonnull %.lcssa2) #38, !dbg !1961
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %101, ptr noundef %102) #38, !dbg !1961
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1830, metadata !DIExpression()), !dbg !1843
  br label %164, !dbg !1963

103:                                              ; preds = %67, %57, %73, %74, %69, %70, %19, %41, %30, %87, %92
  %104 = phi i64 [ %93, %92 ], [ %91, %87 ], [ %3, %30 ], [ %3, %41 ], [ %3, %19 ], [ %3, %70 ], [ %3, %69 ], [ %3, %74 ], [ %3, %73 ], [ %3, %57 ], [ %3, %67 ], !dbg !1843
  %105 = phi i1 [ %4, %92 ], [ %4, %87 ], [ true, %30 ], [ false, %41 ], [ %4, %19 ], [ true, %70 ], [ true, %69 ], [ false, %74 ], [ false, %73 ], [ false, %57 ], [ false, %67 ]
  %106 = phi i1 [ %5, %92 ], [ %5, %87 ], [ %5, %30 ], [ true, %41 ], [ %5, %19 ], [ false, %70 ], [ false, %69 ], [ true, %74 ], [ true, %73 ], [ false, %57 ], [ false, %67 ]
  %107 = phi ptr [ %83, %92 ], [ %83, %87 ], [ %6, %30 ], [ %6, %41 ], [ %6, %19 ], [ %6, %70 ], [ %6, %69 ], [ %6, %74 ], [ %6, %73 ], [ %6, %57 ], [ %6, %67 ], !dbg !1846
  %108 = phi i1 [ false, %92 ], [ %7, %87 ], [ %7, %30 ], [ %7, %41 ], [ %7, %19 ], [ false, %70 ], [ %7, %69 ], [ false, %74 ], [ %7, %73 ], [ %7, %57 ], [ %7, %67 ]
  %109 = phi i1 [ true, %92 ], [ true, %87 ], [ false, %30 ], [ false, %41 ], [ false, %19 ], [ true, %70 ], [ false, %69 ], [ true, %74 ], [ false, %73 ], [ false, %57 ], [ false, %67 ]
  %110 = phi ptr [ %99, %92 ], [ %9, %87 ], [ %9, %30 ], [ %9, %41 ], [ %9, %19 ], [ %9, %70 ], [ %9, %69 ], [ %9, %74 ], [ %9, %73 ], [ %9, %57 ], [ %9, %67 ]
  tail call void @llvm.dbg.value(metadata ptr %110, metadata !1824, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1825, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1830, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata ptr %107, metadata !1829, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1828, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1827, metadata !DIExpression()), !dbg !1843
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !1826, metadata !DIExpression()), !dbg !1843
  %111 = getelementptr inbounds i8, ptr %110, i64 1, !dbg !1964
  tail call void @llvm.dbg.value(metadata ptr %111, metadata !1824, metadata !DIExpression()), !dbg !1843
  br label %2, !dbg !1965, !llvm.loop !1966

112:                                              ; preds = %2
  %.lcssa15 = phi i64 [ %3, %2 ], !dbg !1845
  %.lcssa12 = phi i1 [ %4, %2 ]
  %.lcssa9 = phi i1 [ %5, %2 ]
  %.lcssa6 = phi i1 [ %7, %2 ]
  %.lcssa3 = phi i1 [ %8, %2 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1830, metadata !DIExpression()), !dbg !1843
  %113 = and i1 %.lcssa6, %.lcssa3, !dbg !1968
  br i1 %113, label %114, label %163, !dbg !1968

114:                                              ; preds = %112
  br i1 %.lcssa12, label %115, label %126, !dbg !1970

115:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 %.lcssa15, metadata !1856, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.value(metadata i8 1, metadata !1861, metadata !DIExpression()), !dbg !1972
  %116 = load i64, ptr @extend_size, align 8, !dbg !1975, !tbaa !1393
  %117 = icmp eq i64 %116, 0, !dbg !1975
  br i1 %117, label %118, label %121, !dbg !1976

118:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i8 poison, metadata !1861, metadata !DIExpression()), !dbg !1972
  store i64 %.lcssa15, ptr @extend_size, align 8, !dbg !1977, !tbaa !1393
  call void @llvm.dbg.value(metadata i64 %.lcssa15, metadata !1809, metadata !DIExpression()), !dbg !1978
  %119 = load i64, ptr @max_column_width, align 8, !dbg !1980, !tbaa !1393
  %120 = icmp slt i64 %119, %.lcssa15, !dbg !1981
  br i1 %120, label %165, label %167, !dbg !1982

121:                                              ; preds = %115
  %122 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12.11, i32 noundef 5) #38, !dbg !1983
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %122) #38, !dbg !1983
  call void @llvm.dbg.value(metadata i8 poison, metadata !1861, metadata !DIExpression()), !dbg !1972
  store i64 %.lcssa15, ptr @extend_size, align 8, !dbg !1977, !tbaa !1393
  call void @llvm.dbg.value(metadata i64 %.lcssa15, metadata !1809, metadata !DIExpression()), !dbg !1978
  %123 = load i64, ptr @max_column_width, align 8, !dbg !1980, !tbaa !1393
  %124 = icmp slt i64 %123, %.lcssa15, !dbg !1981
  br i1 %124, label %125, label %164, !dbg !1982

125:                                              ; preds = %121
  store i64 %.lcssa15, ptr @max_column_width, align 8, !dbg !1984
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1830, metadata !DIExpression()), !dbg !1843
  br label %164, !dbg !1985

126:                                              ; preds = %114
  br i1 %.lcssa9, label %127, label %138, !dbg !1986

127:                                              ; preds = %126
  call void @llvm.dbg.value(metadata i64 %.lcssa15, metadata !1882, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i8 1, metadata !1885, metadata !DIExpression()), !dbg !1987
  %128 = load i64, ptr @increment_size, align 8, !dbg !1990, !tbaa !1393
  %129 = icmp eq i64 %128, 0, !dbg !1990
  br i1 %129, label %130, label %133, !dbg !1991

130:                                              ; preds = %127
  call void @llvm.dbg.value(metadata i8 poison, metadata !1885, metadata !DIExpression()), !dbg !1987
  store i64 %.lcssa15, ptr @increment_size, align 8, !dbg !1992, !tbaa !1393
  call void @llvm.dbg.value(metadata i64 %.lcssa15, metadata !1809, metadata !DIExpression()), !dbg !1993
  %131 = load i64, ptr @max_column_width, align 8, !dbg !1995, !tbaa !1393
  %132 = icmp slt i64 %131, %.lcssa15, !dbg !1996
  br i1 %132, label %165, label %167, !dbg !1997

133:                                              ; preds = %127
  %134 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13.12, i32 noundef 5) #38, !dbg !1998
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %134) #38, !dbg !1998
  call void @llvm.dbg.value(metadata i8 poison, metadata !1885, metadata !DIExpression()), !dbg !1987
  store i64 %.lcssa15, ptr @increment_size, align 8, !dbg !1992, !tbaa !1393
  call void @llvm.dbg.value(metadata i64 %.lcssa15, metadata !1809, metadata !DIExpression()), !dbg !1993
  %135 = load i64, ptr @max_column_width, align 8, !dbg !1995, !tbaa !1393
  %136 = icmp slt i64 %135, %.lcssa15, !dbg !1996
  br i1 %136, label %137, label %164, !dbg !1997

137:                                              ; preds = %133
  store i64 %.lcssa15, ptr @max_column_width, align 8, !dbg !1999
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1830, metadata !DIExpression()), !dbg !1843
  br label %164, !dbg !1985

138:                                              ; preds = %126
  call void @llvm.dbg.value(metadata i64 %.lcssa15, metadata !1791, metadata !DIExpression()), !dbg !2000
  %139 = load i64, ptr @first_free_tab, align 8, !dbg !2002, !tbaa !1393
  %140 = icmp eq i64 %139, 0, !dbg !2002
  %141 = load ptr, ptr @tab_list, align 8, !dbg !2003, !tbaa !1098
  br i1 %140, label %146, label %142, !dbg !2002

142:                                              ; preds = %138
  %143 = getelementptr i64, ptr %141, i64 %139, !dbg !2004
  %144 = getelementptr i64, ptr %143, i64 -1, !dbg !2004
  %145 = load i64, ptr %144, align 8, !dbg !2004, !tbaa !1393
  br label %146, !dbg !2002

146:                                              ; preds = %142, %138
  %147 = phi i64 [ %145, %142 ], [ 0, %138 ], !dbg !2002
  call void @llvm.dbg.value(metadata i64 %147, metadata !1792, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i64 poison, metadata !1793, metadata !DIExpression()), !dbg !2000
  %148 = load i64, ptr @n_tabs_allocated, align 8, !dbg !2005, !tbaa !1393
  %149 = icmp eq i64 %139, %148, !dbg !2006
  br i1 %149, label %150, label %153, !dbg !2007

150:                                              ; preds = %146
  %151 = tail call nonnull ptr @xpalloc(ptr noundef %141, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #38, !dbg !2008
  store ptr %151, ptr @tab_list, align 8, !dbg !2009, !tbaa !1098
  %152 = load i64, ptr @first_free_tab, align 8, !dbg !2010, !tbaa !1393
  br label %153, !dbg !2011

153:                                              ; preds = %150, %146
  %154 = phi i64 [ %152, %150 ], [ %139, %146 ], !dbg !2010
  %155 = phi ptr [ %151, %150 ], [ %141, %146 ], !dbg !2003
  %156 = icmp sgt i64 %147, %.lcssa15, !dbg !2012
  %157 = sub nsw i64 %.lcssa15, %147, !dbg !2013
  %158 = select i1 %156, i64 0, i64 %157, !dbg !2013
  call void @llvm.dbg.value(metadata i64 %158, metadata !1793, metadata !DIExpression()), !dbg !2000
  %159 = add nsw i64 %154, 1, !dbg !2010
  store i64 %159, ptr @first_free_tab, align 8, !dbg !2010, !tbaa !1393
  %160 = getelementptr inbounds i64, ptr %155, i64 %154, !dbg !2003
  store i64 %.lcssa15, ptr %160, align 8, !dbg !2014, !tbaa !1393
  call void @llvm.dbg.value(metadata i64 %158, metadata !1809, metadata !DIExpression()), !dbg !2015
  %161 = load i64, ptr @max_column_width, align 8, !dbg !2017, !tbaa !1393
  %162 = icmp slt i64 %161, %158, !dbg !2018
  br i1 %162, label %165, label %163, !dbg !2019

163:                                              ; preds = %153, %112
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1830, metadata !DIExpression()), !dbg !1843
  br i1 %.lcssa6, label %167, label %164, !dbg !1985

.loopexit:                                        ; preds = %41, %30
  br label %164, !dbg !2020

164:                                              ; preds = %.loopexit, %133, %121, %137, %125, %100, %163
  tail call void @exit(i32 noundef 1) #40, !dbg !2020
  unreachable, !dbg !2020

165:                                              ; preds = %153, %130, %118
  %166 = phi i64 [ %.lcssa15, %118 ], [ %.lcssa15, %130 ], [ %158, %153 ]
  store i64 %166, ptr @max_column_width, align 8, !dbg !2022
  br label %167, !dbg !2023

167:                                              ; preds = %165, %118, %130, %163
  ret void, !dbg !2023
}

; Function Attrs: nounwind uwtable
define dso_local void @finalize_tab_stops() local_unnamed_addr #10 !dbg !2024 {
  %1 = load ptr, ptr @tab_list, align 8, !dbg !2025, !tbaa !1098
  %2 = load i64, ptr @first_free_tab, align 8, !dbg !2026, !tbaa !1393
  call void @llvm.dbg.value(metadata ptr %1, metadata !2027, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i64 %2, metadata !2034, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i64 0, metadata !2035, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i64 0, metadata !2036, metadata !DIExpression()), !dbg !2040
  %3 = icmp sgt i64 %2, 0, !dbg !2041
  br i1 %3, label %.preheader, label %7, !dbg !2043

.preheader:                                       ; preds = %0
  br label %13, !dbg !2043

4:                                                ; preds = %21
  %5 = add nuw nsw i64 %14, 1, !dbg !2044
  call void @llvm.dbg.value(metadata i64 %5, metadata !2036, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i64 %5, metadata !2036, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i64 %17, metadata !2035, metadata !DIExpression()), !dbg !2038
  %6 = icmp eq i64 %5, %2, !dbg !2041
  br i1 %6, label %.loopexit, label %13, !dbg !2043, !llvm.loop !2045

.loopexit:                                        ; preds = %4
  br label %7, !dbg !2047

7:                                                ; preds = %.loopexit, %0
  %8 = load i64, ptr @increment_size, align 8, !dbg !2047
  %9 = icmp ne i64 %8, 0, !dbg !2047
  %10 = load i64, ptr @extend_size, align 8
  %11 = icmp ne i64 %10, 0
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2049
  br i1 %12, label %25, label %27, !dbg !2049

13:                                               ; preds = %.preheader, %4
  %14 = phi i64 [ %5, %4 ], [ 0, %.preheader ]
  %15 = phi i64 [ %17, %4 ], [ 0, %.preheader ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !2036, metadata !DIExpression()), !dbg !2040
  call void @llvm.dbg.value(metadata i64 %15, metadata !2035, metadata !DIExpression()), !dbg !2038
  %16 = getelementptr inbounds i64, ptr %1, i64 %14, !dbg !2050
  %17 = load i64, ptr %16, align 8, !dbg !2050, !tbaa !1393
  %18 = icmp eq i64 %17, 0, !dbg !2053
  br i1 %18, label %19, label %21, !dbg !2054

19:                                               ; preds = %13
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14.29, i32 noundef 5) #38, !dbg !2055
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %20) #38, !dbg !2055
  unreachable, !dbg !2055

21:                                               ; preds = %13
  %22 = icmp sgt i64 %17, %15, !dbg !2056
  call void @llvm.dbg.value(metadata i64 %17, metadata !2035, metadata !DIExpression()), !dbg !2038
  call void @llvm.dbg.value(metadata i64 %14, metadata !2036, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2040
  br i1 %22, label %4, label %23, !dbg !2058

23:                                               ; preds = %21
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15.30, i32 noundef 5) #38, !dbg !2059
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %24) #38, !dbg !2059
  unreachable, !dbg !2059

25:                                               ; preds = %7
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16.31, i32 noundef 5) #38, !dbg !2060
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %26) #38, !dbg !2060
  unreachable, !dbg !2060

27:                                               ; preds = %7
  %28 = icmp eq i64 %2, 0, !dbg !2061
  br i1 %28, label %29, label %34, !dbg !2063

29:                                               ; preds = %27
  %30 = icmp eq i64 %10, 0, !dbg !2064
  %31 = icmp eq i64 %8, 0, !dbg !2064
  %32 = select i1 %31, i64 8, i64 %8, !dbg !2064
  %33 = select i1 %30, i64 %32, i64 %10, !dbg !2064
  store i64 %33, ptr @max_column_width, align 8, !dbg !2065, !tbaa !1393
  br label %41, !dbg !2066

34:                                               ; preds = %27
  %35 = icmp ne i64 %2, 1, !dbg !2067
  %36 = or i64 %10, %8, !dbg !2069
  %37 = icmp ne i64 %36, 0, !dbg !2069
  %38 = select i1 %35, i1 true, i1 %37, !dbg !2069
  br i1 %38, label %41, label %39, !dbg !2069

39:                                               ; preds = %34
  %40 = load i64, ptr %1, align 8, !dbg !2070, !tbaa !1393
  br label %41, !dbg !2071

41:                                               ; preds = %34, %39, %29
  %42 = phi i64 [ %40, %39 ], [ %33, %29 ], [ 0, %34 ]
  store i64 %42, ptr @tab_size, align 8, !dbg !2072, !tbaa !1393
  ret void, !dbg !2073
}

; Function Attrs: nounwind uwtable
define dso_local i64 @get_next_tab_column(i64 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef nonnull writeonly %2) local_unnamed_addr #10 !dbg !2074 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2080, metadata !DIExpression()), !dbg !2095
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2081, metadata !DIExpression()), !dbg !2095
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2082, metadata !DIExpression()), !dbg !2095
  store i8 0, ptr %2, align 1, !dbg !2096, !tbaa !1344
  %4 = load i64, ptr @tab_size, align 8, !dbg !2097, !tbaa !1393
  %5 = icmp eq i64 %4, 0, !dbg !2097
  br i1 %5, label %6, label %12, !dbg !2098

6:                                                ; preds = %3
  %7 = load i64, ptr @first_free_tab, align 8, !tbaa !1393
  %8 = load i64, ptr %1, align 8, !tbaa !1393
  %9 = icmp slt i64 %8, %7, !dbg !2099
  br i1 %9, label %10, label %23, !dbg !2100

10:                                               ; preds = %6
  %11 = load ptr, ptr @tab_list, align 8, !tbaa !1098
  br label %15, !dbg !2100

12:                                               ; preds = %3
  %13 = srem i64 %0, %4, !dbg !2101
  %14 = sub nsw i64 %4, %13, !dbg !2102
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2083, metadata !DIExpression()), !dbg !2095
  br label %41, !dbg !2103

15:                                               ; preds = %10, %20
  %16 = phi i64 [ %8, %10 ], [ %21, %20 ]
  %17 = getelementptr inbounds i64, ptr %11, i64 %16, !dbg !2104
  %18 = load i64, ptr %17, align 8, !dbg !2104, !tbaa !1393
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2084, metadata !DIExpression()), !dbg !2105
  %19 = icmp sgt i64 %18, %0, !dbg !2106
  br i1 %19, label %.loopexit, label %20

20:                                               ; preds = %15
  %21 = add i64 %16, 1, !dbg !2108
  store i64 %21, ptr %1, align 8, !dbg !2108, !tbaa !1393
  %22 = icmp eq i64 %21, %7, !dbg !2099
  br i1 %22, label %.loopexit1, label %15, !dbg !2100, !llvm.loop !2109

.loopexit1:                                       ; preds = %20
  br label %23, !dbg !2111

23:                                               ; preds = %.loopexit1, %6
  %24 = load i64, ptr @extend_size, align 8, !dbg !2111, !tbaa !1393
  %25 = icmp eq i64 %24, 0, !dbg !2111
  br i1 %25, label %29, label %26, !dbg !2112

26:                                               ; preds = %23
  %27 = srem i64 %0, %24, !dbg !2113
  %28 = sub nsw i64 %24, %27, !dbg !2114
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !2083, metadata !DIExpression()), !dbg !2095
  br label %41, !dbg !2115

29:                                               ; preds = %23
  %30 = load i64, ptr @increment_size, align 8, !dbg !2116, !tbaa !1393
  %31 = icmp eq i64 %30, 0, !dbg !2116
  br i1 %31, label %40, label %32, !dbg !2117

32:                                               ; preds = %29
  %33 = load ptr, ptr @tab_list, align 8, !dbg !2118, !tbaa !1098
  %34 = getelementptr i64, ptr %33, i64 %7, !dbg !2118
  %35 = getelementptr i64, ptr %34, i64 -1, !dbg !2118
  %36 = load i64, ptr %35, align 8, !dbg !2118, !tbaa !1393
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2090, metadata !DIExpression()), !dbg !2119
  %37 = sub nsw i64 %0, %36, !dbg !2120
  %38 = srem i64 %37, %30, !dbg !2121
  %39 = sub nsw i64 %30, %38, !dbg !2122
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2083, metadata !DIExpression()), !dbg !2095
  br label %41, !dbg !2123

40:                                               ; preds = %29
  store i8 1, ptr %2, align 1, !dbg !2124, !tbaa !1344
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2083, metadata !DIExpression()), !dbg !2095
  br label %41

41:                                               ; preds = %26, %40, %32, %12
  %42 = phi i64 [ %14, %12 ], [ %28, %26 ], [ %39, %32 ], [ 1, %40 ], !dbg !2126
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !2083, metadata !DIExpression()), !dbg !2095
  %43 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 %42), !dbg !2127
  %44 = extractvalue { i64, i1 } %43, 1, !dbg !2127
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !2094, metadata !DIExpression()), !dbg !2095
  br i1 %44, label %45, label %47, !dbg !2129

45:                                               ; preds = %41
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5.34, i32 noundef 5) #38, !dbg !2130
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %46) #38, !dbg !2130
  unreachable, !dbg !2130

47:                                               ; preds = %41
  %48 = extractvalue { i64, i1 } %43, 0, !dbg !2127
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2094, metadata !DIExpression()), !dbg !2095
  br label %49

.loopexit:                                        ; preds = %15
  %.lcssa = phi i64 [ %18, %15 ], !dbg !2104
  br label %49, !dbg !2131

49:                                               ; preds = %.loopexit, %47
  %50 = phi i64 [ %48, %47 ], [ %.lcssa, %.loopexit ], !dbg !2095
  ret i64 %50, !dbg !2131
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_file_list(ptr noundef %0) local_unnamed_addr #15 !dbg !2132 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2136, metadata !DIExpression()), !dbg !2137
  store i1 false, ptr @have_read_stdin, align 1, !dbg !2138
  %2 = icmp eq ptr %0, null, !dbg !2139
  %3 = select i1 %2, ptr @stdin_argv, ptr %0
  store ptr %3, ptr @file_list, align 8, !dbg !2141, !tbaa !1098
  ret void, !dbg !2142
}

; Function Attrs: nounwind uwtable
define dso_local ptr @next_file(ptr noundef %0) local_unnamed_addr #10 !dbg !495 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !533, metadata !DIExpression()), !dbg !2143
  %2 = icmp eq ptr %0, null, !dbg !2144
  br i1 %2, label %25, label %3, !dbg !2145

3:                                                ; preds = %1
  %4 = tail call ptr @__errno_location() #41, !dbg !2146
  %5 = load i32, ptr %4, align 4, !dbg !2146, !tbaa !1168
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !535, metadata !DIExpression()), !dbg !2147
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2148, metadata !DIExpression()), !dbg !2153
  %6 = load i32, ptr %0, align 8, !dbg !2156, !tbaa !1427
  %7 = and i32 %6, 32, !dbg !2157
  %8 = icmp eq i32 %7, 0, !dbg !2157
  %9 = select i1 %8, i32 0, i32 %5, !dbg !2158
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !535, metadata !DIExpression()), !dbg !2147
  %10 = load ptr, ptr @next_file.prev_file, align 8, !dbg !2159, !tbaa !1098
  call void @llvm.dbg.value(metadata ptr %10, metadata !2161, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata ptr @.str.6.37, metadata !2164, metadata !DIExpression()), !dbg !2165
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.6.37) #39, !dbg !2167
  %12 = icmp eq i32 %11, 0, !dbg !2168
  br i1 %12, label %13, label %14, !dbg !2169

13:                                               ; preds = %3
  tail call void @clearerr_unlocked(ptr noundef nonnull %0) #38, !dbg !2170
  br label %19, !dbg !2170

14:                                               ; preds = %3
  %15 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !2171
  %16 = icmp eq i32 %15, 0, !dbg !2173
  br i1 %16, label %19, label %17, !dbg !2174

17:                                               ; preds = %14
  %18 = load i32, ptr %4, align 4, !dbg !2175, !tbaa !1168
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !535, metadata !DIExpression()), !dbg !2147
  br label %19, !dbg !2176

19:                                               ; preds = %14, %17, %13
  %20 = phi i32 [ %9, %13 ], [ %18, %17 ], [ %9, %14 ], !dbg !2147
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !535, metadata !DIExpression()), !dbg !2147
  %21 = icmp eq i32 %20, 0, !dbg !2177
  br i1 %21, label %25, label %22, !dbg !2179

22:                                               ; preds = %19
  %23 = load ptr, ptr @next_file.prev_file, align 8, !dbg !2180, !tbaa !1098
  %24 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %23) #38, !dbg !2180
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %20, ptr noundef nonnull @.str.7.40, ptr noundef %24) #38, !dbg !2180
  store i32 1, ptr @exit_status, align 4, !dbg !2182, !tbaa !1168
  br label %25, !dbg !2183

25:                                               ; preds = %19, %22, %1
  %26 = load ptr, ptr @file_list, align 8, !dbg !2184, !tbaa !1098
  %27 = getelementptr inbounds ptr, ptr %26, i64 1, !dbg !2184
  store ptr %27, ptr @file_list, align 8, !dbg !2184, !tbaa !1098
  %28 = load ptr, ptr %26, align 8, !dbg !2185, !tbaa !1098
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !534, metadata !DIExpression()), !dbg !2143
  %29 = icmp eq ptr %28, null, !dbg !2186
  br i1 %29, label %50, label %.preheader, !dbg !2187

.preheader:                                       ; preds = %25
  br label %30, !dbg !2187

30:                                               ; preds = %.preheader, %42
  %31 = phi ptr [ %48, %42 ], [ %28, %.preheader ]
  call void @llvm.dbg.value(metadata ptr %31, metadata !2161, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata ptr @.str.6.37, metadata !2164, metadata !DIExpression()), !dbg !2188
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(2) @.str.6.37) #39, !dbg !2192
  %33 = icmp eq i32 %32, 0, !dbg !2193
  br i1 %33, label %34, label %36, !dbg !2194

34:                                               ; preds = %30
  store i1 true, ptr @have_read_stdin, align 1, !dbg !2195
  %35 = load ptr, ptr @stdin, align 8, !dbg !2197, !tbaa !1098
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !533, metadata !DIExpression()), !dbg !2143
  br label %38, !dbg !2198

36:                                               ; preds = %30
  %37 = tail call noalias ptr @rpl_fopen(ptr noundef nonnull %31, ptr noundef nonnull @.str.8.41) #38, !dbg !2199
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !533, metadata !DIExpression()), !dbg !2143
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %35, %34 ], [ %37, %36 ], !dbg !2200
  tail call void @llvm.dbg.value(metadata ptr %39, metadata !533, metadata !DIExpression()), !dbg !2143
  %40 = icmp eq ptr %39, null, !dbg !2201
  br i1 %40, label %42, label %41, !dbg !2203

41:                                               ; preds = %38
  %.lcssa2 = phi ptr [ %39, %38 ], !dbg !2200
  %.lcssa = phi ptr [ %31, %38 ]
  store ptr %.lcssa, ptr @next_file.prev_file, align 8, !dbg !2204, !tbaa !1098
  tail call void @fadvise(ptr noundef nonnull %.lcssa2, i32 noundef 2) #38, !dbg !2206
  br label %50, !dbg !2207

42:                                               ; preds = %38
  %43 = tail call ptr @__errno_location() #41, !dbg !2208
  %44 = load i32, ptr %43, align 4, !dbg !2208, !tbaa !1168
  %45 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef nonnull %31) #38, !dbg !2208
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %44, ptr noundef nonnull @.str.7.40, ptr noundef %45) #38, !dbg !2208
  store i32 1, ptr @exit_status, align 4, !dbg !2209, !tbaa !1168
  %46 = load ptr, ptr @file_list, align 8, !dbg !2184, !tbaa !1098
  %47 = getelementptr inbounds ptr, ptr %46, i64 1, !dbg !2184
  store ptr %47, ptr @file_list, align 8, !dbg !2184, !tbaa !1098
  %48 = load ptr, ptr %46, align 8, !dbg !2185, !tbaa !1098
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !534, metadata !DIExpression()), !dbg !2143
  %49 = icmp eq ptr %48, null, !dbg !2186
  br i1 %49, label %.loopexit, label %30, !dbg !2187, !llvm.loop !2210

.loopexit:                                        ; preds = %42
  br label %50, !dbg !2212

50:                                               ; preds = %.loopexit, %25, %41
  %51 = phi ptr [ %.lcssa2, %41 ], [ null, %25 ], [ null, %.loopexit ], !dbg !2143
  ret ptr %51, !dbg !2212
}

; Function Attrs: nounwind uwtable
define dso_local void @cleanup_file_list_stdin() local_unnamed_addr #10 !dbg !2213 {
  %1 = load i1, ptr @have_read_stdin, align 1, !dbg !2214
  br i1 %1, label %2, label %9, !dbg !2216

2:                                                ; preds = %0
  %3 = load ptr, ptr @stdin, align 8, !dbg !2217, !tbaa !1098
  %4 = tail call i32 @rpl_fclose(ptr noundef %3) #38, !dbg !2218
  %5 = icmp eq i32 %4, 0, !dbg !2219
  br i1 %5, label %9, label %6, !dbg !2220

6:                                                ; preds = %2
  %7 = tail call ptr @__errno_location() #41, !dbg !2221
  %8 = load i32, ptr %7, align 4, !dbg !2221, !tbaa !1168
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %8, ptr noundef nonnull @.str.6.37) #38, !dbg !2221
  unreachable, !dbg !2221

9:                                                ; preds = %2, %0
  ret void, !dbg !2222
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_tab_list_info(ptr noundef %0) local_unnamed_addr #10 !dbg !2223 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2225, metadata !DIExpression()), !dbg !2226
  %2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9.46, i32 noundef 5) #38, !dbg !2227
  call void @llvm.dbg.value(metadata ptr %0, metadata !600, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata ptr %2, metadata !601, metadata !DIExpression()), !dbg !2228
  %3 = load i32, ptr @oputs_.help_no_sgr.47, align 4, !dbg !2230, !tbaa !1168
  %4 = icmp eq i32 %3, -1, !dbg !2231
  br i1 %4, label %5, label %17, !dbg !2232

5:                                                ; preds = %1
  %6 = tail call ptr @getenv(ptr noundef nonnull @.str.17.48) #38, !dbg !2233
  call void @llvm.dbg.value(metadata ptr %6, metadata !602, metadata !DIExpression()), !dbg !2234
  %7 = icmp eq ptr %6, null, !dbg !2235
  br i1 %7, label %15, label %8, !dbg !2236

8:                                                ; preds = %5
  %9 = load i8, ptr %6, align 1, !dbg !2237, !tbaa !1177
  %10 = icmp eq i8 %9, 0, !dbg !2237
  br i1 %10, label %15, label %11, !dbg !2238

11:                                               ; preds = %8
  call void @llvm.dbg.value(metadata ptr %6, metadata !2161, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata ptr @.str.18.49, metadata !2164, metadata !DIExpression()), !dbg !2239
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(5) @.str.18.49) #39, !dbg !2241
  %13 = icmp eq i32 %12, 0, !dbg !2242
  %14 = zext i1 %13 to i32, !dbg !2238
  br label %15, !dbg !2238

15:                                               ; preds = %11, %8, %5
  %16 = phi i32 [ 1, %8 ], [ 1, %5 ], [ %14, %11 ]
  store i32 %16, ptr @oputs_.help_no_sgr.47, align 4, !dbg !2243, !tbaa !1168
  br label %17, !dbg !2244

17:                                               ; preds = %15, %1
  %18 = phi i32 [ %16, %15 ], [ %3, %1 ], !dbg !2245
  %19 = icmp eq i32 %18, 0, !dbg !2245
  br i1 %19, label %23, label %20, !dbg !2247

20:                                               ; preds = %17
  %21 = load ptr, ptr @stdout, align 8, !dbg !2248, !tbaa !1098
  %22 = tail call i32 @fputs_unlocked(ptr noundef %2, ptr noundef %21), !dbg !2248
  br label %155, !dbg !2250

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 1, metadata !605, metadata !DIExpression()), !dbg !2228
  %24 = tail call i64 @strspn(ptr noundef %2, ptr noundef nonnull @.str.19.50) #39, !dbg !2251
  %25 = getelementptr inbounds i8, ptr %2, i64 %24, !dbg !2252
  call void @llvm.dbg.value(metadata ptr %25, metadata !606, metadata !DIExpression()), !dbg !2228
  %26 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 45) #39, !dbg !2253
  call void @llvm.dbg.value(metadata ptr %26, metadata !607, metadata !DIExpression()), !dbg !2228
  %27 = icmp eq ptr %26, null, !dbg !2254
  br i1 %27, label %55, label %28, !dbg !2255

28:                                               ; preds = %23
  %29 = icmp eq ptr %26, %25, !dbg !2256
  br i1 %29, label %55, label %30, !dbg !2257

30:                                               ; preds = %28
  call void @llvm.dbg.value(metadata ptr %25, metadata !608, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata i64 0, metadata !612, metadata !DIExpression()), !dbg !2258
  %31 = icmp ult ptr %25, %26, !dbg !2259
  br i1 %31, label %32, label %52, !dbg !2260

32:                                               ; preds = %30
  %33 = tail call ptr @__ctype_b_loc() #41, !dbg !2228
  %34 = load ptr, ptr %33, align 8, !tbaa !1098
  br label %35, !dbg !2260

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %25, %32 ], [ %38, %35 ]
  %37 = phi i64 [ 0, %32 ], [ %46, %35 ]
  call void @llvm.dbg.value(metadata ptr %36, metadata !608, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata i64 %37, metadata !612, metadata !DIExpression()), !dbg !2258
  %38 = getelementptr inbounds i8, ptr %36, i64 1, !dbg !2261
  call void @llvm.dbg.value(metadata ptr %38, metadata !608, metadata !DIExpression()), !dbg !2258
  %39 = load i8, ptr %36, align 1, !dbg !2261, !tbaa !1177
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i16, ptr %34, i64 %40, !dbg !2261
  %42 = load i16, ptr %41, align 2, !dbg !2261, !tbaa !1209
  %43 = lshr i16 %42, 13, !dbg !2262
  %44 = and i16 %43, 1, !dbg !2262
  %45 = zext nneg i16 %44 to i64
  %46 = add nuw nsw i64 %37, %45, !dbg !2263
  call void @llvm.dbg.value(metadata i64 %46, metadata !612, metadata !DIExpression()), !dbg !2258
  %47 = icmp ult ptr %38, %26, !dbg !2259
  %48 = icmp ult i64 %46, 2, !dbg !2264
  %49 = select i1 %47, i1 %48, i1 false, !dbg !2264
  br i1 %49, label %35, label %50, !dbg !2260, !llvm.loop !2265

50:                                               ; preds = %35
  %.lcssa1 = phi i64 [ %46, %35 ], !dbg !2263
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !2266
  br label %52, !dbg !2266

52:                                               ; preds = %50, %30
  %53 = phi i1 [ true, %30 ], [ %51, %50 ], !dbg !2258
  %54 = select i1 %53, ptr %26, ptr %25, !dbg !2268
  call void @llvm.dbg.value(metadata i8 poison, metadata !605, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata ptr %54, metadata !607, metadata !DIExpression()), !dbg !2228
  br label %55, !dbg !2269

55:                                               ; preds = %52, %28, %23
  %56 = phi ptr [ %54, %52 ], [ %25, %28 ], [ %25, %23 ], !dbg !2228
  %57 = phi i1 [ %53, %52 ], [ true, %28 ], [ false, %23 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !605, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata ptr %56, metadata !607, metadata !DIExpression()), !dbg !2228
  %58 = tail call i64 @strcspn(ptr noundef %56, ptr noundef nonnull @.str.20.51) #39, !dbg !2270
  call void @llvm.dbg.value(metadata i64 %58, metadata !613, metadata !DIExpression()), !dbg !2228
  %59 = getelementptr inbounds i8, ptr %56, i64 %58, !dbg !2271
  call void @llvm.dbg.value(metadata ptr %59, metadata !614, metadata !DIExpression()), !dbg !2228
  br label %60, !dbg !2272

60:                                               ; preds = %91, %55
  %61 = phi ptr [ %59, %55 ], [ %92, %91 ], !dbg !2228
  %62 = phi i1 [ %57, %55 ], [ %70, %91 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !605, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata ptr %61, metadata !614, metadata !DIExpression()), !dbg !2228
  %63 = load i8, ptr %61, align 1, !dbg !2273, !tbaa !1177
  switch i8 %63, label %69 [
    i8 0, label %93
    i8 10, label %93
    i8 45, label %64
  ], !dbg !2274

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !2275
  %66 = load i8, ptr %65, align 1, !dbg !2278, !tbaa !1177
  %67 = icmp ne i8 %66, 45, !dbg !2279
  %68 = select i1 %67, i1 %62, i1 false, !dbg !2280
  br label %69, !dbg !2280

69:                                               ; preds = %64, %60
  %70 = phi i1 [ %62, %60 ], [ %68, %64 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !605, metadata !DIExpression()), !dbg !2228
  %71 = tail call ptr @__ctype_b_loc() #41, !dbg !2281
  %72 = load ptr, ptr %71, align 8, !dbg !2281, !tbaa !1098
  %73 = zext i8 %63 to i64
  %74 = getelementptr inbounds i16, ptr %72, i64 %73, !dbg !2281
  %75 = load i16, ptr %74, align 2, !dbg !2281, !tbaa !1209
  %76 = and i16 %75, 8192, !dbg !2281
  %77 = icmp eq i16 %76, 0, !dbg !2281
  br i1 %77, label %91, label %78, !dbg !2283

78:                                               ; preds = %69
  %79 = icmp eq i8 %63, 9, !dbg !2284
  br i1 %79, label %93, label %80, !dbg !2287

80:                                               ; preds = %78
  %81 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !2288
  %82 = load i8, ptr %81, align 1, !dbg !2288, !tbaa !1177
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds i16, ptr %72, i64 %83, !dbg !2288
  %85 = load i16, ptr %84, align 2, !dbg !2288, !tbaa !1209
  %86 = and i16 %85, 8192, !dbg !2288
  %87 = icmp eq i16 %86, 0, !dbg !2288
  %88 = icmp eq i8 %82, 45
  %89 = or i1 %70, %88
  %90 = select i1 %87, i1 %89, i1 false, !dbg !2289
  br i1 %90, label %91, label %93, !dbg !2289

91:                                               ; preds = %80, %69
  %92 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !2290
  call void @llvm.dbg.value(metadata ptr %92, metadata !614, metadata !DIExpression()), !dbg !2228
  br label %60, !dbg !2272, !llvm.loop !2291

93:                                               ; preds = %80, %78, %60, %60
  %.lcssa = phi ptr [ %61, %80 ], [ %61, %78 ], [ %61, %60 ], [ %61, %60 ], !dbg !2228
  %94 = ptrtoint ptr %25 to i64, !dbg !2293
  %95 = load ptr, ptr @stdout, align 8, !dbg !2293, !tbaa !1098
  %96 = tail call i64 @fwrite_unlocked(ptr noundef %2, i64 noundef 1, i64 noundef %24, ptr noundef %95), !dbg !2293
  call void @llvm.dbg.value(metadata ptr %0, metadata !2161, metadata !DIExpression()), !dbg !2294
  call void @llvm.dbg.value(metadata ptr @.str.21.52, metadata !2164, metadata !DIExpression()), !dbg !2294
  %97 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.21.52) #39, !dbg !2296
  %98 = icmp eq i32 %97, 0, !dbg !2297
  br i1 %98, label %127, label %99, !dbg !2298

99:                                               ; preds = %93
  call void @llvm.dbg.value(metadata ptr %0, metadata !2161, metadata !DIExpression()), !dbg !2299
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !2164, metadata !DIExpression()), !dbg !2299
  %100 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.23) #39, !dbg !2301
  %101 = icmp eq i32 %100, 0, !dbg !2302
  br i1 %101, label %127, label %102, !dbg !2303

102:                                              ; preds = %99
  call void @llvm.dbg.value(metadata ptr %0, metadata !2161, metadata !DIExpression()), !dbg !2304
  call void @llvm.dbg.value(metadata ptr @.str.25, metadata !2164, metadata !DIExpression()), !dbg !2304
  %103 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.25) #39, !dbg !2306
  %104 = icmp eq i32 %103, 0, !dbg !2307
  br i1 %104, label %127, label %105, !dbg !2308

105:                                              ; preds = %102
  call void @llvm.dbg.value(metadata ptr %0, metadata !2161, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata ptr @.str.26, metadata !2164, metadata !DIExpression()), !dbg !2309
  %106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.26) #39, !dbg !2311
  %107 = icmp eq i32 %106, 0, !dbg !2312
  br i1 %107, label %127, label %108, !dbg !2313

108:                                              ; preds = %105
  call void @llvm.dbg.value(metadata ptr %0, metadata !2161, metadata !DIExpression()), !dbg !2314
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !2164, metadata !DIExpression()), !dbg !2314
  %109 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.28) #39, !dbg !2316
  %110 = icmp eq i32 %109, 0, !dbg !2317
  br i1 %110, label %127, label %111, !dbg !2318

111:                                              ; preds = %108
  call void @llvm.dbg.value(metadata ptr %0, metadata !2161, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.value(metadata ptr @.str.29, metadata !2164, metadata !DIExpression()), !dbg !2319
  %112 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.29) #39, !dbg !2321
  %113 = icmp eq i32 %112, 0, !dbg !2322
  br i1 %113, label %127, label %114, !dbg !2323

114:                                              ; preds = %111
  call void @llvm.dbg.value(metadata ptr %0, metadata !2161, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !2164, metadata !DIExpression()), !dbg !2324
  %115 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.30) #39, !dbg !2326
  %116 = icmp eq i32 %115, 0, !dbg !2327
  br i1 %116, label %127, label %117, !dbg !2328

117:                                              ; preds = %114
  call void @llvm.dbg.value(metadata ptr %0, metadata !2161, metadata !DIExpression()), !dbg !2329
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !2164, metadata !DIExpression()), !dbg !2329
  %118 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.31) #39, !dbg !2331
  %119 = icmp eq i32 %118, 0, !dbg !2332
  br i1 %119, label %127, label %120, !dbg !2333

120:                                              ; preds = %117
  call void @llvm.dbg.value(metadata ptr %0, metadata !2161, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata ptr @.str.32, metadata !2164, metadata !DIExpression()), !dbg !2334
  %121 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.32) #39, !dbg !2336
  %122 = icmp eq i32 %121, 0, !dbg !2337
  br i1 %122, label %127, label %123, !dbg !2338

123:                                              ; preds = %120
  call void @llvm.dbg.value(metadata ptr %0, metadata !2161, metadata !DIExpression()), !dbg !2339
  call void @llvm.dbg.value(metadata ptr @.str.33, metadata !2164, metadata !DIExpression()), !dbg !2339
  %124 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.33) #39, !dbg !2341
  %125 = icmp eq i32 %124, 0, !dbg !2342
  %126 = select i1 %125, ptr @.str.27, ptr %0, !dbg !2343
  br label %127, !dbg !2338

127:                                              ; preds = %123, %120, %117, %114, %111, %108, %105, %102, %99, %93
  %128 = phi ptr [ @.str.22.53, %93 ], [ @.str.24, %99 ], [ @.str.24, %102 ], [ @.str.27, %105 ], [ @.str.27, %108 ], [ @.str.27, %111 ], [ @.str.27, %114 ], [ @.str.27, %117 ], [ %126, %123 ], [ @.str.27, %120 ], !dbg !2298
  call void @llvm.dbg.value(metadata ptr %128, metadata !619, metadata !DIExpression()), !dbg !2228
  %129 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(7) @.str.34, i64 noundef 6) #39, !dbg !2344
  %130 = icmp eq i32 %129, 0, !dbg !2344
  br i1 %130, label %134, label %131, !dbg !2346

131:                                              ; preds = %127
  %132 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(10) @.str.35.54, i64 noundef 9) #39, !dbg !2347
  %133 = icmp eq i32 %132, 0, !dbg !2347
  br i1 %133, label %134, label %137, !dbg !2348

134:                                              ; preds = %131, %127
  %135 = trunc i64 %58 to i32, !dbg !2349
  %136 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36.55, ptr noundef nonnull @.str.37.56, ptr noundef %128, ptr noundef %128, i32 noundef %135, ptr noundef %56) #38, !dbg !2349
  br label %140, !dbg !2351

137:                                              ; preds = %131
  %138 = trunc i64 %58 to i32, !dbg !2352
  %139 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38.57, ptr noundef nonnull @.str.39.58, ptr noundef %128, i32 noundef %138, ptr noundef %56) #38, !dbg !2352
  br label %140

140:                                              ; preds = %137, %134
  %141 = load ptr, ptr @stdout, align 8, !dbg !2354, !tbaa !1098
  %142 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40.59, ptr noundef %141), !dbg !2354
  %143 = load ptr, ptr @stdout, align 8, !dbg !2355, !tbaa !1098
  %144 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41.60, ptr noundef %143), !dbg !2355
  %145 = ptrtoint ptr %.lcssa to i64, !dbg !2356
  %146 = sub i64 %145, %94, !dbg !2356
  %147 = load ptr, ptr @stdout, align 8, !dbg !2356, !tbaa !1098
  %148 = tail call i64 @fwrite_unlocked(ptr noundef %25, i64 noundef 1, i64 noundef %146, ptr noundef %147), !dbg !2356
  %149 = load ptr, ptr @stdout, align 8, !dbg !2357, !tbaa !1098
  %150 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42.61, ptr noundef %149), !dbg !2357
  %151 = load ptr, ptr @stdout, align 8, !dbg !2358, !tbaa !1098
  %152 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43.62, ptr noundef %151), !dbg !2358
  %153 = load ptr, ptr @stdout, align 8, !dbg !2359, !tbaa !1098
  %154 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %153), !dbg !2359
  br label %155, !dbg !2360

155:                                              ; preds = %20, %140
  %156 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10.63, i32 noundef 5) #38, !dbg !2361
  %157 = load ptr, ptr @stdout, align 8, !dbg !2361, !tbaa !1098
  %158 = tail call i32 @fputs_unlocked(ptr noundef %156, ptr noundef %157), !dbg !2361
  ret void, !dbg !2362
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #15 !dbg !2363 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2365, metadata !DIExpression()), !dbg !2366
  store ptr %0, ptr @file_name, align 8, !dbg !2367, !tbaa !1098
  ret void, !dbg !2368
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #15 !dbg !2369 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2373, metadata !DIExpression()), !dbg !2374
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !2375, !tbaa !1344
  ret void, !dbg !2376
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2377 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2382, !tbaa !1098
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !2383
  %3 = icmp eq i32 %2, 0, !dbg !2384
  br i1 %3, label %22, label %4, !dbg !2385

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !2386, !tbaa !1344, !range !1578, !noundef !1136
  %6 = icmp eq i8 %5, 0, !dbg !2386
  br i1 %6, label %11, label %7, !dbg !2387

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !2388
  %9 = load i32, ptr %8, align 4, !dbg !2388, !tbaa !1168
  %10 = icmp eq i32 %9, 32, !dbg !2389
  br i1 %10, label %22, label %11, !dbg !2390

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1.70, i32 noundef 5) #38, !dbg !2391
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !2379, metadata !DIExpression()), !dbg !2392
  %13 = load ptr, ptr @file_name, align 8, !dbg !2393, !tbaa !1098
  %14 = icmp eq ptr %13, null, !dbg !2393
  %15 = tail call ptr @__errno_location() #41, !dbg !2395
  %16 = load i32, ptr %15, align 4, !dbg !2395, !tbaa !1168
  br i1 %14, label %19, label %17, !dbg !2396

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !2397
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.71, ptr noundef %18, ptr noundef %12) #38, !dbg !2397
  br label %20, !dbg !2397

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.72, ptr noundef %12) #38, !dbg !2398
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2399, !tbaa !1168
  tail call void @_exit(i32 noundef %21) #40, !dbg !2400
  unreachable, !dbg !2400

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2401, !tbaa !1098
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !2403
  %25 = icmp eq i32 %24, 0, !dbg !2404
  br i1 %25, label %28, label %26, !dbg !2405

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2406, !tbaa !1168
  tail call void @_exit(i32 noundef %27) #40, !dbg !2407
  unreachable, !dbg !2407

28:                                               ; preds = %22
  ret void, !dbg !2408
}

; Function Attrs: noreturn
declare !dbg !2409 void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #17 !dbg !2411 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2415, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2416, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2417, metadata !DIExpression()), !dbg !2419
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2418, metadata !DIExpression(DW_OP_deref)), !dbg !2419
  tail call fastcc void @flush_stdout(), !dbg !2420
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2421, !tbaa !1098
  %7 = icmp eq ptr %6, null, !dbg !2421
  br i1 %7, label %9, label %8, !dbg !2423

8:                                                ; preds = %4
  tail call void %6() #38, !dbg !2424
  br label %13, !dbg !2424

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2425, !tbaa !1098
  %11 = tail call ptr @getprogname() #39, !dbg !2425
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.73, ptr noundef %11) #38, !dbg !2425
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !2427
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2427, !tbaa.struct !2428
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2427
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !2427
  ret void, !dbg !2429
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2430 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2432, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 1, metadata !2434, metadata !DIExpression()), !dbg !2439
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !2442
  %2 = icmp slt i32 %1, 0, !dbg !2443
  br i1 %2, label %6, label %3, !dbg !2444

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2445, !tbaa !1098
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !2445
  br label %6, !dbg !2445

6:                                                ; preds = %3, %0
  ret void, !dbg !2446
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2447 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !2453
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2449, metadata !DIExpression()), !dbg !2454
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2450, metadata !DIExpression()), !dbg !2454
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2451, metadata !DIExpression()), !dbg !2454
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2452, metadata !DIExpression(DW_OP_deref)), !dbg !2454
  %7 = load ptr, ptr @stderr, align 8, !dbg !2455, !tbaa !1098
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !2456, !noalias !2500
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2504
  call void @llvm.dbg.value(metadata ptr %7, metadata !2496, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata ptr %2, metadata !2497, metadata !DIExpression()), !dbg !2505
  call void @llvm.dbg.value(metadata ptr poison, metadata !2498, metadata !DIExpression(DW_OP_deref)), !dbg !2505
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #38, !dbg !2456
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !2456, !noalias !2500
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2506, !tbaa !1168
  %10 = add i32 %9, 1, !dbg !2506
  store i32 %10, ptr @error_message_count, align 4, !dbg !2506, !tbaa !1168
  %11 = icmp eq i32 %1, 0, !dbg !2507
  br i1 %11, label %21, label %12, !dbg !2509

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2510, metadata !DIExpression(), metadata !2453, metadata ptr %5, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i32 %1, metadata !2513, metadata !DIExpression()), !dbg !2518
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !2520
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !2521
  call void @llvm.dbg.value(metadata ptr %13, metadata !2514, metadata !DIExpression()), !dbg !2518
  %14 = icmp eq ptr %13, null, !dbg !2522
  br i1 %14, label %15, label %17, !dbg !2524

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.74, ptr noundef nonnull @.str.5.75, i32 noundef 5) #38, !dbg !2525
  call void @llvm.dbg.value(metadata ptr %16, metadata !2514, metadata !DIExpression()), !dbg !2518
  br label %17, !dbg !2526

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2518
  call void @llvm.dbg.value(metadata ptr %18, metadata !2514, metadata !DIExpression()), !dbg !2518
  %19 = load ptr, ptr @stderr, align 8, !dbg !2527, !tbaa !1098
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.76, ptr noundef %18) #38, !dbg !2527
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !2528
  br label %21, !dbg !2529

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2530, !tbaa !1098
  call void @llvm.dbg.value(metadata i32 10, metadata !2531, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata ptr %22, metadata !2536, metadata !DIExpression()), !dbg !2537
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2539
  %24 = load ptr, ptr %23, align 8, !dbg !2539, !tbaa !1613
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2539
  %26 = load ptr, ptr %25, align 8, !dbg !2539, !tbaa !1614
  %27 = icmp ult ptr %24, %26, !dbg !2539
  br i1 %27, label %30, label %28, !dbg !2539, !prof !1615

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #38, !dbg !2539
  br label %32, !dbg !2539

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2539
  store ptr %31, ptr %23, align 8, !dbg !2539, !tbaa !1613
  store i8 10, ptr %24, align 1, !dbg !2539, !tbaa !1177
  br label %32, !dbg !2539

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2540, !tbaa !1098
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #38, !dbg !2540
  %35 = icmp eq i32 %0, 0, !dbg !2541
  br i1 %35, label %37, label %36, !dbg !2543

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #40, !dbg !2544
  unreachable, !dbg !2544

37:                                               ; preds = %32
  ret void, !dbg !2545
}

declare !dbg !2546 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2549 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2552 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2556 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !2564
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2563, metadata !DIExpression(), metadata !2564, metadata ptr %4, metadata !DIExpression()), !dbg !2565
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2560, metadata !DIExpression()), !dbg !2565
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2561, metadata !DIExpression()), !dbg !2565
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2562, metadata !DIExpression()), !dbg !2565
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #38, !dbg !2566
  call void @llvm.va_start(ptr nonnull %4), !dbg !2567
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !2568
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2568, !tbaa.struct !2428
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #44, !dbg !2568
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !2568
  call void @llvm.va_end(ptr nonnull %4), !dbg !2569
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #38, !dbg !2570
  ret void, !dbg !2570
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #17 !dbg !711 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !727, metadata !DIExpression()), !dbg !2571
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !728, metadata !DIExpression()), !dbg !2571
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !729, metadata !DIExpression()), !dbg !2571
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !730, metadata !DIExpression()), !dbg !2571
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !731, metadata !DIExpression()), !dbg !2571
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !732, metadata !DIExpression(DW_OP_deref)), !dbg !2571
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2572, !tbaa !1168
  %9 = icmp eq i32 %8, 0, !dbg !2572
  br i1 %9, label %24, label %10, !dbg !2574

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2575, !tbaa !1168
  %12 = icmp eq i32 %11, %3, !dbg !2578
  br i1 %12, label %13, label %23, !dbg !2579

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2580, !tbaa !1098
  %15 = icmp eq ptr %14, %2, !dbg !2581
  br i1 %15, label %37, label %16, !dbg !2582

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2583
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2584
  br i1 %19, label %20, label %23, !dbg !2584

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2585
  %22 = icmp eq i32 %21, 0, !dbg !2586
  br i1 %22, label %37, label %23, !dbg !2587

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2588, !tbaa !1098
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2589, !tbaa !1168
  br label %24, !dbg !2590

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2591
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2592, !tbaa !1098
  %26 = icmp eq ptr %25, null, !dbg !2592
  br i1 %26, label %28, label %27, !dbg !2594

27:                                               ; preds = %24
  tail call void %25() #38, !dbg !2595
  br label %32, !dbg !2595

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2596, !tbaa !1098
  %30 = tail call ptr @getprogname() #39, !dbg !2596
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.79, ptr noundef %30) #38, !dbg !2596
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2598, !tbaa !1098
  %34 = icmp eq ptr %2, null, !dbg !2598
  %35 = select i1 %34, ptr @.str.3.80, ptr @.str.2.81, !dbg !2598
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #38, !dbg !2598
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !2599
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2599, !tbaa.struct !2428
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2599
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !2599
  br label %37, !dbg !2600

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2600
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2601 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !2611
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2610, metadata !DIExpression(), metadata !2611, metadata ptr %6, metadata !DIExpression()), !dbg !2612
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2605, metadata !DIExpression()), !dbg !2612
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2606, metadata !DIExpression()), !dbg !2612
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2607, metadata !DIExpression()), !dbg !2612
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2608, metadata !DIExpression()), !dbg !2612
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2609, metadata !DIExpression()), !dbg !2612
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !2613
  call void @llvm.va_start(ptr nonnull %6), !dbg !2614
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !2615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2615, !tbaa.struct !2428
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #44, !dbg !2615
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !2615
  call void @llvm.va_end(ptr nonnull %6), !dbg !2616
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !2617
  ret void, !dbg !2617
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2618 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2624, metadata !DIExpression()), !dbg !2628
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2625, metadata !DIExpression()), !dbg !2628
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2626, metadata !DIExpression()), !dbg !2628
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2627, metadata !DIExpression()), !dbg !2628
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #38, !dbg !2629
  ret void, !dbg !2630
}

; Function Attrs: nounwind
declare !dbg !2631 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2634 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2672, metadata !DIExpression()), !dbg !2674
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2673, metadata !DIExpression()), !dbg !2674
  %3 = icmp eq ptr %0, null, !dbg !2675
  br i1 %3, label %7, label %4, !dbg !2677

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2678
  call void @llvm.dbg.value(metadata i32 %5, metadata !2624, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i64 0, metadata !2625, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i64 0, metadata !2626, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.value(metadata i32 %1, metadata !2627, metadata !DIExpression()), !dbg !2679
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #38, !dbg !2681
  br label %7, !dbg !2682

7:                                                ; preds = %4, %2
  ret void, !dbg !2683
}

; Function Attrs: nofree nounwind
declare !dbg !2684 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2687 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2725, metadata !DIExpression()), !dbg !2729
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2726, metadata !DIExpression()), !dbg !2729
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2730
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2727, metadata !DIExpression()), !dbg !2729
  %3 = icmp slt i32 %2, 0, !dbg !2731
  br i1 %3, label %4, label %6, !dbg !2733

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2734
  br label %24, !dbg !2735

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2736
  %8 = icmp eq i32 %7, 0, !dbg !2736
  br i1 %8, label %13, label %9, !dbg !2738

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2739
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !2740
  %12 = icmp eq i64 %11, -1, !dbg !2741
  br i1 %12, label %16, label %13, !dbg !2742

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !2743
  %15 = icmp eq i32 %14, 0, !dbg !2743
  br i1 %15, label %16, label %18, !dbg !2744

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2726, metadata !DIExpression()), !dbg !2729
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2728, metadata !DIExpression()), !dbg !2729
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2745
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !2728, metadata !DIExpression()), !dbg !2729
  br label %24, !dbg !2746

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !2747
  %20 = load i32, ptr %19, align 4, !dbg !2747, !tbaa !1168
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2726, metadata !DIExpression()), !dbg !2729
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2728, metadata !DIExpression()), !dbg !2729
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2745
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !2728, metadata !DIExpression()), !dbg !2729
  %22 = icmp eq i32 %20, 0, !dbg !2748
  br i1 %22, label %24, label %23, !dbg !2746

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2750, !tbaa !1168
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !2728, metadata !DIExpression()), !dbg !2729
  br label %24, !dbg !2752

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2729
  ret i32 %25, !dbg !2753
}

; Function Attrs: nofree nounwind
declare !dbg !2754 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2755 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2757 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2760 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2798, metadata !DIExpression()), !dbg !2799
  %2 = icmp eq ptr %0, null, !dbg !2800
  br i1 %2, label %6, label %3, !dbg !2802

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2803
  %5 = icmp eq i32 %4, 0, !dbg !2803
  br i1 %5, label %6, label %8, !dbg !2804

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2805
  br label %16, !dbg !2806

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2807, metadata !DIExpression()), !dbg !2812
  %9 = load i32, ptr %0, align 8, !dbg !2814, !tbaa !1427
  %10 = and i32 %9, 256, !dbg !2816
  %11 = icmp eq i32 %10, 0, !dbg !2816
  br i1 %11, label %14, label %12, !dbg !2817

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !2818
  br label %14, !dbg !2818

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2819
  br label %16, !dbg !2820

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2799
  ret i32 %17, !dbg !2821
}

; Function Attrs: nofree nounwind
declare !dbg !2822 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2823 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2861, metadata !DIExpression()), !dbg !2862
  tail call void @__fpurge(ptr noundef nonnull %0) #38, !dbg !2863
  ret i32 0, !dbg !2864
}

; Function Attrs: nounwind
declare !dbg !2865 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2868 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2906, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2907, metadata !DIExpression()), !dbg !2912
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2908, metadata !DIExpression()), !dbg !2912
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2913
  %5 = load ptr, ptr %4, align 8, !dbg !2913, !tbaa !2914
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2915
  %7 = load ptr, ptr %6, align 8, !dbg !2915, !tbaa !2916
  %8 = icmp eq ptr %5, %7, !dbg !2917
  br i1 %8, label %9, label %27, !dbg !2918

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2919
  %11 = load ptr, ptr %10, align 8, !dbg !2919, !tbaa !1613
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2920
  %13 = load ptr, ptr %12, align 8, !dbg !2920, !tbaa !2921
  %14 = icmp eq ptr %11, %13, !dbg !2922
  br i1 %14, label %15, label %27, !dbg !2923

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2924
  %17 = load ptr, ptr %16, align 8, !dbg !2924, !tbaa !2925
  %18 = icmp eq ptr %17, null, !dbg !2926
  br i1 %18, label %19, label %27, !dbg !2927

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2928
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !2929
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2909, metadata !DIExpression()), !dbg !2930
  %22 = icmp eq i64 %21, -1, !dbg !2931
  br i1 %22, label %29, label %23, !dbg !2933

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2934, !tbaa !1427
  %25 = and i32 %24, -17, !dbg !2934
  store i32 %25, ptr %0, align 8, !dbg !2934, !tbaa !1427
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2935
  store i64 %21, ptr %26, align 8, !dbg !2936, !tbaa !2937
  br label %29, !dbg !2938

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2939
  br label %29, !dbg !2940

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2912
  ret i32 %30, !dbg !2941
}

; Function Attrs: nofree nounwind
declare !dbg !2942 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !2945 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2948, !tbaa !1098
  ret ptr %1, !dbg !2949
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !2950 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2952, metadata !DIExpression()), !dbg !2955
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !2956
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2953, metadata !DIExpression()), !dbg !2955
  %3 = icmp eq ptr %2, null, !dbg !2957
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2957
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2957
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2954, metadata !DIExpression()), !dbg !2955
  %6 = ptrtoint ptr %5 to i64, !dbg !2958
  %7 = ptrtoint ptr %0 to i64, !dbg !2958
  %8 = sub i64 %6, %7, !dbg !2958
  %9 = icmp sgt i64 %8, 6, !dbg !2960
  br i1 %9, label %10, label %19, !dbg !2961

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2962
  call void @llvm.dbg.value(metadata ptr %11, metadata !2963, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata ptr @.str.100, metadata !2968, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i64 7, metadata !2969, metadata !DIExpression()), !dbg !2970
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.100, i64 7), !dbg !2972
  %13 = icmp eq i32 %12, 0, !dbg !2973
  br i1 %13, label %14, label %19, !dbg !2974

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2952, metadata !DIExpression()), !dbg !2955
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.101, i64 noundef 3) #39, !dbg !2975
  %16 = icmp eq i32 %15, 0, !dbg !2978
  %17 = select i1 %16, i64 3, i64 0, !dbg !2979
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2979
  br label %19, !dbg !2979

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2955
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2954, metadata !DIExpression()), !dbg !2955
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2952, metadata !DIExpression()), !dbg !2955
  store ptr %20, ptr @program_name, align 8, !dbg !2980, !tbaa !1098
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2981, !tbaa !1098
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2982, !tbaa !1098
  ret void, !dbg !2983
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2984 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !764 {
  %3 = alloca i32, align 4, !DIAssignID !2985
  call void @llvm.dbg.assign(metadata i1 undef, metadata !774, metadata !DIExpression(), metadata !2985, metadata ptr %3, metadata !DIExpression()), !dbg !2986
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2987
  call void @llvm.dbg.assign(metadata i1 undef, metadata !775, metadata !DIExpression(), metadata !2987, metadata ptr %4, metadata !DIExpression()), !dbg !2986
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !771, metadata !DIExpression()), !dbg !2986
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !772, metadata !DIExpression()), !dbg !2986
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !2988
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !773, metadata !DIExpression()), !dbg !2986
  %6 = icmp eq ptr %5, %0, !dbg !2989
  br i1 %6, label %7, label %14, !dbg !2991

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !2992
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !2993
  call void @llvm.dbg.value(metadata ptr %4, metadata !2994, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata ptr %4, metadata !3003, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i32 0, metadata !3008, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i64 8, metadata !3009, metadata !DIExpression()), !dbg !3010
  store i64 0, ptr %4, align 8, !dbg !3012
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !3013
  %9 = icmp eq i64 %8, 2, !dbg !3015
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !3016
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2986
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !3017
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !3017
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2986
  ret ptr %15, !dbg !3017
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !3018 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3023, metadata !DIExpression()), !dbg !3026
  %2 = tail call ptr @__errno_location() #41, !dbg !3027
  %3 = load i32, ptr %2, align 4, !dbg !3027, !tbaa !1168
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !3024, metadata !DIExpression()), !dbg !3026
  %4 = icmp eq ptr %0, null, !dbg !3028
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3028
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #45, !dbg !3029
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3025, metadata !DIExpression()), !dbg !3026
  store i32 %3, ptr %2, align 4, !dbg !3030, !tbaa !1168
  ret ptr %6, !dbg !3031
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !3032 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3038, metadata !DIExpression()), !dbg !3039
  %2 = icmp eq ptr %0, null, !dbg !3040
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !3040
  %4 = load i32, ptr %3, align 8, !dbg !3041, !tbaa !3042
  ret i32 %4, !dbg !3044
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !3045 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3049, metadata !DIExpression()), !dbg !3051
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3050, metadata !DIExpression()), !dbg !3051
  %3 = icmp eq ptr %0, null, !dbg !3052
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3052
  store i32 %1, ptr %4, align 8, !dbg !3053, !tbaa !3042
  ret void, !dbg !3054
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !3055 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3059, metadata !DIExpression()), !dbg !3067
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3060, metadata !DIExpression()), !dbg !3067
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3061, metadata !DIExpression()), !dbg !3067
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3062, metadata !DIExpression()), !dbg !3067
  %4 = icmp eq ptr %0, null, !dbg !3068
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3068
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3069
  %7 = lshr i8 %1, 5, !dbg !3070
  %8 = zext nneg i8 %7 to i64, !dbg !3070
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !3071
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3063, metadata !DIExpression()), !dbg !3067
  %10 = and i8 %1, 31, !dbg !3072
  %11 = zext nneg i8 %10 to i32, !dbg !3072
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !3065, metadata !DIExpression()), !dbg !3067
  %12 = load i32, ptr %9, align 4, !dbg !3073, !tbaa !1168
  %13 = lshr i32 %12, %11, !dbg !3074
  %14 = and i32 %13, 1, !dbg !3075
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !3066, metadata !DIExpression()), !dbg !3067
  %15 = xor i32 %13, %2, !dbg !3076
  %16 = and i32 %15, 1, !dbg !3076
  %17 = shl nuw i32 %16, %11, !dbg !3077
  %18 = xor i32 %17, %12, !dbg !3078
  store i32 %18, ptr %9, align 4, !dbg !3078, !tbaa !1168
  ret i32 %14, !dbg !3079
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !3080 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3084, metadata !DIExpression()), !dbg !3087
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3085, metadata !DIExpression()), !dbg !3087
  %3 = icmp eq ptr %0, null, !dbg !3088
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3090
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3084, metadata !DIExpression()), !dbg !3087
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !3091
  %6 = load i32, ptr %5, align 4, !dbg !3091, !tbaa !3092
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !3086, metadata !DIExpression()), !dbg !3087
  store i32 %1, ptr %5, align 4, !dbg !3093, !tbaa !3092
  ret i32 %6, !dbg !3094
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3095 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3099, metadata !DIExpression()), !dbg !3102
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3100, metadata !DIExpression()), !dbg !3102
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3101, metadata !DIExpression()), !dbg !3102
  %4 = icmp eq ptr %0, null, !dbg !3103
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3105
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3099, metadata !DIExpression()), !dbg !3102
  store i32 10, ptr %5, align 8, !dbg !3106, !tbaa !3042
  %6 = icmp ne ptr %1, null, !dbg !3107
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3109
  br i1 %8, label %10, label %9, !dbg !3109

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3110
  unreachable, !dbg !3110

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3111
  store ptr %1, ptr %11, align 8, !dbg !3112, !tbaa !3113
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3114
  store ptr %2, ptr %12, align 8, !dbg !3115, !tbaa !3116
  ret void, !dbg !3117
}

; Function Attrs: noreturn nounwind
declare !dbg !3118 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3119 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3123, metadata !DIExpression()), !dbg !3131
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3124, metadata !DIExpression()), !dbg !3131
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3125, metadata !DIExpression()), !dbg !3131
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3126, metadata !DIExpression()), !dbg !3131
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3127, metadata !DIExpression()), !dbg !3131
  %6 = icmp eq ptr %4, null, !dbg !3132
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !3132
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3128, metadata !DIExpression()), !dbg !3131
  %8 = tail call ptr @__errno_location() #41, !dbg !3133
  %9 = load i32, ptr %8, align 4, !dbg !3133, !tbaa !1168
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !3129, metadata !DIExpression()), !dbg !3131
  %10 = load i32, ptr %7, align 8, !dbg !3134, !tbaa !3042
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !3135
  %12 = load i32, ptr %11, align 4, !dbg !3135, !tbaa !3092
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !3136
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !3137
  %15 = load ptr, ptr %14, align 8, !dbg !3137, !tbaa !3113
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !3138
  %17 = load ptr, ptr %16, align 8, !dbg !3138, !tbaa !3116
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !3139
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !3130, metadata !DIExpression()), !dbg !3131
  store i32 %9, ptr %8, align 4, !dbg !3140, !tbaa !1168
  ret i64 %18, !dbg !3141
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !3142 {
  %10 = alloca i32, align 4, !DIAssignID !3210
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3211
  %12 = alloca i32, align 4, !DIAssignID !3212
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3213
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3214
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3188, metadata !DIExpression(), metadata !3214, metadata ptr %14, metadata !DIExpression()), !dbg !3215
  %15 = alloca i32, align 4, !DIAssignID !3216
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3191, metadata !DIExpression(), metadata !3216, metadata ptr %15, metadata !DIExpression()), !dbg !3217
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3148, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3149, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3150, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3151, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3152, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !3153, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3154, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3155, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3156, metadata !DIExpression()), !dbg !3218
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !3219
  %17 = icmp eq i64 %16, 1, !dbg !3220
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !3157, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3158, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3159, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3160, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3161, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3162, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !3163, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3164, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3165, metadata !DIExpression()), !dbg !3218
  %18 = and i32 %5, 2, !dbg !3221
  %19 = icmp ne i32 %18, 0, !dbg !3221
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !3221

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !3222
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !3223
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !3224
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !3149, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3165, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3164, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3163, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3162, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !3161, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3160, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !3159, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3158, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !3151, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !3156, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !3155, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !3152, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.label(metadata !3166), !dbg !3225
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3167, metadata !DIExpression()), !dbg !3218
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
  ], !dbg !3226

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3163, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i32 5, metadata !3152, metadata !DIExpression()), !dbg !3218
  br label %101, !dbg !3227

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3163, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i32 5, metadata !3152, metadata !DIExpression()), !dbg !3218
  br i1 %36, label %101, label %42, !dbg !3227

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !3228
  br i1 %43, label %101, label %44, !dbg !3232

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !3228, !tbaa !1177
  br label %101, !dbg !3228

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !864, metadata !DIExpression(), metadata !3212, metadata ptr %12, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.assign(metadata i1 undef, metadata !865, metadata !DIExpression(), metadata !3213, metadata ptr %13, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata ptr @.str.11.114, metadata !861, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata i32 %28, metadata !862, metadata !DIExpression()), !dbg !3233
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.115, ptr noundef nonnull @.str.11.114, i32 noundef 5) #38, !dbg !3237
  call void @llvm.dbg.value(metadata ptr %46, metadata !863, metadata !DIExpression()), !dbg !3233
  %47 = icmp eq ptr %46, @.str.11.114, !dbg !3238
  br i1 %47, label %48, label %57, !dbg !3240

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !3241
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !3242
  call void @llvm.dbg.value(metadata ptr %13, metadata !3243, metadata !DIExpression()), !dbg !3249
  call void @llvm.dbg.value(metadata ptr %13, metadata !3251, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i32 0, metadata !3254, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i64 8, metadata !3255, metadata !DIExpression()), !dbg !3256
  store i64 0, ptr %13, align 8, !dbg !3258
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !3259
  %50 = icmp eq i64 %49, 3, !dbg !3261
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !3262
  %54 = icmp eq i32 %28, 9, !dbg !3262
  %55 = select i1 %54, ptr @.str.10.116, ptr @.str.12.117, !dbg !3262
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !3262
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !3263
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !3263
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !3233
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !3155, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.assign(metadata i1 undef, metadata !864, metadata !DIExpression(), metadata !3210, metadata ptr %10, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.assign(metadata i1 undef, metadata !865, metadata !DIExpression(), metadata !3211, metadata ptr %11, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata ptr @.str.12.117, metadata !861, metadata !DIExpression()), !dbg !3264
  call void @llvm.dbg.value(metadata i32 %28, metadata !862, metadata !DIExpression()), !dbg !3264
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.115, ptr noundef nonnull @.str.12.117, i32 noundef 5) #38, !dbg !3266
  call void @llvm.dbg.value(metadata ptr %59, metadata !863, metadata !DIExpression()), !dbg !3264
  %60 = icmp eq ptr %59, @.str.12.117, !dbg !3267
  br i1 %60, label %61, label %70, !dbg !3268

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !3269
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !3270
  call void @llvm.dbg.value(metadata ptr %11, metadata !3243, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.value(metadata ptr %11, metadata !3251, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i32 0, metadata !3254, metadata !DIExpression()), !dbg !3273
  call void @llvm.dbg.value(metadata i64 8, metadata !3255, metadata !DIExpression()), !dbg !3273
  store i64 0, ptr %11, align 8, !dbg !3275
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !3276
  %63 = icmp eq i64 %62, 3, !dbg !3277
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !3278
  %67 = icmp eq i32 %28, 9, !dbg !3278
  %68 = select i1 %67, ptr @.str.10.116, ptr @.str.12.117, !dbg !3278
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !3278
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !3279
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !3279
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !3156, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !3155, metadata !DIExpression()), !dbg !3218
  br i1 %36, label %88, label %73, !dbg !3280

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !3168, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3158, metadata !DIExpression()), !dbg !3218
  %74 = load i8, ptr %71, align 1, !dbg !3282, !tbaa !1177
  %75 = icmp eq i8 %74, 0, !dbg !3284
  br i1 %75, label %88, label %.preheader11, !dbg !3284

.preheader11:                                     ; preds = %73
  br label %76, !dbg !3284

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !3168, metadata !DIExpression()), !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !3158, metadata !DIExpression()), !dbg !3218
  %80 = icmp ult i64 %79, %39, !dbg !3285
  br i1 %80, label %81, label %83, !dbg !3288

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !3285
  store i8 %77, ptr %82, align 1, !dbg !3285, !tbaa !1177
  br label %83, !dbg !3285

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !3288
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !3158, metadata !DIExpression()), !dbg !3218
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !3289
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !3168, metadata !DIExpression()), !dbg !3281
  %86 = load i8, ptr %85, align 1, !dbg !3282, !tbaa !1177
  %87 = icmp eq i8 %86, 0, !dbg !3284
  br i1 %87, label %.loopexit12, label %76, !dbg !3284, !llvm.loop !3290

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !3288
  br label %88, !dbg !3292

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !3293
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !3158, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3162, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !3160, metadata !DIExpression()), !dbg !3218
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #39, !dbg !3292
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !3161, metadata !DIExpression()), !dbg !3218
  br label %101, !dbg !3294

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3162, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3163, metadata !DIExpression()), !dbg !3218
  br label %101, !dbg !3295

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3163, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3162, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i32 2, metadata !3152, metadata !DIExpression()), !dbg !3218
  br label %101, !dbg !3296

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3163, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3162, metadata !DIExpression()), !dbg !3218
  br i1 %36, label %101, label %95, !dbg !3297

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3163, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3162, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i32 2, metadata !3152, metadata !DIExpression()), !dbg !3218
  br i1 %36, label %101, label %95, !dbg !3296

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !3298
  br i1 %97, label %101, label %98, !dbg !3302

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !3298, !tbaa !1177
  br label %101, !dbg !3298

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3163, metadata !DIExpression()), !dbg !3218
  br label %101, !dbg !3303

100:                                              ; preds = %27
  call void @abort() #40, !dbg !3304
  unreachable, !dbg !3304

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !3293
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.116, %42 ], [ @.str.10.116, %44 ], [ @.str.10.116, %41 ], [ %33, %27 ], [ @.str.12.117, %95 ], [ @.str.12.117, %98 ], [ @.str.12.117, %94 ], [ @.str.10.116, %40 ], [ @.str.12.117, %91 ], [ @.str.12.117, %92 ], [ @.str.12.117, %93 ], !dbg !3218
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !3218
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3163, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3162, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !3161, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !3160, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !3158, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !3156, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !3155, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !3152, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3173, metadata !DIExpression()), !dbg !3305
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
  br label %121, !dbg !3306

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !3293
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !3222
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !3307
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !3149, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !3173, metadata !DIExpression()), !dbg !3305
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3167, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3165, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3164, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !3159, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !3158, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !3151, metadata !DIExpression()), !dbg !3218
  %130 = icmp eq i64 %122, -1, !dbg !3308
  br i1 %130, label %131, label %135, !dbg !3309

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !3310
  %133 = load i8, ptr %132, align 1, !dbg !3310, !tbaa !1177
  %134 = icmp eq i8 %133, 0, !dbg !3311
  br i1 %134, label %573, label %137, !dbg !3312

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !3313
  br i1 %136, label %573, label %137, !dbg !3312

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3175, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3178, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3179, metadata !DIExpression()), !dbg !3314
  br i1 %113, label %138, label %151, !dbg !3315

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !3317
  %140 = select i1 %130, i1 %114, i1 false, !dbg !3318
  br i1 %140, label %141, label %143, !dbg !3318

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !3319
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !3151, metadata !DIExpression()), !dbg !3218
  br label %143, !dbg !3320

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !3320
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !3151, metadata !DIExpression()), !dbg !3218
  %145 = icmp ugt i64 %139, %144, !dbg !3321
  br i1 %145, label %151, label %146, !dbg !3322

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !3323
  call void @llvm.dbg.value(metadata ptr %147, metadata !3324, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata ptr %106, metadata !3327, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i64 %107, metadata !3328, metadata !DIExpression()), !dbg !3329
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !3331
  %149 = icmp eq i32 %148, 0, !dbg !3332
  %150 = and i1 %149, %109, !dbg !3333
  br i1 %150, label %.loopexit7, label %151, !dbg !3333

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3175, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !3151, metadata !DIExpression()), !dbg !3218
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !3334
  %155 = load i8, ptr %154, align 1, !dbg !3334, !tbaa !1177
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !3180, metadata !DIExpression()), !dbg !3314
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
  ], !dbg !3335

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !3336

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !3337

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3178, metadata !DIExpression()), !dbg !3314
  %159 = select i1 %110, i1 true, i1 %127, !dbg !3341
  br i1 %159, label %176, label %160, !dbg !3341

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !3343
  br i1 %161, label %162, label %164, !dbg !3347

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3343
  store i8 39, ptr %163, align 1, !dbg !3343, !tbaa !1177
  br label %164, !dbg !3343

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !3347
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !3158, metadata !DIExpression()), !dbg !3218
  %166 = icmp ult i64 %165, %129, !dbg !3348
  br i1 %166, label %167, label %169, !dbg !3351

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !3348
  store i8 36, ptr %168, align 1, !dbg !3348, !tbaa !1177
  br label %169, !dbg !3348

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !3351
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !3158, metadata !DIExpression()), !dbg !3218
  %171 = icmp ult i64 %170, %129, !dbg !3352
  br i1 %171, label %172, label %174, !dbg !3355

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !3352
  store i8 39, ptr %173, align 1, !dbg !3352, !tbaa !1177
  br label %174, !dbg !3352

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !3355
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !3158, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3167, metadata !DIExpression()), !dbg !3218
  br label %176, !dbg !3356

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !3218
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3167, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !3158, metadata !DIExpression()), !dbg !3218
  %179 = icmp ult i64 %177, %129, !dbg !3357
  br i1 %179, label %180, label %182, !dbg !3360

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !3357
  store i8 92, ptr %181, align 1, !dbg !3357, !tbaa !1177
  br label %182, !dbg !3357

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !3360
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !3158, metadata !DIExpression()), !dbg !3218
  br i1 %110, label %184, label %476, !dbg !3361

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !3363
  %186 = icmp ult i64 %185, %152, !dbg !3364
  br i1 %186, label %187, label %433, !dbg !3365

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !3366
  %189 = load i8, ptr %188, align 1, !dbg !3366, !tbaa !1177
  %190 = add i8 %189, -48, !dbg !3367
  %191 = icmp ult i8 %190, 10, !dbg !3367
  br i1 %191, label %192, label %433, !dbg !3367

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !3368
  br i1 %193, label %194, label %196, !dbg !3372

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !3368
  store i8 48, ptr %195, align 1, !dbg !3368, !tbaa !1177
  br label %196, !dbg !3368

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !3372
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !3158, metadata !DIExpression()), !dbg !3218
  %198 = icmp ult i64 %197, %129, !dbg !3373
  br i1 %198, label %199, label %201, !dbg !3376

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !3373
  store i8 48, ptr %200, align 1, !dbg !3373, !tbaa !1177
  br label %201, !dbg !3373

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !3376
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !3158, metadata !DIExpression()), !dbg !3218
  br label %433, !dbg !3377

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !3378

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !3379

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !3380

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !3382

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !3384
  %209 = icmp ult i64 %208, %152, !dbg !3385
  br i1 %209, label %210, label %433, !dbg !3386

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !3387
  %212 = load i8, ptr %211, align 1, !dbg !3387, !tbaa !1177
  %213 = icmp eq i8 %212, 63, !dbg !3388
  br i1 %213, label %214, label %433, !dbg !3389

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !3390
  %216 = load i8, ptr %215, align 1, !dbg !3390, !tbaa !1177
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
  ], !dbg !3391

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !3392

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !3180, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !3173, metadata !DIExpression()), !dbg !3305
  %219 = icmp ult i64 %123, %129, !dbg !3394
  br i1 %219, label %220, label %222, !dbg !3397

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3394
  store i8 63, ptr %221, align 1, !dbg !3394, !tbaa !1177
  br label %222, !dbg !3394

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !3397
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !3158, metadata !DIExpression()), !dbg !3218
  %224 = icmp ult i64 %223, %129, !dbg !3398
  br i1 %224, label %225, label %227, !dbg !3401

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !3398
  store i8 34, ptr %226, align 1, !dbg !3398, !tbaa !1177
  br label %227, !dbg !3398

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !3401
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !3158, metadata !DIExpression()), !dbg !3218
  %229 = icmp ult i64 %228, %129, !dbg !3402
  br i1 %229, label %230, label %232, !dbg !3405

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !3402
  store i8 34, ptr %231, align 1, !dbg !3402, !tbaa !1177
  br label %232, !dbg !3402

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !3405
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !3158, metadata !DIExpression()), !dbg !3218
  %234 = icmp ult i64 %233, %129, !dbg !3406
  br i1 %234, label %235, label %237, !dbg !3409

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !3406
  store i8 63, ptr %236, align 1, !dbg !3406, !tbaa !1177
  br label %237, !dbg !3406

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !3409
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !3158, metadata !DIExpression()), !dbg !3218
  br label %433, !dbg !3410

239:                                              ; preds = %151
  br label %249, !dbg !3411

240:                                              ; preds = %151
  br label %249, !dbg !3412

241:                                              ; preds = %151
  br label %247, !dbg !3413

242:                                              ; preds = %151
  br label %247, !dbg !3414

243:                                              ; preds = %151
  br label %249, !dbg !3415

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !3416

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !3417

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !3420

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !3422
  call void @llvm.dbg.label(metadata !3181), !dbg !3423
  br i1 %118, label %.loopexit8, label %249, !dbg !3424

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !3422
  call void @llvm.dbg.label(metadata !3184), !dbg !3426
  br i1 %108, label %487, label %444, !dbg !3427

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !3428

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !3429, !tbaa !1177
  %254 = icmp eq i8 %253, 0, !dbg !3431
  br i1 %254, label %255, label %433, !dbg !3432

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !3433
  br i1 %256, label %257, label %433, !dbg !3435

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3179, metadata !DIExpression()), !dbg !3314
  br label %258, !dbg !3436

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3179, metadata !DIExpression()), !dbg !3314
  br i1 %115, label %260, label %433, !dbg !3437

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !3439

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3164, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3179, metadata !DIExpression()), !dbg !3314
  br i1 %115, label %262, label %433, !dbg !3440

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !3441

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !3444
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !3446
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !3446
  %268 = select i1 %266, i64 %129, i64 0, !dbg !3446
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !3149, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !3159, metadata !DIExpression()), !dbg !3218
  %269 = icmp ult i64 %123, %268, !dbg !3447
  br i1 %269, label %270, label %272, !dbg !3450

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3447
  store i8 39, ptr %271, align 1, !dbg !3447, !tbaa !1177
  br label %272, !dbg !3447

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !3450
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !3158, metadata !DIExpression()), !dbg !3218
  %274 = icmp ult i64 %273, %268, !dbg !3451
  br i1 %274, label %275, label %277, !dbg !3454

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !3451
  store i8 92, ptr %276, align 1, !dbg !3451, !tbaa !1177
  br label %277, !dbg !3451

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !3454
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !3158, metadata !DIExpression()), !dbg !3218
  %279 = icmp ult i64 %278, %268, !dbg !3455
  br i1 %279, label %280, label %282, !dbg !3458

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !3455
  store i8 39, ptr %281, align 1, !dbg !3455, !tbaa !1177
  br label %282, !dbg !3455

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !3458
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !3158, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3167, metadata !DIExpression()), !dbg !3218
  br label %433, !dbg !3459

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !3460

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3185, metadata !DIExpression()), !dbg !3461
  %286 = tail call ptr @__ctype_b_loc() #41, !dbg !3462
  %287 = load ptr, ptr %286, align 8, !dbg !3462, !tbaa !1098
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !3462
  %290 = load i16, ptr %289, align 2, !dbg !3462, !tbaa !1209
  %291 = and i16 %290, 16384, !dbg !3462
  %292 = icmp ne i16 %291, 0, !dbg !3464
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !3187, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3461
  br label %334, !dbg !3465

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !3466
  call void @llvm.dbg.value(metadata ptr %14, metadata !3243, metadata !DIExpression()), !dbg !3467
  call void @llvm.dbg.value(metadata ptr %14, metadata !3251, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i32 0, metadata !3254, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.value(metadata i64 8, metadata !3255, metadata !DIExpression()), !dbg !3469
  store i64 0, ptr %14, align 8, !dbg !3471
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3185, metadata !DIExpression()), !dbg !3461
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3187, metadata !DIExpression()), !dbg !3461
  %294 = icmp eq i64 %152, -1, !dbg !3472
  br i1 %294, label %295, label %297, !dbg !3474

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !3475
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !3151, metadata !DIExpression()), !dbg !3218
  br label %297, !dbg !3476

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !3314
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !3151, metadata !DIExpression()), !dbg !3218
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !3477
  %299 = sub i64 %298, %128, !dbg !3478
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #38, !dbg !3479
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !3195, metadata !DIExpression()), !dbg !3217
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !3480

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3185, metadata !DIExpression()), !dbg !3461
  %302 = icmp ult i64 %128, %298, !dbg !3481
  br i1 %302, label %.preheader5, label %329, !dbg !3483

.preheader5:                                      ; preds = %301
  br label %304, !dbg !3484

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3187, metadata !DIExpression()), !dbg !3461
  br label %329, !dbg !3485

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !3185, metadata !DIExpression()), !dbg !3461
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !3487
  %308 = load i8, ptr %307, align 1, !dbg !3487, !tbaa !1177
  %309 = icmp eq i8 %308, 0, !dbg !3483
  br i1 %309, label %.loopexit6, label %310, !dbg !3484

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !3488
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !3185, metadata !DIExpression()), !dbg !3461
  %312 = add i64 %311, %128, !dbg !3489
  %313 = icmp eq i64 %311, %299, !dbg !3481
  br i1 %313, label %.loopexit6, label %304, !dbg !3483, !llvm.loop !3490

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3196, metadata !DIExpression()), !dbg !3491
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !3492
  %317 = and i1 %316, %109, !dbg !3492
  br i1 %317, label %.preheader3, label %325, !dbg !3492

.preheader3:                                      ; preds = %314
  br label %318, !dbg !3493

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !3196, metadata !DIExpression()), !dbg !3491
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !3494
  %321 = load i8, ptr %320, align 1, !dbg !3494, !tbaa !1177
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !3496

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !3497
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !3196, metadata !DIExpression()), !dbg !3491
  %324 = icmp eq i64 %323, %300, !dbg !3498
  br i1 %324, label %.loopexit4, label %318, !dbg !3493, !llvm.loop !3499

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !3501

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !3501, !tbaa !1168
  call void @llvm.dbg.value(metadata i32 %326, metadata !3503, metadata !DIExpression()), !dbg !3506
  %327 = call i32 @iswprint(i32 noundef %326) #38, !dbg !3508
  %328 = icmp ne i32 %327, 0, !dbg !3509
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3187, metadata !DIExpression()), !dbg !3461
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !3185, metadata !DIExpression()), !dbg !3461
  br label %329, !dbg !3510

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !3511

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3187, metadata !DIExpression()), !dbg !3461
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !3185, metadata !DIExpression()), !dbg !3461
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3511
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3512
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !3314
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3187, metadata !DIExpression()), !dbg !3461
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3185, metadata !DIExpression()), !dbg !3461
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3511
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3512
  call void @llvm.dbg.label(metadata !3209), !dbg !3513
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !3514
  br label %624, !dbg !3514

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !3314
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !3516
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3187, metadata !DIExpression()), !dbg !3461
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !3185, metadata !DIExpression()), !dbg !3461
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !3151, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !3179, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3314
  %338 = icmp ult i64 %336, 2, !dbg !3517
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !3518
  br i1 %340, label %433, label %341, !dbg !3518

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !3519
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !3204, metadata !DIExpression()), !dbg !3520
  br label %343, !dbg !3521

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !3218
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !3305
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !3314
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !3180, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3178, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3175, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !3173, metadata !DIExpression()), !dbg !3305
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3167, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !3158, metadata !DIExpression()), !dbg !3218
  br i1 %339, label %394, label %350, !dbg !3522

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !3527

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3178, metadata !DIExpression()), !dbg !3314
  %352 = select i1 %110, i1 true, i1 %345, !dbg !3530
  br i1 %352, label %369, label %353, !dbg !3530

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !3532
  br i1 %354, label %355, label %357, !dbg !3536

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3532
  store i8 39, ptr %356, align 1, !dbg !3532, !tbaa !1177
  br label %357, !dbg !3532

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !3536
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !3158, metadata !DIExpression()), !dbg !3218
  %359 = icmp ult i64 %358, %129, !dbg !3537
  br i1 %359, label %360, label %362, !dbg !3540

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !3537
  store i8 36, ptr %361, align 1, !dbg !3537, !tbaa !1177
  br label %362, !dbg !3537

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !3540
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !3158, metadata !DIExpression()), !dbg !3218
  %364 = icmp ult i64 %363, %129, !dbg !3541
  br i1 %364, label %365, label %367, !dbg !3544

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !3541
  store i8 39, ptr %366, align 1, !dbg !3541, !tbaa !1177
  br label %367, !dbg !3541

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !3544
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !3158, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3167, metadata !DIExpression()), !dbg !3218
  br label %369, !dbg !3545

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !3218
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3167, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !3158, metadata !DIExpression()), !dbg !3218
  %372 = icmp ult i64 %370, %129, !dbg !3546
  br i1 %372, label %373, label %375, !dbg !3549

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !3546
  store i8 92, ptr %374, align 1, !dbg !3546, !tbaa !1177
  br label %375, !dbg !3546

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !3549
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !3158, metadata !DIExpression()), !dbg !3218
  %377 = icmp ult i64 %376, %129, !dbg !3550
  br i1 %377, label %378, label %382, !dbg !3553

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !3550
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !3550
  store i8 %380, ptr %381, align 1, !dbg !3550, !tbaa !1177
  br label %382, !dbg !3550

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !3553
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !3158, metadata !DIExpression()), !dbg !3218
  %384 = icmp ult i64 %383, %129, !dbg !3554
  br i1 %384, label %385, label %390, !dbg !3557

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !3554
  %388 = or disjoint i8 %387, 48, !dbg !3554
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !3554
  store i8 %388, ptr %389, align 1, !dbg !3554, !tbaa !1177
  br label %390, !dbg !3554

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !3557
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !3158, metadata !DIExpression()), !dbg !3218
  %392 = and i8 %349, 7, !dbg !3558
  %393 = or disjoint i8 %392, 48, !dbg !3559
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !3180, metadata !DIExpression()), !dbg !3314
  br label %401, !dbg !3560

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !3561

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !3562
  br i1 %396, label %397, label %399, !dbg !3567

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3562
  store i8 92, ptr %398, align 1, !dbg !3562, !tbaa !1177
  br label %399, !dbg !3562

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !3567
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !3158, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3175, metadata !DIExpression()), !dbg !3314
  br label %401, !dbg !3568

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !3218
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !3314
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !3180, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3178, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3175, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3167, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !3158, metadata !DIExpression()), !dbg !3218
  %407 = add i64 %346, 1, !dbg !3569
  %408 = icmp ugt i64 %342, %407, !dbg !3571
  br i1 %408, label %409, label %.loopexit2, !dbg !3572

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !3573
  %411 = select i1 %410, i1 true, i1 %405, !dbg !3573
  br i1 %411, label %423, label %412, !dbg !3573

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !3576
  br i1 %413, label %414, label %416, !dbg !3580

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !3576
  store i8 39, ptr %415, align 1, !dbg !3576, !tbaa !1177
  br label %416, !dbg !3576

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !3580
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !3158, metadata !DIExpression()), !dbg !3218
  %418 = icmp ult i64 %417, %129, !dbg !3581
  br i1 %418, label %419, label %421, !dbg !3584

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !3581
  store i8 39, ptr %420, align 1, !dbg !3581, !tbaa !1177
  br label %421, !dbg !3581

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !3584
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !3158, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3167, metadata !DIExpression()), !dbg !3218
  br label %423, !dbg !3585

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !3586
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3167, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !3158, metadata !DIExpression()), !dbg !3218
  %426 = icmp ult i64 %424, %129, !dbg !3587
  br i1 %426, label %427, label %429, !dbg !3590

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !3587
  store i8 %406, ptr %428, align 1, !dbg !3587, !tbaa !1177
  br label %429, !dbg !3587

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !3158, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !3173, metadata !DIExpression()), !dbg !3305
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !3591
  %432 = load i8, ptr %431, align 1, !dbg !3591, !tbaa !1177
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !3180, metadata !DIExpression()), !dbg !3314
  br label %343, !dbg !3592, !llvm.loop !3593

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !3596
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !3218
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !3222
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !3305
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !3314
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !3149, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !3180, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3179, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3178, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3175, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !3173, metadata !DIExpression()), !dbg !3305
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3167, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3164, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !3159, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !3158, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !3151, metadata !DIExpression()), !dbg !3218
  br i1 %111, label %455, label %444, !dbg !3597

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
  br i1 %120, label %456, label %476, !dbg !3599

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !3600

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
  %467 = lshr i8 %458, 5, !dbg !3601
  %468 = zext nneg i8 %467 to i64, !dbg !3601
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !3602
  %470 = load i32, ptr %469, align 4, !dbg !3602, !tbaa !1168
  %471 = and i8 %458, 31, !dbg !3603
  %472 = zext nneg i8 %471 to i32, !dbg !3603
  %473 = shl nuw i32 1, %472, !dbg !3604
  %474 = and i32 %470, %473, !dbg !3604
  %475 = icmp eq i32 %474, 0, !dbg !3604
  br i1 %475, label %476, label %487, !dbg !3605

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
  br i1 %153, label %487, label %523, !dbg !3606

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !3596
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !3218
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !3222
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !3607
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !3314
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !3149, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !3180, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3179, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !3173, metadata !DIExpression()), !dbg !3305
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3167, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3164, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !3159, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !3158, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !3151, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.label(metadata !3207), !dbg !3608
  br i1 %109, label %.loopexit8, label %497, !dbg !3609

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3178, metadata !DIExpression()), !dbg !3314
  %498 = select i1 %110, i1 true, i1 %492, !dbg !3611
  br i1 %498, label %515, label %499, !dbg !3611

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !3613
  br i1 %500, label %501, label %503, !dbg !3617

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !3613
  store i8 39, ptr %502, align 1, !dbg !3613, !tbaa !1177
  br label %503, !dbg !3613

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !3617
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !3158, metadata !DIExpression()), !dbg !3218
  %505 = icmp ult i64 %504, %496, !dbg !3618
  br i1 %505, label %506, label %508, !dbg !3621

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !3618
  store i8 36, ptr %507, align 1, !dbg !3618, !tbaa !1177
  br label %508, !dbg !3618

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !3621
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !3158, metadata !DIExpression()), !dbg !3218
  %510 = icmp ult i64 %509, %496, !dbg !3622
  br i1 %510, label %511, label %513, !dbg !3625

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !3622
  store i8 39, ptr %512, align 1, !dbg !3622, !tbaa !1177
  br label %513, !dbg !3622

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !3625
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !3158, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3167, metadata !DIExpression()), !dbg !3218
  br label %515, !dbg !3626

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !3314
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3167, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !3158, metadata !DIExpression()), !dbg !3218
  %518 = icmp ult i64 %516, %496, !dbg !3627
  br i1 %518, label %519, label %521, !dbg !3630

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !3627
  store i8 92, ptr %520, align 1, !dbg !3627, !tbaa !1177
  br label %521, !dbg !3627

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !3630
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !3149, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !3180, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3179, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3178, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !3173, metadata !DIExpression()), !dbg !3305
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3167, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3164, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !3159, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !3158, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !3151, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.label(metadata !3208), !dbg !3631
  br label %547, !dbg !3632

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !3218
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !3314
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !3305
  br label %523, !dbg !3632

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !3596
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !3218
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !3222
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !3607
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !3635
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !3149, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !3180, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3179, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3178, metadata !DIExpression()), !dbg !3314
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !3173, metadata !DIExpression()), !dbg !3305
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3167, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3164, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !3159, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !3158, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !3151, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.label(metadata !3208), !dbg !3631
  %534 = xor i1 %528, true, !dbg !3632
  %535 = select i1 %534, i1 true, i1 %530, !dbg !3632
  br i1 %535, label %547, label %536, !dbg !3632

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !3636
  br i1 %537, label %538, label %540, !dbg !3640

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !3636
  store i8 39, ptr %539, align 1, !dbg !3636, !tbaa !1177
  br label %540, !dbg !3636

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !3640
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !3158, metadata !DIExpression()), !dbg !3218
  %542 = icmp ult i64 %541, %533, !dbg !3641
  br i1 %542, label %543, label %545, !dbg !3644

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !3641
  store i8 39, ptr %544, align 1, !dbg !3641, !tbaa !1177
  br label %545, !dbg !3641

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !3644
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !3158, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3167, metadata !DIExpression()), !dbg !3218
  br label %547, !dbg !3645

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !3314
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3167, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !3158, metadata !DIExpression()), !dbg !3218
  %557 = icmp ult i64 %555, %548, !dbg !3646
  br i1 %557, label %558, label %560, !dbg !3649

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !3646
  store i8 %549, ptr %559, align 1, !dbg !3646, !tbaa !1177
  br label %560, !dbg !3646

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !3649
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !3158, metadata !DIExpression()), !dbg !3218
  %562 = select i1 %550, i1 %126, i1 false, !dbg !3650
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3165, metadata !DIExpression()), !dbg !3218
  br label %563, !dbg !3651

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !3596
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !3218
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !3222
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !3607
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !3149, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !3173, metadata !DIExpression()), !dbg !3305
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3167, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3165, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3164, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !3159, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !3158, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !3151, metadata !DIExpression()), !dbg !3218
  %572 = add i64 %570, 1, !dbg !3652
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !3173, metadata !DIExpression()), !dbg !3305
  br label %121, !dbg !3653, !llvm.loop !3654

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !3293
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !3222
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !3149, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3165, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3164, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !3159, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !3158, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !3151, metadata !DIExpression()), !dbg !3218
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !3656
  %575 = xor i1 %109, true, !dbg !3658
  %576 = or i1 %574, %575, !dbg !3658
  %577 = or i1 %576, %110, !dbg !3658
  br i1 %577, label %578, label %.loopexit13, !dbg !3658

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !3659
  %580 = xor i1 %.lcssa38, true, !dbg !3659
  %581 = select i1 %579, i1 true, i1 %580, !dbg !3659
  br i1 %581, label %589, label %582, !dbg !3659

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !3661

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !3222
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !3663
  br label %638, !dbg !3665

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !3666
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !3668
  br i1 %588, label %27, label %589, !dbg !3668

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !3218
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !3293
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !3669
  %592 = or i1 %591, %590, !dbg !3671
  br i1 %592, label %608, label %593, !dbg !3671

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !3160, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !3158, metadata !DIExpression()), !dbg !3218
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !3672, !tbaa !1177
  %595 = icmp eq i8 %594, 0, !dbg !3675
  br i1 %595, label %608, label %.preheader, !dbg !3675

.preheader:                                       ; preds = %593
  br label %596, !dbg !3675

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !3160, metadata !DIExpression()), !dbg !3218
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !3158, metadata !DIExpression()), !dbg !3218
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !3676
  br i1 %600, label %601, label %603, !dbg !3679

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !3676
  store i8 %597, ptr %602, align 1, !dbg !3676, !tbaa !1177
  br label %603, !dbg !3676

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !3679
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !3158, metadata !DIExpression()), !dbg !3218
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !3680
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !3160, metadata !DIExpression()), !dbg !3218
  %606 = load i8, ptr %605, align 1, !dbg !3672, !tbaa !1177
  %607 = icmp eq i8 %606, 0, !dbg !3675
  br i1 %607, label %.loopexit, label %596, !dbg !3675, !llvm.loop !3681

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !3679
  br label %608, !dbg !3683

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !3293
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !3158, metadata !DIExpression()), !dbg !3218
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !3683
  br i1 %610, label %611, label %638, !dbg !3685

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !3686
  store i8 0, ptr %612, align 1, !dbg !3687, !tbaa !1177
  br label %638, !dbg !3686

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !3209), !dbg !3513
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !3688
  br i1 %614, label %624, label %630, !dbg !3514

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !3314
  br label %615, !dbg !3688

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !3688

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !3688

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !3209), !dbg !3513
  %622 = icmp eq i32 %616, 2, !dbg !3688
  %623 = select i1 %619, i32 4, i32 2, !dbg !3514
  br i1 %622, label %624, label %630, !dbg !3514

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !3514

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !3320
  br label %630, !dbg !3689

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !3152, metadata !DIExpression()), !dbg !3218
  %636 = and i32 %5, -3, !dbg !3689
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !3690
  br label %638, !dbg !3691

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !3692
}

; Function Attrs: nounwind
declare !dbg !3693 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3696 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3699 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3700 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3704, metadata !DIExpression()), !dbg !3707
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3705, metadata !DIExpression()), !dbg !3707
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3706, metadata !DIExpression()), !dbg !3707
  call void @llvm.dbg.value(metadata ptr %0, metadata !3708, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata i64 %1, metadata !3713, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata ptr null, metadata !3714, metadata !DIExpression()), !dbg !3721
  call void @llvm.dbg.value(metadata ptr %2, metadata !3715, metadata !DIExpression()), !dbg !3721
  %4 = icmp eq ptr %2, null, !dbg !3723
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3723
  call void @llvm.dbg.value(metadata ptr %5, metadata !3716, metadata !DIExpression()), !dbg !3721
  %6 = tail call ptr @__errno_location() #41, !dbg !3724
  %7 = load i32, ptr %6, align 4, !dbg !3724, !tbaa !1168
  call void @llvm.dbg.value(metadata i32 %7, metadata !3717, metadata !DIExpression()), !dbg !3721
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3725
  %9 = load i32, ptr %8, align 4, !dbg !3725, !tbaa !3092
  %10 = or i32 %9, 1, !dbg !3726
  call void @llvm.dbg.value(metadata i32 %10, metadata !3718, metadata !DIExpression()), !dbg !3721
  %11 = load i32, ptr %5, align 8, !dbg !3727, !tbaa !3042
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3728
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3729
  %14 = load ptr, ptr %13, align 8, !dbg !3729, !tbaa !3113
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3730
  %16 = load ptr, ptr %15, align 8, !dbg !3730, !tbaa !3116
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3731
  %18 = add i64 %17, 1, !dbg !3732
  call void @llvm.dbg.value(metadata i64 %18, metadata !3719, metadata !DIExpression()), !dbg !3721
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !3733
  call void @llvm.dbg.value(metadata ptr %19, metadata !3720, metadata !DIExpression()), !dbg !3721
  %20 = load i32, ptr %5, align 8, !dbg !3734, !tbaa !3042
  %21 = load ptr, ptr %13, align 8, !dbg !3735, !tbaa !3113
  %22 = load ptr, ptr %15, align 8, !dbg !3736, !tbaa !3116
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3737
  store i32 %7, ptr %6, align 4, !dbg !3738, !tbaa !1168
  ret ptr %19, !dbg !3739
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3709 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3708, metadata !DIExpression()), !dbg !3740
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3713, metadata !DIExpression()), !dbg !3740
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3714, metadata !DIExpression()), !dbg !3740
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3715, metadata !DIExpression()), !dbg !3740
  %5 = icmp eq ptr %3, null, !dbg !3741
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3741
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3716, metadata !DIExpression()), !dbg !3740
  %7 = tail call ptr @__errno_location() #41, !dbg !3742
  %8 = load i32, ptr %7, align 4, !dbg !3742, !tbaa !1168
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3717, metadata !DIExpression()), !dbg !3740
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3743
  %10 = load i32, ptr %9, align 4, !dbg !3743, !tbaa !3092
  %11 = icmp eq ptr %2, null, !dbg !3744
  %12 = zext i1 %11 to i32, !dbg !3744
  %13 = or i32 %10, %12, !dbg !3745
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3718, metadata !DIExpression()), !dbg !3740
  %14 = load i32, ptr %6, align 8, !dbg !3746, !tbaa !3042
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3747
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3748
  %17 = load ptr, ptr %16, align 8, !dbg !3748, !tbaa !3113
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3749
  %19 = load ptr, ptr %18, align 8, !dbg !3749, !tbaa !3116
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3750
  %21 = add i64 %20, 1, !dbg !3751
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3719, metadata !DIExpression()), !dbg !3740
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !3752
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3720, metadata !DIExpression()), !dbg !3740
  %23 = load i32, ptr %6, align 8, !dbg !3753, !tbaa !3042
  %24 = load ptr, ptr %16, align 8, !dbg !3754, !tbaa !3113
  %25 = load ptr, ptr %18, align 8, !dbg !3755, !tbaa !3116
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3756
  store i32 %8, ptr %7, align 4, !dbg !3757, !tbaa !1168
  br i1 %11, label %28, label %27, !dbg !3758

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3759, !tbaa !1393
  br label %28, !dbg !3761

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3762
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3763 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3768, !tbaa !1098
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3765, metadata !DIExpression()), !dbg !3769
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3766, metadata !DIExpression()), !dbg !3770
  %2 = load i32, ptr @nslots, align 4, !tbaa !1168
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3766, metadata !DIExpression()), !dbg !3770
  %3 = icmp sgt i32 %2, 1, !dbg !3771
  br i1 %3, label %4, label %6, !dbg !3773

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3771
  br label %10, !dbg !3773

.loopexit:                                        ; preds = %10
  br label %6, !dbg !3774

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3774
  %8 = load ptr, ptr %7, align 8, !dbg !3774, !tbaa !3776
  %9 = icmp eq ptr %8, @slot0, !dbg !3778
  br i1 %9, label %17, label %16, !dbg !3779

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3766, metadata !DIExpression()), !dbg !3770
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3780
  %13 = load ptr, ptr %12, align 8, !dbg !3780, !tbaa !3776
  tail call void @free(ptr noundef %13) #38, !dbg !3781
  %14 = add nuw nsw i64 %11, 1, !dbg !3782
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3766, metadata !DIExpression()), !dbg !3770
  %15 = icmp eq i64 %14, %5, !dbg !3771
  br i1 %15, label %.loopexit, label %10, !dbg !3773, !llvm.loop !3783

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !3785
  store i64 256, ptr @slotvec0, align 8, !dbg !3787, !tbaa !3788
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3789, !tbaa !3776
  br label %17, !dbg !3790

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3791
  br i1 %18, label %20, label %19, !dbg !3793

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !3794
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3796, !tbaa !1098
  br label %20, !dbg !3797

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3798, !tbaa !1168
  ret void, !dbg !3799
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3800 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3802, metadata !DIExpression()), !dbg !3804
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3803, metadata !DIExpression()), !dbg !3804
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3805
  ret ptr %3, !dbg !3806
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3807 {
  %5 = alloca i64, align 8, !DIAssignID !3827
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3821, metadata !DIExpression(), metadata !3827, metadata ptr %5, metadata !DIExpression()), !dbg !3828
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3811, metadata !DIExpression()), !dbg !3829
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3812, metadata !DIExpression()), !dbg !3829
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3813, metadata !DIExpression()), !dbg !3829
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3814, metadata !DIExpression()), !dbg !3829
  %6 = tail call ptr @__errno_location() #41, !dbg !3830
  %7 = load i32, ptr %6, align 4, !dbg !3830, !tbaa !1168
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3815, metadata !DIExpression()), !dbg !3829
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3831, !tbaa !1098
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3816, metadata !DIExpression()), !dbg !3829
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3817, metadata !DIExpression()), !dbg !3829
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3832
  br i1 %9, label %10, label %11, !dbg !3832

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !3834
  unreachable, !dbg !3834

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3835, !tbaa !1168
  %13 = icmp sgt i32 %12, %0, !dbg !3836
  br i1 %13, label %32, label %14, !dbg !3837

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3838
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3818, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3828
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !3839
  %16 = sext i32 %12 to i64, !dbg !3840
  store i64 %16, ptr %5, align 8, !dbg !3841, !tbaa !1393, !DIAssignID !3842
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3821, metadata !DIExpression(), metadata !3842, metadata ptr %5, metadata !DIExpression()), !dbg !3828
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3843
  %18 = add nuw nsw i32 %0, 1, !dbg !3844
  %19 = sub i32 %18, %12, !dbg !3845
  %20 = sext i32 %19 to i64, !dbg !3846
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !3847
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3816, metadata !DIExpression()), !dbg !3829
  store ptr %21, ptr @slotvec, align 8, !dbg !3848, !tbaa !1098
  br i1 %15, label %22, label %23, !dbg !3849

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3850, !tbaa.struct !3852
  br label %23, !dbg !3853

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3854, !tbaa !1168
  %25 = sext i32 %24 to i64, !dbg !3855
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3855
  %27 = load i64, ptr %5, align 8, !dbg !3856, !tbaa !1393
  %28 = sub nsw i64 %27, %25, !dbg !3857
  %29 = shl i64 %28, 4, !dbg !3858
  call void @llvm.dbg.value(metadata ptr %26, metadata !3251, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i32 0, metadata !3254, metadata !DIExpression()), !dbg !3859
  call void @llvm.dbg.value(metadata i64 %29, metadata !3255, metadata !DIExpression()), !dbg !3859
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !3861
  %30 = load i64, ptr %5, align 8, !dbg !3862, !tbaa !1393
  %31 = trunc i64 %30 to i32, !dbg !3862
  store i32 %31, ptr @nslots, align 4, !dbg !3863, !tbaa !1168
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !3864
  br label %32, !dbg !3865

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3829
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3816, metadata !DIExpression()), !dbg !3829
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3866
  %36 = load i64, ptr %35, align 8, !dbg !3867, !tbaa !3788
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3822, metadata !DIExpression()), !dbg !3868
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3869
  %38 = load ptr, ptr %37, align 8, !dbg !3869, !tbaa !3776
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3824, metadata !DIExpression()), !dbg !3868
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3870
  %40 = load i32, ptr %39, align 4, !dbg !3870, !tbaa !3092
  %41 = or i32 %40, 1, !dbg !3871
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3825, metadata !DIExpression()), !dbg !3868
  %42 = load i32, ptr %3, align 8, !dbg !3872, !tbaa !3042
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3873
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3874
  %45 = load ptr, ptr %44, align 8, !dbg !3874, !tbaa !3113
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3875
  %47 = load ptr, ptr %46, align 8, !dbg !3875, !tbaa !3116
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3876
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3826, metadata !DIExpression()), !dbg !3868
  %49 = icmp ugt i64 %36, %48, !dbg !3877
  br i1 %49, label %60, label %50, !dbg !3879

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3880
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3822, metadata !DIExpression()), !dbg !3868
  store i64 %51, ptr %35, align 8, !dbg !3882, !tbaa !3788
  %52 = icmp eq ptr %38, @slot0, !dbg !3883
  br i1 %52, label %54, label %53, !dbg !3885

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !3886
  br label %54, !dbg !3886

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !3887
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3824, metadata !DIExpression()), !dbg !3868
  store ptr %55, ptr %37, align 8, !dbg !3888, !tbaa !3776
  %56 = load i32, ptr %3, align 8, !dbg !3889, !tbaa !3042
  %57 = load ptr, ptr %44, align 8, !dbg !3890, !tbaa !3113
  %58 = load ptr, ptr %46, align 8, !dbg !3891, !tbaa !3116
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3892
  br label %60, !dbg !3893

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3868
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3824, metadata !DIExpression()), !dbg !3868
  store i32 %7, ptr %6, align 4, !dbg !3894, !tbaa !1168
  ret ptr %61, !dbg !3895
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3896 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3900, metadata !DIExpression()), !dbg !3903
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3901, metadata !DIExpression()), !dbg !3903
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3902, metadata !DIExpression()), !dbg !3903
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3904
  ret ptr %4, !dbg !3905
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3906 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3908, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i32 0, metadata !3802, metadata !DIExpression()), !dbg !3910
  call void @llvm.dbg.value(metadata ptr %0, metadata !3803, metadata !DIExpression()), !dbg !3910
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3912
  ret ptr %2, !dbg !3913
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3914 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3918, metadata !DIExpression()), !dbg !3920
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3919, metadata !DIExpression()), !dbg !3920
  call void @llvm.dbg.value(metadata i32 0, metadata !3900, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata ptr %0, metadata !3901, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata i64 %1, metadata !3902, metadata !DIExpression()), !dbg !3921
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3923
  ret ptr %3, !dbg !3924
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3925 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3933
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3932, metadata !DIExpression(), metadata !3933, metadata ptr %4, metadata !DIExpression()), !dbg !3934
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3929, metadata !DIExpression()), !dbg !3934
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3930, metadata !DIExpression()), !dbg !3934
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3931, metadata !DIExpression()), !dbg !3934
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3935
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3936), !dbg !3939
  call void @llvm.dbg.value(metadata i32 %1, metadata !3940, metadata !DIExpression()), !dbg !3946
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3945, metadata !DIExpression()), !dbg !3948
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3948, !alias.scope !3936, !DIAssignID !3949
  call void @llvm.dbg.assign(metadata i8 0, metadata !3932, metadata !DIExpression(), metadata !3949, metadata ptr %4, metadata !DIExpression()), !dbg !3934
  %5 = icmp eq i32 %1, 10, !dbg !3950
  br i1 %5, label %6, label %7, !dbg !3952

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3953, !noalias !3936
  unreachable, !dbg !3953

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3954, !tbaa !3042, !alias.scope !3936, !DIAssignID !3955
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3932, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3955, metadata ptr %4, metadata !DIExpression()), !dbg !3934
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3956
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3957
  ret ptr %8, !dbg !3958
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3959 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3968
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3967, metadata !DIExpression(), metadata !3968, metadata ptr %5, metadata !DIExpression()), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3963, metadata !DIExpression()), !dbg !3969
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3964, metadata !DIExpression()), !dbg !3969
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3965, metadata !DIExpression()), !dbg !3969
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3966, metadata !DIExpression()), !dbg !3969
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3970
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3971), !dbg !3974
  call void @llvm.dbg.value(metadata i32 %1, metadata !3940, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3945, metadata !DIExpression()), !dbg !3977
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3977, !alias.scope !3971, !DIAssignID !3978
  call void @llvm.dbg.assign(metadata i8 0, metadata !3967, metadata !DIExpression(), metadata !3978, metadata ptr %5, metadata !DIExpression()), !dbg !3969
  %6 = icmp eq i32 %1, 10, !dbg !3979
  br i1 %6, label %7, label %8, !dbg !3980

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3981, !noalias !3971
  unreachable, !dbg !3981

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3982, !tbaa !3042, !alias.scope !3971, !DIAssignID !3983
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3967, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3983, metadata ptr %5, metadata !DIExpression()), !dbg !3969
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3984
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3985
  ret ptr %9, !dbg !3986
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3987 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3993
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3991, metadata !DIExpression()), !dbg !3994
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3992, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3932, metadata !DIExpression(), metadata !3993, metadata ptr %3, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i32 0, metadata !3929, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata i32 %0, metadata !3930, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.value(metadata ptr %1, metadata !3931, metadata !DIExpression()), !dbg !3995
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3997
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3998), !dbg !4001
  call void @llvm.dbg.value(metadata i32 %0, metadata !3940, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3945, metadata !DIExpression()), !dbg !4004
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !4004, !alias.scope !3998, !DIAssignID !4005
  call void @llvm.dbg.assign(metadata i8 0, metadata !3932, metadata !DIExpression(), metadata !4005, metadata ptr %3, metadata !DIExpression()), !dbg !3995
  %4 = icmp eq i32 %0, 10, !dbg !4006
  br i1 %4, label %5, label %6, !dbg !4007

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !4008, !noalias !3998
  unreachable, !dbg !4008

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !4009, !tbaa !3042, !alias.scope !3998, !DIAssignID !4010
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3932, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4010, metadata ptr %3, metadata !DIExpression()), !dbg !3995
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !4011
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !4012
  ret ptr %7, !dbg !4013
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4014 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4021
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4018, metadata !DIExpression()), !dbg !4022
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4019, metadata !DIExpression()), !dbg !4022
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4020, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3967, metadata !DIExpression(), metadata !4021, metadata ptr %4, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i32 0, metadata !3963, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i32 %0, metadata !3964, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata ptr %1, metadata !3965, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i64 %2, metadata !3966, metadata !DIExpression()), !dbg !4023
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4025
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4026), !dbg !4029
  call void @llvm.dbg.value(metadata i32 %0, metadata !3940, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3945, metadata !DIExpression()), !dbg !4032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !4032, !alias.scope !4026, !DIAssignID !4033
  call void @llvm.dbg.assign(metadata i8 0, metadata !3967, metadata !DIExpression(), metadata !4033, metadata ptr %4, metadata !DIExpression()), !dbg !4023
  %5 = icmp eq i32 %0, 10, !dbg !4034
  br i1 %5, label %6, label %7, !dbg !4035

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !4036, !noalias !4026
  unreachable, !dbg !4036

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !4037, !tbaa !3042, !alias.scope !4026, !DIAssignID !4038
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3967, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4038, metadata ptr %4, metadata !DIExpression()), !dbg !4023
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !4039
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4040
  ret ptr %8, !dbg !4041
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !4042 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4050
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4049, metadata !DIExpression(), metadata !4050, metadata ptr %4, metadata !DIExpression()), !dbg !4051
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4046, metadata !DIExpression()), !dbg !4051
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4047, metadata !DIExpression()), !dbg !4051
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !4048, metadata !DIExpression()), !dbg !4051
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4052
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4053, !tbaa.struct !4054, !DIAssignID !4055
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4049, metadata !DIExpression(), metadata !4055, metadata ptr %4, metadata !DIExpression()), !dbg !4051
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3059, metadata !DIExpression()), !dbg !4056
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3060, metadata !DIExpression()), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3061, metadata !DIExpression()), !dbg !4056
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3062, metadata !DIExpression()), !dbg !4056
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !4058
  %6 = lshr i8 %2, 5, !dbg !4059
  %7 = zext nneg i8 %6 to i64, !dbg !4059
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !4060
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3063, metadata !DIExpression()), !dbg !4056
  %9 = and i8 %2, 31, !dbg !4061
  %10 = zext nneg i8 %9 to i32, !dbg !4061
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !3065, metadata !DIExpression()), !dbg !4056
  %11 = load i32, ptr %8, align 4, !dbg !4062, !tbaa !1168
  %12 = lshr i32 %11, %10, !dbg !4063
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !3066, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4056
  %13 = and i32 %12, 1, !dbg !4064
  %14 = xor i32 %13, 1, !dbg !4064
  %15 = shl nuw i32 %14, %10, !dbg !4065
  %16 = xor i32 %15, %11, !dbg !4066
  store i32 %16, ptr %8, align 4, !dbg !4066, !tbaa !1168
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !4067
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4068
  ret ptr %17, !dbg !4069
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !4070 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !4076
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4074, metadata !DIExpression()), !dbg !4077
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !4075, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4049, metadata !DIExpression(), metadata !4076, metadata ptr %3, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata ptr %0, metadata !4046, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata i64 -1, metadata !4047, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata i8 %1, metadata !4048, metadata !DIExpression()), !dbg !4078
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !4080
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4081, !tbaa.struct !4054, !DIAssignID !4082
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4049, metadata !DIExpression(), metadata !4082, metadata ptr %3, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata ptr %3, metadata !3059, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i8 %1, metadata !3060, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i32 1, metadata !3061, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.value(metadata i8 %1, metadata !3062, metadata !DIExpression()), !dbg !4083
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4085
  %5 = lshr i8 %1, 5, !dbg !4086
  %6 = zext nneg i8 %5 to i64, !dbg !4086
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !4087
  call void @llvm.dbg.value(metadata ptr %7, metadata !3063, metadata !DIExpression()), !dbg !4083
  %8 = and i8 %1, 31, !dbg !4088
  %9 = zext nneg i8 %8 to i32, !dbg !4088
  call void @llvm.dbg.value(metadata i32 %9, metadata !3065, metadata !DIExpression()), !dbg !4083
  %10 = load i32, ptr %7, align 4, !dbg !4089, !tbaa !1168
  %11 = lshr i32 %10, %9, !dbg !4090
  call void @llvm.dbg.value(metadata i32 %11, metadata !3066, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4083
  %12 = and i32 %11, 1, !dbg !4091
  %13 = xor i32 %12, 1, !dbg !4091
  %14 = shl nuw i32 %13, %9, !dbg !4092
  %15 = xor i32 %14, %10, !dbg !4093
  store i32 %15, ptr %7, align 4, !dbg !4093, !tbaa !1168
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !4094
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !4095
  ret ptr %16, !dbg !4096
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !4097 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !4100
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4099, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr %0, metadata !4074, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.value(metadata i8 58, metadata !4075, metadata !DIExpression()), !dbg !4102
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4049, metadata !DIExpression(), metadata !4100, metadata ptr %2, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata ptr %0, metadata !4046, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i64 -1, metadata !4047, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i8 58, metadata !4048, metadata !DIExpression()), !dbg !4104
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !4106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4107, !tbaa.struct !4054, !DIAssignID !4108
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4049, metadata !DIExpression(), metadata !4108, metadata ptr %2, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata ptr %2, metadata !3059, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i8 58, metadata !3060, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i32 1, metadata !3061, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i8 58, metadata !3062, metadata !DIExpression()), !dbg !4109
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !4111
  call void @llvm.dbg.value(metadata ptr %3, metadata !3063, metadata !DIExpression()), !dbg !4109
  call void @llvm.dbg.value(metadata i32 26, metadata !3065, metadata !DIExpression()), !dbg !4109
  %4 = load i32, ptr %3, align 4, !dbg !4112, !tbaa !1168
  call void @llvm.dbg.value(metadata i32 %4, metadata !3066, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4109
  %5 = or i32 %4, 67108864, !dbg !4113
  store i32 %5, ptr %3, align 4, !dbg !4113, !tbaa !1168
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !4114
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !4115
  ret ptr %6, !dbg !4116
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4117 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !4121
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4119, metadata !DIExpression()), !dbg !4122
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4120, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4049, metadata !DIExpression(), metadata !4121, metadata ptr %3, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata ptr %0, metadata !4046, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata i64 %1, metadata !4047, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata i8 58, metadata !4048, metadata !DIExpression()), !dbg !4123
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !4125
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4126, !tbaa.struct !4054, !DIAssignID !4127
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4049, metadata !DIExpression(), metadata !4127, metadata ptr %3, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata ptr %3, metadata !3059, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i8 58, metadata !3060, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i32 1, metadata !3061, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i8 58, metadata !3062, metadata !DIExpression()), !dbg !4128
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !4130
  call void @llvm.dbg.value(metadata ptr %4, metadata !3063, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.value(metadata i32 26, metadata !3065, metadata !DIExpression()), !dbg !4128
  %5 = load i32, ptr %4, align 4, !dbg !4131, !tbaa !1168
  call void @llvm.dbg.value(metadata i32 %5, metadata !3066, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4128
  %6 = or i32 %5, 67108864, !dbg !4132
  store i32 %6, ptr %4, align 4, !dbg !4132, !tbaa !1168
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !4133
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !4134
  ret ptr %7, !dbg !4135
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4136 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4142
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4141, metadata !DIExpression(), metadata !4142, metadata ptr %4, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3945, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4144
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4138, metadata !DIExpression()), !dbg !4143
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4139, metadata !DIExpression()), !dbg !4143
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4140, metadata !DIExpression()), !dbg !4143
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4146
  call void @llvm.dbg.value(metadata i32 %1, metadata !3940, metadata !DIExpression()), !dbg !4147
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3945, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4147
  %5 = icmp eq i32 %1, 10, !dbg !4148
  br i1 %5, label %6, label %7, !dbg !4149

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !4150, !noalias !4151
  unreachable, !dbg !4150

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3945, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4147
  store i32 %1, ptr %4, align 8, !dbg !4154, !tbaa.struct !4054, !DIAssignID !4155
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4154
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4154
  call void @llvm.dbg.assign(metadata i32 %1, metadata !4141, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4155, metadata ptr %4, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4141, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !4156, metadata ptr %8, metadata !DIExpression()), !dbg !4143
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3059, metadata !DIExpression()), !dbg !4157
  tail call void @llvm.dbg.value(metadata i8 58, metadata !3060, metadata !DIExpression()), !dbg !4157
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3061, metadata !DIExpression()), !dbg !4157
  tail call void @llvm.dbg.value(metadata i8 58, metadata !3062, metadata !DIExpression()), !dbg !4157
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4159
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3063, metadata !DIExpression()), !dbg !4157
  tail call void @llvm.dbg.value(metadata i32 26, metadata !3065, metadata !DIExpression()), !dbg !4157
  %10 = load i32, ptr %9, align 4, !dbg !4160, !tbaa !1168
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !3066, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4157
  %11 = or i32 %10, 67108864, !dbg !4161
  store i32 %11, ptr %9, align 4, !dbg !4161, !tbaa !1168, !DIAssignID !4162
  call void @llvm.dbg.assign(metadata i32 %11, metadata !4141, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !4162, metadata ptr %9, metadata !DIExpression()), !dbg !4143
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4163
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4164
  ret ptr %12, !dbg !4165
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4166 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4174
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4170, metadata !DIExpression()), !dbg !4175
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4171, metadata !DIExpression()), !dbg !4175
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4172, metadata !DIExpression()), !dbg !4175
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4173, metadata !DIExpression()), !dbg !4175
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4176, metadata !DIExpression(), metadata !4174, metadata ptr %5, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i32 %0, metadata !4181, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata ptr %1, metadata !4182, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata ptr %2, metadata !4183, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata ptr %3, metadata !4184, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata i64 -1, metadata !4185, metadata !DIExpression()), !dbg !4186
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !4188
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4189, !tbaa.struct !4054, !DIAssignID !4190
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4176, metadata !DIExpression(), metadata !4190, metadata ptr %5, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4176, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4191, metadata ptr undef, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.value(metadata ptr %5, metadata !3099, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata ptr %1, metadata !3100, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata ptr %2, metadata !3101, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata ptr %5, metadata !3099, metadata !DIExpression()), !dbg !4192
  store i32 10, ptr %5, align 8, !dbg !4194, !tbaa !3042, !DIAssignID !4195
  call void @llvm.dbg.assign(metadata i32 10, metadata !4176, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4195, metadata ptr %5, metadata !DIExpression()), !dbg !4186
  %6 = icmp ne ptr %1, null, !dbg !4196
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4197
  br i1 %8, label %10, label %9, !dbg !4197

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !4198
  unreachable, !dbg !4198

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4199
  store ptr %1, ptr %11, align 8, !dbg !4200, !tbaa !3113, !DIAssignID !4201
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4176, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4201, metadata ptr %11, metadata !DIExpression()), !dbg !4186
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4202
  store ptr %2, ptr %12, align 8, !dbg !4203, !tbaa !3116, !DIAssignID !4204
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4176, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4204, metadata ptr %12, metadata !DIExpression()), !dbg !4186
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4205
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !4206
  ret ptr %13, !dbg !4207
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4177 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !4208
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4176, metadata !DIExpression(), metadata !4208, metadata ptr %6, metadata !DIExpression()), !dbg !4209
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4181, metadata !DIExpression()), !dbg !4209
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4182, metadata !DIExpression()), !dbg !4209
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4183, metadata !DIExpression()), !dbg !4209
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4184, metadata !DIExpression()), !dbg !4209
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !4185, metadata !DIExpression()), !dbg !4209
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !4210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4211, !tbaa.struct !4054, !DIAssignID !4212
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4176, metadata !DIExpression(), metadata !4212, metadata ptr %6, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4176, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4213, metadata ptr undef, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.value(metadata ptr %6, metadata !3099, metadata !DIExpression()), !dbg !4214
  call void @llvm.dbg.value(metadata ptr %1, metadata !3100, metadata !DIExpression()), !dbg !4214
  call void @llvm.dbg.value(metadata ptr %2, metadata !3101, metadata !DIExpression()), !dbg !4214
  call void @llvm.dbg.value(metadata ptr %6, metadata !3099, metadata !DIExpression()), !dbg !4214
  store i32 10, ptr %6, align 8, !dbg !4216, !tbaa !3042, !DIAssignID !4217
  call void @llvm.dbg.assign(metadata i32 10, metadata !4176, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4217, metadata ptr %6, metadata !DIExpression()), !dbg !4209
  %7 = icmp ne ptr %1, null, !dbg !4218
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4219
  br i1 %9, label %11, label %10, !dbg !4219

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !4220
  unreachable, !dbg !4220

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4221
  store ptr %1, ptr %12, align 8, !dbg !4222, !tbaa !3113, !DIAssignID !4223
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4176, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4223, metadata ptr %12, metadata !DIExpression()), !dbg !4209
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4224
  store ptr %2, ptr %13, align 8, !dbg !4225, !tbaa !3116, !DIAssignID !4226
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4176, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4226, metadata ptr %13, metadata !DIExpression()), !dbg !4209
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4227
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !4228
  ret ptr %14, !dbg !4229
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4230 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4237
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4234, metadata !DIExpression()), !dbg !4238
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4235, metadata !DIExpression()), !dbg !4238
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4236, metadata !DIExpression()), !dbg !4238
  call void @llvm.dbg.value(metadata i32 0, metadata !4170, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata ptr %0, metadata !4171, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata ptr %1, metadata !4172, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.value(metadata ptr %2, metadata !4173, metadata !DIExpression()), !dbg !4239
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4176, metadata !DIExpression(), metadata !4237, metadata ptr %4, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata i32 0, metadata !4181, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata ptr %0, metadata !4182, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata ptr %1, metadata !4183, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata ptr %2, metadata !4184, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata i64 -1, metadata !4185, metadata !DIExpression()), !dbg !4241
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4243
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4244, !tbaa.struct !4054, !DIAssignID !4245
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4176, metadata !DIExpression(), metadata !4245, metadata ptr %4, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4176, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4246, metadata ptr undef, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata ptr %4, metadata !3099, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata ptr %0, metadata !3100, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata ptr %1, metadata !3101, metadata !DIExpression()), !dbg !4247
  call void @llvm.dbg.value(metadata ptr %4, metadata !3099, metadata !DIExpression()), !dbg !4247
  store i32 10, ptr %4, align 8, !dbg !4249, !tbaa !3042, !DIAssignID !4250
  call void @llvm.dbg.assign(metadata i32 10, metadata !4176, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4250, metadata ptr %4, metadata !DIExpression()), !dbg !4241
  %5 = icmp ne ptr %0, null, !dbg !4251
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4252
  br i1 %7, label %9, label %8, !dbg !4252

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !4253
  unreachable, !dbg !4253

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4254
  store ptr %0, ptr %10, align 8, !dbg !4255, !tbaa !3113, !DIAssignID !4256
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4176, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4256, metadata ptr %10, metadata !DIExpression()), !dbg !4241
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4257
  store ptr %1, ptr %11, align 8, !dbg !4258, !tbaa !3116, !DIAssignID !4259
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4176, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4259, metadata ptr %11, metadata !DIExpression()), !dbg !4241
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4260
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4261
  ret ptr %12, !dbg !4262
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4263 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4271
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4267, metadata !DIExpression()), !dbg !4272
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4268, metadata !DIExpression()), !dbg !4272
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4269, metadata !DIExpression()), !dbg !4272
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4270, metadata !DIExpression()), !dbg !4272
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4176, metadata !DIExpression(), metadata !4271, metadata ptr %5, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i32 0, metadata !4181, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata ptr %0, metadata !4182, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata ptr %1, metadata !4183, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata ptr %2, metadata !4184, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i64 %3, metadata !4185, metadata !DIExpression()), !dbg !4273
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !4275
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4276, !tbaa.struct !4054, !DIAssignID !4277
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4176, metadata !DIExpression(), metadata !4277, metadata ptr %5, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4176, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4278, metadata ptr undef, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata ptr %5, metadata !3099, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata ptr %0, metadata !3100, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata ptr %1, metadata !3101, metadata !DIExpression()), !dbg !4279
  call void @llvm.dbg.value(metadata ptr %5, metadata !3099, metadata !DIExpression()), !dbg !4279
  store i32 10, ptr %5, align 8, !dbg !4281, !tbaa !3042, !DIAssignID !4282
  call void @llvm.dbg.assign(metadata i32 10, metadata !4176, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4282, metadata ptr %5, metadata !DIExpression()), !dbg !4273
  %6 = icmp ne ptr %0, null, !dbg !4283
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4284
  br i1 %8, label %10, label %9, !dbg !4284

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !4285
  unreachable, !dbg !4285

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4286
  store ptr %0, ptr %11, align 8, !dbg !4287, !tbaa !3113, !DIAssignID !4288
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4176, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4288, metadata ptr %11, metadata !DIExpression()), !dbg !4273
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4289
  store ptr %1, ptr %12, align 8, !dbg !4290, !tbaa !3116, !DIAssignID !4291
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4176, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4291, metadata ptr %12, metadata !DIExpression()), !dbg !4273
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4292
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !4293
  ret ptr %13, !dbg !4294
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4295 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4299, metadata !DIExpression()), !dbg !4302
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4300, metadata !DIExpression()), !dbg !4302
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4301, metadata !DIExpression()), !dbg !4302
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4303
  ret ptr %4, !dbg !4304
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4305 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4309, metadata !DIExpression()), !dbg !4311
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4310, metadata !DIExpression()), !dbg !4311
  call void @llvm.dbg.value(metadata i32 0, metadata !4299, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata ptr %0, metadata !4300, metadata !DIExpression()), !dbg !4312
  call void @llvm.dbg.value(metadata i64 %1, metadata !4301, metadata !DIExpression()), !dbg !4312
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4314
  ret ptr %3, !dbg !4315
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4316 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4320, metadata !DIExpression()), !dbg !4322
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4321, metadata !DIExpression()), !dbg !4322
  call void @llvm.dbg.value(metadata i32 %0, metadata !4299, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata ptr %1, metadata !4300, metadata !DIExpression()), !dbg !4323
  call void @llvm.dbg.value(metadata i64 -1, metadata !4301, metadata !DIExpression()), !dbg !4323
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4325
  ret ptr %3, !dbg !4326
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4327 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4331, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.value(metadata i32 0, metadata !4320, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata ptr %0, metadata !4321, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i32 0, metadata !4299, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata ptr %0, metadata !4300, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.value(metadata i64 -1, metadata !4301, metadata !DIExpression()), !dbg !4335
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4337
  ret ptr %2, !dbg !4338
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4339 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4378, metadata !DIExpression()), !dbg !4384
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4379, metadata !DIExpression()), !dbg !4384
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4380, metadata !DIExpression()), !dbg !4384
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4381, metadata !DIExpression()), !dbg !4384
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4382, metadata !DIExpression()), !dbg !4384
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4383, metadata !DIExpression()), !dbg !4384
  %7 = icmp eq ptr %1, null, !dbg !4385
  br i1 %7, label %10, label %8, !dbg !4387

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.124, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !4388
  br label %12, !dbg !4388

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.125, ptr noundef %2, ptr noundef %3) #38, !dbg !4389
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.3.127, i32 noundef 5) #38, !dbg !4390
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !4390
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.128, ptr noundef %0), !dbg !4391
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.5.129, i32 noundef 5) #38, !dbg !4392
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.130) #38, !dbg !4392
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.128, ptr noundef %0), !dbg !4393
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
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.7.131, i32 noundef 5) #38, !dbg !4395
  %21 = load ptr, ptr %4, align 8, !dbg !4395, !tbaa !1098
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !4395
  br label %147, !dbg !4397

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.8.132, i32 noundef 5) #38, !dbg !4398
  %25 = load ptr, ptr %4, align 8, !dbg !4398, !tbaa !1098
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4398
  %27 = load ptr, ptr %26, align 8, !dbg !4398, !tbaa !1098
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !4398
  br label %147, !dbg !4399

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.9.133, i32 noundef 5) #38, !dbg !4400
  %31 = load ptr, ptr %4, align 8, !dbg !4400, !tbaa !1098
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4400
  %33 = load ptr, ptr %32, align 8, !dbg !4400, !tbaa !1098
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4400
  %35 = load ptr, ptr %34, align 8, !dbg !4400, !tbaa !1098
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !4400
  br label %147, !dbg !4401

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.10.134, i32 noundef 5) #38, !dbg !4402
  %39 = load ptr, ptr %4, align 8, !dbg !4402, !tbaa !1098
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4402
  %41 = load ptr, ptr %40, align 8, !dbg !4402, !tbaa !1098
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4402
  %43 = load ptr, ptr %42, align 8, !dbg !4402, !tbaa !1098
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4402
  %45 = load ptr, ptr %44, align 8, !dbg !4402, !tbaa !1098
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !4402
  br label %147, !dbg !4403

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.11.135, i32 noundef 5) #38, !dbg !4404
  %49 = load ptr, ptr %4, align 8, !dbg !4404, !tbaa !1098
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4404
  %51 = load ptr, ptr %50, align 8, !dbg !4404, !tbaa !1098
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4404
  %53 = load ptr, ptr %52, align 8, !dbg !4404, !tbaa !1098
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4404
  %55 = load ptr, ptr %54, align 8, !dbg !4404, !tbaa !1098
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4404
  %57 = load ptr, ptr %56, align 8, !dbg !4404, !tbaa !1098
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !4404
  br label %147, !dbg !4405

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.12.136, i32 noundef 5) #38, !dbg !4406
  %61 = load ptr, ptr %4, align 8, !dbg !4406, !tbaa !1098
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4406
  %63 = load ptr, ptr %62, align 8, !dbg !4406, !tbaa !1098
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4406
  %65 = load ptr, ptr %64, align 8, !dbg !4406, !tbaa !1098
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4406
  %67 = load ptr, ptr %66, align 8, !dbg !4406, !tbaa !1098
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4406
  %69 = load ptr, ptr %68, align 8, !dbg !4406, !tbaa !1098
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4406
  %71 = load ptr, ptr %70, align 8, !dbg !4406, !tbaa !1098
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !4406
  br label %147, !dbg !4407

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.13.137, i32 noundef 5) #38, !dbg !4408
  %75 = load ptr, ptr %4, align 8, !dbg !4408, !tbaa !1098
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4408
  %77 = load ptr, ptr %76, align 8, !dbg !4408, !tbaa !1098
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4408
  %79 = load ptr, ptr %78, align 8, !dbg !4408, !tbaa !1098
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4408
  %81 = load ptr, ptr %80, align 8, !dbg !4408, !tbaa !1098
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4408
  %83 = load ptr, ptr %82, align 8, !dbg !4408, !tbaa !1098
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4408
  %85 = load ptr, ptr %84, align 8, !dbg !4408, !tbaa !1098
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4408
  %87 = load ptr, ptr %86, align 8, !dbg !4408, !tbaa !1098
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !4408
  br label %147, !dbg !4409

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.14.138, i32 noundef 5) #38, !dbg !4410
  %91 = load ptr, ptr %4, align 8, !dbg !4410, !tbaa !1098
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4410
  %93 = load ptr, ptr %92, align 8, !dbg !4410, !tbaa !1098
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4410
  %95 = load ptr, ptr %94, align 8, !dbg !4410, !tbaa !1098
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4410
  %97 = load ptr, ptr %96, align 8, !dbg !4410, !tbaa !1098
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4410
  %99 = load ptr, ptr %98, align 8, !dbg !4410, !tbaa !1098
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4410
  %101 = load ptr, ptr %100, align 8, !dbg !4410, !tbaa !1098
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4410
  %103 = load ptr, ptr %102, align 8, !dbg !4410, !tbaa !1098
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4410
  %105 = load ptr, ptr %104, align 8, !dbg !4410, !tbaa !1098
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !4410
  br label %147, !dbg !4411

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.15.139, i32 noundef 5) #38, !dbg !4412
  %109 = load ptr, ptr %4, align 8, !dbg !4412, !tbaa !1098
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4412
  %111 = load ptr, ptr %110, align 8, !dbg !4412, !tbaa !1098
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4412
  %113 = load ptr, ptr %112, align 8, !dbg !4412, !tbaa !1098
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4412
  %115 = load ptr, ptr %114, align 8, !dbg !4412, !tbaa !1098
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4412
  %117 = load ptr, ptr %116, align 8, !dbg !4412, !tbaa !1098
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4412
  %119 = load ptr, ptr %118, align 8, !dbg !4412, !tbaa !1098
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4412
  %121 = load ptr, ptr %120, align 8, !dbg !4412, !tbaa !1098
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4412
  %123 = load ptr, ptr %122, align 8, !dbg !4412, !tbaa !1098
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4412
  %125 = load ptr, ptr %124, align 8, !dbg !4412, !tbaa !1098
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !4412
  br label %147, !dbg !4413

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.16.140, i32 noundef 5) #38, !dbg !4414
  %129 = load ptr, ptr %4, align 8, !dbg !4414, !tbaa !1098
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4414
  %131 = load ptr, ptr %130, align 8, !dbg !4414, !tbaa !1098
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4414
  %133 = load ptr, ptr %132, align 8, !dbg !4414, !tbaa !1098
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4414
  %135 = load ptr, ptr %134, align 8, !dbg !4414, !tbaa !1098
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4414
  %137 = load ptr, ptr %136, align 8, !dbg !4414, !tbaa !1098
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4414
  %139 = load ptr, ptr %138, align 8, !dbg !4414, !tbaa !1098
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4414
  %141 = load ptr, ptr %140, align 8, !dbg !4414, !tbaa !1098
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4414
  %143 = load ptr, ptr %142, align 8, !dbg !4414, !tbaa !1098
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4414
  %145 = load ptr, ptr %144, align 8, !dbg !4414, !tbaa !1098
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !4414
  br label %147, !dbg !4415

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4416
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4417 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4421, metadata !DIExpression()), !dbg !4427
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4422, metadata !DIExpression()), !dbg !4427
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4423, metadata !DIExpression()), !dbg !4427
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4424, metadata !DIExpression()), !dbg !4427
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4425, metadata !DIExpression()), !dbg !4427
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4426, metadata !DIExpression()), !dbg !4427
  br label %6, !dbg !4428

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4430
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4426, metadata !DIExpression()), !dbg !4427
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4431
  %9 = load ptr, ptr %8, align 8, !dbg !4431, !tbaa !1098
  %10 = icmp eq ptr %9, null, !dbg !4433
  %11 = add i64 %7, 1, !dbg !4434
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4426, metadata !DIExpression()), !dbg !4427
  br i1 %10, label %12, label %6, !dbg !4433, !llvm.loop !4435

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !4430
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !4437
  ret void, !dbg !4438
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4439 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !4461
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4459, metadata !DIExpression(), metadata !4461, metadata ptr %6, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4453, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4454, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4455, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4456, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4457, metadata !DIExpression(DW_OP_deref)), !dbg !4462
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !4463
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4458, metadata !DIExpression()), !dbg !4462
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4458, metadata !DIExpression()), !dbg !4462
  %10 = icmp sgt i32 %9, -1, !dbg !4464
  br i1 %10, label %18, label %11, !dbg !4464

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4464
  store i32 %12, ptr %7, align 8, !dbg !4464
  %13 = icmp ult i32 %9, -7, !dbg !4464
  br i1 %13, label %14, label %18, !dbg !4464

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4464
  %16 = sext i32 %9 to i64, !dbg !4464
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4464
  br label %22, !dbg !4464

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4464
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4464
  store ptr %21, ptr %4, align 8, !dbg !4464
  br label %22, !dbg !4464

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4464
  %25 = load ptr, ptr %24, align 8, !dbg !4464
  store ptr %25, ptr %6, align 8, !dbg !4467, !tbaa !1098
  %26 = icmp eq ptr %25, null, !dbg !4468
  br i1 %26, label %197, label %27, !dbg !4469

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4458, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4458, metadata !DIExpression()), !dbg !4462
  %28 = icmp sgt i32 %23, -1, !dbg !4464
  br i1 %28, label %36, label %29, !dbg !4464

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4464
  store i32 %30, ptr %7, align 8, !dbg !4464
  %31 = icmp ult i32 %23, -7, !dbg !4464
  br i1 %31, label %32, label %36, !dbg !4464

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4464
  %34 = sext i32 %23 to i64, !dbg !4464
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4464
  br label %40, !dbg !4464

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4464
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4464
  store ptr %39, ptr %4, align 8, !dbg !4464
  br label %40, !dbg !4464

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4464
  %43 = load ptr, ptr %42, align 8, !dbg !4464
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4470
  store ptr %43, ptr %44, align 8, !dbg !4467, !tbaa !1098
  %45 = icmp eq ptr %43, null, !dbg !4468
  br i1 %45, label %197, label %46, !dbg !4469

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4458, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4458, metadata !DIExpression()), !dbg !4462
  %47 = icmp sgt i32 %41, -1, !dbg !4464
  br i1 %47, label %55, label %48, !dbg !4464

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4464
  store i32 %49, ptr %7, align 8, !dbg !4464
  %50 = icmp ult i32 %41, -7, !dbg !4464
  br i1 %50, label %51, label %55, !dbg !4464

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4464
  %53 = sext i32 %41 to i64, !dbg !4464
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4464
  br label %59, !dbg !4464

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4464
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4464
  store ptr %58, ptr %4, align 8, !dbg !4464
  br label %59, !dbg !4464

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4464
  %62 = load ptr, ptr %61, align 8, !dbg !4464
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4470
  store ptr %62, ptr %63, align 8, !dbg !4467, !tbaa !1098
  %64 = icmp eq ptr %62, null, !dbg !4468
  br i1 %64, label %197, label %65, !dbg !4469

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4458, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4458, metadata !DIExpression()), !dbg !4462
  %66 = icmp sgt i32 %60, -1, !dbg !4464
  br i1 %66, label %74, label %67, !dbg !4464

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4464
  store i32 %68, ptr %7, align 8, !dbg !4464
  %69 = icmp ult i32 %60, -7, !dbg !4464
  br i1 %69, label %70, label %74, !dbg !4464

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4464
  %72 = sext i32 %60 to i64, !dbg !4464
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4464
  br label %78, !dbg !4464

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4464
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4464
  store ptr %77, ptr %4, align 8, !dbg !4464
  br label %78, !dbg !4464

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4464
  %81 = load ptr, ptr %80, align 8, !dbg !4464
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4470
  store ptr %81, ptr %82, align 8, !dbg !4467, !tbaa !1098
  %83 = icmp eq ptr %81, null, !dbg !4468
  br i1 %83, label %197, label %84, !dbg !4469

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4458, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4458, metadata !DIExpression()), !dbg !4462
  %85 = icmp sgt i32 %79, -1, !dbg !4464
  br i1 %85, label %93, label %86, !dbg !4464

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4464
  store i32 %87, ptr %7, align 8, !dbg !4464
  %88 = icmp ult i32 %79, -7, !dbg !4464
  br i1 %88, label %89, label %93, !dbg !4464

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4464
  %91 = sext i32 %79 to i64, !dbg !4464
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4464
  br label %97, !dbg !4464

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4464
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4464
  store ptr %96, ptr %4, align 8, !dbg !4464
  br label %97, !dbg !4464

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4464
  %100 = load ptr, ptr %99, align 8, !dbg !4464
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4470
  store ptr %100, ptr %101, align 8, !dbg !4467, !tbaa !1098
  %102 = icmp eq ptr %100, null, !dbg !4468
  br i1 %102, label %197, label %103, !dbg !4469

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4458, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4458, metadata !DIExpression()), !dbg !4462
  %104 = icmp sgt i32 %98, -1, !dbg !4464
  br i1 %104, label %112, label %105, !dbg !4464

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4464
  store i32 %106, ptr %7, align 8, !dbg !4464
  %107 = icmp ult i32 %98, -7, !dbg !4464
  br i1 %107, label %108, label %112, !dbg !4464

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4464
  %110 = sext i32 %98 to i64, !dbg !4464
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4464
  br label %116, !dbg !4464

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4464
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4464
  store ptr %115, ptr %4, align 8, !dbg !4464
  br label %116, !dbg !4464

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4464
  %119 = load ptr, ptr %118, align 8, !dbg !4464
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4470
  store ptr %119, ptr %120, align 8, !dbg !4467, !tbaa !1098
  %121 = icmp eq ptr %119, null, !dbg !4468
  br i1 %121, label %197, label %122, !dbg !4469

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4458, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4458, metadata !DIExpression()), !dbg !4462
  %123 = icmp sgt i32 %117, -1, !dbg !4464
  br i1 %123, label %131, label %124, !dbg !4464

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4464
  store i32 %125, ptr %7, align 8, !dbg !4464
  %126 = icmp ult i32 %117, -7, !dbg !4464
  br i1 %126, label %127, label %131, !dbg !4464

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4464
  %129 = sext i32 %117 to i64, !dbg !4464
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4464
  br label %135, !dbg !4464

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4464
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4464
  store ptr %134, ptr %4, align 8, !dbg !4464
  br label %135, !dbg !4464

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4464
  %138 = load ptr, ptr %137, align 8, !dbg !4464
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4470
  store ptr %138, ptr %139, align 8, !dbg !4467, !tbaa !1098
  %140 = icmp eq ptr %138, null, !dbg !4468
  br i1 %140, label %197, label %141, !dbg !4469

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4458, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4458, metadata !DIExpression()), !dbg !4462
  %142 = icmp sgt i32 %136, -1, !dbg !4464
  br i1 %142, label %150, label %143, !dbg !4464

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4464
  store i32 %144, ptr %7, align 8, !dbg !4464
  %145 = icmp ult i32 %136, -7, !dbg !4464
  br i1 %145, label %146, label %150, !dbg !4464

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4464
  %148 = sext i32 %136 to i64, !dbg !4464
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4464
  br label %154, !dbg !4464

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4464
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4464
  store ptr %153, ptr %4, align 8, !dbg !4464
  br label %154, !dbg !4464

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4464
  %157 = load ptr, ptr %156, align 8, !dbg !4464
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4470
  store ptr %157, ptr %158, align 8, !dbg !4467, !tbaa !1098
  %159 = icmp eq ptr %157, null, !dbg !4468
  br i1 %159, label %197, label %160, !dbg !4469

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4458, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4458, metadata !DIExpression()), !dbg !4462
  %161 = icmp sgt i32 %155, -1, !dbg !4464
  br i1 %161, label %169, label %162, !dbg !4464

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4464
  store i32 %163, ptr %7, align 8, !dbg !4464
  %164 = icmp ult i32 %155, -7, !dbg !4464
  br i1 %164, label %165, label %169, !dbg !4464

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4464
  %167 = sext i32 %155 to i64, !dbg !4464
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4464
  br label %173, !dbg !4464

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4464
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4464
  store ptr %172, ptr %4, align 8, !dbg !4464
  br label %173, !dbg !4464

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4464
  %176 = load ptr, ptr %175, align 8, !dbg !4464
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4470
  store ptr %176, ptr %177, align 8, !dbg !4467, !tbaa !1098
  %178 = icmp eq ptr %176, null, !dbg !4468
  br i1 %178, label %197, label %179, !dbg !4469

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4458, metadata !DIExpression()), !dbg !4462
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4458, metadata !DIExpression()), !dbg !4462
  %180 = icmp sgt i32 %174, -1, !dbg !4464
  br i1 %180, label %188, label %181, !dbg !4464

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4464
  store i32 %182, ptr %7, align 8, !dbg !4464
  %183 = icmp ult i32 %174, -7, !dbg !4464
  br i1 %183, label %184, label %188, !dbg !4464

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4464
  %186 = sext i32 %174 to i64, !dbg !4464
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4464
  br label %191, !dbg !4464

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4464
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4464
  store ptr %190, ptr %4, align 8, !dbg !4464
  br label %191, !dbg !4464

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4464
  %193 = load ptr, ptr %192, align 8, !dbg !4464
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4470
  store ptr %193, ptr %194, align 8, !dbg !4467, !tbaa !1098
  %195 = icmp eq ptr %193, null, !dbg !4468
  %196 = select i1 %195, i64 9, i64 10, !dbg !4469
  br label %197, !dbg !4469

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4471
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4472
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !4473
  ret void, !dbg !4473
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4474 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !4483
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4482, metadata !DIExpression(), metadata !4483, metadata ptr %5, metadata !DIExpression()), !dbg !4484
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4478, metadata !DIExpression()), !dbg !4484
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4479, metadata !DIExpression()), !dbg !4484
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4480, metadata !DIExpression()), !dbg !4484
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4481, metadata !DIExpression()), !dbg !4484
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !4485
  call void @llvm.va_start(ptr nonnull %5), !dbg !4486
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !4487
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4487, !tbaa.struct !2428
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4487
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !4487
  call void @llvm.va_end(ptr nonnull %5), !dbg !4488
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !4489
  ret void, !dbg !4489
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4490 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4491, !tbaa !1098
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.128, ptr noundef %1), !dbg !4491
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.17.145, i32 noundef 5) #38, !dbg !4492
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.146) #38, !dbg !4492
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.19.147, i32 noundef 5) #38, !dbg !4493
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.148, ptr noundef nonnull @.str.21.149) #38, !dbg !4493
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.22.150, i32 noundef 5) #38, !dbg !4494
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.151) #38, !dbg !4494
  ret void, !dbg !4495
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4496 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4501, metadata !DIExpression()), !dbg !4504
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4502, metadata !DIExpression()), !dbg !4504
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4503, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata ptr %0, metadata !4505, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i64 %1, metadata !4508, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i64 %2, metadata !4509, metadata !DIExpression()), !dbg !4510
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4512
  call void @llvm.dbg.value(metadata ptr %4, metadata !4513, metadata !DIExpression()), !dbg !4518
  %5 = icmp eq ptr %4, null, !dbg !4520
  br i1 %5, label %6, label %7, !dbg !4522

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4523
  unreachable, !dbg !4523

7:                                                ; preds = %3
  ret ptr %4, !dbg !4524
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !4506 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4505, metadata !DIExpression()), !dbg !4525
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4508, metadata !DIExpression()), !dbg !4525
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4509, metadata !DIExpression()), !dbg !4525
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4526
  call void @llvm.dbg.value(metadata ptr %4, metadata !4513, metadata !DIExpression()), !dbg !4527
  %5 = icmp eq ptr %4, null, !dbg !4529
  br i1 %5, label %6, label %7, !dbg !4530

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4531
  unreachable, !dbg !4531

7:                                                ; preds = %3
  ret ptr %4, !dbg !4532
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4533 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4537, metadata !DIExpression()), !dbg !4538
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !4539
  call void @llvm.dbg.value(metadata ptr %2, metadata !4513, metadata !DIExpression()), !dbg !4540
  %3 = icmp eq ptr %2, null, !dbg !4542
  br i1 %3, label %4, label %5, !dbg !4543

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4544
  unreachable, !dbg !4544

5:                                                ; preds = %1
  ret ptr %2, !dbg !4545
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4546 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4547 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4551, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata i64 %0, metadata !4553, metadata !DIExpression()), !dbg !4557
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !4559
  call void @llvm.dbg.value(metadata ptr %2, metadata !4513, metadata !DIExpression()), !dbg !4560
  %3 = icmp eq ptr %2, null, !dbg !4562
  br i1 %3, label %4, label %5, !dbg !4563

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4564
  unreachable, !dbg !4564

5:                                                ; preds = %1
  ret ptr %2, !dbg !4565
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4566 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4570, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i64 %0, metadata !4537, metadata !DIExpression()), !dbg !4572
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !4574
  call void @llvm.dbg.value(metadata ptr %2, metadata !4513, metadata !DIExpression()), !dbg !4575
  %3 = icmp eq ptr %2, null, !dbg !4577
  br i1 %3, label %4, label %5, !dbg !4578

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4579
  unreachable, !dbg !4579

5:                                                ; preds = %1
  ret ptr %2, !dbg !4580
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4581 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4585, metadata !DIExpression()), !dbg !4587
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4586, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata ptr %0, metadata !4588, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i64 %1, metadata !4592, metadata !DIExpression()), !dbg !4593
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4595
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !4596
  call void @llvm.dbg.value(metadata ptr %4, metadata !4513, metadata !DIExpression()), !dbg !4597
  %5 = icmp eq ptr %4, null, !dbg !4599
  br i1 %5, label %6, label %7, !dbg !4600

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4601
  unreachable, !dbg !4601

7:                                                ; preds = %2
  ret ptr %4, !dbg !4602
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4603 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4604 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4608, metadata !DIExpression()), !dbg !4610
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4609, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata ptr %0, metadata !4611, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 %1, metadata !4614, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata ptr %0, metadata !4588, metadata !DIExpression()), !dbg !4617
  call void @llvm.dbg.value(metadata i64 %1, metadata !4592, metadata !DIExpression()), !dbg !4617
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4619
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !4620
  call void @llvm.dbg.value(metadata ptr %4, metadata !4513, metadata !DIExpression()), !dbg !4621
  %5 = icmp eq ptr %4, null, !dbg !4623
  br i1 %5, label %6, label %7, !dbg !4624

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4625
  unreachable, !dbg !4625

7:                                                ; preds = %2
  ret ptr %4, !dbg !4626
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !4627 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4631, metadata !DIExpression()), !dbg !4634
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4632, metadata !DIExpression()), !dbg !4634
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4633, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata ptr %0, metadata !4635, metadata !DIExpression()), !dbg !4640
  call void @llvm.dbg.value(metadata i64 %1, metadata !4638, metadata !DIExpression()), !dbg !4640
  call void @llvm.dbg.value(metadata i64 %2, metadata !4639, metadata !DIExpression()), !dbg !4640
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4642
  call void @llvm.dbg.value(metadata ptr %4, metadata !4513, metadata !DIExpression()), !dbg !4643
  %5 = icmp eq ptr %4, null, !dbg !4645
  br i1 %5, label %6, label %7, !dbg !4646

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4647
  unreachable, !dbg !4647

7:                                                ; preds = %3
  ret ptr %4, !dbg !4648
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4649 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4653, metadata !DIExpression()), !dbg !4655
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4654, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.value(metadata ptr null, metadata !4505, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i64 %0, metadata !4508, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i64 %1, metadata !4509, metadata !DIExpression()), !dbg !4656
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4658
  call void @llvm.dbg.value(metadata ptr %3, metadata !4513, metadata !DIExpression()), !dbg !4659
  %4 = icmp eq ptr %3, null, !dbg !4661
  br i1 %4, label %5, label %6, !dbg !4662

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4663
  unreachable, !dbg !4663

6:                                                ; preds = %2
  ret ptr %3, !dbg !4664
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4665 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4669, metadata !DIExpression()), !dbg !4671
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4670, metadata !DIExpression()), !dbg !4671
  call void @llvm.dbg.value(metadata ptr null, metadata !4631, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i64 %0, metadata !4632, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i64 %1, metadata !4633, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata ptr null, metadata !4635, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i64 %0, metadata !4638, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i64 %1, metadata !4639, metadata !DIExpression()), !dbg !4674
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4676
  call void @llvm.dbg.value(metadata ptr %3, metadata !4513, metadata !DIExpression()), !dbg !4677
  %4 = icmp eq ptr %3, null, !dbg !4679
  br i1 %4, label %5, label %6, !dbg !4680

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4681
  unreachable, !dbg !4681

6:                                                ; preds = %2
  ret ptr %3, !dbg !4682
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4683 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4687, metadata !DIExpression()), !dbg !4689
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4688, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.value(metadata ptr %0, metadata !1040, metadata !DIExpression()), !dbg !4690
  call void @llvm.dbg.value(metadata ptr %1, metadata !1041, metadata !DIExpression()), !dbg !4690
  call void @llvm.dbg.value(metadata i64 1, metadata !1042, metadata !DIExpression()), !dbg !4690
  %3 = load i64, ptr %1, align 8, !dbg !4692, !tbaa !1393
  call void @llvm.dbg.value(metadata i64 %3, metadata !1043, metadata !DIExpression()), !dbg !4690
  %4 = icmp eq ptr %0, null, !dbg !4693
  br i1 %4, label %5, label %8, !dbg !4695

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4696
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4699
  br label %15, !dbg !4699

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4700
  %10 = add nuw i64 %9, 1, !dbg !4700
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4700
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4700
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4700
  call void @llvm.dbg.value(metadata i64 %13, metadata !1043, metadata !DIExpression()), !dbg !4690
  br i1 %12, label %14, label %15, !dbg !4703

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !4704
  unreachable, !dbg !4704

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4690
  call void @llvm.dbg.value(metadata i64 %16, metadata !1043, metadata !DIExpression()), !dbg !4690
  call void @llvm.dbg.value(metadata ptr %0, metadata !4505, metadata !DIExpression()), !dbg !4705
  call void @llvm.dbg.value(metadata i64 %16, metadata !4508, metadata !DIExpression()), !dbg !4705
  call void @llvm.dbg.value(metadata i64 1, metadata !4509, metadata !DIExpression()), !dbg !4705
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !4707
  call void @llvm.dbg.value(metadata ptr %17, metadata !4513, metadata !DIExpression()), !dbg !4708
  %18 = icmp eq ptr %17, null, !dbg !4710
  br i1 %18, label %19, label %20, !dbg !4711

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !4712
  unreachable, !dbg !4712

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !1040, metadata !DIExpression()), !dbg !4690
  store i64 %16, ptr %1, align 8, !dbg !4713, !tbaa !1393
  ret ptr %17, !dbg !4714
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1035 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1040, metadata !DIExpression()), !dbg !4715
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1041, metadata !DIExpression()), !dbg !4715
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1042, metadata !DIExpression()), !dbg !4715
  %4 = load i64, ptr %1, align 8, !dbg !4716, !tbaa !1393
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1043, metadata !DIExpression()), !dbg !4715
  %5 = icmp eq ptr %0, null, !dbg !4717
  br i1 %5, label %6, label %13, !dbg !4718

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4719
  br i1 %7, label %8, label %20, !dbg !4720

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4721
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1043, metadata !DIExpression()), !dbg !4715
  %10 = icmp ugt i64 %2, 128, !dbg !4723
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4724
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1043, metadata !DIExpression()), !dbg !4715
  br label %20, !dbg !4725

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4726
  %15 = add nuw i64 %14, 1, !dbg !4726
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4726
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4726
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4726
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1043, metadata !DIExpression()), !dbg !4715
  br i1 %17, label %19, label %20, !dbg !4727

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !4728
  unreachable, !dbg !4728

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4715
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !1043, metadata !DIExpression()), !dbg !4715
  call void @llvm.dbg.value(metadata ptr %0, metadata !4505, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata i64 %21, metadata !4508, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata i64 %2, metadata !4509, metadata !DIExpression()), !dbg !4729
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !4731
  call void @llvm.dbg.value(metadata ptr %22, metadata !4513, metadata !DIExpression()), !dbg !4732
  %23 = icmp eq ptr %22, null, !dbg !4734
  br i1 %23, label %24, label %25, !dbg !4735

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !4736
  unreachable, !dbg !4736

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !1040, metadata !DIExpression()), !dbg !4715
  store i64 %21, ptr %1, align 8, !dbg !4737, !tbaa !1393
  ret ptr %22, !dbg !4738
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !1047 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1054, metadata !DIExpression()), !dbg !4739
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1055, metadata !DIExpression()), !dbg !4739
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1056, metadata !DIExpression()), !dbg !4739
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1057, metadata !DIExpression()), !dbg !4739
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1058, metadata !DIExpression()), !dbg !4739
  %6 = load i64, ptr %1, align 8, !dbg !4740, !tbaa !1393
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1059, metadata !DIExpression()), !dbg !4739
  %7 = ashr i64 %6, 1, !dbg !4741
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4741
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4741
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4741
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !1060, metadata !DIExpression()), !dbg !4739
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4743
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1060, metadata !DIExpression()), !dbg !4739
  %12 = icmp sgt i64 %3, -1, !dbg !4744
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4746
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4746
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !1060, metadata !DIExpression()), !dbg !4739
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4747
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4747
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4747
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !1061, metadata !DIExpression()), !dbg !4739
  %18 = icmp slt i64 %17, 128, !dbg !4747
  %19 = select i1 %18, i64 128, i64 0, !dbg !4747
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4747
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !1062, metadata !DIExpression()), !dbg !4739
  %21 = icmp eq i64 %20, 0, !dbg !4748
  br i1 %21, label %28, label %22, !dbg !4750

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !4751
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !1060, metadata !DIExpression()), !dbg !4739
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !4753
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !1061, metadata !DIExpression()), !dbg !4739
  br label %28, !dbg !4754

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !4739
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !4739
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !1061, metadata !DIExpression()), !dbg !4739
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !1060, metadata !DIExpression()), !dbg !4739
  %31 = icmp eq ptr %0, null, !dbg !4755
  br i1 %31, label %32, label %33, !dbg !4757

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !4758, !tbaa !1393
  br label %33, !dbg !4759

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !4760
  %35 = icmp slt i64 %34, %2, !dbg !4762
  br i1 %35, label %36, label %48, !dbg !4763

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4764
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !4764
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !4764
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1060, metadata !DIExpression()), !dbg !4739
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !4765
  br i1 %42, label %47, label %43, !dbg !4765

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !4766
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !4766
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !4766
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !1061, metadata !DIExpression()), !dbg !4739
  br i1 %45, label %47, label %48, !dbg !4767

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #40, !dbg !4768
  unreachable, !dbg !4768

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !4739
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !4739
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !1061, metadata !DIExpression()), !dbg !4739
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !1060, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata ptr %0, metadata !4585, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.value(metadata i64 %50, metadata !4586, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.value(metadata ptr %0, metadata !4588, metadata !DIExpression()), !dbg !4771
  call void @llvm.dbg.value(metadata i64 %50, metadata !4592, metadata !DIExpression()), !dbg !4771
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !4773
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #45, !dbg !4774
  call void @llvm.dbg.value(metadata ptr %52, metadata !4513, metadata !DIExpression()), !dbg !4775
  %53 = icmp eq ptr %52, null, !dbg !4777
  br i1 %53, label %54, label %55, !dbg !4778

54:                                               ; preds = %48
  tail call void @xalloc_die() #40, !dbg !4779
  unreachable, !dbg !4779

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !1054, metadata !DIExpression()), !dbg !4739
  store i64 %49, ptr %1, align 8, !dbg !4780, !tbaa !1393
  ret ptr %52, !dbg !4781
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4782 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4784, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata i64 %0, metadata !4786, metadata !DIExpression()), !dbg !4790
  call void @llvm.dbg.value(metadata i64 1, metadata !4789, metadata !DIExpression()), !dbg !4790
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4792
  call void @llvm.dbg.value(metadata ptr %2, metadata !4513, metadata !DIExpression()), !dbg !4793
  %3 = icmp eq ptr %2, null, !dbg !4795
  br i1 %3, label %4, label %5, !dbg !4796

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4797
  unreachable, !dbg !4797

5:                                                ; preds = %1
  ret ptr %2, !dbg !4798
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4799 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4787 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4786, metadata !DIExpression()), !dbg !4800
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4789, metadata !DIExpression()), !dbg !4800
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4801
  call void @llvm.dbg.value(metadata ptr %3, metadata !4513, metadata !DIExpression()), !dbg !4802
  %4 = icmp eq ptr %3, null, !dbg !4804
  br i1 %4, label %5, label %6, !dbg !4805

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4806
  unreachable, !dbg !4806

6:                                                ; preds = %2
  ret ptr %3, !dbg !4807
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4808 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4810, metadata !DIExpression()), !dbg !4811
  call void @llvm.dbg.value(metadata i64 %0, metadata !4812, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata i64 1, metadata !4815, metadata !DIExpression()), !dbg !4816
  call void @llvm.dbg.value(metadata i64 %0, metadata !4818, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.value(metadata i64 1, metadata !4821, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.value(metadata i64 %0, metadata !4818, metadata !DIExpression()), !dbg !4822
  call void @llvm.dbg.value(metadata i64 1, metadata !4821, metadata !DIExpression()), !dbg !4822
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4824
  call void @llvm.dbg.value(metadata ptr %2, metadata !4513, metadata !DIExpression()), !dbg !4825
  %3 = icmp eq ptr %2, null, !dbg !4827
  br i1 %3, label %4, label %5, !dbg !4828

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4829
  unreachable, !dbg !4829

5:                                                ; preds = %1
  ret ptr %2, !dbg !4830
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4813 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4812, metadata !DIExpression()), !dbg !4831
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4815, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i64 %0, metadata !4818, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.value(metadata i64 %1, metadata !4821, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.value(metadata i64 %0, metadata !4818, metadata !DIExpression()), !dbg !4832
  call void @llvm.dbg.value(metadata i64 %1, metadata !4821, metadata !DIExpression()), !dbg !4832
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4834
  call void @llvm.dbg.value(metadata ptr %3, metadata !4513, metadata !DIExpression()), !dbg !4835
  %4 = icmp eq ptr %3, null, !dbg !4837
  br i1 %4, label %5, label %6, !dbg !4838

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4839
  unreachable, !dbg !4839

6:                                                ; preds = %2
  ret ptr %3, !dbg !4840
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4841 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4845, metadata !DIExpression()), !dbg !4847
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4846, metadata !DIExpression()), !dbg !4847
  call void @llvm.dbg.value(metadata i64 %1, metadata !4537, metadata !DIExpression()), !dbg !4848
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !4850
  call void @llvm.dbg.value(metadata ptr %3, metadata !4513, metadata !DIExpression()), !dbg !4851
  %4 = icmp eq ptr %3, null, !dbg !4853
  br i1 %4, label %5, label %6, !dbg !4854

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4855
  unreachable, !dbg !4855

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4856, metadata !DIExpression()), !dbg !4861
  call void @llvm.dbg.value(metadata ptr %0, metadata !4859, metadata !DIExpression()), !dbg !4861
  call void @llvm.dbg.value(metadata i64 %1, metadata !4860, metadata !DIExpression()), !dbg !4861
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4863
  ret ptr %3, !dbg !4864
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4865 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4869, metadata !DIExpression()), !dbg !4871
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4870, metadata !DIExpression()), !dbg !4871
  call void @llvm.dbg.value(metadata i64 %1, metadata !4551, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.value(metadata i64 %1, metadata !4553, metadata !DIExpression()), !dbg !4874
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !4876
  call void @llvm.dbg.value(metadata ptr %3, metadata !4513, metadata !DIExpression()), !dbg !4877
  %4 = icmp eq ptr %3, null, !dbg !4879
  br i1 %4, label %5, label %6, !dbg !4880

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4881
  unreachable, !dbg !4881

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4856, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata ptr %0, metadata !4859, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i64 %1, metadata !4860, metadata !DIExpression()), !dbg !4882
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4884
  ret ptr %3, !dbg !4885
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4886 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4890, metadata !DIExpression()), !dbg !4893
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4891, metadata !DIExpression()), !dbg !4893
  %3 = add nsw i64 %1, 1, !dbg !4894
  call void @llvm.dbg.value(metadata i64 %3, metadata !4551, metadata !DIExpression()), !dbg !4895
  call void @llvm.dbg.value(metadata i64 %3, metadata !4553, metadata !DIExpression()), !dbg !4897
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !4899
  call void @llvm.dbg.value(metadata ptr %4, metadata !4513, metadata !DIExpression()), !dbg !4900
  %5 = icmp eq ptr %4, null, !dbg !4902
  br i1 %5, label %6, label %7, !dbg !4903

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4904
  unreachable, !dbg !4904

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4892, metadata !DIExpression()), !dbg !4893
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4905
  store i8 0, ptr %8, align 1, !dbg !4906, !tbaa !1177
  call void @llvm.dbg.value(metadata ptr %4, metadata !4856, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.value(metadata ptr %0, metadata !4859, metadata !DIExpression()), !dbg !4907
  call void @llvm.dbg.value(metadata i64 %1, metadata !4860, metadata !DIExpression()), !dbg !4907
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4909
  ret ptr %4, !dbg !4910
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4911 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4913, metadata !DIExpression()), !dbg !4914
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !4915
  %3 = add i64 %2, 1, !dbg !4916
  call void @llvm.dbg.value(metadata ptr %0, metadata !4845, metadata !DIExpression()), !dbg !4917
  call void @llvm.dbg.value(metadata i64 %3, metadata !4846, metadata !DIExpression()), !dbg !4917
  call void @llvm.dbg.value(metadata i64 %3, metadata !4537, metadata !DIExpression()), !dbg !4919
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !4921
  call void @llvm.dbg.value(metadata ptr %4, metadata !4513, metadata !DIExpression()), !dbg !4922
  %5 = icmp eq ptr %4, null, !dbg !4924
  br i1 %5, label %6, label %7, !dbg !4925

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4926
  unreachable, !dbg !4926

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4856, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata ptr %0, metadata !4859, metadata !DIExpression()), !dbg !4927
  call void @llvm.dbg.value(metadata i64 %3, metadata !4860, metadata !DIExpression()), !dbg !4927
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !4929
  ret ptr %4, !dbg !4930
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4931 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4936, !tbaa !1168
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4933, metadata !DIExpression()), !dbg !4937
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.166, ptr noundef nonnull @.str.2.167, i32 noundef 5) #38, !dbg !4936
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.168, ptr noundef %2) #38, !dbg !4936
  %3 = icmp eq i32 %1, 0, !dbg !4936
  tail call void @llvm.assume(i1 %3), !dbg !4936
  tail call void @abort() #40, !dbg !4938
  unreachable, !dbg !4938
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4939 {
  %3 = alloca [81 x i8], align 1, !DIAssignID !5001
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4982, metadata !DIExpression(), metadata !5001, metadata ptr %3, metadata !DIExpression()), !dbg !5002
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4977, metadata !DIExpression()), !dbg !5002
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4978, metadata !DIExpression()), !dbg !5002
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4979, metadata !DIExpression()), !dbg !5002
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4980, metadata !DIExpression()), !dbg !5002
  tail call void @llvm.dbg.value(metadata i8 0, metadata !4981, metadata !DIExpression()), !dbg !5002
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #38, !dbg !5003
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4986, metadata !DIExpression()), !dbg !5004
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4988, metadata !DIExpression()), !dbg !5004
  br label %4, !dbg !5005

4:                                                ; preds = %43, %2
  %5 = phi i1 [ false, %2 ], [ %44, %43 ]
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !5004
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !5002
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !5006
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !5007
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !4979, metadata !DIExpression()), !dbg !5002
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4980, metadata !DIExpression()), !dbg !5002
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4988, metadata !DIExpression()), !dbg !5004
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4986, metadata !DIExpression()), !dbg !5004
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4981, metadata !DIExpression()), !dbg !5002
  %11 = load i8, ptr %6, align 1, !dbg !5007, !tbaa !1177
  switch i8 %11, label %38 [
    i8 0, label %.loopexit
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !5008

12:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4979, metadata !DIExpression()), !dbg !5002
  %13 = icmp slt i64 %7, 80, !dbg !5009
  br i1 %13, label %14, label %43, !dbg !5012

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !5013
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4988, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5004
  store i8 114, ptr %10, align 1, !dbg !5014, !tbaa !1177
  br label %43, !dbg !5015

16:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4979, metadata !DIExpression()), !dbg !5002
  %17 = or i32 %8, 576, !dbg !5016
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4980, metadata !DIExpression()), !dbg !5002
  %18 = icmp slt i64 %7, 80, !dbg !5017
  br i1 %18, label %19, label %43, !dbg !5019

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !5020
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4988, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5004
  store i8 119, ptr %10, align 1, !dbg !5021, !tbaa !1177
  br label %43, !dbg !5022

21:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4979, metadata !DIExpression()), !dbg !5002
  %22 = or i32 %8, 1088, !dbg !5023
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !4980, metadata !DIExpression()), !dbg !5002
  %23 = icmp slt i64 %7, 80, !dbg !5024
  br i1 %23, label %24, label %43, !dbg !5026

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !5027
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4988, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5004
  store i8 97, ptr %10, align 1, !dbg !5028, !tbaa !1177
  br label %43, !dbg !5029

26:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4980, metadata !DIExpression()), !dbg !5002
  %27 = icmp slt i64 %7, 80, !dbg !5030
  br i1 %27, label %28, label %43, !dbg !5032

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !5033
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4988, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5004
  store i8 98, ptr %10, align 1, !dbg !5034, !tbaa !1177
  br label %43, !dbg !5035

30:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4979, metadata !DIExpression()), !dbg !5002
  %31 = icmp slt i64 %7, 80, !dbg !5036
  br i1 %31, label %32, label %43, !dbg !5038

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !5039
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4988, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5004
  store i8 43, ptr %10, align 1, !dbg !5040, !tbaa !1177
  br label %43, !dbg !5041

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !5042
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !4980, metadata !DIExpression()), !dbg !5002
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4981, metadata !DIExpression()), !dbg !5002
  br label %43, !dbg !5043

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !5044
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !4980, metadata !DIExpression()), !dbg !5002
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4981, metadata !DIExpression()), !dbg !5002
  br label %43, !dbg !5045

38:                                               ; preds = %4
  %.lcssa10 = phi i1 [ %5, %4 ]
  %.lcssa8 = phi ptr [ %6, %4 ], !dbg !5004
  %.lcssa6 = phi i64 [ %7, %4 ]
  %.lcssa4 = phi i32 [ %8, %4 ], !dbg !5002
  %.lcssa2 = phi i32 [ %9, %4 ], !dbg !5006
  %.lcssa = phi ptr [ %10, %4 ], !dbg !5007
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa8) #39, !dbg !5046
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !4989, metadata !DIExpression()), !dbg !5047
  %40 = sub nsw i64 80, %.lcssa6, !dbg !5048
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !5050
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !4989, metadata !DIExpression()), !dbg !5047
  call void @llvm.dbg.value(metadata ptr %.lcssa, metadata !5051, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata ptr %.lcssa8, metadata !5054, metadata !DIExpression()), !dbg !5056
  call void @llvm.dbg.value(metadata i64 %41, metadata !5055, metadata !DIExpression()), !dbg !5056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.lcssa, ptr noundef nonnull align 1 %.lcssa8, i64 noundef %41, i1 noundef false) #38, !dbg !5058
  %42 = getelementptr inbounds i8, ptr %.lcssa, i64 %41, !dbg !5059
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !4988, metadata !DIExpression()), !dbg !5004
  br label %49, !dbg !5060

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i1 [ true, %36 ], [ true, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ]
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !5002
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !5002
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !4979, metadata !DIExpression()), !dbg !5002
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !4980, metadata !DIExpression()), !dbg !5002
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4988, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5004
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4981, metadata !DIExpression()), !dbg !5002
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !5061
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !4986, metadata !DIExpression()), !dbg !5004
  br label %4, !dbg !5062, !llvm.loop !5063

.loopexit:                                        ; preds = %4
  %.lcssa11 = phi i1 [ %5, %4 ]
  %.lcssa5 = phi i32 [ %8, %4 ], !dbg !5002
  %.lcssa3 = phi i32 [ %9, %4 ], !dbg !5006
  %.lcssa1 = phi ptr [ %10, %4 ], !dbg !5007
  br label %49, !dbg !5065

49:                                               ; preds = %.loopexit, %38
  %50 = phi i1 [ %.lcssa10, %38 ], [ %.lcssa11, %.loopexit ]
  %51 = phi i32 [ %.lcssa4, %38 ], [ %.lcssa5, %.loopexit ]
  %52 = phi i32 [ %.lcssa2, %38 ], [ %.lcssa3, %.loopexit ]
  %53 = phi ptr [ %42, %38 ], [ %.lcssa1, %.loopexit ], !dbg !5004
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !4988, metadata !DIExpression()), !dbg !5004
  store i8 0, ptr %53, align 1, !dbg !5065, !tbaa !1177
  br i1 %50, label %54, label %65, !dbg !5066

54:                                               ; preds = %49
  %55 = or i32 %52, %51, !dbg !5067
  %56 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %55, i32 noundef 438) #38, !dbg !5068
  tail call void @llvm.dbg.value(metadata i32 %56, metadata !4994, metadata !DIExpression()), !dbg !5069
  %57 = icmp slt i32 %56, 0, !dbg !5070
  br i1 %57, label %67, label %58, !dbg !5072

58:                                               ; preds = %54
  %59 = call noalias ptr @fdopen(i32 noundef %56, ptr noundef nonnull %3) #38, !dbg !5073
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !4997, metadata !DIExpression()), !dbg !5069
  %60 = icmp eq ptr %59, null, !dbg !5074
  br i1 %60, label %61, label %67, !dbg !5075

61:                                               ; preds = %58
  %62 = tail call ptr @__errno_location() #41, !dbg !5076
  %63 = load i32, ptr %62, align 4, !dbg !5076, !tbaa !1168
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !4998, metadata !DIExpression()), !dbg !5077
  %64 = tail call i32 @close(i32 noundef %56) #38, !dbg !5078
  store i32 %63, ptr %62, align 4, !dbg !5079, !tbaa !1168
  br label %67, !dbg !5080

65:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !5081, metadata !DIExpression()), !dbg !5085
  call void @llvm.dbg.value(metadata ptr %1, metadata !5084, metadata !DIExpression()), !dbg !5085
  %66 = tail call noalias noundef ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !5087
  br label %67, !dbg !5088

67:                                               ; preds = %54, %61, %58, %65
  %68 = phi ptr [ %66, %65 ], [ null, %54 ], [ null, %61 ], [ %59, %58 ], !dbg !5002
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #38, !dbg !5089
  ret ptr %68, !dbg !5089
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !5090 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #35

; Function Attrs: nofree nounwind
declare !dbg !5093 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !5096 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !5097 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !5100 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5138, metadata !DIExpression()), !dbg !5143
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !5144
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5139, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5143
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5145, metadata !DIExpression()), !dbg !5148
  %3 = load i32, ptr %0, align 8, !dbg !5150, !tbaa !1427
  %4 = and i32 %3, 32, !dbg !5151
  %5 = icmp eq i32 %4, 0, !dbg !5151
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !5141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5143
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !5152
  %7 = icmp eq i32 %6, 0, !dbg !5153
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !5142, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5143
  br i1 %5, label %8, label %18, !dbg !5154

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5156
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !5139, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5143
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5157
  %11 = xor i1 %7, true, !dbg !5157
  %12 = sext i1 %11 to i32, !dbg !5157
  br i1 %10, label %21, label %13, !dbg !5157

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !5158
  %15 = load i32, ptr %14, align 4, !dbg !5158, !tbaa !1168
  %16 = icmp ne i32 %15, 9, !dbg !5159
  %17 = sext i1 %16 to i32, !dbg !5160
  br label %21, !dbg !5160

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5161

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !5163
  store i32 0, ptr %20, align 4, !dbg !5165, !tbaa !1168
  br label %21, !dbg !5163

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5143
  ret i32 %22, !dbg !5166
}

; Function Attrs: nounwind
declare !dbg !5167 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5170 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5175, metadata !DIExpression()), !dbg !5180
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5176, metadata !DIExpression()), !dbg !5180
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5177, metadata !DIExpression()), !dbg !5180
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5178, metadata !DIExpression()), !dbg !5180
  %5 = icmp eq ptr %1, null, !dbg !5181
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5183
  %7 = select i1 %5, ptr @.str.175, ptr %1, !dbg !5183
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5183
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !5177, metadata !DIExpression()), !dbg !5180
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !5176, metadata !DIExpression()), !dbg !5180
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5175, metadata !DIExpression()), !dbg !5180
  %9 = icmp eq ptr %3, null, !dbg !5184
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5186
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5178, metadata !DIExpression()), !dbg !5180
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #38, !dbg !5187
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5179, metadata !DIExpression()), !dbg !5180
  %12 = icmp ult i64 %11, -3, !dbg !5188
  br i1 %12, label %13, label %17, !dbg !5190

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #39, !dbg !5191
  %15 = icmp eq i32 %14, 0, !dbg !5191
  br i1 %15, label %16, label %29, !dbg !5192

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5193, metadata !DIExpression()), !dbg !5198
  call void @llvm.dbg.value(metadata ptr %10, metadata !5200, metadata !DIExpression()), !dbg !5205
  call void @llvm.dbg.value(metadata i32 0, metadata !5203, metadata !DIExpression()), !dbg !5205
  call void @llvm.dbg.value(metadata i64 8, metadata !5204, metadata !DIExpression()), !dbg !5205
  store i64 0, ptr %10, align 1, !dbg !5207
  br label %29, !dbg !5208

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5209
  br i1 %18, label %19, label %20, !dbg !5211

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !5212
  unreachable, !dbg !5212

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5213

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #38, !dbg !5215
  br i1 %23, label %29, label %24, !dbg !5216

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5217
  br i1 %25, label %29, label %26, !dbg !5220

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5221, !tbaa !1177
  %28 = zext i8 %27 to i32, !dbg !5222
  store i32 %28, ptr %6, align 4, !dbg !5223, !tbaa !1168
  br label %29, !dbg !5224

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5180
  ret i64 %30, !dbg !5225
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5226 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !5231 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5233, metadata !DIExpression()), !dbg !5237
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5234, metadata !DIExpression()), !dbg !5237
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5235, metadata !DIExpression()), !dbg !5237
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5238
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5238
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5236, metadata !DIExpression()), !dbg !5237
  br i1 %5, label %6, label %8, !dbg !5240

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #41, !dbg !5241
  store i32 12, ptr %7, align 4, !dbg !5243, !tbaa !1168
  br label %12, !dbg !5244

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5238
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5236, metadata !DIExpression()), !dbg !5237
  call void @llvm.dbg.value(metadata ptr %0, metadata !5245, metadata !DIExpression()), !dbg !5249
  call void @llvm.dbg.value(metadata i64 %9, metadata !5248, metadata !DIExpression()), !dbg !5249
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5251
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #45, !dbg !5252
  br label %12, !dbg !5253

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5237
  ret ptr %13, !dbg !5254
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5255 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !5262
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5258, metadata !DIExpression(), metadata !5262, metadata ptr %2, metadata !DIExpression()), !dbg !5263
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5257, metadata !DIExpression()), !dbg !5263
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !5264
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !5265
  %4 = icmp eq i32 %3, 0, !dbg !5265
  br i1 %4, label %5, label %12, !dbg !5267

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5268, metadata !DIExpression()), !dbg !5272
  call void @llvm.dbg.value(metadata ptr @.str.180, metadata !5271, metadata !DIExpression()), !dbg !5272
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.180, i64 2), !dbg !5275
  %7 = icmp eq i32 %6, 0, !dbg !5276
  br i1 %7, label %11, label %8, !dbg !5277

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5268, metadata !DIExpression()), !dbg !5278
  call void @llvm.dbg.value(metadata ptr @.str.1.181, metadata !5271, metadata !DIExpression()), !dbg !5278
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.181, i64 6), !dbg !5280
  %10 = icmp eq i32 %9, 0, !dbg !5281
  br i1 %10, label %11, label %12, !dbg !5282

11:                                               ; preds = %8, %5
  br label %12, !dbg !5283

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5263
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !5284
  ret i1 %13, !dbg !5284
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5285 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5289, metadata !DIExpression()), !dbg !5292
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5290, metadata !DIExpression()), !dbg !5292
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5291, metadata !DIExpression()), !dbg !5292
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !5293
  ret i32 %4, !dbg !5294
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5295 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5299, metadata !DIExpression()), !dbg !5300
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !5301
  ret ptr %2, !dbg !5302
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5303 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5305, metadata !DIExpression()), !dbg !5307
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !5308
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5306, metadata !DIExpression()), !dbg !5307
  ret ptr %2, !dbg !5309
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5310 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5312, metadata !DIExpression()), !dbg !5319
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5313, metadata !DIExpression()), !dbg !5319
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5314, metadata !DIExpression()), !dbg !5319
  call void @llvm.dbg.value(metadata i32 %0, metadata !5305, metadata !DIExpression()), !dbg !5320
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !5322
  call void @llvm.dbg.value(metadata ptr %4, metadata !5306, metadata !DIExpression()), !dbg !5320
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5315, metadata !DIExpression()), !dbg !5319
  %5 = icmp eq ptr %4, null, !dbg !5323
  br i1 %5, label %6, label %9, !dbg !5324

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5325
  br i1 %7, label %19, label %8, !dbg !5328

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5329, !tbaa !1177
  br label %19, !dbg !5330

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !5331
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5316, metadata !DIExpression()), !dbg !5332
  %11 = icmp ult i64 %10, %2, !dbg !5333
  br i1 %11, label %12, label %14, !dbg !5335

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5336
  call void @llvm.dbg.value(metadata ptr %1, metadata !5338, metadata !DIExpression()), !dbg !5343
  call void @llvm.dbg.value(metadata ptr %4, metadata !5341, metadata !DIExpression()), !dbg !5343
  call void @llvm.dbg.value(metadata i64 %13, metadata !5342, metadata !DIExpression()), !dbg !5343
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #38, !dbg !5345
  br label %19, !dbg !5346

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5347
  br i1 %15, label %19, label %16, !dbg !5350

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5351
  call void @llvm.dbg.value(metadata ptr %1, metadata !5338, metadata !DIExpression()), !dbg !5353
  call void @llvm.dbg.value(metadata ptr %4, metadata !5341, metadata !DIExpression()), !dbg !5353
  call void @llvm.dbg.value(metadata i64 %17, metadata !5342, metadata !DIExpression()), !dbg !5353
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !5355
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5356
  store i8 0, ptr %18, align 1, !dbg !5357, !tbaa !1177
  br label %19, !dbg !5358

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5359
  ret i32 %20, !dbg !5360
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
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!69, !442, !684, !688, !703, !975, !1009, !1014, !1016, !1019, !1021, !1023, !754, !768, !815, !1025, !969, !1031, !1064, !1066, !1068, !991, !1070, !1072, !1074, !1076}
!llvm.ident = !{!1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078, !1078}
!llvm.module.flags = !{!1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/unexpand.c", directory: "/src", checksumkind: CSK_MD5, checksum: "2f40f86ff2e1751a61c8225ac9d0fd19")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 66)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 9)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 584, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 73)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 680, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 85)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 80)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 103, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 50)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 104, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 62)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 285, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 1)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 286, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 10)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !2, line: 286, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 24)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !2, line: 291, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 15)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "longopts", scope: !69, file: !2, line: 62, type: !430, isLocal: true, isDefinition: true)
!69 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/unexpand.o -MD -MP -MF src/.deps/unexpand.Tpo -c src/unexpand.c -o src/.unexpand.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !106, globals: !116, splitDebugInlining: false, nameTableKind: None)
!70 = !{!71, !75, !81, !96, !100, !103}
!71 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !2, line: 57, baseType: !72, size: 32, elements: !73)
!72 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!73 = !{!74}
!74 = !DIEnumerator(name: "CONVERT_FIRST_ONLY_OPTION", value: 256)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 337, baseType: !77, size: 32, elements: !78)
!76 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!77 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!78 = !{!79, !80}
!79 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!80 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !82, line: 46, baseType: !72, size: 32, elements: !83)
!82 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!83 = !{!84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!84 = !DIEnumerator(name: "_ISupper", value: 256)
!85 = !DIEnumerator(name: "_ISlower", value: 512)
!86 = !DIEnumerator(name: "_ISalpha", value: 1024)
!87 = !DIEnumerator(name: "_ISdigit", value: 2048)
!88 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!89 = !DIEnumerator(name: "_ISspace", value: 8192)
!90 = !DIEnumerator(name: "_ISprint", value: 16384)
!91 = !DIEnumerator(name: "_ISgraph", value: 32768)
!92 = !DIEnumerator(name: "_ISblank", value: 1)
!93 = !DIEnumerator(name: "_IScntrl", value: 2)
!94 = !DIEnumerator(name: "_ISpunct", value: 4)
!95 = !DIEnumerator(name: "_ISalnum", value: 8)
!96 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !97, line: 127, baseType: !72, size: 32, elements: !98)
!97 = !DIFile(filename: "./lib/mcel.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1a3948cda8366fd81b1605726e5920d0")
!98 = !{!99}
!99 = !DIEnumerator(name: "MCEL_LEN_MAX", value: 4)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !97, line: 131, baseType: !72, size: 32, elements: !101)
!101 = !{!102}
!102 = !DIEnumerator(name: "MCEL_ERR_MIN", value: 128)
!103 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !97, line: 130, baseType: !72, size: 32, elements: !104)
!104 = !{!105}
!105 = !DIEnumerator(name: "MCEL_CHAR_MAX", value: 1114111)
!106 = !{!107, !108, !77, !109, !110, !113, !115}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!109 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !111, line: 18, baseType: !112)
!111 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!112 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!115 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!116 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !117, !122, !127, !132, !137, !142, !225, !230, !232, !237, !242, !247, !249, !251, !256, !258, !260, !262, !267, !272, !274, !276, !278, !280, !282, !284, !289, !294, !296, !301, !303, !305, !307, !309, !311, !316, !318, !320, !325, !330, !335, !340, !342, !344, !349, !351, !67, !353, !423, !428}
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !2, line: 314, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 14)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !2, line: 314, type: !124, isLocal: true, isDefinition: true)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 16)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !2, line: 322, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 28)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !76, line: 729, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 56)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !76, line: 736, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 75)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !144, file: !76, line: 575, type: !77, isLocal: true, isDefinition: true)
!144 = distinct !DISubprogram(name: "oputs_", scope: !76, file: !76, line: 573, type: !145, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !147)
!145 = !DISubroutineType(cc: DW_CC_nocall, types: !146)
!146 = !{null, !113, !113}
!147 = !{!148, !149, !150, !153, !155, !156, !157, !161, !162, !163, !164, !166, !219, !220, !221, !223, !224}
!148 = !DILocalVariable(name: "program", arg: 1, scope: !144, file: !76, line: 573, type: !113)
!149 = !DILocalVariable(name: "option", arg: 2, scope: !144, file: !76, line: 573, type: !113)
!150 = !DILocalVariable(name: "term", scope: !151, file: !76, line: 585, type: !113)
!151 = distinct !DILexicalBlock(scope: !152, file: !76, line: 582, column: 5)
!152 = distinct !DILexicalBlock(scope: !144, file: !76, line: 581, column: 7)
!153 = !DILocalVariable(name: "double_space", scope: !144, file: !76, line: 594, type: !154)
!154 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!155 = !DILocalVariable(name: "first_word", scope: !144, file: !76, line: 595, type: !113)
!156 = !DILocalVariable(name: "option_text", scope: !144, file: !76, line: 596, type: !113)
!157 = !DILocalVariable(name: "s", scope: !158, file: !76, line: 608, type: !113)
!158 = distinct !DILexicalBlock(scope: !159, file: !76, line: 605, column: 5)
!159 = distinct !DILexicalBlock(scope: !160, file: !76, line: 604, column: 12)
!160 = distinct !DILexicalBlock(scope: !144, file: !76, line: 597, column: 7)
!161 = !DILocalVariable(name: "spaces", scope: !158, file: !76, line: 609, type: !110)
!162 = !DILocalVariable(name: "anchor_len", scope: !144, file: !76, line: 620, type: !110)
!163 = !DILocalVariable(name: "desc_text", scope: !144, file: !76, line: 625, type: !113)
!164 = !DILocalVariable(name: "__ptr", scope: !165, file: !76, line: 644, type: !113)
!165 = distinct !DILexicalBlock(scope: !144, file: !76, line: 644, column: 3)
!166 = !DILocalVariable(name: "__stream", scope: !165, file: !76, line: 644, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !170)
!169 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !172)
!171 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!172 = !{!173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !188, !190, !191, !192, !196, !197, !199, !200, !203, !205, !208, !211, !212, !213, !214, !215}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !170, file: !171, line: 51, baseType: !77, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !170, file: !171, line: 54, baseType: !107, size: 64, offset: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !170, file: !171, line: 55, baseType: !107, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !170, file: !171, line: 56, baseType: !107, size: 64, offset: 192)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !170, file: !171, line: 57, baseType: !107, size: 64, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !170, file: !171, line: 58, baseType: !107, size: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !170, file: !171, line: 59, baseType: !107, size: 64, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !170, file: !171, line: 60, baseType: !107, size: 64, offset: 448)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !170, file: !171, line: 61, baseType: !107, size: 64, offset: 512)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !170, file: !171, line: 64, baseType: !107, size: 64, offset: 576)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !170, file: !171, line: 65, baseType: !107, size: 64, offset: 640)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !170, file: !171, line: 66, baseType: !107, size: 64, offset: 704)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !170, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !171, line: 36, flags: DIFlagFwdDecl)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !170, file: !171, line: 70, baseType: !189, size: 64, offset: 832)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !170, file: !171, line: 72, baseType: !77, size: 32, offset: 896)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !170, file: !171, line: 73, baseType: !77, size: 32, offset: 928)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !170, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !194, line: 152, baseType: !195)
!194 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!195 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !170, file: !171, line: 77, baseType: !109, size: 16, offset: 1024)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !170, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!198 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !170, file: !171, line: 79, baseType: !49, size: 8, offset: 1048)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !170, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !171, line: 43, baseType: null)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !170, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !194, line: 153, baseType: !195)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !170, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !171, line: 37, flags: DIFlagFwdDecl)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !170, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !171, line: 38, flags: DIFlagFwdDecl)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !170, file: !171, line: 93, baseType: !189, size: 64, offset: 1344)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !170, file: !171, line: 94, baseType: !108, size: 64, offset: 1408)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !170, file: !171, line: 95, baseType: !110, size: 64, offset: 1472)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !170, file: !171, line: 96, baseType: !77, size: 32, offset: 1536)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !170, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 20)
!219 = !DILocalVariable(name: "__cnt", scope: !165, file: !76, line: 644, type: !110)
!220 = !DILocalVariable(name: "url_program", scope: !144, file: !76, line: 648, type: !113)
!221 = !DILocalVariable(name: "__ptr", scope: !222, file: !76, line: 686, type: !113)
!222 = distinct !DILexicalBlock(scope: !144, file: !76, line: 686, column: 3)
!223 = !DILocalVariable(name: "__stream", scope: !222, file: !76, line: 686, type: !167)
!224 = !DILocalVariable(name: "__cnt", scope: !222, file: !76, line: 686, type: !110)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !76, line: 585, type: !227, isLocal: true, isDefinition: true)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !228)
!228 = !{!229}
!229 = !DISubrange(count: 5)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !76, line: 586, type: !227, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !76, line: 595, type: !234, isLocal: true, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 4)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !76, line: 620, type: !239, isLocal: true, isDefinition: true)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !240)
!240 = !{!241}
!241 = !DISubrange(count: 6)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !76, line: 648, type: !244, isLocal: true, isDefinition: true)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 2)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !76, line: 648, type: !227, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !76, line: 649, type: !234, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !76, line: 649, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 3)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !76, line: 650, type: !227, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !76, line: 651, type: !239, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !76, line: 651, type: !239, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !76, line: 652, type: !264, isLocal: true, isDefinition: true)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 7)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !76, line: 653, type: !269, isLocal: true, isDefinition: true)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 8)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !76, line: 654, type: !54, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !76, line: 655, type: !54, isLocal: true, isDefinition: true)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !76, line: 656, type: !54, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !76, line: 657, type: !54, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !76, line: 663, type: !264, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !76, line: 664, type: !54, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !76, line: 669, type: !286, isLocal: true, isDefinition: true)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 17)
!289 = !DIGlobalVariableExpression(var: !290, expr: !DIExpression())
!290 = distinct !DIGlobalVariable(scope: null, file: !76, line: 669, type: !291, isLocal: true, isDefinition: true)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !292)
!292 = !{!293}
!293 = !DISubrange(count: 40)
!294 = !DIGlobalVariableExpression(var: !295, expr: !DIExpression())
!295 = distinct !DIGlobalVariable(scope: null, file: !76, line: 676, type: !64, isLocal: true, isDefinition: true)
!296 = !DIGlobalVariableExpression(var: !297, expr: !DIExpression())
!297 = distinct !DIGlobalVariable(scope: null, file: !76, line: 676, type: !298, isLocal: true, isDefinition: true)
!298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !299)
!299 = !{!300}
!300 = !DISubrange(count: 61)
!301 = !DIGlobalVariableExpression(var: !302, expr: !DIExpression())
!302 = distinct !DIGlobalVariable(scope: null, file: !76, line: 679, type: !253, isLocal: true, isDefinition: true)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !76, line: 683, type: !227, isLocal: true, isDefinition: true)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !76, line: 688, type: !227, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !76, line: 691, type: !269, isLocal: true, isDefinition: true)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !76, line: 839, type: !124, isLocal: true, isDefinition: true)
!311 = !DIGlobalVariableExpression(var: !312, expr: !DIExpression())
!312 = distinct !DIGlobalVariable(scope: null, file: !76, line: 840, type: !313, isLocal: true, isDefinition: true)
!313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !314)
!314 = !{!315}
!315 = !DISubrange(count: 22)
!316 = !DIGlobalVariableExpression(var: !317, expr: !DIExpression())
!317 = distinct !DIGlobalVariable(scope: null, file: !76, line: 841, type: !64, isLocal: true, isDefinition: true)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !76, line: 862, type: !234, isLocal: true, isDefinition: true)
!320 = !DIGlobalVariableExpression(var: !321, expr: !DIExpression())
!321 = distinct !DIGlobalVariable(scope: null, file: !76, line: 868, type: !322, isLocal: true, isDefinition: true)
!322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !323)
!323 = !{!324}
!324 = !DISubrange(count: 71)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !76, line: 875, type: !327, isLocal: true, isDefinition: true)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 27)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !76, line: 877, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 51)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !76, line: 877, type: !337, isLocal: true, isDefinition: true)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 12)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !227, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !234, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !2, line: 66, type: !346, isLocal: true, isDefinition: true)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 11)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !227, isLocal: true, isDefinition: true)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !2, line: 68, type: !269, isLocal: true, isDefinition: true)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(name: "line_in", scope: !355, file: !2, line: 127, type: !420, isLocal: true, isDefinition: true)
!355 = distinct !DISubprogram(name: "unexpand", scope: !2, file: !2, line: 114, type: !356, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !358)
!356 = !DISubroutineType(types: !357)
!357 = !{null}
!358 = !{!359, !360, !361, !375, !387, !388, !394, !395, !396, !397, !398, !399, !403, !406, !409, !414, !415, !416, !418, !419}
!359 = !DILocalVariable(name: "fp", scope: !355, file: !2, line: 117, type: !167)
!360 = !DILocalVariable(name: "pending_blank", scope: !355, file: !2, line: 122, type: !107)
!361 = !DILocalVariable(name: "mbbuf", scope: !355, file: !2, line: 128, type: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbbuf_t", file: !363, line: 50, baseType: !364)
!363 = !DIFile(filename: "./lib/mbbuf.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0ec2f2727b8356ce94eb797f3e7bb5fd")
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 43, size: 320, elements: !365)
!365 = !{!366, !367, !368, !373, !374}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !364, file: !363, line: 45, baseType: !107, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !364, file: !363, line: 46, baseType: !167, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !364, file: !363, line: 47, baseType: !369, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !370, line: 130, baseType: !371)
!370 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !372, line: 18, baseType: !195)
!372 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!373 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !364, file: !363, line: 48, baseType: !369, size: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !364, file: !363, line: 49, baseType: !369, size: 64, offset: 256)
!375 = !DILocalVariable(name: "g", scope: !376, file: !2, line: 139, type: !377)
!376 = distinct !DILexicalBlock(scope: !355, file: !2, line: 137, column: 5)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !97, line: 143, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 138, size: 64, elements: !379)
!379 = !{!380, !385, !386}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !378, file: !97, line: 140, baseType: !381, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !382, line: 37, baseType: !383)
!382 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !194, line: 57, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !194, line: 42, baseType: !72)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !378, file: !97, line: 141, baseType: !115, size: 8, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !378, file: !97, line: 142, baseType: !115, size: 8, offset: 40)
!387 = !DILocalVariable(name: "convert", scope: !376, file: !2, line: 142, type: !154)
!388 = !DILocalVariable(name: "column", scope: !376, file: !2, line: 149, type: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "colno", file: !390, line: 20, baseType: !391)
!390 = !DIFile(filename: "src/expand-common.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a812a23c6054c0178c7555c3090cc098")
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !392, line: 101, baseType: !393)
!392 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !194, line: 72, baseType: !195)
!394 = !DILocalVariable(name: "next_tab_column", scope: !376, file: !2, line: 152, type: !389)
!395 = !DILocalVariable(name: "tab_index", scope: !376, file: !2, line: 155, type: !369)
!396 = !DILocalVariable(name: "one_blank_before_tab_stop", scope: !376, file: !2, line: 158, type: !154)
!397 = !DILocalVariable(name: "prev_blank", scope: !376, file: !2, line: 163, type: !154)
!398 = !DILocalVariable(name: "pending", scope: !376, file: !2, line: 166, type: !369)
!399 = !DILocalVariable(name: "blank", scope: !400, file: !2, line: 179, type: !154)
!400 = distinct !DILexicalBlock(scope: !401, file: !2, line: 178, column: 13)
!401 = distinct !DILexicalBlock(scope: !402, file: !2, line: 177, column: 15)
!402 = distinct !DILexicalBlock(scope: !376, file: !2, line: 172, column: 9)
!403 = !DILocalVariable(name: "last_tab", scope: !404, file: !2, line: 183, type: !154)
!404 = distinct !DILexicalBlock(scope: !405, file: !2, line: 182, column: 17)
!405 = distinct !DILexicalBlock(scope: !400, file: !2, line: 181, column: 19)
!406 = !DILocalVariable(name: "width", scope: !407, file: !2, line: 239, type: !77)
!407 = distinct !DILexicalBlock(scope: !408, file: !2, line: 238, column: 17)
!408 = distinct !DILexicalBlock(scope: !405, file: !2, line: 229, column: 24)
!409 = !DILocalVariable(name: "__ptr", scope: !410, file: !2, line: 248, type: !113)
!410 = distinct !DILexicalBlock(scope: !411, file: !2, line: 248, column: 23)
!411 = distinct !DILexicalBlock(scope: !412, file: !2, line: 248, column: 23)
!412 = distinct !DILexicalBlock(scope: !413, file: !2, line: 245, column: 17)
!413 = distinct !DILexicalBlock(scope: !400, file: !2, line: 244, column: 19)
!414 = !DILocalVariable(name: "__stream", scope: !410, file: !2, line: 248, type: !167)
!415 = !DILocalVariable(name: "__cnt", scope: !410, file: !2, line: 248, type: !110)
!416 = !DILocalVariable(name: "__ptr", scope: !417, file: !2, line: 264, type: !113)
!417 = distinct !DILexicalBlock(scope: !402, file: !2, line: 264, column: 11)
!418 = !DILocalVariable(name: "__stream", scope: !417, file: !2, line: 264, type: !167)
!419 = !DILocalVariable(name: "__cnt", scope: !417, file: !2, line: 264, type: !110)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2097152, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 262144)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !2, line: 241, type: !425, isLocal: true, isDefinition: true)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 23)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !76, line: 952, type: !337, isLocal: true, isDefinition: true)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 1536, elements: !240)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !433, line: 50, size: 256, elements: !434)
!433 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!434 = !{!435, !436, !437, !439}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !432, file: !433, line: 52, baseType: !113, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !432, file: !433, line: 55, baseType: !77, size: 32, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !432, file: !433, line: 56, baseType: !438, size: 64, offset: 128)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !432, file: !433, line: 57, baseType: !77, size: 32, offset: 192)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(name: "convert_entire_line", scope: !442, file: !443, line: 30, type: !154, isLocal: false, isDefinition: true)
!442 = distinct !DICompileUnit(language: DW_LANG_C11, file: !443, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/expand-common.o -MD -MP -MF src/.deps/expand-common.Tpo -c src/expand-common.c -o src/.expand-common.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !444, retainedTypes: !468, globals: !469, splitDebugInlining: false, nameTableKind: None)
!443 = !DIFile(filename: "src/expand-common.c", directory: "/src", checksumkind: CSK_MD5, checksum: "942c25878b2cf9f4cd3ad8d127f8f292")
!444 = !{!81, !445, !459}
!445 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !446, line: 42, baseType: !72, size: 32, elements: !447)
!446 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!447 = !{!448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458}
!448 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!449 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!450 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!451 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!452 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!453 = !DIEnumerator(name: "c_quoting_style", value: 5)
!454 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!455 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!456 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!457 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!458 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!459 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !460, line: 44, baseType: !72, size: 32, elements: !461)
!460 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!461 = !{!462, !463, !464, !465, !466, !467}
!462 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!463 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!464 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!465 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!466 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!467 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!468 = !{!77, !109, !108, !107, !110, !113, !115}
!469 = !{!440, !470, !472, !477, !479, !481, !486, !491, !493, !538, !540, !542, !544, !546, !551, !553, !555, !558, !560, !562, !567, !569, !574, !576, !581, !583, !585, !587, !589, !592, !595, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676}
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(name: "exit_status", scope: !442, file: !443, line: 69, type: !77, isLocal: false, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !443, line: 177, type: !474, isLocal: true, isDefinition: true)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 41)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !443, line: 188, type: !474, isLocal: true, isDefinition: true)
!479 = !DIGlobalVariableExpression(var: !480, expr: !DIExpression())
!480 = distinct !DIGlobalVariable(scope: null, file: !443, line: 207, type: !346, isLocal: true, isDefinition: true)
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !443, line: 209, type: !483, isLocal: true, isDefinition: true)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 25)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !443, line: 217, type: !488, isLocal: true, isDefinition: true)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 43)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !443, line: 326, type: !425, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(name: "prev_file", scope: !495, file: !443, line: 351, type: !107, isLocal: true, isDefinition: true)
!495 = distinct !DISubprogram(name: "next_file", scope: !443, file: !443, line: 349, type: !496, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !532)
!496 = !DISubroutineType(types: !497)
!497 = !{!498, !498}
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !500)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !500, file: !171, line: 51, baseType: !77, size: 32)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !500, file: !171, line: 54, baseType: !107, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !500, file: !171, line: 55, baseType: !107, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !500, file: !171, line: 56, baseType: !107, size: 64, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !500, file: !171, line: 57, baseType: !107, size: 64, offset: 256)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !500, file: !171, line: 58, baseType: !107, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !500, file: !171, line: 59, baseType: !107, size: 64, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !500, file: !171, line: 60, baseType: !107, size: 64, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !500, file: !171, line: 61, baseType: !107, size: 64, offset: 512)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !500, file: !171, line: 64, baseType: !107, size: 64, offset: 576)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !500, file: !171, line: 65, baseType: !107, size: 64, offset: 640)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !500, file: !171, line: 66, baseType: !107, size: 64, offset: 704)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !500, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !500, file: !171, line: 70, baseType: !516, size: 64, offset: 832)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !500, file: !171, line: 72, baseType: !77, size: 32, offset: 896)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !500, file: !171, line: 73, baseType: !77, size: 32, offset: 928)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !500, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !500, file: !171, line: 77, baseType: !109, size: 16, offset: 1024)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !500, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !500, file: !171, line: 79, baseType: !49, size: 8, offset: 1048)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !500, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !500, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !500, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !500, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !500, file: !171, line: 93, baseType: !516, size: 64, offset: 1344)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !500, file: !171, line: 94, baseType: !108, size: 64, offset: 1408)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !500, file: !171, line: 95, baseType: !110, size: 64, offset: 1472)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !500, file: !171, line: 96, baseType: !77, size: 32, offset: 1536)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !500, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!532 = !{!533, !534, !535}
!533 = !DILocalVariable(name: "fp", arg: 1, scope: !495, file: !443, line: 349, type: !498)
!534 = !DILocalVariable(name: "file", scope: !495, file: !443, line: 352, type: !107)
!535 = !DILocalVariable(name: "err", scope: !536, file: !443, line: 356, type: !77)
!536 = distinct !DILexicalBlock(scope: !537, file: !443, line: 355, column: 5)
!537 = distinct !DILexicalBlock(scope: !495, file: !443, line: 354, column: 7)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !443, line: 359, type: !244, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !443, line: 365, type: !253, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !443, line: 378, type: !244, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !443, line: 405, type: !322, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !443, line: 409, type: !548, isLocal: true, isDefinition: true)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2440, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 305)
!551 = !DIGlobalVariableExpression(var: !552, expr: !DIExpression())
!552 = distinct !DIGlobalVariable(name: "max_column_width", scope: !442, file: !443, line: 42, type: !369, isLocal: false, isDefinition: true)
!553 = !DIGlobalVariableExpression(var: !554, expr: !DIExpression())
!554 = distinct !DIGlobalVariable(name: "first_free_tab", scope: !442, file: !443, line: 54, type: !369, isLocal: true, isDefinition: true)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(name: "tab_list", scope: !442, file: !443, line: 47, type: !557, isLocal: true, isDefinition: true)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(name: "n_tabs_allocated", scope: !442, file: !443, line: 50, type: !369, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(scope: null, file: !443, line: 78, type: !425, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !443, line: 103, type: !564, isLocal: true, isDefinition: true)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: 47)
!567 = !DIGlobalVariableExpression(var: !568, expr: !DIExpression())
!568 = distinct !DIGlobalVariable(scope: null, file: !443, line: 122, type: !564, isLocal: true, isDefinition: true)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !443, line: 249, type: !571, isLocal: true, isDefinition: true)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !572)
!572 = !{!573}
!573 = !DISubrange(count: 21)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !443, line: 251, type: !129, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !443, line: 256, type: !578, isLocal: true, isDefinition: true)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !579)
!579 = !{!580}
!580 = !DISubrange(count: 45)
!581 = !DIGlobalVariableExpression(var: !582, expr: !DIExpression())
!582 = distinct !DIGlobalVariable(name: "extend_size", scope: !442, file: !443, line: 36, type: !389, isLocal: true, isDefinition: true)
!583 = !DIGlobalVariableExpression(var: !584, expr: !DIExpression())
!584 = distinct !DIGlobalVariable(name: "increment_size", scope: !442, file: !443, line: 39, type: !389, isLocal: true, isDefinition: true)
!585 = !DIGlobalVariableExpression(var: !586, expr: !DIExpression())
!586 = distinct !DIGlobalVariable(name: "tab_size", scope: !442, file: !443, line: 33, type: !389, isLocal: true, isDefinition: true)
!587 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression())
!588 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !442, file: !443, line: 66, type: !154, isLocal: true, isDefinition: true)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(name: "stdin_argv", scope: !442, file: !443, line: 60, type: !591, isLocal: true, isDefinition: true)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 128, elements: !245)
!592 = !DIGlobalVariableExpression(var: !593, expr: !DIExpression())
!593 = distinct !DIGlobalVariable(name: "file_list", scope: !442, file: !443, line: 57, type: !594, isLocal: true, isDefinition: true)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!595 = !DIGlobalVariableExpression(var: !596, expr: !DIExpression())
!596 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !597, file: !76, line: 575, type: !77, isLocal: true, isDefinition: true)
!597 = distinct !DISubprogram(name: "oputs_", scope: !76, file: !76, line: 573, type: !598, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !599)
!598 = !DISubroutineType(types: !146)
!599 = !{!600, !601, !602, !605, !606, !607, !608, !612, !613, !614, !615, !617, !618, !619, !620, !622, !623}
!600 = !DILocalVariable(name: "program", arg: 1, scope: !597, file: !76, line: 573, type: !113)
!601 = !DILocalVariable(name: "option", arg: 2, scope: !597, file: !76, line: 573, type: !113)
!602 = !DILocalVariable(name: "term", scope: !603, file: !76, line: 585, type: !113)
!603 = distinct !DILexicalBlock(scope: !604, file: !76, line: 582, column: 5)
!604 = distinct !DILexicalBlock(scope: !597, file: !76, line: 581, column: 7)
!605 = !DILocalVariable(name: "double_space", scope: !597, file: !76, line: 594, type: !154)
!606 = !DILocalVariable(name: "first_word", scope: !597, file: !76, line: 595, type: !113)
!607 = !DILocalVariable(name: "option_text", scope: !597, file: !76, line: 596, type: !113)
!608 = !DILocalVariable(name: "s", scope: !609, file: !76, line: 608, type: !113)
!609 = distinct !DILexicalBlock(scope: !610, file: !76, line: 605, column: 5)
!610 = distinct !DILexicalBlock(scope: !611, file: !76, line: 604, column: 12)
!611 = distinct !DILexicalBlock(scope: !597, file: !76, line: 597, column: 7)
!612 = !DILocalVariable(name: "spaces", scope: !609, file: !76, line: 609, type: !110)
!613 = !DILocalVariable(name: "anchor_len", scope: !597, file: !76, line: 620, type: !110)
!614 = !DILocalVariable(name: "desc_text", scope: !597, file: !76, line: 625, type: !113)
!615 = !DILocalVariable(name: "__ptr", scope: !616, file: !76, line: 644, type: !113)
!616 = distinct !DILexicalBlock(scope: !597, file: !76, line: 644, column: 3)
!617 = !DILocalVariable(name: "__stream", scope: !616, file: !76, line: 644, type: !498)
!618 = !DILocalVariable(name: "__cnt", scope: !616, file: !76, line: 644, type: !110)
!619 = !DILocalVariable(name: "url_program", scope: !597, file: !76, line: 648, type: !113)
!620 = !DILocalVariable(name: "__ptr", scope: !621, file: !76, line: 686, type: !113)
!621 = distinct !DILexicalBlock(scope: !597, file: !76, line: 686, column: 3)
!622 = !DILocalVariable(name: "__stream", scope: !621, file: !76, line: 686, type: !498)
!623 = !DILocalVariable(name: "__cnt", scope: !621, file: !76, line: 686, type: !110)
!624 = !DIGlobalVariableExpression(var: !625, expr: !DIExpression())
!625 = distinct !DIGlobalVariable(scope: null, file: !76, line: 585, type: !227, isLocal: true, isDefinition: true)
!626 = !DIGlobalVariableExpression(var: !627, expr: !DIExpression())
!627 = distinct !DIGlobalVariable(scope: null, file: !76, line: 586, type: !227, isLocal: true, isDefinition: true)
!628 = !DIGlobalVariableExpression(var: !629, expr: !DIExpression())
!629 = distinct !DIGlobalVariable(scope: null, file: !76, line: 595, type: !234, isLocal: true, isDefinition: true)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !76, line: 620, type: !239, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !76, line: 648, type: !244, isLocal: true, isDefinition: true)
!634 = !DIGlobalVariableExpression(var: !635, expr: !DIExpression())
!635 = distinct !DIGlobalVariable(scope: null, file: !76, line: 648, type: !227, isLocal: true, isDefinition: true)
!636 = !DIGlobalVariableExpression(var: !637, expr: !DIExpression())
!637 = distinct !DIGlobalVariable(scope: null, file: !76, line: 649, type: !234, isLocal: true, isDefinition: true)
!638 = !DIGlobalVariableExpression(var: !639, expr: !DIExpression())
!639 = distinct !DIGlobalVariable(scope: null, file: !76, line: 649, type: !253, isLocal: true, isDefinition: true)
!640 = !DIGlobalVariableExpression(var: !641, expr: !DIExpression())
!641 = distinct !DIGlobalVariable(scope: null, file: !76, line: 650, type: !227, isLocal: true, isDefinition: true)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(scope: null, file: !76, line: 651, type: !239, isLocal: true, isDefinition: true)
!644 = !DIGlobalVariableExpression(var: !645, expr: !DIExpression())
!645 = distinct !DIGlobalVariable(scope: null, file: !76, line: 651, type: !239, isLocal: true, isDefinition: true)
!646 = !DIGlobalVariableExpression(var: !647, expr: !DIExpression())
!647 = distinct !DIGlobalVariable(scope: null, file: !76, line: 652, type: !264, isLocal: true, isDefinition: true)
!648 = !DIGlobalVariableExpression(var: !649, expr: !DIExpression())
!649 = distinct !DIGlobalVariable(scope: null, file: !76, line: 653, type: !269, isLocal: true, isDefinition: true)
!650 = !DIGlobalVariableExpression(var: !651, expr: !DIExpression())
!651 = distinct !DIGlobalVariable(scope: null, file: !76, line: 654, type: !54, isLocal: true, isDefinition: true)
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !76, line: 655, type: !54, isLocal: true, isDefinition: true)
!654 = !DIGlobalVariableExpression(var: !655, expr: !DIExpression())
!655 = distinct !DIGlobalVariable(scope: null, file: !76, line: 656, type: !54, isLocal: true, isDefinition: true)
!656 = !DIGlobalVariableExpression(var: !657, expr: !DIExpression())
!657 = distinct !DIGlobalVariable(scope: null, file: !76, line: 657, type: !54, isLocal: true, isDefinition: true)
!658 = !DIGlobalVariableExpression(var: !659, expr: !DIExpression())
!659 = distinct !DIGlobalVariable(scope: null, file: !76, line: 663, type: !264, isLocal: true, isDefinition: true)
!660 = !DIGlobalVariableExpression(var: !661, expr: !DIExpression())
!661 = distinct !DIGlobalVariable(scope: null, file: !76, line: 664, type: !54, isLocal: true, isDefinition: true)
!662 = !DIGlobalVariableExpression(var: !663, expr: !DIExpression())
!663 = distinct !DIGlobalVariable(scope: null, file: !76, line: 669, type: !286, isLocal: true, isDefinition: true)
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !76, line: 669, type: !291, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !76, line: 676, type: !64, isLocal: true, isDefinition: true)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !76, line: 676, type: !298, isLocal: true, isDefinition: true)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !76, line: 679, type: !253, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(scope: null, file: !76, line: 683, type: !227, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(scope: null, file: !76, line: 688, type: !227, isLocal: true, isDefinition: true)
!676 = !DIGlobalVariableExpression(var: !677, expr: !DIExpression())
!677 = distinct !DIGlobalVariable(scope: null, file: !76, line: 691, type: !269, isLocal: true, isDefinition: true)
!678 = !DIGlobalVariableExpression(var: !588, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!679 = !DIGlobalVariableExpression(var: !680, expr: !DIExpression())
!680 = distinct !DIGlobalVariable(scope: null, file: !681, line: 3, type: !64, isLocal: true, isDefinition: true)
!681 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(name: "Version", scope: !684, file: !681, line: 3, type: !113, isLocal: false, isDefinition: true)
!684 = distinct !DICompileUnit(language: DW_LANG_C11, file: !681, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !685, splitDebugInlining: false, nameTableKind: None)
!685 = !{!679, !682}
!686 = !DIGlobalVariableExpression(var: !687, expr: !DIExpression())
!687 = distinct !DIGlobalVariable(name: "file_name", scope: !688, file: !689, line: 45, type: !113, isLocal: true, isDefinition: true)
!688 = distinct !DICompileUnit(language: DW_LANG_C11, file: !689, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !690, splitDebugInlining: false, nameTableKind: None)
!689 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!690 = !{!691, !693, !695, !697, !686, !699}
!691 = !DIGlobalVariableExpression(var: !692, expr: !DIExpression())
!692 = distinct !DIGlobalVariable(scope: null, file: !689, line: 121, type: !264, isLocal: true, isDefinition: true)
!693 = !DIGlobalVariableExpression(var: !694, expr: !DIExpression())
!694 = distinct !DIGlobalVariable(scope: null, file: !689, line: 121, type: !337, isLocal: true, isDefinition: true)
!695 = !DIGlobalVariableExpression(var: !696, expr: !DIExpression())
!696 = distinct !DIGlobalVariable(scope: null, file: !689, line: 123, type: !264, isLocal: true, isDefinition: true)
!697 = !DIGlobalVariableExpression(var: !698, expr: !DIExpression())
!698 = distinct !DIGlobalVariable(scope: null, file: !689, line: 126, type: !253, isLocal: true, isDefinition: true)
!699 = !DIGlobalVariableExpression(var: !700, expr: !DIExpression())
!700 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !688, file: !689, line: 55, type: !154, isLocal: true, isDefinition: true)
!701 = !DIGlobalVariableExpression(var: !702, expr: !DIExpression())
!702 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !703, file: !704, line: 66, type: !751, isLocal: false, isDefinition: true)
!703 = distinct !DICompileUnit(language: DW_LANG_C11, file: !704, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !705, globals: !706, splitDebugInlining: false, nameTableKind: None)
!704 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!705 = !{!108, !115}
!706 = !{!707, !709, !733, !735, !737, !739, !701, !741, !743, !745, !747, !749}
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !704, line: 272, type: !227, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(name: "old_file_name", scope: !711, file: !704, line: 304, type: !113, isLocal: true, isDefinition: true)
!711 = distinct !DISubprogram(name: "verror_at_line", scope: !704, file: !704, line: 298, type: !712, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !726)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !77, !77, !113, !72, !113, !714}
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !715, line: 52, baseType: !716)
!715 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !717, line: 12, baseType: !718)
!717 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !704, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !720)
!720 = !{!721, !722, !723, !724, !725}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !719, file: !704, baseType: !108, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !719, file: !704, baseType: !108, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !719, file: !704, baseType: !108, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !719, file: !704, baseType: !77, size: 32, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !719, file: !704, baseType: !77, size: 32, offset: 224)
!726 = !{!727, !728, !729, !730, !731, !732}
!727 = !DILocalVariable(name: "status", arg: 1, scope: !711, file: !704, line: 298, type: !77)
!728 = !DILocalVariable(name: "errnum", arg: 2, scope: !711, file: !704, line: 298, type: !77)
!729 = !DILocalVariable(name: "file_name", arg: 3, scope: !711, file: !704, line: 298, type: !113)
!730 = !DILocalVariable(name: "line_number", arg: 4, scope: !711, file: !704, line: 298, type: !72)
!731 = !DILocalVariable(name: "message", arg: 5, scope: !711, file: !704, line: 298, type: !113)
!732 = !DILocalVariable(name: "args", arg: 6, scope: !711, file: !704, line: 298, type: !714)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(name: "old_line_number", scope: !711, file: !704, line: 305, type: !72, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !704, line: 338, type: !234, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !704, line: 346, type: !269, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !704, line: 346, type: !244, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(name: "error_message_count", scope: !703, file: !704, line: 69, type: !72, isLocal: false, isDefinition: true)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !703, file: !704, line: 295, type: !77, isLocal: false, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(scope: null, file: !704, line: 208, type: !264, isLocal: true, isDefinition: true)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !704, line: 208, type: !571, isLocal: true, isDefinition: true)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !704, line: 214, type: !227, isLocal: true, isDefinition: true)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(name: "program_name", scope: !754, file: !755, line: 31, type: !113, isLocal: false, isDefinition: true)
!754 = distinct !DICompileUnit(language: DW_LANG_C11, file: !755, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !756, globals: !757, splitDebugInlining: false, nameTableKind: None)
!755 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!756 = !{!108, !107}
!757 = !{!752, !758, !760}
!758 = !DIGlobalVariableExpression(var: !759, expr: !DIExpression())
!759 = distinct !DIGlobalVariable(scope: null, file: !755, line: 46, type: !269, isLocal: true, isDefinition: true)
!760 = !DIGlobalVariableExpression(var: !761, expr: !DIExpression())
!761 = distinct !DIGlobalVariable(scope: null, file: !755, line: 49, type: !234, isLocal: true, isDefinition: true)
!762 = !DIGlobalVariableExpression(var: !763, expr: !DIExpression())
!763 = distinct !DIGlobalVariable(name: "utf07FF", scope: !764, file: !765, line: 46, type: !788, isLocal: true, isDefinition: true)
!764 = distinct !DISubprogram(name: "proper_name_lite", scope: !765, file: !765, line: 38, type: !766, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !770)
!765 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!766 = !DISubroutineType(types: !767)
!767 = !{!113, !113, !113}
!768 = distinct !DICompileUnit(language: DW_LANG_C11, file: !765, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !769, splitDebugInlining: false, nameTableKind: None)
!769 = !{!762}
!770 = !{!771, !772, !773, !774, !775}
!771 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !764, file: !765, line: 38, type: !113)
!772 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !764, file: !765, line: 38, type: !113)
!773 = !DILocalVariable(name: "translation", scope: !764, file: !765, line: 40, type: !113)
!774 = !DILocalVariable(name: "w", scope: !764, file: !765, line: 47, type: !381)
!775 = !DILocalVariable(name: "mbs", scope: !764, file: !765, line: 48, type: !776)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !777, line: 6, baseType: !778)
!777 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !779, line: 21, baseType: !780)
!779 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !779, line: 13, size: 64, elements: !781)
!781 = !{!782, !783}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !780, file: !779, line: 15, baseType: !77, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !780, file: !779, line: 20, baseType: !784, size: 32, offset: 32)
!784 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !780, file: !779, line: 16, size: 32, elements: !785)
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !784, file: !779, line: 18, baseType: !72, size: 32)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !784, file: !779, line: 19, baseType: !234, size: 32)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 16, elements: !245)
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(scope: null, file: !791, line: 78, type: !269, isLocal: true, isDefinition: true)
!791 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(scope: null, file: !791, line: 79, type: !239, isLocal: true, isDefinition: true)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(scope: null, file: !791, line: 80, type: !796, isLocal: true, isDefinition: true)
!796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !797)
!797 = !{!798}
!798 = !DISubrange(count: 13)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !791, line: 81, type: !796, isLocal: true, isDefinition: true)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(scope: null, file: !791, line: 82, type: !216, isLocal: true, isDefinition: true)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(scope: null, file: !791, line: 83, type: !244, isLocal: true, isDefinition: true)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(scope: null, file: !791, line: 84, type: !269, isLocal: true, isDefinition: true)
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(scope: null, file: !791, line: 85, type: !264, isLocal: true, isDefinition: true)
!809 = !DIGlobalVariableExpression(var: !810, expr: !DIExpression())
!810 = distinct !DIGlobalVariable(scope: null, file: !791, line: 86, type: !264, isLocal: true, isDefinition: true)
!811 = !DIGlobalVariableExpression(var: !812, expr: !DIExpression())
!812 = distinct !DIGlobalVariable(scope: null, file: !791, line: 87, type: !269, isLocal: true, isDefinition: true)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !815, file: !791, line: 76, type: !889, isLocal: false, isDefinition: true)
!815 = distinct !DICompileUnit(language: DW_LANG_C11, file: !791, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !816, retainedTypes: !824, globals: !825, splitDebugInlining: false, nameTableKind: None)
!816 = !{!817, !819, !81}
!817 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !818, line: 42, baseType: !72, size: 32, elements: !447)
!818 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!819 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !818, line: 254, baseType: !72, size: 32, elements: !820)
!820 = !{!821, !822, !823}
!821 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!822 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!823 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!824 = !{!108, !77, !109, !110}
!825 = !{!789, !792, !794, !799, !801, !803, !805, !807, !809, !811, !813, !826, !830, !840, !842, !847, !849, !851, !853, !855, !878, !885, !887}
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !815, file: !791, line: 92, type: !828, isLocal: false, isDefinition: true)
!828 = !DICompositeType(tag: DW_TAG_array_type, baseType: !829, size: 320, elements: !55)
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!830 = !DIGlobalVariableExpression(var: !831, expr: !DIExpression())
!831 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !815, file: !791, line: 1040, type: !832, isLocal: false, isDefinition: true)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !791, line: 56, size: 448, elements: !833)
!833 = !{!834, !835, !836, !838, !839}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !832, file: !791, line: 59, baseType: !817, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !832, file: !791, line: 62, baseType: !77, size: 32, offset: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !832, file: !791, line: 66, baseType: !837, size: 256, offset: 64)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 256, elements: !270)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !832, file: !791, line: 69, baseType: !113, size: 64, offset: 320)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !832, file: !791, line: 72, baseType: !113, size: 64, offset: 384)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !815, file: !791, line: 107, type: !832, isLocal: true, isDefinition: true)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(name: "slot0", scope: !815, file: !791, line: 831, type: !844, isLocal: true, isDefinition: true)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !845)
!845 = !{!846}
!846 = !DISubrange(count: 256)
!847 = !DIGlobalVariableExpression(var: !848, expr: !DIExpression())
!848 = distinct !DIGlobalVariable(scope: null, file: !791, line: 321, type: !244, isLocal: true, isDefinition: true)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(scope: null, file: !791, line: 357, type: !244, isLocal: true, isDefinition: true)
!851 = !DIGlobalVariableExpression(var: !852, expr: !DIExpression())
!852 = distinct !DIGlobalVariable(scope: null, file: !791, line: 358, type: !244, isLocal: true, isDefinition: true)
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression())
!854 = distinct !DIGlobalVariable(scope: null, file: !791, line: 199, type: !264, isLocal: true, isDefinition: true)
!855 = !DIGlobalVariableExpression(var: !856, expr: !DIExpression())
!856 = distinct !DIGlobalVariable(name: "quote", scope: !857, file: !791, line: 228, type: !876, isLocal: true, isDefinition: true)
!857 = distinct !DISubprogram(name: "gettext_quote", scope: !791, file: !791, line: 197, type: !858, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !860)
!858 = !DISubroutineType(types: !859)
!859 = !{!113, !113, !817}
!860 = !{!861, !862, !863, !864, !865}
!861 = !DILocalVariable(name: "msgid", arg: 1, scope: !857, file: !791, line: 197, type: !113)
!862 = !DILocalVariable(name: "s", arg: 2, scope: !857, file: !791, line: 197, type: !817)
!863 = !DILocalVariable(name: "translation", scope: !857, file: !791, line: 199, type: !113)
!864 = !DILocalVariable(name: "w", scope: !857, file: !791, line: 229, type: !381)
!865 = !DILocalVariable(name: "mbs", scope: !857, file: !791, line: 230, type: !866)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !777, line: 6, baseType: !867)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !779, line: 21, baseType: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !779, line: 13, size: 64, elements: !869)
!869 = !{!870, !871}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !868, file: !779, line: 15, baseType: !77, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !868, file: !779, line: 20, baseType: !872, size: 32, offset: 32)
!872 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !868, file: !779, line: 16, size: 32, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !872, file: !779, line: 18, baseType: !72, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !872, file: !779, line: 19, baseType: !234, size: 32)
!876 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 64, elements: !877)
!877 = !{!246, !236}
!878 = !DIGlobalVariableExpression(var: !879, expr: !DIExpression())
!879 = distinct !DIGlobalVariable(name: "slotvec", scope: !815, file: !791, line: 834, type: !880, isLocal: true, isDefinition: true)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !791, line: 823, size: 128, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !881, file: !791, line: 825, baseType: !110, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !881, file: !791, line: 826, baseType: !107, size: 64, offset: 64)
!885 = !DIGlobalVariableExpression(var: !886, expr: !DIExpression())
!886 = distinct !DIGlobalVariable(name: "nslots", scope: !815, file: !791, line: 832, type: !77, isLocal: true, isDefinition: true)
!887 = !DIGlobalVariableExpression(var: !888, expr: !DIExpression())
!888 = distinct !DIGlobalVariable(name: "slotvec0", scope: !815, file: !791, line: 833, type: !881, isLocal: true, isDefinition: true)
!889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !890, size: 704, elements: !347)
!890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!891 = !DIGlobalVariableExpression(var: !892, expr: !DIExpression())
!892 = distinct !DIGlobalVariable(scope: null, file: !893, line: 67, type: !337, isLocal: true, isDefinition: true)
!893 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!894 = !DIGlobalVariableExpression(var: !895, expr: !DIExpression())
!895 = distinct !DIGlobalVariable(scope: null, file: !893, line: 69, type: !264, isLocal: true, isDefinition: true)
!896 = !DIGlobalVariableExpression(var: !897, expr: !DIExpression())
!897 = distinct !DIGlobalVariable(scope: null, file: !893, line: 83, type: !264, isLocal: true, isDefinition: true)
!898 = !DIGlobalVariableExpression(var: !899, expr: !DIExpression())
!899 = distinct !DIGlobalVariable(scope: null, file: !893, line: 83, type: !234, isLocal: true, isDefinition: true)
!900 = !DIGlobalVariableExpression(var: !901, expr: !DIExpression())
!901 = distinct !DIGlobalVariable(scope: null, file: !893, line: 85, type: !244, isLocal: true, isDefinition: true)
!902 = !DIGlobalVariableExpression(var: !903, expr: !DIExpression())
!903 = distinct !DIGlobalVariable(scope: null, file: !893, line: 88, type: !904, isLocal: true, isDefinition: true)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !905)
!905 = !{!906}
!906 = !DISubrange(count: 171)
!907 = !DIGlobalVariableExpression(var: !908, expr: !DIExpression())
!908 = distinct !DIGlobalVariable(scope: null, file: !893, line: 88, type: !909, isLocal: true, isDefinition: true)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !910)
!910 = !{!911}
!911 = !DISubrange(count: 34)
!912 = !DIGlobalVariableExpression(var: !913, expr: !DIExpression())
!913 = distinct !DIGlobalVariable(scope: null, file: !893, line: 105, type: !124, isLocal: true, isDefinition: true)
!914 = !DIGlobalVariableExpression(var: !915, expr: !DIExpression())
!915 = distinct !DIGlobalVariable(scope: null, file: !893, line: 109, type: !425, isLocal: true, isDefinition: true)
!916 = !DIGlobalVariableExpression(var: !917, expr: !DIExpression())
!917 = distinct !DIGlobalVariable(scope: null, file: !893, line: 113, type: !129, isLocal: true, isDefinition: true)
!918 = !DIGlobalVariableExpression(var: !919, expr: !DIExpression())
!919 = distinct !DIGlobalVariable(scope: null, file: !893, line: 120, type: !920, isLocal: true, isDefinition: true)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !921)
!921 = !{!922}
!922 = !DISubrange(count: 32)
!923 = !DIGlobalVariableExpression(var: !924, expr: !DIExpression())
!924 = distinct !DIGlobalVariable(scope: null, file: !893, line: 127, type: !925, isLocal: true, isDefinition: true)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !926)
!926 = !{!927}
!927 = !DISubrange(count: 36)
!928 = !DIGlobalVariableExpression(var: !929, expr: !DIExpression())
!929 = distinct !DIGlobalVariable(scope: null, file: !893, line: 134, type: !291, isLocal: true, isDefinition: true)
!930 = !DIGlobalVariableExpression(var: !931, expr: !DIExpression())
!931 = distinct !DIGlobalVariable(scope: null, file: !893, line: 142, type: !932, isLocal: true, isDefinition: true)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !933)
!933 = !{!934}
!934 = !DISubrange(count: 44)
!935 = !DIGlobalVariableExpression(var: !936, expr: !DIExpression())
!936 = distinct !DIGlobalVariable(scope: null, file: !893, line: 150, type: !937, isLocal: true, isDefinition: true)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !938)
!938 = !{!939}
!939 = !DISubrange(count: 48)
!940 = !DIGlobalVariableExpression(var: !941, expr: !DIExpression())
!941 = distinct !DIGlobalVariable(scope: null, file: !893, line: 159, type: !942, isLocal: true, isDefinition: true)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !943)
!943 = !{!944}
!944 = !DISubrange(count: 52)
!945 = !DIGlobalVariableExpression(var: !946, expr: !DIExpression())
!946 = distinct !DIGlobalVariable(scope: null, file: !893, line: 170, type: !947, isLocal: true, isDefinition: true)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !948)
!948 = !{!949}
!949 = !DISubrange(count: 60)
!950 = !DIGlobalVariableExpression(var: !951, expr: !DIExpression())
!951 = distinct !DIGlobalVariable(scope: null, file: !893, line: 248, type: !216, isLocal: true, isDefinition: true)
!952 = !DIGlobalVariableExpression(var: !953, expr: !DIExpression())
!953 = distinct !DIGlobalVariable(scope: null, file: !893, line: 248, type: !313, isLocal: true, isDefinition: true)
!954 = !DIGlobalVariableExpression(var: !955, expr: !DIExpression())
!955 = distinct !DIGlobalVariable(scope: null, file: !893, line: 254, type: !216, isLocal: true, isDefinition: true)
!956 = !DIGlobalVariableExpression(var: !957, expr: !DIExpression())
!957 = distinct !DIGlobalVariable(scope: null, file: !893, line: 254, type: !119, isLocal: true, isDefinition: true)
!958 = !DIGlobalVariableExpression(var: !959, expr: !DIExpression())
!959 = distinct !DIGlobalVariable(scope: null, file: !893, line: 254, type: !291, isLocal: true, isDefinition: true)
!960 = !DIGlobalVariableExpression(var: !961, expr: !DIExpression())
!961 = distinct !DIGlobalVariable(scope: null, file: !893, line: 259, type: !3, isLocal: true, isDefinition: true)
!962 = !DIGlobalVariableExpression(var: !963, expr: !DIExpression())
!963 = distinct !DIGlobalVariable(scope: null, file: !893, line: 259, type: !964, isLocal: true, isDefinition: true)
!964 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !965)
!965 = !{!966}
!966 = !DISubrange(count: 29)
!967 = !DIGlobalVariableExpression(var: !968, expr: !DIExpression())
!968 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !969, file: !970, line: 26, type: !972, isLocal: false, isDefinition: true)
!969 = distinct !DICompileUnit(language: DW_LANG_C11, file: !970, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !971, splitDebugInlining: false, nameTableKind: None)
!970 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!971 = !{!967}
!972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 376, elements: !565)
!973 = !DIGlobalVariableExpression(var: !974, expr: !DIExpression())
!974 = distinct !DIGlobalVariable(name: "exit_failure", scope: !975, file: !976, line: 24, type: !978, isLocal: false, isDefinition: true)
!975 = distinct !DICompileUnit(language: DW_LANG_C11, file: !976, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !977, splitDebugInlining: false, nameTableKind: None)
!976 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!977 = !{!973}
!978 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !77)
!979 = !DIGlobalVariableExpression(var: !980, expr: !DIExpression())
!980 = distinct !DIGlobalVariable(scope: null, file: !981, line: 34, type: !253, isLocal: true, isDefinition: true)
!981 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!982 = !DIGlobalVariableExpression(var: !983, expr: !DIExpression())
!983 = distinct !DIGlobalVariable(scope: null, file: !981, line: 34, type: !264, isLocal: true, isDefinition: true)
!984 = !DIGlobalVariableExpression(var: !985, expr: !DIExpression())
!985 = distinct !DIGlobalVariable(scope: null, file: !981, line: 34, type: !286, isLocal: true, isDefinition: true)
!986 = !DIGlobalVariableExpression(var: !987, expr: !DIExpression())
!987 = distinct !DIGlobalVariable(scope: null, file: !988, line: 108, type: !49, isLocal: true, isDefinition: true)
!988 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!989 = !DIGlobalVariableExpression(var: !990, expr: !DIExpression())
!990 = distinct !DIGlobalVariable(name: "internal_state", scope: !991, file: !988, line: 97, type: !994, isLocal: true, isDefinition: true)
!991 = distinct !DICompileUnit(language: DW_LANG_C11, file: !988, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !992, globals: !993, splitDebugInlining: false, nameTableKind: None)
!992 = !{!108, !110, !115}
!993 = !{!986, !989}
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !777, line: 6, baseType: !995)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !779, line: 21, baseType: !996)
!996 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !779, line: 13, size: 64, elements: !997)
!997 = !{!998, !999}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !996, file: !779, line: 15, baseType: !77, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !996, file: !779, line: 20, baseType: !1000, size: 32, offset: 32)
!1000 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !996, file: !779, line: 16, size: 32, elements: !1001)
!1001 = !{!1002, !1003}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1000, file: !779, line: 18, baseType: !72, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1000, file: !779, line: 19, baseType: !234, size: 32)
!1004 = !DIGlobalVariableExpression(var: !1005, expr: !DIExpression())
!1005 = distinct !DIGlobalVariable(scope: null, file: !1006, line: 35, type: !244, isLocal: true, isDefinition: true)
!1006 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!1007 = !DIGlobalVariableExpression(var: !1008, expr: !DIExpression())
!1008 = distinct !DIGlobalVariable(scope: null, file: !1006, line: 35, type: !239, isLocal: true, isDefinition: true)
!1009 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1010, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fadvise.o -MD -MP -MF lib/.deps/libcoreutils_a-fadvise.Tpo -c lib/fadvise.c -o lib/.libcoreutils_a-fadvise.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !1011, splitDebugInlining: false, nameTableKind: None)
!1010 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!1011 = !{!1012}
!1012 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1013, line: 44, baseType: !72, size: 32, elements: !461)
!1013 = !DIFile(filename: "lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!1014 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1015, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1015 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!1016 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1017, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1018, splitDebugInlining: false, nameTableKind: None)
!1017 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!1018 = !{!108}
!1019 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1020, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1020 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!1021 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1022, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1018, splitDebugInlining: false, nameTableKind: None)
!1022 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!1023 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1024, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1024 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!1025 = distinct !DICompileUnit(language: DW_LANG_C11, file: !893, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !1026, retainedTypes: !1018, globals: !1030, splitDebugInlining: false, nameTableKind: None)
!1026 = !{!1027}
!1027 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !893, line: 40, baseType: !72, size: 32, elements: !1028)
!1028 = !{!1029}
!1029 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!1030 = !{!891, !894, !896, !898, !900, !902, !907, !912, !914, !916, !918, !923, !928, !930, !935, !940, !945, !950, !952, !954, !956, !958, !960, !962}
!1031 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1032, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !1033, retainedTypes: !1063, splitDebugInlining: false, nameTableKind: None)
!1032 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!1033 = !{!1034, !1046}
!1034 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1035, file: !1032, line: 188, baseType: !72, size: 32, elements: !1044)
!1035 = distinct !DISubprogram(name: "x2nrealloc", scope: !1032, file: !1032, line: 176, type: !1036, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !1039)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!108, !108, !1038, !110}
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!1039 = !{!1040, !1041, !1042, !1043}
!1040 = !DILocalVariable(name: "p", arg: 1, scope: !1035, file: !1032, line: 176, type: !108)
!1041 = !DILocalVariable(name: "pn", arg: 2, scope: !1035, file: !1032, line: 176, type: !1038)
!1042 = !DILocalVariable(name: "s", arg: 3, scope: !1035, file: !1032, line: 176, type: !110)
!1043 = !DILocalVariable(name: "n", scope: !1035, file: !1032, line: 178, type: !110)
!1044 = !{!1045}
!1045 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!1046 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1047, file: !1032, line: 228, baseType: !72, size: 32, elements: !1044)
!1047 = distinct !DISubprogram(name: "xpalloc", scope: !1032, file: !1032, line: 223, type: !1048, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !1053)
!1048 = !DISubroutineType(types: !1049)
!1049 = !{!108, !108, !1050, !1051, !371, !1051}
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !1052, line: 130, baseType: !371)
!1052 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!1053 = !{!1054, !1055, !1056, !1057, !1058, !1059, !1060, !1061, !1062}
!1054 = !DILocalVariable(name: "pa", arg: 1, scope: !1047, file: !1032, line: 223, type: !108)
!1055 = !DILocalVariable(name: "pn", arg: 2, scope: !1047, file: !1032, line: 223, type: !1050)
!1056 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !1047, file: !1032, line: 223, type: !1051)
!1057 = !DILocalVariable(name: "n_max", arg: 4, scope: !1047, file: !1032, line: 223, type: !371)
!1058 = !DILocalVariable(name: "s", arg: 5, scope: !1047, file: !1032, line: 223, type: !1051)
!1059 = !DILocalVariable(name: "n0", scope: !1047, file: !1032, line: 230, type: !1051)
!1060 = !DILocalVariable(name: "n", scope: !1047, file: !1032, line: 237, type: !1051)
!1061 = !DILocalVariable(name: "nbytes", scope: !1047, file: !1032, line: 248, type: !1051)
!1062 = !DILocalVariable(name: "adjusted_nbytes", scope: !1047, file: !1032, line: 252, type: !1051)
!1063 = !{!107, !108}
!1064 = distinct !DICompileUnit(language: DW_LANG_C11, file: !981, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1065, splitDebugInlining: false, nameTableKind: None)
!1065 = !{!979, !982, !984}
!1066 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1067, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fopen.o -MD -MP -MF lib/.deps/libcoreutils_a-fopen.Tpo -c lib/fopen.c -o lib/.libcoreutils_a-fopen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1018, splitDebugInlining: false, nameTableKind: None)
!1067 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!1068 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1069, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1069 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1070 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1071, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1018, splitDebugInlining: false, nameTableKind: None)
!1071 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1072 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1006, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1073, splitDebugInlining: false, nameTableKind: None)
!1073 = !{!1004, !1007}
!1074 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1075, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1075 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1076 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1077, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1018, splitDebugInlining: false, nameTableKind: None)
!1077 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1078 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1079 = !{i32 7, !"Dwarf Version", i32 5}
!1080 = !{i32 2, !"Debug Info Version", i32 3}
!1081 = !{i32 1, !"wchar_size", i32 4}
!1082 = !{i32 8, !"PIC Level", i32 2}
!1083 = !{i32 7, !"PIE Level", i32 2}
!1084 = !{i32 7, !"uwtable", i32 2}
!1085 = !{i32 7, !"frame-pointer", i32 1}
!1086 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1087 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 73, type: !1088, scopeLine: 74, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1090)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !77}
!1090 = !{!1091}
!1091 = !DILocalVariable(name: "status", arg: 1, scope: !1087, file: !2, line: 73, type: !77)
!1092 = !DILocation(line: 0, scope: !1087)
!1093 = !DILocation(line: 75, column: 14, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1087, file: !2, line: 75, column: 7)
!1095 = !DILocation(line: 75, column: 7, scope: !1087)
!1096 = !DILocation(line: 76, column: 5, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 76, column: 5)
!1098 = !{!1099, !1099, i64 0}
!1099 = !{!"any pointer", !1100, i64 0}
!1100 = !{!"omnipotent char", !1101, i64 0}
!1101 = !{!"Simple C/C++ TBAA"}
!1102 = !DILocation(line: 79, column: 7, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 78, column: 5)
!1104 = !DILocation(line: 83, column: 7, scope: !1103)
!1105 = !DILocation(line: 729, column: 3, scope: !1106, inlinedAt: !1107)
!1106 = distinct !DISubprogram(name: "emit_stdin_note", scope: !76, file: !76, line: 727, type: !356, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69)
!1107 = distinct !DILocation(line: 87, column: 7, scope: !1103)
!1108 = !DILocation(line: 736, column: 3, scope: !1109, inlinedAt: !1110)
!1109 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !76, file: !76, line: 734, type: !356, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69)
!1110 = distinct !DILocation(line: 88, column: 7, scope: !1103)
!1111 = !DILocation(line: 90, column: 7, scope: !1103)
!1112 = !DILocation(line: 94, column: 7, scope: !1103)
!1113 = !DILocation(line: 98, column: 7, scope: !1103)
!1114 = !DILocation(line: 102, column: 7, scope: !1103)
!1115 = !DILocation(line: 103, column: 7, scope: !1103)
!1116 = !DILocation(line: 104, column: 7, scope: !1103)
!1117 = !DILocalVariable(name: "program", arg: 1, scope: !1118, file: !76, line: 836, type: !113)
!1118 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !76, file: !76, line: 836, type: !1119, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1121)
!1119 = !DISubroutineType(types: !1120)
!1120 = !{null, !113}
!1121 = !{!1117, !1122, !1129, !1130, !1132, !1133}
!1122 = !DILocalVariable(name: "infomap", scope: !1118, file: !76, line: 838, type: !1123)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1124, size: 896, elements: !265)
!1124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1125)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1118, file: !76, line: 838, size: 128, elements: !1126)
!1126 = !{!1127, !1128}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1125, file: !76, line: 838, baseType: !113, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1125, file: !76, line: 838, baseType: !113, size: 64, offset: 64)
!1129 = !DILocalVariable(name: "node", scope: !1118, file: !76, line: 848, type: !113)
!1130 = !DILocalVariable(name: "map_prog", scope: !1118, file: !76, line: 849, type: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1132 = !DILocalVariable(name: "lc_messages", scope: !1118, file: !76, line: 861, type: !113)
!1133 = !DILocalVariable(name: "url_program", scope: !1118, file: !76, line: 874, type: !113)
!1134 = !DILocation(line: 0, scope: !1118, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 105, column: 7, scope: !1103)
!1136 = !{}
!1137 = !DILocation(line: 857, column: 3, scope: !1118, inlinedAt: !1135)
!1138 = !DILocation(line: 861, column: 29, scope: !1118, inlinedAt: !1135)
!1139 = !DILocation(line: 862, column: 7, scope: !1140, inlinedAt: !1135)
!1140 = distinct !DILexicalBlock(scope: !1118, file: !76, line: 862, column: 7)
!1141 = !DILocation(line: 862, column: 19, scope: !1140, inlinedAt: !1135)
!1142 = !DILocation(line: 862, column: 22, scope: !1140, inlinedAt: !1135)
!1143 = !DILocation(line: 862, column: 7, scope: !1118, inlinedAt: !1135)
!1144 = !DILocation(line: 868, column: 7, scope: !1145, inlinedAt: !1135)
!1145 = distinct !DILexicalBlock(scope: !1140, file: !76, line: 863, column: 5)
!1146 = !DILocation(line: 870, column: 5, scope: !1145, inlinedAt: !1135)
!1147 = !DILocation(line: 875, column: 3, scope: !1118, inlinedAt: !1135)
!1148 = !DILocation(line: 877, column: 3, scope: !1118, inlinedAt: !1135)
!1149 = !DILocation(line: 107, column: 3, scope: !1087)
!1150 = !DISubprogram(name: "dcgettext", scope: !1151, file: !1151, line: 51, type: !1152, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1151 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!107, !113, !113, !77}
!1154 = !DISubprogram(name: "__fprintf_chk", scope: !1155, file: !1155, line: 93, type: !1156, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1155 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1156 = !DISubroutineType(types: !1157)
!1157 = !{!77, !1158, !77, !1159, null}
!1158 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !167)
!1159 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !113)
!1160 = !DISubprogram(name: "__printf_chk", scope: !1155, file: !1155, line: 95, type: !1161, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!77, !77, !1159, null}
!1163 = !DISubprogram(name: "fputs_unlocked", scope: !715, file: !715, line: 691, type: !1164, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1164 = !DISubroutineType(types: !1165)
!1165 = !{!77, !1159, !1158}
!1166 = !DILocation(line: 0, scope: !144)
!1167 = !DILocation(line: 581, column: 7, scope: !152)
!1168 = !{!1169, !1169, i64 0}
!1169 = !{!"int", !1100, i64 0}
!1170 = !DILocation(line: 581, column: 19, scope: !152)
!1171 = !DILocation(line: 581, column: 7, scope: !144)
!1172 = !DILocation(line: 585, column: 26, scope: !151)
!1173 = !DILocation(line: 0, scope: !151)
!1174 = !DILocation(line: 586, column: 23, scope: !151)
!1175 = !DILocation(line: 586, column: 28, scope: !151)
!1176 = !DILocation(line: 586, column: 32, scope: !151)
!1177 = !{!1100, !1100, i64 0}
!1178 = !DILocation(line: 586, column: 38, scope: !151)
!1179 = !DILocalVariable(name: "__s1", arg: 1, scope: !1180, file: !1181, line: 1359, type: !113)
!1180 = distinct !DISubprogram(name: "streq", scope: !1181, file: !1181, line: 1359, type: !1182, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1184)
!1181 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1182 = !DISubroutineType(types: !1183)
!1183 = !{!154, !113, !113}
!1184 = !{!1179, !1185}
!1185 = !DILocalVariable(name: "__s2", arg: 2, scope: !1180, file: !1181, line: 1359, type: !113)
!1186 = !DILocation(line: 0, scope: !1180, inlinedAt: !1187)
!1187 = distinct !DILocation(line: 586, column: 41, scope: !151)
!1188 = !DILocation(line: 1361, column: 11, scope: !1180, inlinedAt: !1187)
!1189 = !DILocation(line: 1361, column: 10, scope: !1180, inlinedAt: !1187)
!1190 = !DILocation(line: 586, column: 19, scope: !151)
!1191 = !DILocation(line: 587, column: 5, scope: !151)
!1192 = !DILocation(line: 588, column: 7, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !144, file: !76, line: 588, column: 7)
!1194 = !DILocation(line: 588, column: 7, scope: !144)
!1195 = !DILocation(line: 590, column: 7, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1193, file: !76, line: 589, column: 5)
!1197 = !DILocation(line: 591, column: 7, scope: !1196)
!1198 = !DILocation(line: 595, column: 37, scope: !144)
!1199 = !DILocation(line: 595, column: 35, scope: !144)
!1200 = !DILocation(line: 596, column: 29, scope: !144)
!1201 = !DILocation(line: 597, column: 8, scope: !160)
!1202 = !DILocation(line: 597, column: 7, scope: !144)
!1203 = !DILocation(line: 604, column: 24, scope: !159)
!1204 = !DILocation(line: 604, column: 12, scope: !160)
!1205 = !DILocation(line: 0, scope: !158)
!1206 = !DILocation(line: 610, column: 16, scope: !158)
!1207 = !DILocation(line: 610, column: 7, scope: !158)
!1208 = !DILocation(line: 611, column: 21, scope: !158)
!1209 = !{!1210, !1210, i64 0}
!1210 = !{!"short", !1100, i64 0}
!1211 = !DILocation(line: 611, column: 19, scope: !158)
!1212 = !DILocation(line: 611, column: 16, scope: !158)
!1213 = !DILocation(line: 610, column: 30, scope: !158)
!1214 = distinct !{!1214, !1207, !1208, !1215}
!1215 = !{!"llvm.loop.mustprogress"}
!1216 = !DILocation(line: 612, column: 18, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !158, file: !76, line: 612, column: 11)
!1218 = !DILocation(line: 612, column: 11, scope: !158)
!1219 = !DILocation(line: 620, column: 23, scope: !144)
!1220 = !DILocation(line: 625, column: 39, scope: !144)
!1221 = !DILocation(line: 626, column: 3, scope: !144)
!1222 = !DILocation(line: 626, column: 10, scope: !144)
!1223 = !DILocation(line: 626, column: 21, scope: !144)
!1224 = !DILocation(line: 628, column: 44, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !76, line: 628, column: 11)
!1226 = distinct !DILexicalBlock(scope: !144, file: !76, line: 627, column: 5)
!1227 = !DILocation(line: 628, column: 32, scope: !1225)
!1228 = !DILocation(line: 628, column: 49, scope: !1225)
!1229 = !DILocation(line: 628, column: 11, scope: !1226)
!1230 = !DILocation(line: 630, column: 11, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1226, file: !76, line: 630, column: 11)
!1232 = !DILocation(line: 630, column: 11, scope: !1226)
!1233 = !DILocation(line: 632, column: 26, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !76, line: 632, column: 15)
!1235 = distinct !DILexicalBlock(scope: !1231, file: !76, line: 631, column: 9)
!1236 = !DILocation(line: 632, column: 34, scope: !1234)
!1237 = !DILocation(line: 632, column: 37, scope: !1234)
!1238 = !DILocation(line: 632, column: 15, scope: !1235)
!1239 = !DILocation(line: 640, column: 16, scope: !1226)
!1240 = distinct !{!1240, !1221, !1241, !1215}
!1241 = !DILocation(line: 641, column: 5, scope: !144)
!1242 = !DILocation(line: 644, column: 3, scope: !144)
!1243 = !DILocation(line: 0, scope: !1180, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 648, column: 31, scope: !144)
!1245 = !DILocation(line: 0, scope: !1180, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 649, column: 31, scope: !144)
!1247 = !DILocation(line: 0, scope: !1180, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 650, column: 31, scope: !144)
!1249 = !DILocation(line: 0, scope: !1180, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 651, column: 31, scope: !144)
!1251 = !DILocation(line: 0, scope: !1180, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 652, column: 31, scope: !144)
!1253 = !DILocation(line: 0, scope: !1180, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 653, column: 31, scope: !144)
!1255 = !DILocation(line: 0, scope: !1180, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 654, column: 31, scope: !144)
!1257 = !DILocation(line: 0, scope: !1180, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 655, column: 31, scope: !144)
!1259 = !DILocation(line: 0, scope: !1180, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 656, column: 31, scope: !144)
!1261 = !DILocation(line: 0, scope: !1180, inlinedAt: !1262)
!1262 = distinct !DILocation(line: 657, column: 31, scope: !144)
!1263 = !DILocation(line: 663, column: 7, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !144, file: !76, line: 663, column: 7)
!1265 = !DILocation(line: 664, column: 7, scope: !1264)
!1266 = !DILocation(line: 664, column: 10, scope: !1264)
!1267 = !DILocation(line: 663, column: 7, scope: !144)
!1268 = !DILocation(line: 669, column: 7, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1264, file: !76, line: 665, column: 5)
!1270 = !DILocation(line: 671, column: 5, scope: !1269)
!1271 = !DILocation(line: 676, column: 7, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1264, file: !76, line: 673, column: 5)
!1273 = !DILocation(line: 679, column: 3, scope: !144)
!1274 = !DILocation(line: 683, column: 3, scope: !144)
!1275 = !DILocation(line: 686, column: 3, scope: !144)
!1276 = !DILocation(line: 688, column: 3, scope: !144)
!1277 = !DILocation(line: 691, column: 3, scope: !144)
!1278 = !DILocation(line: 695, column: 3, scope: !144)
!1279 = !DILocation(line: 696, column: 1, scope: !144)
!1280 = !DISubprogram(name: "setlocale", scope: !1281, file: !1281, line: 122, type: !1282, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1281 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1282 = !DISubroutineType(types: !1283)
!1283 = !{!107, !77, !113}
!1284 = !DISubprogram(name: "strncmp", scope: !1285, file: !1285, line: 159, type: !1286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1285 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!77, !113, !113, !110}
!1288 = !DISubprogram(name: "exit", scope: !1289, file: !1289, line: 624, type: !1088, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1289 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1290 = !DISubprogram(name: "getenv", scope: !1289, file: !1289, line: 641, type: !1291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!107, !113}
!1293 = !DISubprogram(name: "strcmp", scope: !1285, file: !1285, line: 156, type: !1294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!77, !113, !113}
!1296 = !DISubprogram(name: "strspn", scope: !1285, file: !1285, line: 297, type: !1297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!112, !113, !113}
!1299 = !DISubprogram(name: "strchr", scope: !1285, file: !1285, line: 246, type: !1300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{!107, !113, !77}
!1302 = !DISubprogram(name: "__ctype_b_loc", scope: !82, file: !82, line: 79, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!1305}
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1308 = !DISubprogram(name: "strcspn", scope: !1285, file: !1285, line: 293, type: !1297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1309 = !DISubprogram(name: "fwrite_unlocked", scope: !715, file: !715, line: 704, type: !1310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!110, !1312, !110, !110, !1158}
!1312 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1313)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1315 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 273, type: !1316, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1318)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!77, !77, !594}
!1318 = !{!1319, !1320, !1321, !1322, !1323, !1324}
!1319 = !DILocalVariable(name: "argc", arg: 1, scope: !1315, file: !2, line: 273, type: !77)
!1320 = !DILocalVariable(name: "argv", arg: 2, scope: !1315, file: !2, line: 273, type: !594)
!1321 = !DILocalVariable(name: "have_tabval", scope: !1315, file: !2, line: 275, type: !154)
!1322 = !DILocalVariable(name: "tabval", scope: !1315, file: !2, line: 276, type: !389)
!1323 = !DILocalVariable(name: "c", scope: !1315, file: !2, line: 277, type: !77)
!1324 = !DILocalVariable(name: "convert_first_only", scope: !1315, file: !2, line: 281, type: !154)
!1325 = distinct !DIAssignID()
!1326 = distinct !DIAssignID()
!1327 = distinct !DIAssignID()
!1328 = distinct !DIAssignID()
!1329 = !DILocation(line: 0, scope: !1315)
!1330 = !DILocation(line: 284, column: 21, scope: !1315)
!1331 = !DILocation(line: 284, column: 3, scope: !1315)
!1332 = !DILocation(line: 285, column: 3, scope: !1315)
!1333 = !DILocation(line: 286, column: 3, scope: !1315)
!1334 = !DILocation(line: 287, column: 3, scope: !1315)
!1335 = !DILocation(line: 289, column: 3, scope: !1315)
!1336 = !DILocation(line: 291, column: 3, scope: !1315)
!1337 = distinct !{!1337, !1336, !1338, !1215}
!1338 = !DILocation(line: 325, column: 5, scope: !1315)
!1339 = !DILocation(line: 291, column: 15, scope: !1315)
!1340 = !DILocation(line: 297, column: 11, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !2, line: 295, column: 9)
!1342 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 293, column: 5)
!1343 = !DILocation(line: 299, column: 31, scope: !1341)
!1344 = !{!1345, !1345, i64 0}
!1345 = !{!"_Bool", !1100, i64 0}
!1346 = !DILocation(line: 300, column: 11, scope: !1341)
!1347 = !DILocation(line: 302, column: 31, scope: !1341)
!1348 = !DILocation(line: 303, column: 28, scope: !1341)
!1349 = !DILocation(line: 303, column: 11, scope: !1341)
!1350 = !DILocation(line: 304, column: 11, scope: !1341)
!1351 = !DILocation(line: 309, column: 15, scope: !1341)
!1352 = !DILocation(line: 310, column: 13, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1341, file: !2, line: 309, column: 15)
!1354 = !DILocation(line: 313, column: 9, scope: !1341)
!1355 = !DILocation(line: 314, column: 9, scope: !1341)
!1356 = !DILocation(line: 316, column: 15, scope: !1341)
!1357 = !DILocation(line: 321, column: 16, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1341, file: !2, line: 321, column: 15)
!1359 = !DILocation(line: 321, column: 15, scope: !1341)
!1360 = !DILocation(line: 322, column: 13, scope: !1358)
!1361 = !DILocation(line: 327, column: 7, scope: !1315)
!1362 = !DILocation(line: 328, column: 25, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 327, column: 7)
!1364 = !DILocation(line: 328, column: 5, scope: !1363)
!1365 = !DILocation(line: 330, column: 7, scope: !1315)
!1366 = !DILocation(line: 331, column: 5, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 330, column: 7)
!1368 = !DILocation(line: 333, column: 3, scope: !1315)
!1369 = !DILocation(line: 335, column: 19, scope: !1315)
!1370 = !DILocation(line: 335, column: 26, scope: !1315)
!1371 = !DILocation(line: 335, column: 18, scope: !1315)
!1372 = !DILocation(line: 335, column: 3, scope: !1315)
!1373 = !DILocation(line: 0, scope: !376, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 337, column: 3, scope: !1315)
!1375 = !DILocation(line: 0, scope: !404, inlinedAt: !1374)
!1376 = !DILocation(line: 117, column: 14, scope: !355, inlinedAt: !1374)
!1377 = !DILocation(line: 0, scope: !355, inlinedAt: !1374)
!1378 = !DILocation(line: 124, column: 8, scope: !1379, inlinedAt: !1374)
!1379 = distinct !DILexicalBlock(scope: !355, file: !2, line: 124, column: 7)
!1380 = !DILocation(line: 124, column: 7, scope: !355, inlinedAt: !1374)
!1381 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1382, file: !363, line: 56, type: !1385)
!1382 = distinct !DISubprogram(name: "mbbuf_init", scope: !363, file: !363, line: 56, type: !1383, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1386)
!1383 = !DISubroutineType(types: !1384)
!1384 = !{null, !1385, !107, !369, !167}
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!1386 = !{!1381, !1387, !1388, !1389}
!1387 = !DILocalVariable(name: "buffer", arg: 2, scope: !1382, file: !363, line: 56, type: !107)
!1388 = !DILocalVariable(name: "size", arg: 3, scope: !1382, file: !363, line: 56, type: !369)
!1389 = !DILocalVariable(name: "fp", arg: 4, scope: !1382, file: !363, line: 56, type: !167)
!1390 = !DILocation(line: 0, scope: !1382, inlinedAt: !1391)
!1391 = distinct !DILocation(line: 129, column: 3, scope: !355, inlinedAt: !1374)
!1392 = !DILocation(line: 134, column: 29, scope: !355, inlinedAt: !1374)
!1393 = !{!1394, !1394, i64 0}
!1394 = !{!"long", !1100, i64 0}
!1395 = !DILocation(line: 134, column: 62, scope: !355, inlinedAt: !1374)
!1396 = !DILocation(line: 134, column: 19, scope: !355, inlinedAt: !1374)
!1397 = !DILocation(line: 136, column: 3, scope: !355, inlinedAt: !1374)
!1398 = !DILocation(line: 61, column: 13, scope: !1382, inlinedAt: !1391)
!1399 = !DILocation(line: 155, column: 7, scope: !376, inlinedAt: !1374)
!1400 = !DILocation(line: 155, column: 13, scope: !376, inlinedAt: !1374)
!1401 = distinct !DIAssignID()
!1402 = !DILocation(line: 171, column: 7, scope: !376, inlinedAt: !1374)
!1403 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1404, file: !363, line: 71, type: !1385)
!1404 = distinct !DISubprogram(name: "mbbuf_get_char", scope: !363, file: !363, line: 71, type: !1405, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1407)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{!377, !1385}
!1407 = !{!1403, !1408, !1409, !1412}
!1408 = !DILocalVariable(name: "available", scope: !1404, file: !363, line: 73, type: !369)
!1409 = !DILocalVariable(name: "start", scope: !1410, file: !363, line: 77, type: !369)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !363, line: 76, column: 5)
!1411 = distinct !DILexicalBlock(scope: !1404, file: !363, line: 75, column: 7)
!1412 = !DILocalVariable(name: "g", scope: !1404, file: !363, line: 92, type: !377)
!1413 = !DILocation(line: 0, scope: !1404, inlinedAt: !1414)
!1414 = distinct !DILocation(line: 173, column: 23, scope: !402, inlinedAt: !1374)
!1415 = !DILocation(line: 73, column: 35, scope: !1404, inlinedAt: !1414)
!1416 = !DILocation(line: 75, column: 17, scope: !1411, inlinedAt: !1414)
!1417 = !DILocation(line: 75, column: 32, scope: !1411, inlinedAt: !1414)
!1418 = !DILocalVariable(name: "__stream", arg: 1, scope: !1419, file: !1420, line: 128, type: !167)
!1419 = distinct !DISubprogram(name: "feof_unlocked", scope: !1420, file: !1420, line: 128, type: !1421, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1423)
!1420 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!77, !167}
!1423 = !{!1418}
!1424 = !DILocation(line: 0, scope: !1419, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 75, column: 37, scope: !1411, inlinedAt: !1414)
!1426 = !DILocation(line: 130, column: 10, scope: !1419, inlinedAt: !1425)
!1427 = !{!1428, !1169, i64 0}
!1428 = !{!"_IO_FILE", !1169, i64 0, !1099, i64 8, !1099, i64 16, !1099, i64 24, !1099, i64 32, !1099, i64 40, !1099, i64 48, !1099, i64 56, !1099, i64 64, !1099, i64 72, !1099, i64 80, !1099, i64 88, !1099, i64 96, !1099, i64 104, !1169, i64 112, !1169, i64 116, !1394, i64 120, !1210, i64 128, !1100, i64 130, !1100, i64 131, !1099, i64 136, !1394, i64 144, !1099, i64 152, !1099, i64 160, !1099, i64 168, !1099, i64 176, !1394, i64 184, !1169, i64 192, !1100, i64 196}
!1429 = !DILocation(line: 75, column: 37, scope: !1411, inlinedAt: !1414)
!1430 = !DILocation(line: 75, column: 7, scope: !1404, inlinedAt: !1414)
!1431 = !DILocation(line: 78, column: 15, scope: !1432, inlinedAt: !1414)
!1432 = distinct !DILexicalBlock(scope: !1410, file: !363, line: 78, column: 11)
!1433 = !DILocation(line: 78, column: 11, scope: !1410, inlinedAt: !1414)
!1434 = !DILocation(line: 82, column: 49, scope: !1435, inlinedAt: !1414)
!1435 = distinct !DILexicalBlock(scope: !1432, file: !363, line: 81, column: 9)
!1436 = !DILocalVariable(name: "__dest", arg: 1, scope: !1437, file: !1438, line: 34, type: !108)
!1437 = distinct !DISubprogram(name: "memmove", scope: !1438, file: !1438, line: 34, type: !1439, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1441)
!1438 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!108, !108, !1313, !110}
!1441 = !{!1436, !1442, !1443}
!1442 = !DILocalVariable(name: "__src", arg: 2, scope: !1437, file: !1438, line: 34, type: !1313)
!1443 = !DILocalVariable(name: "__len", arg: 3, scope: !1437, file: !1438, line: 34, type: !110)
!1444 = !DILocation(line: 0, scope: !1437, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 82, column: 11, scope: !1435, inlinedAt: !1414)
!1446 = !DILocation(line: 36, column: 10, scope: !1437, inlinedAt: !1445)
!1447 = !DILocation(line: 0, scope: !1410, inlinedAt: !1414)
!1448 = !DILocation(line: 0, scope: !1432, inlinedAt: !1414)
!1449 = !DILocation(line: 85, column: 23, scope: !1410, inlinedAt: !1414)
!1450 = !DILocation(line: 86, column: 41, scope: !1410, inlinedAt: !1414)
!1451 = !DILocation(line: 89, column: 5, scope: !1410, inlinedAt: !1414)
!1452 = !DILocation(line: 90, column: 17, scope: !1453, inlinedAt: !1414)
!1453 = distinct !DILexicalBlock(scope: !1404, file: !363, line: 90, column: 7)
!1454 = !DILocation(line: 90, column: 7, scope: !1404, inlinedAt: !1414)
!1455 = !DILocation(line: 92, column: 39, scope: !1404, inlinedAt: !1414)
!1456 = !DILocalVariable(name: "mbs", scope: !1457, file: !97, line: 244, type: !1466)
!1457 = distinct !DISubprogram(name: "mcel_scan", scope: !97, file: !97, line: 230, type: !1458, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1460)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!377, !113, !113}
!1460 = !{!1461, !1462, !1463, !1456, !1464, !1465}
!1461 = !DILocalVariable(name: "p", arg: 1, scope: !1457, file: !97, line: 230, type: !113)
!1462 = !DILocalVariable(name: "lim", arg: 2, scope: !1457, file: !97, line: 230, type: !113)
!1463 = !DILocalVariable(name: "c", scope: !1457, file: !97, line: 235, type: !4)
!1464 = !DILocalVariable(name: "ch", scope: !1457, file: !97, line: 267, type: !381)
!1465 = !DILocalVariable(name: "len", scope: !1457, file: !97, line: 268, type: !110)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !777, line: 6, baseType: !1467)
!1467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !779, line: 21, baseType: !1468)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !779, line: 13, size: 64, elements: !1469)
!1469 = !{!1470, !1471}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1468, file: !779, line: 15, baseType: !77, size: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1468, file: !779, line: 20, baseType: !1472, size: 32, offset: 32)
!1472 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1468, file: !779, line: 16, size: 32, elements: !1473)
!1473 = !{!1474, !1475}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1472, file: !779, line: 18, baseType: !72, size: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1472, file: !779, line: 19, baseType: !234, size: 32)
!1476 = !DILocation(line: 0, scope: !1457, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 92, column: 14, scope: !1404, inlinedAt: !1414)
!1478 = !DILocation(line: 235, column: 12, scope: !1457, inlinedAt: !1477)
!1479 = !DILocalVariable(name: "c", arg: 1, scope: !1480, file: !97, line: 215, type: !4)
!1480 = distinct !DISubprogram(name: "mcel_isbasic", scope: !97, file: !97, line: 215, type: !1481, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1483)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!154, !4}
!1483 = !{!1479}
!1484 = !DILocation(line: 0, scope: !1480, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 236, column: 7, scope: !1486, inlinedAt: !1477)
!1486 = distinct !DILexicalBlock(scope: !1457, file: !97, line: 236, column: 7)
!1487 = !DILocation(line: 217, column: 10, scope: !1480, inlinedAt: !1485)
!1488 = !DILocation(line: 236, column: 7, scope: !1457, inlinedAt: !1477)
!1489 = !DILocation(line: 93, column: 39, scope: !1404, inlinedAt: !1414)
!1490 = !DILocation(line: 244, column: 3, scope: !1457, inlinedAt: !1477)
!1491 = !DILocation(line: 244, column: 30, scope: !1457, inlinedAt: !1477)
!1492 = !{!1493, !1169, i64 0}
!1493 = !{!"", !1169, i64 0, !1100, i64 4}
!1494 = distinct !DIAssignID()
!1495 = !DILocation(line: 267, column: 3, scope: !1457, inlinedAt: !1477)
!1496 = !DILocation(line: 268, column: 38, scope: !1457, inlinedAt: !1477)
!1497 = !DILocation(line: 268, column: 16, scope: !1457, inlinedAt: !1477)
!1498 = !DILocation(line: 274, column: 7, scope: !1499, inlinedAt: !1477)
!1499 = distinct !DILexicalBlock(scope: !1457, file: !97, line: 274, column: 7)
!1500 = !DILocation(line: 274, column: 7, scope: !1457, inlinedAt: !1477)
!1501 = !{!"branch_weights", i32 1, i32 2000}
!1502 = !DILocation(line: 279, column: 19, scope: !1457, inlinedAt: !1477)
!1503 = !DILocalVariable(name: "ch", arg: 1, scope: !1504, file: !97, line: 167, type: !381)
!1504 = distinct !DISubprogram(name: "mcel_ch", scope: !97, file: !97, line: 167, type: !1505, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1507)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!377, !381, !110}
!1507 = !{!1503, !1508}
!1508 = !DILocalVariable(name: "len", arg: 2, scope: !1504, file: !97, line: 167, type: !110)
!1509 = !DILocation(line: 0, scope: !1504, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 279, column: 10, scope: !1457, inlinedAt: !1477)
!1511 = !DILocation(line: 169, column: 3, scope: !1504, inlinedAt: !1510)
!1512 = !DILocation(line: 170, column: 3, scope: !1504, inlinedAt: !1510)
!1513 = !DILocation(line: 171, column: 3, scope: !1504, inlinedAt: !1510)
!1514 = !DILocation(line: 172, column: 3, scope: !1504, inlinedAt: !1510)
!1515 = !DILocation(line: 279, column: 3, scope: !1457, inlinedAt: !1477)
!1516 = !DILocalVariable(name: "err", arg: 1, scope: !1517, file: !97, line: 175, type: !115)
!1517 = distinct !DISubprogram(name: "mcel_err", scope: !97, file: !97, line: 175, type: !1518, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1520)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!377, !115}
!1520 = !{!1516}
!1521 = !DILocation(line: 0, scope: !1517, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 275, column: 12, scope: !1499, inlinedAt: !1477)
!1523 = !DILocation(line: 178, column: 3, scope: !1517, inlinedAt: !1522)
!1524 = !DILocation(line: 275, column: 5, scope: !1499, inlinedAt: !1477)
!1525 = !DILocation(line: 280, column: 1, scope: !1457, inlinedAt: !1477)
!1526 = !DILocation(line: 0, scope: !1504, inlinedAt: !1527)
!1527 = distinct !DILocation(line: 237, column: 12, scope: !1486, inlinedAt: !1477)
!1528 = !DILocation(line: 172, column: 3, scope: !1504, inlinedAt: !1527)
!1529 = !DILocation(line: 237, column: 5, scope: !1486, inlinedAt: !1477)
!1530 = !DILocation(line: 94, column: 9, scope: !1531, inlinedAt: !1414)
!1531 = distinct !DILexicalBlock(scope: !1404, file: !363, line: 94, column: 7)
!1532 = !DILocation(line: 94, column: 7, scope: !1404, inlinedAt: !1414)
!1533 = !DILocation(line: 99, column: 30, scope: !1534, inlinedAt: !1414)
!1534 = distinct !DILexicalBlock(scope: !1531, file: !363, line: 97, column: 5)
!1535 = !DILocation(line: 99, column: 14, scope: !1534, inlinedAt: !1414)
!1536 = !DILocation(line: 92, column: 14, scope: !1404, inlinedAt: !1414)
!1537 = !DILocation(line: 95, column: 5, scope: !1531, inlinedAt: !1414)
!1538 = !DILocation(line: 0, scope: !1531, inlinedAt: !1414)
!1539 = !DILocation(line: 101, column: 3, scope: !1404, inlinedAt: !1414)
!1540 = !DILocation(line: 173, column: 23, scope: !402, inlinedAt: !1374)
!1541 = !DILocation(line: 173, column: 51, scope: !402, inlinedAt: !1374)
!1542 = !DILocation(line: 174, column: 18, scope: !402, inlinedAt: !1374)
!1543 = !DILocation(line: 174, column: 27, scope: !402, inlinedAt: !1374)
!1544 = !DILocation(line: 173, column: 11, scope: !402, inlinedAt: !1374)
!1545 = !DILocation(line: 61, column: 13, scope: !1382, inlinedAt: !1546)
!1546 = distinct !DILocation(line: 0, scope: !355, inlinedAt: !1374)
!1547 = distinct !{!1547, !1544, !1548, !1215, !1549}
!1548 = !DILocation(line: 175, column: 60, scope: !402, inlinedAt: !1374)
!1549 = !{!"llvm.loop.peeled.count", i32 1}
!1550 = !DILocation(line: 85, column: 21, scope: !1410, inlinedAt: !1414)
!1551 = !DILocation(line: 102, column: 1, scope: !1404, inlinedAt: !1414)
!1552 = !DILocation(line: 177, column: 15, scope: !402, inlinedAt: !1374)
!1553 = !DILocalVariable(name: "wc", arg: 1, scope: !1554, file: !76, line: 178, type: !381)
!1554 = distinct !DISubprogram(name: "c32issep", scope: !76, file: !76, line: 178, type: !1555, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1557)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!154, !381}
!1557 = !{!1553}
!1558 = !DILocation(line: 0, scope: !1554, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 179, column: 28, scope: !400, inlinedAt: !1374)
!1560 = !DILocalVariable(name: "wc", arg: 1, scope: !1561, file: !1562, line: 770, type: !1565)
!1561 = distinct !DISubprogram(name: "c32isblank", scope: !1562, file: !1562, line: 770, type: !1563, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1567)
!1562 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1563 = !DISubroutineType(types: !1564)
!1564 = !{!77, !1565}
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1566, line: 20, baseType: !72)
!1566 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1567 = !{!1560}
!1568 = !DILocation(line: 0, scope: !1561, inlinedAt: !1569)
!1569 = distinct !DILocation(line: 181, column: 13, scope: !1554, inlinedAt: !1559)
!1570 = !DILocation(line: 776, column: 10, scope: !1561, inlinedAt: !1569)
!1571 = !DILocation(line: 181, column: 11, scope: !1554, inlinedAt: !1559)
!1572 = !DILocation(line: 0, scope: !400, inlinedAt: !1374)
!1573 = !DILocation(line: 181, column: 19, scope: !400, inlinedAt: !1374)
!1574 = !DILocation(line: 183, column: 19, scope: !404, inlinedAt: !1374)
!1575 = !DILocation(line: 185, column: 37, scope: !404, inlinedAt: !1374)
!1576 = !DILocation(line: 188, column: 23, scope: !1577, inlinedAt: !1374)
!1577 = distinct !DILexicalBlock(scope: !404, file: !2, line: 188, column: 23)
!1578 = !{i8 0, i8 2}
!1579 = !DILocation(line: 191, column: 23, scope: !404, inlinedAt: !1374)
!1580 = !DILocation(line: 193, column: 32, scope: !1581, inlinedAt: !1374)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 193, column: 27)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 192, column: 21)
!1583 = distinct !DILexicalBlock(scope: !404, file: !2, line: 191, column: 23)
!1584 = !DILocation(line: 193, column: 27, scope: !1582, inlinedAt: !1374)
!1585 = !DILocation(line: 197, column: 31, scope: !1586, inlinedAt: !1374)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !2, line: 197, column: 31)
!1587 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 194, column: 25)
!1588 = !DILocation(line: 197, column: 31, scope: !1587, inlinedAt: !1374)
!1589 = !DILocalVariable(name: "wc", arg: 1, scope: !1590, file: !1562, line: 1004, type: !381)
!1590 = distinct !DISubprogram(name: "c32width", scope: !1562, file: !1562, line: 1004, type: !1591, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1593)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!77, !381}
!1593 = !{!1589}
!1594 = !DILocation(line: 0, scope: !1590, inlinedAt: !1595)
!1595 = distinct !DILocation(line: 202, column: 37, scope: !1596, inlinedAt: !1374)
!1596 = distinct !DILexicalBlock(scope: !1581, file: !2, line: 201, column: 25)
!1597 = !DILocation(line: 1010, column: 10, scope: !1590, inlinedAt: !1595)
!1598 = !DILocation(line: 202, column: 37, scope: !1596, inlinedAt: !1374)
!1599 = !DILocation(line: 202, column: 34, scope: !1596, inlinedAt: !1374)
!1600 = !DILocation(line: 204, column: 45, scope: !1601, inlinedAt: !1374)
!1601 = distinct !DILexicalBlock(scope: !1596, file: !2, line: 204, column: 31)
!1602 = !DILocation(line: 219, column: 31, scope: !1603, inlinedAt: !1374)
!1603 = distinct !DILexicalBlock(scope: !1596, file: !2, line: 219, column: 31)
!1604 = !DILocalVariable(name: "__c", arg: 1, scope: !1605, file: !1420, line: 101, type: !77)
!1605 = distinct !DISubprogram(name: "putc_unlocked", scope: !1420, file: !1420, line: 101, type: !1606, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1608)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!77, !77, !167}
!1608 = !{!1604, !1609}
!1609 = !DILocalVariable(name: "__stream", arg: 2, scope: !1605, file: !1420, line: 101, type: !167)
!1610 = !DILocation(line: 0, scope: !1605, inlinedAt: !1611)
!1611 = distinct !DILocation(line: 219, column: 31, scope: !1603, inlinedAt: !1374)
!1612 = !DILocation(line: 103, column: 10, scope: !1605, inlinedAt: !1611)
!1613 = !{!1428, !1099, i64 40}
!1614 = !{!1428, !1099, i64 48}
!1615 = !{!"branch_weights", i32 2000, i32 1}
!1616 = !DILocation(line: 219, column: 31, scope: !1596, inlinedAt: !1374)
!1617 = !DILocation(line: 219, column: 51, scope: !1603, inlinedAt: !1374)
!1618 = !DILocation(line: 948, column: 21, scope: !1619, inlinedAt: !1622)
!1619 = distinct !DISubprogram(name: "write_error", scope: !76, file: !76, line: 946, type: !356, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1620)
!1620 = !{!1621}
!1621 = !DILocalVariable(name: "saved_errno", scope: !1619, file: !76, line: 948, type: !77)
!1622 = distinct !DILocation(line: 220, column: 29, scope: !1603, inlinedAt: !1374)
!1623 = !DILocation(line: 0, scope: !1619, inlinedAt: !1622)
!1624 = !DILocation(line: 949, column: 3, scope: !1619, inlinedAt: !1622)
!1625 = !DILocation(line: 950, column: 11, scope: !1619, inlinedAt: !1622)
!1626 = !DILocation(line: 950, column: 3, scope: !1619, inlinedAt: !1622)
!1627 = !DILocation(line: 951, column: 3, scope: !1619, inlinedAt: !1622)
!1628 = !DILocation(line: 952, column: 3, scope: !1619, inlinedAt: !1622)
!1629 = !DILocation(line: 0, scope: !1581, inlinedAt: !1374)
!1630 = !DILocation(line: 226, column: 33, scope: !1582, inlinedAt: !1374)
!1631 = !DILocation(line: 0, scope: !402, inlinedAt: !1374)
!1632 = !DILocation(line: 227, column: 21, scope: !1582, inlinedAt: !1374)
!1633 = !DILocation(line: 228, column: 17, scope: !405, inlinedAt: !1374)
!1634 = !DILocation(line: 229, column: 29, scope: !408, inlinedAt: !1374)
!1635 = !DILocation(line: 229, column: 24, scope: !405, inlinedAt: !1374)
!1636 = !DILocation(line: 233, column: 30, scope: !1637, inlinedAt: !1374)
!1637 = distinct !DILexicalBlock(scope: !408, file: !2, line: 230, column: 17)
!1638 = !DILocation(line: 233, column: 26, scope: !1637, inlinedAt: !1374)
!1639 = !DILocation(line: 235, column: 34, scope: !1637, inlinedAt: !1374)
!1640 = !DILocation(line: 235, column: 33, scope: !1637, inlinedAt: !1374)
!1641 = !DILocation(line: 235, column: 29, scope: !1637, inlinedAt: !1374)
!1642 = distinct !DIAssignID()
!1643 = !DILocation(line: 236, column: 17, scope: !1637, inlinedAt: !1374)
!1644 = !DILocation(line: 0, scope: !1590, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 239, column: 31, scope: !407, inlinedAt: !1374)
!1646 = !DILocation(line: 1010, column: 10, scope: !1590, inlinedAt: !1645)
!1647 = !DILocation(line: 0, scope: !407, inlinedAt: !1374)
!1648 = !DILocation(line: 240, column: 23, scope: !1649, inlinedAt: !1374)
!1649 = distinct !DILexicalBlock(scope: !407, file: !2, line: 240, column: 23)
!1650 = !DILocation(line: 240, column: 23, scope: !407, inlinedAt: !1374)
!1651 = !DILocation(line: 241, column: 21, scope: !1649, inlinedAt: !1374)
!1652 = !DILocation(line: 0, scope: !405, inlinedAt: !1374)
!1653 = !DILocation(line: 244, column: 19, scope: !413, inlinedAt: !1374)
!1654 = !DILocation(line: 244, column: 19, scope: !400, inlinedAt: !1374)
!1655 = !DILocation(line: 246, column: 31, scope: !1656, inlinedAt: !1374)
!1656 = distinct !DILexicalBlock(scope: !412, file: !2, line: 246, column: 23)
!1657 = !DILocation(line: 246, column: 35, scope: !1656, inlinedAt: !1374)
!1658 = !DILocation(line: 247, column: 38, scope: !1656, inlinedAt: !1374)
!1659 = !DILocation(line: 247, column: 21, scope: !1656, inlinedAt: !1374)
!1660 = !DILocation(line: 248, column: 23, scope: !411, inlinedAt: !1374)
!1661 = !DILocation(line: 248, column: 66, scope: !411, inlinedAt: !1374)
!1662 = !DILocation(line: 248, column: 23, scope: !412, inlinedAt: !1374)
!1663 = !DILocation(line: 948, column: 21, scope: !1619, inlinedAt: !1664)
!1664 = distinct !DILocation(line: 249, column: 21, scope: !411, inlinedAt: !1374)
!1665 = !DILocation(line: 0, scope: !1619, inlinedAt: !1664)
!1666 = !DILocation(line: 949, column: 3, scope: !1619, inlinedAt: !1664)
!1667 = !DILocation(line: 950, column: 11, scope: !1619, inlinedAt: !1664)
!1668 = !DILocation(line: 950, column: 3, scope: !1619, inlinedAt: !1664)
!1669 = !DILocation(line: 951, column: 3, scope: !1619, inlinedAt: !1664)
!1670 = !DILocation(line: 952, column: 3, scope: !1619, inlinedAt: !1664)
!1671 = !DILocation(line: 255, column: 26, scope: !400, inlinedAt: !1374)
!1672 = !DILocation(line: 255, column: 46, scope: !400, inlinedAt: !1374)
!1673 = !DILocation(line: 255, column: 23, scope: !400, inlinedAt: !1374)
!1674 = !DILocation(line: 208, column: 35, scope: !1675, inlinedAt: !1374)
!1675 = distinct !DILexicalBlock(scope: !1601, file: !2, line: 205, column: 29)
!1676 = !DILocation(line: 210, column: 53, scope: !1675, inlinedAt: !1374)
!1677 = !DILocalVariable(name: "g", arg: 2, scope: !1678, file: !363, line: 107, type: !377)
!1678 = distinct !DISubprogram(name: "mbbuf_char_offset", scope: !363, file: !363, line: 107, type: !1679, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1681)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!107, !1385, !377}
!1681 = !{!1682, !1677}
!1682 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1678, file: !363, line: 107, type: !1385)
!1683 = !DILocation(line: 0, scope: !1678, inlinedAt: !1684)
!1684 = distinct !DILocation(line: 211, column: 39, scope: !1675, inlinedAt: !1374)
!1685 = !DILocation(line: 109, column: 21, scope: !1686, inlinedAt: !1684)
!1686 = distinct !DILexicalBlock(scope: !1678, file: !363, line: 109, column: 7)
!1687 = !DILocation(line: 109, column: 7, scope: !1678, inlinedAt: !1684)
!1688 = !DILocation(line: 111, column: 41, scope: !1678, inlinedAt: !1684)
!1689 = !DILocation(line: 111, column: 24, scope: !1678, inlinedAt: !1684)
!1690 = !DILocalVariable(name: "__dest", arg: 1, scope: !1691, file: !1438, line: 26, type: !1694)
!1691 = distinct !DISubprogram(name: "memcpy", scope: !1438, file: !1438, line: 26, type: !1692, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1695)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!108, !1694, !1312, !110}
!1694 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !108)
!1695 = !{!1690, !1696, !1697}
!1696 = !DILocalVariable(name: "__src", arg: 2, scope: !1691, file: !1438, line: 26, type: !1312)
!1697 = !DILocalVariable(name: "__len", arg: 3, scope: !1691, file: !1438, line: 26, type: !110)
!1698 = !DILocation(line: 0, scope: !1691, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 210, column: 31, scope: !1675, inlinedAt: !1374)
!1700 = !DILocation(line: 29, column: 10, scope: !1691, inlinedAt: !1699)
!1701 = !DILocation(line: 212, column: 39, scope: !1675, inlinedAt: !1374)
!1702 = !DILocation(line: 258, column: 15, scope: !402, inlinedAt: !1374)
!1703 = !DILocation(line: 260, column: 15, scope: !1704, inlinedAt: !1374)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !2, line: 259, column: 13)
!1705 = distinct !DILexicalBlock(scope: !402, file: !2, line: 258, column: 15)
!1706 = !DILocation(line: 269, column: 5, scope: !355, inlinedAt: !1374)
!1707 = !DILocation(line: 264, column: 11, scope: !402, inlinedAt: !1374)
!1708 = !DILocation(line: 0, scope: !1678, inlinedAt: !1709)
!1709 = distinct !DILocation(line: 264, column: 11, scope: !402, inlinedAt: !1374)
!1710 = !DILocation(line: 109, column: 21, scope: !1686, inlinedAt: !1709)
!1711 = !DILocation(line: 109, column: 7, scope: !1678, inlinedAt: !1709)
!1712 = !DILocation(line: 111, column: 41, scope: !1678, inlinedAt: !1709)
!1713 = !DILocation(line: 111, column: 24, scope: !1678, inlinedAt: !1709)
!1714 = !DILocation(line: 265, column: 15, scope: !1715, inlinedAt: !1374)
!1715 = distinct !DILexicalBlock(scope: !402, file: !2, line: 265, column: 15)
!1716 = !DILocalVariable(name: "__stream", arg: 1, scope: !1717, file: !1420, line: 135, type: !167)
!1717 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1420, file: !1420, line: 135, type: !1421, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1718)
!1718 = !{!1716}
!1719 = !DILocation(line: 0, scope: !1717, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 265, column: 15, scope: !1715, inlinedAt: !1374)
!1721 = !DILocation(line: 137, column: 10, scope: !1717, inlinedAt: !1720)
!1722 = !DILocation(line: 265, column: 15, scope: !402, inlinedAt: !1374)
!1723 = !DILocation(line: 948, column: 21, scope: !1619, inlinedAt: !1724)
!1724 = distinct !DILocation(line: 266, column: 13, scope: !1715, inlinedAt: !1374)
!1725 = !DILocation(line: 0, scope: !1619, inlinedAt: !1724)
!1726 = !DILocation(line: 949, column: 3, scope: !1619, inlinedAt: !1724)
!1727 = !DILocation(line: 950, column: 11, scope: !1619, inlinedAt: !1724)
!1728 = !DILocation(line: 950, column: 3, scope: !1619, inlinedAt: !1724)
!1729 = !DILocation(line: 951, column: 3, scope: !1619, inlinedAt: !1724)
!1730 = !DILocation(line: 952, column: 3, scope: !1619, inlinedAt: !1724)
!1731 = !DILocation(line: 250, column: 27, scope: !412, inlinedAt: !1374)
!1732 = !DILocation(line: 195, column: 34, scope: !1587, inlinedAt: !1374)
!1733 = !DILocation(line: 268, column: 19, scope: !376, inlinedAt: !1374)
!1734 = !DILocation(line: 267, column: 9, scope: !402, inlinedAt: !1374)
!1735 = distinct !{!1735, !1402, !1736, !1215}
!1736 = !DILocation(line: 268, column: 26, scope: !376, inlinedAt: !1374)
!1737 = distinct !{!1737, !1397, !1706}
!1738 = !DILocation(line: 339, column: 3, scope: !1315)
!1739 = !DILocation(line: 341, column: 10, scope: !1315)
!1740 = !DILocation(line: 341, column: 3, scope: !1315)
!1741 = !DISubprogram(name: "bindtextdomain", scope: !1151, file: !1151, line: 86, type: !1742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!107, !113, !113}
!1744 = !DISubprogram(name: "textdomain", scope: !1151, file: !1151, line: 82, type: !1291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1745 = !DISubprogram(name: "atexit", scope: !1289, file: !1289, line: 602, type: !1746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!77, !751}
!1748 = !DISubprogram(name: "getopt_long", scope: !433, file: !433, line: 66, type: !1749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!77, !77, !1751, !113, !1753, !438}
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!1754 = !DISubprogram(name: "__builtin___memmove_chk", scope: !1755, file: !1755, line: 25, type: !1756, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1755 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/strings_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "2c53309439f074d781ca95a346401d78")
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!108, !108, !1313, !112, !112}
!1758 = !DISubprogram(name: "mbrtoc32", scope: !382, file: !382, line: 57, type: !1759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!110, !1761, !1159, !110, !1763}
!1761 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1762)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1764)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1765 = !DISubprogram(name: "iswblank", scope: !1766, file: !1766, line: 146, type: !1563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1766 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1767 = !DISubprogram(name: "wcwidth", scope: !1768, file: !1768, line: 368, type: !1769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1768 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!77, !1771}
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !1772, line: 24, baseType: !72)
!1772 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_wchar_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1bf0c51e90dd5eb05cdcc01afdea587a")
!1773 = !DISubprogram(name: "__overflow", scope: !715, file: !715, line: 886, type: !1774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!77, !167, !77}
!1776 = !DISubprogram(name: "__errno_location", scope: !1777, file: !1777, line: 37, type: !1778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1777 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!438}
!1780 = !DISubprogram(name: "fflush_unlocked", scope: !715, file: !715, line: 239, type: !1421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1781 = !DISubprogram(name: "clearerr_unlocked", scope: !715, file: !715, line: 794, type: !1782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{null, !167}
!1784 = !DISubprogram(name: "free", scope: !1289, file: !1289, line: 555, type: !1785, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{null, !108}
!1787 = distinct !DISubprogram(name: "add_tab_stop", scope: !443, file: !443, line: 84, type: !1788, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !1790)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{null, !389}
!1790 = !{!1791, !1792, !1793}
!1791 = !DILocalVariable(name: "tabval", arg: 1, scope: !1787, file: !443, line: 84, type: !389)
!1792 = !DILocalVariable(name: "prev_column", scope: !1787, file: !443, line: 86, type: !389)
!1793 = !DILocalVariable(name: "column_width", scope: !1787, file: !443, line: 87, type: !389)
!1794 = !DILocation(line: 0, scope: !1787)
!1795 = !DILocation(line: 86, column: 23, scope: !1787)
!1796 = !DILocation(line: 91, column: 3, scope: !1787)
!1797 = !DILocation(line: 86, column: 40, scope: !1787)
!1798 = !DILocation(line: 89, column: 25, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1787, file: !443, line: 89, column: 7)
!1800 = !DILocation(line: 89, column: 22, scope: !1799)
!1801 = !DILocation(line: 89, column: 7, scope: !1787)
!1802 = !DILocation(line: 90, column: 16, scope: !1799)
!1803 = !DILocation(line: 90, column: 14, scope: !1799)
!1804 = !DILocation(line: 91, column: 26, scope: !1787)
!1805 = !DILocation(line: 90, column: 5, scope: !1799)
!1806 = !DILocation(line: 87, column: 36, scope: !1787)
!1807 = !DILocation(line: 87, column: 24, scope: !1787)
!1808 = !DILocation(line: 91, column: 30, scope: !1787)
!1809 = !DILocalVariable(name: "width", arg: 1, scope: !1810, file: !443, line: 73, type: !389)
!1810 = distinct !DISubprogram(name: "set_max_column_width", scope: !443, file: !443, line: 73, type: !1788, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !1811)
!1811 = !{!1809}
!1812 = !DILocation(line: 0, scope: !1810, inlinedAt: !1813)
!1813 = distinct !DILocation(line: 93, column: 3, scope: !1787)
!1814 = !DILocation(line: 75, column: 7, scope: !1815, inlinedAt: !1813)
!1815 = distinct !DILexicalBlock(scope: !1810, file: !443, line: 75, column: 7)
!1816 = !DILocation(line: 75, column: 24, scope: !1815, inlinedAt: !1813)
!1817 = !DILocation(line: 75, column: 7, scope: !1810, inlinedAt: !1813)
!1818 = !DILocation(line: 77, column: 11, scope: !1819, inlinedAt: !1813)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !443, line: 77, column: 11)
!1820 = distinct !DILexicalBlock(scope: !1815, file: !443, line: 76, column: 5)
!1821 = !DILocation(line: 94, column: 1, scope: !1787)
!1822 = distinct !DISubprogram(name: "parse_tab_stops", scope: !443, file: !443, line: 137, type: !1119, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !1823)
!1823 = !{!1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1842}
!1824 = !DILocalVariable(name: "stops", arg: 1, scope: !1822, file: !443, line: 137, type: !113)
!1825 = !DILocalVariable(name: "have_tabval", scope: !1822, file: !443, line: 139, type: !154)
!1826 = !DILocalVariable(name: "tabval", scope: !1822, file: !443, line: 140, type: !389)
!1827 = !DILocalVariable(name: "extend_tabval", scope: !1822, file: !443, line: 141, type: !154)
!1828 = !DILocalVariable(name: "increment_tabval", scope: !1822, file: !443, line: 142, type: !154)
!1829 = !DILocalVariable(name: "num_start", scope: !1822, file: !443, line: 143, type: !113)
!1830 = !DILocalVariable(name: "ok", scope: !1822, file: !443, line: 144, type: !154)
!1831 = !DILocalVariable(name: "len", scope: !1832, file: !443, line: 207, type: !369)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !443, line: 206, column: 13)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !443, line: 205, column: 15)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !443, line: 196, column: 9)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !443, line: 195, column: 16)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !443, line: 184, column: 16)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !443, line: 173, column: 16)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !443, line: 148, column: 11)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !443, line: 147, column: 5)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !443, line: 146, column: 3)
!1841 = distinct !DILexicalBlock(scope: !1822, file: !443, line: 146, column: 3)
!1842 = !DILocalVariable(name: "bad_num", scope: !1832, file: !443, line: 208, type: !107)
!1843 = !DILocation(line: 0, scope: !1822)
!1844 = !DILocation(line: 146, column: 3, scope: !1822)
!1845 = !DILocation(line: 140, column: 9, scope: !1822)
!1846 = !DILocation(line: 143, column: 15, scope: !1822)
!1847 = !DILocation(line: 146, column: 10, scope: !1840)
!1848 = !DILocation(line: 146, column: 3, scope: !1841)
!1849 = !DILocation(line: 148, column: 28, scope: !1838)
!1850 = !DILocation(line: 148, column: 11, scope: !1839)
!1851 = !DILocation(line: 150, column: 15, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1838, file: !443, line: 149, column: 9)
!1853 = !DILocation(line: 152, column: 19, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !443, line: 151, column: 13)
!1855 = distinct !DILexicalBlock(scope: !1852, file: !443, line: 150, column: 15)
!1856 = !DILocalVariable(name: "tabval", arg: 1, scope: !1857, file: !443, line: 97, type: !389)
!1857 = distinct !DISubprogram(name: "set_extend_size", scope: !443, file: !443, line: 97, type: !1858, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !1860)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!154, !389}
!1860 = !{!1856, !1861}
!1861 = !DILocalVariable(name: "ok", scope: !1857, file: !443, line: 99, type: !154)
!1862 = !DILocation(line: 0, scope: !1857, inlinedAt: !1863)
!1863 = distinct !DILocation(line: 154, column: 25, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !443, line: 154, column: 23)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !443, line: 153, column: 17)
!1866 = distinct !DILexicalBlock(scope: !1854, file: !443, line: 152, column: 19)
!1867 = !DILocation(line: 101, column: 7, scope: !1868, inlinedAt: !1863)
!1868 = distinct !DILexicalBlock(scope: !1857, file: !443, line: 101, column: 7)
!1869 = !DILocation(line: 101, column: 7, scope: !1857, inlinedAt: !1863)
!1870 = !DILocation(line: 103, column: 7, scope: !1871, inlinedAt: !1863)
!1871 = distinct !DILexicalBlock(scope: !1868, file: !443, line: 102, column: 5)
!1872 = !DILocation(line: 107, column: 5, scope: !1871, inlinedAt: !1863)
!1873 = !DILocation(line: 108, column: 15, scope: !1857, inlinedAt: !1863)
!1874 = !DILocation(line: 0, scope: !1810, inlinedAt: !1875)
!1875 = distinct !DILocation(line: 110, column: 3, scope: !1857, inlinedAt: !1863)
!1876 = !DILocation(line: 75, column: 7, scope: !1815, inlinedAt: !1875)
!1877 = !DILocation(line: 75, column: 24, scope: !1815, inlinedAt: !1875)
!1878 = !DILocation(line: 75, column: 7, scope: !1810, inlinedAt: !1875)
!1879 = !DILocation(line: 77, column: 11, scope: !1819, inlinedAt: !1875)
!1880 = !DILocation(line: 154, column: 23, scope: !1865)
!1881 = !DILocation(line: 160, column: 24, scope: !1866)
!1882 = !DILocalVariable(name: "tabval", arg: 1, scope: !1883, file: !443, line: 116, type: !389)
!1883 = distinct !DISubprogram(name: "set_increment_size", scope: !443, file: !443, line: 116, type: !1858, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !1884)
!1884 = !{!1882, !1885}
!1885 = !DILocalVariable(name: "ok", scope: !1883, file: !443, line: 118, type: !154)
!1886 = !DILocation(line: 0, scope: !1883, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 162, column: 25, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1889, file: !443, line: 162, column: 23)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !443, line: 161, column: 17)
!1890 = distinct !DILexicalBlock(scope: !1866, file: !443, line: 160, column: 24)
!1891 = !DILocation(line: 120, column: 7, scope: !1892, inlinedAt: !1887)
!1892 = distinct !DILexicalBlock(scope: !1883, file: !443, line: 120, column: 7)
!1893 = !DILocation(line: 120, column: 7, scope: !1883, inlinedAt: !1887)
!1894 = !DILocation(line: 122, column: 7, scope: !1895, inlinedAt: !1887)
!1895 = distinct !DILexicalBlock(scope: !1892, file: !443, line: 121, column: 5)
!1896 = !DILocation(line: 126, column: 5, scope: !1895, inlinedAt: !1887)
!1897 = !DILocation(line: 127, column: 18, scope: !1883, inlinedAt: !1887)
!1898 = !DILocation(line: 0, scope: !1810, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 129, column: 3, scope: !1883, inlinedAt: !1887)
!1900 = !DILocation(line: 75, column: 7, scope: !1815, inlinedAt: !1899)
!1901 = !DILocation(line: 75, column: 24, scope: !1815, inlinedAt: !1899)
!1902 = !DILocation(line: 75, column: 7, scope: !1810, inlinedAt: !1899)
!1903 = !DILocation(line: 77, column: 11, scope: !1819, inlinedAt: !1899)
!1904 = !DILocation(line: 162, column: 23, scope: !1889)
!1905 = !DILocation(line: 0, scope: !1787, inlinedAt: !1906)
!1906 = distinct !DILocation(line: 169, column: 17, scope: !1890)
!1907 = !DILocation(line: 86, column: 23, scope: !1787, inlinedAt: !1906)
!1908 = !DILocation(line: 91, column: 3, scope: !1787, inlinedAt: !1906)
!1909 = !DILocation(line: 86, column: 40, scope: !1787, inlinedAt: !1906)
!1910 = !DILocation(line: 89, column: 25, scope: !1799, inlinedAt: !1906)
!1911 = !DILocation(line: 89, column: 22, scope: !1799, inlinedAt: !1906)
!1912 = !DILocation(line: 89, column: 7, scope: !1787, inlinedAt: !1906)
!1913 = !DILocation(line: 90, column: 16, scope: !1799, inlinedAt: !1906)
!1914 = !DILocation(line: 90, column: 14, scope: !1799, inlinedAt: !1906)
!1915 = !DILocation(line: 91, column: 26, scope: !1787, inlinedAt: !1906)
!1916 = !DILocation(line: 90, column: 5, scope: !1799, inlinedAt: !1906)
!1917 = !DILocation(line: 87, column: 36, scope: !1787, inlinedAt: !1906)
!1918 = !DILocation(line: 87, column: 24, scope: !1787, inlinedAt: !1906)
!1919 = !DILocation(line: 91, column: 30, scope: !1787, inlinedAt: !1906)
!1920 = !DILocation(line: 0, scope: !1810, inlinedAt: !1921)
!1921 = distinct !DILocation(line: 93, column: 3, scope: !1787, inlinedAt: !1906)
!1922 = !DILocation(line: 75, column: 7, scope: !1815, inlinedAt: !1921)
!1923 = !DILocation(line: 75, column: 24, scope: !1815, inlinedAt: !1921)
!1924 = !DILocation(line: 75, column: 7, scope: !1810, inlinedAt: !1921)
!1925 = !DILocation(line: 77, column: 11, scope: !1819, inlinedAt: !1921)
!1926 = !DILocation(line: 173, column: 16, scope: !1838)
!1927 = !DILocation(line: 175, column: 15, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1837, file: !443, line: 174, column: 9)
!1929 = !DILocation(line: 177, column: 15, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !443, line: 176, column: 13)
!1931 = distinct !DILexicalBlock(scope: !1928, file: !443, line: 175, column: 15)
!1932 = !DILocation(line: 180, column: 13, scope: !1930)
!1933 = !DILocation(line: 186, column: 15, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1836, file: !443, line: 185, column: 9)
!1935 = !DILocation(line: 188, column: 15, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1937, file: !443, line: 187, column: 13)
!1937 = distinct !DILexicalBlock(scope: !1934, file: !443, line: 186, column: 15)
!1938 = !DILocation(line: 191, column: 13, scope: !1936)
!1939 = !DILocation(line: 173, column: 16, scope: !1837)
!1940 = !DILocalVariable(name: "c", arg: 1, scope: !1941, file: !1942, line: 233, type: !77)
!1941 = distinct !DISubprogram(name: "c_isdigit", scope: !1942, file: !1942, line: 233, type: !1943, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !1945)
!1942 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!154, !77}
!1945 = !{!1940}
!1946 = !DILocation(line: 0, scope: !1941, inlinedAt: !1947)
!1947 = distinct !DILocation(line: 195, column: 16, scope: !1835)
!1948 = !DILocation(line: 235, column: 3, scope: !1941, inlinedAt: !1947)
!1949 = !DILocation(line: 195, column: 16, scope: !1836)
!1950 = !DILocation(line: 197, column: 15, scope: !1834)
!1951 = !DILocation(line: 205, column: 16, scope: !1833)
!1952 = !DILocation(line: 205, column: 15, scope: !1834)
!1953 = !DILocation(line: 207, column: 27, scope: !1832)
!1954 = !DILocation(line: 0, scope: !1832)
!1955 = !DILocation(line: 208, column: 31, scope: !1832)
!1956 = !DILocation(line: 209, column: 15, scope: !1832)
!1957 = !DILocation(line: 210, column: 15, scope: !1832)
!1958 = !DILocation(line: 212, column: 33, scope: !1832)
!1959 = !DILocation(line: 212, column: 39, scope: !1832)
!1960 = !DILocation(line: 213, column: 13, scope: !1832)
!1961 = !DILocation(line: 217, column: 11, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1835, file: !443, line: 216, column: 9)
!1963 = !DILocation(line: 220, column: 11, scope: !1962)
!1964 = !DILocation(line: 146, column: 23, scope: !1840)
!1965 = !DILocation(line: 146, column: 3, scope: !1840)
!1966 = distinct !{!1966, !1848, !1967, !1215}
!1967 = !DILocation(line: 222, column: 5, scope: !1841)
!1968 = !DILocation(line: 224, column: 10, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1822, file: !443, line: 224, column: 7)
!1970 = !DILocation(line: 226, column: 11, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1969, file: !443, line: 225, column: 5)
!1972 = !DILocation(line: 0, scope: !1857, inlinedAt: !1973)
!1973 = distinct !DILocation(line: 227, column: 15, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1971, file: !443, line: 226, column: 11)
!1975 = !DILocation(line: 101, column: 7, scope: !1868, inlinedAt: !1973)
!1976 = !DILocation(line: 101, column: 7, scope: !1857, inlinedAt: !1973)
!1977 = !DILocation(line: 108, column: 15, scope: !1857, inlinedAt: !1973)
!1978 = !DILocation(line: 0, scope: !1810, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 110, column: 3, scope: !1857, inlinedAt: !1973)
!1980 = !DILocation(line: 75, column: 7, scope: !1815, inlinedAt: !1979)
!1981 = !DILocation(line: 75, column: 24, scope: !1815, inlinedAt: !1979)
!1982 = !DILocation(line: 75, column: 7, scope: !1810, inlinedAt: !1979)
!1983 = !DILocation(line: 103, column: 7, scope: !1871, inlinedAt: !1973)
!1984 = !DILocation(line: 77, column: 11, scope: !1819, inlinedAt: !1979)
!1985 = !DILocation(line: 234, column: 7, scope: !1822)
!1986 = !DILocation(line: 228, column: 16, scope: !1974)
!1987 = !DILocation(line: 0, scope: !1883, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 229, column: 15, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1974, file: !443, line: 228, column: 16)
!1990 = !DILocation(line: 120, column: 7, scope: !1892, inlinedAt: !1988)
!1991 = !DILocation(line: 120, column: 7, scope: !1883, inlinedAt: !1988)
!1992 = !DILocation(line: 127, column: 18, scope: !1883, inlinedAt: !1988)
!1993 = !DILocation(line: 0, scope: !1810, inlinedAt: !1994)
!1994 = distinct !DILocation(line: 129, column: 3, scope: !1883, inlinedAt: !1988)
!1995 = !DILocation(line: 75, column: 7, scope: !1815, inlinedAt: !1994)
!1996 = !DILocation(line: 75, column: 24, scope: !1815, inlinedAt: !1994)
!1997 = !DILocation(line: 75, column: 7, scope: !1810, inlinedAt: !1994)
!1998 = !DILocation(line: 122, column: 7, scope: !1895, inlinedAt: !1988)
!1999 = !DILocation(line: 77, column: 11, scope: !1819, inlinedAt: !1994)
!2000 = !DILocation(line: 0, scope: !1787, inlinedAt: !2001)
!2001 = distinct !DILocation(line: 231, column: 9, scope: !1989)
!2002 = !DILocation(line: 86, column: 23, scope: !1787, inlinedAt: !2001)
!2003 = !DILocation(line: 91, column: 3, scope: !1787, inlinedAt: !2001)
!2004 = !DILocation(line: 86, column: 40, scope: !1787, inlinedAt: !2001)
!2005 = !DILocation(line: 89, column: 25, scope: !1799, inlinedAt: !2001)
!2006 = !DILocation(line: 89, column: 22, scope: !1799, inlinedAt: !2001)
!2007 = !DILocation(line: 89, column: 7, scope: !1787, inlinedAt: !2001)
!2008 = !DILocation(line: 90, column: 16, scope: !1799, inlinedAt: !2001)
!2009 = !DILocation(line: 90, column: 14, scope: !1799, inlinedAt: !2001)
!2010 = !DILocation(line: 91, column: 26, scope: !1787, inlinedAt: !2001)
!2011 = !DILocation(line: 90, column: 5, scope: !1799, inlinedAt: !2001)
!2012 = !DILocation(line: 87, column: 36, scope: !1787, inlinedAt: !2001)
!2013 = !DILocation(line: 87, column: 24, scope: !1787, inlinedAt: !2001)
!2014 = !DILocation(line: 91, column: 30, scope: !1787, inlinedAt: !2001)
!2015 = !DILocation(line: 0, scope: !1810, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 93, column: 3, scope: !1787, inlinedAt: !2001)
!2017 = !DILocation(line: 75, column: 7, scope: !1815, inlinedAt: !2016)
!2018 = !DILocation(line: 75, column: 24, scope: !1815, inlinedAt: !2016)
!2019 = !DILocation(line: 75, column: 7, scope: !1810, inlinedAt: !2016)
!2020 = !DILocation(line: 235, column: 5, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !1822, file: !443, line: 234, column: 7)
!2022 = !DILocation(line: 0, scope: !1974)
!2023 = !DILocation(line: 236, column: 1, scope: !1822)
!2024 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !443, file: !443, line: 268, type: !356, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442)
!2025 = !DILocation(line: 270, column: 23, scope: !2024)
!2026 = !DILocation(line: 270, column: 33, scope: !2024)
!2027 = !DILocalVariable(name: "tabs", arg: 1, scope: !2028, file: !443, line: 242, type: !2031)
!2028 = distinct !DISubprogram(name: "validate_tab_stops", scope: !443, file: !443, line: 242, type: !2029, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !2033)
!2029 = !DISubroutineType(types: !2030)
!2030 = !{null, !2031, !369}
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!2033 = !{!2027, !2034, !2035, !2036}
!2034 = !DILocalVariable(name: "entries", arg: 2, scope: !2028, file: !443, line: 242, type: !369)
!2035 = !DILocalVariable(name: "prev_tab", scope: !2028, file: !443, line: 244, type: !389)
!2036 = !DILocalVariable(name: "i", scope: !2037, file: !443, line: 246, type: !369)
!2037 = distinct !DILexicalBlock(scope: !2028, file: !443, line: 246, column: 3)
!2038 = !DILocation(line: 0, scope: !2028, inlinedAt: !2039)
!2039 = distinct !DILocation(line: 270, column: 3, scope: !2024)
!2040 = !DILocation(line: 0, scope: !2037, inlinedAt: !2039)
!2041 = !DILocation(line: 246, column: 23, scope: !2042, inlinedAt: !2039)
!2042 = distinct !DILexicalBlock(scope: !2037, file: !443, line: 246, column: 3)
!2043 = !DILocation(line: 246, column: 3, scope: !2037, inlinedAt: !2039)
!2044 = !DILocation(line: 246, column: 35, scope: !2042, inlinedAt: !2039)
!2045 = distinct !{!2045, !2043, !2046, !1215}
!2046 = !DILocation(line: 253, column: 5, scope: !2037, inlinedAt: !2039)
!2047 = !DILocation(line: 255, column: 7, scope: !2048, inlinedAt: !2039)
!2048 = distinct !DILexicalBlock(scope: !2028, file: !443, line: 255, column: 7)
!2049 = !DILocation(line: 255, column: 22, scope: !2048, inlinedAt: !2039)
!2050 = !DILocation(line: 248, column: 11, scope: !2051, inlinedAt: !2039)
!2051 = distinct !DILexicalBlock(scope: !2052, file: !443, line: 248, column: 11)
!2052 = distinct !DILexicalBlock(scope: !2042, file: !443, line: 247, column: 5)
!2053 = !DILocation(line: 248, column: 19, scope: !2051, inlinedAt: !2039)
!2054 = !DILocation(line: 248, column: 11, scope: !2052, inlinedAt: !2039)
!2055 = !DILocation(line: 249, column: 9, scope: !2051, inlinedAt: !2039)
!2056 = !DILocation(line: 250, column: 19, scope: !2057, inlinedAt: !2039)
!2057 = distinct !DILexicalBlock(scope: !2052, file: !443, line: 250, column: 11)
!2058 = !DILocation(line: 250, column: 11, scope: !2052, inlinedAt: !2039)
!2059 = !DILocation(line: 251, column: 9, scope: !2057, inlinedAt: !2039)
!2060 = !DILocation(line: 256, column: 5, scope: !2048, inlinedAt: !2039)
!2061 = !DILocation(line: 272, column: 22, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2024, file: !443, line: 272, column: 7)
!2063 = !DILocation(line: 272, column: 7, scope: !2024)
!2064 = !DILocation(line: 273, column: 35, scope: !2062)
!2065 = !DILocation(line: 273, column: 33, scope: !2062)
!2066 = !DILocation(line: 273, column: 5, scope: !2062)
!2067 = !DILocation(line: 276, column: 27, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2062, file: !443, line: 276, column: 12)
!2069 = !DILocation(line: 276, column: 32, scope: !2068)
!2070 = !DILocation(line: 277, column: 16, scope: !2068)
!2071 = !DILocation(line: 277, column: 5, scope: !2068)
!2072 = !DILocation(line: 0, scope: !2062)
!2073 = !DILocation(line: 280, column: 1, scope: !2024)
!2074 = distinct !DISubprogram(name: "get_next_tab_column", scope: !443, file: !443, line: 288, type: !2075, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !2079)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{!389, !389, !2077, !2078}
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!2079 = !{!2080, !2081, !2082, !2083, !2084, !2090, !2094}
!2080 = !DILocalVariable(name: "column", arg: 1, scope: !2074, file: !443, line: 288, type: !389)
!2081 = !DILocalVariable(name: "tab_index", arg: 2, scope: !2074, file: !443, line: 288, type: !2077)
!2082 = !DILocalVariable(name: "last_tab", arg: 3, scope: !2074, file: !443, line: 288, type: !2078)
!2083 = !DILocalVariable(name: "tab_distance", scope: !2074, file: !443, line: 291, type: !389)
!2084 = !DILocalVariable(name: "tab", scope: !2085, file: !443, line: 302, type: !389)
!2085 = distinct !DILexicalBlock(scope: !2086, file: !443, line: 301, column: 9)
!2086 = distinct !DILexicalBlock(scope: !2087, file: !443, line: 300, column: 7)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !443, line: 300, column: 7)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !443, line: 297, column: 5)
!2089 = distinct !DILexicalBlock(scope: !2074, file: !443, line: 294, column: 7)
!2090 = !DILocalVariable(name: "end_tab", scope: !2091, file: !443, line: 314, type: !389)
!2091 = distinct !DILexicalBlock(scope: !2092, file: !443, line: 311, column: 9)
!2092 = distinct !DILexicalBlock(scope: !2093, file: !443, line: 310, column: 16)
!2093 = distinct !DILexicalBlock(scope: !2088, file: !443, line: 308, column: 11)
!2094 = !DILocalVariable(name: "tab_stop", scope: !2074, file: !443, line: 324, type: !389)
!2095 = !DILocation(line: 0, scope: !2074)
!2096 = !DILocation(line: 290, column: 13, scope: !2074)
!2097 = !DILocation(line: 294, column: 7, scope: !2089)
!2098 = !DILocation(line: 294, column: 7, scope: !2074)
!2099 = !DILocation(line: 300, column: 26, scope: !2086)
!2100 = !DILocation(line: 300, column: 7, scope: !2087)
!2101 = !DILocation(line: 295, column: 38, scope: !2089)
!2102 = !DILocation(line: 295, column: 29, scope: !2089)
!2103 = !DILocation(line: 295, column: 5, scope: !2089)
!2104 = !DILocation(line: 302, column: 23, scope: !2085)
!2105 = !DILocation(line: 0, scope: !2085)
!2106 = !DILocation(line: 303, column: 22, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2085, file: !443, line: 303, column: 15)
!2108 = !DILocation(line: 300, column: 57, scope: !2086)
!2109 = distinct !{!2109, !2100, !2110, !1215}
!2110 = !DILocation(line: 305, column: 9, scope: !2087)
!2111 = !DILocation(line: 308, column: 11, scope: !2093)
!2112 = !DILocation(line: 308, column: 11, scope: !2088)
!2113 = !DILocation(line: 309, column: 45, scope: !2093)
!2114 = !DILocation(line: 309, column: 36, scope: !2093)
!2115 = !DILocation(line: 309, column: 9, scope: !2093)
!2116 = !DILocation(line: 310, column: 16, scope: !2092)
!2117 = !DILocation(line: 310, column: 16, scope: !2093)
!2118 = !DILocation(line: 314, column: 27, scope: !2091)
!2119 = !DILocation(line: 0, scope: !2091)
!2120 = !DILocation(line: 315, column: 52, scope: !2091)
!2121 = !DILocation(line: 315, column: 63, scope: !2091)
!2122 = !DILocation(line: 315, column: 41, scope: !2091)
!2123 = !DILocation(line: 316, column: 9, scope: !2091)
!2124 = !DILocation(line: 319, column: 21, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2092, file: !443, line: 318, column: 9)
!2126 = !DILocation(line: 0, scope: !2089)
!2127 = !DILocation(line: 325, column: 7, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2074, file: !443, line: 325, column: 7)
!2129 = !DILocation(line: 325, column: 7, scope: !2074)
!2130 = !DILocation(line: 326, column: 5, scope: !2128)
!2131 = !DILocation(line: 328, column: 1, scope: !2074)
!2132 = distinct !DISubprogram(name: "set_file_list", scope: !443, file: !443, line: 333, type: !2133, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !2135)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{null, !594}
!2135 = !{!2136}
!2136 = !DILocalVariable(name: "list", arg: 1, scope: !2132, file: !443, line: 333, type: !594)
!2137 = !DILocation(line: 0, scope: !2132)
!2138 = !DILocation(line: 335, column: 19, scope: !2132)
!2139 = !DILocation(line: 337, column: 8, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2132, file: !443, line: 337, column: 7)
!2141 = !DILocation(line: 0, scope: !2140)
!2142 = !DILocation(line: 341, column: 1, scope: !2132)
!2143 = !DILocation(line: 0, scope: !495)
!2144 = !DILocation(line: 354, column: 7, scope: !537)
!2145 = !DILocation(line: 354, column: 7, scope: !495)
!2146 = !DILocation(line: 356, column: 17, scope: !536)
!2147 = !DILocation(line: 0, scope: !536)
!2148 = !DILocalVariable(name: "__stream", arg: 1, scope: !2149, file: !1420, line: 135, type: !498)
!2149 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1420, file: !1420, line: 135, type: !2150, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !2152)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!77, !498}
!2152 = !{!2148}
!2153 = !DILocation(line: 0, scope: !2149, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 357, column: 12, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !536, file: !443, line: 357, column: 11)
!2156 = !DILocation(line: 137, column: 10, scope: !2149, inlinedAt: !2154)
!2157 = !DILocation(line: 357, column: 12, scope: !2155)
!2158 = !DILocation(line: 357, column: 11, scope: !536)
!2159 = !DILocation(line: 359, column: 18, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !536, file: !443, line: 359, column: 11)
!2161 = !DILocalVariable(name: "__s1", arg: 1, scope: !2162, file: !1181, line: 1359, type: !113)
!2162 = distinct !DISubprogram(name: "streq", scope: !1181, file: !1181, line: 1359, type: !1182, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !2163)
!2163 = !{!2161, !2164}
!2164 = !DILocalVariable(name: "__s2", arg: 2, scope: !2162, file: !1181, line: 1359, type: !113)
!2165 = !DILocation(line: 0, scope: !2162, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 359, column: 11, scope: !2160)
!2167 = !DILocation(line: 1361, column: 11, scope: !2162, inlinedAt: !2166)
!2168 = !DILocation(line: 1361, column: 10, scope: !2162, inlinedAt: !2166)
!2169 = !DILocation(line: 359, column: 11, scope: !536)
!2170 = !DILocation(line: 360, column: 9, scope: !2160)
!2171 = !DILocation(line: 361, column: 16, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2160, file: !443, line: 361, column: 16)
!2173 = !DILocation(line: 361, column: 28, scope: !2172)
!2174 = !DILocation(line: 361, column: 16, scope: !2160)
!2175 = !DILocation(line: 362, column: 15, scope: !2172)
!2176 = !DILocation(line: 362, column: 9, scope: !2172)
!2177 = !DILocation(line: 363, column: 11, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !536, file: !443, line: 363, column: 11)
!2179 = !DILocation(line: 363, column: 11, scope: !536)
!2180 = !DILocation(line: 365, column: 11, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2178, file: !443, line: 364, column: 9)
!2182 = !DILocation(line: 366, column: 23, scope: !2181)
!2183 = !DILocation(line: 367, column: 9, scope: !2181)
!2184 = !DILocation(line: 370, column: 28, scope: !495)
!2185 = !DILocation(line: 370, column: 18, scope: !495)
!2186 = !DILocation(line: 370, column: 32, scope: !495)
!2187 = !DILocation(line: 370, column: 3, scope: !495)
!2188 = !DILocation(line: 0, scope: !2162, inlinedAt: !2189)
!2189 = distinct !DILocation(line: 372, column: 11, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2191, file: !443, line: 372, column: 11)
!2191 = distinct !DILexicalBlock(scope: !495, file: !443, line: 371, column: 5)
!2192 = !DILocation(line: 1361, column: 11, scope: !2162, inlinedAt: !2189)
!2193 = !DILocation(line: 1361, column: 10, scope: !2162, inlinedAt: !2189)
!2194 = !DILocation(line: 372, column: 11, scope: !2191)
!2195 = !DILocation(line: 374, column: 27, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2190, file: !443, line: 373, column: 9)
!2197 = !DILocation(line: 375, column: 16, scope: !2196)
!2198 = !DILocation(line: 376, column: 9, scope: !2196)
!2199 = !DILocation(line: 378, column: 14, scope: !2190)
!2200 = !DILocation(line: 0, scope: !2190)
!2201 = !DILocation(line: 379, column: 11, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2191, file: !443, line: 379, column: 11)
!2203 = !DILocation(line: 379, column: 11, scope: !2191)
!2204 = !DILocation(line: 381, column: 21, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2202, file: !443, line: 380, column: 9)
!2206 = !DILocation(line: 382, column: 11, scope: !2205)
!2207 = !DILocation(line: 383, column: 11, scope: !2205)
!2208 = !DILocation(line: 385, column: 7, scope: !2191)
!2209 = !DILocation(line: 386, column: 19, scope: !2191)
!2210 = distinct !{!2210, !2187, !2211, !1215}
!2211 = !DILocation(line: 387, column: 5, scope: !495)
!2212 = !DILocation(line: 389, column: 1, scope: !495)
!2213 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !443, file: !443, line: 393, type: !356, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442)
!2214 = !DILocation(line: 395, column: 9, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2213, file: !443, line: 395, column: 9)
!2216 = !DILocation(line: 395, column: 25, scope: !2215)
!2217 = !DILocation(line: 395, column: 36, scope: !2215)
!2218 = !DILocation(line: 395, column: 28, scope: !2215)
!2219 = !DILocation(line: 395, column: 43, scope: !2215)
!2220 = !DILocation(line: 395, column: 9, scope: !2213)
!2221 = !DILocation(line: 396, column: 7, scope: !2215)
!2222 = !DILocation(line: 397, column: 1, scope: !2213)
!2223 = distinct !DISubprogram(name: "emit_tab_list_info", scope: !443, file: !443, line: 402, type: !1119, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !2224)
!2224 = !{!2225}
!2225 = !DILocalVariable(name: "program", arg: 1, scope: !2223, file: !443, line: 402, type: !113)
!2226 = !DILocation(line: 0, scope: !2223)
!2227 = !DILocation(line: 405, column: 20, scope: !2223)
!2228 = !DILocation(line: 0, scope: !597, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 405, column: 3, scope: !2223)
!2230 = !DILocation(line: 581, column: 7, scope: !604, inlinedAt: !2229)
!2231 = !DILocation(line: 581, column: 19, scope: !604, inlinedAt: !2229)
!2232 = !DILocation(line: 581, column: 7, scope: !597, inlinedAt: !2229)
!2233 = !DILocation(line: 585, column: 26, scope: !603, inlinedAt: !2229)
!2234 = !DILocation(line: 0, scope: !603, inlinedAt: !2229)
!2235 = !DILocation(line: 586, column: 23, scope: !603, inlinedAt: !2229)
!2236 = !DILocation(line: 586, column: 28, scope: !603, inlinedAt: !2229)
!2237 = !DILocation(line: 586, column: 32, scope: !603, inlinedAt: !2229)
!2238 = !DILocation(line: 586, column: 38, scope: !603, inlinedAt: !2229)
!2239 = !DILocation(line: 0, scope: !2162, inlinedAt: !2240)
!2240 = distinct !DILocation(line: 586, column: 41, scope: !603, inlinedAt: !2229)
!2241 = !DILocation(line: 1361, column: 11, scope: !2162, inlinedAt: !2240)
!2242 = !DILocation(line: 1361, column: 10, scope: !2162, inlinedAt: !2240)
!2243 = !DILocation(line: 586, column: 19, scope: !603, inlinedAt: !2229)
!2244 = !DILocation(line: 587, column: 5, scope: !603, inlinedAt: !2229)
!2245 = !DILocation(line: 588, column: 7, scope: !2246, inlinedAt: !2229)
!2246 = distinct !DILexicalBlock(scope: !597, file: !76, line: 588, column: 7)
!2247 = !DILocation(line: 588, column: 7, scope: !597, inlinedAt: !2229)
!2248 = !DILocation(line: 590, column: 7, scope: !2249, inlinedAt: !2229)
!2249 = distinct !DILexicalBlock(scope: !2246, file: !76, line: 589, column: 5)
!2250 = !DILocation(line: 591, column: 7, scope: !2249, inlinedAt: !2229)
!2251 = !DILocation(line: 595, column: 37, scope: !597, inlinedAt: !2229)
!2252 = !DILocation(line: 595, column: 35, scope: !597, inlinedAt: !2229)
!2253 = !DILocation(line: 596, column: 29, scope: !597, inlinedAt: !2229)
!2254 = !DILocation(line: 597, column: 8, scope: !611, inlinedAt: !2229)
!2255 = !DILocation(line: 597, column: 7, scope: !597, inlinedAt: !2229)
!2256 = !DILocation(line: 604, column: 24, scope: !610, inlinedAt: !2229)
!2257 = !DILocation(line: 604, column: 12, scope: !611, inlinedAt: !2229)
!2258 = !DILocation(line: 0, scope: !609, inlinedAt: !2229)
!2259 = !DILocation(line: 610, column: 16, scope: !609, inlinedAt: !2229)
!2260 = !DILocation(line: 610, column: 7, scope: !609, inlinedAt: !2229)
!2261 = !DILocation(line: 611, column: 21, scope: !609, inlinedAt: !2229)
!2262 = !DILocation(line: 611, column: 19, scope: !609, inlinedAt: !2229)
!2263 = !DILocation(line: 611, column: 16, scope: !609, inlinedAt: !2229)
!2264 = !DILocation(line: 610, column: 30, scope: !609, inlinedAt: !2229)
!2265 = distinct !{!2265, !2260, !2261, !1215}
!2266 = !DILocation(line: 612, column: 18, scope: !2267, inlinedAt: !2229)
!2267 = distinct !DILexicalBlock(scope: !609, file: !76, line: 612, column: 11)
!2268 = !DILocation(line: 612, column: 11, scope: !609, inlinedAt: !2229)
!2269 = !DILocation(line: 618, column: 5, scope: !609, inlinedAt: !2229)
!2270 = !DILocation(line: 620, column: 23, scope: !597, inlinedAt: !2229)
!2271 = !DILocation(line: 625, column: 39, scope: !597, inlinedAt: !2229)
!2272 = !DILocation(line: 626, column: 3, scope: !597, inlinedAt: !2229)
!2273 = !DILocation(line: 626, column: 10, scope: !597, inlinedAt: !2229)
!2274 = !DILocation(line: 626, column: 21, scope: !597, inlinedAt: !2229)
!2275 = !DILocation(line: 628, column: 44, scope: !2276, inlinedAt: !2229)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !76, line: 628, column: 11)
!2277 = distinct !DILexicalBlock(scope: !597, file: !76, line: 627, column: 5)
!2278 = !DILocation(line: 628, column: 32, scope: !2276, inlinedAt: !2229)
!2279 = !DILocation(line: 628, column: 49, scope: !2276, inlinedAt: !2229)
!2280 = !DILocation(line: 628, column: 11, scope: !2277, inlinedAt: !2229)
!2281 = !DILocation(line: 630, column: 11, scope: !2282, inlinedAt: !2229)
!2282 = distinct !DILexicalBlock(scope: !2277, file: !76, line: 630, column: 11)
!2283 = !DILocation(line: 630, column: 11, scope: !2277, inlinedAt: !2229)
!2284 = !DILocation(line: 632, column: 26, scope: !2285, inlinedAt: !2229)
!2285 = distinct !DILexicalBlock(scope: !2286, file: !76, line: 632, column: 15)
!2286 = distinct !DILexicalBlock(scope: !2282, file: !76, line: 631, column: 9)
!2287 = !DILocation(line: 632, column: 34, scope: !2285, inlinedAt: !2229)
!2288 = !DILocation(line: 632, column: 37, scope: !2285, inlinedAt: !2229)
!2289 = !DILocation(line: 632, column: 15, scope: !2286, inlinedAt: !2229)
!2290 = !DILocation(line: 640, column: 16, scope: !2277, inlinedAt: !2229)
!2291 = distinct !{!2291, !2272, !2292, !1215}
!2292 = !DILocation(line: 641, column: 5, scope: !597, inlinedAt: !2229)
!2293 = !DILocation(line: 644, column: 3, scope: !597, inlinedAt: !2229)
!2294 = !DILocation(line: 0, scope: !2162, inlinedAt: !2295)
!2295 = distinct !DILocation(line: 648, column: 31, scope: !597, inlinedAt: !2229)
!2296 = !DILocation(line: 1361, column: 11, scope: !2162, inlinedAt: !2295)
!2297 = !DILocation(line: 1361, column: 10, scope: !2162, inlinedAt: !2295)
!2298 = !DILocation(line: 648, column: 31, scope: !597, inlinedAt: !2229)
!2299 = !DILocation(line: 0, scope: !2162, inlinedAt: !2300)
!2300 = distinct !DILocation(line: 649, column: 31, scope: !597, inlinedAt: !2229)
!2301 = !DILocation(line: 1361, column: 11, scope: !2162, inlinedAt: !2300)
!2302 = !DILocation(line: 1361, column: 10, scope: !2162, inlinedAt: !2300)
!2303 = !DILocation(line: 649, column: 31, scope: !597, inlinedAt: !2229)
!2304 = !DILocation(line: 0, scope: !2162, inlinedAt: !2305)
!2305 = distinct !DILocation(line: 650, column: 31, scope: !597, inlinedAt: !2229)
!2306 = !DILocation(line: 1361, column: 11, scope: !2162, inlinedAt: !2305)
!2307 = !DILocation(line: 1361, column: 10, scope: !2162, inlinedAt: !2305)
!2308 = !DILocation(line: 650, column: 31, scope: !597, inlinedAt: !2229)
!2309 = !DILocation(line: 0, scope: !2162, inlinedAt: !2310)
!2310 = distinct !DILocation(line: 651, column: 31, scope: !597, inlinedAt: !2229)
!2311 = !DILocation(line: 1361, column: 11, scope: !2162, inlinedAt: !2310)
!2312 = !DILocation(line: 1361, column: 10, scope: !2162, inlinedAt: !2310)
!2313 = !DILocation(line: 651, column: 31, scope: !597, inlinedAt: !2229)
!2314 = !DILocation(line: 0, scope: !2162, inlinedAt: !2315)
!2315 = distinct !DILocation(line: 652, column: 31, scope: !597, inlinedAt: !2229)
!2316 = !DILocation(line: 1361, column: 11, scope: !2162, inlinedAt: !2315)
!2317 = !DILocation(line: 1361, column: 10, scope: !2162, inlinedAt: !2315)
!2318 = !DILocation(line: 652, column: 31, scope: !597, inlinedAt: !2229)
!2319 = !DILocation(line: 0, scope: !2162, inlinedAt: !2320)
!2320 = distinct !DILocation(line: 653, column: 31, scope: !597, inlinedAt: !2229)
!2321 = !DILocation(line: 1361, column: 11, scope: !2162, inlinedAt: !2320)
!2322 = !DILocation(line: 1361, column: 10, scope: !2162, inlinedAt: !2320)
!2323 = !DILocation(line: 653, column: 31, scope: !597, inlinedAt: !2229)
!2324 = !DILocation(line: 0, scope: !2162, inlinedAt: !2325)
!2325 = distinct !DILocation(line: 654, column: 31, scope: !597, inlinedAt: !2229)
!2326 = !DILocation(line: 1361, column: 11, scope: !2162, inlinedAt: !2325)
!2327 = !DILocation(line: 1361, column: 10, scope: !2162, inlinedAt: !2325)
!2328 = !DILocation(line: 654, column: 31, scope: !597, inlinedAt: !2229)
!2329 = !DILocation(line: 0, scope: !2162, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 655, column: 31, scope: !597, inlinedAt: !2229)
!2331 = !DILocation(line: 1361, column: 11, scope: !2162, inlinedAt: !2330)
!2332 = !DILocation(line: 1361, column: 10, scope: !2162, inlinedAt: !2330)
!2333 = !DILocation(line: 655, column: 31, scope: !597, inlinedAt: !2229)
!2334 = !DILocation(line: 0, scope: !2162, inlinedAt: !2335)
!2335 = distinct !DILocation(line: 656, column: 31, scope: !597, inlinedAt: !2229)
!2336 = !DILocation(line: 1361, column: 11, scope: !2162, inlinedAt: !2335)
!2337 = !DILocation(line: 1361, column: 10, scope: !2162, inlinedAt: !2335)
!2338 = !DILocation(line: 656, column: 31, scope: !597, inlinedAt: !2229)
!2339 = !DILocation(line: 0, scope: !2162, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 657, column: 31, scope: !597, inlinedAt: !2229)
!2341 = !DILocation(line: 1361, column: 11, scope: !2162, inlinedAt: !2340)
!2342 = !DILocation(line: 1361, column: 10, scope: !2162, inlinedAt: !2340)
!2343 = !DILocation(line: 657, column: 31, scope: !597, inlinedAt: !2229)
!2344 = !DILocation(line: 663, column: 7, scope: !2345, inlinedAt: !2229)
!2345 = distinct !DILexicalBlock(scope: !597, file: !76, line: 663, column: 7)
!2346 = !DILocation(line: 664, column: 7, scope: !2345, inlinedAt: !2229)
!2347 = !DILocation(line: 664, column: 10, scope: !2345, inlinedAt: !2229)
!2348 = !DILocation(line: 663, column: 7, scope: !597, inlinedAt: !2229)
!2349 = !DILocation(line: 669, column: 7, scope: !2350, inlinedAt: !2229)
!2350 = distinct !DILexicalBlock(scope: !2345, file: !76, line: 665, column: 5)
!2351 = !DILocation(line: 671, column: 5, scope: !2350, inlinedAt: !2229)
!2352 = !DILocation(line: 676, column: 7, scope: !2353, inlinedAt: !2229)
!2353 = distinct !DILexicalBlock(scope: !2345, file: !76, line: 673, column: 5)
!2354 = !DILocation(line: 679, column: 3, scope: !597, inlinedAt: !2229)
!2355 = !DILocation(line: 683, column: 3, scope: !597, inlinedAt: !2229)
!2356 = !DILocation(line: 686, column: 3, scope: !597, inlinedAt: !2229)
!2357 = !DILocation(line: 688, column: 3, scope: !597, inlinedAt: !2229)
!2358 = !DILocation(line: 691, column: 3, scope: !597, inlinedAt: !2229)
!2359 = !DILocation(line: 695, column: 3, scope: !597, inlinedAt: !2229)
!2360 = !DILocation(line: 696, column: 1, scope: !597, inlinedAt: !2229)
!2361 = !DILocation(line: 409, column: 3, scope: !2223)
!2362 = !DILocation(line: 416, column: 1, scope: !2223)
!2363 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !689, file: !689, line: 50, type: !1119, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !2364)
!2364 = !{!2365}
!2365 = !DILocalVariable(name: "file", arg: 1, scope: !2363, file: !689, line: 50, type: !113)
!2366 = !DILocation(line: 0, scope: !2363)
!2367 = !DILocation(line: 52, column: 13, scope: !2363)
!2368 = !DILocation(line: 53, column: 1, scope: !2363)
!2369 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !689, file: !689, line: 87, type: !2370, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !2372)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{null, !154}
!2372 = !{!2373}
!2373 = !DILocalVariable(name: "ignore", arg: 1, scope: !2369, file: !689, line: 87, type: !154)
!2374 = !DILocation(line: 0, scope: !2369)
!2375 = !DILocation(line: 89, column: 16, scope: !2369)
!2376 = !DILocation(line: 90, column: 1, scope: !2369)
!2377 = distinct !DISubprogram(name: "close_stdout", scope: !689, file: !689, line: 116, type: !356, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !2378)
!2378 = !{!2379}
!2379 = !DILocalVariable(name: "write_error", scope: !2380, file: !689, line: 121, type: !113)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !689, line: 120, column: 5)
!2381 = distinct !DILexicalBlock(scope: !2377, file: !689, line: 118, column: 7)
!2382 = !DILocation(line: 118, column: 21, scope: !2381)
!2383 = !DILocation(line: 118, column: 7, scope: !2381)
!2384 = !DILocation(line: 118, column: 29, scope: !2381)
!2385 = !DILocation(line: 119, column: 7, scope: !2381)
!2386 = !DILocation(line: 119, column: 12, scope: !2381)
!2387 = !DILocation(line: 119, column: 25, scope: !2381)
!2388 = !DILocation(line: 119, column: 28, scope: !2381)
!2389 = !DILocation(line: 119, column: 34, scope: !2381)
!2390 = !DILocation(line: 118, column: 7, scope: !2377)
!2391 = !DILocation(line: 121, column: 33, scope: !2380)
!2392 = !DILocation(line: 0, scope: !2380)
!2393 = !DILocation(line: 122, column: 11, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2380, file: !689, line: 122, column: 11)
!2395 = !DILocation(line: 0, scope: !2394)
!2396 = !DILocation(line: 122, column: 11, scope: !2380)
!2397 = !DILocation(line: 123, column: 9, scope: !2394)
!2398 = !DILocation(line: 126, column: 9, scope: !2394)
!2399 = !DILocation(line: 128, column: 14, scope: !2380)
!2400 = !DILocation(line: 128, column: 7, scope: !2380)
!2401 = !DILocation(line: 133, column: 42, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2377, file: !689, line: 133, column: 7)
!2403 = !DILocation(line: 133, column: 28, scope: !2402)
!2404 = !DILocation(line: 133, column: 50, scope: !2402)
!2405 = !DILocation(line: 133, column: 7, scope: !2377)
!2406 = !DILocation(line: 134, column: 12, scope: !2402)
!2407 = !DILocation(line: 134, column: 5, scope: !2402)
!2408 = !DILocation(line: 135, column: 1, scope: !2377)
!2409 = !DISubprogram(name: "_exit", scope: !2410, file: !2410, line: 624, type: !1088, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2410 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2411 = distinct !DISubprogram(name: "verror", scope: !704, file: !704, line: 251, type: !2412, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2414)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{null, !77, !77, !113, !714}
!2414 = !{!2415, !2416, !2417, !2418}
!2415 = !DILocalVariable(name: "status", arg: 1, scope: !2411, file: !704, line: 251, type: !77)
!2416 = !DILocalVariable(name: "errnum", arg: 2, scope: !2411, file: !704, line: 251, type: !77)
!2417 = !DILocalVariable(name: "message", arg: 3, scope: !2411, file: !704, line: 251, type: !113)
!2418 = !DILocalVariable(name: "args", arg: 4, scope: !2411, file: !704, line: 251, type: !714)
!2419 = !DILocation(line: 0, scope: !2411)
!2420 = !DILocation(line: 261, column: 3, scope: !2411)
!2421 = !DILocation(line: 265, column: 7, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2411, file: !704, line: 265, column: 7)
!2423 = !DILocation(line: 265, column: 7, scope: !2411)
!2424 = !DILocation(line: 266, column: 5, scope: !2422)
!2425 = !DILocation(line: 272, column: 7, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2422, file: !704, line: 268, column: 5)
!2427 = !DILocation(line: 276, column: 3, scope: !2411)
!2428 = !{i64 0, i64 8, !1098, i64 8, i64 8, !1098, i64 16, i64 8, !1098, i64 24, i64 4, !1168, i64 28, i64 4, !1168}
!2429 = !DILocation(line: 282, column: 1, scope: !2411)
!2430 = distinct !DISubprogram(name: "flush_stdout", scope: !704, file: !704, line: 163, type: !356, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2431)
!2431 = !{!2432}
!2432 = !DILocalVariable(name: "stdout_fd", scope: !2430, file: !704, line: 166, type: !77)
!2433 = !DILocation(line: 0, scope: !2430)
!2434 = !DILocalVariable(name: "fd", arg: 1, scope: !2435, file: !704, line: 145, type: !77)
!2435 = distinct !DISubprogram(name: "is_open", scope: !704, file: !704, line: 145, type: !2436, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2438)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!77, !77}
!2438 = !{!2434}
!2439 = !DILocation(line: 0, scope: !2435, inlinedAt: !2440)
!2440 = distinct !DILocation(line: 182, column: 25, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2430, file: !704, line: 182, column: 7)
!2442 = !DILocation(line: 157, column: 15, scope: !2435, inlinedAt: !2440)
!2443 = !DILocation(line: 157, column: 12, scope: !2435, inlinedAt: !2440)
!2444 = !DILocation(line: 182, column: 7, scope: !2430)
!2445 = !DILocation(line: 184, column: 5, scope: !2441)
!2446 = !DILocation(line: 185, column: 1, scope: !2430)
!2447 = distinct !DISubprogram(name: "error_tail", scope: !704, file: !704, line: 219, type: !2412, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2448)
!2448 = !{!2449, !2450, !2451, !2452}
!2449 = !DILocalVariable(name: "status", arg: 1, scope: !2447, file: !704, line: 219, type: !77)
!2450 = !DILocalVariable(name: "errnum", arg: 2, scope: !2447, file: !704, line: 219, type: !77)
!2451 = !DILocalVariable(name: "message", arg: 3, scope: !2447, file: !704, line: 219, type: !113)
!2452 = !DILocalVariable(name: "args", arg: 4, scope: !2447, file: !704, line: 219, type: !714)
!2453 = distinct !DIAssignID()
!2454 = !DILocation(line: 0, scope: !2447)
!2455 = !DILocation(line: 229, column: 13, scope: !2447)
!2456 = !DILocation(line: 135, column: 10, scope: !2457, inlinedAt: !2499)
!2457 = distinct !DISubprogram(name: "vfprintf", scope: !1155, file: !1155, line: 132, type: !2458, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2495)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!77, !2460, !1159, !716}
!2460 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2461)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2462, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !2463)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !2464)
!2464 = !{!2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2463, file: !171, line: 51, baseType: !77, size: 32)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2463, file: !171, line: 54, baseType: !107, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2463, file: !171, line: 55, baseType: !107, size: 64, offset: 128)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2463, file: !171, line: 56, baseType: !107, size: 64, offset: 192)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2463, file: !171, line: 57, baseType: !107, size: 64, offset: 256)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2463, file: !171, line: 58, baseType: !107, size: 64, offset: 320)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2463, file: !171, line: 59, baseType: !107, size: 64, offset: 384)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2463, file: !171, line: 60, baseType: !107, size: 64, offset: 448)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2463, file: !171, line: 61, baseType: !107, size: 64, offset: 512)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2463, file: !171, line: 64, baseType: !107, size: 64, offset: 576)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2463, file: !171, line: 65, baseType: !107, size: 64, offset: 640)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2463, file: !171, line: 66, baseType: !107, size: 64, offset: 704)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2463, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2463, file: !171, line: 70, baseType: !2479, size: 64, offset: 832)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2463, file: !171, line: 72, baseType: !77, size: 32, offset: 896)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2463, file: !171, line: 73, baseType: !77, size: 32, offset: 928)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2463, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2463, file: !171, line: 77, baseType: !109, size: 16, offset: 1024)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2463, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2463, file: !171, line: 79, baseType: !49, size: 8, offset: 1048)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2463, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2463, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2463, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2463, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2463, file: !171, line: 93, baseType: !2479, size: 64, offset: 1344)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2463, file: !171, line: 94, baseType: !108, size: 64, offset: 1408)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2463, file: !171, line: 95, baseType: !110, size: 64, offset: 1472)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2463, file: !171, line: 96, baseType: !77, size: 32, offset: 1536)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2463, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!2495 = !{!2496, !2497, !2498}
!2496 = !DILocalVariable(name: "__stream", arg: 1, scope: !2457, file: !1155, line: 132, type: !2460)
!2497 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2457, file: !1155, line: 133, type: !1159)
!2498 = !DILocalVariable(name: "__ap", arg: 3, scope: !2457, file: !1155, line: 133, type: !716)
!2499 = distinct !DILocation(line: 229, column: 3, scope: !2447)
!2500 = !{!2501, !2503}
!2501 = distinct !{!2501, !2502, !"vfprintf.inline: argument 0"}
!2502 = distinct !{!2502, !"vfprintf.inline"}
!2503 = distinct !{!2503, !2502, !"vfprintf.inline: argument 1"}
!2504 = !DILocation(line: 229, column: 3, scope: !2447)
!2505 = !DILocation(line: 0, scope: !2457, inlinedAt: !2499)
!2506 = !DILocation(line: 232, column: 3, scope: !2447)
!2507 = !DILocation(line: 233, column: 7, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2447, file: !704, line: 233, column: 7)
!2509 = !DILocation(line: 233, column: 7, scope: !2447)
!2510 = !DILocalVariable(name: "errbuf", scope: !2511, file: !704, line: 193, type: !2515)
!2511 = distinct !DISubprogram(name: "print_errno_message", scope: !704, file: !704, line: 188, type: !1088, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2512)
!2512 = !{!2513, !2514, !2510}
!2513 = !DILocalVariable(name: "errnum", arg: 1, scope: !2511, file: !704, line: 188, type: !77)
!2514 = !DILocalVariable(name: "s", scope: !2511, file: !704, line: 190, type: !113)
!2515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2516)
!2516 = !{!2517}
!2517 = !DISubrange(count: 1024)
!2518 = !DILocation(line: 0, scope: !2511, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 234, column: 5, scope: !2508)
!2520 = !DILocation(line: 193, column: 3, scope: !2511, inlinedAt: !2519)
!2521 = !DILocation(line: 195, column: 7, scope: !2511, inlinedAt: !2519)
!2522 = !DILocation(line: 207, column: 9, scope: !2523, inlinedAt: !2519)
!2523 = distinct !DILexicalBlock(scope: !2511, file: !704, line: 207, column: 7)
!2524 = !DILocation(line: 207, column: 7, scope: !2511, inlinedAt: !2519)
!2525 = !DILocation(line: 208, column: 9, scope: !2523, inlinedAt: !2519)
!2526 = !DILocation(line: 208, column: 5, scope: !2523, inlinedAt: !2519)
!2527 = !DILocation(line: 214, column: 3, scope: !2511, inlinedAt: !2519)
!2528 = !DILocation(line: 216, column: 1, scope: !2511, inlinedAt: !2519)
!2529 = !DILocation(line: 234, column: 5, scope: !2508)
!2530 = !DILocation(line: 238, column: 3, scope: !2447)
!2531 = !DILocalVariable(name: "__c", arg: 1, scope: !2532, file: !1420, line: 101, type: !77)
!2532 = distinct !DISubprogram(name: "putc_unlocked", scope: !1420, file: !1420, line: 101, type: !2533, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2535)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!77, !77, !2461}
!2535 = !{!2531, !2536}
!2536 = !DILocalVariable(name: "__stream", arg: 2, scope: !2532, file: !1420, line: 101, type: !2461)
!2537 = !DILocation(line: 0, scope: !2532, inlinedAt: !2538)
!2538 = distinct !DILocation(line: 238, column: 3, scope: !2447)
!2539 = !DILocation(line: 103, column: 10, scope: !2532, inlinedAt: !2538)
!2540 = !DILocation(line: 240, column: 3, scope: !2447)
!2541 = !DILocation(line: 241, column: 7, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2447, file: !704, line: 241, column: 7)
!2543 = !DILocation(line: 241, column: 7, scope: !2447)
!2544 = !DILocation(line: 242, column: 5, scope: !2542)
!2545 = !DILocation(line: 243, column: 1, scope: !2447)
!2546 = !DISubprogram(name: "__vfprintf_chk", scope: !1155, file: !1155, line: 96, type: !2547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!77, !2460, !77, !1159, !716}
!2549 = !DISubprogram(name: "strerror_r", scope: !1285, file: !1285, line: 444, type: !2550, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2550 = !DISubroutineType(types: !2551)
!2551 = !{!107, !77, !107, !110}
!2552 = !DISubprogram(name: "fcntl", scope: !2553, file: !2553, line: 149, type: !2554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2553 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!77, !77, !77, null}
!2556 = distinct !DISubprogram(name: "error", scope: !704, file: !704, line: 285, type: !2557, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2559)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{null, !77, !77, !113, null}
!2559 = !{!2560, !2561, !2562, !2563}
!2560 = !DILocalVariable(name: "status", arg: 1, scope: !2556, file: !704, line: 285, type: !77)
!2561 = !DILocalVariable(name: "errnum", arg: 2, scope: !2556, file: !704, line: 285, type: !77)
!2562 = !DILocalVariable(name: "message", arg: 3, scope: !2556, file: !704, line: 285, type: !113)
!2563 = !DILocalVariable(name: "ap", scope: !2556, file: !704, line: 287, type: !714)
!2564 = distinct !DIAssignID()
!2565 = !DILocation(line: 0, scope: !2556)
!2566 = !DILocation(line: 287, column: 3, scope: !2556)
!2567 = !DILocation(line: 288, column: 3, scope: !2556)
!2568 = !DILocation(line: 289, column: 3, scope: !2556)
!2569 = !DILocation(line: 290, column: 3, scope: !2556)
!2570 = !DILocation(line: 291, column: 1, scope: !2556)
!2571 = !DILocation(line: 0, scope: !711)
!2572 = !DILocation(line: 302, column: 7, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !711, file: !704, line: 302, column: 7)
!2574 = !DILocation(line: 302, column: 7, scope: !711)
!2575 = !DILocation(line: 307, column: 11, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2577, file: !704, line: 307, column: 11)
!2577 = distinct !DILexicalBlock(scope: !2573, file: !704, line: 303, column: 5)
!2578 = !DILocation(line: 307, column: 27, scope: !2576)
!2579 = !DILocation(line: 308, column: 11, scope: !2576)
!2580 = !DILocation(line: 308, column: 28, scope: !2576)
!2581 = !DILocation(line: 308, column: 25, scope: !2576)
!2582 = !DILocation(line: 309, column: 15, scope: !2576)
!2583 = !DILocation(line: 309, column: 33, scope: !2576)
!2584 = !DILocation(line: 310, column: 19, scope: !2576)
!2585 = !DILocation(line: 311, column: 22, scope: !2576)
!2586 = !DILocation(line: 311, column: 56, scope: !2576)
!2587 = !DILocation(line: 307, column: 11, scope: !2577)
!2588 = !DILocation(line: 316, column: 21, scope: !2577)
!2589 = !DILocation(line: 317, column: 23, scope: !2577)
!2590 = !DILocation(line: 318, column: 5, scope: !2577)
!2591 = !DILocation(line: 327, column: 3, scope: !711)
!2592 = !DILocation(line: 331, column: 7, scope: !2593)
!2593 = distinct !DILexicalBlock(scope: !711, file: !704, line: 331, column: 7)
!2594 = !DILocation(line: 331, column: 7, scope: !711)
!2595 = !DILocation(line: 332, column: 5, scope: !2593)
!2596 = !DILocation(line: 338, column: 7, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2593, file: !704, line: 334, column: 5)
!2598 = !DILocation(line: 346, column: 3, scope: !711)
!2599 = !DILocation(line: 350, column: 3, scope: !711)
!2600 = !DILocation(line: 356, column: 1, scope: !711)
!2601 = distinct !DISubprogram(name: "error_at_line", scope: !704, file: !704, line: 359, type: !2602, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2604)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{null, !77, !77, !113, !72, !113, null}
!2604 = !{!2605, !2606, !2607, !2608, !2609, !2610}
!2605 = !DILocalVariable(name: "status", arg: 1, scope: !2601, file: !704, line: 359, type: !77)
!2606 = !DILocalVariable(name: "errnum", arg: 2, scope: !2601, file: !704, line: 359, type: !77)
!2607 = !DILocalVariable(name: "file_name", arg: 3, scope: !2601, file: !704, line: 359, type: !113)
!2608 = !DILocalVariable(name: "line_number", arg: 4, scope: !2601, file: !704, line: 360, type: !72)
!2609 = !DILocalVariable(name: "message", arg: 5, scope: !2601, file: !704, line: 360, type: !113)
!2610 = !DILocalVariable(name: "ap", scope: !2601, file: !704, line: 362, type: !714)
!2611 = distinct !DIAssignID()
!2612 = !DILocation(line: 0, scope: !2601)
!2613 = !DILocation(line: 362, column: 3, scope: !2601)
!2614 = !DILocation(line: 363, column: 3, scope: !2601)
!2615 = !DILocation(line: 364, column: 3, scope: !2601)
!2616 = !DILocation(line: 366, column: 3, scope: !2601)
!2617 = !DILocation(line: 367, column: 1, scope: !2601)
!2618 = distinct !DISubprogram(name: "fdadvise", scope: !1010, file: !1010, line: 25, type: !2619, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1009, retainedNodes: !2623)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{null, !77, !2621, !2621, !2622}
!2621 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !715, line: 63, baseType: !193)
!2622 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !1013, line: 51, baseType: !1012)
!2623 = !{!2624, !2625, !2626, !2627}
!2624 = !DILocalVariable(name: "fd", arg: 1, scope: !2618, file: !1010, line: 25, type: !77)
!2625 = !DILocalVariable(name: "offset", arg: 2, scope: !2618, file: !1010, line: 25, type: !2621)
!2626 = !DILocalVariable(name: "len", arg: 3, scope: !2618, file: !1010, line: 25, type: !2621)
!2627 = !DILocalVariable(name: "advice", arg: 4, scope: !2618, file: !1010, line: 25, type: !2622)
!2628 = !DILocation(line: 0, scope: !2618)
!2629 = !DILocation(line: 28, column: 3, scope: !2618)
!2630 = !DILocation(line: 30, column: 1, scope: !2618)
!2631 = !DISubprogram(name: "posix_fadvise", scope: !2553, file: !2553, line: 273, type: !2632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{!77, !77, !2621, !2621, !77}
!2634 = distinct !DISubprogram(name: "fadvise", scope: !1010, file: !1010, line: 33, type: !2635, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1009, retainedNodes: !2671)
!2635 = !DISubroutineType(types: !2636)
!2636 = !{null, !2637, !2622}
!2637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2638, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !2639)
!2639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !2640)
!2640 = !{!2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670}
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2639, file: !171, line: 51, baseType: !77, size: 32)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2639, file: !171, line: 54, baseType: !107, size: 64, offset: 64)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2639, file: !171, line: 55, baseType: !107, size: 64, offset: 128)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2639, file: !171, line: 56, baseType: !107, size: 64, offset: 192)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2639, file: !171, line: 57, baseType: !107, size: 64, offset: 256)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2639, file: !171, line: 58, baseType: !107, size: 64, offset: 320)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2639, file: !171, line: 59, baseType: !107, size: 64, offset: 384)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2639, file: !171, line: 60, baseType: !107, size: 64, offset: 448)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2639, file: !171, line: 61, baseType: !107, size: 64, offset: 512)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2639, file: !171, line: 64, baseType: !107, size: 64, offset: 576)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2639, file: !171, line: 65, baseType: !107, size: 64, offset: 640)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2639, file: !171, line: 66, baseType: !107, size: 64, offset: 704)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2639, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2639, file: !171, line: 70, baseType: !2655, size: 64, offset: 832)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2639, size: 64)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2639, file: !171, line: 72, baseType: !77, size: 32, offset: 896)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2639, file: !171, line: 73, baseType: !77, size: 32, offset: 928)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2639, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2639, file: !171, line: 77, baseType: !109, size: 16, offset: 1024)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2639, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2639, file: !171, line: 79, baseType: !49, size: 8, offset: 1048)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2639, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2639, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2639, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2639, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2639, file: !171, line: 93, baseType: !2655, size: 64, offset: 1344)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2639, file: !171, line: 94, baseType: !108, size: 64, offset: 1408)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2639, file: !171, line: 95, baseType: !110, size: 64, offset: 1472)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2639, file: !171, line: 96, baseType: !77, size: 32, offset: 1536)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2639, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!2671 = !{!2672, !2673}
!2672 = !DILocalVariable(name: "fp", arg: 1, scope: !2634, file: !1010, line: 33, type: !2637)
!2673 = !DILocalVariable(name: "advice", arg: 2, scope: !2634, file: !1010, line: 33, type: !2622)
!2674 = !DILocation(line: 0, scope: !2634)
!2675 = !DILocation(line: 35, column: 7, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2634, file: !1010, line: 35, column: 7)
!2677 = !DILocation(line: 35, column: 7, scope: !2634)
!2678 = !DILocation(line: 36, column: 15, scope: !2676)
!2679 = !DILocation(line: 0, scope: !2618, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 36, column: 5, scope: !2676)
!2681 = !DILocation(line: 28, column: 3, scope: !2618, inlinedAt: !2680)
!2682 = !DILocation(line: 36, column: 5, scope: !2676)
!2683 = !DILocation(line: 37, column: 1, scope: !2634)
!2684 = !DISubprogram(name: "fileno", scope: !715, file: !715, line: 809, type: !2685, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2685 = !DISubroutineType(types: !2686)
!2686 = !{!77, !2637}
!2687 = distinct !DISubprogram(name: "rpl_fclose", scope: !1015, file: !1015, line: 58, type: !2688, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1014, retainedNodes: !2724)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!77, !2690}
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2691, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !2692)
!2692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !2693)
!2693 = !{!2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2692, file: !171, line: 51, baseType: !77, size: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2692, file: !171, line: 54, baseType: !107, size: 64, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2692, file: !171, line: 55, baseType: !107, size: 64, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2692, file: !171, line: 56, baseType: !107, size: 64, offset: 192)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2692, file: !171, line: 57, baseType: !107, size: 64, offset: 256)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2692, file: !171, line: 58, baseType: !107, size: 64, offset: 320)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2692, file: !171, line: 59, baseType: !107, size: 64, offset: 384)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2692, file: !171, line: 60, baseType: !107, size: 64, offset: 448)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2692, file: !171, line: 61, baseType: !107, size: 64, offset: 512)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2692, file: !171, line: 64, baseType: !107, size: 64, offset: 576)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2692, file: !171, line: 65, baseType: !107, size: 64, offset: 640)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2692, file: !171, line: 66, baseType: !107, size: 64, offset: 704)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2692, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2692, file: !171, line: 70, baseType: !2708, size: 64, offset: 832)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2692, file: !171, line: 72, baseType: !77, size: 32, offset: 896)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2692, file: !171, line: 73, baseType: !77, size: 32, offset: 928)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2692, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2692, file: !171, line: 77, baseType: !109, size: 16, offset: 1024)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2692, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2692, file: !171, line: 79, baseType: !49, size: 8, offset: 1048)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2692, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2692, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2692, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2692, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2692, file: !171, line: 93, baseType: !2708, size: 64, offset: 1344)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2692, file: !171, line: 94, baseType: !108, size: 64, offset: 1408)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2692, file: !171, line: 95, baseType: !110, size: 64, offset: 1472)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2692, file: !171, line: 96, baseType: !77, size: 32, offset: 1536)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2692, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!2724 = !{!2725, !2726, !2727, !2728}
!2725 = !DILocalVariable(name: "fp", arg: 1, scope: !2687, file: !1015, line: 58, type: !2690)
!2726 = !DILocalVariable(name: "saved_errno", scope: !2687, file: !1015, line: 60, type: !77)
!2727 = !DILocalVariable(name: "fd", scope: !2687, file: !1015, line: 63, type: !77)
!2728 = !DILocalVariable(name: "result", scope: !2687, file: !1015, line: 74, type: !77)
!2729 = !DILocation(line: 0, scope: !2687)
!2730 = !DILocation(line: 63, column: 12, scope: !2687)
!2731 = !DILocation(line: 64, column: 10, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2687, file: !1015, line: 64, column: 7)
!2733 = !DILocation(line: 64, column: 7, scope: !2687)
!2734 = !DILocation(line: 65, column: 12, scope: !2732)
!2735 = !DILocation(line: 65, column: 5, scope: !2732)
!2736 = !DILocation(line: 70, column: 9, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2687, file: !1015, line: 70, column: 7)
!2738 = !DILocation(line: 70, column: 23, scope: !2737)
!2739 = !DILocation(line: 70, column: 33, scope: !2737)
!2740 = !DILocation(line: 70, column: 26, scope: !2737)
!2741 = !DILocation(line: 70, column: 59, scope: !2737)
!2742 = !DILocation(line: 71, column: 7, scope: !2737)
!2743 = !DILocation(line: 71, column: 10, scope: !2737)
!2744 = !DILocation(line: 70, column: 7, scope: !2687)
!2745 = !DILocation(line: 100, column: 12, scope: !2687)
!2746 = !DILocation(line: 105, column: 7, scope: !2687)
!2747 = !DILocation(line: 72, column: 19, scope: !2737)
!2748 = !DILocation(line: 105, column: 19, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2687, file: !1015, line: 105, column: 7)
!2750 = !DILocation(line: 107, column: 13, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2749, file: !1015, line: 106, column: 5)
!2752 = !DILocation(line: 109, column: 5, scope: !2751)
!2753 = !DILocation(line: 112, column: 1, scope: !2687)
!2754 = !DISubprogram(name: "fclose", scope: !715, file: !715, line: 178, type: !2688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2755 = !DISubprogram(name: "__freading", scope: !2756, file: !2756, line: 51, type: !2688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2756 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2757 = !DISubprogram(name: "lseek", scope: !2410, file: !2410, line: 339, type: !2758, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!193, !77, !193, !77}
!2760 = distinct !DISubprogram(name: "rpl_fflush", scope: !1017, file: !1017, line: 130, type: !2761, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1016, retainedNodes: !2797)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!77, !2763}
!2763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2764, size: 64)
!2764 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !2765)
!2765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !2766)
!2766 = !{!2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796}
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2765, file: !171, line: 51, baseType: !77, size: 32)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2765, file: !171, line: 54, baseType: !107, size: 64, offset: 64)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2765, file: !171, line: 55, baseType: !107, size: 64, offset: 128)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2765, file: !171, line: 56, baseType: !107, size: 64, offset: 192)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2765, file: !171, line: 57, baseType: !107, size: 64, offset: 256)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2765, file: !171, line: 58, baseType: !107, size: 64, offset: 320)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2765, file: !171, line: 59, baseType: !107, size: 64, offset: 384)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2765, file: !171, line: 60, baseType: !107, size: 64, offset: 448)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2765, file: !171, line: 61, baseType: !107, size: 64, offset: 512)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2765, file: !171, line: 64, baseType: !107, size: 64, offset: 576)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2765, file: !171, line: 65, baseType: !107, size: 64, offset: 640)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2765, file: !171, line: 66, baseType: !107, size: 64, offset: 704)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2765, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2765, file: !171, line: 70, baseType: !2781, size: 64, offset: 832)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2765, file: !171, line: 72, baseType: !77, size: 32, offset: 896)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2765, file: !171, line: 73, baseType: !77, size: 32, offset: 928)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2765, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2765, file: !171, line: 77, baseType: !109, size: 16, offset: 1024)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2765, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2765, file: !171, line: 79, baseType: !49, size: 8, offset: 1048)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2765, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2765, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2765, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2765, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2765, file: !171, line: 93, baseType: !2781, size: 64, offset: 1344)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2765, file: !171, line: 94, baseType: !108, size: 64, offset: 1408)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2765, file: !171, line: 95, baseType: !110, size: 64, offset: 1472)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2765, file: !171, line: 96, baseType: !77, size: 32, offset: 1536)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2765, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!2797 = !{!2798}
!2798 = !DILocalVariable(name: "stream", arg: 1, scope: !2760, file: !1017, line: 130, type: !2763)
!2799 = !DILocation(line: 0, scope: !2760)
!2800 = !DILocation(line: 151, column: 14, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2760, file: !1017, line: 151, column: 7)
!2802 = !DILocation(line: 151, column: 22, scope: !2801)
!2803 = !DILocation(line: 151, column: 27, scope: !2801)
!2804 = !DILocation(line: 151, column: 7, scope: !2760)
!2805 = !DILocation(line: 152, column: 12, scope: !2801)
!2806 = !DILocation(line: 152, column: 5, scope: !2801)
!2807 = !DILocalVariable(name: "fp", arg: 1, scope: !2808, file: !1017, line: 42, type: !2763)
!2808 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1017, file: !1017, line: 42, type: !2809, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1016, retainedNodes: !2811)
!2809 = !DISubroutineType(types: !2810)
!2810 = !{null, !2763}
!2811 = !{!2807}
!2812 = !DILocation(line: 0, scope: !2808, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 157, column: 3, scope: !2760)
!2814 = !DILocation(line: 44, column: 12, scope: !2815, inlinedAt: !2813)
!2815 = distinct !DILexicalBlock(scope: !2808, file: !1017, line: 44, column: 7)
!2816 = !DILocation(line: 44, column: 19, scope: !2815, inlinedAt: !2813)
!2817 = !DILocation(line: 44, column: 7, scope: !2808, inlinedAt: !2813)
!2818 = !DILocation(line: 46, column: 5, scope: !2815, inlinedAt: !2813)
!2819 = !DILocation(line: 159, column: 10, scope: !2760)
!2820 = !DILocation(line: 159, column: 3, scope: !2760)
!2821 = !DILocation(line: 236, column: 1, scope: !2760)
!2822 = !DISubprogram(name: "fflush", scope: !715, file: !715, line: 230, type: !2761, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2823 = distinct !DISubprogram(name: "fpurge", scope: !1020, file: !1020, line: 32, type: !2824, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1019, retainedNodes: !2860)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!77, !2826}
!2826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2827, size: 64)
!2827 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !2828)
!2828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !2829)
!2829 = !{!2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2828, file: !171, line: 51, baseType: !77, size: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2828, file: !171, line: 54, baseType: !107, size: 64, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2828, file: !171, line: 55, baseType: !107, size: 64, offset: 128)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2828, file: !171, line: 56, baseType: !107, size: 64, offset: 192)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2828, file: !171, line: 57, baseType: !107, size: 64, offset: 256)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2828, file: !171, line: 58, baseType: !107, size: 64, offset: 320)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2828, file: !171, line: 59, baseType: !107, size: 64, offset: 384)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2828, file: !171, line: 60, baseType: !107, size: 64, offset: 448)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2828, file: !171, line: 61, baseType: !107, size: 64, offset: 512)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2828, file: !171, line: 64, baseType: !107, size: 64, offset: 576)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2828, file: !171, line: 65, baseType: !107, size: 64, offset: 640)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2828, file: !171, line: 66, baseType: !107, size: 64, offset: 704)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2828, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2828, file: !171, line: 70, baseType: !2844, size: 64, offset: 832)
!2844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2828, file: !171, line: 72, baseType: !77, size: 32, offset: 896)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2828, file: !171, line: 73, baseType: !77, size: 32, offset: 928)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2828, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2828, file: !171, line: 77, baseType: !109, size: 16, offset: 1024)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2828, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2828, file: !171, line: 79, baseType: !49, size: 8, offset: 1048)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2828, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2828, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2828, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2828, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2828, file: !171, line: 93, baseType: !2844, size: 64, offset: 1344)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2828, file: !171, line: 94, baseType: !108, size: 64, offset: 1408)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2828, file: !171, line: 95, baseType: !110, size: 64, offset: 1472)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2828, file: !171, line: 96, baseType: !77, size: 32, offset: 1536)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2828, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!2860 = !{!2861}
!2861 = !DILocalVariable(name: "fp", arg: 1, scope: !2823, file: !1020, line: 32, type: !2826)
!2862 = !DILocation(line: 0, scope: !2823)
!2863 = !DILocation(line: 36, column: 3, scope: !2823)
!2864 = !DILocation(line: 38, column: 3, scope: !2823)
!2865 = !DISubprogram(name: "__fpurge", scope: !2756, file: !2756, line: 72, type: !2866, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{null, !2826}
!2868 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1022, file: !1022, line: 28, type: !2869, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1021, retainedNodes: !2905)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!77, !2871, !2621, !77}
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2872, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !2873)
!2873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !2874)
!2874 = !{!2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904}
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2873, file: !171, line: 51, baseType: !77, size: 32)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2873, file: !171, line: 54, baseType: !107, size: 64, offset: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2873, file: !171, line: 55, baseType: !107, size: 64, offset: 128)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2873, file: !171, line: 56, baseType: !107, size: 64, offset: 192)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2873, file: !171, line: 57, baseType: !107, size: 64, offset: 256)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2873, file: !171, line: 58, baseType: !107, size: 64, offset: 320)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2873, file: !171, line: 59, baseType: !107, size: 64, offset: 384)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2873, file: !171, line: 60, baseType: !107, size: 64, offset: 448)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2873, file: !171, line: 61, baseType: !107, size: 64, offset: 512)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2873, file: !171, line: 64, baseType: !107, size: 64, offset: 576)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2873, file: !171, line: 65, baseType: !107, size: 64, offset: 640)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2873, file: !171, line: 66, baseType: !107, size: 64, offset: 704)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2873, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2873, file: !171, line: 70, baseType: !2889, size: 64, offset: 832)
!2889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2873, size: 64)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2873, file: !171, line: 72, baseType: !77, size: 32, offset: 896)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2873, file: !171, line: 73, baseType: !77, size: 32, offset: 928)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2873, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2873, file: !171, line: 77, baseType: !109, size: 16, offset: 1024)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2873, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2873, file: !171, line: 79, baseType: !49, size: 8, offset: 1048)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2873, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2873, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2873, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2873, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2873, file: !171, line: 93, baseType: !2889, size: 64, offset: 1344)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2873, file: !171, line: 94, baseType: !108, size: 64, offset: 1408)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2873, file: !171, line: 95, baseType: !110, size: 64, offset: 1472)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2873, file: !171, line: 96, baseType: !77, size: 32, offset: 1536)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2873, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!2905 = !{!2906, !2907, !2908, !2909}
!2906 = !DILocalVariable(name: "fp", arg: 1, scope: !2868, file: !1022, line: 28, type: !2871)
!2907 = !DILocalVariable(name: "offset", arg: 2, scope: !2868, file: !1022, line: 28, type: !2621)
!2908 = !DILocalVariable(name: "whence", arg: 3, scope: !2868, file: !1022, line: 28, type: !77)
!2909 = !DILocalVariable(name: "pos", scope: !2910, file: !1022, line: 123, type: !2621)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !1022, line: 119, column: 5)
!2911 = distinct !DILexicalBlock(scope: !2868, file: !1022, line: 55, column: 7)
!2912 = !DILocation(line: 0, scope: !2868)
!2913 = !DILocation(line: 55, column: 12, scope: !2911)
!2914 = !{!1428, !1099, i64 16}
!2915 = !DILocation(line: 55, column: 33, scope: !2911)
!2916 = !{!1428, !1099, i64 8}
!2917 = !DILocation(line: 55, column: 25, scope: !2911)
!2918 = !DILocation(line: 56, column: 7, scope: !2911)
!2919 = !DILocation(line: 56, column: 15, scope: !2911)
!2920 = !DILocation(line: 56, column: 37, scope: !2911)
!2921 = !{!1428, !1099, i64 32}
!2922 = !DILocation(line: 56, column: 29, scope: !2911)
!2923 = !DILocation(line: 57, column: 7, scope: !2911)
!2924 = !DILocation(line: 57, column: 15, scope: !2911)
!2925 = !{!1428, !1099, i64 72}
!2926 = !DILocation(line: 57, column: 29, scope: !2911)
!2927 = !DILocation(line: 55, column: 7, scope: !2868)
!2928 = !DILocation(line: 123, column: 26, scope: !2910)
!2929 = !DILocation(line: 123, column: 19, scope: !2910)
!2930 = !DILocation(line: 0, scope: !2910)
!2931 = !DILocation(line: 124, column: 15, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2910, file: !1022, line: 124, column: 11)
!2933 = !DILocation(line: 124, column: 11, scope: !2910)
!2934 = !DILocation(line: 135, column: 19, scope: !2910)
!2935 = !DILocation(line: 136, column: 12, scope: !2910)
!2936 = !DILocation(line: 136, column: 20, scope: !2910)
!2937 = !{!1428, !1394, i64 144}
!2938 = !DILocation(line: 167, column: 7, scope: !2910)
!2939 = !DILocation(line: 169, column: 10, scope: !2868)
!2940 = !DILocation(line: 169, column: 3, scope: !2868)
!2941 = !DILocation(line: 170, column: 1, scope: !2868)
!2942 = !DISubprogram(name: "fseeko", scope: !715, file: !715, line: 736, type: !2943, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2943 = !DISubroutineType(types: !2944)
!2944 = !{!77, !2871, !193, !77}
!2945 = distinct !DISubprogram(name: "getprogname", scope: !1024, file: !1024, line: 54, type: !2946, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1023)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!113}
!2948 = !DILocation(line: 58, column: 10, scope: !2945)
!2949 = !DILocation(line: 58, column: 3, scope: !2945)
!2950 = distinct !DISubprogram(name: "set_program_name", scope: !755, file: !755, line: 37, type: !1119, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !2951)
!2951 = !{!2952, !2953, !2954}
!2952 = !DILocalVariable(name: "argv0", arg: 1, scope: !2950, file: !755, line: 37, type: !113)
!2953 = !DILocalVariable(name: "slash", scope: !2950, file: !755, line: 44, type: !113)
!2954 = !DILocalVariable(name: "base", scope: !2950, file: !755, line: 45, type: !113)
!2955 = !DILocation(line: 0, scope: !2950)
!2956 = !DILocation(line: 44, column: 23, scope: !2950)
!2957 = !DILocation(line: 45, column: 22, scope: !2950)
!2958 = !DILocation(line: 46, column: 17, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2950, file: !755, line: 46, column: 7)
!2960 = !DILocation(line: 46, column: 9, scope: !2959)
!2961 = !DILocation(line: 46, column: 25, scope: !2959)
!2962 = !DILocation(line: 46, column: 40, scope: !2959)
!2963 = !DILocalVariable(name: "__s1", arg: 1, scope: !2964, file: !1181, line: 974, type: !1313)
!2964 = distinct !DISubprogram(name: "memeq", scope: !1181, file: !1181, line: 974, type: !2965, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !2967)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!154, !1313, !1313, !110}
!2967 = !{!2963, !2968, !2969}
!2968 = !DILocalVariable(name: "__s2", arg: 2, scope: !2964, file: !1181, line: 974, type: !1313)
!2969 = !DILocalVariable(name: "__n", arg: 3, scope: !2964, file: !1181, line: 974, type: !110)
!2970 = !DILocation(line: 0, scope: !2964, inlinedAt: !2971)
!2971 = distinct !DILocation(line: 46, column: 28, scope: !2959)
!2972 = !DILocation(line: 976, column: 11, scope: !2964, inlinedAt: !2971)
!2973 = !DILocation(line: 976, column: 10, scope: !2964, inlinedAt: !2971)
!2974 = !DILocation(line: 46, column: 7, scope: !2950)
!2975 = !DILocation(line: 49, column: 11, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2977, file: !755, line: 49, column: 11)
!2977 = distinct !DILexicalBlock(scope: !2959, file: !755, line: 47, column: 5)
!2978 = !DILocation(line: 49, column: 36, scope: !2976)
!2979 = !DILocation(line: 49, column: 11, scope: !2977)
!2980 = !DILocation(line: 65, column: 16, scope: !2950)
!2981 = !DILocation(line: 71, column: 27, scope: !2950)
!2982 = !DILocation(line: 74, column: 33, scope: !2950)
!2983 = !DILocation(line: 76, column: 1, scope: !2950)
!2984 = !DISubprogram(name: "strrchr", scope: !1285, file: !1285, line: 273, type: !1300, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2985 = distinct !DIAssignID()
!2986 = !DILocation(line: 0, scope: !764)
!2987 = distinct !DIAssignID()
!2988 = !DILocation(line: 40, column: 29, scope: !764)
!2989 = !DILocation(line: 41, column: 19, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !764, file: !765, line: 41, column: 7)
!2991 = !DILocation(line: 41, column: 7, scope: !764)
!2992 = !DILocation(line: 47, column: 3, scope: !764)
!2993 = !DILocation(line: 48, column: 3, scope: !764)
!2994 = !DILocalVariable(name: "ps", arg: 1, scope: !2995, file: !2996, line: 1135, type: !2999)
!2995 = distinct !DISubprogram(name: "mbszero", scope: !2996, file: !2996, line: 1135, type: !2997, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3000)
!2996 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2997 = !DISubroutineType(types: !2998)
!2998 = !{null, !2999}
!2999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!3000 = !{!2994}
!3001 = !DILocation(line: 0, scope: !2995, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 48, column: 18, scope: !764)
!3003 = !DILocalVariable(name: "__dest", arg: 1, scope: !3004, file: !1438, line: 57, type: !108)
!3004 = distinct !DISubprogram(name: "memset", scope: !1438, file: !1438, line: 57, type: !3005, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !3007)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!108, !108, !77, !110}
!3007 = !{!3003, !3008, !3009}
!3008 = !DILocalVariable(name: "__ch", arg: 2, scope: !3004, file: !1438, line: 57, type: !77)
!3009 = !DILocalVariable(name: "__len", arg: 3, scope: !3004, file: !1438, line: 57, type: !110)
!3010 = !DILocation(line: 0, scope: !3004, inlinedAt: !3011)
!3011 = distinct !DILocation(line: 1137, column: 3, scope: !2995, inlinedAt: !3002)
!3012 = !DILocation(line: 59, column: 10, scope: !3004, inlinedAt: !3011)
!3013 = !DILocation(line: 49, column: 7, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !764, file: !765, line: 49, column: 7)
!3015 = !DILocation(line: 49, column: 39, scope: !3014)
!3016 = !DILocation(line: 49, column: 44, scope: !3014)
!3017 = !DILocation(line: 54, column: 1, scope: !764)
!3018 = distinct !DISubprogram(name: "clone_quoting_options", scope: !791, file: !791, line: 113, type: !3019, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3022)
!3019 = !DISubroutineType(types: !3020)
!3020 = !{!3021, !3021}
!3021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!3022 = !{!3023, !3024, !3025}
!3023 = !DILocalVariable(name: "o", arg: 1, scope: !3018, file: !791, line: 113, type: !3021)
!3024 = !DILocalVariable(name: "saved_errno", scope: !3018, file: !791, line: 115, type: !77)
!3025 = !DILocalVariable(name: "p", scope: !3018, file: !791, line: 116, type: !3021)
!3026 = !DILocation(line: 0, scope: !3018)
!3027 = !DILocation(line: 115, column: 21, scope: !3018)
!3028 = !DILocation(line: 116, column: 40, scope: !3018)
!3029 = !DILocation(line: 116, column: 31, scope: !3018)
!3030 = !DILocation(line: 118, column: 9, scope: !3018)
!3031 = !DILocation(line: 119, column: 3, scope: !3018)
!3032 = distinct !DISubprogram(name: "get_quoting_style", scope: !791, file: !791, line: 124, type: !3033, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3037)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!817, !3035}
!3035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3036, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !832)
!3037 = !{!3038}
!3038 = !DILocalVariable(name: "o", arg: 1, scope: !3032, file: !791, line: 124, type: !3035)
!3039 = !DILocation(line: 0, scope: !3032)
!3040 = !DILocation(line: 126, column: 11, scope: !3032)
!3041 = !DILocation(line: 126, column: 46, scope: !3032)
!3042 = !{!3043, !1169, i64 0}
!3043 = !{!"quoting_options", !1169, i64 0, !1169, i64 4, !1100, i64 8, !1099, i64 40, !1099, i64 48}
!3044 = !DILocation(line: 126, column: 3, scope: !3032)
!3045 = distinct !DISubprogram(name: "set_quoting_style", scope: !791, file: !791, line: 132, type: !3046, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3048)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{null, !3021, !817}
!3048 = !{!3049, !3050}
!3049 = !DILocalVariable(name: "o", arg: 1, scope: !3045, file: !791, line: 132, type: !3021)
!3050 = !DILocalVariable(name: "s", arg: 2, scope: !3045, file: !791, line: 132, type: !817)
!3051 = !DILocation(line: 0, scope: !3045)
!3052 = !DILocation(line: 134, column: 4, scope: !3045)
!3053 = !DILocation(line: 134, column: 45, scope: !3045)
!3054 = !DILocation(line: 135, column: 1, scope: !3045)
!3055 = distinct !DISubprogram(name: "set_char_quoting", scope: !791, file: !791, line: 143, type: !3056, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3058)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!77, !3021, !4, !77}
!3058 = !{!3059, !3060, !3061, !3062, !3063, !3065, !3066}
!3059 = !DILocalVariable(name: "o", arg: 1, scope: !3055, file: !791, line: 143, type: !3021)
!3060 = !DILocalVariable(name: "c", arg: 2, scope: !3055, file: !791, line: 143, type: !4)
!3061 = !DILocalVariable(name: "i", arg: 3, scope: !3055, file: !791, line: 143, type: !77)
!3062 = !DILocalVariable(name: "uc", scope: !3055, file: !791, line: 145, type: !115)
!3063 = !DILocalVariable(name: "p", scope: !3055, file: !791, line: 146, type: !3064)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!3065 = !DILocalVariable(name: "shift", scope: !3055, file: !791, line: 148, type: !77)
!3066 = !DILocalVariable(name: "r", scope: !3055, file: !791, line: 149, type: !72)
!3067 = !DILocation(line: 0, scope: !3055)
!3068 = !DILocation(line: 147, column: 6, scope: !3055)
!3069 = !DILocation(line: 147, column: 41, scope: !3055)
!3070 = !DILocation(line: 147, column: 62, scope: !3055)
!3071 = !DILocation(line: 147, column: 57, scope: !3055)
!3072 = !DILocation(line: 148, column: 15, scope: !3055)
!3073 = !DILocation(line: 149, column: 21, scope: !3055)
!3074 = !DILocation(line: 149, column: 24, scope: !3055)
!3075 = !DILocation(line: 149, column: 34, scope: !3055)
!3076 = !DILocation(line: 150, column: 19, scope: !3055)
!3077 = !DILocation(line: 150, column: 24, scope: !3055)
!3078 = !DILocation(line: 150, column: 6, scope: !3055)
!3079 = !DILocation(line: 151, column: 3, scope: !3055)
!3080 = distinct !DISubprogram(name: "set_quoting_flags", scope: !791, file: !791, line: 159, type: !3081, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3083)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!77, !3021, !77}
!3083 = !{!3084, !3085, !3086}
!3084 = !DILocalVariable(name: "o", arg: 1, scope: !3080, file: !791, line: 159, type: !3021)
!3085 = !DILocalVariable(name: "i", arg: 2, scope: !3080, file: !791, line: 159, type: !77)
!3086 = !DILocalVariable(name: "r", scope: !3080, file: !791, line: 163, type: !77)
!3087 = !DILocation(line: 0, scope: !3080)
!3088 = !DILocation(line: 161, column: 8, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3080, file: !791, line: 161, column: 7)
!3090 = !DILocation(line: 161, column: 7, scope: !3080)
!3091 = !DILocation(line: 163, column: 14, scope: !3080)
!3092 = !{!3043, !1169, i64 4}
!3093 = !DILocation(line: 164, column: 12, scope: !3080)
!3094 = !DILocation(line: 165, column: 3, scope: !3080)
!3095 = distinct !DISubprogram(name: "set_custom_quoting", scope: !791, file: !791, line: 169, type: !3096, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3098)
!3096 = !DISubroutineType(types: !3097)
!3097 = !{null, !3021, !113, !113}
!3098 = !{!3099, !3100, !3101}
!3099 = !DILocalVariable(name: "o", arg: 1, scope: !3095, file: !791, line: 169, type: !3021)
!3100 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3095, file: !791, line: 170, type: !113)
!3101 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3095, file: !791, line: 170, type: !113)
!3102 = !DILocation(line: 0, scope: !3095)
!3103 = !DILocation(line: 172, column: 8, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3095, file: !791, line: 172, column: 7)
!3105 = !DILocation(line: 172, column: 7, scope: !3095)
!3106 = !DILocation(line: 174, column: 12, scope: !3095)
!3107 = !DILocation(line: 175, column: 8, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3095, file: !791, line: 175, column: 7)
!3109 = !DILocation(line: 175, column: 19, scope: !3108)
!3110 = !DILocation(line: 176, column: 5, scope: !3108)
!3111 = !DILocation(line: 177, column: 6, scope: !3095)
!3112 = !DILocation(line: 177, column: 17, scope: !3095)
!3113 = !{!3043, !1099, i64 40}
!3114 = !DILocation(line: 178, column: 6, scope: !3095)
!3115 = !DILocation(line: 178, column: 18, scope: !3095)
!3116 = !{!3043, !1099, i64 48}
!3117 = !DILocation(line: 179, column: 1, scope: !3095)
!3118 = !DISubprogram(name: "abort", scope: !1289, file: !1289, line: 598, type: !356, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3119 = distinct !DISubprogram(name: "quotearg_buffer", scope: !791, file: !791, line: 774, type: !3120, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3122)
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!110, !107, !110, !113, !110, !3035}
!3122 = !{!3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130}
!3123 = !DILocalVariable(name: "buffer", arg: 1, scope: !3119, file: !791, line: 774, type: !107)
!3124 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3119, file: !791, line: 774, type: !110)
!3125 = !DILocalVariable(name: "arg", arg: 3, scope: !3119, file: !791, line: 775, type: !113)
!3126 = !DILocalVariable(name: "argsize", arg: 4, scope: !3119, file: !791, line: 775, type: !110)
!3127 = !DILocalVariable(name: "o", arg: 5, scope: !3119, file: !791, line: 776, type: !3035)
!3128 = !DILocalVariable(name: "p", scope: !3119, file: !791, line: 778, type: !3035)
!3129 = !DILocalVariable(name: "saved_errno", scope: !3119, file: !791, line: 779, type: !77)
!3130 = !DILocalVariable(name: "r", scope: !3119, file: !791, line: 780, type: !110)
!3131 = !DILocation(line: 0, scope: !3119)
!3132 = !DILocation(line: 778, column: 37, scope: !3119)
!3133 = !DILocation(line: 779, column: 21, scope: !3119)
!3134 = !DILocation(line: 781, column: 43, scope: !3119)
!3135 = !DILocation(line: 781, column: 53, scope: !3119)
!3136 = !DILocation(line: 781, column: 63, scope: !3119)
!3137 = !DILocation(line: 782, column: 43, scope: !3119)
!3138 = !DILocation(line: 782, column: 58, scope: !3119)
!3139 = !DILocation(line: 780, column: 14, scope: !3119)
!3140 = !DILocation(line: 783, column: 9, scope: !3119)
!3141 = !DILocation(line: 784, column: 3, scope: !3119)
!3142 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !791, file: !791, line: 251, type: !3143, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3147)
!3143 = !DISubroutineType(types: !3144)
!3144 = !{!110, !107, !110, !113, !110, !817, !77, !3145, !113, !113}
!3145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3146, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!3147 = !{!3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3173, !3175, !3178, !3179, !3180, !3181, !3184, !3185, !3187, !3188, !3191, !3195, !3196, !3204, !3207, !3208, !3209}
!3148 = !DILocalVariable(name: "buffer", arg: 1, scope: !3142, file: !791, line: 251, type: !107)
!3149 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3142, file: !791, line: 251, type: !110)
!3150 = !DILocalVariable(name: "arg", arg: 3, scope: !3142, file: !791, line: 252, type: !113)
!3151 = !DILocalVariable(name: "argsize", arg: 4, scope: !3142, file: !791, line: 252, type: !110)
!3152 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3142, file: !791, line: 253, type: !817)
!3153 = !DILocalVariable(name: "flags", arg: 6, scope: !3142, file: !791, line: 253, type: !77)
!3154 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3142, file: !791, line: 254, type: !3145)
!3155 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3142, file: !791, line: 255, type: !113)
!3156 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3142, file: !791, line: 256, type: !113)
!3157 = !DILocalVariable(name: "unibyte_locale", scope: !3142, file: !791, line: 258, type: !154)
!3158 = !DILocalVariable(name: "len", scope: !3142, file: !791, line: 260, type: !110)
!3159 = !DILocalVariable(name: "orig_buffersize", scope: !3142, file: !791, line: 261, type: !110)
!3160 = !DILocalVariable(name: "quote_string", scope: !3142, file: !791, line: 262, type: !113)
!3161 = !DILocalVariable(name: "quote_string_len", scope: !3142, file: !791, line: 263, type: !110)
!3162 = !DILocalVariable(name: "backslash_escapes", scope: !3142, file: !791, line: 264, type: !154)
!3163 = !DILocalVariable(name: "elide_outer_quotes", scope: !3142, file: !791, line: 265, type: !154)
!3164 = !DILocalVariable(name: "encountered_single_quote", scope: !3142, file: !791, line: 266, type: !154)
!3165 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3142, file: !791, line: 267, type: !154)
!3166 = !DILabel(scope: !3142, name: "process_input", file: !791, line: 308)
!3167 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3142, file: !791, line: 309, type: !154)
!3168 = !DILocalVariable(name: "lq", scope: !3169, file: !791, line: 361, type: !113)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !791, line: 361, column: 11)
!3170 = distinct !DILexicalBlock(scope: !3171, file: !791, line: 360, column: 13)
!3171 = distinct !DILexicalBlock(scope: !3172, file: !791, line: 333, column: 7)
!3172 = distinct !DILexicalBlock(scope: !3142, file: !791, line: 312, column: 5)
!3173 = !DILocalVariable(name: "i", scope: !3174, file: !791, line: 395, type: !110)
!3174 = distinct !DILexicalBlock(scope: !3142, file: !791, line: 395, column: 3)
!3175 = !DILocalVariable(name: "is_right_quote", scope: !3176, file: !791, line: 397, type: !154)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !791, line: 396, column: 5)
!3177 = distinct !DILexicalBlock(scope: !3174, file: !791, line: 395, column: 3)
!3178 = !DILocalVariable(name: "escaping", scope: !3176, file: !791, line: 398, type: !154)
!3179 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3176, file: !791, line: 399, type: !154)
!3180 = !DILocalVariable(name: "c", scope: !3176, file: !791, line: 417, type: !115)
!3181 = !DILabel(scope: !3182, name: "c_and_shell_escape", file: !791, line: 502)
!3182 = distinct !DILexicalBlock(scope: !3183, file: !791, line: 478, column: 9)
!3183 = distinct !DILexicalBlock(scope: !3176, file: !791, line: 419, column: 9)
!3184 = !DILabel(scope: !3182, name: "c_escape", file: !791, line: 507)
!3185 = !DILocalVariable(name: "m", scope: !3186, file: !791, line: 598, type: !110)
!3186 = distinct !DILexicalBlock(scope: !3183, file: !791, line: 596, column: 11)
!3187 = !DILocalVariable(name: "printable", scope: !3186, file: !791, line: 600, type: !154)
!3188 = !DILocalVariable(name: "mbs", scope: !3189, file: !791, line: 609, type: !866)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !791, line: 608, column: 15)
!3190 = distinct !DILexicalBlock(scope: !3186, file: !791, line: 602, column: 17)
!3191 = !DILocalVariable(name: "w", scope: !3192, file: !791, line: 618, type: !381)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !791, line: 617, column: 19)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !791, line: 616, column: 17)
!3194 = distinct !DILexicalBlock(scope: !3189, file: !791, line: 616, column: 17)
!3195 = !DILocalVariable(name: "bytes", scope: !3192, file: !791, line: 619, type: !110)
!3196 = !DILocalVariable(name: "j", scope: !3197, file: !791, line: 648, type: !110)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !791, line: 648, column: 29)
!3198 = distinct !DILexicalBlock(scope: !3199, file: !791, line: 647, column: 27)
!3199 = distinct !DILexicalBlock(scope: !3200, file: !791, line: 645, column: 29)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !791, line: 636, column: 23)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !791, line: 628, column: 30)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !791, line: 623, column: 30)
!3203 = distinct !DILexicalBlock(scope: !3192, file: !791, line: 621, column: 25)
!3204 = !DILocalVariable(name: "ilim", scope: !3205, file: !791, line: 674, type: !110)
!3205 = distinct !DILexicalBlock(scope: !3206, file: !791, line: 671, column: 15)
!3206 = distinct !DILexicalBlock(scope: !3186, file: !791, line: 670, column: 17)
!3207 = !DILabel(scope: !3176, name: "store_escape", file: !791, line: 709)
!3208 = !DILabel(scope: !3176, name: "store_c", file: !791, line: 712)
!3209 = !DILabel(scope: !3142, name: "force_outer_quoting_style", file: !791, line: 753)
!3210 = distinct !DIAssignID()
!3211 = distinct !DIAssignID()
!3212 = distinct !DIAssignID()
!3213 = distinct !DIAssignID()
!3214 = distinct !DIAssignID()
!3215 = !DILocation(line: 0, scope: !3189)
!3216 = distinct !DIAssignID()
!3217 = !DILocation(line: 0, scope: !3192)
!3218 = !DILocation(line: 0, scope: !3142)
!3219 = !DILocation(line: 258, column: 25, scope: !3142)
!3220 = !DILocation(line: 258, column: 36, scope: !3142)
!3221 = !DILocation(line: 267, column: 3, scope: !3142)
!3222 = !DILocation(line: 261, column: 10, scope: !3142)
!3223 = !DILocation(line: 262, column: 15, scope: !3142)
!3224 = !DILocation(line: 263, column: 10, scope: !3142)
!3225 = !DILocation(line: 308, column: 2, scope: !3142)
!3226 = !DILocation(line: 311, column: 3, scope: !3142)
!3227 = !DILocation(line: 318, column: 11, scope: !3172)
!3228 = !DILocation(line: 319, column: 9, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !791, line: 319, column: 9)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !791, line: 319, column: 9)
!3231 = distinct !DILexicalBlock(scope: !3172, file: !791, line: 318, column: 11)
!3232 = !DILocation(line: 319, column: 9, scope: !3230)
!3233 = !DILocation(line: 0, scope: !857, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 357, column: 26, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3236, file: !791, line: 335, column: 11)
!3236 = distinct !DILexicalBlock(scope: !3171, file: !791, line: 334, column: 13)
!3237 = !DILocation(line: 199, column: 29, scope: !857, inlinedAt: !3234)
!3238 = !DILocation(line: 201, column: 19, scope: !3239, inlinedAt: !3234)
!3239 = distinct !DILexicalBlock(scope: !857, file: !791, line: 201, column: 7)
!3240 = !DILocation(line: 201, column: 7, scope: !857, inlinedAt: !3234)
!3241 = !DILocation(line: 229, column: 3, scope: !857, inlinedAt: !3234)
!3242 = !DILocation(line: 230, column: 3, scope: !857, inlinedAt: !3234)
!3243 = !DILocalVariable(name: "ps", arg: 1, scope: !3244, file: !2996, line: 1135, type: !3247)
!3244 = distinct !DISubprogram(name: "mbszero", scope: !2996, file: !2996, line: 1135, type: !3245, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3248)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{null, !3247}
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!3248 = !{!3243}
!3249 = !DILocation(line: 0, scope: !3244, inlinedAt: !3250)
!3250 = distinct !DILocation(line: 230, column: 18, scope: !857, inlinedAt: !3234)
!3251 = !DILocalVariable(name: "__dest", arg: 1, scope: !3252, file: !1438, line: 57, type: !108)
!3252 = distinct !DISubprogram(name: "memset", scope: !1438, file: !1438, line: 57, type: !3005, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3253)
!3253 = !{!3251, !3254, !3255}
!3254 = !DILocalVariable(name: "__ch", arg: 2, scope: !3252, file: !1438, line: 57, type: !77)
!3255 = !DILocalVariable(name: "__len", arg: 3, scope: !3252, file: !1438, line: 57, type: !110)
!3256 = !DILocation(line: 0, scope: !3252, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 1137, column: 3, scope: !3244, inlinedAt: !3250)
!3258 = !DILocation(line: 59, column: 10, scope: !3252, inlinedAt: !3257)
!3259 = !DILocation(line: 231, column: 7, scope: !3260, inlinedAt: !3234)
!3260 = distinct !DILexicalBlock(scope: !857, file: !791, line: 231, column: 7)
!3261 = !DILocation(line: 231, column: 40, scope: !3260, inlinedAt: !3234)
!3262 = !DILocation(line: 231, column: 45, scope: !3260, inlinedAt: !3234)
!3263 = !DILocation(line: 235, column: 1, scope: !857, inlinedAt: !3234)
!3264 = !DILocation(line: 0, scope: !857, inlinedAt: !3265)
!3265 = distinct !DILocation(line: 358, column: 27, scope: !3235)
!3266 = !DILocation(line: 199, column: 29, scope: !857, inlinedAt: !3265)
!3267 = !DILocation(line: 201, column: 19, scope: !3239, inlinedAt: !3265)
!3268 = !DILocation(line: 201, column: 7, scope: !857, inlinedAt: !3265)
!3269 = !DILocation(line: 229, column: 3, scope: !857, inlinedAt: !3265)
!3270 = !DILocation(line: 230, column: 3, scope: !857, inlinedAt: !3265)
!3271 = !DILocation(line: 0, scope: !3244, inlinedAt: !3272)
!3272 = distinct !DILocation(line: 230, column: 18, scope: !857, inlinedAt: !3265)
!3273 = !DILocation(line: 0, scope: !3252, inlinedAt: !3274)
!3274 = distinct !DILocation(line: 1137, column: 3, scope: !3244, inlinedAt: !3272)
!3275 = !DILocation(line: 59, column: 10, scope: !3252, inlinedAt: !3274)
!3276 = !DILocation(line: 231, column: 7, scope: !3260, inlinedAt: !3265)
!3277 = !DILocation(line: 231, column: 40, scope: !3260, inlinedAt: !3265)
!3278 = !DILocation(line: 231, column: 45, scope: !3260, inlinedAt: !3265)
!3279 = !DILocation(line: 235, column: 1, scope: !857, inlinedAt: !3265)
!3280 = !DILocation(line: 360, column: 13, scope: !3171)
!3281 = !DILocation(line: 0, scope: !3169)
!3282 = !DILocation(line: 361, column: 45, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3169, file: !791, line: 361, column: 11)
!3284 = !DILocation(line: 361, column: 11, scope: !3169)
!3285 = !DILocation(line: 362, column: 13, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !791, line: 362, column: 13)
!3287 = distinct !DILexicalBlock(scope: !3283, file: !791, line: 362, column: 13)
!3288 = !DILocation(line: 362, column: 13, scope: !3287)
!3289 = !DILocation(line: 361, column: 52, scope: !3283)
!3290 = distinct !{!3290, !3284, !3291, !1215}
!3291 = !DILocation(line: 362, column: 13, scope: !3169)
!3292 = !DILocation(line: 365, column: 28, scope: !3171)
!3293 = !DILocation(line: 260, column: 10, scope: !3142)
!3294 = !DILocation(line: 367, column: 7, scope: !3172)
!3295 = !DILocation(line: 373, column: 7, scope: !3172)
!3296 = !DILocation(line: 381, column: 11, scope: !3172)
!3297 = !DILocation(line: 376, column: 11, scope: !3172)
!3298 = !DILocation(line: 382, column: 9, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3300, file: !791, line: 382, column: 9)
!3300 = distinct !DILexicalBlock(scope: !3301, file: !791, line: 382, column: 9)
!3301 = distinct !DILexicalBlock(scope: !3172, file: !791, line: 381, column: 11)
!3302 = !DILocation(line: 382, column: 9, scope: !3300)
!3303 = !DILocation(line: 389, column: 7, scope: !3172)
!3304 = !DILocation(line: 392, column: 7, scope: !3172)
!3305 = !DILocation(line: 0, scope: !3174)
!3306 = !DILocation(line: 395, column: 8, scope: !3174)
!3307 = !DILocation(line: 395, scope: !3174)
!3308 = !DILocation(line: 395, column: 34, scope: !3177)
!3309 = !DILocation(line: 395, column: 26, scope: !3177)
!3310 = !DILocation(line: 395, column: 48, scope: !3177)
!3311 = !DILocation(line: 395, column: 55, scope: !3177)
!3312 = !DILocation(line: 395, column: 3, scope: !3174)
!3313 = !DILocation(line: 395, column: 67, scope: !3177)
!3314 = !DILocation(line: 0, scope: !3176)
!3315 = !DILocation(line: 402, column: 11, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3176, file: !791, line: 401, column: 11)
!3317 = !DILocation(line: 404, column: 17, scope: !3316)
!3318 = !DILocation(line: 405, column: 39, scope: !3316)
!3319 = !DILocation(line: 409, column: 32, scope: !3316)
!3320 = !DILocation(line: 405, column: 19, scope: !3316)
!3321 = !DILocation(line: 405, column: 15, scope: !3316)
!3322 = !DILocation(line: 410, column: 11, scope: !3316)
!3323 = !DILocation(line: 410, column: 25, scope: !3316)
!3324 = !DILocalVariable(name: "__s1", arg: 1, scope: !3325, file: !1181, line: 974, type: !1313)
!3325 = distinct !DISubprogram(name: "memeq", scope: !1181, file: !1181, line: 974, type: !2965, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3326)
!3326 = !{!3324, !3327, !3328}
!3327 = !DILocalVariable(name: "__s2", arg: 2, scope: !3325, file: !1181, line: 974, type: !1313)
!3328 = !DILocalVariable(name: "__n", arg: 3, scope: !3325, file: !1181, line: 974, type: !110)
!3329 = !DILocation(line: 0, scope: !3325, inlinedAt: !3330)
!3330 = distinct !DILocation(line: 410, column: 14, scope: !3316)
!3331 = !DILocation(line: 976, column: 11, scope: !3325, inlinedAt: !3330)
!3332 = !DILocation(line: 976, column: 10, scope: !3325, inlinedAt: !3330)
!3333 = !DILocation(line: 401, column: 11, scope: !3176)
!3334 = !DILocation(line: 417, column: 25, scope: !3176)
!3335 = !DILocation(line: 418, column: 7, scope: !3176)
!3336 = !DILocation(line: 421, column: 15, scope: !3183)
!3337 = !DILocation(line: 423, column: 15, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3339, file: !791, line: 423, column: 15)
!3339 = distinct !DILexicalBlock(scope: !3340, file: !791, line: 422, column: 13)
!3340 = distinct !DILexicalBlock(scope: !3183, file: !791, line: 421, column: 15)
!3341 = !DILocation(line: 423, column: 15, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3338, file: !791, line: 423, column: 15)
!3343 = !DILocation(line: 423, column: 15, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3345, file: !791, line: 423, column: 15)
!3345 = distinct !DILexicalBlock(scope: !3346, file: !791, line: 423, column: 15)
!3346 = distinct !DILexicalBlock(scope: !3342, file: !791, line: 423, column: 15)
!3347 = !DILocation(line: 423, column: 15, scope: !3345)
!3348 = !DILocation(line: 423, column: 15, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3350, file: !791, line: 423, column: 15)
!3350 = distinct !DILexicalBlock(scope: !3346, file: !791, line: 423, column: 15)
!3351 = !DILocation(line: 423, column: 15, scope: !3350)
!3352 = !DILocation(line: 423, column: 15, scope: !3353)
!3353 = distinct !DILexicalBlock(scope: !3354, file: !791, line: 423, column: 15)
!3354 = distinct !DILexicalBlock(scope: !3346, file: !791, line: 423, column: 15)
!3355 = !DILocation(line: 423, column: 15, scope: !3354)
!3356 = !DILocation(line: 423, column: 15, scope: !3346)
!3357 = !DILocation(line: 423, column: 15, scope: !3358)
!3358 = distinct !DILexicalBlock(scope: !3359, file: !791, line: 423, column: 15)
!3359 = distinct !DILexicalBlock(scope: !3338, file: !791, line: 423, column: 15)
!3360 = !DILocation(line: 423, column: 15, scope: !3359)
!3361 = !DILocation(line: 431, column: 19, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3339, file: !791, line: 430, column: 19)
!3363 = !DILocation(line: 431, column: 24, scope: !3362)
!3364 = !DILocation(line: 431, column: 28, scope: !3362)
!3365 = !DILocation(line: 431, column: 38, scope: !3362)
!3366 = !DILocation(line: 431, column: 48, scope: !3362)
!3367 = !DILocation(line: 431, column: 59, scope: !3362)
!3368 = !DILocation(line: 433, column: 19, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !791, line: 433, column: 19)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !791, line: 433, column: 19)
!3371 = distinct !DILexicalBlock(scope: !3362, file: !791, line: 432, column: 17)
!3372 = !DILocation(line: 433, column: 19, scope: !3370)
!3373 = !DILocation(line: 434, column: 19, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !791, line: 434, column: 19)
!3375 = distinct !DILexicalBlock(scope: !3371, file: !791, line: 434, column: 19)
!3376 = !DILocation(line: 434, column: 19, scope: !3375)
!3377 = !DILocation(line: 435, column: 17, scope: !3371)
!3378 = !DILocation(line: 442, column: 20, scope: !3340)
!3379 = !DILocation(line: 447, column: 11, scope: !3183)
!3380 = !DILocation(line: 450, column: 19, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3183, file: !791, line: 448, column: 13)
!3382 = !DILocation(line: 456, column: 19, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3381, file: !791, line: 455, column: 19)
!3384 = !DILocation(line: 456, column: 24, scope: !3383)
!3385 = !DILocation(line: 456, column: 28, scope: !3383)
!3386 = !DILocation(line: 456, column: 38, scope: !3383)
!3387 = !DILocation(line: 456, column: 41, scope: !3383)
!3388 = !DILocation(line: 456, column: 52, scope: !3383)
!3389 = !DILocation(line: 455, column: 19, scope: !3381)
!3390 = !DILocation(line: 457, column: 25, scope: !3383)
!3391 = !DILocation(line: 457, column: 17, scope: !3383)
!3392 = !DILocation(line: 464, column: 25, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3383, file: !791, line: 458, column: 19)
!3394 = !DILocation(line: 468, column: 21, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !791, line: 468, column: 21)
!3396 = distinct !DILexicalBlock(scope: !3393, file: !791, line: 468, column: 21)
!3397 = !DILocation(line: 468, column: 21, scope: !3396)
!3398 = !DILocation(line: 469, column: 21, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3400, file: !791, line: 469, column: 21)
!3400 = distinct !DILexicalBlock(scope: !3393, file: !791, line: 469, column: 21)
!3401 = !DILocation(line: 469, column: 21, scope: !3400)
!3402 = !DILocation(line: 470, column: 21, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3404, file: !791, line: 470, column: 21)
!3404 = distinct !DILexicalBlock(scope: !3393, file: !791, line: 470, column: 21)
!3405 = !DILocation(line: 470, column: 21, scope: !3404)
!3406 = !DILocation(line: 471, column: 21, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3408, file: !791, line: 471, column: 21)
!3408 = distinct !DILexicalBlock(scope: !3393, file: !791, line: 471, column: 21)
!3409 = !DILocation(line: 471, column: 21, scope: !3408)
!3410 = !DILocation(line: 472, column: 21, scope: !3393)
!3411 = !DILocation(line: 482, column: 33, scope: !3182)
!3412 = !DILocation(line: 483, column: 33, scope: !3182)
!3413 = !DILocation(line: 485, column: 33, scope: !3182)
!3414 = !DILocation(line: 486, column: 33, scope: !3182)
!3415 = !DILocation(line: 487, column: 33, scope: !3182)
!3416 = !DILocation(line: 490, column: 17, scope: !3182)
!3417 = !DILocation(line: 492, column: 21, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !791, line: 491, column: 15)
!3419 = distinct !DILexicalBlock(scope: !3182, file: !791, line: 490, column: 17)
!3420 = !DILocation(line: 499, column: 35, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3182, file: !791, line: 499, column: 17)
!3422 = !DILocation(line: 0, scope: !3182)
!3423 = !DILocation(line: 502, column: 11, scope: !3182)
!3424 = !DILocation(line: 504, column: 17, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3182, file: !791, line: 503, column: 17)
!3426 = !DILocation(line: 507, column: 11, scope: !3182)
!3427 = !DILocation(line: 508, column: 17, scope: !3182)
!3428 = !DILocation(line: 517, column: 15, scope: !3183)
!3429 = !DILocation(line: 517, column: 40, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3183, file: !791, line: 517, column: 15)
!3431 = !DILocation(line: 517, column: 47, scope: !3430)
!3432 = !DILocation(line: 517, column: 18, scope: !3430)
!3433 = !DILocation(line: 521, column: 17, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3183, file: !791, line: 521, column: 15)
!3435 = !DILocation(line: 521, column: 15, scope: !3183)
!3436 = !DILocation(line: 525, column: 11, scope: !3183)
!3437 = !DILocation(line: 537, column: 15, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3183, file: !791, line: 536, column: 15)
!3439 = !DILocation(line: 536, column: 15, scope: !3183)
!3440 = !DILocation(line: 544, column: 15, scope: !3183)
!3441 = !DILocation(line: 546, column: 19, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !791, line: 545, column: 13)
!3443 = distinct !DILexicalBlock(scope: !3183, file: !791, line: 544, column: 15)
!3444 = !DILocation(line: 549, column: 19, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3442, file: !791, line: 549, column: 19)
!3446 = !DILocation(line: 549, column: 30, scope: !3445)
!3447 = !DILocation(line: 558, column: 15, scope: !3448)
!3448 = distinct !DILexicalBlock(scope: !3449, file: !791, line: 558, column: 15)
!3449 = distinct !DILexicalBlock(scope: !3442, file: !791, line: 558, column: 15)
!3450 = !DILocation(line: 558, column: 15, scope: !3449)
!3451 = !DILocation(line: 559, column: 15, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3453, file: !791, line: 559, column: 15)
!3453 = distinct !DILexicalBlock(scope: !3442, file: !791, line: 559, column: 15)
!3454 = !DILocation(line: 559, column: 15, scope: !3453)
!3455 = !DILocation(line: 560, column: 15, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !791, line: 560, column: 15)
!3457 = distinct !DILexicalBlock(scope: !3442, file: !791, line: 560, column: 15)
!3458 = !DILocation(line: 560, column: 15, scope: !3457)
!3459 = !DILocation(line: 562, column: 13, scope: !3442)
!3460 = !DILocation(line: 602, column: 17, scope: !3186)
!3461 = !DILocation(line: 0, scope: !3186)
!3462 = !DILocation(line: 605, column: 29, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3190, file: !791, line: 603, column: 15)
!3464 = !DILocation(line: 605, column: 41, scope: !3463)
!3465 = !DILocation(line: 606, column: 15, scope: !3463)
!3466 = !DILocation(line: 609, column: 17, scope: !3189)
!3467 = !DILocation(line: 0, scope: !3244, inlinedAt: !3468)
!3468 = distinct !DILocation(line: 609, column: 32, scope: !3189)
!3469 = !DILocation(line: 0, scope: !3252, inlinedAt: !3470)
!3470 = distinct !DILocation(line: 1137, column: 3, scope: !3244, inlinedAt: !3468)
!3471 = !DILocation(line: 59, column: 10, scope: !3252, inlinedAt: !3470)
!3472 = !DILocation(line: 613, column: 29, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3189, file: !791, line: 613, column: 21)
!3474 = !DILocation(line: 613, column: 21, scope: !3189)
!3475 = !DILocation(line: 614, column: 29, scope: !3473)
!3476 = !DILocation(line: 614, column: 19, scope: !3473)
!3477 = !DILocation(line: 618, column: 21, scope: !3192)
!3478 = !DILocation(line: 620, column: 54, scope: !3192)
!3479 = !DILocation(line: 619, column: 36, scope: !3192)
!3480 = !DILocation(line: 621, column: 25, scope: !3192)
!3481 = !DILocation(line: 631, column: 38, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3201, file: !791, line: 629, column: 23)
!3483 = !DILocation(line: 631, column: 48, scope: !3482)
!3484 = !DILocation(line: 631, column: 25, scope: !3482)
!3485 = !DILocation(line: 626, column: 25, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3202, file: !791, line: 624, column: 23)
!3487 = !DILocation(line: 631, column: 51, scope: !3482)
!3488 = !DILocation(line: 632, column: 28, scope: !3482)
!3489 = !DILocation(line: 631, column: 34, scope: !3482)
!3490 = distinct !{!3490, !3484, !3488, !1215}
!3491 = !DILocation(line: 0, scope: !3197)
!3492 = !DILocation(line: 646, column: 29, scope: !3199)
!3493 = !DILocation(line: 648, column: 29, scope: !3197)
!3494 = !DILocation(line: 649, column: 39, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3197, file: !791, line: 648, column: 29)
!3496 = !DILocation(line: 649, column: 31, scope: !3495)
!3497 = !DILocation(line: 648, column: 60, scope: !3495)
!3498 = !DILocation(line: 648, column: 50, scope: !3495)
!3499 = distinct !{!3499, !3493, !3500, !1215}
!3500 = !DILocation(line: 654, column: 33, scope: !3197)
!3501 = !DILocation(line: 657, column: 43, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3200, file: !791, line: 657, column: 29)
!3503 = !DILocalVariable(name: "wc", arg: 1, scope: !3504, file: !1562, line: 865, type: !1565)
!3504 = distinct !DISubprogram(name: "c32isprint", scope: !1562, file: !1562, line: 865, type: !1563, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3505)
!3505 = !{!3503}
!3506 = !DILocation(line: 0, scope: !3504, inlinedAt: !3507)
!3507 = distinct !DILocation(line: 657, column: 31, scope: !3502)
!3508 = !DILocation(line: 871, column: 10, scope: !3504, inlinedAt: !3507)
!3509 = !DILocation(line: 657, column: 31, scope: !3502)
!3510 = !DILocation(line: 664, column: 23, scope: !3192)
!3511 = !DILocation(line: 665, column: 19, scope: !3193)
!3512 = !DILocation(line: 666, column: 15, scope: !3190)
!3513 = !DILocation(line: 753, column: 2, scope: !3142)
!3514 = !DILocation(line: 756, column: 51, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3142, file: !791, line: 756, column: 7)
!3516 = !DILocation(line: 0, scope: !3190)
!3517 = !DILocation(line: 670, column: 19, scope: !3206)
!3518 = !DILocation(line: 670, column: 23, scope: !3206)
!3519 = !DILocation(line: 674, column: 33, scope: !3205)
!3520 = !DILocation(line: 0, scope: !3205)
!3521 = !DILocation(line: 676, column: 17, scope: !3205)
!3522 = !DILocation(line: 678, column: 43, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !791, line: 678, column: 25)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !791, line: 677, column: 19)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !791, line: 676, column: 17)
!3526 = distinct !DILexicalBlock(scope: !3205, file: !791, line: 676, column: 17)
!3527 = !DILocation(line: 680, column: 25, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !791, line: 680, column: 25)
!3529 = distinct !DILexicalBlock(scope: !3523, file: !791, line: 679, column: 23)
!3530 = !DILocation(line: 680, column: 25, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3528, file: !791, line: 680, column: 25)
!3532 = !DILocation(line: 680, column: 25, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3534, file: !791, line: 680, column: 25)
!3534 = distinct !DILexicalBlock(scope: !3535, file: !791, line: 680, column: 25)
!3535 = distinct !DILexicalBlock(scope: !3531, file: !791, line: 680, column: 25)
!3536 = !DILocation(line: 680, column: 25, scope: !3534)
!3537 = !DILocation(line: 680, column: 25, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3539, file: !791, line: 680, column: 25)
!3539 = distinct !DILexicalBlock(scope: !3535, file: !791, line: 680, column: 25)
!3540 = !DILocation(line: 680, column: 25, scope: !3539)
!3541 = !DILocation(line: 680, column: 25, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !791, line: 680, column: 25)
!3543 = distinct !DILexicalBlock(scope: !3535, file: !791, line: 680, column: 25)
!3544 = !DILocation(line: 680, column: 25, scope: !3543)
!3545 = !DILocation(line: 680, column: 25, scope: !3535)
!3546 = !DILocation(line: 680, column: 25, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !791, line: 680, column: 25)
!3548 = distinct !DILexicalBlock(scope: !3528, file: !791, line: 680, column: 25)
!3549 = !DILocation(line: 680, column: 25, scope: !3548)
!3550 = !DILocation(line: 681, column: 25, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !791, line: 681, column: 25)
!3552 = distinct !DILexicalBlock(scope: !3529, file: !791, line: 681, column: 25)
!3553 = !DILocation(line: 681, column: 25, scope: !3552)
!3554 = !DILocation(line: 682, column: 25, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !791, line: 682, column: 25)
!3556 = distinct !DILexicalBlock(scope: !3529, file: !791, line: 682, column: 25)
!3557 = !DILocation(line: 682, column: 25, scope: !3556)
!3558 = !DILocation(line: 683, column: 38, scope: !3529)
!3559 = !DILocation(line: 683, column: 33, scope: !3529)
!3560 = !DILocation(line: 684, column: 23, scope: !3529)
!3561 = !DILocation(line: 685, column: 30, scope: !3523)
!3562 = !DILocation(line: 687, column: 25, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3564, file: !791, line: 687, column: 25)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !791, line: 687, column: 25)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !791, line: 686, column: 23)
!3566 = distinct !DILexicalBlock(scope: !3523, file: !791, line: 685, column: 30)
!3567 = !DILocation(line: 687, column: 25, scope: !3564)
!3568 = !DILocation(line: 689, column: 23, scope: !3565)
!3569 = !DILocation(line: 690, column: 35, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3524, file: !791, line: 690, column: 25)
!3571 = !DILocation(line: 690, column: 30, scope: !3570)
!3572 = !DILocation(line: 690, column: 25, scope: !3524)
!3573 = !DILocation(line: 692, column: 21, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !791, line: 692, column: 21)
!3575 = distinct !DILexicalBlock(scope: !3524, file: !791, line: 692, column: 21)
!3576 = !DILocation(line: 692, column: 21, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !791, line: 692, column: 21)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !791, line: 692, column: 21)
!3579 = distinct !DILexicalBlock(scope: !3574, file: !791, line: 692, column: 21)
!3580 = !DILocation(line: 692, column: 21, scope: !3578)
!3581 = !DILocation(line: 692, column: 21, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3583, file: !791, line: 692, column: 21)
!3583 = distinct !DILexicalBlock(scope: !3579, file: !791, line: 692, column: 21)
!3584 = !DILocation(line: 692, column: 21, scope: !3583)
!3585 = !DILocation(line: 692, column: 21, scope: !3579)
!3586 = !DILocation(line: 0, scope: !3524)
!3587 = !DILocation(line: 693, column: 21, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !791, line: 693, column: 21)
!3589 = distinct !DILexicalBlock(scope: !3524, file: !791, line: 693, column: 21)
!3590 = !DILocation(line: 693, column: 21, scope: !3589)
!3591 = !DILocation(line: 694, column: 25, scope: !3524)
!3592 = !DILocation(line: 676, column: 17, scope: !3525)
!3593 = distinct !{!3593, !3594, !3595}
!3594 = !DILocation(line: 676, column: 17, scope: !3526)
!3595 = !DILocation(line: 695, column: 19, scope: !3526)
!3596 = !DILocation(line: 409, column: 30, scope: !3316)
!3597 = !DILocation(line: 702, column: 34, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3176, file: !791, line: 702, column: 11)
!3599 = !DILocation(line: 704, column: 14, scope: !3598)
!3600 = !DILocation(line: 705, column: 14, scope: !3598)
!3601 = !DILocation(line: 705, column: 35, scope: !3598)
!3602 = !DILocation(line: 705, column: 17, scope: !3598)
!3603 = !DILocation(line: 705, column: 47, scope: !3598)
!3604 = !DILocation(line: 705, column: 65, scope: !3598)
!3605 = !DILocation(line: 706, column: 11, scope: !3598)
!3606 = !DILocation(line: 702, column: 11, scope: !3176)
!3607 = !DILocation(line: 395, column: 15, scope: !3174)
!3608 = !DILocation(line: 709, column: 5, scope: !3176)
!3609 = !DILocation(line: 710, column: 7, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3176, file: !791, line: 710, column: 7)
!3611 = !DILocation(line: 710, column: 7, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3610, file: !791, line: 710, column: 7)
!3613 = !DILocation(line: 710, column: 7, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3615, file: !791, line: 710, column: 7)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !791, line: 710, column: 7)
!3616 = distinct !DILexicalBlock(scope: !3612, file: !791, line: 710, column: 7)
!3617 = !DILocation(line: 710, column: 7, scope: !3615)
!3618 = !DILocation(line: 710, column: 7, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !791, line: 710, column: 7)
!3620 = distinct !DILexicalBlock(scope: !3616, file: !791, line: 710, column: 7)
!3621 = !DILocation(line: 710, column: 7, scope: !3620)
!3622 = !DILocation(line: 710, column: 7, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !791, line: 710, column: 7)
!3624 = distinct !DILexicalBlock(scope: !3616, file: !791, line: 710, column: 7)
!3625 = !DILocation(line: 710, column: 7, scope: !3624)
!3626 = !DILocation(line: 710, column: 7, scope: !3616)
!3627 = !DILocation(line: 710, column: 7, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !791, line: 710, column: 7)
!3629 = distinct !DILexicalBlock(scope: !3610, file: !791, line: 710, column: 7)
!3630 = !DILocation(line: 710, column: 7, scope: !3629)
!3631 = !DILocation(line: 712, column: 5, scope: !3176)
!3632 = !DILocation(line: 713, column: 7, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3634, file: !791, line: 713, column: 7)
!3634 = distinct !DILexicalBlock(scope: !3176, file: !791, line: 713, column: 7)
!3635 = !DILocation(line: 417, column: 21, scope: !3176)
!3636 = !DILocation(line: 713, column: 7, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3638, file: !791, line: 713, column: 7)
!3638 = distinct !DILexicalBlock(scope: !3639, file: !791, line: 713, column: 7)
!3639 = distinct !DILexicalBlock(scope: !3633, file: !791, line: 713, column: 7)
!3640 = !DILocation(line: 713, column: 7, scope: !3638)
!3641 = !DILocation(line: 713, column: 7, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3643, file: !791, line: 713, column: 7)
!3643 = distinct !DILexicalBlock(scope: !3639, file: !791, line: 713, column: 7)
!3644 = !DILocation(line: 713, column: 7, scope: !3643)
!3645 = !DILocation(line: 713, column: 7, scope: !3639)
!3646 = !DILocation(line: 714, column: 7, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3648, file: !791, line: 714, column: 7)
!3648 = distinct !DILexicalBlock(scope: !3176, file: !791, line: 714, column: 7)
!3649 = !DILocation(line: 714, column: 7, scope: !3648)
!3650 = !DILocation(line: 716, column: 11, scope: !3176)
!3651 = !DILocation(line: 718, column: 5, scope: !3177)
!3652 = !DILocation(line: 395, column: 82, scope: !3177)
!3653 = !DILocation(line: 395, column: 3, scope: !3177)
!3654 = distinct !{!3654, !3312, !3655, !1215}
!3655 = !DILocation(line: 718, column: 5, scope: !3174)
!3656 = !DILocation(line: 720, column: 11, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3142, file: !791, line: 720, column: 7)
!3658 = !DILocation(line: 720, column: 16, scope: !3657)
!3659 = !DILocation(line: 728, column: 51, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3142, file: !791, line: 728, column: 7)
!3661 = !DILocation(line: 731, column: 11, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3660, file: !791, line: 730, column: 5)
!3663 = !DILocation(line: 732, column: 16, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3662, file: !791, line: 731, column: 11)
!3665 = !DILocation(line: 732, column: 9, scope: !3664)
!3666 = !DILocation(line: 736, column: 18, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3664, file: !791, line: 736, column: 16)
!3668 = !DILocation(line: 736, column: 29, scope: !3667)
!3669 = !DILocation(line: 745, column: 7, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3142, file: !791, line: 745, column: 7)
!3671 = !DILocation(line: 745, column: 20, scope: !3670)
!3672 = !DILocation(line: 746, column: 12, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3674, file: !791, line: 746, column: 5)
!3674 = distinct !DILexicalBlock(scope: !3670, file: !791, line: 746, column: 5)
!3675 = !DILocation(line: 746, column: 5, scope: !3674)
!3676 = !DILocation(line: 747, column: 7, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !791, line: 747, column: 7)
!3678 = distinct !DILexicalBlock(scope: !3673, file: !791, line: 747, column: 7)
!3679 = !DILocation(line: 747, column: 7, scope: !3678)
!3680 = !DILocation(line: 746, column: 39, scope: !3673)
!3681 = distinct !{!3681, !3675, !3682, !1215}
!3682 = !DILocation(line: 747, column: 7, scope: !3674)
!3683 = !DILocation(line: 749, column: 11, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3142, file: !791, line: 749, column: 7)
!3685 = !DILocation(line: 749, column: 7, scope: !3142)
!3686 = !DILocation(line: 750, column: 5, scope: !3684)
!3687 = !DILocation(line: 750, column: 17, scope: !3684)
!3688 = !DILocation(line: 756, column: 21, scope: !3515)
!3689 = !DILocation(line: 760, column: 42, scope: !3142)
!3690 = !DILocation(line: 758, column: 10, scope: !3142)
!3691 = !DILocation(line: 758, column: 3, scope: !3142)
!3692 = !DILocation(line: 762, column: 1, scope: !3142)
!3693 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1289, file: !1289, line: 98, type: !3694, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3694 = !DISubroutineType(types: !3695)
!3695 = !{!110}
!3696 = !DISubprogram(name: "strlen", scope: !1285, file: !1285, line: 407, type: !3697, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3697 = !DISubroutineType(types: !3698)
!3698 = !{!112, !113}
!3699 = !DISubprogram(name: "iswprint", scope: !1766, file: !1766, line: 120, type: !1563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3700 = distinct !DISubprogram(name: "quotearg_alloc", scope: !791, file: !791, line: 788, type: !3701, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3703)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!107, !113, !110, !3035}
!3703 = !{!3704, !3705, !3706}
!3704 = !DILocalVariable(name: "arg", arg: 1, scope: !3700, file: !791, line: 788, type: !113)
!3705 = !DILocalVariable(name: "argsize", arg: 2, scope: !3700, file: !791, line: 788, type: !110)
!3706 = !DILocalVariable(name: "o", arg: 3, scope: !3700, file: !791, line: 789, type: !3035)
!3707 = !DILocation(line: 0, scope: !3700)
!3708 = !DILocalVariable(name: "arg", arg: 1, scope: !3709, file: !791, line: 801, type: !113)
!3709 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !791, file: !791, line: 801, type: !3710, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3712)
!3710 = !DISubroutineType(types: !3711)
!3711 = !{!107, !113, !110, !1038, !3035}
!3712 = !{!3708, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720}
!3713 = !DILocalVariable(name: "argsize", arg: 2, scope: !3709, file: !791, line: 801, type: !110)
!3714 = !DILocalVariable(name: "size", arg: 3, scope: !3709, file: !791, line: 801, type: !1038)
!3715 = !DILocalVariable(name: "o", arg: 4, scope: !3709, file: !791, line: 802, type: !3035)
!3716 = !DILocalVariable(name: "p", scope: !3709, file: !791, line: 804, type: !3035)
!3717 = !DILocalVariable(name: "saved_errno", scope: !3709, file: !791, line: 805, type: !77)
!3718 = !DILocalVariable(name: "flags", scope: !3709, file: !791, line: 807, type: !77)
!3719 = !DILocalVariable(name: "bufsize", scope: !3709, file: !791, line: 808, type: !110)
!3720 = !DILocalVariable(name: "buf", scope: !3709, file: !791, line: 812, type: !107)
!3721 = !DILocation(line: 0, scope: !3709, inlinedAt: !3722)
!3722 = distinct !DILocation(line: 791, column: 10, scope: !3700)
!3723 = !DILocation(line: 804, column: 37, scope: !3709, inlinedAt: !3722)
!3724 = !DILocation(line: 805, column: 21, scope: !3709, inlinedAt: !3722)
!3725 = !DILocation(line: 807, column: 18, scope: !3709, inlinedAt: !3722)
!3726 = !DILocation(line: 807, column: 24, scope: !3709, inlinedAt: !3722)
!3727 = !DILocation(line: 808, column: 72, scope: !3709, inlinedAt: !3722)
!3728 = !DILocation(line: 809, column: 56, scope: !3709, inlinedAt: !3722)
!3729 = !DILocation(line: 810, column: 49, scope: !3709, inlinedAt: !3722)
!3730 = !DILocation(line: 811, column: 49, scope: !3709, inlinedAt: !3722)
!3731 = !DILocation(line: 808, column: 20, scope: !3709, inlinedAt: !3722)
!3732 = !DILocation(line: 811, column: 62, scope: !3709, inlinedAt: !3722)
!3733 = !DILocation(line: 812, column: 15, scope: !3709, inlinedAt: !3722)
!3734 = !DILocation(line: 813, column: 60, scope: !3709, inlinedAt: !3722)
!3735 = !DILocation(line: 815, column: 32, scope: !3709, inlinedAt: !3722)
!3736 = !DILocation(line: 815, column: 47, scope: !3709, inlinedAt: !3722)
!3737 = !DILocation(line: 813, column: 3, scope: !3709, inlinedAt: !3722)
!3738 = !DILocation(line: 816, column: 9, scope: !3709, inlinedAt: !3722)
!3739 = !DILocation(line: 791, column: 3, scope: !3700)
!3740 = !DILocation(line: 0, scope: !3709)
!3741 = !DILocation(line: 804, column: 37, scope: !3709)
!3742 = !DILocation(line: 805, column: 21, scope: !3709)
!3743 = !DILocation(line: 807, column: 18, scope: !3709)
!3744 = !DILocation(line: 807, column: 27, scope: !3709)
!3745 = !DILocation(line: 807, column: 24, scope: !3709)
!3746 = !DILocation(line: 808, column: 72, scope: !3709)
!3747 = !DILocation(line: 809, column: 56, scope: !3709)
!3748 = !DILocation(line: 810, column: 49, scope: !3709)
!3749 = !DILocation(line: 811, column: 49, scope: !3709)
!3750 = !DILocation(line: 808, column: 20, scope: !3709)
!3751 = !DILocation(line: 811, column: 62, scope: !3709)
!3752 = !DILocation(line: 812, column: 15, scope: !3709)
!3753 = !DILocation(line: 813, column: 60, scope: !3709)
!3754 = !DILocation(line: 815, column: 32, scope: !3709)
!3755 = !DILocation(line: 815, column: 47, scope: !3709)
!3756 = !DILocation(line: 813, column: 3, scope: !3709)
!3757 = !DILocation(line: 816, column: 9, scope: !3709)
!3758 = !DILocation(line: 817, column: 7, scope: !3709)
!3759 = !DILocation(line: 818, column: 11, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3709, file: !791, line: 817, column: 7)
!3761 = !DILocation(line: 818, column: 5, scope: !3760)
!3762 = !DILocation(line: 819, column: 3, scope: !3709)
!3763 = distinct !DISubprogram(name: "quotearg_free", scope: !791, file: !791, line: 837, type: !356, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3764)
!3764 = !{!3765, !3766}
!3765 = !DILocalVariable(name: "sv", scope: !3763, file: !791, line: 839, type: !880)
!3766 = !DILocalVariable(name: "i", scope: !3767, file: !791, line: 840, type: !77)
!3767 = distinct !DILexicalBlock(scope: !3763, file: !791, line: 840, column: 3)
!3768 = !DILocation(line: 839, column: 24, scope: !3763)
!3769 = !DILocation(line: 0, scope: !3763)
!3770 = !DILocation(line: 0, scope: !3767)
!3771 = !DILocation(line: 840, column: 21, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3767, file: !791, line: 840, column: 3)
!3773 = !DILocation(line: 840, column: 3, scope: !3767)
!3774 = !DILocation(line: 842, column: 13, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3763, file: !791, line: 842, column: 7)
!3776 = !{!3777, !1099, i64 8}
!3777 = !{!"slotvec", !1394, i64 0, !1099, i64 8}
!3778 = !DILocation(line: 842, column: 17, scope: !3775)
!3779 = !DILocation(line: 842, column: 7, scope: !3763)
!3780 = !DILocation(line: 841, column: 17, scope: !3772)
!3781 = !DILocation(line: 841, column: 5, scope: !3772)
!3782 = !DILocation(line: 840, column: 32, scope: !3772)
!3783 = distinct !{!3783, !3773, !3784, !1215}
!3784 = !DILocation(line: 841, column: 20, scope: !3767)
!3785 = !DILocation(line: 844, column: 7, scope: !3786)
!3786 = distinct !DILexicalBlock(scope: !3775, file: !791, line: 843, column: 5)
!3787 = !DILocation(line: 845, column: 21, scope: !3786)
!3788 = !{!3777, !1394, i64 0}
!3789 = !DILocation(line: 846, column: 20, scope: !3786)
!3790 = !DILocation(line: 847, column: 5, scope: !3786)
!3791 = !DILocation(line: 848, column: 10, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3763, file: !791, line: 848, column: 7)
!3793 = !DILocation(line: 848, column: 7, scope: !3763)
!3794 = !DILocation(line: 850, column: 7, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3792, file: !791, line: 849, column: 5)
!3796 = !DILocation(line: 851, column: 15, scope: !3795)
!3797 = !DILocation(line: 852, column: 5, scope: !3795)
!3798 = !DILocation(line: 853, column: 10, scope: !3763)
!3799 = !DILocation(line: 854, column: 1, scope: !3763)
!3800 = distinct !DISubprogram(name: "quotearg_n", scope: !791, file: !791, line: 919, type: !1282, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3801)
!3801 = !{!3802, !3803}
!3802 = !DILocalVariable(name: "n", arg: 1, scope: !3800, file: !791, line: 919, type: !77)
!3803 = !DILocalVariable(name: "arg", arg: 2, scope: !3800, file: !791, line: 919, type: !113)
!3804 = !DILocation(line: 0, scope: !3800)
!3805 = !DILocation(line: 921, column: 10, scope: !3800)
!3806 = !DILocation(line: 921, column: 3, scope: !3800)
!3807 = distinct !DISubprogram(name: "quotearg_n_options", scope: !791, file: !791, line: 866, type: !3808, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3810)
!3808 = !DISubroutineType(types: !3809)
!3809 = !{!107, !77, !113, !110, !3035}
!3810 = !{!3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3821, !3822, !3824, !3825, !3826}
!3811 = !DILocalVariable(name: "n", arg: 1, scope: !3807, file: !791, line: 866, type: !77)
!3812 = !DILocalVariable(name: "arg", arg: 2, scope: !3807, file: !791, line: 866, type: !113)
!3813 = !DILocalVariable(name: "argsize", arg: 3, scope: !3807, file: !791, line: 866, type: !110)
!3814 = !DILocalVariable(name: "options", arg: 4, scope: !3807, file: !791, line: 867, type: !3035)
!3815 = !DILocalVariable(name: "saved_errno", scope: !3807, file: !791, line: 869, type: !77)
!3816 = !DILocalVariable(name: "sv", scope: !3807, file: !791, line: 871, type: !880)
!3817 = !DILocalVariable(name: "nslots_max", scope: !3807, file: !791, line: 873, type: !77)
!3818 = !DILocalVariable(name: "preallocated", scope: !3819, file: !791, line: 879, type: !154)
!3819 = distinct !DILexicalBlock(scope: !3820, file: !791, line: 878, column: 5)
!3820 = distinct !DILexicalBlock(scope: !3807, file: !791, line: 877, column: 7)
!3821 = !DILocalVariable(name: "new_nslots", scope: !3819, file: !791, line: 880, type: !1051)
!3822 = !DILocalVariable(name: "size", scope: !3823, file: !791, line: 891, type: !110)
!3823 = distinct !DILexicalBlock(scope: !3807, file: !791, line: 890, column: 3)
!3824 = !DILocalVariable(name: "val", scope: !3823, file: !791, line: 892, type: !107)
!3825 = !DILocalVariable(name: "flags", scope: !3823, file: !791, line: 894, type: !77)
!3826 = !DILocalVariable(name: "qsize", scope: !3823, file: !791, line: 895, type: !110)
!3827 = distinct !DIAssignID()
!3828 = !DILocation(line: 0, scope: !3819)
!3829 = !DILocation(line: 0, scope: !3807)
!3830 = !DILocation(line: 869, column: 21, scope: !3807)
!3831 = !DILocation(line: 871, column: 24, scope: !3807)
!3832 = !DILocation(line: 874, column: 17, scope: !3833)
!3833 = distinct !DILexicalBlock(scope: !3807, file: !791, line: 874, column: 7)
!3834 = !DILocation(line: 875, column: 5, scope: !3833)
!3835 = !DILocation(line: 877, column: 7, scope: !3820)
!3836 = !DILocation(line: 877, column: 14, scope: !3820)
!3837 = !DILocation(line: 877, column: 7, scope: !3807)
!3838 = !DILocation(line: 879, column: 31, scope: !3819)
!3839 = !DILocation(line: 880, column: 7, scope: !3819)
!3840 = !DILocation(line: 880, column: 26, scope: !3819)
!3841 = !DILocation(line: 880, column: 13, scope: !3819)
!3842 = distinct !DIAssignID()
!3843 = !DILocation(line: 882, column: 31, scope: !3819)
!3844 = !DILocation(line: 883, column: 33, scope: !3819)
!3845 = !DILocation(line: 883, column: 42, scope: !3819)
!3846 = !DILocation(line: 883, column: 31, scope: !3819)
!3847 = !DILocation(line: 882, column: 22, scope: !3819)
!3848 = !DILocation(line: 882, column: 15, scope: !3819)
!3849 = !DILocation(line: 884, column: 11, scope: !3819)
!3850 = !DILocation(line: 885, column: 15, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3819, file: !791, line: 884, column: 11)
!3852 = !{i64 0, i64 8, !1393, i64 8, i64 8, !1098}
!3853 = !DILocation(line: 885, column: 9, scope: !3851)
!3854 = !DILocation(line: 886, column: 20, scope: !3819)
!3855 = !DILocation(line: 886, column: 18, scope: !3819)
!3856 = !DILocation(line: 886, column: 32, scope: !3819)
!3857 = !DILocation(line: 886, column: 43, scope: !3819)
!3858 = !DILocation(line: 886, column: 53, scope: !3819)
!3859 = !DILocation(line: 0, scope: !3252, inlinedAt: !3860)
!3860 = distinct !DILocation(line: 886, column: 7, scope: !3819)
!3861 = !DILocation(line: 59, column: 10, scope: !3252, inlinedAt: !3860)
!3862 = !DILocation(line: 887, column: 16, scope: !3819)
!3863 = !DILocation(line: 887, column: 14, scope: !3819)
!3864 = !DILocation(line: 888, column: 5, scope: !3820)
!3865 = !DILocation(line: 888, column: 5, scope: !3819)
!3866 = !DILocation(line: 891, column: 19, scope: !3823)
!3867 = !DILocation(line: 891, column: 25, scope: !3823)
!3868 = !DILocation(line: 0, scope: !3823)
!3869 = !DILocation(line: 892, column: 23, scope: !3823)
!3870 = !DILocation(line: 894, column: 26, scope: !3823)
!3871 = !DILocation(line: 894, column: 32, scope: !3823)
!3872 = !DILocation(line: 896, column: 55, scope: !3823)
!3873 = !DILocation(line: 897, column: 55, scope: !3823)
!3874 = !DILocation(line: 898, column: 55, scope: !3823)
!3875 = !DILocation(line: 899, column: 55, scope: !3823)
!3876 = !DILocation(line: 895, column: 20, scope: !3823)
!3877 = !DILocation(line: 901, column: 14, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3823, file: !791, line: 901, column: 9)
!3879 = !DILocation(line: 901, column: 9, scope: !3823)
!3880 = !DILocation(line: 903, column: 35, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3878, file: !791, line: 902, column: 7)
!3882 = !DILocation(line: 903, column: 20, scope: !3881)
!3883 = !DILocation(line: 904, column: 17, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3881, file: !791, line: 904, column: 13)
!3885 = !DILocation(line: 904, column: 13, scope: !3881)
!3886 = !DILocation(line: 905, column: 11, scope: !3884)
!3887 = !DILocation(line: 906, column: 27, scope: !3881)
!3888 = !DILocation(line: 906, column: 19, scope: !3881)
!3889 = !DILocation(line: 907, column: 69, scope: !3881)
!3890 = !DILocation(line: 909, column: 44, scope: !3881)
!3891 = !DILocation(line: 910, column: 44, scope: !3881)
!3892 = !DILocation(line: 907, column: 9, scope: !3881)
!3893 = !DILocation(line: 911, column: 7, scope: !3881)
!3894 = !DILocation(line: 913, column: 11, scope: !3823)
!3895 = !DILocation(line: 914, column: 5, scope: !3823)
!3896 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !791, file: !791, line: 925, type: !3897, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3899)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!107, !77, !113, !110}
!3899 = !{!3900, !3901, !3902}
!3900 = !DILocalVariable(name: "n", arg: 1, scope: !3896, file: !791, line: 925, type: !77)
!3901 = !DILocalVariable(name: "arg", arg: 2, scope: !3896, file: !791, line: 925, type: !113)
!3902 = !DILocalVariable(name: "argsize", arg: 3, scope: !3896, file: !791, line: 925, type: !110)
!3903 = !DILocation(line: 0, scope: !3896)
!3904 = !DILocation(line: 927, column: 10, scope: !3896)
!3905 = !DILocation(line: 927, column: 3, scope: !3896)
!3906 = distinct !DISubprogram(name: "quotearg", scope: !791, file: !791, line: 931, type: !1291, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3907)
!3907 = !{!3908}
!3908 = !DILocalVariable(name: "arg", arg: 1, scope: !3906, file: !791, line: 931, type: !113)
!3909 = !DILocation(line: 0, scope: !3906)
!3910 = !DILocation(line: 0, scope: !3800, inlinedAt: !3911)
!3911 = distinct !DILocation(line: 933, column: 10, scope: !3906)
!3912 = !DILocation(line: 921, column: 10, scope: !3800, inlinedAt: !3911)
!3913 = !DILocation(line: 933, column: 3, scope: !3906)
!3914 = distinct !DISubprogram(name: "quotearg_mem", scope: !791, file: !791, line: 937, type: !3915, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3917)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!107, !113, !110}
!3917 = !{!3918, !3919}
!3918 = !DILocalVariable(name: "arg", arg: 1, scope: !3914, file: !791, line: 937, type: !113)
!3919 = !DILocalVariable(name: "argsize", arg: 2, scope: !3914, file: !791, line: 937, type: !110)
!3920 = !DILocation(line: 0, scope: !3914)
!3921 = !DILocation(line: 0, scope: !3896, inlinedAt: !3922)
!3922 = distinct !DILocation(line: 939, column: 10, scope: !3914)
!3923 = !DILocation(line: 927, column: 10, scope: !3896, inlinedAt: !3922)
!3924 = !DILocation(line: 939, column: 3, scope: !3914)
!3925 = distinct !DISubprogram(name: "quotearg_n_style", scope: !791, file: !791, line: 943, type: !3926, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3928)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!107, !77, !817, !113}
!3928 = !{!3929, !3930, !3931, !3932}
!3929 = !DILocalVariable(name: "n", arg: 1, scope: !3925, file: !791, line: 943, type: !77)
!3930 = !DILocalVariable(name: "s", arg: 2, scope: !3925, file: !791, line: 943, type: !817)
!3931 = !DILocalVariable(name: "arg", arg: 3, scope: !3925, file: !791, line: 943, type: !113)
!3932 = !DILocalVariable(name: "o", scope: !3925, file: !791, line: 945, type: !3036)
!3933 = distinct !DIAssignID()
!3934 = !DILocation(line: 0, scope: !3925)
!3935 = !DILocation(line: 945, column: 3, scope: !3925)
!3936 = !{!3937}
!3937 = distinct !{!3937, !3938, !"quoting_options_from_style: argument 0"}
!3938 = distinct !{!3938, !"quoting_options_from_style"}
!3939 = !DILocation(line: 945, column: 36, scope: !3925)
!3940 = !DILocalVariable(name: "style", arg: 1, scope: !3941, file: !791, line: 183, type: !817)
!3941 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !791, file: !791, line: 183, type: !3942, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3944)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!832, !817}
!3944 = !{!3940, !3945}
!3945 = !DILocalVariable(name: "o", scope: !3941, file: !791, line: 185, type: !832)
!3946 = !DILocation(line: 0, scope: !3941, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 945, column: 36, scope: !3925)
!3948 = !DILocation(line: 185, column: 26, scope: !3941, inlinedAt: !3947)
!3949 = distinct !DIAssignID()
!3950 = !DILocation(line: 186, column: 13, scope: !3951, inlinedAt: !3947)
!3951 = distinct !DILexicalBlock(scope: !3941, file: !791, line: 186, column: 7)
!3952 = !DILocation(line: 186, column: 7, scope: !3941, inlinedAt: !3947)
!3953 = !DILocation(line: 187, column: 5, scope: !3951, inlinedAt: !3947)
!3954 = !DILocation(line: 188, column: 11, scope: !3941, inlinedAt: !3947)
!3955 = distinct !DIAssignID()
!3956 = !DILocation(line: 946, column: 10, scope: !3925)
!3957 = !DILocation(line: 947, column: 1, scope: !3925)
!3958 = !DILocation(line: 946, column: 3, scope: !3925)
!3959 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !791, file: !791, line: 950, type: !3960, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3962)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!107, !77, !817, !113, !110}
!3962 = !{!3963, !3964, !3965, !3966, !3967}
!3963 = !DILocalVariable(name: "n", arg: 1, scope: !3959, file: !791, line: 950, type: !77)
!3964 = !DILocalVariable(name: "s", arg: 2, scope: !3959, file: !791, line: 950, type: !817)
!3965 = !DILocalVariable(name: "arg", arg: 3, scope: !3959, file: !791, line: 951, type: !113)
!3966 = !DILocalVariable(name: "argsize", arg: 4, scope: !3959, file: !791, line: 951, type: !110)
!3967 = !DILocalVariable(name: "o", scope: !3959, file: !791, line: 953, type: !3036)
!3968 = distinct !DIAssignID()
!3969 = !DILocation(line: 0, scope: !3959)
!3970 = !DILocation(line: 953, column: 3, scope: !3959)
!3971 = !{!3972}
!3972 = distinct !{!3972, !3973, !"quoting_options_from_style: argument 0"}
!3973 = distinct !{!3973, !"quoting_options_from_style"}
!3974 = !DILocation(line: 953, column: 36, scope: !3959)
!3975 = !DILocation(line: 0, scope: !3941, inlinedAt: !3976)
!3976 = distinct !DILocation(line: 953, column: 36, scope: !3959)
!3977 = !DILocation(line: 185, column: 26, scope: !3941, inlinedAt: !3976)
!3978 = distinct !DIAssignID()
!3979 = !DILocation(line: 186, column: 13, scope: !3951, inlinedAt: !3976)
!3980 = !DILocation(line: 186, column: 7, scope: !3941, inlinedAt: !3976)
!3981 = !DILocation(line: 187, column: 5, scope: !3951, inlinedAt: !3976)
!3982 = !DILocation(line: 188, column: 11, scope: !3941, inlinedAt: !3976)
!3983 = distinct !DIAssignID()
!3984 = !DILocation(line: 954, column: 10, scope: !3959)
!3985 = !DILocation(line: 955, column: 1, scope: !3959)
!3986 = !DILocation(line: 954, column: 3, scope: !3959)
!3987 = distinct !DISubprogram(name: "quotearg_style", scope: !791, file: !791, line: 958, type: !3988, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3990)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!107, !817, !113}
!3990 = !{!3991, !3992}
!3991 = !DILocalVariable(name: "s", arg: 1, scope: !3987, file: !791, line: 958, type: !817)
!3992 = !DILocalVariable(name: "arg", arg: 2, scope: !3987, file: !791, line: 958, type: !113)
!3993 = distinct !DIAssignID()
!3994 = !DILocation(line: 0, scope: !3987)
!3995 = !DILocation(line: 0, scope: !3925, inlinedAt: !3996)
!3996 = distinct !DILocation(line: 960, column: 10, scope: !3987)
!3997 = !DILocation(line: 945, column: 3, scope: !3925, inlinedAt: !3996)
!3998 = !{!3999}
!3999 = distinct !{!3999, !4000, !"quoting_options_from_style: argument 0"}
!4000 = distinct !{!4000, !"quoting_options_from_style"}
!4001 = !DILocation(line: 945, column: 36, scope: !3925, inlinedAt: !3996)
!4002 = !DILocation(line: 0, scope: !3941, inlinedAt: !4003)
!4003 = distinct !DILocation(line: 945, column: 36, scope: !3925, inlinedAt: !3996)
!4004 = !DILocation(line: 185, column: 26, scope: !3941, inlinedAt: !4003)
!4005 = distinct !DIAssignID()
!4006 = !DILocation(line: 186, column: 13, scope: !3951, inlinedAt: !4003)
!4007 = !DILocation(line: 186, column: 7, scope: !3941, inlinedAt: !4003)
!4008 = !DILocation(line: 187, column: 5, scope: !3951, inlinedAt: !4003)
!4009 = !DILocation(line: 188, column: 11, scope: !3941, inlinedAt: !4003)
!4010 = distinct !DIAssignID()
!4011 = !DILocation(line: 946, column: 10, scope: !3925, inlinedAt: !3996)
!4012 = !DILocation(line: 947, column: 1, scope: !3925, inlinedAt: !3996)
!4013 = !DILocation(line: 960, column: 3, scope: !3987)
!4014 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !791, file: !791, line: 964, type: !4015, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4017)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!107, !817, !113, !110}
!4017 = !{!4018, !4019, !4020}
!4018 = !DILocalVariable(name: "s", arg: 1, scope: !4014, file: !791, line: 964, type: !817)
!4019 = !DILocalVariable(name: "arg", arg: 2, scope: !4014, file: !791, line: 964, type: !113)
!4020 = !DILocalVariable(name: "argsize", arg: 3, scope: !4014, file: !791, line: 964, type: !110)
!4021 = distinct !DIAssignID()
!4022 = !DILocation(line: 0, scope: !4014)
!4023 = !DILocation(line: 0, scope: !3959, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 966, column: 10, scope: !4014)
!4025 = !DILocation(line: 953, column: 3, scope: !3959, inlinedAt: !4024)
!4026 = !{!4027}
!4027 = distinct !{!4027, !4028, !"quoting_options_from_style: argument 0"}
!4028 = distinct !{!4028, !"quoting_options_from_style"}
!4029 = !DILocation(line: 953, column: 36, scope: !3959, inlinedAt: !4024)
!4030 = !DILocation(line: 0, scope: !3941, inlinedAt: !4031)
!4031 = distinct !DILocation(line: 953, column: 36, scope: !3959, inlinedAt: !4024)
!4032 = !DILocation(line: 185, column: 26, scope: !3941, inlinedAt: !4031)
!4033 = distinct !DIAssignID()
!4034 = !DILocation(line: 186, column: 13, scope: !3951, inlinedAt: !4031)
!4035 = !DILocation(line: 186, column: 7, scope: !3941, inlinedAt: !4031)
!4036 = !DILocation(line: 187, column: 5, scope: !3951, inlinedAt: !4031)
!4037 = !DILocation(line: 188, column: 11, scope: !3941, inlinedAt: !4031)
!4038 = distinct !DIAssignID()
!4039 = !DILocation(line: 954, column: 10, scope: !3959, inlinedAt: !4024)
!4040 = !DILocation(line: 955, column: 1, scope: !3959, inlinedAt: !4024)
!4041 = !DILocation(line: 966, column: 3, scope: !4014)
!4042 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !791, file: !791, line: 970, type: !4043, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4045)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!107, !113, !110, !4}
!4045 = !{!4046, !4047, !4048, !4049}
!4046 = !DILocalVariable(name: "arg", arg: 1, scope: !4042, file: !791, line: 970, type: !113)
!4047 = !DILocalVariable(name: "argsize", arg: 2, scope: !4042, file: !791, line: 970, type: !110)
!4048 = !DILocalVariable(name: "ch", arg: 3, scope: !4042, file: !791, line: 970, type: !4)
!4049 = !DILocalVariable(name: "options", scope: !4042, file: !791, line: 972, type: !832)
!4050 = distinct !DIAssignID()
!4051 = !DILocation(line: 0, scope: !4042)
!4052 = !DILocation(line: 972, column: 3, scope: !4042)
!4053 = !DILocation(line: 973, column: 13, scope: !4042)
!4054 = !{i64 0, i64 4, !1168, i64 4, i64 4, !1168, i64 8, i64 32, !1177, i64 40, i64 8, !1098, i64 48, i64 8, !1098}
!4055 = distinct !DIAssignID()
!4056 = !DILocation(line: 0, scope: !3055, inlinedAt: !4057)
!4057 = distinct !DILocation(line: 974, column: 3, scope: !4042)
!4058 = !DILocation(line: 147, column: 41, scope: !3055, inlinedAt: !4057)
!4059 = !DILocation(line: 147, column: 62, scope: !3055, inlinedAt: !4057)
!4060 = !DILocation(line: 147, column: 57, scope: !3055, inlinedAt: !4057)
!4061 = !DILocation(line: 148, column: 15, scope: !3055, inlinedAt: !4057)
!4062 = !DILocation(line: 149, column: 21, scope: !3055, inlinedAt: !4057)
!4063 = !DILocation(line: 149, column: 24, scope: !3055, inlinedAt: !4057)
!4064 = !DILocation(line: 150, column: 19, scope: !3055, inlinedAt: !4057)
!4065 = !DILocation(line: 150, column: 24, scope: !3055, inlinedAt: !4057)
!4066 = !DILocation(line: 150, column: 6, scope: !3055, inlinedAt: !4057)
!4067 = !DILocation(line: 975, column: 10, scope: !4042)
!4068 = !DILocation(line: 976, column: 1, scope: !4042)
!4069 = !DILocation(line: 975, column: 3, scope: !4042)
!4070 = distinct !DISubprogram(name: "quotearg_char", scope: !791, file: !791, line: 979, type: !4071, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4073)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!107, !113, !4}
!4073 = !{!4074, !4075}
!4074 = !DILocalVariable(name: "arg", arg: 1, scope: !4070, file: !791, line: 979, type: !113)
!4075 = !DILocalVariable(name: "ch", arg: 2, scope: !4070, file: !791, line: 979, type: !4)
!4076 = distinct !DIAssignID()
!4077 = !DILocation(line: 0, scope: !4070)
!4078 = !DILocation(line: 0, scope: !4042, inlinedAt: !4079)
!4079 = distinct !DILocation(line: 981, column: 10, scope: !4070)
!4080 = !DILocation(line: 972, column: 3, scope: !4042, inlinedAt: !4079)
!4081 = !DILocation(line: 973, column: 13, scope: !4042, inlinedAt: !4079)
!4082 = distinct !DIAssignID()
!4083 = !DILocation(line: 0, scope: !3055, inlinedAt: !4084)
!4084 = distinct !DILocation(line: 974, column: 3, scope: !4042, inlinedAt: !4079)
!4085 = !DILocation(line: 147, column: 41, scope: !3055, inlinedAt: !4084)
!4086 = !DILocation(line: 147, column: 62, scope: !3055, inlinedAt: !4084)
!4087 = !DILocation(line: 147, column: 57, scope: !3055, inlinedAt: !4084)
!4088 = !DILocation(line: 148, column: 15, scope: !3055, inlinedAt: !4084)
!4089 = !DILocation(line: 149, column: 21, scope: !3055, inlinedAt: !4084)
!4090 = !DILocation(line: 149, column: 24, scope: !3055, inlinedAt: !4084)
!4091 = !DILocation(line: 150, column: 19, scope: !3055, inlinedAt: !4084)
!4092 = !DILocation(line: 150, column: 24, scope: !3055, inlinedAt: !4084)
!4093 = !DILocation(line: 150, column: 6, scope: !3055, inlinedAt: !4084)
!4094 = !DILocation(line: 975, column: 10, scope: !4042, inlinedAt: !4079)
!4095 = !DILocation(line: 976, column: 1, scope: !4042, inlinedAt: !4079)
!4096 = !DILocation(line: 981, column: 3, scope: !4070)
!4097 = distinct !DISubprogram(name: "quotearg_colon", scope: !791, file: !791, line: 985, type: !1291, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4098)
!4098 = !{!4099}
!4099 = !DILocalVariable(name: "arg", arg: 1, scope: !4097, file: !791, line: 985, type: !113)
!4100 = distinct !DIAssignID()
!4101 = !DILocation(line: 0, scope: !4097)
!4102 = !DILocation(line: 0, scope: !4070, inlinedAt: !4103)
!4103 = distinct !DILocation(line: 987, column: 10, scope: !4097)
!4104 = !DILocation(line: 0, scope: !4042, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 981, column: 10, scope: !4070, inlinedAt: !4103)
!4106 = !DILocation(line: 972, column: 3, scope: !4042, inlinedAt: !4105)
!4107 = !DILocation(line: 973, column: 13, scope: !4042, inlinedAt: !4105)
!4108 = distinct !DIAssignID()
!4109 = !DILocation(line: 0, scope: !3055, inlinedAt: !4110)
!4110 = distinct !DILocation(line: 974, column: 3, scope: !4042, inlinedAt: !4105)
!4111 = !DILocation(line: 147, column: 57, scope: !3055, inlinedAt: !4110)
!4112 = !DILocation(line: 149, column: 21, scope: !3055, inlinedAt: !4110)
!4113 = !DILocation(line: 150, column: 6, scope: !3055, inlinedAt: !4110)
!4114 = !DILocation(line: 975, column: 10, scope: !4042, inlinedAt: !4105)
!4115 = !DILocation(line: 976, column: 1, scope: !4042, inlinedAt: !4105)
!4116 = !DILocation(line: 987, column: 3, scope: !4097)
!4117 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !791, file: !791, line: 991, type: !3915, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4118)
!4118 = !{!4119, !4120}
!4119 = !DILocalVariable(name: "arg", arg: 1, scope: !4117, file: !791, line: 991, type: !113)
!4120 = !DILocalVariable(name: "argsize", arg: 2, scope: !4117, file: !791, line: 991, type: !110)
!4121 = distinct !DIAssignID()
!4122 = !DILocation(line: 0, scope: !4117)
!4123 = !DILocation(line: 0, scope: !4042, inlinedAt: !4124)
!4124 = distinct !DILocation(line: 993, column: 10, scope: !4117)
!4125 = !DILocation(line: 972, column: 3, scope: !4042, inlinedAt: !4124)
!4126 = !DILocation(line: 973, column: 13, scope: !4042, inlinedAt: !4124)
!4127 = distinct !DIAssignID()
!4128 = !DILocation(line: 0, scope: !3055, inlinedAt: !4129)
!4129 = distinct !DILocation(line: 974, column: 3, scope: !4042, inlinedAt: !4124)
!4130 = !DILocation(line: 147, column: 57, scope: !3055, inlinedAt: !4129)
!4131 = !DILocation(line: 149, column: 21, scope: !3055, inlinedAt: !4129)
!4132 = !DILocation(line: 150, column: 6, scope: !3055, inlinedAt: !4129)
!4133 = !DILocation(line: 975, column: 10, scope: !4042, inlinedAt: !4124)
!4134 = !DILocation(line: 976, column: 1, scope: !4042, inlinedAt: !4124)
!4135 = !DILocation(line: 993, column: 3, scope: !4117)
!4136 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !791, file: !791, line: 997, type: !3926, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4137)
!4137 = !{!4138, !4139, !4140, !4141}
!4138 = !DILocalVariable(name: "n", arg: 1, scope: !4136, file: !791, line: 997, type: !77)
!4139 = !DILocalVariable(name: "s", arg: 2, scope: !4136, file: !791, line: 997, type: !817)
!4140 = !DILocalVariable(name: "arg", arg: 3, scope: !4136, file: !791, line: 997, type: !113)
!4141 = !DILocalVariable(name: "options", scope: !4136, file: !791, line: 999, type: !832)
!4142 = distinct !DIAssignID()
!4143 = !DILocation(line: 0, scope: !4136)
!4144 = !DILocation(line: 185, column: 26, scope: !3941, inlinedAt: !4145)
!4145 = distinct !DILocation(line: 1000, column: 13, scope: !4136)
!4146 = !DILocation(line: 999, column: 3, scope: !4136)
!4147 = !DILocation(line: 0, scope: !3941, inlinedAt: !4145)
!4148 = !DILocation(line: 186, column: 13, scope: !3951, inlinedAt: !4145)
!4149 = !DILocation(line: 186, column: 7, scope: !3941, inlinedAt: !4145)
!4150 = !DILocation(line: 187, column: 5, scope: !3951, inlinedAt: !4145)
!4151 = !{!4152}
!4152 = distinct !{!4152, !4153, !"quoting_options_from_style: argument 0"}
!4153 = distinct !{!4153, !"quoting_options_from_style"}
!4154 = !DILocation(line: 1000, column: 13, scope: !4136)
!4155 = distinct !DIAssignID()
!4156 = distinct !DIAssignID()
!4157 = !DILocation(line: 0, scope: !3055, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 1001, column: 3, scope: !4136)
!4159 = !DILocation(line: 147, column: 57, scope: !3055, inlinedAt: !4158)
!4160 = !DILocation(line: 149, column: 21, scope: !3055, inlinedAt: !4158)
!4161 = !DILocation(line: 150, column: 6, scope: !3055, inlinedAt: !4158)
!4162 = distinct !DIAssignID()
!4163 = !DILocation(line: 1002, column: 10, scope: !4136)
!4164 = !DILocation(line: 1003, column: 1, scope: !4136)
!4165 = !DILocation(line: 1002, column: 3, scope: !4136)
!4166 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !791, file: !791, line: 1006, type: !4167, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4169)
!4167 = !DISubroutineType(types: !4168)
!4168 = !{!107, !77, !113, !113, !113}
!4169 = !{!4170, !4171, !4172, !4173}
!4170 = !DILocalVariable(name: "n", arg: 1, scope: !4166, file: !791, line: 1006, type: !77)
!4171 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4166, file: !791, line: 1006, type: !113)
!4172 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4166, file: !791, line: 1007, type: !113)
!4173 = !DILocalVariable(name: "arg", arg: 4, scope: !4166, file: !791, line: 1007, type: !113)
!4174 = distinct !DIAssignID()
!4175 = !DILocation(line: 0, scope: !4166)
!4176 = !DILocalVariable(name: "o", scope: !4177, file: !791, line: 1018, type: !832)
!4177 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !791, file: !791, line: 1014, type: !4178, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4180)
!4178 = !DISubroutineType(types: !4179)
!4179 = !{!107, !77, !113, !113, !113, !110}
!4180 = !{!4181, !4182, !4183, !4184, !4185, !4176}
!4181 = !DILocalVariable(name: "n", arg: 1, scope: !4177, file: !791, line: 1014, type: !77)
!4182 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4177, file: !791, line: 1014, type: !113)
!4183 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4177, file: !791, line: 1015, type: !113)
!4184 = !DILocalVariable(name: "arg", arg: 4, scope: !4177, file: !791, line: 1016, type: !113)
!4185 = !DILocalVariable(name: "argsize", arg: 5, scope: !4177, file: !791, line: 1016, type: !110)
!4186 = !DILocation(line: 0, scope: !4177, inlinedAt: !4187)
!4187 = distinct !DILocation(line: 1009, column: 10, scope: !4166)
!4188 = !DILocation(line: 1018, column: 3, scope: !4177, inlinedAt: !4187)
!4189 = !DILocation(line: 1018, column: 30, scope: !4177, inlinedAt: !4187)
!4190 = distinct !DIAssignID()
!4191 = distinct !DIAssignID()
!4192 = !DILocation(line: 0, scope: !3095, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 1019, column: 3, scope: !4177, inlinedAt: !4187)
!4194 = !DILocation(line: 174, column: 12, scope: !3095, inlinedAt: !4193)
!4195 = distinct !DIAssignID()
!4196 = !DILocation(line: 175, column: 8, scope: !3108, inlinedAt: !4193)
!4197 = !DILocation(line: 175, column: 19, scope: !3108, inlinedAt: !4193)
!4198 = !DILocation(line: 176, column: 5, scope: !3108, inlinedAt: !4193)
!4199 = !DILocation(line: 177, column: 6, scope: !3095, inlinedAt: !4193)
!4200 = !DILocation(line: 177, column: 17, scope: !3095, inlinedAt: !4193)
!4201 = distinct !DIAssignID()
!4202 = !DILocation(line: 178, column: 6, scope: !3095, inlinedAt: !4193)
!4203 = !DILocation(line: 178, column: 18, scope: !3095, inlinedAt: !4193)
!4204 = distinct !DIAssignID()
!4205 = !DILocation(line: 1020, column: 10, scope: !4177, inlinedAt: !4187)
!4206 = !DILocation(line: 1021, column: 1, scope: !4177, inlinedAt: !4187)
!4207 = !DILocation(line: 1009, column: 3, scope: !4166)
!4208 = distinct !DIAssignID()
!4209 = !DILocation(line: 0, scope: !4177)
!4210 = !DILocation(line: 1018, column: 3, scope: !4177)
!4211 = !DILocation(line: 1018, column: 30, scope: !4177)
!4212 = distinct !DIAssignID()
!4213 = distinct !DIAssignID()
!4214 = !DILocation(line: 0, scope: !3095, inlinedAt: !4215)
!4215 = distinct !DILocation(line: 1019, column: 3, scope: !4177)
!4216 = !DILocation(line: 174, column: 12, scope: !3095, inlinedAt: !4215)
!4217 = distinct !DIAssignID()
!4218 = !DILocation(line: 175, column: 8, scope: !3108, inlinedAt: !4215)
!4219 = !DILocation(line: 175, column: 19, scope: !3108, inlinedAt: !4215)
!4220 = !DILocation(line: 176, column: 5, scope: !3108, inlinedAt: !4215)
!4221 = !DILocation(line: 177, column: 6, scope: !3095, inlinedAt: !4215)
!4222 = !DILocation(line: 177, column: 17, scope: !3095, inlinedAt: !4215)
!4223 = distinct !DIAssignID()
!4224 = !DILocation(line: 178, column: 6, scope: !3095, inlinedAt: !4215)
!4225 = !DILocation(line: 178, column: 18, scope: !3095, inlinedAt: !4215)
!4226 = distinct !DIAssignID()
!4227 = !DILocation(line: 1020, column: 10, scope: !4177)
!4228 = !DILocation(line: 1021, column: 1, scope: !4177)
!4229 = !DILocation(line: 1020, column: 3, scope: !4177)
!4230 = distinct !DISubprogram(name: "quotearg_custom", scope: !791, file: !791, line: 1024, type: !4231, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4233)
!4231 = !DISubroutineType(types: !4232)
!4232 = !{!107, !113, !113, !113}
!4233 = !{!4234, !4235, !4236}
!4234 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4230, file: !791, line: 1024, type: !113)
!4235 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4230, file: !791, line: 1024, type: !113)
!4236 = !DILocalVariable(name: "arg", arg: 3, scope: !4230, file: !791, line: 1025, type: !113)
!4237 = distinct !DIAssignID()
!4238 = !DILocation(line: 0, scope: !4230)
!4239 = !DILocation(line: 0, scope: !4166, inlinedAt: !4240)
!4240 = distinct !DILocation(line: 1027, column: 10, scope: !4230)
!4241 = !DILocation(line: 0, scope: !4177, inlinedAt: !4242)
!4242 = distinct !DILocation(line: 1009, column: 10, scope: !4166, inlinedAt: !4240)
!4243 = !DILocation(line: 1018, column: 3, scope: !4177, inlinedAt: !4242)
!4244 = !DILocation(line: 1018, column: 30, scope: !4177, inlinedAt: !4242)
!4245 = distinct !DIAssignID()
!4246 = distinct !DIAssignID()
!4247 = !DILocation(line: 0, scope: !3095, inlinedAt: !4248)
!4248 = distinct !DILocation(line: 1019, column: 3, scope: !4177, inlinedAt: !4242)
!4249 = !DILocation(line: 174, column: 12, scope: !3095, inlinedAt: !4248)
!4250 = distinct !DIAssignID()
!4251 = !DILocation(line: 175, column: 8, scope: !3108, inlinedAt: !4248)
!4252 = !DILocation(line: 175, column: 19, scope: !3108, inlinedAt: !4248)
!4253 = !DILocation(line: 176, column: 5, scope: !3108, inlinedAt: !4248)
!4254 = !DILocation(line: 177, column: 6, scope: !3095, inlinedAt: !4248)
!4255 = !DILocation(line: 177, column: 17, scope: !3095, inlinedAt: !4248)
!4256 = distinct !DIAssignID()
!4257 = !DILocation(line: 178, column: 6, scope: !3095, inlinedAt: !4248)
!4258 = !DILocation(line: 178, column: 18, scope: !3095, inlinedAt: !4248)
!4259 = distinct !DIAssignID()
!4260 = !DILocation(line: 1020, column: 10, scope: !4177, inlinedAt: !4242)
!4261 = !DILocation(line: 1021, column: 1, scope: !4177, inlinedAt: !4242)
!4262 = !DILocation(line: 1027, column: 3, scope: !4230)
!4263 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !791, file: !791, line: 1031, type: !4264, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4266)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!107, !113, !113, !113, !110}
!4266 = !{!4267, !4268, !4269, !4270}
!4267 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4263, file: !791, line: 1031, type: !113)
!4268 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4263, file: !791, line: 1031, type: !113)
!4269 = !DILocalVariable(name: "arg", arg: 3, scope: !4263, file: !791, line: 1032, type: !113)
!4270 = !DILocalVariable(name: "argsize", arg: 4, scope: !4263, file: !791, line: 1032, type: !110)
!4271 = distinct !DIAssignID()
!4272 = !DILocation(line: 0, scope: !4263)
!4273 = !DILocation(line: 0, scope: !4177, inlinedAt: !4274)
!4274 = distinct !DILocation(line: 1034, column: 10, scope: !4263)
!4275 = !DILocation(line: 1018, column: 3, scope: !4177, inlinedAt: !4274)
!4276 = !DILocation(line: 1018, column: 30, scope: !4177, inlinedAt: !4274)
!4277 = distinct !DIAssignID()
!4278 = distinct !DIAssignID()
!4279 = !DILocation(line: 0, scope: !3095, inlinedAt: !4280)
!4280 = distinct !DILocation(line: 1019, column: 3, scope: !4177, inlinedAt: !4274)
!4281 = !DILocation(line: 174, column: 12, scope: !3095, inlinedAt: !4280)
!4282 = distinct !DIAssignID()
!4283 = !DILocation(line: 175, column: 8, scope: !3108, inlinedAt: !4280)
!4284 = !DILocation(line: 175, column: 19, scope: !3108, inlinedAt: !4280)
!4285 = !DILocation(line: 176, column: 5, scope: !3108, inlinedAt: !4280)
!4286 = !DILocation(line: 177, column: 6, scope: !3095, inlinedAt: !4280)
!4287 = !DILocation(line: 177, column: 17, scope: !3095, inlinedAt: !4280)
!4288 = distinct !DIAssignID()
!4289 = !DILocation(line: 178, column: 6, scope: !3095, inlinedAt: !4280)
!4290 = !DILocation(line: 178, column: 18, scope: !3095, inlinedAt: !4280)
!4291 = distinct !DIAssignID()
!4292 = !DILocation(line: 1020, column: 10, scope: !4177, inlinedAt: !4274)
!4293 = !DILocation(line: 1021, column: 1, scope: !4177, inlinedAt: !4274)
!4294 = !DILocation(line: 1034, column: 3, scope: !4263)
!4295 = distinct !DISubprogram(name: "quote_n_mem", scope: !791, file: !791, line: 1049, type: !4296, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4298)
!4296 = !DISubroutineType(types: !4297)
!4297 = !{!113, !77, !113, !110}
!4298 = !{!4299, !4300, !4301}
!4299 = !DILocalVariable(name: "n", arg: 1, scope: !4295, file: !791, line: 1049, type: !77)
!4300 = !DILocalVariable(name: "arg", arg: 2, scope: !4295, file: !791, line: 1049, type: !113)
!4301 = !DILocalVariable(name: "argsize", arg: 3, scope: !4295, file: !791, line: 1049, type: !110)
!4302 = !DILocation(line: 0, scope: !4295)
!4303 = !DILocation(line: 1051, column: 10, scope: !4295)
!4304 = !DILocation(line: 1051, column: 3, scope: !4295)
!4305 = distinct !DISubprogram(name: "quote_mem", scope: !791, file: !791, line: 1055, type: !4306, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4308)
!4306 = !DISubroutineType(types: !4307)
!4307 = !{!113, !113, !110}
!4308 = !{!4309, !4310}
!4309 = !DILocalVariable(name: "arg", arg: 1, scope: !4305, file: !791, line: 1055, type: !113)
!4310 = !DILocalVariable(name: "argsize", arg: 2, scope: !4305, file: !791, line: 1055, type: !110)
!4311 = !DILocation(line: 0, scope: !4305)
!4312 = !DILocation(line: 0, scope: !4295, inlinedAt: !4313)
!4313 = distinct !DILocation(line: 1057, column: 10, scope: !4305)
!4314 = !DILocation(line: 1051, column: 10, scope: !4295, inlinedAt: !4313)
!4315 = !DILocation(line: 1057, column: 3, scope: !4305)
!4316 = distinct !DISubprogram(name: "quote_n", scope: !791, file: !791, line: 1061, type: !4317, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4319)
!4317 = !DISubroutineType(types: !4318)
!4318 = !{!113, !77, !113}
!4319 = !{!4320, !4321}
!4320 = !DILocalVariable(name: "n", arg: 1, scope: !4316, file: !791, line: 1061, type: !77)
!4321 = !DILocalVariable(name: "arg", arg: 2, scope: !4316, file: !791, line: 1061, type: !113)
!4322 = !DILocation(line: 0, scope: !4316)
!4323 = !DILocation(line: 0, scope: !4295, inlinedAt: !4324)
!4324 = distinct !DILocation(line: 1063, column: 10, scope: !4316)
!4325 = !DILocation(line: 1051, column: 10, scope: !4295, inlinedAt: !4324)
!4326 = !DILocation(line: 1063, column: 3, scope: !4316)
!4327 = distinct !DISubprogram(name: "quote", scope: !791, file: !791, line: 1067, type: !4328, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4330)
!4328 = !DISubroutineType(types: !4329)
!4329 = !{!113, !113}
!4330 = !{!4331}
!4331 = !DILocalVariable(name: "arg", arg: 1, scope: !4327, file: !791, line: 1067, type: !113)
!4332 = !DILocation(line: 0, scope: !4327)
!4333 = !DILocation(line: 0, scope: !4316, inlinedAt: !4334)
!4334 = distinct !DILocation(line: 1069, column: 10, scope: !4327)
!4335 = !DILocation(line: 0, scope: !4295, inlinedAt: !4336)
!4336 = distinct !DILocation(line: 1063, column: 10, scope: !4316, inlinedAt: !4334)
!4337 = !DILocation(line: 1051, column: 10, scope: !4295, inlinedAt: !4336)
!4338 = !DILocation(line: 1069, column: 3, scope: !4327)
!4339 = distinct !DISubprogram(name: "version_etc_arn", scope: !893, file: !893, line: 61, type: !4340, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1025, retainedNodes: !4377)
!4340 = !DISubroutineType(types: !4341)
!4341 = !{null, !4342, !113, !113, !113, !4376, !110}
!4342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4343, size: 64)
!4343 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !4344)
!4344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !4345)
!4345 = !{!4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4358, !4359, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373, !4374, !4375}
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4344, file: !171, line: 51, baseType: !77, size: 32)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4344, file: !171, line: 54, baseType: !107, size: 64, offset: 64)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4344, file: !171, line: 55, baseType: !107, size: 64, offset: 128)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4344, file: !171, line: 56, baseType: !107, size: 64, offset: 192)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4344, file: !171, line: 57, baseType: !107, size: 64, offset: 256)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4344, file: !171, line: 58, baseType: !107, size: 64, offset: 320)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4344, file: !171, line: 59, baseType: !107, size: 64, offset: 384)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4344, file: !171, line: 60, baseType: !107, size: 64, offset: 448)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4344, file: !171, line: 61, baseType: !107, size: 64, offset: 512)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4344, file: !171, line: 64, baseType: !107, size: 64, offset: 576)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4344, file: !171, line: 65, baseType: !107, size: 64, offset: 640)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4344, file: !171, line: 66, baseType: !107, size: 64, offset: 704)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4344, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4344, file: !171, line: 70, baseType: !4360, size: 64, offset: 832)
!4360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4344, size: 64)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4344, file: !171, line: 72, baseType: !77, size: 32, offset: 896)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4344, file: !171, line: 73, baseType: !77, size: 32, offset: 928)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4344, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4344, file: !171, line: 77, baseType: !109, size: 16, offset: 1024)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4344, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4344, file: !171, line: 79, baseType: !49, size: 8, offset: 1048)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4344, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4344, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4344, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4344, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4344, file: !171, line: 93, baseType: !4360, size: 64, offset: 1344)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4344, file: !171, line: 94, baseType: !108, size: 64, offset: 1408)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4344, file: !171, line: 95, baseType: !110, size: 64, offset: 1472)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4344, file: !171, line: 96, baseType: !77, size: 32, offset: 1536)
!4375 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4344, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!4376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!4377 = !{!4378, !4379, !4380, !4381, !4382, !4383}
!4378 = !DILocalVariable(name: "stream", arg: 1, scope: !4339, file: !893, line: 61, type: !4342)
!4379 = !DILocalVariable(name: "command_name", arg: 2, scope: !4339, file: !893, line: 62, type: !113)
!4380 = !DILocalVariable(name: "package", arg: 3, scope: !4339, file: !893, line: 62, type: !113)
!4381 = !DILocalVariable(name: "version", arg: 4, scope: !4339, file: !893, line: 63, type: !113)
!4382 = !DILocalVariable(name: "authors", arg: 5, scope: !4339, file: !893, line: 64, type: !4376)
!4383 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4339, file: !893, line: 64, type: !110)
!4384 = !DILocation(line: 0, scope: !4339)
!4385 = !DILocation(line: 66, column: 7, scope: !4386)
!4386 = distinct !DILexicalBlock(scope: !4339, file: !893, line: 66, column: 7)
!4387 = !DILocation(line: 66, column: 7, scope: !4339)
!4388 = !DILocation(line: 67, column: 5, scope: !4386)
!4389 = !DILocation(line: 69, column: 5, scope: !4386)
!4390 = !DILocation(line: 83, column: 3, scope: !4339)
!4391 = !DILocation(line: 85, column: 3, scope: !4339)
!4392 = !DILocation(line: 88, column: 3, scope: !4339)
!4393 = !DILocation(line: 95, column: 3, scope: !4339)
!4394 = !DILocation(line: 97, column: 3, scope: !4339)
!4395 = !DILocation(line: 105, column: 7, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4339, file: !893, line: 98, column: 5)
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
!4417 = distinct !DISubprogram(name: "version_etc_ar", scope: !893, file: !893, line: 183, type: !4418, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1025, retainedNodes: !4420)
!4418 = !DISubroutineType(types: !4419)
!4419 = !{null, !4342, !113, !113, !113, !4376}
!4420 = !{!4421, !4422, !4423, !4424, !4425, !4426}
!4421 = !DILocalVariable(name: "stream", arg: 1, scope: !4417, file: !893, line: 183, type: !4342)
!4422 = !DILocalVariable(name: "command_name", arg: 2, scope: !4417, file: !893, line: 184, type: !113)
!4423 = !DILocalVariable(name: "package", arg: 3, scope: !4417, file: !893, line: 184, type: !113)
!4424 = !DILocalVariable(name: "version", arg: 4, scope: !4417, file: !893, line: 185, type: !113)
!4425 = !DILocalVariable(name: "authors", arg: 5, scope: !4417, file: !893, line: 185, type: !4376)
!4426 = !DILocalVariable(name: "n_authors", scope: !4417, file: !893, line: 187, type: !110)
!4427 = !DILocation(line: 0, scope: !4417)
!4428 = !DILocation(line: 189, column: 8, scope: !4429)
!4429 = distinct !DILexicalBlock(scope: !4417, file: !893, line: 189, column: 3)
!4430 = !DILocation(line: 189, scope: !4429)
!4431 = !DILocation(line: 189, column: 23, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4429, file: !893, line: 189, column: 3)
!4433 = !DILocation(line: 189, column: 3, scope: !4429)
!4434 = !DILocation(line: 189, column: 52, scope: !4432)
!4435 = distinct !{!4435, !4433, !4436, !1215}
!4436 = !DILocation(line: 190, column: 5, scope: !4429)
!4437 = !DILocation(line: 191, column: 3, scope: !4417)
!4438 = !DILocation(line: 192, column: 1, scope: !4417)
!4439 = distinct !DISubprogram(name: "version_etc_va", scope: !893, file: !893, line: 199, type: !4440, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1025, retainedNodes: !4452)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{null, !4342, !113, !113, !113, !4442}
!4442 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !715, line: 52, baseType: !4443)
!4443 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !717, line: 12, baseType: !4444)
!4444 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !893, baseType: !4445)
!4445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4446)
!4446 = !{!4447, !4448, !4449, !4450, !4451}
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4445, file: !893, line: 192, baseType: !108, size: 64)
!4448 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4445, file: !893, line: 192, baseType: !108, size: 64, offset: 64)
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4445, file: !893, line: 192, baseType: !108, size: 64, offset: 128)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4445, file: !893, line: 192, baseType: !77, size: 32, offset: 192)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4445, file: !893, line: 192, baseType: !77, size: 32, offset: 224)
!4452 = !{!4453, !4454, !4455, !4456, !4457, !4458, !4459}
!4453 = !DILocalVariable(name: "stream", arg: 1, scope: !4439, file: !893, line: 199, type: !4342)
!4454 = !DILocalVariable(name: "command_name", arg: 2, scope: !4439, file: !893, line: 200, type: !113)
!4455 = !DILocalVariable(name: "package", arg: 3, scope: !4439, file: !893, line: 200, type: !113)
!4456 = !DILocalVariable(name: "version", arg: 4, scope: !4439, file: !893, line: 201, type: !113)
!4457 = !DILocalVariable(name: "authors", arg: 5, scope: !4439, file: !893, line: 201, type: !4442)
!4458 = !DILocalVariable(name: "n_authors", scope: !4439, file: !893, line: 203, type: !110)
!4459 = !DILocalVariable(name: "authtab", scope: !4439, file: !893, line: 204, type: !4460)
!4460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 640, elements: !55)
!4461 = distinct !DIAssignID()
!4462 = !DILocation(line: 0, scope: !4439)
!4463 = !DILocation(line: 204, column: 3, scope: !4439)
!4464 = !DILocation(line: 208, column: 35, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4466, file: !893, line: 206, column: 3)
!4466 = distinct !DILexicalBlock(scope: !4439, file: !893, line: 206, column: 3)
!4467 = !DILocation(line: 208, column: 33, scope: !4465)
!4468 = !DILocation(line: 208, column: 67, scope: !4465)
!4469 = !DILocation(line: 206, column: 3, scope: !4466)
!4470 = !DILocation(line: 208, column: 14, scope: !4465)
!4471 = !DILocation(line: 0, scope: !4466)
!4472 = !DILocation(line: 211, column: 3, scope: !4439)
!4473 = !DILocation(line: 213, column: 1, scope: !4439)
!4474 = distinct !DISubprogram(name: "version_etc", scope: !893, file: !893, line: 230, type: !4475, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1025, retainedNodes: !4477)
!4475 = !DISubroutineType(types: !4476)
!4476 = !{null, !4342, !113, !113, !113, null}
!4477 = !{!4478, !4479, !4480, !4481, !4482}
!4478 = !DILocalVariable(name: "stream", arg: 1, scope: !4474, file: !893, line: 230, type: !4342)
!4479 = !DILocalVariable(name: "command_name", arg: 2, scope: !4474, file: !893, line: 231, type: !113)
!4480 = !DILocalVariable(name: "package", arg: 3, scope: !4474, file: !893, line: 231, type: !113)
!4481 = !DILocalVariable(name: "version", arg: 4, scope: !4474, file: !893, line: 232, type: !113)
!4482 = !DILocalVariable(name: "authors", scope: !4474, file: !893, line: 234, type: !4442)
!4483 = distinct !DIAssignID()
!4484 = !DILocation(line: 0, scope: !4474)
!4485 = !DILocation(line: 234, column: 3, scope: !4474)
!4486 = !DILocation(line: 235, column: 3, scope: !4474)
!4487 = !DILocation(line: 236, column: 3, scope: !4474)
!4488 = !DILocation(line: 237, column: 3, scope: !4474)
!4489 = !DILocation(line: 238, column: 1, scope: !4474)
!4490 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !893, file: !893, line: 241, type: !356, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1025)
!4491 = !DILocation(line: 243, column: 3, scope: !4490)
!4492 = !DILocation(line: 248, column: 3, scope: !4490)
!4493 = !DILocation(line: 254, column: 3, scope: !4490)
!4494 = !DILocation(line: 259, column: 3, scope: !4490)
!4495 = !DILocation(line: 261, column: 1, scope: !4490)
!4496 = distinct !DISubprogram(name: "xnrealloc", scope: !4497, file: !4497, line: 147, type: !4498, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4500)
!4497 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!108, !108, !110, !110}
!4500 = !{!4501, !4502, !4503}
!4501 = !DILocalVariable(name: "p", arg: 1, scope: !4496, file: !4497, line: 147, type: !108)
!4502 = !DILocalVariable(name: "n", arg: 2, scope: !4496, file: !4497, line: 147, type: !110)
!4503 = !DILocalVariable(name: "s", arg: 3, scope: !4496, file: !4497, line: 147, type: !110)
!4504 = !DILocation(line: 0, scope: !4496)
!4505 = !DILocalVariable(name: "p", arg: 1, scope: !4506, file: !1032, line: 83, type: !108)
!4506 = distinct !DISubprogram(name: "xreallocarray", scope: !1032, file: !1032, line: 83, type: !4498, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4507)
!4507 = !{!4505, !4508, !4509}
!4508 = !DILocalVariable(name: "n", arg: 2, scope: !4506, file: !1032, line: 83, type: !110)
!4509 = !DILocalVariable(name: "s", arg: 3, scope: !4506, file: !1032, line: 83, type: !110)
!4510 = !DILocation(line: 0, scope: !4506, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 149, column: 10, scope: !4496)
!4512 = !DILocation(line: 85, column: 25, scope: !4506, inlinedAt: !4511)
!4513 = !DILocalVariable(name: "p", arg: 1, scope: !4514, file: !1032, line: 37, type: !108)
!4514 = distinct !DISubprogram(name: "check_nonnull", scope: !1032, file: !1032, line: 37, type: !4515, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4517)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!108, !108}
!4517 = !{!4513}
!4518 = !DILocation(line: 0, scope: !4514, inlinedAt: !4519)
!4519 = distinct !DILocation(line: 85, column: 10, scope: !4506, inlinedAt: !4511)
!4520 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4519)
!4521 = distinct !DILexicalBlock(scope: !4514, file: !1032, line: 39, column: 7)
!4522 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4519)
!4523 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4519)
!4524 = !DILocation(line: 149, column: 3, scope: !4496)
!4525 = !DILocation(line: 0, scope: !4506)
!4526 = !DILocation(line: 85, column: 25, scope: !4506)
!4527 = !DILocation(line: 0, scope: !4514, inlinedAt: !4528)
!4528 = distinct !DILocation(line: 85, column: 10, scope: !4506)
!4529 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4528)
!4530 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4528)
!4531 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4528)
!4532 = !DILocation(line: 85, column: 3, scope: !4506)
!4533 = distinct !DISubprogram(name: "xmalloc", scope: !1032, file: !1032, line: 47, type: !4534, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4536)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!108, !110}
!4536 = !{!4537}
!4537 = !DILocalVariable(name: "s", arg: 1, scope: !4533, file: !1032, line: 47, type: !110)
!4538 = !DILocation(line: 0, scope: !4533)
!4539 = !DILocation(line: 49, column: 25, scope: !4533)
!4540 = !DILocation(line: 0, scope: !4514, inlinedAt: !4541)
!4541 = distinct !DILocation(line: 49, column: 10, scope: !4533)
!4542 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4541)
!4543 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4541)
!4544 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4541)
!4545 = !DILocation(line: 49, column: 3, scope: !4533)
!4546 = !DISubprogram(name: "malloc", scope: !1289, file: !1289, line: 540, type: !4534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4547 = distinct !DISubprogram(name: "ximalloc", scope: !1032, file: !1032, line: 53, type: !4548, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4550)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!108, !1051}
!4550 = !{!4551}
!4551 = !DILocalVariable(name: "s", arg: 1, scope: !4547, file: !1032, line: 53, type: !1051)
!4552 = !DILocation(line: 0, scope: !4547)
!4553 = !DILocalVariable(name: "s", arg: 1, scope: !4554, file: !4555, line: 55, type: !1051)
!4554 = distinct !DISubprogram(name: "imalloc", scope: !4555, file: !4555, line: 55, type: !4548, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4556)
!4555 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4556 = !{!4553}
!4557 = !DILocation(line: 0, scope: !4554, inlinedAt: !4558)
!4558 = distinct !DILocation(line: 55, column: 25, scope: !4547)
!4559 = !DILocation(line: 57, column: 26, scope: !4554, inlinedAt: !4558)
!4560 = !DILocation(line: 0, scope: !4514, inlinedAt: !4561)
!4561 = distinct !DILocation(line: 55, column: 10, scope: !4547)
!4562 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4561)
!4563 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4561)
!4564 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4561)
!4565 = !DILocation(line: 55, column: 3, scope: !4547)
!4566 = distinct !DISubprogram(name: "xcharalloc", scope: !1032, file: !1032, line: 59, type: !4567, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4569)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!107, !110}
!4569 = !{!4570}
!4570 = !DILocalVariable(name: "n", arg: 1, scope: !4566, file: !1032, line: 59, type: !110)
!4571 = !DILocation(line: 0, scope: !4566)
!4572 = !DILocation(line: 0, scope: !4533, inlinedAt: !4573)
!4573 = distinct !DILocation(line: 61, column: 10, scope: !4566)
!4574 = !DILocation(line: 49, column: 25, scope: !4533, inlinedAt: !4573)
!4575 = !DILocation(line: 0, scope: !4514, inlinedAt: !4576)
!4576 = distinct !DILocation(line: 49, column: 10, scope: !4533, inlinedAt: !4573)
!4577 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4576)
!4578 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4576)
!4579 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4576)
!4580 = !DILocation(line: 61, column: 3, scope: !4566)
!4581 = distinct !DISubprogram(name: "xrealloc", scope: !1032, file: !1032, line: 68, type: !4582, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4584)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!108, !108, !110}
!4584 = !{!4585, !4586}
!4585 = !DILocalVariable(name: "p", arg: 1, scope: !4581, file: !1032, line: 68, type: !108)
!4586 = !DILocalVariable(name: "s", arg: 2, scope: !4581, file: !1032, line: 68, type: !110)
!4587 = !DILocation(line: 0, scope: !4581)
!4588 = !DILocalVariable(name: "ptr", arg: 1, scope: !4589, file: !4590, line: 2057, type: !108)
!4589 = distinct !DISubprogram(name: "rpl_realloc", scope: !4590, file: !4590, line: 2057, type: !4582, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4591)
!4590 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4591 = !{!4588, !4592}
!4592 = !DILocalVariable(name: "size", arg: 2, scope: !4589, file: !4590, line: 2057, type: !110)
!4593 = !DILocation(line: 0, scope: !4589, inlinedAt: !4594)
!4594 = distinct !DILocation(line: 70, column: 25, scope: !4581)
!4595 = !DILocation(line: 2059, column: 24, scope: !4589, inlinedAt: !4594)
!4596 = !DILocation(line: 2059, column: 10, scope: !4589, inlinedAt: !4594)
!4597 = !DILocation(line: 0, scope: !4514, inlinedAt: !4598)
!4598 = distinct !DILocation(line: 70, column: 10, scope: !4581)
!4599 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4598)
!4600 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4598)
!4601 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4598)
!4602 = !DILocation(line: 70, column: 3, scope: !4581)
!4603 = !DISubprogram(name: "realloc", scope: !1289, file: !1289, line: 551, type: !4582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4604 = distinct !DISubprogram(name: "xirealloc", scope: !1032, file: !1032, line: 74, type: !4605, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4607)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!108, !108, !1051}
!4607 = !{!4608, !4609}
!4608 = !DILocalVariable(name: "p", arg: 1, scope: !4604, file: !1032, line: 74, type: !108)
!4609 = !DILocalVariable(name: "s", arg: 2, scope: !4604, file: !1032, line: 74, type: !1051)
!4610 = !DILocation(line: 0, scope: !4604)
!4611 = !DILocalVariable(name: "p", arg: 1, scope: !4612, file: !4555, line: 66, type: !108)
!4612 = distinct !DISubprogram(name: "irealloc", scope: !4555, file: !4555, line: 66, type: !4605, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4613)
!4613 = !{!4611, !4614}
!4614 = !DILocalVariable(name: "s", arg: 2, scope: !4612, file: !4555, line: 66, type: !1051)
!4615 = !DILocation(line: 0, scope: !4612, inlinedAt: !4616)
!4616 = distinct !DILocation(line: 76, column: 25, scope: !4604)
!4617 = !DILocation(line: 0, scope: !4589, inlinedAt: !4618)
!4618 = distinct !DILocation(line: 68, column: 26, scope: !4612, inlinedAt: !4616)
!4619 = !DILocation(line: 2059, column: 24, scope: !4589, inlinedAt: !4618)
!4620 = !DILocation(line: 2059, column: 10, scope: !4589, inlinedAt: !4618)
!4621 = !DILocation(line: 0, scope: !4514, inlinedAt: !4622)
!4622 = distinct !DILocation(line: 76, column: 10, scope: !4604)
!4623 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4622)
!4624 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4622)
!4625 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4622)
!4626 = !DILocation(line: 76, column: 3, scope: !4604)
!4627 = distinct !DISubprogram(name: "xireallocarray", scope: !1032, file: !1032, line: 89, type: !4628, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4630)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!108, !108, !1051, !1051}
!4630 = !{!4631, !4632, !4633}
!4631 = !DILocalVariable(name: "p", arg: 1, scope: !4627, file: !1032, line: 89, type: !108)
!4632 = !DILocalVariable(name: "n", arg: 2, scope: !4627, file: !1032, line: 89, type: !1051)
!4633 = !DILocalVariable(name: "s", arg: 3, scope: !4627, file: !1032, line: 89, type: !1051)
!4634 = !DILocation(line: 0, scope: !4627)
!4635 = !DILocalVariable(name: "p", arg: 1, scope: !4636, file: !4555, line: 98, type: !108)
!4636 = distinct !DISubprogram(name: "ireallocarray", scope: !4555, file: !4555, line: 98, type: !4628, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4637)
!4637 = !{!4635, !4638, !4639}
!4638 = !DILocalVariable(name: "n", arg: 2, scope: !4636, file: !4555, line: 98, type: !1051)
!4639 = !DILocalVariable(name: "s", arg: 3, scope: !4636, file: !4555, line: 98, type: !1051)
!4640 = !DILocation(line: 0, scope: !4636, inlinedAt: !4641)
!4641 = distinct !DILocation(line: 91, column: 25, scope: !4627)
!4642 = !DILocation(line: 101, column: 13, scope: !4636, inlinedAt: !4641)
!4643 = !DILocation(line: 0, scope: !4514, inlinedAt: !4644)
!4644 = distinct !DILocation(line: 91, column: 10, scope: !4627)
!4645 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4644)
!4646 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4644)
!4647 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4644)
!4648 = !DILocation(line: 91, column: 3, scope: !4627)
!4649 = distinct !DISubprogram(name: "xnmalloc", scope: !1032, file: !1032, line: 98, type: !4650, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4652)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!108, !110, !110}
!4652 = !{!4653, !4654}
!4653 = !DILocalVariable(name: "n", arg: 1, scope: !4649, file: !1032, line: 98, type: !110)
!4654 = !DILocalVariable(name: "s", arg: 2, scope: !4649, file: !1032, line: 98, type: !110)
!4655 = !DILocation(line: 0, scope: !4649)
!4656 = !DILocation(line: 0, scope: !4506, inlinedAt: !4657)
!4657 = distinct !DILocation(line: 100, column: 10, scope: !4649)
!4658 = !DILocation(line: 85, column: 25, scope: !4506, inlinedAt: !4657)
!4659 = !DILocation(line: 0, scope: !4514, inlinedAt: !4660)
!4660 = distinct !DILocation(line: 85, column: 10, scope: !4506, inlinedAt: !4657)
!4661 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4660)
!4662 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4660)
!4663 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4660)
!4664 = !DILocation(line: 100, column: 3, scope: !4649)
!4665 = distinct !DISubprogram(name: "xinmalloc", scope: !1032, file: !1032, line: 104, type: !4666, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4668)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!108, !1051, !1051}
!4668 = !{!4669, !4670}
!4669 = !DILocalVariable(name: "n", arg: 1, scope: !4665, file: !1032, line: 104, type: !1051)
!4670 = !DILocalVariable(name: "s", arg: 2, scope: !4665, file: !1032, line: 104, type: !1051)
!4671 = !DILocation(line: 0, scope: !4665)
!4672 = !DILocation(line: 0, scope: !4627, inlinedAt: !4673)
!4673 = distinct !DILocation(line: 106, column: 10, scope: !4665)
!4674 = !DILocation(line: 0, scope: !4636, inlinedAt: !4675)
!4675 = distinct !DILocation(line: 91, column: 25, scope: !4627, inlinedAt: !4673)
!4676 = !DILocation(line: 101, column: 13, scope: !4636, inlinedAt: !4675)
!4677 = !DILocation(line: 0, scope: !4514, inlinedAt: !4678)
!4678 = distinct !DILocation(line: 91, column: 10, scope: !4627, inlinedAt: !4673)
!4679 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4678)
!4680 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4678)
!4681 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4678)
!4682 = !DILocation(line: 106, column: 3, scope: !4665)
!4683 = distinct !DISubprogram(name: "x2realloc", scope: !1032, file: !1032, line: 116, type: !4684, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4686)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!108, !108, !1038}
!4686 = !{!4687, !4688}
!4687 = !DILocalVariable(name: "p", arg: 1, scope: !4683, file: !1032, line: 116, type: !108)
!4688 = !DILocalVariable(name: "ps", arg: 2, scope: !4683, file: !1032, line: 116, type: !1038)
!4689 = !DILocation(line: 0, scope: !4683)
!4690 = !DILocation(line: 0, scope: !1035, inlinedAt: !4691)
!4691 = distinct !DILocation(line: 118, column: 10, scope: !4683)
!4692 = !DILocation(line: 178, column: 14, scope: !1035, inlinedAt: !4691)
!4693 = !DILocation(line: 180, column: 9, scope: !4694, inlinedAt: !4691)
!4694 = distinct !DILexicalBlock(scope: !1035, file: !1032, line: 180, column: 7)
!4695 = !DILocation(line: 180, column: 7, scope: !1035, inlinedAt: !4691)
!4696 = !DILocation(line: 182, column: 13, scope: !4697, inlinedAt: !4691)
!4697 = distinct !DILexicalBlock(scope: !4698, file: !1032, line: 182, column: 11)
!4698 = distinct !DILexicalBlock(scope: !4694, file: !1032, line: 181, column: 5)
!4699 = !DILocation(line: 182, column: 11, scope: !4698, inlinedAt: !4691)
!4700 = !DILocation(line: 197, column: 11, scope: !4701, inlinedAt: !4691)
!4701 = distinct !DILexicalBlock(scope: !4702, file: !1032, line: 197, column: 11)
!4702 = distinct !DILexicalBlock(scope: !4694, file: !1032, line: 195, column: 5)
!4703 = !DILocation(line: 197, column: 11, scope: !4702, inlinedAt: !4691)
!4704 = !DILocation(line: 198, column: 9, scope: !4701, inlinedAt: !4691)
!4705 = !DILocation(line: 0, scope: !4506, inlinedAt: !4706)
!4706 = distinct !DILocation(line: 201, column: 7, scope: !1035, inlinedAt: !4691)
!4707 = !DILocation(line: 85, column: 25, scope: !4506, inlinedAt: !4706)
!4708 = !DILocation(line: 0, scope: !4514, inlinedAt: !4709)
!4709 = distinct !DILocation(line: 85, column: 10, scope: !4506, inlinedAt: !4706)
!4710 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4709)
!4711 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4709)
!4712 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4709)
!4713 = !DILocation(line: 202, column: 7, scope: !1035, inlinedAt: !4691)
!4714 = !DILocation(line: 118, column: 3, scope: !4683)
!4715 = !DILocation(line: 0, scope: !1035)
!4716 = !DILocation(line: 178, column: 14, scope: !1035)
!4717 = !DILocation(line: 180, column: 9, scope: !4694)
!4718 = !DILocation(line: 180, column: 7, scope: !1035)
!4719 = !DILocation(line: 182, column: 13, scope: !4697)
!4720 = !DILocation(line: 182, column: 11, scope: !4698)
!4721 = !DILocation(line: 190, column: 30, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4697, file: !1032, line: 183, column: 9)
!4723 = !DILocation(line: 191, column: 16, scope: !4722)
!4724 = !DILocation(line: 191, column: 13, scope: !4722)
!4725 = !DILocation(line: 192, column: 9, scope: !4722)
!4726 = !DILocation(line: 197, column: 11, scope: !4701)
!4727 = !DILocation(line: 197, column: 11, scope: !4702)
!4728 = !DILocation(line: 198, column: 9, scope: !4701)
!4729 = !DILocation(line: 0, scope: !4506, inlinedAt: !4730)
!4730 = distinct !DILocation(line: 201, column: 7, scope: !1035)
!4731 = !DILocation(line: 85, column: 25, scope: !4506, inlinedAt: !4730)
!4732 = !DILocation(line: 0, scope: !4514, inlinedAt: !4733)
!4733 = distinct !DILocation(line: 85, column: 10, scope: !4506, inlinedAt: !4730)
!4734 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4733)
!4735 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4733)
!4736 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4733)
!4737 = !DILocation(line: 202, column: 7, scope: !1035)
!4738 = !DILocation(line: 203, column: 3, scope: !1035)
!4739 = !DILocation(line: 0, scope: !1047)
!4740 = !DILocation(line: 230, column: 14, scope: !1047)
!4741 = !DILocation(line: 238, column: 7, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !1047, file: !1032, line: 238, column: 7)
!4743 = !DILocation(line: 238, column: 7, scope: !1047)
!4744 = !DILocation(line: 240, column: 9, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !1047, file: !1032, line: 240, column: 7)
!4746 = !DILocation(line: 240, column: 18, scope: !4745)
!4747 = !DILocation(line: 253, column: 8, scope: !1047)
!4748 = !DILocation(line: 256, column: 7, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !1047, file: !1032, line: 256, column: 7)
!4750 = !DILocation(line: 256, column: 7, scope: !1047)
!4751 = !DILocation(line: 258, column: 27, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4749, file: !1032, line: 257, column: 5)
!4753 = !DILocation(line: 259, column: 32, scope: !4752)
!4754 = !DILocation(line: 260, column: 5, scope: !4752)
!4755 = !DILocation(line: 262, column: 9, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !1047, file: !1032, line: 262, column: 7)
!4757 = !DILocation(line: 262, column: 7, scope: !1047)
!4758 = !DILocation(line: 263, column: 9, scope: !4756)
!4759 = !DILocation(line: 263, column: 5, scope: !4756)
!4760 = !DILocation(line: 264, column: 9, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !1047, file: !1032, line: 264, column: 7)
!4762 = !DILocation(line: 264, column: 14, scope: !4761)
!4763 = !DILocation(line: 265, column: 7, scope: !4761)
!4764 = !DILocation(line: 265, column: 11, scope: !4761)
!4765 = !DILocation(line: 266, column: 11, scope: !4761)
!4766 = !DILocation(line: 267, column: 14, scope: !4761)
!4767 = !DILocation(line: 264, column: 7, scope: !1047)
!4768 = !DILocation(line: 268, column: 5, scope: !4761)
!4769 = !DILocation(line: 0, scope: !4581, inlinedAt: !4770)
!4770 = distinct !DILocation(line: 269, column: 8, scope: !1047)
!4771 = !DILocation(line: 0, scope: !4589, inlinedAt: !4772)
!4772 = distinct !DILocation(line: 70, column: 25, scope: !4581, inlinedAt: !4770)
!4773 = !DILocation(line: 2059, column: 24, scope: !4589, inlinedAt: !4772)
!4774 = !DILocation(line: 2059, column: 10, scope: !4589, inlinedAt: !4772)
!4775 = !DILocation(line: 0, scope: !4514, inlinedAt: !4776)
!4776 = distinct !DILocation(line: 70, column: 10, scope: !4581, inlinedAt: !4770)
!4777 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4776)
!4778 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4776)
!4779 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4776)
!4780 = !DILocation(line: 270, column: 7, scope: !1047)
!4781 = !DILocation(line: 271, column: 3, scope: !1047)
!4782 = distinct !DISubprogram(name: "xzalloc", scope: !1032, file: !1032, line: 279, type: !4534, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4783)
!4783 = !{!4784}
!4784 = !DILocalVariable(name: "s", arg: 1, scope: !4782, file: !1032, line: 279, type: !110)
!4785 = !DILocation(line: 0, scope: !4782)
!4786 = !DILocalVariable(name: "n", arg: 1, scope: !4787, file: !1032, line: 294, type: !110)
!4787 = distinct !DISubprogram(name: "xcalloc", scope: !1032, file: !1032, line: 294, type: !4650, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4788)
!4788 = !{!4786, !4789}
!4789 = !DILocalVariable(name: "s", arg: 2, scope: !4787, file: !1032, line: 294, type: !110)
!4790 = !DILocation(line: 0, scope: !4787, inlinedAt: !4791)
!4791 = distinct !DILocation(line: 281, column: 10, scope: !4782)
!4792 = !DILocation(line: 296, column: 25, scope: !4787, inlinedAt: !4791)
!4793 = !DILocation(line: 0, scope: !4514, inlinedAt: !4794)
!4794 = distinct !DILocation(line: 296, column: 10, scope: !4787, inlinedAt: !4791)
!4795 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4794)
!4796 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4794)
!4797 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4794)
!4798 = !DILocation(line: 281, column: 3, scope: !4782)
!4799 = !DISubprogram(name: "calloc", scope: !1289, file: !1289, line: 543, type: !4650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4800 = !DILocation(line: 0, scope: !4787)
!4801 = !DILocation(line: 296, column: 25, scope: !4787)
!4802 = !DILocation(line: 0, scope: !4514, inlinedAt: !4803)
!4803 = distinct !DILocation(line: 296, column: 10, scope: !4787)
!4804 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4803)
!4805 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4803)
!4806 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4803)
!4807 = !DILocation(line: 296, column: 3, scope: !4787)
!4808 = distinct !DISubprogram(name: "xizalloc", scope: !1032, file: !1032, line: 285, type: !4548, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4809)
!4809 = !{!4810}
!4810 = !DILocalVariable(name: "s", arg: 1, scope: !4808, file: !1032, line: 285, type: !1051)
!4811 = !DILocation(line: 0, scope: !4808)
!4812 = !DILocalVariable(name: "n", arg: 1, scope: !4813, file: !1032, line: 300, type: !1051)
!4813 = distinct !DISubprogram(name: "xicalloc", scope: !1032, file: !1032, line: 300, type: !4666, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4814)
!4814 = !{!4812, !4815}
!4815 = !DILocalVariable(name: "s", arg: 2, scope: !4813, file: !1032, line: 300, type: !1051)
!4816 = !DILocation(line: 0, scope: !4813, inlinedAt: !4817)
!4817 = distinct !DILocation(line: 287, column: 10, scope: !4808)
!4818 = !DILocalVariable(name: "n", arg: 1, scope: !4819, file: !4555, line: 77, type: !1051)
!4819 = distinct !DISubprogram(name: "icalloc", scope: !4555, file: !4555, line: 77, type: !4666, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4820)
!4820 = !{!4818, !4821}
!4821 = !DILocalVariable(name: "s", arg: 2, scope: !4819, file: !4555, line: 77, type: !1051)
!4822 = !DILocation(line: 0, scope: !4819, inlinedAt: !4823)
!4823 = distinct !DILocation(line: 302, column: 25, scope: !4813, inlinedAt: !4817)
!4824 = !DILocation(line: 91, column: 10, scope: !4819, inlinedAt: !4823)
!4825 = !DILocation(line: 0, scope: !4514, inlinedAt: !4826)
!4826 = distinct !DILocation(line: 302, column: 10, scope: !4813, inlinedAt: !4817)
!4827 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4826)
!4828 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4826)
!4829 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4826)
!4830 = !DILocation(line: 287, column: 3, scope: !4808)
!4831 = !DILocation(line: 0, scope: !4813)
!4832 = !DILocation(line: 0, scope: !4819, inlinedAt: !4833)
!4833 = distinct !DILocation(line: 302, column: 25, scope: !4813)
!4834 = !DILocation(line: 91, column: 10, scope: !4819, inlinedAt: !4833)
!4835 = !DILocation(line: 0, scope: !4514, inlinedAt: !4836)
!4836 = distinct !DILocation(line: 302, column: 10, scope: !4813)
!4837 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4836)
!4838 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4836)
!4839 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4836)
!4840 = !DILocation(line: 302, column: 3, scope: !4813)
!4841 = distinct !DISubprogram(name: "xmemdup", scope: !1032, file: !1032, line: 310, type: !4842, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4844)
!4842 = !DISubroutineType(types: !4843)
!4843 = !{!108, !1313, !110}
!4844 = !{!4845, !4846}
!4845 = !DILocalVariable(name: "p", arg: 1, scope: !4841, file: !1032, line: 310, type: !1313)
!4846 = !DILocalVariable(name: "s", arg: 2, scope: !4841, file: !1032, line: 310, type: !110)
!4847 = !DILocation(line: 0, scope: !4841)
!4848 = !DILocation(line: 0, scope: !4533, inlinedAt: !4849)
!4849 = distinct !DILocation(line: 312, column: 18, scope: !4841)
!4850 = !DILocation(line: 49, column: 25, scope: !4533, inlinedAt: !4849)
!4851 = !DILocation(line: 0, scope: !4514, inlinedAt: !4852)
!4852 = distinct !DILocation(line: 49, column: 10, scope: !4533, inlinedAt: !4849)
!4853 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4852)
!4854 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4852)
!4855 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4852)
!4856 = !DILocalVariable(name: "__dest", arg: 1, scope: !4857, file: !1438, line: 26, type: !1694)
!4857 = distinct !DISubprogram(name: "memcpy", scope: !1438, file: !1438, line: 26, type: !1692, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4858)
!4858 = !{!4856, !4859, !4860}
!4859 = !DILocalVariable(name: "__src", arg: 2, scope: !4857, file: !1438, line: 26, type: !1312)
!4860 = !DILocalVariable(name: "__len", arg: 3, scope: !4857, file: !1438, line: 26, type: !110)
!4861 = !DILocation(line: 0, scope: !4857, inlinedAt: !4862)
!4862 = distinct !DILocation(line: 312, column: 10, scope: !4841)
!4863 = !DILocation(line: 29, column: 10, scope: !4857, inlinedAt: !4862)
!4864 = !DILocation(line: 312, column: 3, scope: !4841)
!4865 = distinct !DISubprogram(name: "ximemdup", scope: !1032, file: !1032, line: 316, type: !4866, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4868)
!4866 = !DISubroutineType(types: !4867)
!4867 = !{!108, !1313, !1051}
!4868 = !{!4869, !4870}
!4869 = !DILocalVariable(name: "p", arg: 1, scope: !4865, file: !1032, line: 316, type: !1313)
!4870 = !DILocalVariable(name: "s", arg: 2, scope: !4865, file: !1032, line: 316, type: !1051)
!4871 = !DILocation(line: 0, scope: !4865)
!4872 = !DILocation(line: 0, scope: !4547, inlinedAt: !4873)
!4873 = distinct !DILocation(line: 318, column: 18, scope: !4865)
!4874 = !DILocation(line: 0, scope: !4554, inlinedAt: !4875)
!4875 = distinct !DILocation(line: 55, column: 25, scope: !4547, inlinedAt: !4873)
!4876 = !DILocation(line: 57, column: 26, scope: !4554, inlinedAt: !4875)
!4877 = !DILocation(line: 0, scope: !4514, inlinedAt: !4878)
!4878 = distinct !DILocation(line: 55, column: 10, scope: !4547, inlinedAt: !4873)
!4879 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4878)
!4880 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4878)
!4881 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4878)
!4882 = !DILocation(line: 0, scope: !4857, inlinedAt: !4883)
!4883 = distinct !DILocation(line: 318, column: 10, scope: !4865)
!4884 = !DILocation(line: 29, column: 10, scope: !4857, inlinedAt: !4883)
!4885 = !DILocation(line: 318, column: 3, scope: !4865)
!4886 = distinct !DISubprogram(name: "ximemdup0", scope: !1032, file: !1032, line: 325, type: !4887, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4889)
!4887 = !DISubroutineType(types: !4888)
!4888 = !{!107, !1313, !1051}
!4889 = !{!4890, !4891, !4892}
!4890 = !DILocalVariable(name: "p", arg: 1, scope: !4886, file: !1032, line: 325, type: !1313)
!4891 = !DILocalVariable(name: "s", arg: 2, scope: !4886, file: !1032, line: 325, type: !1051)
!4892 = !DILocalVariable(name: "result", scope: !4886, file: !1032, line: 327, type: !107)
!4893 = !DILocation(line: 0, scope: !4886)
!4894 = !DILocation(line: 327, column: 30, scope: !4886)
!4895 = !DILocation(line: 0, scope: !4547, inlinedAt: !4896)
!4896 = distinct !DILocation(line: 327, column: 18, scope: !4886)
!4897 = !DILocation(line: 0, scope: !4554, inlinedAt: !4898)
!4898 = distinct !DILocation(line: 55, column: 25, scope: !4547, inlinedAt: !4896)
!4899 = !DILocation(line: 57, column: 26, scope: !4554, inlinedAt: !4898)
!4900 = !DILocation(line: 0, scope: !4514, inlinedAt: !4901)
!4901 = distinct !DILocation(line: 55, column: 10, scope: !4547, inlinedAt: !4896)
!4902 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4901)
!4903 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4901)
!4904 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4901)
!4905 = !DILocation(line: 328, column: 3, scope: !4886)
!4906 = !DILocation(line: 328, column: 13, scope: !4886)
!4907 = !DILocation(line: 0, scope: !4857, inlinedAt: !4908)
!4908 = distinct !DILocation(line: 329, column: 10, scope: !4886)
!4909 = !DILocation(line: 29, column: 10, scope: !4857, inlinedAt: !4908)
!4910 = !DILocation(line: 329, column: 3, scope: !4886)
!4911 = distinct !DISubprogram(name: "xstrdup", scope: !1032, file: !1032, line: 335, type: !1291, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1031, retainedNodes: !4912)
!4912 = !{!4913}
!4913 = !DILocalVariable(name: "string", arg: 1, scope: !4911, file: !1032, line: 335, type: !113)
!4914 = !DILocation(line: 0, scope: !4911)
!4915 = !DILocation(line: 337, column: 27, scope: !4911)
!4916 = !DILocation(line: 337, column: 43, scope: !4911)
!4917 = !DILocation(line: 0, scope: !4841, inlinedAt: !4918)
!4918 = distinct !DILocation(line: 337, column: 10, scope: !4911)
!4919 = !DILocation(line: 0, scope: !4533, inlinedAt: !4920)
!4920 = distinct !DILocation(line: 312, column: 18, scope: !4841, inlinedAt: !4918)
!4921 = !DILocation(line: 49, column: 25, scope: !4533, inlinedAt: !4920)
!4922 = !DILocation(line: 0, scope: !4514, inlinedAt: !4923)
!4923 = distinct !DILocation(line: 49, column: 10, scope: !4533, inlinedAt: !4920)
!4924 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4923)
!4925 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4923)
!4926 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4923)
!4927 = !DILocation(line: 0, scope: !4857, inlinedAt: !4928)
!4928 = distinct !DILocation(line: 312, column: 10, scope: !4841, inlinedAt: !4918)
!4929 = !DILocation(line: 29, column: 10, scope: !4857, inlinedAt: !4928)
!4930 = !DILocation(line: 337, column: 3, scope: !4911)
!4931 = distinct !DISubprogram(name: "xalloc_die", scope: !981, file: !981, line: 32, type: !356, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1064, retainedNodes: !4932)
!4932 = !{!4933}
!4933 = !DILocalVariable(name: "__errstatus", scope: !4934, file: !981, line: 34, type: !4935)
!4934 = distinct !DILexicalBlock(scope: !4931, file: !981, line: 34, column: 3)
!4935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!4936 = !DILocation(line: 34, column: 3, scope: !4934)
!4937 = !DILocation(line: 0, scope: !4934)
!4938 = !DILocation(line: 40, column: 3, scope: !4931)
!4939 = distinct !DISubprogram(name: "rpl_fopen", scope: !1067, file: !1067, line: 46, type: !4940, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1066, retainedNodes: !4976)
!4940 = !DISubroutineType(types: !4941)
!4941 = !{!4942, !113, !113}
!4942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4943 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !4944)
!4944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !4945)
!4945 = !{!4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4959, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974, !4975}
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4944, file: !171, line: 51, baseType: !77, size: 32)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4944, file: !171, line: 54, baseType: !107, size: 64, offset: 64)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4944, file: !171, line: 55, baseType: !107, size: 64, offset: 128)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4944, file: !171, line: 56, baseType: !107, size: 64, offset: 192)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4944, file: !171, line: 57, baseType: !107, size: 64, offset: 256)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4944, file: !171, line: 58, baseType: !107, size: 64, offset: 320)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4944, file: !171, line: 59, baseType: !107, size: 64, offset: 384)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4944, file: !171, line: 60, baseType: !107, size: 64, offset: 448)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4944, file: !171, line: 61, baseType: !107, size: 64, offset: 512)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4944, file: !171, line: 64, baseType: !107, size: 64, offset: 576)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4944, file: !171, line: 65, baseType: !107, size: 64, offset: 640)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4944, file: !171, line: 66, baseType: !107, size: 64, offset: 704)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4944, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4944, file: !171, line: 70, baseType: !4960, size: 64, offset: 832)
!4960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4944, size: 64)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4944, file: !171, line: 72, baseType: !77, size: 32, offset: 896)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4944, file: !171, line: 73, baseType: !77, size: 32, offset: 928)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4944, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4944, file: !171, line: 77, baseType: !109, size: 16, offset: 1024)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4944, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4944, file: !171, line: 79, baseType: !49, size: 8, offset: 1048)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4944, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4944, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4944, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4944, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4944, file: !171, line: 93, baseType: !4960, size: 64, offset: 1344)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4944, file: !171, line: 94, baseType: !108, size: 64, offset: 1408)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4944, file: !171, line: 95, baseType: !110, size: 64, offset: 1472)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4944, file: !171, line: 96, baseType: !77, size: 32, offset: 1536)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4944, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!4976 = !{!4977, !4978, !4979, !4980, !4981, !4982, !4986, !4988, !4989, !4994, !4997, !4998}
!4977 = !DILocalVariable(name: "filename", arg: 1, scope: !4939, file: !1067, line: 46, type: !113)
!4978 = !DILocalVariable(name: "mode", arg: 2, scope: !4939, file: !1067, line: 46, type: !113)
!4979 = !DILocalVariable(name: "open_direction", scope: !4939, file: !1067, line: 54, type: !77)
!4980 = !DILocalVariable(name: "open_flags", scope: !4939, file: !1067, line: 55, type: !77)
!4981 = !DILocalVariable(name: "open_flags_gnu", scope: !4939, file: !1067, line: 57, type: !154)
!4982 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4939, file: !1067, line: 59, type: !4983)
!4983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4984)
!4984 = !{!4985}
!4985 = !DISubrange(count: 81)
!4986 = !DILocalVariable(name: "p", scope: !4987, file: !1067, line: 62, type: !113)
!4987 = distinct !DILexicalBlock(scope: !4939, file: !1067, line: 61, column: 3)
!4988 = !DILocalVariable(name: "q", scope: !4987, file: !1067, line: 64, type: !107)
!4989 = !DILocalVariable(name: "len", scope: !4990, file: !1067, line: 128, type: !110)
!4990 = distinct !DILexicalBlock(scope: !4991, file: !1067, line: 127, column: 9)
!4991 = distinct !DILexicalBlock(scope: !4992, file: !1067, line: 68, column: 7)
!4992 = distinct !DILexicalBlock(scope: !4993, file: !1067, line: 67, column: 5)
!4993 = distinct !DILexicalBlock(scope: !4987, file: !1067, line: 67, column: 5)
!4994 = !DILocalVariable(name: "fd", scope: !4995, file: !1067, line: 199, type: !77)
!4995 = distinct !DILexicalBlock(scope: !4996, file: !1067, line: 198, column: 5)
!4996 = distinct !DILexicalBlock(scope: !4939, file: !1067, line: 197, column: 7)
!4997 = !DILocalVariable(name: "fp", scope: !4995, file: !1067, line: 204, type: !4942)
!4998 = !DILocalVariable(name: "saved_errno", scope: !4999, file: !1067, line: 207, type: !77)
!4999 = distinct !DILexicalBlock(scope: !5000, file: !1067, line: 206, column: 9)
!5000 = distinct !DILexicalBlock(scope: !4995, file: !1067, line: 205, column: 11)
!5001 = distinct !DIAssignID()
!5002 = !DILocation(line: 0, scope: !4939)
!5003 = !DILocation(line: 59, column: 3, scope: !4939)
!5004 = !DILocation(line: 0, scope: !4987)
!5005 = !DILocation(line: 67, column: 5, scope: !4987)
!5006 = !DILocation(line: 54, column: 7, scope: !4939)
!5007 = !DILocation(line: 67, column: 12, scope: !4992)
!5008 = !DILocation(line: 67, column: 5, scope: !4993)
!5009 = !DILocation(line: 74, column: 19, scope: !5010)
!5010 = distinct !DILexicalBlock(scope: !5011, file: !1067, line: 74, column: 17)
!5011 = distinct !DILexicalBlock(scope: !4991, file: !1067, line: 70, column: 11)
!5012 = !DILocation(line: 74, column: 17, scope: !5011)
!5013 = !DILocation(line: 75, column: 17, scope: !5010)
!5014 = !DILocation(line: 75, column: 20, scope: !5010)
!5015 = !DILocation(line: 75, column: 15, scope: !5010)
!5016 = !DILocation(line: 80, column: 24, scope: !5011)
!5017 = !DILocation(line: 82, column: 19, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !5011, file: !1067, line: 82, column: 17)
!5019 = !DILocation(line: 82, column: 17, scope: !5011)
!5020 = !DILocation(line: 83, column: 17, scope: !5018)
!5021 = !DILocation(line: 83, column: 20, scope: !5018)
!5022 = !DILocation(line: 83, column: 15, scope: !5018)
!5023 = !DILocation(line: 88, column: 24, scope: !5011)
!5024 = !DILocation(line: 90, column: 19, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5011, file: !1067, line: 90, column: 17)
!5026 = !DILocation(line: 90, column: 17, scope: !5011)
!5027 = !DILocation(line: 91, column: 17, scope: !5025)
!5028 = !DILocation(line: 91, column: 20, scope: !5025)
!5029 = !DILocation(line: 91, column: 15, scope: !5025)
!5030 = !DILocation(line: 100, column: 19, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5011, file: !1067, line: 100, column: 17)
!5032 = !DILocation(line: 100, column: 17, scope: !5011)
!5033 = !DILocation(line: 101, column: 17, scope: !5031)
!5034 = !DILocation(line: 101, column: 20, scope: !5031)
!5035 = !DILocation(line: 101, column: 15, scope: !5031)
!5036 = !DILocation(line: 107, column: 19, scope: !5037)
!5037 = distinct !DILexicalBlock(scope: !5011, file: !1067, line: 107, column: 17)
!5038 = !DILocation(line: 107, column: 17, scope: !5011)
!5039 = !DILocation(line: 108, column: 17, scope: !5037)
!5040 = !DILocation(line: 108, column: 20, scope: !5037)
!5041 = !DILocation(line: 108, column: 15, scope: !5037)
!5042 = !DILocation(line: 113, column: 24, scope: !5011)
!5043 = !DILocation(line: 115, column: 13, scope: !5011)
!5044 = !DILocation(line: 117, column: 24, scope: !5011)
!5045 = !DILocation(line: 119, column: 13, scope: !5011)
!5046 = !DILocation(line: 128, column: 24, scope: !4990)
!5047 = !DILocation(line: 0, scope: !4990)
!5048 = !DILocation(line: 129, column: 48, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !4990, file: !1067, line: 129, column: 15)
!5050 = !DILocation(line: 129, column: 15, scope: !4990)
!5051 = !DILocalVariable(name: "__dest", arg: 1, scope: !5052, file: !1438, line: 26, type: !1694)
!5052 = distinct !DISubprogram(name: "memcpy", scope: !1438, file: !1438, line: 26, type: !1692, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1066, retainedNodes: !5053)
!5053 = !{!5051, !5054, !5055}
!5054 = !DILocalVariable(name: "__src", arg: 2, scope: !5052, file: !1438, line: 26, type: !1312)
!5055 = !DILocalVariable(name: "__len", arg: 3, scope: !5052, file: !1438, line: 26, type: !110)
!5056 = !DILocation(line: 0, scope: !5052, inlinedAt: !5057)
!5057 = distinct !DILocation(line: 131, column: 11, scope: !4990)
!5058 = !DILocation(line: 29, column: 10, scope: !5052, inlinedAt: !5057)
!5059 = !DILocation(line: 132, column: 13, scope: !4990)
!5060 = !DILocation(line: 135, column: 9, scope: !4991)
!5061 = !DILocation(line: 67, column: 25, scope: !4992)
!5062 = !DILocation(line: 67, column: 5, scope: !4992)
!5063 = distinct !{!5063, !5008, !5064, !1215}
!5064 = !DILocation(line: 136, column: 7, scope: !4993)
!5065 = !DILocation(line: 138, column: 8, scope: !4987)
!5066 = !DILocation(line: 197, column: 7, scope: !4939)
!5067 = !DILocation(line: 199, column: 47, scope: !4995)
!5068 = !DILocation(line: 199, column: 16, scope: !4995)
!5069 = !DILocation(line: 0, scope: !4995)
!5070 = !DILocation(line: 201, column: 14, scope: !5071)
!5071 = distinct !DILexicalBlock(scope: !4995, file: !1067, line: 201, column: 11)
!5072 = !DILocation(line: 201, column: 11, scope: !4995)
!5073 = !DILocation(line: 204, column: 18, scope: !4995)
!5074 = !DILocation(line: 205, column: 14, scope: !5000)
!5075 = !DILocation(line: 205, column: 11, scope: !4995)
!5076 = !DILocation(line: 207, column: 29, scope: !4999)
!5077 = !DILocation(line: 0, scope: !4999)
!5078 = !DILocation(line: 208, column: 11, scope: !4999)
!5079 = !DILocation(line: 209, column: 17, scope: !4999)
!5080 = !DILocation(line: 210, column: 9, scope: !4999)
!5081 = !DILocalVariable(name: "filename", arg: 1, scope: !5082, file: !1067, line: 30, type: !113)
!5082 = distinct !DISubprogram(name: "orig_fopen", scope: !1067, file: !1067, line: 30, type: !4940, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1066, retainedNodes: !5083)
!5083 = !{!5081, !5084}
!5084 = !DILocalVariable(name: "mode", arg: 2, scope: !5082, file: !1067, line: 30, type: !113)
!5085 = !DILocation(line: 0, scope: !5082, inlinedAt: !5086)
!5086 = distinct !DILocation(line: 219, column: 10, scope: !4939)
!5087 = !DILocation(line: 32, column: 10, scope: !5082, inlinedAt: !5086)
!5088 = !DILocation(line: 219, column: 3, scope: !4939)
!5089 = !DILocation(line: 220, column: 1, scope: !4939)
!5090 = !DISubprogram(name: "open", scope: !2553, file: !2553, line: 181, type: !5091, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5091 = !DISubroutineType(types: !5092)
!5092 = !{!77, !113, !77, null}
!5093 = !DISubprogram(name: "fdopen", scope: !715, file: !715, line: 293, type: !5094, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5094 = !DISubroutineType(types: !5095)
!5095 = !{!4942, !77, !113}
!5096 = !DISubprogram(name: "close", scope: !2410, file: !2410, line: 358, type: !2436, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5097 = !DISubprogram(name: "fopen", scope: !715, file: !715, line: 258, type: !5098, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5098 = !DISubroutineType(types: !5099)
!5099 = !{!4942, !1159, !1159}
!5100 = distinct !DISubprogram(name: "close_stream", scope: !1069, file: !1069, line: 55, type: !5101, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1068, retainedNodes: !5137)
!5101 = !DISubroutineType(types: !5102)
!5102 = !{!77, !5103}
!5103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5104 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !5105)
!5105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !5106)
!5106 = !{!5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5120, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135, !5136}
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5105, file: !171, line: 51, baseType: !77, size: 32)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5105, file: !171, line: 54, baseType: !107, size: 64, offset: 64)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5105, file: !171, line: 55, baseType: !107, size: 64, offset: 128)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5105, file: !171, line: 56, baseType: !107, size: 64, offset: 192)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5105, file: !171, line: 57, baseType: !107, size: 64, offset: 256)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5105, file: !171, line: 58, baseType: !107, size: 64, offset: 320)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5105, file: !171, line: 59, baseType: !107, size: 64, offset: 384)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5105, file: !171, line: 60, baseType: !107, size: 64, offset: 448)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5105, file: !171, line: 61, baseType: !107, size: 64, offset: 512)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5105, file: !171, line: 64, baseType: !107, size: 64, offset: 576)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5105, file: !171, line: 65, baseType: !107, size: 64, offset: 640)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5105, file: !171, line: 66, baseType: !107, size: 64, offset: 704)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5105, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5105, file: !171, line: 70, baseType: !5121, size: 64, offset: 832)
!5121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5105, size: 64)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5105, file: !171, line: 72, baseType: !77, size: 32, offset: 896)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5105, file: !171, line: 73, baseType: !77, size: 32, offset: 928)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5105, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5105, file: !171, line: 77, baseType: !109, size: 16, offset: 1024)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5105, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5105, file: !171, line: 79, baseType: !49, size: 8, offset: 1048)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5105, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5105, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5105, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5105, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5105, file: !171, line: 93, baseType: !5121, size: 64, offset: 1344)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5105, file: !171, line: 94, baseType: !108, size: 64, offset: 1408)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5105, file: !171, line: 95, baseType: !110, size: 64, offset: 1472)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5105, file: !171, line: 96, baseType: !77, size: 32, offset: 1536)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5105, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!5137 = !{!5138, !5139, !5141, !5142}
!5138 = !DILocalVariable(name: "stream", arg: 1, scope: !5100, file: !1069, line: 55, type: !5103)
!5139 = !DILocalVariable(name: "some_pending", scope: !5100, file: !1069, line: 57, type: !5140)
!5140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!5141 = !DILocalVariable(name: "prev_fail", scope: !5100, file: !1069, line: 58, type: !5140)
!5142 = !DILocalVariable(name: "fclose_fail", scope: !5100, file: !1069, line: 59, type: !5140)
!5143 = !DILocation(line: 0, scope: !5100)
!5144 = !DILocation(line: 57, column: 30, scope: !5100)
!5145 = !DILocalVariable(name: "__stream", arg: 1, scope: !5146, file: !1420, line: 135, type: !5103)
!5146 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1420, file: !1420, line: 135, type: !5101, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1068, retainedNodes: !5147)
!5147 = !{!5145}
!5148 = !DILocation(line: 0, scope: !5146, inlinedAt: !5149)
!5149 = distinct !DILocation(line: 58, column: 27, scope: !5100)
!5150 = !DILocation(line: 137, column: 10, scope: !5146, inlinedAt: !5149)
!5151 = !DILocation(line: 58, column: 43, scope: !5100)
!5152 = !DILocation(line: 59, column: 29, scope: !5100)
!5153 = !DILocation(line: 59, column: 45, scope: !5100)
!5154 = !DILocation(line: 69, column: 17, scope: !5155)
!5155 = distinct !DILexicalBlock(scope: !5100, file: !1069, line: 69, column: 7)
!5156 = !DILocation(line: 57, column: 50, scope: !5100)
!5157 = !DILocation(line: 69, column: 33, scope: !5155)
!5158 = !DILocation(line: 69, column: 53, scope: !5155)
!5159 = !DILocation(line: 69, column: 59, scope: !5155)
!5160 = !DILocation(line: 69, column: 7, scope: !5100)
!5161 = !DILocation(line: 71, column: 11, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5155, file: !1069, line: 70, column: 5)
!5163 = !DILocation(line: 72, column: 9, scope: !5164)
!5164 = distinct !DILexicalBlock(scope: !5162, file: !1069, line: 71, column: 11)
!5165 = !DILocation(line: 72, column: 15, scope: !5164)
!5166 = !DILocation(line: 77, column: 1, scope: !5100)
!5167 = !DISubprogram(name: "__fpending", scope: !2756, file: !2756, line: 75, type: !5168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5168 = !DISubroutineType(types: !5169)
!5169 = !{!110, !5103}
!5170 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !988, file: !988, line: 100, type: !5171, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !5174)
!5171 = !DISubroutineType(types: !5172)
!5172 = !{!110, !1762, !113, !110, !5173}
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!5174 = !{!5175, !5176, !5177, !5178, !5179}
!5175 = !DILocalVariable(name: "pwc", arg: 1, scope: !5170, file: !988, line: 100, type: !1762)
!5176 = !DILocalVariable(name: "s", arg: 2, scope: !5170, file: !988, line: 100, type: !113)
!5177 = !DILocalVariable(name: "n", arg: 3, scope: !5170, file: !988, line: 100, type: !110)
!5178 = !DILocalVariable(name: "ps", arg: 4, scope: !5170, file: !988, line: 100, type: !5173)
!5179 = !DILocalVariable(name: "ret", scope: !5170, file: !988, line: 130, type: !110)
!5180 = !DILocation(line: 0, scope: !5170)
!5181 = !DILocation(line: 105, column: 9, scope: !5182)
!5182 = distinct !DILexicalBlock(scope: !5170, file: !988, line: 105, column: 7)
!5183 = !DILocation(line: 105, column: 7, scope: !5170)
!5184 = !DILocation(line: 117, column: 10, scope: !5185)
!5185 = distinct !DILexicalBlock(scope: !5170, file: !988, line: 117, column: 7)
!5186 = !DILocation(line: 117, column: 7, scope: !5170)
!5187 = !DILocation(line: 130, column: 16, scope: !5170)
!5188 = !DILocation(line: 135, column: 11, scope: !5189)
!5189 = distinct !DILexicalBlock(scope: !5170, file: !988, line: 135, column: 7)
!5190 = !DILocation(line: 135, column: 25, scope: !5189)
!5191 = !DILocation(line: 135, column: 30, scope: !5189)
!5192 = !DILocation(line: 135, column: 7, scope: !5170)
!5193 = !DILocalVariable(name: "ps", arg: 1, scope: !5194, file: !2996, line: 1135, type: !5173)
!5194 = distinct !DISubprogram(name: "mbszero", scope: !2996, file: !2996, line: 1135, type: !5195, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !5197)
!5195 = !DISubroutineType(types: !5196)
!5196 = !{null, !5173}
!5197 = !{!5193}
!5198 = !DILocation(line: 0, scope: !5194, inlinedAt: !5199)
!5199 = distinct !DILocation(line: 137, column: 5, scope: !5189)
!5200 = !DILocalVariable(name: "__dest", arg: 1, scope: !5201, file: !1438, line: 57, type: !108)
!5201 = distinct !DISubprogram(name: "memset", scope: !1438, file: !1438, line: 57, type: !3005, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !991, retainedNodes: !5202)
!5202 = !{!5200, !5203, !5204}
!5203 = !DILocalVariable(name: "__ch", arg: 2, scope: !5201, file: !1438, line: 57, type: !77)
!5204 = !DILocalVariable(name: "__len", arg: 3, scope: !5201, file: !1438, line: 57, type: !110)
!5205 = !DILocation(line: 0, scope: !5201, inlinedAt: !5206)
!5206 = distinct !DILocation(line: 1137, column: 3, scope: !5194, inlinedAt: !5199)
!5207 = !DILocation(line: 59, column: 10, scope: !5201, inlinedAt: !5206)
!5208 = !DILocation(line: 137, column: 5, scope: !5189)
!5209 = !DILocation(line: 138, column: 11, scope: !5210)
!5210 = distinct !DILexicalBlock(scope: !5170, file: !988, line: 138, column: 7)
!5211 = !DILocation(line: 138, column: 7, scope: !5170)
!5212 = !DILocation(line: 139, column: 5, scope: !5210)
!5213 = !DILocation(line: 143, column: 26, scope: !5214)
!5214 = distinct !DILexicalBlock(scope: !5170, file: !988, line: 143, column: 7)
!5215 = !DILocation(line: 143, column: 41, scope: !5214)
!5216 = !DILocation(line: 143, column: 7, scope: !5170)
!5217 = !DILocation(line: 145, column: 15, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5219, file: !988, line: 145, column: 11)
!5219 = distinct !DILexicalBlock(scope: !5214, file: !988, line: 144, column: 5)
!5220 = !DILocation(line: 145, column: 11, scope: !5219)
!5221 = !DILocation(line: 146, column: 32, scope: !5218)
!5222 = !DILocation(line: 146, column: 16, scope: !5218)
!5223 = !DILocation(line: 146, column: 14, scope: !5218)
!5224 = !DILocation(line: 146, column: 9, scope: !5218)
!5225 = !DILocation(line: 286, column: 1, scope: !5170)
!5226 = !DISubprogram(name: "mbsinit", scope: !1768, file: !1768, line: 293, type: !5227, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5227 = !DISubroutineType(types: !5228)
!5228 = !{!77, !5229}
!5229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5230, size: 64)
!5230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !994)
!5231 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1071, file: !1071, line: 27, type: !4498, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1070, retainedNodes: !5232)
!5232 = !{!5233, !5234, !5235, !5236}
!5233 = !DILocalVariable(name: "ptr", arg: 1, scope: !5231, file: !1071, line: 27, type: !108)
!5234 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5231, file: !1071, line: 27, type: !110)
!5235 = !DILocalVariable(name: "size", arg: 3, scope: !5231, file: !1071, line: 27, type: !110)
!5236 = !DILocalVariable(name: "nbytes", scope: !5231, file: !1071, line: 29, type: !110)
!5237 = !DILocation(line: 0, scope: !5231)
!5238 = !DILocation(line: 30, column: 7, scope: !5239)
!5239 = distinct !DILexicalBlock(scope: !5231, file: !1071, line: 30, column: 7)
!5240 = !DILocation(line: 30, column: 7, scope: !5231)
!5241 = !DILocation(line: 32, column: 7, scope: !5242)
!5242 = distinct !DILexicalBlock(scope: !5239, file: !1071, line: 31, column: 5)
!5243 = !DILocation(line: 32, column: 13, scope: !5242)
!5244 = !DILocation(line: 33, column: 7, scope: !5242)
!5245 = !DILocalVariable(name: "ptr", arg: 1, scope: !5246, file: !4590, line: 2057, type: !108)
!5246 = distinct !DISubprogram(name: "rpl_realloc", scope: !4590, file: !4590, line: 2057, type: !4582, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1070, retainedNodes: !5247)
!5247 = !{!5245, !5248}
!5248 = !DILocalVariable(name: "size", arg: 2, scope: !5246, file: !4590, line: 2057, type: !110)
!5249 = !DILocation(line: 0, scope: !5246, inlinedAt: !5250)
!5250 = distinct !DILocation(line: 37, column: 10, scope: !5231)
!5251 = !DILocation(line: 2059, column: 24, scope: !5246, inlinedAt: !5250)
!5252 = !DILocation(line: 2059, column: 10, scope: !5246, inlinedAt: !5250)
!5253 = !DILocation(line: 37, column: 3, scope: !5231)
!5254 = !DILocation(line: 38, column: 1, scope: !5231)
!5255 = distinct !DISubprogram(name: "hard_locale", scope: !1006, file: !1006, line: 28, type: !1943, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1072, retainedNodes: !5256)
!5256 = !{!5257, !5258}
!5257 = !DILocalVariable(name: "category", arg: 1, scope: !5255, file: !1006, line: 28, type: !77)
!5258 = !DILocalVariable(name: "locale", scope: !5255, file: !1006, line: 30, type: !5259)
!5259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5260)
!5260 = !{!5261}
!5261 = !DISubrange(count: 257)
!5262 = distinct !DIAssignID()
!5263 = !DILocation(line: 0, scope: !5255)
!5264 = !DILocation(line: 30, column: 3, scope: !5255)
!5265 = !DILocation(line: 32, column: 7, scope: !5266)
!5266 = distinct !DILexicalBlock(scope: !5255, file: !1006, line: 32, column: 7)
!5267 = !DILocation(line: 32, column: 7, scope: !5255)
!5268 = !DILocalVariable(name: "__s1", arg: 1, scope: !5269, file: !1181, line: 1359, type: !113)
!5269 = distinct !DISubprogram(name: "streq", scope: !1181, file: !1181, line: 1359, type: !1182, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1072, retainedNodes: !5270)
!5270 = !{!5268, !5271}
!5271 = !DILocalVariable(name: "__s2", arg: 2, scope: !5269, file: !1181, line: 1359, type: !113)
!5272 = !DILocation(line: 0, scope: !5269, inlinedAt: !5273)
!5273 = distinct !DILocation(line: 35, column: 9, scope: !5274)
!5274 = distinct !DILexicalBlock(scope: !5255, file: !1006, line: 35, column: 7)
!5275 = !DILocation(line: 1361, column: 11, scope: !5269, inlinedAt: !5273)
!5276 = !DILocation(line: 1361, column: 10, scope: !5269, inlinedAt: !5273)
!5277 = !DILocation(line: 35, column: 29, scope: !5274)
!5278 = !DILocation(line: 0, scope: !5269, inlinedAt: !5279)
!5279 = distinct !DILocation(line: 35, column: 32, scope: !5274)
!5280 = !DILocation(line: 1361, column: 11, scope: !5269, inlinedAt: !5279)
!5281 = !DILocation(line: 1361, column: 10, scope: !5269, inlinedAt: !5279)
!5282 = !DILocation(line: 35, column: 7, scope: !5255)
!5283 = !DILocation(line: 46, column: 3, scope: !5255)
!5284 = !DILocation(line: 47, column: 1, scope: !5255)
!5285 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1075, file: !1075, line: 154, type: !5286, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !5288)
!5286 = !DISubroutineType(types: !5287)
!5287 = !{!77, !77, !107, !110}
!5288 = !{!5289, !5290, !5291}
!5289 = !DILocalVariable(name: "category", arg: 1, scope: !5285, file: !1075, line: 154, type: !77)
!5290 = !DILocalVariable(name: "buf", arg: 2, scope: !5285, file: !1075, line: 154, type: !107)
!5291 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5285, file: !1075, line: 154, type: !110)
!5292 = !DILocation(line: 0, scope: !5285)
!5293 = !DILocation(line: 159, column: 10, scope: !5285)
!5294 = !DILocation(line: 159, column: 3, scope: !5285)
!5295 = distinct !DISubprogram(name: "setlocale_null", scope: !1075, file: !1075, line: 186, type: !5296, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1074, retainedNodes: !5298)
!5296 = !DISubroutineType(types: !5297)
!5297 = !{!113, !77}
!5298 = !{!5299}
!5299 = !DILocalVariable(name: "category", arg: 1, scope: !5295, file: !1075, line: 186, type: !77)
!5300 = !DILocation(line: 0, scope: !5295)
!5301 = !DILocation(line: 189, column: 10, scope: !5295)
!5302 = !DILocation(line: 189, column: 3, scope: !5295)
!5303 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1077, file: !1077, line: 35, type: !5296, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !5304)
!5304 = !{!5305, !5306}
!5305 = !DILocalVariable(name: "category", arg: 1, scope: !5303, file: !1077, line: 35, type: !77)
!5306 = !DILocalVariable(name: "result", scope: !5303, file: !1077, line: 37, type: !113)
!5307 = !DILocation(line: 0, scope: !5303)
!5308 = !DILocation(line: 37, column: 24, scope: !5303)
!5309 = !DILocation(line: 62, column: 3, scope: !5303)
!5310 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1077, file: !1077, line: 66, type: !5286, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !5311)
!5311 = !{!5312, !5313, !5314, !5315, !5316}
!5312 = !DILocalVariable(name: "category", arg: 1, scope: !5310, file: !1077, line: 66, type: !77)
!5313 = !DILocalVariable(name: "buf", arg: 2, scope: !5310, file: !1077, line: 66, type: !107)
!5314 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5310, file: !1077, line: 66, type: !110)
!5315 = !DILocalVariable(name: "result", scope: !5310, file: !1077, line: 111, type: !113)
!5316 = !DILocalVariable(name: "length", scope: !5317, file: !1077, line: 125, type: !110)
!5317 = distinct !DILexicalBlock(scope: !5318, file: !1077, line: 124, column: 5)
!5318 = distinct !DILexicalBlock(scope: !5310, file: !1077, line: 113, column: 7)
!5319 = !DILocation(line: 0, scope: !5310)
!5320 = !DILocation(line: 0, scope: !5303, inlinedAt: !5321)
!5321 = distinct !DILocation(line: 111, column: 24, scope: !5310)
!5322 = !DILocation(line: 37, column: 24, scope: !5303, inlinedAt: !5321)
!5323 = !DILocation(line: 113, column: 14, scope: !5318)
!5324 = !DILocation(line: 113, column: 7, scope: !5310)
!5325 = !DILocation(line: 116, column: 19, scope: !5326)
!5326 = distinct !DILexicalBlock(scope: !5327, file: !1077, line: 116, column: 11)
!5327 = distinct !DILexicalBlock(scope: !5318, file: !1077, line: 114, column: 5)
!5328 = !DILocation(line: 116, column: 11, scope: !5327)
!5329 = !DILocation(line: 120, column: 16, scope: !5326)
!5330 = !DILocation(line: 120, column: 9, scope: !5326)
!5331 = !DILocation(line: 125, column: 23, scope: !5317)
!5332 = !DILocation(line: 0, scope: !5317)
!5333 = !DILocation(line: 126, column: 18, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5317, file: !1077, line: 126, column: 11)
!5335 = !DILocation(line: 126, column: 11, scope: !5317)
!5336 = !DILocation(line: 128, column: 39, scope: !5337)
!5337 = distinct !DILexicalBlock(scope: !5334, file: !1077, line: 127, column: 9)
!5338 = !DILocalVariable(name: "__dest", arg: 1, scope: !5339, file: !1438, line: 26, type: !1694)
!5339 = distinct !DISubprogram(name: "memcpy", scope: !1438, file: !1438, line: 26, type: !1692, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1076, retainedNodes: !5340)
!5340 = !{!5338, !5341, !5342}
!5341 = !DILocalVariable(name: "__src", arg: 2, scope: !5339, file: !1438, line: 26, type: !1312)
!5342 = !DILocalVariable(name: "__len", arg: 3, scope: !5339, file: !1438, line: 26, type: !110)
!5343 = !DILocation(line: 0, scope: !5339, inlinedAt: !5344)
!5344 = distinct !DILocation(line: 128, column: 11, scope: !5337)
!5345 = !DILocation(line: 29, column: 10, scope: !5339, inlinedAt: !5344)
!5346 = !DILocation(line: 129, column: 11, scope: !5337)
!5347 = !DILocation(line: 133, column: 23, scope: !5348)
!5348 = distinct !DILexicalBlock(scope: !5349, file: !1077, line: 133, column: 15)
!5349 = distinct !DILexicalBlock(scope: !5334, file: !1077, line: 132, column: 9)
!5350 = !DILocation(line: 133, column: 15, scope: !5349)
!5351 = !DILocation(line: 138, column: 44, scope: !5352)
!5352 = distinct !DILexicalBlock(scope: !5348, file: !1077, line: 134, column: 13)
!5353 = !DILocation(line: 0, scope: !5339, inlinedAt: !5354)
!5354 = distinct !DILocation(line: 138, column: 15, scope: !5352)
!5355 = !DILocation(line: 29, column: 10, scope: !5339, inlinedAt: !5354)
!5356 = !DILocation(line: 139, column: 15, scope: !5352)
!5357 = !DILocation(line: 139, column: 32, scope: !5352)
!5358 = !DILocation(line: 140, column: 13, scope: !5352)
!5359 = !DILocation(line: 0, scope: !5318)
!5360 = !DILocation(line: 145, column: 1, scope: !5310)
