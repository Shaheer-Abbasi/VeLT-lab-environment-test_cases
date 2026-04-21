; ModuleID = 'src/unexpand.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.option = type { ptr, i32, ptr, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], ptr, ptr }
%struct.slotvec = type { i64, ptr }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._IO_FILE = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64, i16, i8, [1 x i8], ptr, i64, ptr, ptr, ptr, ptr, i64, i32, [20 x i8] }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

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
@longopts = internal constant [6 x %struct.option] [%struct.option { ptr @.str.53, i32 1, ptr null, i32 116 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 97 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 128 }, %struct.option { ptr @.str.56, i32 0, ptr null, i32 -130 }, %struct.option { ptr @.str.57, i32 0, ptr null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !67
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
@unexpand.line_in = internal global [262144 x i8] zeroinitializer, align 16, !dbg !353
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
@stdin_argv = internal global [2 x ptr] [ptr @.str.6.37, ptr null], align 16, !dbg !589
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !699
@.str.69 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !691
@.str.1.70 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !693
@.str.2.71 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !695
@.str.3.72 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !697
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !701
@stderr = external local_unnamed_addr global ptr, align 8
@.str.73 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !707
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !738
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !709
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !728
@.str.1.79 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !730
@.str.2.81 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !732
@.str.3.80 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !734
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !736
@.str.4.74 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !740
@.str.5.75 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !742
@.str.6.76 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !744
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !747
@.str.100 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !753
@.str.1.101 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !755
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !757
@.str.104 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !784
@.str.1.105 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !787
@.str.2.106 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !789
@.str.3.107 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !794
@.str.4.108 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !796
@.str.5.109 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !798
@.str.6.110 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !800
@.str.7.111 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !802
@.str.8.112 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !804
@.str.9.113 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !806
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.104, ptr @.str.1.105, ptr @.str.2.106, ptr @.str.3.107, ptr @.str.4.108, ptr @.str.5.109, ptr @.str.6.110, ptr @.str.7.111, ptr @.str.8.112, ptr @.str.9.113, ptr null], align 16, !dbg !808
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !821
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !835
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !873
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !880
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !837
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !882
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !825
@.str.10.116 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !842
@.str.11.114 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !844
@.str.12.117 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !846
@.str.13.115 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !848
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !850
@.str.124 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !886
@.str.1.125 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !889
@.str.2.126 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !891
@.str.3.127 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !893
@.str.4.128 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !895
@.str.5.129 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !897
@.str.6.130 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !902
@.str.7.131 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !907
@.str.8.132 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !909
@.str.9.133 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !911
@.str.10.134 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !913
@.str.11.135 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !918
@.str.12.136 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !923
@.str.13.137 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !925
@.str.14.138 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !930
@.str.15.139 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !935
@.str.16.140 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !940
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.145 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !945
@.str.18.146 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !947
@.str.19.147 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !949
@.str.20.148 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !951
@.str.21.149 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !953
@.str.22.150 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !955
@.str.23.151 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !957
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !962
@exit_failure = dso_local global i32 1, align 4, !dbg !968
@.str.168 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !974
@.str.1.166 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !977
@.str.2.167 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !979
@.str.175 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !981
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !984
@.str.1.180 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !999

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1081 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1085, metadata !DIExpression()), !dbg !1086
  %2 = icmp eq i32 %0, 0, !dbg !1087
  br i1 %2, label %8, label %3, !dbg !1089

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1090, !tbaa !1092
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !1090
  %6 = load ptr, ptr @program_name, align 8, !dbg !1090, !tbaa !1092
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !1090
  br label %40, !dbg !1090

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !1096
  %10 = load ptr, ptr @program_name, align 8, !dbg !1096, !tbaa !1092
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !1096
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !1098
  %13 = load ptr, ptr @stdout, align 8, !dbg !1098, !tbaa !1092
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1098
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #38, !dbg !1099
  %16 = load ptr, ptr @stdout, align 8, !dbg !1099, !tbaa !1092
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1099
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #38, !dbg !1102
  %19 = load ptr, ptr @stdout, align 8, !dbg !1102, !tbaa !1092
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !1102
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !1105
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1105
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !1106
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1106
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !1107
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1107
  tail call void @emit_tab_list_info(ptr noundef nonnull @.str.3) #38, !dbg !1108
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !1109
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1109
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #38, !dbg !1110
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1110
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1111, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata !1130, metadata !1124, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata ptr poison, metadata !1123, metadata !DIExpression()), !dbg !1128
  tail call void @emit_bug_reporting_address() #38, !dbg !1131
  %26 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !1132
  call void @llvm.dbg.value(metadata ptr %26, metadata !1126, metadata !DIExpression()), !dbg !1128
  %27 = icmp eq ptr %26, null, !dbg !1133
  br i1 %27, label %35, label %28, !dbg !1135

28:                                               ; preds = %8
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(4) @.str.48, i64 noundef 3) #39, !dbg !1136
  %30 = icmp eq i32 %29, 0, !dbg !1136
  br i1 %30, label %35, label %31, !dbg !1137

31:                                               ; preds = %28
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #38, !dbg !1138
  %33 = load ptr, ptr @stdout, align 8, !dbg !1138, !tbaa !1092
  %34 = tail call i32 @fputs_unlocked(ptr noundef %32, ptr noundef %33), !dbg !1138
  br label %35, !dbg !1140

35:                                               ; preds = %8, %28, %31
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1123, metadata !DIExpression()), !dbg !1128
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1127, metadata !DIExpression()), !dbg !1128
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #38, !dbg !1141
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3) #38, !dbg !1141
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #38, !dbg !1142
  %39 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52) #38, !dbg !1142
  br label %40

40:                                               ; preds = %35, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !1143
  unreachable, !dbg !1143
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1144 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1148 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1154 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1157 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !144 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !148, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !149, metadata !DIExpression()), !dbg !1161
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1162, !tbaa !1163
  %3 = icmp eq i32 %2, -1, !dbg !1165
  br i1 %3, label %4, label %16, !dbg !1166

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.18) #38, !dbg !1167
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !150, metadata !DIExpression()), !dbg !1168
  %6 = icmp eq ptr %5, null, !dbg !1169
  br i1 %6, label %14, label %7, !dbg !1170

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1171, !tbaa !1172
  %9 = icmp eq i8 %8, 0, !dbg !1171
  br i1 %9, label %14, label %10, !dbg !1173

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1174, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !1180, metadata !DIExpression()), !dbg !1181
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.19) #39, !dbg !1183
  %12 = icmp eq i32 %11, 0, !dbg !1184
  %13 = zext i1 %12 to i32, !dbg !1173
  br label %14, !dbg !1173

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1185, !tbaa !1163
  br label %16, !dbg !1186

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1187
  %18 = icmp eq i32 %17, 0, !dbg !1187
  br i1 %18, label %22, label %19, !dbg !1189

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1190, !tbaa !1092
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1190
  br label %124, !dbg !1192

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !153, metadata !DIExpression()), !dbg !1161
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.20) #39, !dbg !1193
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1194
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !155, metadata !DIExpression()), !dbg !1161
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !1195
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !156, metadata !DIExpression()), !dbg !1161
  %26 = icmp eq ptr %25, null, !dbg !1196
  br i1 %26, label %54, label %27, !dbg !1197

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1198
  br i1 %28, label %54, label %29, !dbg !1199

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !157, metadata !DIExpression()), !dbg !1200
  tail call void @llvm.dbg.value(metadata i64 0, metadata !161, metadata !DIExpression()), !dbg !1200
  %30 = icmp ult ptr %24, %25, !dbg !1201
  br i1 %30, label %31, label %54, !dbg !1202

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !1161
  %33 = load ptr, ptr %32, align 8, !tbaa !1092
  br label %34, !dbg !1202

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !157, metadata !DIExpression()), !dbg !1200
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !161, metadata !DIExpression()), !dbg !1200
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1203
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !157, metadata !DIExpression()), !dbg !1200
  %38 = load i8, ptr %35, align 1, !dbg !1203, !tbaa !1172
  %39 = sext i8 %38 to i64, !dbg !1203
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1203
  %41 = load i16, ptr %40, align 2, !dbg !1203, !tbaa !1204
  %42 = freeze i16 %41, !dbg !1206
  %43 = lshr i16 %42, 13, !dbg !1206
  %44 = and i16 %43, 1, !dbg !1206
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1207
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !161, metadata !DIExpression()), !dbg !1200
  %47 = icmp ult ptr %37, %25, !dbg !1201
  %48 = icmp ult i64 %46, 2, !dbg !1208
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1208
  br i1 %49, label %34, label %50, !dbg !1202, !llvm.loop !1209

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1211
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1213
  %53 = zext i1 %51 to i8, !dbg !1213
  br label %54, !dbg !1213

54:                                               ; preds = %29, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1161
  %56 = phi i8 [ 1, %27 ], [ 0, %22 ], [ 1, %29 ], [ %53, %50 ], !dbg !1161
  tail call void @llvm.dbg.value(metadata i8 %56, metadata !153, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !156, metadata !DIExpression()), !dbg !1161
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.21) #39, !dbg !1214
  tail call void @llvm.dbg.value(metadata i64 %57, metadata !162, metadata !DIExpression()), !dbg !1161
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1215
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !163, metadata !DIExpression()), !dbg !1161
  br label %59, !dbg !1216

59:                                               ; preds = %92, %54
  %60 = phi ptr [ %58, %54 ], [ %93, %92 ], !dbg !1161
  %61 = phi i8 [ %56, %54 ], [ %69, %92 ], !dbg !1161
  tail call void @llvm.dbg.value(metadata i8 %61, metadata !153, metadata !DIExpression()), !dbg !1161
  tail call void @llvm.dbg.value(metadata ptr %60, metadata !163, metadata !DIExpression()), !dbg !1161
  %62 = load i8, ptr %60, align 1, !dbg !1217, !tbaa !1172
  switch i8 %62, label %68 [
    i8 0, label %94
    i8 10, label %94
    i8 45, label %63
  ], !dbg !1218

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1219
  %65 = load i8, ptr %64, align 1, !dbg !1222, !tbaa !1172
  %66 = icmp eq i8 %65, 45, !dbg !1223
  %67 = select i1 %66, i8 0, i8 %61, !dbg !1224
  br label %68, !dbg !1224

68:                                               ; preds = %63, %59
  %69 = phi i8 [ %61, %59 ], [ %67, %63 ], !dbg !1161
  tail call void @llvm.dbg.value(metadata i8 %69, metadata !153, metadata !DIExpression()), !dbg !1161
  %70 = tail call ptr @__ctype_b_loc() #41, !dbg !1225
  %71 = load ptr, ptr %70, align 8, !dbg !1225, !tbaa !1092
  %72 = sext i8 %62 to i64, !dbg !1225
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1225
  %74 = load i16, ptr %73, align 2, !dbg !1225, !tbaa !1204
  %75 = and i16 %74, 8192, !dbg !1225
  %76 = icmp eq i16 %75, 0, !dbg !1225
  br i1 %76, label %92, label %77, !dbg !1227

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1228
  br i1 %78, label %94, label %79, !dbg !1231

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1232
  %81 = load i8, ptr %80, align 1, !dbg !1232, !tbaa !1172
  %82 = sext i8 %81 to i64, !dbg !1232
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1232
  %84 = load i16, ptr %83, align 2, !dbg !1232, !tbaa !1204
  %85 = and i16 %84, 8192, !dbg !1232
  %86 = icmp eq i16 %85, 0, !dbg !1232
  br i1 %86, label %87, label %94, !dbg !1233

87:                                               ; preds = %79
  %88 = and i8 %69, 1, !dbg !1234
  %89 = icmp ne i8 %88, 0, !dbg !1234
  %90 = icmp eq i8 %81, 45
  %91 = or i1 %89, %90, !dbg !1236
  br i1 %91, label %92, label %94, !dbg !1236

92:                                               ; preds = %87, %68
  %93 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1237
  tail call void @llvm.dbg.value(metadata ptr %93, metadata !163, metadata !DIExpression()), !dbg !1161
  br label %59, !dbg !1216, !llvm.loop !1238

94:                                               ; preds = %87, %59, %59, %77, %79
  %95 = ptrtoint ptr %24 to i64, !dbg !1240
  %96 = load ptr, ptr @stdout, align 8, !dbg !1240, !tbaa !1092
  %97 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %96), !dbg !1240
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1174, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata !1130, metadata !1180, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1174, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata !1130, metadata !1180, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1174, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata !1130, metadata !1180, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1174, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata !1130, metadata !1180, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1174, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata !1130, metadata !1180, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1174, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata !1130, metadata !1180, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1174, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata !1130, metadata !1180, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1174, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata !1130, metadata !1180, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1174, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata !1130, metadata !1180, metadata !DIExpression()), !dbg !1257
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1174, metadata !DIExpression()), !dbg !1259
  call void @llvm.dbg.value(metadata !1130, metadata !1180, metadata !DIExpression()), !dbg !1259
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !220, metadata !DIExpression()), !dbg !1161
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.35, i64 noundef 6) #39, !dbg !1261
  %99 = icmp eq i32 %98, 0, !dbg !1261
  br i1 %99, label %103, label %100, !dbg !1263

100:                                              ; preds = %94
  %101 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.36, i64 noundef 9) #39, !dbg !1264
  %102 = icmp eq i32 %101, 0, !dbg !1264
  br i1 %102, label %103, label %106, !dbg !1265

103:                                              ; preds = %100, %94
  %104 = trunc i64 %57 to i32, !dbg !1266
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %55) #38, !dbg !1266
  br label %109, !dbg !1268

106:                                              ; preds = %100
  %107 = trunc i64 %57 to i32, !dbg !1269
  %108 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3, i32 noundef %107, ptr noundef %55) #38, !dbg !1269
  br label %109

109:                                              ; preds = %106, %103
  %110 = load ptr, ptr @stdout, align 8, !dbg !1271, !tbaa !1092
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %110), !dbg !1271
  %112 = load ptr, ptr @stdout, align 8, !dbg !1272, !tbaa !1092
  %113 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %112), !dbg !1272
  %114 = ptrtoint ptr %60 to i64, !dbg !1273
  %115 = sub i64 %114, %95, !dbg !1273
  %116 = load ptr, ptr @stdout, align 8, !dbg !1273, !tbaa !1092
  %117 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %115, ptr noundef %116), !dbg !1273
  %118 = load ptr, ptr @stdout, align 8, !dbg !1274, !tbaa !1092
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %118), !dbg !1274
  %120 = load ptr, ptr @stdout, align 8, !dbg !1275, !tbaa !1092
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %120), !dbg !1275
  %122 = load ptr, ptr @stdout, align 8, !dbg !1276, !tbaa !1092
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %122), !dbg !1276
  br label %124, !dbg !1277

124:                                              ; preds = %109, %19
  ret void, !dbg !1277
}

; Function Attrs: nounwind
declare !dbg !1278 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1282 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1286 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1288 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1291 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1294 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1297 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1300 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1306 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1307 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1313 {
  %3 = alloca %struct.__mbstate_t, align 4, !DIAssignID !1323
  %4 = alloca i32, align 4, !DIAssignID !1324
  %5 = alloca i64, align 8, !DIAssignID !1325
  %6 = alloca i8, align 1, !DIAssignID !1326
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1317, metadata !DIExpression()), !dbg !1327
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1318, metadata !DIExpression()), !dbg !1327
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1319, metadata !DIExpression()), !dbg !1327
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1322, metadata !DIExpression()), !dbg !1327
  %7 = load ptr, ptr %1, align 8, !dbg !1328, !tbaa !1092
  tail call void @set_program_name(ptr noundef %7) #38, !dbg !1329
  %8 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.9) #38, !dbg !1330
  %9 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #38, !dbg !1331
  %10 = tail call ptr @textdomain(ptr noundef nonnull @.str.10) #38, !dbg !1332
  %11 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1333
  br label %12, !dbg !1334

12:                                               ; preds = %44, %2
  %13 = phi i64 [ %51, %44 ], [ undef, %2 ]
  %14 = phi i8 [ %45, %44 ], [ 0, %2 ]
  %15 = phi i8 [ %20, %44 ], [ 0, %2 ]
  br label %16, !dbg !1334

16:                                               ; preds = %32, %12
  %17 = phi i8 [ %14, %12 ], [ 0, %32 ]
  %18 = phi i8 [ %15, %12 ], [ %20, %32 ]
  br label %19, !dbg !1334

19:                                               ; preds = %21, %16
  %20 = phi i8 [ %18, %16 ], [ 1, %21 ]
  br label %21, !dbg !1334

21:                                               ; preds = %27, %19
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !1322, metadata !DIExpression()), !dbg !1327
  tail call void @llvm.dbg.value(metadata i8 %17, metadata !1319, metadata !DIExpression()), !dbg !1327
  tail call void @llvm.dbg.value(metadata i64 %13, metadata !1320, metadata !DIExpression()), !dbg !1327
  %22 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1335
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !1321, metadata !DIExpression()), !dbg !1327
  switch i32 %22, label %38 [
    i32 -1, label %54
    i32 63, label %23
    i32 97, label %24
    i32 116, label %25
    i32 128, label %19
    i32 44, label %28
    i32 -130, label %33
    i32 -131, label %34
  ], !dbg !1334, !llvm.loop !1336

23:                                               ; preds = %21
  tail call void @usage(i32 noundef 1) #42, !dbg !1338
  unreachable, !dbg !1338

24:                                               ; preds = %21
  store i8 1, ptr @convert_entire_line, align 1, !dbg !1341, !tbaa !1342
  br label %27, !dbg !1344

25:                                               ; preds = %21
  store i8 1, ptr @convert_entire_line, align 1, !dbg !1345, !tbaa !1342
  %26 = load ptr, ptr @optarg, align 8, !dbg !1346, !tbaa !1092
  tail call void @parse_tab_stops(ptr noundef %26) #38, !dbg !1347
  br label %27, !dbg !1348

27:                                               ; preds = %25, %24
  br label %21, !dbg !1327, !llvm.loop !1336

28:                                               ; preds = %21
  %29 = and i8 %17, 1, !dbg !1349
  %30 = icmp eq i8 %29, 0, !dbg !1349
  br i1 %30, label %32, label %31, !dbg !1351

31:                                               ; preds = %28
  tail call void @add_tab_stop(i64 noundef %13) #38, !dbg !1352
  br label %32, !dbg !1352

32:                                               ; preds = %31, %28
  br label %16, !dbg !1334, !llvm.loop !1336

33:                                               ; preds = %21
  tail call void @usage(i32 noundef 0) #42, !dbg !1353
  unreachable, !dbg !1353

34:                                               ; preds = %21
  %35 = load ptr, ptr @stdout, align 8, !dbg !1354, !tbaa !1092
  %36 = load ptr, ptr @Version, align 8, !dbg !1354, !tbaa !1092
  %37 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #38, !dbg !1354
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %35, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, ptr noundef %36, ptr noundef %37, ptr noundef null) #38, !dbg !1354
  tail call void @exit(i32 noundef 0) #40, !dbg !1354
  unreachable, !dbg !1354

38:                                               ; preds = %21
  %39 = and i8 %17, 1, !dbg !1355
  %40 = icmp eq i8 %39, 0, !dbg !1355
  %41 = select i1 %40, i64 0, i64 %13, !dbg !1357
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1319, metadata !DIExpression()), !dbg !1327
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !1320, metadata !DIExpression()), !dbg !1327
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %41, i64 10), !dbg !1358
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !1358
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1320, metadata !DIExpression()), !dbg !1327
  br i1 %43, label %52, label %44, !dbg !1358

44:                                               ; preds = %38
  %45 = select i1 %40, i8 1, i8 %17, !dbg !1357
  tail call void @llvm.dbg.value(metadata i8 %45, metadata !1319, metadata !DIExpression()), !dbg !1327
  %46 = extractvalue { i64, i1 } %42, 0, !dbg !1358
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !1320, metadata !DIExpression()), !dbg !1327
  %47 = add nsw i32 %22, -48, !dbg !1358
  %48 = sext i32 %47 to i64, !dbg !1358
  %49 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %46, i64 %48), !dbg !1358
  %50 = extractvalue { i64, i1 } %49, 1, !dbg !1358
  %51 = extractvalue { i64, i1 } %49, 0, !dbg !1358
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !1320, metadata !DIExpression()), !dbg !1327
  br i1 %50, label %52, label %12, !dbg !1360, !llvm.loop !1336

52:                                               ; preds = %44, %38
  %53 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #38, !dbg !1361
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %53) #38, !dbg !1361
  unreachable, !dbg !1361

54:                                               ; preds = %21
  %55 = icmp eq i8 %20, 0, !dbg !1362
  br i1 %55, label %57, label %56, !dbg !1364

56:                                               ; preds = %54
  store i8 0, ptr @convert_entire_line, align 1, !dbg !1365, !tbaa !1342
  br label %57, !dbg !1366

57:                                               ; preds = %56, %54
  %58 = and i8 %17, 1, !dbg !1367
  %59 = icmp eq i8 %58, 0, !dbg !1367
  br i1 %59, label %61, label %60, !dbg !1369

60:                                               ; preds = %57
  tail call void @add_tab_stop(i64 noundef %13) #38, !dbg !1370
  br label %61, !dbg !1370

61:                                               ; preds = %60, %57
  tail call void @finalize_tab_stops() #38, !dbg !1371
  %62 = load i32, ptr @optind, align 4, !dbg !1372
  %63 = icmp slt i32 %62, %0, !dbg !1373
  %64 = sext i32 %62 to i64, !dbg !1374
  %65 = getelementptr inbounds ptr, ptr %1, i64 %64, !dbg !1374
  %66 = select i1 %63, ptr %65, ptr null, !dbg !1374
  tail call void @set_file_list(ptr noundef %66) #38, !dbg !1375
  call void @llvm.dbg.assign(metadata i1 undef, metadata !395, metadata !DIExpression(), metadata !1325, metadata ptr %5, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.assign(metadata i1 undef, metadata !403, metadata !DIExpression(), metadata !1326, metadata ptr %6, metadata !DIExpression()), !dbg !1378
  %67 = tail call ptr @next_file(ptr noundef null) #38, !dbg !1379
  call void @llvm.dbg.value(metadata ptr %67, metadata !359, metadata !DIExpression()), !dbg !1380
  %68 = icmp eq ptr %67, null, !dbg !1381
  br i1 %68, label %374, label %69, !dbg !1383

69:                                               ; preds = %61
  call void @llvm.dbg.value(metadata ptr undef, metadata !1384, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !1390, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata i64 262144, metadata !1391, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr %67, metadata !1392, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata ptr %67, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 262144, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1380
  %70 = load i64, ptr @max_column_width, align 8, !dbg !1395, !tbaa !1396
  %71 = shl i64 %70, 4, !dbg !1398
  %72 = tail call noalias nonnull ptr @ximalloc(i64 noundef %71) #43, !dbg !1399
  call void @llvm.dbg.value(metadata ptr %72, metadata !360, metadata !DIExpression()), !dbg !1380
  br label %73, !dbg !1400

73:                                               ; preds = %373, %69
  %74 = phi i64 [ 0, %69 ], [ %213, %373 ], !dbg !1380
  %75 = phi i64 [ 0, %69 ], [ %214, %373 ], !dbg !1380
  %76 = phi ptr [ %67, %69 ], [ %218, %373 ], !dbg !1401
  %77 = phi ptr [ %67, %69 ], [ %219, %373 ], !dbg !1380
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata ptr %76, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 262144, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %75, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %74, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata ptr %77, metadata !359, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata i8 1, metadata !387, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 0, metadata !388, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 0, metadata !394, metadata !DIExpression()), !dbg !1376
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !1402
  store i64 0, ptr %5, align 8, !dbg !1403, !tbaa !1396, !DIAssignID !1404
  call void @llvm.dbg.assign(metadata i64 0, metadata !395, metadata !DIExpression(), metadata !1404, metadata ptr %5, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i8 0, metadata !396, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i8 1, metadata !397, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 0, metadata !398, metadata !DIExpression()), !dbg !1376
  br label %78, !dbg !1405

78:                                               ; preds = %366, %73
  %79 = phi i64 [ %74, %73 ], [ %213, %366 ], !dbg !1380
  %80 = phi i64 [ %75, %73 ], [ %214, %366 ], !dbg !1380
  %81 = phi ptr [ %76, %73 ], [ %218, %366 ], !dbg !1401
  %82 = phi i64 [ 0, %73 ], [ %367, %366 ], !dbg !1376
  %83 = phi i8 [ 1, %73 ], [ %368, %366 ], !dbg !1376
  %84 = phi i8 [ 0, %73 ], [ %369, %366 ], !dbg !1376
  %85 = phi i64 [ 0, %73 ], [ %370, %366 ], !dbg !1376
  %86 = phi i8 [ 1, %73 ], [ %371, %366 ], !dbg !1376
  %87 = phi ptr [ %77, %73 ], [ %219, %366 ], !dbg !1380
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata ptr %81, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 262144, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %80, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %79, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata ptr %87, metadata !359, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata i8 %86, metadata !387, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %85, metadata !388, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i8 %84, metadata !396, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i8 %83, metadata !397, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %82, metadata !398, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata ptr %81, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 262144, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %80, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %79, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata ptr %87, metadata !359, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata ptr undef, metadata !1406, metadata !DIExpression()), !dbg !1416
  %88 = sub nsw i64 %79, %80, !dbg !1418
  call void @llvm.dbg.value(metadata i64 %88, metadata !1411, metadata !DIExpression()), !dbg !1416
  %89 = icmp slt i64 %88, 4, !dbg !1419
  br i1 %89, label %90, label %110, !dbg !1420

90:                                               ; preds = %78
  call void @llvm.dbg.value(metadata ptr %81, metadata !1421, metadata !DIExpression()), !dbg !1427
  %91 = load i32, ptr %81, align 8, !dbg !1429, !tbaa !1430
  %92 = and i32 %91, 16, !dbg !1432
  %93 = icmp eq i32 %92, 0, !dbg !1432
  br i1 %93, label %94, label %105, !dbg !1433

94:                                               ; preds = %90
  %95 = icmp sgt i64 %88, 0, !dbg !1434
  br i1 %95, label %96, label %99, !dbg !1436

96:                                               ; preds = %94
  %97 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %80, !dbg !1437
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !1439, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata ptr %97, metadata !1445, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %88, metadata !1446, metadata !DIExpression()), !dbg !1447
  %98 = call ptr @__memmove_chk(ptr noundef nonnull @unexpand.line_in, ptr noundef nonnull %97, i64 noundef %88, i64 noundef 262144) #38, !dbg !1449
  call void @llvm.dbg.value(metadata i64 %88, metadata !1412, metadata !DIExpression()), !dbg !1450
  br label %99

99:                                               ; preds = %96, %94
  %100 = phi i64 [ %88, %96 ], [ 0, %94 ], !dbg !1451
  call void @llvm.dbg.value(metadata i64 %100, metadata !1412, metadata !DIExpression()), !dbg !1450
  %101 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %100, !dbg !1452
  %102 = sub nuw nsw i64 262144, %100, !dbg !1452
  %103 = call i64 @fread_unlocked(ptr noundef nonnull %101, i64 noundef 1, i64 noundef %102, ptr noundef nonnull %81), !dbg !1452
  %104 = add i64 %103, %100, !dbg !1453
  call void @llvm.dbg.value(metadata i64 %104, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %104, metadata !1411, metadata !DIExpression()), !dbg !1416
  br label %105, !dbg !1454

105:                                              ; preds = %99, %90
  %106 = phi i64 [ %104, %99 ], [ %79, %90 ], !dbg !1380
  %107 = phi i64 [ 0, %99 ], [ %80, %90 ], !dbg !1380
  %108 = phi i64 [ %104, %99 ], [ %88, %90 ], !dbg !1416
  call void @llvm.dbg.value(metadata i64 %107, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %106, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %108, metadata !1411, metadata !DIExpression()), !dbg !1416
  %109 = icmp slt i64 %108, 1, !dbg !1455
  br i1 %109, label %156, label %110, !dbg !1457

110:                                              ; preds = %105, %78
  %111 = phi i64 [ %106, %105 ], [ %79, %78 ], !dbg !1380
  %112 = phi i64 [ %107, %105 ], [ %80, %78 ], !dbg !1380
  call void @llvm.dbg.value(metadata i64 %112, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %111, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1380
  %113 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %112, !dbg !1458
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1459, metadata !DIExpression(), metadata !1323, metadata ptr %3, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1467, metadata !DIExpression(), metadata !1324, metadata ptr %4, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata ptr %113, metadata !1464, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1465, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1479
  %114 = load i8, ptr %113, align 1, !dbg !1481, !tbaa !1172
  call void @llvm.dbg.value(metadata i8 %114, metadata !1466, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %114, metadata !1482, metadata !DIExpression()), !dbg !1487
  %115 = icmp sgt i8 %114, -1, !dbg !1490
  br i1 %115, label %137, label %116, !dbg !1491

116:                                              ; preds = %110
  call void @llvm.dbg.value(metadata !DIArgList(ptr @unexpand.line_in, i64 %111), metadata !1465, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1479
  %117 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %111, !dbg !1492
  call void @llvm.dbg.value(metadata ptr %117, metadata !1465, metadata !DIExpression()), !dbg !1479
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1493
  store i32 0, ptr %3, align 4, !dbg !1494, !tbaa !1495, !DIAssignID !1497
  call void @llvm.dbg.assign(metadata i32 0, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1497, metadata ptr %3, metadata !DIExpression()), !dbg !1479
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #38, !dbg !1498
  %118 = ptrtoint ptr %117 to i64, !dbg !1499
  %119 = ptrtoint ptr %113 to i64, !dbg !1499
  %120 = sub i64 %118, %119, !dbg !1499
  %121 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %113, i64 noundef %120, ptr noundef nonnull %3) #38, !dbg !1500
  call void @llvm.dbg.value(metadata i64 %121, metadata !1468, metadata !DIExpression()), !dbg !1479
  %122 = icmp slt i64 %121, 0, !dbg !1501
  br i1 %122, label %131, label %123, !dbg !1503, !prof !1504

123:                                              ; preds = %116
  %124 = load i32, ptr %4, align 4, !dbg !1505, !tbaa !1163
  call void @llvm.dbg.value(metadata i32 %124, metadata !1506, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i64 %121, metadata !1511, metadata !DIExpression()), !dbg !1512
  %125 = icmp ne i64 %121, 0, !dbg !1514
  call void @llvm.assume(i1 %125), !dbg !1514
  %126 = icmp ult i64 %121, 5, !dbg !1515
  call void @llvm.assume(i1 %126), !dbg !1515
  %127 = icmp ult i32 %124, 1114112, !dbg !1516
  call void @llvm.assume(i1 %127), !dbg !1516
  %128 = shl nuw nsw i64 %121, 40, !dbg !1517
  %129 = zext nneg i32 %124 to i64, !dbg !1517
  %130 = or disjoint i64 %128, %129, !dbg !1517
  br label %135, !dbg !1518

131:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i8 %114, metadata !1519, metadata !DIExpression()), !dbg !1524
  %132 = zext i8 %114 to i64, !dbg !1526
  %133 = shl nuw nsw i64 %132, 32, !dbg !1526
  %134 = or disjoint i64 %133, 1099511627776, !dbg !1526
  br label %135, !dbg !1527

135:                                              ; preds = %131, %123
  %136 = phi i64 [ %134, %131 ], [ %130, %123 ], !dbg !1479
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #38, !dbg !1528
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1528
  br label %140

137:                                              ; preds = %110
  call void @llvm.dbg.value(metadata i64 1, metadata !1511, metadata !DIExpression()), !dbg !1529
  %138 = zext nneg i8 %114 to i64, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %138, metadata !1506, metadata !DIExpression()), !dbg !1529
  %139 = or disjoint i64 %138, 1099511627776, !dbg !1531
  br label %140, !dbg !1532

140:                                              ; preds = %137, %135
  %141 = phi i64 [ %139, %137 ], [ %136, %135 ], !dbg !1479
  call void @llvm.dbg.value(metadata i64 %141, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %141, metadata !1415, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %141, metadata !1415, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %141, metadata !1415, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1416
  %142 = and i64 %141, 1095216660480, !dbg !1533
  %143 = icmp eq i64 %142, 0, !dbg !1533
  br i1 %143, label %147, label %144, !dbg !1535

144:                                              ; preds = %140
  call void @llvm.dbg.value(metadata i64 %112, metadata !361, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1380
  %145 = load i8, ptr %113, align 1, !dbg !1536, !tbaa !1172
  %146 = zext i8 %145 to i64, !dbg !1538
  call void @llvm.dbg.value(metadata i8 %145, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1416
  br label %149

147:                                              ; preds = %140
  %148 = lshr i64 %141, 40, !dbg !1539
  call void @llvm.dbg.value(metadata i64 %148, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %141, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1416
  call void @llvm.dbg.value(metadata !DIArgList(i64 %112, i64 %148), metadata !361, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1380
  br label %149, !dbg !1540

149:                                              ; preds = %147, %144
  %150 = phi i64 [ %148, %147 ], [ 1, %144 ]
  %151 = phi i64 [ %141, %147 ], [ %146, %144 ], !dbg !1416
  %152 = add nsw i64 %150, %112, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %152, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i32 poison, metadata !1415, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1416
  %153 = and i64 %141, -4294967296, !dbg !1542
  call void @llvm.dbg.value(metadata i64 %111, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 poison, metadata !1415, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1416
  call void @llvm.dbg.value(metadata i64 poison, metadata !1415, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1416
  call void @llvm.dbg.value(metadata i64 poison, metadata !1415, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1416
  call void @llvm.dbg.value(metadata i64 poison, metadata !1415, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1416
  %154 = trunc i64 %151 to i32, !dbg !1543
  call void @llvm.dbg.value(metadata i32 %154, metadata !375, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1376
  call void @llvm.dbg.value(metadata !DIArgList(i64 %151, i64 %153), metadata !375, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1376
  call void @llvm.dbg.value(metadata !DIArgList(i64 %151, i64 %153), metadata !375, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1376
  call void @llvm.dbg.value(metadata i64 poison, metadata !375, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1376
  %155 = icmp eq i32 %154, -1, !dbg !1544
  br i1 %155, label %156, label %212, !dbg !1545

156:                                              ; preds = %149, %105
  %157 = phi i64 [ %153, %149 ], [ 4294967295, %105 ]
  %158 = phi i64 [ %152, %149 ], [ %107, %105 ]
  %159 = phi i64 [ %111, %149 ], [ %106, %105 ]
  %160 = call ptr @next_file(ptr noundef %87) #38, !dbg !1546
  call void @llvm.dbg.value(metadata ptr %160, metadata !359, metadata !DIExpression()), !dbg !1380
  %161 = icmp eq ptr %160, null, !dbg !1545
  br i1 %161, label %212, label %162, !dbg !1547

162:                                              ; preds = %156, %206
  %163 = phi ptr [ %210, %206 ], [ %160, %156 ], !dbg !1548
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata ptr %163, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 262144, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata ptr %163, metadata !359, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.value(metadata ptr undef, metadata !1406, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i64 0, metadata !1411, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata ptr %163, metadata !1421, metadata !DIExpression()), !dbg !1427
  %164 = load i32, ptr %163, align 8, !dbg !1429, !tbaa !1430
  %165 = and i32 %164, 16, !dbg !1432
  %166 = icmp eq i32 %165, 0, !dbg !1432
  br i1 %166, label %167, label %206, !dbg !1433

167:                                              ; preds = %162
  call void @llvm.dbg.value(metadata i64 0, metadata !1412, metadata !DIExpression()), !dbg !1450
  %168 = call i64 @fread_unlocked(ptr noundef nonnull @unexpand.line_in, i64 noundef 1, i64 noundef 262144, ptr noundef nonnull %163), !dbg !1452
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %168, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %168, metadata !1411, metadata !DIExpression()), !dbg !1416
  %169 = icmp slt i64 %168, 1, !dbg !1455
  br i1 %169, label %206, label %170, !dbg !1457

170:                                              ; preds = %167
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 %168, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1380
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1459, metadata !DIExpression(), metadata !1323, metadata ptr %3, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1467, metadata !DIExpression(), metadata !1324, metadata ptr %4, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !1464, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1465, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1479
  %171 = load i8, ptr @unexpand.line_in, align 16, !dbg !1481
  call void @llvm.dbg.value(metadata i8 %171, metadata !1466, metadata !DIExpression()), !dbg !1479
  call void @llvm.dbg.value(metadata i8 %171, metadata !1482, metadata !DIExpression()), !dbg !1487
  %172 = icmp sgt i8 %171, -1, !dbg !1490
  br i1 %172, label %173, label %176, !dbg !1491

173:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i64 1, metadata !1511, metadata !DIExpression()), !dbg !1529
  %174 = zext nneg i8 %171 to i64, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %174, metadata !1506, metadata !DIExpression()), !dbg !1529
  %175 = or disjoint i64 %174, 1099511627776, !dbg !1531
  br label %195, !dbg !1532

176:                                              ; preds = %170
  call void @llvm.dbg.value(metadata !DIArgList(ptr @unexpand.line_in, i64 %168), metadata !1465, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1479
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1493
  store i32 0, ptr %3, align 4, !dbg !1494, !tbaa !1495, !DIAssignID !1497
  call void @llvm.dbg.assign(metadata i32 0, metadata !1459, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1497, metadata ptr %3, metadata !DIExpression()), !dbg !1479
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #38, !dbg !1498
  %177 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull @unexpand.line_in, i64 noundef %168, ptr noundef nonnull %3) #38, !dbg !1500
  call void @llvm.dbg.value(metadata i64 %177, metadata !1468, metadata !DIExpression()), !dbg !1479
  %178 = icmp slt i64 %177, 0, !dbg !1501
  br i1 %178, label %179, label %183, !dbg !1503, !prof !1504

179:                                              ; preds = %176
  call void @llvm.dbg.value(metadata i8 %171, metadata !1519, metadata !DIExpression()), !dbg !1524
  %180 = zext i8 %171 to i64, !dbg !1526
  %181 = shl nuw nsw i64 %180, 32, !dbg !1526
  %182 = or disjoint i64 %181, 1099511627776, !dbg !1526
  br label %191, !dbg !1527

183:                                              ; preds = %176
  %184 = load i32, ptr %4, align 4, !dbg !1505, !tbaa !1163
  call void @llvm.dbg.value(metadata i32 %184, metadata !1506, metadata !DIExpression()), !dbg !1512
  call void @llvm.dbg.value(metadata i64 %177, metadata !1511, metadata !DIExpression()), !dbg !1512
  %185 = icmp ne i64 %177, 0, !dbg !1514
  call void @llvm.assume(i1 %185), !dbg !1514
  %186 = icmp ult i64 %177, 5, !dbg !1515
  call void @llvm.assume(i1 %186), !dbg !1515
  %187 = icmp ult i32 %184, 1114112, !dbg !1516
  call void @llvm.assume(i1 %187), !dbg !1516
  %188 = shl nuw nsw i64 %177, 40, !dbg !1517
  %189 = zext nneg i32 %184 to i64, !dbg !1517
  %190 = or disjoint i64 %188, %189, !dbg !1517
  br label %191, !dbg !1518

191:                                              ; preds = %183, %179
  %192 = phi i64 [ %182, %179 ], [ %190, %183 ], !dbg !1479
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #38, !dbg !1528
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1528
  %193 = load i8, ptr @unexpand.line_in, align 16, !dbg !1535
  %194 = zext i8 %193 to i64, !dbg !1535
  br label %195

195:                                              ; preds = %191, %173
  %196 = phi i64 [ %194, %191 ], [ %174, %173 ], !dbg !1535
  %197 = phi i64 [ %192, %191 ], [ %175, %173 ], !dbg !1479
  call void @llvm.dbg.value(metadata i64 %197, metadata !1415, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %197, metadata !1415, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %197, metadata !1415, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1416
  call void @llvm.dbg.value(metadata i64 %197, metadata !1415, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1416
  %198 = and i64 %197, 1095216660480, !dbg !1533
  %199 = icmp eq i64 %198, 0, !dbg !1533
  %200 = lshr i64 %197, 40, !dbg !1535
  %201 = select i1 %199, i64 %200, i64 1, !dbg !1535
  %202 = select i1 %199, i64 %197, i64 %196, !dbg !1535
  call void @llvm.dbg.value(metadata i64 %201, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i32 poison, metadata !1415, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1416
  %203 = and i64 %197, -4294967296, !dbg !1542
  call void @llvm.dbg.value(metadata i64 %168, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1380
  call void @llvm.dbg.value(metadata i64 poison, metadata !1415, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1416
  call void @llvm.dbg.value(metadata i64 poison, metadata !1415, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1416
  call void @llvm.dbg.value(metadata i64 poison, metadata !1415, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1416
  call void @llvm.dbg.value(metadata i64 poison, metadata !1415, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1416
  %204 = trunc i64 %202 to i32, !dbg !1543
  call void @llvm.dbg.value(metadata i32 %204, metadata !375, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1376
  call void @llvm.dbg.value(metadata !DIArgList(i64 %202, i64 %203), metadata !375, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1376
  call void @llvm.dbg.value(metadata !DIArgList(i64 %202, i64 %203), metadata !375, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1376
  call void @llvm.dbg.value(metadata i64 poison, metadata !375, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1376
  %205 = icmp eq i32 %204, -1, !dbg !1544
  br i1 %205, label %206, label %212, !dbg !1545

206:                                              ; preds = %195, %167, %162
  %207 = phi i64 [ %203, %195 ], [ 4294967295, %167 ], [ 4294967295, %162 ]
  %208 = phi i64 [ %201, %195 ], [ 0, %167 ], [ 0, %162 ]
  %209 = phi i64 [ %168, %195 ], [ %168, %167 ], [ 0, %162 ]
  %210 = call ptr @next_file(ptr noundef nonnull %163) #38, !dbg !1546
  call void @llvm.dbg.value(metadata ptr %210, metadata !359, metadata !DIExpression()), !dbg !1380
  %211 = icmp eq ptr %210, null, !dbg !1545
  br i1 %211, label %212, label %162, !dbg !1547, !llvm.loop !1550

212:                                              ; preds = %206, %195, %156, %149
  %213 = phi i64 [ %111, %149 ], [ %159, %156 ], [ %209, %206 ], [ %168, %195 ], !dbg !1553
  %214 = phi i64 [ %152, %149 ], [ %158, %156 ], [ %208, %206 ], [ %201, %195 ], !dbg !1416
  %215 = phi i64 [ %153, %149 ], [ %157, %156 ], [ %207, %206 ], [ %203, %195 ], !dbg !1554
  %216 = phi i32 [ %154, %149 ], [ -1, %156 ], [ -1, %206 ], [ %204, %195 ], !dbg !1543
  %217 = phi i1 [ false, %149 ], [ true, %156 ], [ true, %206 ], [ false, %195 ], !dbg !1544
  %218 = phi ptr [ %81, %149 ], [ %81, %156 ], [ %163, %195 ], [ %163, %206 ], !dbg !1548
  %219 = phi ptr [ %87, %149 ], [ null, %156 ], [ null, %206 ], [ %163, %195 ], !dbg !1380
  %220 = lshr i64 %215, 40
  call void @llvm.dbg.value(metadata ptr %219, metadata !359, metadata !DIExpression()), !dbg !1380
  %221 = and i8 %86, 1, !dbg !1555
  %222 = icmp eq i8 %221, 0, !dbg !1555
  br i1 %222, label %339, label %223, !dbg !1556

223:                                              ; preds = %212
  call void @llvm.dbg.value(metadata i32 %216, metadata !1557, metadata !DIExpression()), !dbg !1562
  call void @llvm.dbg.value(metadata i32 %216, metadata !1564, metadata !DIExpression()), !dbg !1572
  %224 = call i32 @iswblank(i32 noundef %216) #38, !dbg !1574
  %225 = icmp ne i32 %224, 0, !dbg !1575
  %226 = zext i1 %225 to i8, !dbg !1576
  call void @llvm.dbg.value(metadata i8 %226, metadata !399, metadata !DIExpression()), !dbg !1577
  br i1 %225, label %227, label %277, !dbg !1578

227:                                              ; preds = %223
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #38, !dbg !1579
  %228 = call i64 @get_next_tab_column(i64 noundef %85, ptr noundef nonnull %5, ptr noundef nonnull %6) #38, !dbg !1580
  call void @llvm.dbg.value(metadata i64 %228, metadata !394, metadata !DIExpression()), !dbg !1376
  %229 = load i8, ptr %6, align 1, !dbg !1581, !tbaa !1342, !range !1583, !noundef !1130
  %230 = icmp eq i8 %229, 0, !dbg !1581
  %231 = select i1 %230, i8 %86, i8 0, !dbg !1584
  call void @llvm.dbg.value(metadata i8 %231, metadata !387, metadata !DIExpression()), !dbg !1376
  %232 = and i8 %231, 1, !dbg !1585
  %233 = icmp eq i8 %232, 0, !dbg !1585
  br i1 %233, label %273, label %234, !dbg !1587

234:                                              ; preds = %227
  %235 = icmp eq i32 %216, 9, !dbg !1588
  br i1 %235, label %236, label %238, !dbg !1591

236:                                              ; preds = %234
  call void @llvm.dbg.value(metadata i64 %228, metadata !388, metadata !DIExpression()), !dbg !1376
  %237 = icmp eq i64 %82, 0, !dbg !1592
  br i1 %237, label %269, label %267, !dbg !1595

238:                                              ; preds = %234
  call void @llvm.dbg.value(metadata i32 %216, metadata !1596, metadata !DIExpression()), !dbg !1601
  %239 = call i32 @wcwidth(i32 noundef %216) #38, !dbg !1604
  %240 = sext i32 %239 to i64, !dbg !1605
  %241 = add nsw i64 %85, %240, !dbg !1606
  call void @llvm.dbg.value(metadata i64 %241, metadata !388, metadata !DIExpression()), !dbg !1376
  %242 = and i8 %83, 1, !dbg !1607
  %243 = icmp ne i8 %242, 0, !dbg !1607
  %244 = icmp eq i64 %241, %228
  %245 = select i1 %243, i1 %244, i1 false, !dbg !1609
  br i1 %245, label %246, label %332, !dbg !1609

246:                                              ; preds = %238
  call void @llvm.dbg.value(metadata i8 0, metadata !375, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1376
  %247 = load ptr, ptr @stdout, align 8, !dbg !1610, !tbaa !1092
  call void @llvm.dbg.value(metadata i32 9, metadata !1612, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata ptr %247, metadata !1617, metadata !DIExpression()), !dbg !1618
  %248 = getelementptr inbounds %struct._IO_FILE, ptr %247, i64 0, i32 5, !dbg !1620
  %249 = load ptr, ptr %248, align 8, !dbg !1620, !tbaa !1621
  %250 = getelementptr inbounds %struct._IO_FILE, ptr %247, i64 0, i32 6, !dbg !1620
  %251 = load ptr, ptr %250, align 8, !dbg !1620, !tbaa !1622
  %252 = icmp ult ptr %249, %251, !dbg !1620
  br i1 %252, label %253, label %255, !dbg !1620, !prof !1623

253:                                              ; preds = %246
  %254 = getelementptr inbounds i8, ptr %249, i64 1, !dbg !1620
  store ptr %254, ptr %248, align 8, !dbg !1620, !tbaa !1621
  store i8 9, ptr %249, align 1, !dbg !1620, !tbaa !1172
  br label %267, !dbg !1624

255:                                              ; preds = %246
  %256 = call i32 @__overflow(ptr noundef nonnull %247, i32 noundef 9) #38, !dbg !1620
  %257 = icmp slt i32 %256, 0, !dbg !1625
  br i1 %257, label %258, label %267, !dbg !1624

258:                                              ; preds = %255
  %259 = tail call ptr @__errno_location() #41, !dbg !1626
  %260 = load i32, ptr %259, align 4, !dbg !1626, !tbaa !1163
  call void @llvm.dbg.value(metadata i32 %260, metadata !1629, metadata !DIExpression()), !dbg !1631
  %261 = load ptr, ptr @stdout, align 8, !dbg !1632, !tbaa !1092
  %262 = call i32 @fflush_unlocked(ptr noundef %261) #38, !dbg !1632
  %263 = load ptr, ptr @stdout, align 8, !dbg !1633, !tbaa !1092
  %264 = call i32 @fpurge(ptr noundef %263) #38, !dbg !1634
  %265 = load ptr, ptr @stdout, align 8, !dbg !1635, !tbaa !1092
  call void @clearerr_unlocked(ptr noundef %265) #38, !dbg !1635
  %266 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #38, !dbg !1636
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %260, ptr noundef %266) #38, !dbg !1636
  unreachable, !dbg !1636

267:                                              ; preds = %255, %253, %236
  %268 = phi i64 [ %220, %236 ], [ 0, %253 ], [ 0, %255 ]
  store i8 9, ptr %72, align 1, !dbg !1637, !tbaa !1172
  br label %269, !dbg !1638

269:                                              ; preds = %267, %236
  %270 = phi i64 [ %220, %236 ], [ %268, %267 ], !dbg !1639
  call void @llvm.dbg.value(metadata i8 poison, metadata !375, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %228, metadata !388, metadata !DIExpression()), !dbg !1376
  %271 = and i8 %84, 1, !dbg !1638
  %272 = zext nneg i8 %271 to i64, !dbg !1638
  call void @llvm.dbg.value(metadata i64 %272, metadata !398, metadata !DIExpression()), !dbg !1376
  br label %273, !dbg !1640

273:                                              ; preds = %269, %227
  %274 = phi i64 [ %82, %227 ], [ %272, %269 ]
  %275 = phi i64 [ %85, %227 ], [ %228, %269 ]
  %276 = phi i64 [ %220, %227 ], [ %270, %269 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !375, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %275, metadata !388, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i8 %84, metadata !396, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i8 poison, metadata !397, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %274, metadata !398, metadata !DIExpression()), !dbg !1376
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #38, !dbg !1641
  br label %298

277:                                              ; preds = %223
  %278 = icmp eq i32 %216, 8, !dbg !1642
  br i1 %278, label %279, label %287, !dbg !1643

279:                                              ; preds = %277
  %280 = icmp ne i64 %85, 0, !dbg !1644
  %281 = sext i1 %280 to i64
  %282 = add i64 %85, %281, !dbg !1646
  call void @llvm.dbg.value(metadata i64 %282, metadata !388, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %282, metadata !394, metadata !DIExpression()), !dbg !1376
  %283 = load i64, ptr %5, align 8, !dbg !1647, !tbaa !1396
  %284 = icmp ne i64 %283, 0, !dbg !1648
  %285 = sext i1 %284 to i64
  %286 = add i64 %283, %285, !dbg !1649
  store i64 %286, ptr %5, align 8, !dbg !1649, !tbaa !1396, !DIAssignID !1650
  call void @llvm.dbg.assign(metadata i64 %286, metadata !395, metadata !DIExpression(), metadata !1650, metadata ptr %5, metadata !DIExpression()), !dbg !1376
  br label %298, !dbg !1651

287:                                              ; preds = %277
  call void @llvm.dbg.value(metadata i32 %216, metadata !1596, metadata !DIExpression()), !dbg !1652
  %288 = call i32 @wcwidth(i32 noundef %216) #38, !dbg !1654
  call void @llvm.dbg.value(metadata i32 %288, metadata !406, metadata !DIExpression()), !dbg !1655
  %289 = icmp slt i32 %288, 0, !dbg !1656
  %290 = select i1 %289, i32 1, i32 %288, !dbg !1656
  %291 = sext i32 %290 to i64, !dbg !1656
  %292 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %85, i64 %291), !dbg !1656
  %293 = extractvalue { i64, i1 } %292, 1, !dbg !1656
  call void @llvm.dbg.value(metadata i64 poison, metadata !388, metadata !DIExpression()), !dbg !1376
  br i1 %293, label %294, label %296, !dbg !1658

294:                                              ; preds = %287
  %295 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #38, !dbg !1659
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %295) #38, !dbg !1659
  unreachable, !dbg !1659

296:                                              ; preds = %287
  %297 = extractvalue { i64, i1 } %292, 0, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %297, metadata !388, metadata !DIExpression()), !dbg !1376
  br label %298

298:                                              ; preds = %296, %279, %273
  %299 = phi i64 [ %82, %279 ], [ %82, %296 ], [ %274, %273 ], !dbg !1376
  %300 = phi i64 [ %282, %279 ], [ %297, %296 ], [ %275, %273 ], !dbg !1660
  %301 = phi i8 [ %86, %279 ], [ %86, %296 ], [ %231, %273 ], !dbg !1376
  %302 = phi i64 [ %220, %279 ], [ %220, %296 ], [ %276, %273 ], !dbg !1543
  call void @llvm.dbg.value(metadata i8 poison, metadata !375, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1376
  call void @llvm.dbg.value(metadata i8 %301, metadata !387, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %300, metadata !388, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i8 %84, metadata !396, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %299, metadata !398, metadata !DIExpression()), !dbg !1376
  %303 = icmp eq i64 %299, 0, !dbg !1661
  br i1 %303, label %323, label %304, !dbg !1662

304:                                              ; preds = %298
  %305 = icmp slt i64 %299, 2, !dbg !1663
  %306 = and i8 %84, 1
  %307 = icmp eq i8 %306, 0
  %308 = select i1 %305, i1 true, i1 %307, !dbg !1665
  br i1 %308, label %310, label %309, !dbg !1665

309:                                              ; preds = %304
  store i8 9, ptr %72, align 1, !dbg !1666, !tbaa !1172
  br label %310, !dbg !1667

310:                                              ; preds = %304, %309
  %311 = load ptr, ptr @stdout, align 8, !dbg !1668, !tbaa !1092
  %312 = call i64 @fwrite_unlocked(ptr noundef nonnull %72, i64 noundef 1, i64 noundef %299, ptr noundef %311), !dbg !1668
  %313 = icmp eq i64 %312, %299, !dbg !1669
  br i1 %313, label %323, label %314, !dbg !1670

314:                                              ; preds = %310
  %315 = tail call ptr @__errno_location() #41, !dbg !1671
  %316 = load i32, ptr %315, align 4, !dbg !1671, !tbaa !1163
  call void @llvm.dbg.value(metadata i32 %316, metadata !1629, metadata !DIExpression()), !dbg !1673
  %317 = load ptr, ptr @stdout, align 8, !dbg !1674, !tbaa !1092
  %318 = call i32 @fflush_unlocked(ptr noundef %317) #38, !dbg !1674
  %319 = load ptr, ptr @stdout, align 8, !dbg !1675, !tbaa !1092
  %320 = call i32 @fpurge(ptr noundef %319) #38, !dbg !1676
  %321 = load ptr, ptr @stdout, align 8, !dbg !1677, !tbaa !1092
  call void @clearerr_unlocked(ptr noundef %321) #38, !dbg !1677
  %322 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #38, !dbg !1678
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %316, ptr noundef %322) #38, !dbg !1678
  unreachable, !dbg !1678

323:                                              ; preds = %310, %298
  %324 = phi i8 [ %84, %298 ], [ 0, %310 ], !dbg !1376
  call void @llvm.dbg.value(metadata i8 %324, metadata !396, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 0, metadata !398, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i8 %226, metadata !397, metadata !DIExpression()), !dbg !1376
  %325 = load i8, ptr @convert_entire_line, align 1, !dbg !1679, !tbaa !1342, !range !1583, !noundef !1130
  %326 = icmp ne i8 %325, 0, !dbg !1679
  %327 = or i1 %225, %326, !dbg !1680
  %328 = and i8 %301, 1, !dbg !1681
  %329 = icmp ne i8 %328, 0, !dbg !1681
  %330 = select i1 %327, i1 %329, i1 false, !dbg !1681
  %331 = zext i1 %330 to i8, !dbg !1681
  call void @llvm.dbg.value(metadata i8 poison, metadata !375, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1376
  call void @llvm.dbg.value(metadata i8 %331, metadata !387, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %300, metadata !388, metadata !DIExpression()), !dbg !1376
  br label %339

332:                                              ; preds = %238
  %333 = select i1 %244, i8 1, i8 %84, !dbg !1682
  call void @llvm.dbg.value(metadata i8 %333, metadata !396, metadata !DIExpression()), !dbg !1376
  %334 = getelementptr inbounds i8, ptr %72, i64 %82, !dbg !1684
  call void @llvm.dbg.value(metadata !DIArgList(i64 %220, i64 0, i64 %220), metadata !1685, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 65280, DW_OP_and, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709486080, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1691
  call void @llvm.dbg.value(metadata i64 %220, metadata !1685, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1691
  call void @llvm.dbg.value(metadata !DIArgList(i64 %220, i64 0, i64 %220), metadata !1685, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 65280, DW_OP_and, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709486080, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1691
  call void @llvm.dbg.value(metadata ptr undef, metadata !1690, metadata !DIExpression()), !dbg !1691
  %335 = icmp sge i64 %214, %220, !dbg !1693
  call void @llvm.assume(i1 %335), !dbg !1695
  %336 = sub nsw i64 %214, %220, !dbg !1696
  %337 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %336, !dbg !1697
  call void @llvm.dbg.value(metadata ptr %334, metadata !1698, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata ptr %337, metadata !1704, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i64 %220, metadata !1705, metadata !DIExpression()), !dbg !1706
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %334, ptr noundef nonnull align 1 %337, i64 noundef %220, i1 noundef false) #38, !dbg !1708
  %338 = add nsw i64 %220, %82, !dbg !1709
  call void @llvm.dbg.value(metadata i64 %220, metadata !375, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %241, metadata !388, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i8 1, metadata !397, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %338, metadata !398, metadata !DIExpression()), !dbg !1376
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #38, !dbg !1641
  call void @llvm.dbg.value(metadata i8 %231, metadata !387, metadata !DIExpression()), !dbg !1376
  br label %366

339:                                              ; preds = %323, %212
  %340 = phi i64 [ %82, %212 ], [ 0, %323 ], !dbg !1376
  %341 = phi i8 [ %83, %212 ], [ %226, %323 ], !dbg !1376
  %342 = phi i8 [ %84, %212 ], [ %324, %323 ], !dbg !1376
  %343 = phi i64 [ %85, %212 ], [ %300, %323 ], !dbg !1376
  %344 = phi i8 [ %86, %212 ], [ %331, %323 ], !dbg !1376
  %345 = phi i64 [ %220, %212 ], [ %302, %323 ], !dbg !1543
  call void @llvm.dbg.value(metadata i8 poison, metadata !375, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1376
  call void @llvm.dbg.value(metadata i8 %344, metadata !387, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %343, metadata !388, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i8 %342, metadata !396, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i8 %341, metadata !397, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %340, metadata !398, metadata !DIExpression()), !dbg !1376
  br i1 %217, label %346, label %347, !dbg !1710

346:                                              ; preds = %339
  call void @free(ptr noundef nonnull %72) #38, !dbg !1711
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !1714
  br label %374

347:                                              ; preds = %339
  %348 = and i64 %345, 255, !dbg !1715
  call void @llvm.dbg.value(metadata !DIArgList(i32 0, i64 0, i64 %348), metadata !1685, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1716
  call void @llvm.dbg.value(metadata i64 %348, metadata !1685, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1716
  call void @llvm.dbg.value(metadata !DIArgList(i32 0, i64 0, i64 %348), metadata !1685, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 2, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1716
  call void @llvm.dbg.value(metadata ptr undef, metadata !1690, metadata !DIExpression()), !dbg !1716
  %349 = icmp sge i64 %214, %348, !dbg !1718
  call void @llvm.assume(i1 %349), !dbg !1719
  %350 = sub nsw i64 %214, %348, !dbg !1720
  %351 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %350, !dbg !1721
  %352 = load ptr, ptr @stdout, align 8, !dbg !1715, !tbaa !1092
  %353 = call i64 @fwrite_unlocked(ptr noundef nonnull %351, i64 noundef 1, i64 noundef %348, ptr noundef %352), !dbg !1715
  %354 = load ptr, ptr @stdout, align 8, !dbg !1722, !tbaa !1092
  call void @llvm.dbg.value(metadata ptr %354, metadata !1724, metadata !DIExpression()), !dbg !1727
  %355 = load i32, ptr %354, align 8, !dbg !1729, !tbaa !1430
  %356 = and i32 %355, 32, !dbg !1722
  %357 = icmp eq i32 %356, 0, !dbg !1722
  br i1 %357, label %366, label %358, !dbg !1730

358:                                              ; preds = %347
  %359 = tail call ptr @__errno_location() #41, !dbg !1731
  %360 = load i32, ptr %359, align 4, !dbg !1731, !tbaa !1163
  call void @llvm.dbg.value(metadata i32 %360, metadata !1629, metadata !DIExpression()), !dbg !1733
  %361 = call i32 @fflush_unlocked(ptr noundef nonnull %354) #38, !dbg !1734
  %362 = load ptr, ptr @stdout, align 8, !dbg !1735, !tbaa !1092
  %363 = call i32 @fpurge(ptr noundef %362) #38, !dbg !1736
  %364 = load ptr, ptr @stdout, align 8, !dbg !1737, !tbaa !1092
  call void @clearerr_unlocked(ptr noundef %364) #38, !dbg !1737
  %365 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #38, !dbg !1738
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %360, ptr noundef %365) #38, !dbg !1738
  unreachable, !dbg !1738

366:                                              ; preds = %347, %332
  %367 = phi i64 [ %338, %332 ], [ %340, %347 ], !dbg !1739
  %368 = phi i8 [ 1, %332 ], [ %341, %347 ], !dbg !1740
  %369 = phi i8 [ %333, %332 ], [ %342, %347 ], !dbg !1741
  %370 = phi i64 [ %241, %332 ], [ %343, %347 ], !dbg !1742
  %371 = phi i8 [ %86, %332 ], [ %344, %347 ], !dbg !1681
  call void @llvm.dbg.value(metadata i8 %371, metadata !387, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %370, metadata !388, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i8 %369, metadata !396, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i8 %368, metadata !397, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.value(metadata i64 %367, metadata !398, metadata !DIExpression()), !dbg !1376
  %372 = icmp eq i32 %216, 10, !dbg !1743
  br i1 %372, label %373, label %78, !dbg !1744, !llvm.loop !1745

373:                                              ; preds = %366
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !1714
  br label %73, !llvm.loop !1747

374:                                              ; preds = %61, %346
  call void @cleanup_file_list_stdin() #38, !dbg !1748
  %375 = load i32, ptr @exit_status, align 4, !dbg !1749, !tbaa !1163
  ret i32 %375, !dbg !1750
}

; Function Attrs: nounwind
declare !dbg !1751 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1754 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1755 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1758 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1764 ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1768 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind
declare !dbg !1775 i32 @iswblank(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1777 i32 @wcwidth(i32 noundef) local_unnamed_addr #2

declare !dbg !1783 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1786 ptr @__errno_location() local_unnamed_addr #9

declare !dbg !1790 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1791 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1794 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local void @add_tab_stop(i64 noundef %0) local_unnamed_addr #10 !dbg !1797 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !1801, metadata !DIExpression()), !dbg !1804
  %2 = load i64, ptr @first_free_tab, align 8, !dbg !1805, !tbaa !1396
  %3 = icmp eq i64 %2, 0, !dbg !1805
  %4 = load ptr, ptr @tab_list, align 8, !dbg !1806, !tbaa !1092
  br i1 %3, label %9, label %5, !dbg !1805

5:                                                ; preds = %1
  %6 = getelementptr i64, ptr %4, i64 %2, !dbg !1807
  %7 = getelementptr i64, ptr %6, i64 -1, !dbg !1807
  %8 = load i64, ptr %7, align 8, !dbg !1807, !tbaa !1396
  br label %9, !dbg !1805

9:                                                ; preds = %1, %5
  %10 = phi i64 [ %8, %5 ], [ 0, %1 ], !dbg !1805
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !1802, metadata !DIExpression()), !dbg !1804
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1803, metadata !DIExpression()), !dbg !1804
  %11 = load i64, ptr @n_tabs_allocated, align 8, !dbg !1808, !tbaa !1396
  %12 = icmp eq i64 %2, %11, !dbg !1810
  br i1 %12, label %13, label %16, !dbg !1811

13:                                               ; preds = %9
  %14 = tail call nonnull ptr @xpalloc(ptr noundef %4, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #38, !dbg !1812
  store ptr %14, ptr @tab_list, align 8, !dbg !1813, !tbaa !1092
  %15 = load i64, ptr @first_free_tab, align 8, !dbg !1814, !tbaa !1396
  br label %16, !dbg !1815

16:                                               ; preds = %13, %9
  %17 = phi i64 [ %15, %13 ], [ %2, %9 ], !dbg !1814
  %18 = phi ptr [ %14, %13 ], [ %4, %9 ], !dbg !1806
  %19 = icmp sgt i64 %10, %0, !dbg !1816
  %20 = sub nsw i64 %0, %10, !dbg !1817
  %21 = select i1 %19, i64 0, i64 %20, !dbg !1817
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !1803, metadata !DIExpression()), !dbg !1804
  %22 = add nsw i64 %17, 1, !dbg !1814
  store i64 %22, ptr @first_free_tab, align 8, !dbg !1814, !tbaa !1396
  %23 = getelementptr inbounds i64, ptr %18, i64 %17, !dbg !1806
  store i64 %0, ptr %23, align 8, !dbg !1818, !tbaa !1396
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !1819, metadata !DIExpression()), !dbg !1822
  %24 = load i64, ptr @max_column_width, align 8, !dbg !1824, !tbaa !1396
  %25 = icmp slt i64 %24, %21, !dbg !1826
  br i1 %25, label %26, label %27, !dbg !1827

26:                                               ; preds = %16
  store i64 %21, ptr @max_column_width, align 8, !dbg !1828
  br label %27

27:                                               ; preds = %16, %26
  ret void, !dbg !1831
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_tab_stops(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !1832 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1834, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1835, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1836, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1837, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1838, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1839, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1840, metadata !DIExpression()), !dbg !1853
  br label %2, !dbg !1854

2:                                                ; preds = %117, %1
  %3 = phi i64 [ 0, %1 ], [ %118, %117 ], !dbg !1855
  %4 = phi i8 [ 0, %1 ], [ %119, %117 ], !dbg !1856
  %5 = phi i8 [ 0, %1 ], [ %120, %117 ], !dbg !1857
  %6 = phi ptr [ null, %1 ], [ %121, %117 ], !dbg !1858
  %7 = phi i8 [ 1, %1 ], [ %122, %117 ], !dbg !1859
  %8 = phi i8 [ 0, %1 ], [ %123, %117 ], !dbg !1853
  %9 = phi ptr [ %0, %1 ], [ %125, %117 ]
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1834, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata i8 %8, metadata !1835, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata i8 %7, metadata !1840, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1839, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata i8 %5, metadata !1838, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata i8 %4, metadata !1837, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1836, metadata !DIExpression()), !dbg !1853
  %10 = load i8, ptr %9, align 1, !dbg !1860, !tbaa !1172
  switch i8 %10, label %11 [
    i8 0, label %126
    i8 44, label %19
  ], !dbg !1861

11:                                               ; preds = %2
  %12 = tail call ptr @__ctype_b_loc() #41, !dbg !1862
  %13 = load ptr, ptr %12, align 8, !dbg !1862, !tbaa !1092
  %14 = zext i8 %10 to i64
  %15 = getelementptr inbounds i16, ptr %13, i64 %14, !dbg !1862
  %16 = load i16, ptr %15, align 2, !dbg !1862, !tbaa !1204
  %17 = and i16 %16, 1, !dbg !1862
  %18 = icmp eq i16 %17, 0, !dbg !1862
  br i1 %18, label %74, label %19, !dbg !1863

19:                                               ; preds = %2, %11
  %20 = and i8 %8, 1, !dbg !1864
  %21 = icmp eq i8 %20, 0, !dbg !1864
  br i1 %21, label %117, label %22, !dbg !1867

22:                                               ; preds = %19
  %23 = and i8 %4, 1, !dbg !1868
  %24 = icmp eq i8 %23, 0, !dbg !1868
  br i1 %24, label %35, label %25, !dbg !1871

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 %3, metadata !1872, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8 1, metadata !1877, metadata !DIExpression()), !dbg !1878
  %26 = load i64, ptr @extend_size, align 8, !dbg !1882, !tbaa !1396
  %27 = icmp eq i64 %26, 0, !dbg !1882
  br i1 %27, label %30, label %28, !dbg !1884

28:                                               ; preds = %25
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12.11, i32 noundef 5) #38, !dbg !1885
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %29) #38, !dbg !1885
  call void @llvm.dbg.value(metadata i8 0, metadata !1877, metadata !DIExpression()), !dbg !1878
  br label %30, !dbg !1887

30:                                               ; preds = %28, %25
  call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1878
  store i64 %3, ptr @extend_size, align 8, !dbg !1888, !tbaa !1396
  call void @llvm.dbg.value(metadata i64 %3, metadata !1819, metadata !DIExpression()), !dbg !1889
  %31 = load i64, ptr @max_column_width, align 8, !dbg !1891, !tbaa !1396
  %32 = icmp slt i64 %31, %3, !dbg !1892
  br i1 %32, label %33, label %34, !dbg !1893

33:                                               ; preds = %30
  store i64 %3, ptr @max_column_width, align 8, !dbg !1894
  br label %34

34:                                               ; preds = %30, %33
  br i1 %27, label %117, label %190, !dbg !1895

35:                                               ; preds = %22
  %36 = and i8 %5, 1, !dbg !1896
  %37 = icmp eq i8 %36, 0, !dbg !1896
  br i1 %37, label %48, label %38, !dbg !1898

38:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %3, metadata !1899, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i8 1, metadata !1902, metadata !DIExpression()), !dbg !1903
  %39 = load i64, ptr @increment_size, align 8, !dbg !1907, !tbaa !1396
  %40 = icmp eq i64 %39, 0, !dbg !1907
  br i1 %40, label %43, label %41, !dbg !1909

41:                                               ; preds = %38
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13.12, i32 noundef 5) #38, !dbg !1910
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %42) #38, !dbg !1910
  call void @llvm.dbg.value(metadata i8 0, metadata !1902, metadata !DIExpression()), !dbg !1903
  br label %43, !dbg !1912

43:                                               ; preds = %41, %38
  call void @llvm.dbg.value(metadata i8 poison, metadata !1902, metadata !DIExpression()), !dbg !1903
  store i64 %3, ptr @increment_size, align 8, !dbg !1913, !tbaa !1396
  call void @llvm.dbg.value(metadata i64 %3, metadata !1819, metadata !DIExpression()), !dbg !1914
  %44 = load i64, ptr @max_column_width, align 8, !dbg !1916, !tbaa !1396
  %45 = icmp slt i64 %44, %3, !dbg !1917
  br i1 %45, label %46, label %47, !dbg !1918

46:                                               ; preds = %43
  store i64 %3, ptr @max_column_width, align 8, !dbg !1919
  br label %47

47:                                               ; preds = %43, %46
  br i1 %40, label %117, label %190, !dbg !1920

48:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %3, metadata !1801, metadata !DIExpression()), !dbg !1921
  %49 = load i64, ptr @first_free_tab, align 8, !dbg !1923, !tbaa !1396
  %50 = icmp eq i64 %49, 0, !dbg !1923
  %51 = load ptr, ptr @tab_list, align 8, !dbg !1924, !tbaa !1092
  br i1 %50, label %56, label %52, !dbg !1923

52:                                               ; preds = %48
  %53 = getelementptr i64, ptr %51, i64 %49, !dbg !1925
  %54 = getelementptr i64, ptr %53, i64 -1, !dbg !1925
  %55 = load i64, ptr %54, align 8, !dbg !1925, !tbaa !1396
  br label %56, !dbg !1923

56:                                               ; preds = %52, %48
  %57 = phi i64 [ %55, %52 ], [ 0, %48 ], !dbg !1923
  call void @llvm.dbg.value(metadata i64 %57, metadata !1802, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 poison, metadata !1803, metadata !DIExpression()), !dbg !1921
  %58 = load i64, ptr @n_tabs_allocated, align 8, !dbg !1926, !tbaa !1396
  %59 = icmp eq i64 %49, %58, !dbg !1927
  br i1 %59, label %60, label %63, !dbg !1928

60:                                               ; preds = %56
  %61 = tail call nonnull ptr @xpalloc(ptr noundef %51, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #38, !dbg !1929
  store ptr %61, ptr @tab_list, align 8, !dbg !1930, !tbaa !1092
  %62 = load i64, ptr @first_free_tab, align 8, !dbg !1931, !tbaa !1396
  br label %63, !dbg !1932

63:                                               ; preds = %60, %56
  %64 = phi i64 [ %62, %60 ], [ %49, %56 ], !dbg !1931
  %65 = phi ptr [ %61, %60 ], [ %51, %56 ], !dbg !1924
  %66 = icmp sgt i64 %57, %3, !dbg !1933
  %67 = sub nsw i64 %3, %57, !dbg !1934
  %68 = select i1 %66, i64 0, i64 %67, !dbg !1934
  call void @llvm.dbg.value(metadata i64 %68, metadata !1803, metadata !DIExpression()), !dbg !1921
  %69 = add nsw i64 %64, 1, !dbg !1931
  store i64 %69, ptr @first_free_tab, align 8, !dbg !1931, !tbaa !1396
  %70 = getelementptr inbounds i64, ptr %65, i64 %64, !dbg !1924
  store i64 %3, ptr %70, align 8, !dbg !1935, !tbaa !1396
  call void @llvm.dbg.value(metadata i64 %68, metadata !1819, metadata !DIExpression()), !dbg !1936
  %71 = load i64, ptr @max_column_width, align 8, !dbg !1938, !tbaa !1396
  %72 = icmp slt i64 %71, %68, !dbg !1939
  br i1 %72, label %73, label %117, !dbg !1940

73:                                               ; preds = %63
  store i64 %68, ptr @max_column_width, align 8, !dbg !1941
  br label %117

74:                                               ; preds = %11
  switch i8 %10, label %87 [
    i8 47, label %75
    i8 43, label %81
  ], !dbg !1942

75:                                               ; preds = %74
  %76 = and i8 %8, 1, !dbg !1943
  %77 = icmp eq i8 %76, 0, !dbg !1943
  br i1 %77, label %117, label %78, !dbg !1946

78:                                               ; preds = %75
  %79 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #38, !dbg !1947
  %80 = tail call ptr @quote(ptr noundef nonnull %9) #38, !dbg !1947
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %79, ptr noundef %80) #38, !dbg !1947
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1840, metadata !DIExpression()), !dbg !1853
  br label %117, !dbg !1949

81:                                               ; preds = %74
  %82 = and i8 %8, 1, !dbg !1950
  %83 = icmp eq i8 %82, 0, !dbg !1950
  br i1 %83, label %117, label %84, !dbg !1953

84:                                               ; preds = %81
  %85 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.23, i32 noundef 5) #38, !dbg !1954
  %86 = tail call ptr @quote(ptr noundef nonnull %9) #38, !dbg !1954
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %85, ptr noundef %86) #38, !dbg !1954
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1840, metadata !DIExpression()), !dbg !1853
  br label %117, !dbg !1956

87:                                               ; preds = %74
  %88 = sext i8 %10 to i32, !dbg !1957
  tail call void @llvm.dbg.value(metadata i32 %88, metadata !1958, metadata !DIExpression()), !dbg !1964
  %89 = add nsw i32 %88, -48, !dbg !1966
  %90 = icmp ult i32 %89, 10, !dbg !1966
  br i1 %90, label %91, label %114, !dbg !1967

91:                                               ; preds = %87
  %92 = and i8 %8, 1, !dbg !1968
  %93 = icmp eq i8 %92, 0, !dbg !1968
  %94 = select i1 %93, i64 0, i64 %3, !dbg !1970
  %95 = select i1 %93, ptr %9, ptr %6, !dbg !1970
  %96 = select i1 %93, i8 1, i8 %8, !dbg !1970
  tail call void @llvm.dbg.value(metadata i8 %96, metadata !1835, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata ptr %95, metadata !1839, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1836, metadata !DIExpression()), !dbg !1853
  %97 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %94, i64 10), !dbg !1971
  %98 = extractvalue { i64, i1 } %97, 1, !dbg !1971
  %99 = extractvalue { i64, i1 } %97, 0, !dbg !1971
  tail call void @llvm.dbg.value(metadata i64 %99, metadata !1836, metadata !DIExpression()), !dbg !1853
  br i1 %98, label %106, label %100, !dbg !1971

100:                                              ; preds = %91
  %101 = sext i8 %10 to i64, !dbg !1971
  %102 = add nsw i64 %101, -48, !dbg !1971
  %103 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %99, i64 %102), !dbg !1971
  %104 = extractvalue { i64, i1 } %103, 1, !dbg !1971
  %105 = extractvalue { i64, i1 } %103, 0, !dbg !1971
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !1836, metadata !DIExpression()), !dbg !1853
  br i1 %104, label %106, label %117, !dbg !1972

106:                                              ; preds = %100, %91
  %107 = phi i64 [ %99, %91 ], [ %105, %100 ], !dbg !1971
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !1836, metadata !DIExpression()), !dbg !1853
  %108 = tail call i64 @strspn(ptr noundef %95, ptr noundef nonnull @.str.2.24) #39, !dbg !1973
  tail call void @llvm.dbg.value(metadata i64 %108, metadata !1841, metadata !DIExpression()), !dbg !1974
  %109 = tail call noalias nonnull ptr @ximemdup0(ptr noundef %95, i64 noundef %108) #38, !dbg !1975
  tail call void @llvm.dbg.value(metadata ptr %109, metadata !1852, metadata !DIExpression()), !dbg !1974
  %110 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3.25, i32 noundef 5) #38, !dbg !1976
  %111 = tail call ptr @quote(ptr noundef nonnull %109) #38, !dbg !1976
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %110, ptr noundef %111) #38, !dbg !1976
  tail call void @free(ptr noundef nonnull %109) #38, !dbg !1977
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1840, metadata !DIExpression()), !dbg !1853
  %112 = getelementptr inbounds i8, ptr %95, i64 %108, !dbg !1978
  %113 = getelementptr inbounds i8, ptr %112, i64 -1, !dbg !1979
  tail call void @llvm.dbg.value(metadata ptr %113, metadata !1834, metadata !DIExpression()), !dbg !1853
  br label %117, !dbg !1980

114:                                              ; preds = %87
  %115 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4.26, i32 noundef 5) #38, !dbg !1981
  %116 = tail call ptr @quote(ptr noundef nonnull %9) #38, !dbg !1981
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %115, ptr noundef %116) #38, !dbg !1981
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1840, metadata !DIExpression()), !dbg !1853
  br label %190, !dbg !1983

117:                                              ; preds = %73, %63, %81, %84, %75, %78, %19, %47, %34, %100, %106
  %118 = phi i64 [ %107, %106 ], [ %105, %100 ], [ %3, %34 ], [ %3, %47 ], [ %3, %19 ], [ %3, %78 ], [ %3, %75 ], [ %3, %84 ], [ %3, %81 ], [ %3, %63 ], [ %3, %73 ], !dbg !1853
  %119 = phi i8 [ %4, %106 ], [ %4, %100 ], [ %4, %34 ], [ %4, %47 ], [ %4, %19 ], [ 1, %78 ], [ 1, %75 ], [ 0, %84 ], [ 0, %81 ], [ %4, %63 ], [ %4, %73 ], !dbg !1853
  %120 = phi i8 [ %5, %106 ], [ %5, %100 ], [ %5, %34 ], [ %5, %47 ], [ %5, %19 ], [ 0, %78 ], [ 0, %75 ], [ 1, %84 ], [ 1, %81 ], [ %5, %63 ], [ %5, %73 ], !dbg !1853
  %121 = phi ptr [ %95, %106 ], [ %95, %100 ], [ %6, %34 ], [ %6, %47 ], [ %6, %19 ], [ %6, %78 ], [ %6, %75 ], [ %6, %84 ], [ %6, %81 ], [ %6, %63 ], [ %6, %73 ], !dbg !1858
  %122 = phi i8 [ 0, %106 ], [ %7, %100 ], [ %7, %34 ], [ %7, %47 ], [ %7, %19 ], [ 0, %78 ], [ %7, %75 ], [ 0, %84 ], [ %7, %81 ], [ %7, %63 ], [ %7, %73 ], !dbg !1853
  %123 = phi i8 [ %96, %106 ], [ %96, %100 ], [ 0, %34 ], [ 0, %47 ], [ 0, %19 ], [ %8, %78 ], [ %8, %75 ], [ %8, %84 ], [ %8, %81 ], [ 0, %63 ], [ 0, %73 ], !dbg !1853
  %124 = phi ptr [ %113, %106 ], [ %9, %100 ], [ %9, %34 ], [ %9, %47 ], [ %9, %19 ], [ %9, %78 ], [ %9, %75 ], [ %9, %84 ], [ %9, %81 ], [ %9, %63 ], [ %9, %73 ]
  tail call void @llvm.dbg.value(metadata ptr %124, metadata !1834, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata i8 %123, metadata !1835, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !1840, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata ptr %121, metadata !1839, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata i8 %120, metadata !1838, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata i8 %119, metadata !1837, metadata !DIExpression()), !dbg !1853
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !1836, metadata !DIExpression()), !dbg !1853
  %125 = getelementptr inbounds i8, ptr %124, i64 1, !dbg !1984
  tail call void @llvm.dbg.value(metadata ptr %125, metadata !1834, metadata !DIExpression()), !dbg !1853
  br label %2, !dbg !1985, !llvm.loop !1986

126:                                              ; preds = %2
  tail call void @llvm.dbg.value(metadata i8 %7, metadata !1840, metadata !DIExpression()), !dbg !1853
  %127 = and i8 %7, 1, !dbg !1988
  %128 = icmp eq i8 %127, 0, !dbg !1988
  %129 = and i8 %8, 1
  %130 = icmp eq i8 %129, 0
  %131 = select i1 %128, i1 true, i1 %130, !dbg !1990
  br i1 %131, label %186, label %132, !dbg !1990

132:                                              ; preds = %126
  %133 = and i8 %4, 1, !dbg !1991
  %134 = icmp eq i8 %133, 0, !dbg !1991
  br i1 %134, label %146, label %135, !dbg !1994

135:                                              ; preds = %132
  call void @llvm.dbg.value(metadata i64 %3, metadata !1872, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata i8 1, metadata !1877, metadata !DIExpression()), !dbg !1995
  %136 = load i64, ptr @extend_size, align 8, !dbg !1997, !tbaa !1396
  %137 = icmp eq i64 %136, 0, !dbg !1997
  br i1 %137, label %140, label %138, !dbg !1998

138:                                              ; preds = %135
  %139 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12.11, i32 noundef 5) #38, !dbg !1999
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %139) #38, !dbg !1999
  call void @llvm.dbg.value(metadata i8 0, metadata !1877, metadata !DIExpression()), !dbg !1995
  br label %140, !dbg !2000

140:                                              ; preds = %138, %135
  call void @llvm.dbg.value(metadata i8 poison, metadata !1877, metadata !DIExpression()), !dbg !1995
  store i64 %3, ptr @extend_size, align 8, !dbg !2001, !tbaa !1396
  call void @llvm.dbg.value(metadata i64 %3, metadata !1819, metadata !DIExpression()), !dbg !2002
  %141 = load i64, ptr @max_column_width, align 8, !dbg !2004, !tbaa !1396
  %142 = icmp slt i64 %141, %3, !dbg !2005
  br i1 %142, label %143, label %144, !dbg !2006

143:                                              ; preds = %140
  store i64 %3, ptr @max_column_width, align 8, !dbg !2007
  br label %144

144:                                              ; preds = %140, %143
  %145 = zext i1 %137 to i8, !dbg !2008
  tail call void @llvm.dbg.value(metadata i8 %145, metadata !1840, metadata !DIExpression()), !dbg !1853
  br label %186, !dbg !2009

146:                                              ; preds = %132
  %147 = and i8 %5, 1, !dbg !2010
  %148 = icmp eq i8 %147, 0, !dbg !2010
  br i1 %148, label %160, label %149, !dbg !2012

149:                                              ; preds = %146
  call void @llvm.dbg.value(metadata i64 %3, metadata !1899, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.value(metadata i8 1, metadata !1902, metadata !DIExpression()), !dbg !2013
  %150 = load i64, ptr @increment_size, align 8, !dbg !2015, !tbaa !1396
  %151 = icmp eq i64 %150, 0, !dbg !2015
  br i1 %151, label %154, label %152, !dbg !2016

152:                                              ; preds = %149
  %153 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13.12, i32 noundef 5) #38, !dbg !2017
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %153) #38, !dbg !2017
  call void @llvm.dbg.value(metadata i8 0, metadata !1902, metadata !DIExpression()), !dbg !2013
  br label %154, !dbg !2018

154:                                              ; preds = %152, %149
  call void @llvm.dbg.value(metadata i8 poison, metadata !1902, metadata !DIExpression()), !dbg !2013
  store i64 %3, ptr @increment_size, align 8, !dbg !2019, !tbaa !1396
  call void @llvm.dbg.value(metadata i64 %3, metadata !1819, metadata !DIExpression()), !dbg !2020
  %155 = load i64, ptr @max_column_width, align 8, !dbg !2022, !tbaa !1396
  %156 = icmp slt i64 %155, %3, !dbg !2023
  br i1 %156, label %157, label %158, !dbg !2024

157:                                              ; preds = %154
  store i64 %3, ptr @max_column_width, align 8, !dbg !2025
  br label %158

158:                                              ; preds = %154, %157
  %159 = zext i1 %151 to i8, !dbg !2026
  tail call void @llvm.dbg.value(metadata i8 %159, metadata !1840, metadata !DIExpression()), !dbg !1853
  br label %186, !dbg !2027

160:                                              ; preds = %146
  call void @llvm.dbg.value(metadata i64 %3, metadata !1801, metadata !DIExpression()), !dbg !2028
  %161 = load i64, ptr @first_free_tab, align 8, !dbg !2030, !tbaa !1396
  %162 = icmp eq i64 %161, 0, !dbg !2030
  %163 = load ptr, ptr @tab_list, align 8, !dbg !2031, !tbaa !1092
  br i1 %162, label %168, label %164, !dbg !2030

164:                                              ; preds = %160
  %165 = getelementptr i64, ptr %163, i64 %161, !dbg !2032
  %166 = getelementptr i64, ptr %165, i64 -1, !dbg !2032
  %167 = load i64, ptr %166, align 8, !dbg !2032, !tbaa !1396
  br label %168, !dbg !2030

168:                                              ; preds = %164, %160
  %169 = phi i64 [ %167, %164 ], [ 0, %160 ], !dbg !2030
  call void @llvm.dbg.value(metadata i64 %169, metadata !1802, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i64 poison, metadata !1803, metadata !DIExpression()), !dbg !2028
  %170 = load i64, ptr @n_tabs_allocated, align 8, !dbg !2033, !tbaa !1396
  %171 = icmp eq i64 %161, %170, !dbg !2034
  br i1 %171, label %172, label %175, !dbg !2035

172:                                              ; preds = %168
  %173 = tail call nonnull ptr @xpalloc(ptr noundef %163, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #38, !dbg !2036
  store ptr %173, ptr @tab_list, align 8, !dbg !2037, !tbaa !1092
  %174 = load i64, ptr @first_free_tab, align 8, !dbg !2038, !tbaa !1396
  br label %175, !dbg !2039

175:                                              ; preds = %172, %168
  %176 = phi i64 [ %174, %172 ], [ %161, %168 ], !dbg !2038
  %177 = phi ptr [ %173, %172 ], [ %163, %168 ], !dbg !2031
  %178 = icmp sgt i64 %169, %3, !dbg !2040
  %179 = sub nsw i64 %3, %169, !dbg !2041
  %180 = select i1 %178, i64 0, i64 %179, !dbg !2041
  call void @llvm.dbg.value(metadata i64 %180, metadata !1803, metadata !DIExpression()), !dbg !2028
  %181 = add nsw i64 %176, 1, !dbg !2038
  store i64 %181, ptr @first_free_tab, align 8, !dbg !2038, !tbaa !1396
  %182 = getelementptr inbounds i64, ptr %177, i64 %176, !dbg !2031
  store i64 %3, ptr %182, align 8, !dbg !2042, !tbaa !1396
  call void @llvm.dbg.value(metadata i64 %180, metadata !1819, metadata !DIExpression()), !dbg !2043
  %183 = load i64, ptr @max_column_width, align 8, !dbg !2045, !tbaa !1396
  %184 = icmp slt i64 %183, %180, !dbg !2046
  br i1 %184, label %185, label %186, !dbg !2047

185:                                              ; preds = %175
  store i64 %180, ptr @max_column_width, align 8, !dbg !2048
  br label %186

186:                                              ; preds = %185, %175, %144, %158, %126
  %187 = phi i8 [ %145, %144 ], [ %159, %158 ], [ %7, %126 ], [ %7, %175 ], [ %7, %185 ], !dbg !1853
  tail call void @llvm.dbg.value(metadata i8 %187, metadata !1840, metadata !DIExpression()), !dbg !1853
  %188 = and i8 %187, 1, !dbg !2049
  %189 = icmp eq i8 %188, 0, !dbg !2049
  br i1 %189, label %190, label %191, !dbg !2051

190:                                              ; preds = %34, %47, %114, %186
  tail call void @exit(i32 noundef 1) #40, !dbg !2052
  unreachable, !dbg !2052

191:                                              ; preds = %186
  ret void, !dbg !2053
}

; Function Attrs: nounwind uwtable
define dso_local void @finalize_tab_stops() local_unnamed_addr #10 !dbg !2054 {
  %1 = load ptr, ptr @tab_list, align 8, !dbg !2055, !tbaa !1092
  %2 = load i64, ptr @first_free_tab, align 8, !dbg !2056, !tbaa !1396
  call void @llvm.dbg.value(metadata ptr %1, metadata !2057, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64 %2, metadata !2064, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64 0, metadata !2065, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64 0, metadata !2066, metadata !DIExpression()), !dbg !2070
  %3 = icmp sgt i64 %2, 0, !dbg !2071
  br i1 %3, label %13, label %7, !dbg !2073

4:                                                ; preds = %21
  %5 = add nuw nsw i64 %14, 1, !dbg !2074
  call void @llvm.dbg.value(metadata i64 %5, metadata !2066, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %5, metadata !2066, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %17, metadata !2065, metadata !DIExpression()), !dbg !2068
  %6 = icmp eq i64 %5, %2, !dbg !2071
  br i1 %6, label %7, label %13, !dbg !2073, !llvm.loop !2075

7:                                                ; preds = %4, %0
  %8 = load i64, ptr @increment_size, align 8, !dbg !2077
  %9 = icmp ne i64 %8, 0, !dbg !2077
  %10 = load i64, ptr @extend_size, align 8
  %11 = icmp ne i64 %10, 0
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2079
  br i1 %12, label %25, label %27, !dbg !2079

13:                                               ; preds = %0, %4
  %14 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %15 = phi i64 [ %17, %4 ], [ 0, %0 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !2066, metadata !DIExpression()), !dbg !2070
  call void @llvm.dbg.value(metadata i64 %15, metadata !2065, metadata !DIExpression()), !dbg !2068
  %16 = getelementptr inbounds i64, ptr %1, i64 %14, !dbg !2080
  %17 = load i64, ptr %16, align 8, !dbg !2080, !tbaa !1396
  %18 = icmp eq i64 %17, 0, !dbg !2083
  br i1 %18, label %19, label %21, !dbg !2084

19:                                               ; preds = %13
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14.29, i32 noundef 5) #38, !dbg !2085
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %20) #38, !dbg !2085
  unreachable, !dbg !2085

21:                                               ; preds = %13
  %22 = icmp sgt i64 %17, %15, !dbg !2086
  call void @llvm.dbg.value(metadata i64 %17, metadata !2065, metadata !DIExpression()), !dbg !2068
  call void @llvm.dbg.value(metadata i64 %14, metadata !2066, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2070
  br i1 %22, label %4, label %23, !dbg !2088

23:                                               ; preds = %21
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15.30, i32 noundef 5) #38, !dbg !2089
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %24) #38, !dbg !2089
  unreachable, !dbg !2089

25:                                               ; preds = %7
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16.31, i32 noundef 5) #38, !dbg !2090
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %26) #38, !dbg !2090
  unreachable, !dbg !2090

27:                                               ; preds = %7
  %28 = icmp eq i64 %2, 0, !dbg !2091
  br i1 %28, label %29, label %34, !dbg !2093

29:                                               ; preds = %27
  %30 = icmp eq i64 %10, 0, !dbg !2094
  %31 = icmp eq i64 %8, 0, !dbg !2094
  %32 = select i1 %31, i64 8, i64 %8, !dbg !2094
  %33 = select i1 %30, i64 %32, i64 %10, !dbg !2094
  store i64 %33, ptr @max_column_width, align 8, !dbg !2095, !tbaa !1396
  br label %41, !dbg !2096

34:                                               ; preds = %27
  %35 = icmp ne i64 %2, 1, !dbg !2097
  %36 = or i64 %10, %8, !dbg !2099
  %37 = icmp ne i64 %36, 0, !dbg !2099
  %38 = select i1 %35, i1 true, i1 %37, !dbg !2099
  br i1 %38, label %41, label %39, !dbg !2099

39:                                               ; preds = %34
  %40 = load i64, ptr %1, align 8, !dbg !2100, !tbaa !1396
  br label %41, !dbg !2101

41:                                               ; preds = %34, %39, %29
  %42 = phi i64 [ %40, %39 ], [ %33, %29 ], [ 0, %34 ]
  store i64 %42, ptr @tab_size, align 8, !dbg !2102, !tbaa !1396
  ret void, !dbg !2103
}

; Function Attrs: nounwind uwtable
define dso_local i64 @get_next_tab_column(i64 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef nonnull writeonly %2) local_unnamed_addr #10 !dbg !2104 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !2110, metadata !DIExpression()), !dbg !2125
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !2111, metadata !DIExpression()), !dbg !2125
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2112, metadata !DIExpression()), !dbg !2125
  store i8 0, ptr %2, align 1, !dbg !2126, !tbaa !1342
  %4 = load i64, ptr @tab_size, align 8, !dbg !2127, !tbaa !1396
  %5 = icmp eq i64 %4, 0, !dbg !2127
  br i1 %5, label %6, label %12, !dbg !2128

6:                                                ; preds = %3
  %7 = load i64, ptr @first_free_tab, align 8, !tbaa !1396
  %8 = load i64, ptr %1, align 8, !tbaa !1396
  %9 = icmp slt i64 %8, %7, !dbg !2129
  br i1 %9, label %10, label %23, !dbg !2130

10:                                               ; preds = %6
  %11 = load ptr, ptr @tab_list, align 8, !tbaa !1092
  br label %15, !dbg !2130

12:                                               ; preds = %3
  %13 = srem i64 %0, %4, !dbg !2131
  %14 = sub nsw i64 %4, %13, !dbg !2132
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !2113, metadata !DIExpression()), !dbg !2125
  br label %41, !dbg !2133

15:                                               ; preds = %10, %20
  %16 = phi i64 [ %8, %10 ], [ %21, %20 ]
  %17 = getelementptr inbounds i64, ptr %11, i64 %16, !dbg !2134
  %18 = load i64, ptr %17, align 8, !dbg !2134, !tbaa !1396
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !2114, metadata !DIExpression()), !dbg !2135
  %19 = icmp sgt i64 %18, %0, !dbg !2136
  br i1 %19, label %49, label %20

20:                                               ; preds = %15
  %21 = add i64 %16, 1, !dbg !2138
  store i64 %21, ptr %1, align 8, !dbg !2138, !tbaa !1396
  %22 = icmp eq i64 %21, %7, !dbg !2129
  br i1 %22, label %23, label %15, !dbg !2130, !llvm.loop !2139

23:                                               ; preds = %20, %6
  %24 = load i64, ptr @extend_size, align 8, !dbg !2141, !tbaa !1396
  %25 = icmp eq i64 %24, 0, !dbg !2141
  br i1 %25, label %29, label %26, !dbg !2142

26:                                               ; preds = %23
  %27 = srem i64 %0, %24, !dbg !2143
  %28 = sub nsw i64 %24, %27, !dbg !2144
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !2113, metadata !DIExpression()), !dbg !2125
  br label %41, !dbg !2145

29:                                               ; preds = %23
  %30 = load i64, ptr @increment_size, align 8, !dbg !2146, !tbaa !1396
  %31 = icmp eq i64 %30, 0, !dbg !2146
  br i1 %31, label %40, label %32, !dbg !2147

32:                                               ; preds = %29
  %33 = load ptr, ptr @tab_list, align 8, !dbg !2148, !tbaa !1092
  %34 = getelementptr i64, ptr %33, i64 %7, !dbg !2148
  %35 = getelementptr i64, ptr %34, i64 -1, !dbg !2148
  %36 = load i64, ptr %35, align 8, !dbg !2148, !tbaa !1396
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2120, metadata !DIExpression()), !dbg !2149
  %37 = sub nsw i64 %0, %36, !dbg !2150
  %38 = srem i64 %37, %30, !dbg !2151
  %39 = sub nsw i64 %30, %38, !dbg !2152
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !2113, metadata !DIExpression()), !dbg !2125
  br label %41, !dbg !2153

40:                                               ; preds = %29
  store i8 1, ptr %2, align 1, !dbg !2154, !tbaa !1342
  tail call void @llvm.dbg.value(metadata i64 1, metadata !2113, metadata !DIExpression()), !dbg !2125
  br label %41

41:                                               ; preds = %26, %40, %32, %12
  %42 = phi i64 [ %14, %12 ], [ %28, %26 ], [ %39, %32 ], [ 1, %40 ], !dbg !2156
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !2113, metadata !DIExpression()), !dbg !2125
  %43 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 %42), !dbg !2157
  %44 = extractvalue { i64, i1 } %43, 1, !dbg !2157
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !2124, metadata !DIExpression()), !dbg !2125
  br i1 %44, label %45, label %47, !dbg !2159

45:                                               ; preds = %41
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5.34, i32 noundef 5) #38, !dbg !2160
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %46) #38, !dbg !2160
  unreachable, !dbg !2160

47:                                               ; preds = %41
  %48 = extractvalue { i64, i1 } %43, 0, !dbg !2157
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2124, metadata !DIExpression()), !dbg !2125
  br label %49

49:                                               ; preds = %15, %47
  %50 = phi i64 [ %48, %47 ], [ %18, %15 ], !dbg !2125
  ret i64 %50, !dbg !2161
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_file_list(ptr noundef %0) local_unnamed_addr #15 !dbg !2162 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2166, metadata !DIExpression()), !dbg !2167
  store i1 false, ptr @have_read_stdin, align 1, !dbg !2168
  %2 = icmp eq ptr %0, null, !dbg !2169
  %3 = select i1 %2, ptr @stdin_argv, ptr %0
  store ptr %3, ptr @file_list, align 8, !dbg !2171, !tbaa !1092
  ret void, !dbg !2172
}

; Function Attrs: nounwind uwtable
define dso_local ptr @next_file(ptr noundef %0) local_unnamed_addr #10 !dbg !495 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !533, metadata !DIExpression()), !dbg !2173
  %2 = icmp eq ptr %0, null, !dbg !2174
  br i1 %2, label %25, label %3, !dbg !2175

3:                                                ; preds = %1
  %4 = tail call ptr @__errno_location() #41, !dbg !2176
  %5 = load i32, ptr %4, align 4, !dbg !2176, !tbaa !1163
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !535, metadata !DIExpression()), !dbg !2177
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2178, metadata !DIExpression()), !dbg !2183
  %6 = load i32, ptr %0, align 8, !dbg !2186, !tbaa !1430
  %7 = and i32 %6, 32, !dbg !2187
  %8 = icmp eq i32 %7, 0, !dbg !2187
  %9 = select i1 %8, i32 0, i32 %5, !dbg !2188
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !535, metadata !DIExpression()), !dbg !2177
  %10 = load ptr, ptr @next_file.prev_file, align 8, !dbg !2189, !tbaa !1092
  call void @llvm.dbg.value(metadata ptr %10, metadata !2191, metadata !DIExpression()), !dbg !2195
  call void @llvm.dbg.value(metadata ptr @.str.6.37, metadata !2194, metadata !DIExpression()), !dbg !2195
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.6.37) #39, !dbg !2197
  %12 = icmp eq i32 %11, 0, !dbg !2198
  br i1 %12, label %13, label %14, !dbg !2199

13:                                               ; preds = %3
  tail call void @clearerr_unlocked(ptr noundef nonnull %0) #38, !dbg !2200
  br label %19, !dbg !2200

14:                                               ; preds = %3
  %15 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !2201
  %16 = icmp eq i32 %15, 0, !dbg !2203
  br i1 %16, label %19, label %17, !dbg !2204

17:                                               ; preds = %14
  %18 = load i32, ptr %4, align 4, !dbg !2205, !tbaa !1163
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !535, metadata !DIExpression()), !dbg !2177
  br label %19, !dbg !2206

19:                                               ; preds = %14, %17, %13
  %20 = phi i32 [ %9, %13 ], [ %18, %17 ], [ %9, %14 ], !dbg !2177
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !535, metadata !DIExpression()), !dbg !2177
  %21 = icmp eq i32 %20, 0, !dbg !2207
  br i1 %21, label %25, label %22, !dbg !2209

22:                                               ; preds = %19
  %23 = load ptr, ptr @next_file.prev_file, align 8, !dbg !2210, !tbaa !1092
  %24 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %23) #38, !dbg !2210
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %20, ptr noundef nonnull @.str.7.40, ptr noundef %24) #38, !dbg !2210
  store i32 1, ptr @exit_status, align 4, !dbg !2212, !tbaa !1163
  br label %25, !dbg !2213

25:                                               ; preds = %19, %22, %1
  %26 = load ptr, ptr @file_list, align 8, !dbg !2214, !tbaa !1092
  %27 = getelementptr inbounds ptr, ptr %26, i64 1, !dbg !2214
  store ptr %27, ptr @file_list, align 8, !dbg !2214, !tbaa !1092
  %28 = load ptr, ptr %26, align 8, !dbg !2215, !tbaa !1092
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !534, metadata !DIExpression()), !dbg !2173
  %29 = icmp eq ptr %28, null, !dbg !2216
  br i1 %29, label %50, label %30, !dbg !2217

30:                                               ; preds = %25, %42
  %31 = phi ptr [ %48, %42 ], [ %28, %25 ]
  call void @llvm.dbg.value(metadata ptr %31, metadata !2191, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata ptr @.str.6.37, metadata !2194, metadata !DIExpression()), !dbg !2218
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(2) @.str.6.37) #39, !dbg !2222
  %33 = icmp eq i32 %32, 0, !dbg !2223
  br i1 %33, label %34, label %36, !dbg !2224

34:                                               ; preds = %30
  store i1 true, ptr @have_read_stdin, align 1, !dbg !2225
  %35 = load ptr, ptr @stdin, align 8, !dbg !2227, !tbaa !1092
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !533, metadata !DIExpression()), !dbg !2173
  br label %38, !dbg !2228

36:                                               ; preds = %30
  %37 = tail call noalias ptr @rpl_fopen(ptr noundef nonnull %31, ptr noundef nonnull @.str.8.41) #38, !dbg !2229
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !533, metadata !DIExpression()), !dbg !2173
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %35, %34 ], [ %37, %36 ], !dbg !2230
  tail call void @llvm.dbg.value(metadata ptr %39, metadata !533, metadata !DIExpression()), !dbg !2173
  %40 = icmp eq ptr %39, null, !dbg !2231
  br i1 %40, label %42, label %41, !dbg !2233

41:                                               ; preds = %38
  store ptr %31, ptr @next_file.prev_file, align 8, !dbg !2234, !tbaa !1092
  tail call void @fadvise(ptr noundef nonnull %39, i32 noundef 2) #38, !dbg !2236
  br label %50, !dbg !2237

42:                                               ; preds = %38
  %43 = tail call ptr @__errno_location() #41, !dbg !2238
  %44 = load i32, ptr %43, align 4, !dbg !2238, !tbaa !1163
  %45 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef nonnull %31) #38, !dbg !2238
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %44, ptr noundef nonnull @.str.7.40, ptr noundef %45) #38, !dbg !2238
  store i32 1, ptr @exit_status, align 4, !dbg !2239, !tbaa !1163
  %46 = load ptr, ptr @file_list, align 8, !dbg !2214, !tbaa !1092
  %47 = getelementptr inbounds ptr, ptr %46, i64 1, !dbg !2214
  store ptr %47, ptr @file_list, align 8, !dbg !2214, !tbaa !1092
  %48 = load ptr, ptr %46, align 8, !dbg !2215, !tbaa !1092
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !534, metadata !DIExpression()), !dbg !2173
  %49 = icmp eq ptr %48, null, !dbg !2216
  br i1 %49, label %50, label %30, !dbg !2217, !llvm.loop !2240

50:                                               ; preds = %42, %25, %41
  %51 = phi ptr [ %39, %41 ], [ null, %25 ], [ null, %42 ], !dbg !2173
  ret ptr %51, !dbg !2242
}

; Function Attrs: nounwind uwtable
define dso_local void @cleanup_file_list_stdin() local_unnamed_addr #10 !dbg !2243 {
  %1 = load i1, ptr @have_read_stdin, align 1, !dbg !2244
  br i1 %1, label %2, label %9, !dbg !2246

2:                                                ; preds = %0
  %3 = load ptr, ptr @stdin, align 8, !dbg !2247, !tbaa !1092
  %4 = tail call i32 @rpl_fclose(ptr noundef %3) #38, !dbg !2248
  %5 = icmp eq i32 %4, 0, !dbg !2249
  br i1 %5, label %9, label %6, !dbg !2250

6:                                                ; preds = %2
  %7 = tail call ptr @__errno_location() #41, !dbg !2251
  %8 = load i32, ptr %7, align 4, !dbg !2251, !tbaa !1163
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %8, ptr noundef nonnull @.str.6.37) #38, !dbg !2251
  unreachable, !dbg !2251

9:                                                ; preds = %2, %0
  ret void, !dbg !2252
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_tab_list_info(ptr noundef %0) local_unnamed_addr #10 !dbg !2253 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2255, metadata !DIExpression()), !dbg !2256
  %2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9.46, i32 noundef 5) #38, !dbg !2257
  call void @llvm.dbg.value(metadata ptr %0, metadata !600, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata ptr %2, metadata !601, metadata !DIExpression()), !dbg !2258
  %3 = load i32, ptr @oputs_.help_no_sgr.47, align 4, !dbg !2260, !tbaa !1163
  %4 = icmp eq i32 %3, -1, !dbg !2261
  br i1 %4, label %5, label %17, !dbg !2262

5:                                                ; preds = %1
  %6 = tail call ptr @getenv(ptr noundef nonnull @.str.17.48) #38, !dbg !2263
  call void @llvm.dbg.value(metadata ptr %6, metadata !602, metadata !DIExpression()), !dbg !2264
  %7 = icmp eq ptr %6, null, !dbg !2265
  br i1 %7, label %15, label %8, !dbg !2266

8:                                                ; preds = %5
  %9 = load i8, ptr %6, align 1, !dbg !2267, !tbaa !1172
  %10 = icmp eq i8 %9, 0, !dbg !2267
  br i1 %10, label %15, label %11, !dbg !2268

11:                                               ; preds = %8
  call void @llvm.dbg.value(metadata ptr %6, metadata !2191, metadata !DIExpression()), !dbg !2269
  call void @llvm.dbg.value(metadata ptr @.str.18.49, metadata !2194, metadata !DIExpression()), !dbg !2269
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(5) @.str.18.49) #39, !dbg !2271
  %13 = icmp eq i32 %12, 0, !dbg !2272
  %14 = zext i1 %13 to i32, !dbg !2268
  br label %15, !dbg !2268

15:                                               ; preds = %11, %8, %5
  %16 = phi i32 [ 1, %8 ], [ 1, %5 ], [ %14, %11 ]
  store i32 %16, ptr @oputs_.help_no_sgr.47, align 4, !dbg !2273, !tbaa !1163
  br label %17, !dbg !2274

17:                                               ; preds = %15, %1
  %18 = phi i32 [ %16, %15 ], [ %3, %1 ], !dbg !2275
  %19 = icmp eq i32 %18, 0, !dbg !2275
  br i1 %19, label %23, label %20, !dbg !2277

20:                                               ; preds = %17
  %21 = load ptr, ptr @stdout, align 8, !dbg !2278, !tbaa !1092
  %22 = tail call i32 @fputs_unlocked(ptr noundef %2, ptr noundef %21), !dbg !2278
  br label %158, !dbg !2280

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 1, metadata !605, metadata !DIExpression()), !dbg !2258
  %24 = tail call i64 @strspn(ptr noundef %2, ptr noundef nonnull @.str.19.50) #39, !dbg !2281
  %25 = getelementptr inbounds i8, ptr %2, i64 %24, !dbg !2282
  call void @llvm.dbg.value(metadata ptr %25, metadata !606, metadata !DIExpression()), !dbg !2258
  %26 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 45) #39, !dbg !2283
  call void @llvm.dbg.value(metadata ptr %26, metadata !607, metadata !DIExpression()), !dbg !2258
  %27 = icmp eq ptr %26, null, !dbg !2284
  br i1 %27, label %56, label %28, !dbg !2285

28:                                               ; preds = %23
  %29 = icmp eq ptr %26, %25, !dbg !2286
  br i1 %29, label %56, label %30, !dbg !2287

30:                                               ; preds = %28
  call void @llvm.dbg.value(metadata ptr %25, metadata !608, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i64 0, metadata !612, metadata !DIExpression()), !dbg !2288
  %31 = icmp ult ptr %25, %26, !dbg !2289
  br i1 %31, label %32, label %52, !dbg !2290

32:                                               ; preds = %30
  %33 = tail call ptr @__ctype_b_loc() #41, !dbg !2258
  %34 = load ptr, ptr %33, align 8, !tbaa !1092
  br label %35, !dbg !2290

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %25, %32 ], [ %38, %35 ]
  %37 = phi i64 [ 0, %32 ], [ %46, %35 ]
  call void @llvm.dbg.value(metadata ptr %36, metadata !608, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i64 %37, metadata !612, metadata !DIExpression()), !dbg !2288
  %38 = getelementptr inbounds i8, ptr %36, i64 1, !dbg !2291
  call void @llvm.dbg.value(metadata ptr %38, metadata !608, metadata !DIExpression()), !dbg !2288
  %39 = load i8, ptr %36, align 1, !dbg !2291, !tbaa !1172
  %40 = sext i8 %39 to i64, !dbg !2291
  %41 = getelementptr inbounds i16, ptr %34, i64 %40, !dbg !2291
  %42 = load i16, ptr %41, align 2, !dbg !2291, !tbaa !1204
  %43 = lshr i16 %42, 13, !dbg !2292
  %44 = and i16 %43, 1, !dbg !2292
  %45 = zext nneg i16 %44 to i64
  %46 = add nuw nsw i64 %37, %45, !dbg !2293
  call void @llvm.dbg.value(metadata i64 %46, metadata !612, metadata !DIExpression()), !dbg !2288
  %47 = icmp ult ptr %38, %26, !dbg !2289
  %48 = icmp ult i64 %46, 2, !dbg !2294
  %49 = select i1 %47, i1 %48, i1 false, !dbg !2294
  br i1 %49, label %35, label %50, !dbg !2290, !llvm.loop !2295

50:                                               ; preds = %35
  %51 = icmp ne i64 %46, 2, !dbg !2296
  br label %52, !dbg !2296

52:                                               ; preds = %50, %30
  %53 = phi i1 [ true, %30 ], [ %51, %50 ], !dbg !2288
  %54 = select i1 %53, ptr %26, ptr %25, !dbg !2298
  %55 = zext i1 %53 to i8, !dbg !2298
  call void @llvm.dbg.value(metadata i8 %55, metadata !605, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata ptr %54, metadata !607, metadata !DIExpression()), !dbg !2258
  br label %56, !dbg !2299

56:                                               ; preds = %52, %28, %23
  %57 = phi ptr [ %54, %52 ], [ %25, %28 ], [ %25, %23 ], !dbg !2258
  %58 = phi i8 [ %55, %52 ], [ 1, %28 ], [ 0, %23 ], !dbg !2258
  call void @llvm.dbg.value(metadata i8 %58, metadata !605, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata ptr %57, metadata !607, metadata !DIExpression()), !dbg !2258
  %59 = tail call i64 @strcspn(ptr noundef %57, ptr noundef nonnull @.str.20.51) #39, !dbg !2300
  call void @llvm.dbg.value(metadata i64 %59, metadata !613, metadata !DIExpression()), !dbg !2258
  %60 = getelementptr inbounds i8, ptr %57, i64 %59, !dbg !2301
  call void @llvm.dbg.value(metadata ptr %60, metadata !614, metadata !DIExpression()), !dbg !2258
  br label %61, !dbg !2302

61:                                               ; preds = %94, %56
  %62 = phi ptr [ %60, %56 ], [ %95, %94 ], !dbg !2258
  %63 = phi i8 [ %58, %56 ], [ %71, %94 ], !dbg !2258
  call void @llvm.dbg.value(metadata i8 %63, metadata !605, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata ptr %62, metadata !614, metadata !DIExpression()), !dbg !2258
  %64 = load i8, ptr %62, align 1, !dbg !2303, !tbaa !1172
  switch i8 %64, label %70 [
    i8 0, label %96
    i8 10, label %96
    i8 45, label %65
  ], !dbg !2304

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !2305
  %67 = load i8, ptr %66, align 1, !dbg !2308, !tbaa !1172
  %68 = icmp eq i8 %67, 45, !dbg !2309
  %69 = select i1 %68, i8 0, i8 %63, !dbg !2310
  br label %70, !dbg !2310

70:                                               ; preds = %65, %61
  %71 = phi i8 [ %63, %61 ], [ %69, %65 ], !dbg !2258
  call void @llvm.dbg.value(metadata i8 %71, metadata !605, metadata !DIExpression()), !dbg !2258
  %72 = tail call ptr @__ctype_b_loc() #41, !dbg !2311
  %73 = load ptr, ptr %72, align 8, !dbg !2311, !tbaa !1092
  %74 = sext i8 %64 to i64, !dbg !2311
  %75 = getelementptr inbounds i16, ptr %73, i64 %74, !dbg !2311
  %76 = load i16, ptr %75, align 2, !dbg !2311, !tbaa !1204
  %77 = and i16 %76, 8192, !dbg !2311
  %78 = icmp eq i16 %77, 0, !dbg !2311
  br i1 %78, label %94, label %79, !dbg !2313

79:                                               ; preds = %70
  %80 = icmp eq i8 %64, 9, !dbg !2314
  br i1 %80, label %96, label %81, !dbg !2317

81:                                               ; preds = %79
  %82 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !2318
  %83 = load i8, ptr %82, align 1, !dbg !2318, !tbaa !1172
  %84 = sext i8 %83 to i64, !dbg !2318
  %85 = getelementptr inbounds i16, ptr %73, i64 %84, !dbg !2318
  %86 = load i16, ptr %85, align 2, !dbg !2318, !tbaa !1204
  %87 = and i16 %86, 8192, !dbg !2318
  %88 = icmp eq i16 %87, 0, !dbg !2318
  br i1 %88, label %89, label %96, !dbg !2319

89:                                               ; preds = %81
  %90 = and i8 %71, 1, !dbg !2320
  %91 = icmp ne i8 %90, 0, !dbg !2320
  %92 = icmp eq i8 %83, 45
  %93 = or i1 %91, %92, !dbg !2322
  br i1 %93, label %94, label %96, !dbg !2322

94:                                               ; preds = %89, %70
  %95 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !2323
  call void @llvm.dbg.value(metadata ptr %95, metadata !614, metadata !DIExpression()), !dbg !2258
  br label %61, !dbg !2302, !llvm.loop !2324

96:                                               ; preds = %89, %81, %79, %61, %61
  %97 = ptrtoint ptr %25 to i64, !dbg !2326
  %98 = load ptr, ptr @stdout, align 8, !dbg !2326, !tbaa !1092
  %99 = tail call i64 @fwrite_unlocked(ptr noundef %2, i64 noundef 1, i64 noundef %24, ptr noundef %98), !dbg !2326
  call void @llvm.dbg.value(metadata ptr %0, metadata !2191, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata ptr @.str.21.52, metadata !2194, metadata !DIExpression()), !dbg !2327
  %100 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.21.52) #39, !dbg !2329
  %101 = icmp eq i32 %100, 0, !dbg !2330
  br i1 %101, label %130, label %102, !dbg !2331

102:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %0, metadata !2191, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !2194, metadata !DIExpression()), !dbg !2332
  %103 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.23) #39, !dbg !2334
  %104 = icmp eq i32 %103, 0, !dbg !2335
  br i1 %104, label %130, label %105, !dbg !2336

105:                                              ; preds = %102
  call void @llvm.dbg.value(metadata ptr %0, metadata !2191, metadata !DIExpression()), !dbg !2337
  call void @llvm.dbg.value(metadata ptr @.str.25, metadata !2194, metadata !DIExpression()), !dbg !2337
  %106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.25) #39, !dbg !2339
  %107 = icmp eq i32 %106, 0, !dbg !2340
  br i1 %107, label %130, label %108, !dbg !2341

108:                                              ; preds = %105
  call void @llvm.dbg.value(metadata ptr %0, metadata !2191, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata ptr @.str.26, metadata !2194, metadata !DIExpression()), !dbg !2342
  %109 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.26) #39, !dbg !2344
  %110 = icmp eq i32 %109, 0, !dbg !2345
  br i1 %110, label %130, label %111, !dbg !2346

111:                                              ; preds = %108
  call void @llvm.dbg.value(metadata ptr %0, metadata !2191, metadata !DIExpression()), !dbg !2347
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !2194, metadata !DIExpression()), !dbg !2347
  %112 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.28) #39, !dbg !2349
  %113 = icmp eq i32 %112, 0, !dbg !2350
  br i1 %113, label %130, label %114, !dbg !2351

114:                                              ; preds = %111
  call void @llvm.dbg.value(metadata ptr %0, metadata !2191, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata ptr @.str.29, metadata !2194, metadata !DIExpression()), !dbg !2352
  %115 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.29) #39, !dbg !2354
  %116 = icmp eq i32 %115, 0, !dbg !2355
  br i1 %116, label %130, label %117, !dbg !2356

117:                                              ; preds = %114
  call void @llvm.dbg.value(metadata ptr %0, metadata !2191, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !2194, metadata !DIExpression()), !dbg !2357
  %118 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.30) #39, !dbg !2359
  %119 = icmp eq i32 %118, 0, !dbg !2360
  br i1 %119, label %130, label %120, !dbg !2361

120:                                              ; preds = %117
  call void @llvm.dbg.value(metadata ptr %0, metadata !2191, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !2194, metadata !DIExpression()), !dbg !2362
  %121 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.31) #39, !dbg !2364
  %122 = icmp eq i32 %121, 0, !dbg !2365
  br i1 %122, label %130, label %123, !dbg !2366

123:                                              ; preds = %120
  call void @llvm.dbg.value(metadata ptr %0, metadata !2191, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata ptr @.str.32, metadata !2194, metadata !DIExpression()), !dbg !2367
  %124 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.32) #39, !dbg !2369
  %125 = icmp eq i32 %124, 0, !dbg !2370
  br i1 %125, label %130, label %126, !dbg !2371

126:                                              ; preds = %123
  call void @llvm.dbg.value(metadata ptr %0, metadata !2191, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata ptr @.str.33, metadata !2194, metadata !DIExpression()), !dbg !2372
  %127 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.33) #39, !dbg !2374
  %128 = icmp eq i32 %127, 0, !dbg !2375
  %129 = select i1 %128, ptr @.str.27, ptr %0, !dbg !2376
  br label %130, !dbg !2371

130:                                              ; preds = %126, %123, %120, %117, %114, %111, %108, %105, %102, %96
  %131 = phi ptr [ @.str.22.53, %96 ], [ @.str.24, %102 ], [ @.str.24, %105 ], [ @.str.27, %108 ], [ @.str.27, %111 ], [ @.str.27, %114 ], [ @.str.27, %117 ], [ @.str.27, %120 ], [ %129, %126 ], [ @.str.27, %123 ], !dbg !2331
  call void @llvm.dbg.value(metadata ptr %131, metadata !619, metadata !DIExpression()), !dbg !2258
  %132 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(7) @.str.34, i64 noundef 6) #39, !dbg !2377
  %133 = icmp eq i32 %132, 0, !dbg !2377
  br i1 %133, label %137, label %134, !dbg !2379

134:                                              ; preds = %130
  %135 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(10) @.str.35.54, i64 noundef 9) #39, !dbg !2380
  %136 = icmp eq i32 %135, 0, !dbg !2380
  br i1 %136, label %137, label %140, !dbg !2381

137:                                              ; preds = %134, %130
  %138 = trunc i64 %59 to i32, !dbg !2382
  %139 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36.55, ptr noundef nonnull @.str.37.56, ptr noundef %131, ptr noundef %131, i32 noundef %138, ptr noundef %57) #38, !dbg !2382
  br label %143, !dbg !2384

140:                                              ; preds = %134
  %141 = trunc i64 %59 to i32, !dbg !2385
  %142 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38.57, ptr noundef nonnull @.str.39.58, ptr noundef %131, i32 noundef %141, ptr noundef %57) #38, !dbg !2385
  br label %143

143:                                              ; preds = %140, %137
  %144 = load ptr, ptr @stdout, align 8, !dbg !2387, !tbaa !1092
  %145 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40.59, ptr noundef %144), !dbg !2387
  %146 = load ptr, ptr @stdout, align 8, !dbg !2388, !tbaa !1092
  %147 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41.60, ptr noundef %146), !dbg !2388
  %148 = ptrtoint ptr %62 to i64, !dbg !2389
  %149 = sub i64 %148, %97, !dbg !2389
  %150 = load ptr, ptr @stdout, align 8, !dbg !2389, !tbaa !1092
  %151 = tail call i64 @fwrite_unlocked(ptr noundef %25, i64 noundef 1, i64 noundef %149, ptr noundef %150), !dbg !2389
  %152 = load ptr, ptr @stdout, align 8, !dbg !2390, !tbaa !1092
  %153 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42.61, ptr noundef %152), !dbg !2390
  %154 = load ptr, ptr @stdout, align 8, !dbg !2391, !tbaa !1092
  %155 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43.62, ptr noundef %154), !dbg !2391
  %156 = load ptr, ptr @stdout, align 8, !dbg !2392, !tbaa !1092
  %157 = tail call i32 @fputs_unlocked(ptr noundef nonnull %62, ptr noundef %156), !dbg !2392
  br label %158, !dbg !2393

158:                                              ; preds = %20, %143
  %159 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10.63, i32 noundef 5) #38, !dbg !2394
  %160 = load ptr, ptr @stdout, align 8, !dbg !2394, !tbaa !1092
  %161 = tail call i32 @fputs_unlocked(ptr noundef %159, ptr noundef %160), !dbg !2394
  ret void, !dbg !2395
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #15 !dbg !2396 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2398, metadata !DIExpression()), !dbg !2399
  store ptr %0, ptr @file_name, align 8, !dbg !2400, !tbaa !1092
  ret void, !dbg !2401
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #15 !dbg !2402 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2406, metadata !DIExpression()), !dbg !2407
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !2408, !tbaa !1342
  ret void, !dbg !2409
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2410 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2415, !tbaa !1092
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !2416
  %3 = icmp eq i32 %2, 0, !dbg !2417
  br i1 %3, label %22, label %4, !dbg !2418

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !2419, !tbaa !1342, !range !1583, !noundef !1130
  %6 = icmp eq i8 %5, 0, !dbg !2419
  br i1 %6, label %11, label %7, !dbg !2420

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !2421
  %9 = load i32, ptr %8, align 4, !dbg !2421, !tbaa !1163
  %10 = icmp eq i32 %9, 32, !dbg !2422
  br i1 %10, label %22, label %11, !dbg !2423

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1.70, i32 noundef 5) #38, !dbg !2424
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !2412, metadata !DIExpression()), !dbg !2425
  %13 = load ptr, ptr @file_name, align 8, !dbg !2426, !tbaa !1092
  %14 = icmp eq ptr %13, null, !dbg !2426
  %15 = tail call ptr @__errno_location() #41, !dbg !2428
  %16 = load i32, ptr %15, align 4, !dbg !2428, !tbaa !1163
  br i1 %14, label %19, label %17, !dbg !2429

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !2430
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.71, ptr noundef %18, ptr noundef %12) #38, !dbg !2430
  br label %20, !dbg !2430

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.72, ptr noundef %12) #38, !dbg !2431
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2432, !tbaa !1163
  tail call void @_exit(i32 noundef %21) #40, !dbg !2433
  unreachable, !dbg !2433

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2434, !tbaa !1092
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !2436
  %25 = icmp eq i32 %24, 0, !dbg !2437
  br i1 %25, label %28, label %26, !dbg !2438

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2439, !tbaa !1163
  tail call void @_exit(i32 noundef %27) #40, !dbg !2440
  unreachable, !dbg !2440

28:                                               ; preds = %22
  ret void, !dbg !2441
}

; Function Attrs: noreturn
declare !dbg !2442 void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #17 !dbg !2444 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2448, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2449, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2450, metadata !DIExpression()), !dbg !2452
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2451, metadata !DIExpression()), !dbg !2452
  tail call fastcc void @flush_stdout(), !dbg !2453
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2454, !tbaa !1092
  %6 = icmp eq ptr %5, null, !dbg !2454
  br i1 %6, label %8, label %7, !dbg !2456

7:                                                ; preds = %4
  tail call void %5() #38, !dbg !2457
  br label %12, !dbg !2457

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2458, !tbaa !1092
  %10 = tail call ptr @getprogname() #39, !dbg !2458
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.73, ptr noundef %10) #38, !dbg !2458
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2460
  ret void, !dbg !2461
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2462 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2464, metadata !DIExpression()), !dbg !2465
  call void @llvm.dbg.value(metadata i32 1, metadata !2466, metadata !DIExpression()), !dbg !2471
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !2474
  %2 = icmp slt i32 %1, 0, !dbg !2475
  br i1 %2, label %6, label %3, !dbg !2476

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2477, !tbaa !1092
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !2477
  br label %6, !dbg !2477

6:                                                ; preds = %3, %0
  ret void, !dbg !2478
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2479 {
  %5 = alloca [1024 x i8], align 16, !DIAssignID !2485
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2481, metadata !DIExpression()), !dbg !2486
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2482, metadata !DIExpression()), !dbg !2486
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2483, metadata !DIExpression()), !dbg !2486
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2484, metadata !DIExpression()), !dbg !2486
  %6 = load ptr, ptr @stderr, align 8, !dbg !2487, !tbaa !1092
  call void @llvm.dbg.value(metadata ptr %6, metadata !2488, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata ptr %2, metadata !2528, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata ptr %3, metadata !2529, metadata !DIExpression()), !dbg !2530
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #38, !dbg !2532
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2533, !tbaa !1163
  %9 = add i32 %8, 1, !dbg !2533
  store i32 %9, ptr @error_message_count, align 4, !dbg !2533, !tbaa !1163
  %10 = icmp eq i32 %1, 0, !dbg !2534
  br i1 %10, label %20, label %11, !dbg !2536

11:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2537, metadata !DIExpression(), metadata !2485, metadata ptr %5, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i32 %1, metadata !2540, metadata !DIExpression()), !dbg !2545
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !2547
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !2548
  call void @llvm.dbg.value(metadata ptr %12, metadata !2541, metadata !DIExpression()), !dbg !2545
  %13 = icmp eq ptr %12, null, !dbg !2549
  br i1 %13, label %14, label %16, !dbg !2551

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.74, ptr noundef nonnull @.str.5.75, i32 noundef 5) #38, !dbg !2552
  call void @llvm.dbg.value(metadata ptr %15, metadata !2541, metadata !DIExpression()), !dbg !2545
  br label %16, !dbg !2553

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2545
  call void @llvm.dbg.value(metadata ptr %17, metadata !2541, metadata !DIExpression()), !dbg !2545
  %18 = load ptr, ptr @stderr, align 8, !dbg !2554, !tbaa !1092
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.76, ptr noundef %17) #38, !dbg !2554
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !2555
  br label %20, !dbg !2556

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2557, !tbaa !1092
  call void @llvm.dbg.value(metadata i32 10, metadata !2558, metadata !DIExpression()), !dbg !2564
  call void @llvm.dbg.value(metadata ptr %21, metadata !2563, metadata !DIExpression()), !dbg !2564
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2566
  %23 = load ptr, ptr %22, align 8, !dbg !2566, !tbaa !1621
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2566
  %25 = load ptr, ptr %24, align 8, !dbg !2566, !tbaa !1622
  %26 = icmp ult ptr %23, %25, !dbg !2566
  br i1 %26, label %29, label %27, !dbg !2566, !prof !1623

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #38, !dbg !2566
  br label %31, !dbg !2566

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2566
  store ptr %30, ptr %22, align 8, !dbg !2566, !tbaa !1621
  store i8 10, ptr %23, align 1, !dbg !2566, !tbaa !1172
  br label %31, !dbg !2566

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2567, !tbaa !1092
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #38, !dbg !2567
  %34 = icmp eq i32 %0, 0, !dbg !2568
  br i1 %34, label %36, label %35, !dbg !2570

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #40, !dbg !2571
  unreachable, !dbg !2571

36:                                               ; preds = %31
  ret void, !dbg !2572
}

declare !dbg !2573 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2576 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2579 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2583 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2596
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2590, metadata !DIExpression(), metadata !2596, metadata ptr %4, metadata !DIExpression()), !dbg !2597
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2587, metadata !DIExpression()), !dbg !2597
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2588, metadata !DIExpression()), !dbg !2597
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2589, metadata !DIExpression()), !dbg !2597
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #38, !dbg !2598
  call void @llvm.va_start(ptr nonnull %4), !dbg !2599
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #44, !dbg !2600
  call void @llvm.va_end(ptr nonnull %4), !dbg !2601
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #38, !dbg !2602
  ret void, !dbg !2602
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #17 !dbg !711 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !722, metadata !DIExpression()), !dbg !2603
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !723, metadata !DIExpression()), !dbg !2603
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !724, metadata !DIExpression()), !dbg !2603
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !725, metadata !DIExpression()), !dbg !2603
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !726, metadata !DIExpression()), !dbg !2603
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !727, metadata !DIExpression()), !dbg !2603
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2604, !tbaa !1163
  %8 = icmp eq i32 %7, 0, !dbg !2604
  br i1 %8, label %23, label %9, !dbg !2606

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2607, !tbaa !1163
  %11 = icmp eq i32 %10, %3, !dbg !2610
  br i1 %11, label %12, label %22, !dbg !2611

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2612, !tbaa !1092
  %14 = icmp eq ptr %13, %2, !dbg !2613
  br i1 %14, label %36, label %15, !dbg !2614

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2615
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2616
  br i1 %18, label %19, label %22, !dbg !2616

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2617
  %21 = icmp eq i32 %20, 0, !dbg !2618
  br i1 %21, label %36, label %22, !dbg !2619

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2620, !tbaa !1092
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2621, !tbaa !1163
  br label %23, !dbg !2622

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2623
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2624, !tbaa !1092
  %25 = icmp eq ptr %24, null, !dbg !2624
  br i1 %25, label %27, label %26, !dbg !2626

26:                                               ; preds = %23
  tail call void %24() #38, !dbg !2627
  br label %31, !dbg !2627

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2628, !tbaa !1092
  %29 = tail call ptr @getprogname() #39, !dbg !2628
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.79, ptr noundef %29) #38, !dbg !2628
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2630, !tbaa !1092
  %33 = icmp eq ptr %2, null, !dbg !2630
  %34 = select i1 %33, ptr @.str.3.80, ptr @.str.2.81, !dbg !2630
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #38, !dbg !2630
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2631
  br label %36, !dbg !2632

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2632
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2633 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !2643
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2642, metadata !DIExpression(), metadata !2643, metadata ptr %6, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2637, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2638, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2639, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2640, metadata !DIExpression()), !dbg !2644
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2641, metadata !DIExpression()), !dbg !2644
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #38, !dbg !2645
  call void @llvm.va_start(ptr nonnull %6), !dbg !2646
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #44, !dbg !2647
  call void @llvm.va_end(ptr nonnull %6), !dbg !2648
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #38, !dbg !2649
  ret void, !dbg !2649
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2650 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2656, metadata !DIExpression()), !dbg !2660
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2657, metadata !DIExpression()), !dbg !2660
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2658, metadata !DIExpression()), !dbg !2660
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2659, metadata !DIExpression()), !dbg !2660
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #38, !dbg !2661
  ret void, !dbg !2662
}

; Function Attrs: nounwind
declare !dbg !2663 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2666 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2704, metadata !DIExpression()), !dbg !2706
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2705, metadata !DIExpression()), !dbg !2706
  %3 = icmp eq ptr %0, null, !dbg !2707
  br i1 %3, label %7, label %4, !dbg !2709

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2710
  call void @llvm.dbg.value(metadata i32 %5, metadata !2656, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i64 0, metadata !2657, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i64 0, metadata !2658, metadata !DIExpression()), !dbg !2711
  call void @llvm.dbg.value(metadata i32 %1, metadata !2659, metadata !DIExpression()), !dbg !2711
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #38, !dbg !2713
  br label %7, !dbg !2714

7:                                                ; preds = %4, %2
  ret void, !dbg !2715
}

; Function Attrs: nofree nounwind
declare !dbg !2716 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2719 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2757, metadata !DIExpression()), !dbg !2761
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2758, metadata !DIExpression()), !dbg !2761
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2762
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2759, metadata !DIExpression()), !dbg !2761
  %3 = icmp slt i32 %2, 0, !dbg !2763
  br i1 %3, label %4, label %6, !dbg !2765

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2766
  br label %24, !dbg !2767

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2768
  %8 = icmp eq i32 %7, 0, !dbg !2768
  br i1 %8, label %13, label %9, !dbg !2770

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2771
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !2772
  %12 = icmp eq i64 %11, -1, !dbg !2773
  br i1 %12, label %16, label %13, !dbg !2774

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !2775
  %15 = icmp eq i32 %14, 0, !dbg !2775
  br i1 %15, label %16, label %18, !dbg !2776

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2758, metadata !DIExpression()), !dbg !2761
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2760, metadata !DIExpression()), !dbg !2761
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2777
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !2760, metadata !DIExpression()), !dbg !2761
  br label %24, !dbg !2778

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !2779
  %20 = load i32, ptr %19, align 4, !dbg !2779, !tbaa !1163
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2758, metadata !DIExpression()), !dbg !2761
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2760, metadata !DIExpression()), !dbg !2761
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2777
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !2760, metadata !DIExpression()), !dbg !2761
  %22 = icmp eq i32 %20, 0, !dbg !2780
  br i1 %22, label %24, label %23, !dbg !2778

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2782, !tbaa !1163
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !2760, metadata !DIExpression()), !dbg !2761
  br label %24, !dbg !2784

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2761
  ret i32 %25, !dbg !2785
}

; Function Attrs: nofree nounwind
declare !dbg !2786 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2787 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2789 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2792 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2830, metadata !DIExpression()), !dbg !2831
  %2 = icmp eq ptr %0, null, !dbg !2832
  br i1 %2, label %6, label %3, !dbg !2834

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2835
  %5 = icmp eq i32 %4, 0, !dbg !2835
  br i1 %5, label %6, label %8, !dbg !2836

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2837
  br label %16, !dbg !2838

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2839, metadata !DIExpression()), !dbg !2844
  %9 = load i32, ptr %0, align 8, !dbg !2846, !tbaa !1430
  %10 = and i32 %9, 256, !dbg !2848
  %11 = icmp eq i32 %10, 0, !dbg !2848
  br i1 %11, label %14, label %12, !dbg !2849

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !2850
  br label %14, !dbg !2850

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2851
  br label %16, !dbg !2852

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2831
  ret i32 %17, !dbg !2853
}

; Function Attrs: nofree nounwind
declare !dbg !2854 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2855 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2893, metadata !DIExpression()), !dbg !2894
  tail call void @__fpurge(ptr noundef nonnull %0) #38, !dbg !2895
  ret i32 0, !dbg !2896
}

; Function Attrs: nounwind
declare !dbg !2897 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2900 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2938, metadata !DIExpression()), !dbg !2944
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2939, metadata !DIExpression()), !dbg !2944
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2940, metadata !DIExpression()), !dbg !2944
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2945
  %5 = load ptr, ptr %4, align 8, !dbg !2945, !tbaa !2946
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2947
  %7 = load ptr, ptr %6, align 8, !dbg !2947, !tbaa !2948
  %8 = icmp eq ptr %5, %7, !dbg !2949
  br i1 %8, label %9, label %27, !dbg !2950

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2951
  %11 = load ptr, ptr %10, align 8, !dbg !2951, !tbaa !1621
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2952
  %13 = load ptr, ptr %12, align 8, !dbg !2952, !tbaa !2953
  %14 = icmp eq ptr %11, %13, !dbg !2954
  br i1 %14, label %15, label %27, !dbg !2955

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2956
  %17 = load ptr, ptr %16, align 8, !dbg !2956, !tbaa !2957
  %18 = icmp eq ptr %17, null, !dbg !2958
  br i1 %18, label %19, label %27, !dbg !2959

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2960
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !2961
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2941, metadata !DIExpression()), !dbg !2962
  %22 = icmp eq i64 %21, -1, !dbg !2963
  br i1 %22, label %29, label %23, !dbg !2965

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2966, !tbaa !1430
  %25 = and i32 %24, -17, !dbg !2966
  store i32 %25, ptr %0, align 8, !dbg !2966, !tbaa !1430
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2967
  store i64 %21, ptr %26, align 8, !dbg !2968, !tbaa !2969
  br label %29, !dbg !2970

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2971
  br label %29, !dbg !2972

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2944
  ret i32 %30, !dbg !2973
}

; Function Attrs: nofree nounwind
declare !dbg !2974 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !2977 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2980, !tbaa !1092
  ret ptr %1, !dbg !2981
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !2982 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2984, metadata !DIExpression()), !dbg !2987
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !2988
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2985, metadata !DIExpression()), !dbg !2987
  %3 = icmp eq ptr %2, null, !dbg !2989
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2989
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2989
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2986, metadata !DIExpression()), !dbg !2987
  %6 = ptrtoint ptr %5 to i64, !dbg !2990
  %7 = ptrtoint ptr %0 to i64, !dbg !2990
  %8 = sub i64 %6, %7, !dbg !2990
  %9 = icmp sgt i64 %8, 6, !dbg !2992
  br i1 %9, label %10, label %19, !dbg !2993

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2994
  call void @llvm.dbg.value(metadata ptr %11, metadata !2995, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata ptr @.str.100, metadata !3000, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.value(metadata i64 7, metadata !3001, metadata !DIExpression()), !dbg !3002
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.100, i64 7), !dbg !3004
  %13 = icmp eq i32 %12, 0, !dbg !3005
  br i1 %13, label %14, label %19, !dbg !3006

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2984, metadata !DIExpression()), !dbg !2987
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.101, i64 noundef 3) #39, !dbg !3007
  %16 = icmp eq i32 %15, 0, !dbg !3010
  %17 = select i1 %16, i64 3, i64 0, !dbg !3011
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !3011
  br label %19, !dbg !3011

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2987
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2986, metadata !DIExpression()), !dbg !2987
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2984, metadata !DIExpression()), !dbg !2987
  store ptr %20, ptr @program_name, align 8, !dbg !3012, !tbaa !1092
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !3013, !tbaa !1092
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !3014, !tbaa !1092
  ret void, !dbg !3015
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3016 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !759 {
  %3 = alloca i32, align 4, !DIAssignID !3017
  call void @llvm.dbg.assign(metadata i1 undef, metadata !769, metadata !DIExpression(), metadata !3017, metadata ptr %3, metadata !DIExpression()), !dbg !3018
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3019
  call void @llvm.dbg.assign(metadata i1 undef, metadata !770, metadata !DIExpression(), metadata !3019, metadata ptr %4, metadata !DIExpression()), !dbg !3018
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !766, metadata !DIExpression()), !dbg !3018
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !767, metadata !DIExpression()), !dbg !3018
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !3020
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !768, metadata !DIExpression()), !dbg !3018
  %6 = icmp eq ptr %5, %0, !dbg !3021
  br i1 %6, label %7, label %14, !dbg !3023

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !3024
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !3025
  call void @llvm.dbg.value(metadata ptr %4, metadata !3026, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata ptr %4, metadata !3035, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 0, metadata !3040, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i64 8, metadata !3041, metadata !DIExpression()), !dbg !3042
  store i64 0, ptr %4, align 8, !dbg !3044
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !3045
  %9 = icmp eq i64 %8, 2, !dbg !3047
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !3048
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !3018
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !3049
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !3049
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !3018
  ret ptr %15, !dbg !3049
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !3050 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3055, metadata !DIExpression()), !dbg !3058
  %2 = tail call ptr @__errno_location() #41, !dbg !3059
  %3 = load i32, ptr %2, align 4, !dbg !3059, !tbaa !1163
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !3056, metadata !DIExpression()), !dbg !3058
  %4 = icmp eq ptr %0, null, !dbg !3060
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3060
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #45, !dbg !3061
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3057, metadata !DIExpression()), !dbg !3058
  store i32 %3, ptr %2, align 4, !dbg !3062, !tbaa !1163
  ret ptr %6, !dbg !3063
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !3064 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3070, metadata !DIExpression()), !dbg !3071
  %2 = icmp eq ptr %0, null, !dbg !3072
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !3072
  %4 = load i32, ptr %3, align 8, !dbg !3073, !tbaa !3074
  ret i32 %4, !dbg !3076
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !3077 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3081, metadata !DIExpression()), !dbg !3083
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3082, metadata !DIExpression()), !dbg !3083
  %3 = icmp eq ptr %0, null, !dbg !3084
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3084
  store i32 %1, ptr %4, align 8, !dbg !3085, !tbaa !3074
  ret void, !dbg !3086
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #24 !dbg !3087 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3091, metadata !DIExpression()), !dbg !3099
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3092, metadata !DIExpression()), !dbg !3099
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !3093, metadata !DIExpression()), !dbg !3099
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3094, metadata !DIExpression()), !dbg !3099
  %4 = icmp eq ptr %0, null, !dbg !3100
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3100
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3101
  %7 = lshr i8 %1, 5, !dbg !3102
  %8 = zext nneg i8 %7 to i64, !dbg !3102
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !3103
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3095, metadata !DIExpression()), !dbg !3099
  %10 = and i8 %1, 31, !dbg !3104
  %11 = zext nneg i8 %10 to i32, !dbg !3104
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !3097, metadata !DIExpression()), !dbg !3099
  %12 = load i32, ptr %9, align 4, !dbg !3105, !tbaa !1163
  %13 = lshr i32 %12, %11, !dbg !3106
  %14 = and i32 %13, 1, !dbg !3107
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !3098, metadata !DIExpression()), !dbg !3099
  %15 = xor i32 %13, %2, !dbg !3108
  %16 = and i32 %15, 1, !dbg !3108
  %17 = shl nuw i32 %16, %11, !dbg !3109
  %18 = xor i32 %17, %12, !dbg !3110
  store i32 %18, ptr %9, align 4, !dbg !3110, !tbaa !1163
  ret i32 %14, !dbg !3111
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !3112 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3116, metadata !DIExpression()), !dbg !3119
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3117, metadata !DIExpression()), !dbg !3119
  %3 = icmp eq ptr %0, null, !dbg !3120
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3122
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3116, metadata !DIExpression()), !dbg !3119
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !3123
  %6 = load i32, ptr %5, align 4, !dbg !3123, !tbaa !3124
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !3118, metadata !DIExpression()), !dbg !3119
  store i32 %1, ptr %5, align 4, !dbg !3125, !tbaa !3124
  ret i32 %6, !dbg !3126
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3127 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3131, metadata !DIExpression()), !dbg !3134
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3132, metadata !DIExpression()), !dbg !3134
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3133, metadata !DIExpression()), !dbg !3134
  %4 = icmp eq ptr %0, null, !dbg !3135
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3137
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3131, metadata !DIExpression()), !dbg !3134
  store i32 10, ptr %5, align 8, !dbg !3138, !tbaa !3074
  %6 = icmp ne ptr %1, null, !dbg !3139
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3141
  br i1 %8, label %10, label %9, !dbg !3141

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3142
  unreachable, !dbg !3142

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3143
  store ptr %1, ptr %11, align 8, !dbg !3144, !tbaa !3145
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3146
  store ptr %2, ptr %12, align 8, !dbg !3147, !tbaa !3148
  ret void, !dbg !3149
}

; Function Attrs: noreturn nounwind
declare !dbg !3150 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3151 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3155, metadata !DIExpression()), !dbg !3163
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3156, metadata !DIExpression()), !dbg !3163
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3157, metadata !DIExpression()), !dbg !3163
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3158, metadata !DIExpression()), !dbg !3163
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3159, metadata !DIExpression()), !dbg !3163
  %6 = icmp eq ptr %4, null, !dbg !3164
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !3164
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3160, metadata !DIExpression()), !dbg !3163
  %8 = tail call ptr @__errno_location() #41, !dbg !3165
  %9 = load i32, ptr %8, align 4, !dbg !3165, !tbaa !1163
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !3161, metadata !DIExpression()), !dbg !3163
  %10 = load i32, ptr %7, align 8, !dbg !3166, !tbaa !3074
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !3167
  %12 = load i32, ptr %11, align 4, !dbg !3167, !tbaa !3124
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !3168
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !3169
  %15 = load ptr, ptr %14, align 8, !dbg !3169, !tbaa !3145
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !3170
  %17 = load ptr, ptr %16, align 8, !dbg !3170, !tbaa !3148
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !3171
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !3162, metadata !DIExpression()), !dbg !3163
  store i32 %9, ptr %8, align 4, !dbg !3172, !tbaa !1163
  ret i64 %18, !dbg !3173
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !3174 {
  %10 = alloca i32, align 4, !DIAssignID !3242
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3243
  %12 = alloca i32, align 4, !DIAssignID !3244
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3245
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3246
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3220, metadata !DIExpression(), metadata !3246, metadata ptr %14, metadata !DIExpression()), !dbg !3247
  %15 = alloca i32, align 4, !DIAssignID !3248
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3223, metadata !DIExpression(), metadata !3248, metadata ptr %15, metadata !DIExpression()), !dbg !3249
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3180, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3181, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3182, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3183, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3184, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !3185, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3186, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3187, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3188, metadata !DIExpression()), !dbg !3250
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !3251
  %17 = icmp eq i64 %16, 1, !dbg !3252
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !3189, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3190, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3191, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3192, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3193, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3194, metadata !DIExpression()), !dbg !3250
  %18 = trunc i32 %5 to i8, !dbg !3253
  %19 = lshr i8 %18, 1, !dbg !3253
  %20 = and i8 %19, 1, !dbg !3253
  tail call void @llvm.dbg.value(metadata i8 %20, metadata !3195, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3196, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3197, metadata !DIExpression()), !dbg !3250
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !3254

28:                                               ; preds = %627, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %627 ]
  %30 = phi ptr [ %7, %9 ], [ %116, %627 ]
  %31 = phi ptr [ %8, %9 ], [ %117, %627 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %627 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %627 ], !dbg !3255
  %34 = phi ptr [ null, %9 ], [ %119, %627 ], !dbg !3256
  %35 = phi i64 [ 0, %9 ], [ %120, %627 ], !dbg !3257
  %36 = phi i8 [ 0, %9 ], [ %121, %627 ], !dbg !3258
  %37 = phi i8 [ %20, %9 ], [ %122, %627 ], !dbg !3250
  %38 = phi i8 [ 0, %9 ], [ %142, %627 ], !dbg !3259
  %39 = phi i8 [ 1, %9 ], [ %143, %627 ], !dbg !3260
  %40 = phi i64 [ %1, %9 ], [ %141, %627 ]
  tail call void @llvm.dbg.value(metadata i64 %40, metadata !3181, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %39, metadata !3197, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %38, metadata !3196, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !3195, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %36, metadata !3194, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %35, metadata !3193, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata ptr %34, metadata !3192, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %33, metadata !3191, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3190, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !3183, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata ptr %31, metadata !3188, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !3187, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i32 %29, metadata !3184, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.label(metadata !3198), !dbg !3261
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3199, metadata !DIExpression()), !dbg !3250
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
  ], !dbg !3262

41:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3195, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i32 5, metadata !3184, metadata !DIExpression()), !dbg !3250
  br label %114, !dbg !3263

42:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 %37, metadata !3195, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i32 5, metadata !3184, metadata !DIExpression()), !dbg !3250
  %43 = and i8 %37, 1, !dbg !3264
  %44 = icmp eq i8 %43, 0, !dbg !3264
  br i1 %44, label %45, label %114, !dbg !3263

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3266
  br i1 %46, label %114, label %47, !dbg !3269

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !3266, !tbaa !1172
  br label %114, !dbg !3266

48:                                               ; preds = %28, %28
  call void @llvm.dbg.assign(metadata i1 undef, metadata !859, metadata !DIExpression(), metadata !3244, metadata ptr %12, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.assign(metadata i1 undef, metadata !860, metadata !DIExpression(), metadata !3245, metadata ptr %13, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata ptr @.str.11.114, metadata !856, metadata !DIExpression()), !dbg !3270
  call void @llvm.dbg.value(metadata i32 %29, metadata !857, metadata !DIExpression()), !dbg !3270
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.115, ptr noundef nonnull @.str.11.114, i32 noundef 5) #38, !dbg !3274
  call void @llvm.dbg.value(metadata ptr %49, metadata !858, metadata !DIExpression()), !dbg !3270
  %50 = icmp eq ptr %49, @.str.11.114, !dbg !3275
  br i1 %50, label %51, label %60, !dbg !3277

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !3278
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !3279
  call void @llvm.dbg.value(metadata ptr %13, metadata !3280, metadata !DIExpression()), !dbg !3286
  call void @llvm.dbg.value(metadata ptr %13, metadata !3288, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i32 0, metadata !3291, metadata !DIExpression()), !dbg !3293
  call void @llvm.dbg.value(metadata i64 8, metadata !3292, metadata !DIExpression()), !dbg !3293
  store i64 0, ptr %13, align 8, !dbg !3295
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !3296
  %53 = icmp eq i64 %52, 3, !dbg !3298
  %54 = load i32, ptr %12, align 4
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !3299
  %57 = icmp eq i32 %29, 9, !dbg !3299
  %58 = select i1 %57, ptr @.str.10.116, ptr @.str.12.117, !dbg !3299
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !3299
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !3300
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !3300
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !3270
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3187, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.assign(metadata i1 undef, metadata !859, metadata !DIExpression(), metadata !3242, metadata ptr %10, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.assign(metadata i1 undef, metadata !860, metadata !DIExpression(), metadata !3243, metadata ptr %11, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata ptr @.str.12.117, metadata !856, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i32 %29, metadata !857, metadata !DIExpression()), !dbg !3301
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.115, ptr noundef nonnull @.str.12.117, i32 noundef 5) #38, !dbg !3303
  call void @llvm.dbg.value(metadata ptr %62, metadata !858, metadata !DIExpression()), !dbg !3301
  %63 = icmp eq ptr %62, @.str.12.117, !dbg !3304
  br i1 %63, label %64, label %73, !dbg !3305

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !3306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !3307
  call void @llvm.dbg.value(metadata ptr %11, metadata !3280, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata ptr %11, metadata !3288, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i32 0, metadata !3291, metadata !DIExpression()), !dbg !3310
  call void @llvm.dbg.value(metadata i64 8, metadata !3292, metadata !DIExpression()), !dbg !3310
  store i64 0, ptr %11, align 8, !dbg !3312
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !3313
  %66 = icmp eq i64 %65, 3, !dbg !3314
  %67 = load i32, ptr %10, align 4
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !3315
  %70 = icmp eq i32 %29, 9, !dbg !3315
  %71 = select i1 %70, ptr @.str.10.116, ptr @.str.12.117, !dbg !3315
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !3315
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !3316
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !3316
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !3188, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !3187, metadata !DIExpression()), !dbg !3250
  %76 = and i8 %37, 1, !dbg !3317
  %77 = icmp eq i8 %76, 0, !dbg !3317
  br i1 %77, label %78, label %93, !dbg !3318

78:                                               ; preds = %73
  tail call void @llvm.dbg.value(metadata ptr %74, metadata !3200, metadata !DIExpression()), !dbg !3319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3190, metadata !DIExpression()), !dbg !3250
  %79 = load i8, ptr %74, align 1, !dbg !3320, !tbaa !1172
  %80 = icmp eq i8 %79, 0, !dbg !3322
  br i1 %80, label %93, label %81, !dbg !3322

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !3200, metadata !DIExpression()), !dbg !3319
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !3190, metadata !DIExpression()), !dbg !3250
  %85 = icmp ult i64 %84, %40, !dbg !3323
  br i1 %85, label %86, label %88, !dbg !3326

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !3323
  store i8 %82, ptr %87, align 1, !dbg !3323, !tbaa !1172
  br label %88, !dbg !3323

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !3326
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !3190, metadata !DIExpression()), !dbg !3250
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3327
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !3200, metadata !DIExpression()), !dbg !3319
  %91 = load i8, ptr %90, align 1, !dbg !3320, !tbaa !1172
  %92 = icmp eq i8 %91, 0, !dbg !3322
  br i1 %92, label %93, label %81, !dbg !3322, !llvm.loop !3328

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !3330
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !3190, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3194, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata ptr %75, metadata !3192, metadata !DIExpression()), !dbg !3250
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #39, !dbg !3331
  tail call void @llvm.dbg.value(metadata i64 %95, metadata !3193, metadata !DIExpression()), !dbg !3250
  br label %114, !dbg !3332

96:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3194, metadata !DIExpression()), !dbg !3250
  br label %98, !dbg !3333

97:                                               ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 undef, metadata !3194, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3195, metadata !DIExpression()), !dbg !3250
  br label %98, !dbg !3334

98:                                               ; preds = %96, %28, %97
  %99 = phi i8 [ %36, %28 ], [ 1, %96 ], [ %36, %97 ], !dbg !3258
  %100 = phi i8 [ %37, %28 ], [ 1, %96 ], [ 1, %97 ], !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %100, metadata !3195, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %99, metadata !3194, metadata !DIExpression()), !dbg !3250
  %101 = and i8 %100, 1, !dbg !3335
  %102 = icmp eq i8 %101, 0, !dbg !3335
  %103 = select i1 %102, i8 1, i8 %99, !dbg !3337
  br label %104, !dbg !3337

104:                                              ; preds = %98, %28
  %105 = phi i8 [ %36, %28 ], [ %103, %98 ], !dbg !3250
  %106 = phi i8 [ %37, %28 ], [ %100, %98 ], !dbg !3253
  tail call void @llvm.dbg.value(metadata i8 %106, metadata !3195, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %105, metadata !3194, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i32 2, metadata !3184, metadata !DIExpression()), !dbg !3250
  %107 = and i8 %106, 1, !dbg !3338
  %108 = icmp eq i8 %107, 0, !dbg !3338
  br i1 %108, label %109, label %114, !dbg !3340

109:                                              ; preds = %104
  %110 = icmp eq i64 %40, 0, !dbg !3341
  br i1 %110, label %114, label %111, !dbg !3344

111:                                              ; preds = %109
  store i8 39, ptr %0, align 1, !dbg !3341, !tbaa !1172
  br label %114, !dbg !3341

112:                                              ; preds = %28
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3195, metadata !DIExpression()), !dbg !3250
  br label %114, !dbg !3345

113:                                              ; preds = %28
  call void @abort() #40, !dbg !3346
  unreachable, !dbg !3346

114:                                              ; preds = %41, %104, %111, %109, %28, %42, %47, %45, %112, %93
  %115 = phi i32 [ 0, %112 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %109 ], [ 2, %111 ], [ 2, %104 ], [ 5, %41 ]
  %116 = phi ptr [ %30, %112 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %109 ], [ %30, %111 ], [ %30, %104 ], [ %30, %41 ]
  %117 = phi ptr [ %31, %112 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %109 ], [ %31, %111 ], [ %31, %104 ], [ %31, %41 ]
  %118 = phi i64 [ 0, %112 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %109 ], [ 1, %111 ], [ 0, %104 ], [ 0, %41 ], !dbg !3330
  %119 = phi ptr [ %34, %112 ], [ %75, %93 ], [ @.str.10.116, %45 ], [ @.str.10.116, %47 ], [ @.str.10.116, %42 ], [ %34, %28 ], [ @.str.12.117, %109 ], [ @.str.12.117, %111 ], [ @.str.12.117, %104 ], [ @.str.10.116, %41 ], !dbg !3250
  %120 = phi i64 [ %35, %112 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %109 ], [ 1, %111 ], [ 1, %104 ], [ 1, %41 ], !dbg !3250
  %121 = phi i8 [ %36, %112 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %105, %109 ], [ %105, %111 ], [ %105, %104 ], [ 1, %41 ], !dbg !3250
  %122 = phi i8 [ 0, %112 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %106, %109 ], [ %106, %111 ], [ %106, %104 ], [ 1, %41 ], !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %122, metadata !3195, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %121, metadata !3194, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %120, metadata !3193, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !3192, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %118, metadata !3190, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata ptr %117, metadata !3188, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata ptr %116, metadata !3187, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i32 %115, metadata !3184, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3205, metadata !DIExpression()), !dbg !3347
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
  br label %138, !dbg !3348

138:                                              ; preds = %602, %114
  %139 = phi i64 [ %32, %114 ], [ %603, %602 ]
  %140 = phi i64 [ %118, %114 ], [ %604, %602 ], !dbg !3330
  %141 = phi i64 [ %33, %114 ], [ %605, %602 ], !dbg !3255
  %142 = phi i8 [ %38, %114 ], [ %606, %602 ], !dbg !3259
  %143 = phi i8 [ %39, %114 ], [ %607, %602 ], !dbg !3260
  %144 = phi i8 [ 0, %114 ], [ %608, %602 ], !dbg !3349
  %145 = phi i64 [ 0, %114 ], [ %611, %602 ], !dbg !3350
  %146 = phi i64 [ %40, %114 ], [ %610, %602 ]
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !3181, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !3205, metadata !DIExpression()), !dbg !3347
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !3199, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !3197, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !3196, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !3191, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !3190, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !3183, metadata !DIExpression()), !dbg !3250
  %147 = icmp eq i64 %139, -1, !dbg !3351
  br i1 %147, label %148, label %152, !dbg !3352

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3353
  %150 = load i8, ptr %149, align 1, !dbg !3353, !tbaa !1172
  %151 = icmp eq i8 %150, 0, !dbg !3354
  br i1 %151, label %612, label %154, !dbg !3355

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !3356
  br i1 %153, label %612, label %154, !dbg !3355

154:                                              ; preds = %148, %152
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3207, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3210, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3211, metadata !DIExpression()), !dbg !3357
  br i1 %128, label %155, label %170, !dbg !3358

155:                                              ; preds = %154
  %156 = add i64 %145, %120, !dbg !3360
  %157 = select i1 %147, i1 %129, i1 false, !dbg !3361
  br i1 %157, label %158, label %160, !dbg !3361

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !3362
  tail call void @llvm.dbg.value(metadata i64 %159, metadata !3183, metadata !DIExpression()), !dbg !3250
  br label %160, !dbg !3363

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !3363
  tail call void @llvm.dbg.value(metadata i64 %161, metadata !3183, metadata !DIExpression()), !dbg !3250
  %162 = icmp ugt i64 %156, %161, !dbg !3364
  br i1 %162, label %170, label %163, !dbg !3365

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3366
  call void @llvm.dbg.value(metadata ptr %164, metadata !3367, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata ptr %119, metadata !3370, metadata !DIExpression()), !dbg !3372
  call void @llvm.dbg.value(metadata i64 %120, metadata !3371, metadata !DIExpression()), !dbg !3372
  %165 = call i32 @bcmp(ptr %164, ptr %119, i64 %120), !dbg !3374
  %166 = icmp ne i32 %165, 0, !dbg !3375
  %167 = select i1 %166, i1 true, i1 %131, !dbg !3376
  %168 = xor i1 %166, true, !dbg !3376
  %169 = zext i1 %168 to i8, !dbg !3376
  br i1 %167, label %170, label %666, !dbg !3376

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !3357
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !3207, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %171, metadata !3183, metadata !DIExpression()), !dbg !3250
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3377
  %175 = load i8, ptr %174, align 1, !dbg !3377, !tbaa !1172
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !3212, metadata !DIExpression()), !dbg !3357
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
  ], !dbg !3378

176:                                              ; preds = %170
  br i1 %124, label %177, label %225, !dbg !3379

177:                                              ; preds = %176
  br i1 %131, label %178, label %659, !dbg !3380

178:                                              ; preds = %177
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3210, metadata !DIExpression()), !dbg !3357
  %179 = and i8 %144, 1, !dbg !3384
  %180 = icmp eq i8 %179, 0, !dbg !3384
  %181 = select i1 %132, i1 %180, i1 false, !dbg !3384
  br i1 %181, label %182, label %198, !dbg !3384

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !3386
  br i1 %183, label %184, label %186, !dbg !3390

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3386
  store i8 39, ptr %185, align 1, !dbg !3386, !tbaa !1172
  br label %186, !dbg !3386

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !3390
  tail call void @llvm.dbg.value(metadata i64 %187, metadata !3190, metadata !DIExpression()), !dbg !3250
  %188 = icmp ult i64 %187, %146, !dbg !3391
  br i1 %188, label %189, label %191, !dbg !3394

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !3391
  store i8 36, ptr %190, align 1, !dbg !3391, !tbaa !1172
  br label %191, !dbg !3391

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !3394
  tail call void @llvm.dbg.value(metadata i64 %192, metadata !3190, metadata !DIExpression()), !dbg !3250
  %193 = icmp ult i64 %192, %146, !dbg !3395
  br i1 %193, label %194, label %196, !dbg !3398

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !3395
  store i8 39, ptr %195, align 1, !dbg !3395, !tbaa !1172
  br label %196, !dbg !3395

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !3398
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !3190, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3199, metadata !DIExpression()), !dbg !3250
  br label %198, !dbg !3399

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !3250
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %200, metadata !3199, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %199, metadata !3190, metadata !DIExpression()), !dbg !3250
  %201 = icmp ult i64 %199, %146, !dbg !3400
  br i1 %201, label %202, label %204, !dbg !3403

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !3400
  store i8 92, ptr %203, align 1, !dbg !3400, !tbaa !1172
  br label %204, !dbg !3400

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !3403
  tail call void @llvm.dbg.value(metadata i64 %205, metadata !3190, metadata !DIExpression()), !dbg !3250
  br i1 %125, label %206, label %476, !dbg !3404

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !3406
  %208 = icmp ult i64 %207, %171, !dbg !3407
  br i1 %208, label %209, label %465, !dbg !3408

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !3409
  %211 = load i8, ptr %210, align 1, !dbg !3409, !tbaa !1172
  %212 = add i8 %211, -48, !dbg !3410
  %213 = icmp ult i8 %212, 10, !dbg !3410
  br i1 %213, label %214, label %465, !dbg !3410

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !3411
  br i1 %215, label %216, label %218, !dbg !3415

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !3411
  store i8 48, ptr %217, align 1, !dbg !3411, !tbaa !1172
  br label %218, !dbg !3411

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !3415
  tail call void @llvm.dbg.value(metadata i64 %219, metadata !3190, metadata !DIExpression()), !dbg !3250
  %220 = icmp ult i64 %219, %146, !dbg !3416
  br i1 %220, label %221, label %223, !dbg !3419

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !3416
  store i8 48, ptr %222, align 1, !dbg !3416, !tbaa !1172
  br label %223, !dbg !3416

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !3419
  tail call void @llvm.dbg.value(metadata i64 %224, metadata !3190, metadata !DIExpression()), !dbg !3250
  br label %465, !dbg !3420

225:                                              ; preds = %176
  br i1 %25, label %476, label %602, !dbg !3421

226:                                              ; preds = %170
  switch i32 %115, label %465 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !3422

227:                                              ; preds = %226
  br i1 %131, label %465, label %655, !dbg !3423

228:                                              ; preds = %226
  br i1 %23, label %465, label %229, !dbg !3425

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !3427
  %231 = icmp ult i64 %230, %171, !dbg !3428
  br i1 %231, label %232, label %465, !dbg !3429

232:                                              ; preds = %229
  %233 = getelementptr i8, ptr %174, i64 1, !dbg !3430
  %234 = load i8, ptr %233, align 1, !dbg !3430, !tbaa !1172
  %235 = icmp eq i8 %234, 63, !dbg !3431
  br i1 %235, label %236, label %465, !dbg !3432

236:                                              ; preds = %232
  %237 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !3433
  %238 = load i8, ptr %237, align 1, !dbg !3433, !tbaa !1172
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
  ], !dbg !3434

239:                                              ; preds = %236, %236, %236, %236, %236, %236, %236, %236, %236
  br i1 %131, label %240, label %666, !dbg !3435

240:                                              ; preds = %239
  tail call void @llvm.dbg.value(metadata i8 %238, metadata !3212, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %230, metadata !3205, metadata !DIExpression()), !dbg !3347
  %241 = icmp ult i64 %140, %146, !dbg !3437
  br i1 %241, label %242, label %244, !dbg !3440

242:                                              ; preds = %240
  %243 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3437
  store i8 63, ptr %243, align 1, !dbg !3437, !tbaa !1172
  br label %244, !dbg !3437

244:                                              ; preds = %242, %240
  %245 = add i64 %140, 1, !dbg !3440
  tail call void @llvm.dbg.value(metadata i64 %245, metadata !3190, metadata !DIExpression()), !dbg !3250
  %246 = icmp ult i64 %245, %146, !dbg !3441
  br i1 %246, label %247, label %249, !dbg !3444

247:                                              ; preds = %244
  %248 = getelementptr inbounds i8, ptr %0, i64 %245, !dbg !3441
  store i8 34, ptr %248, align 1, !dbg !3441, !tbaa !1172
  br label %249, !dbg !3441

249:                                              ; preds = %247, %244
  %250 = add i64 %140, 2, !dbg !3444
  tail call void @llvm.dbg.value(metadata i64 %250, metadata !3190, metadata !DIExpression()), !dbg !3250
  %251 = icmp ult i64 %250, %146, !dbg !3445
  br i1 %251, label %252, label %254, !dbg !3448

252:                                              ; preds = %249
  %253 = getelementptr inbounds i8, ptr %0, i64 %250, !dbg !3445
  store i8 34, ptr %253, align 1, !dbg !3445, !tbaa !1172
  br label %254, !dbg !3445

254:                                              ; preds = %252, %249
  %255 = add i64 %140, 3, !dbg !3448
  tail call void @llvm.dbg.value(metadata i64 %255, metadata !3190, metadata !DIExpression()), !dbg !3250
  %256 = icmp ult i64 %255, %146, !dbg !3449
  br i1 %256, label %257, label %259, !dbg !3452

257:                                              ; preds = %254
  %258 = getelementptr inbounds i8, ptr %0, i64 %255, !dbg !3449
  store i8 63, ptr %258, align 1, !dbg !3449, !tbaa !1172
  br label %259, !dbg !3449

259:                                              ; preds = %257, %254
  %260 = add i64 %140, 4, !dbg !3452
  tail call void @llvm.dbg.value(metadata i64 %260, metadata !3190, metadata !DIExpression()), !dbg !3250
  br label %465, !dbg !3453

261:                                              ; preds = %170
  br label %272, !dbg !3454

262:                                              ; preds = %170
  br label %272, !dbg !3455

263:                                              ; preds = %170
  br label %270, !dbg !3456

264:                                              ; preds = %170
  br label %270, !dbg !3457

265:                                              ; preds = %170
  br label %272, !dbg !3458

266:                                              ; preds = %170
  br i1 %132, label %267, label %268, !dbg !3459

267:                                              ; preds = %266
  br i1 %131, label %558, label %655, !dbg !3460

268:                                              ; preds = %266
  br i1 %124, label %269, label %476, !dbg !3463

269:                                              ; preds = %268
  br i1 %135, label %558, label %520, !dbg !3465

270:                                              ; preds = %170, %264, %263
  %271 = phi i8 [ 116, %264 ], [ 114, %263 ], [ 110, %170 ], !dbg !3466
  call void @llvm.dbg.label(metadata !3213), !dbg !3467
  br i1 %133, label %272, label %655, !dbg !3468

272:                                              ; preds = %170, %270, %265, %262, %261
  %273 = phi i8 [ %271, %270 ], [ 118, %265 ], [ 102, %262 ], [ 98, %261 ], [ 97, %170 ], !dbg !3466
  call void @llvm.dbg.label(metadata !3216), !dbg !3470
  br i1 %124, label %520, label %476, !dbg !3471

274:                                              ; preds = %170, %170
  switch i64 %171, label %465 [
    i64 -1, label %275
    i64 1, label %278
  ], !dbg !3472

275:                                              ; preds = %274
  %276 = load i8, ptr %21, align 1, !dbg !3473, !tbaa !1172
  %277 = icmp eq i8 %276, 0, !dbg !3475
  br i1 %277, label %278, label %465, !dbg !3476

278:                                              ; preds = %274, %275, %170, %170
  %279 = icmp eq i64 %145, 0, !dbg !3477
  br i1 %279, label %280, label %465, !dbg !3479

280:                                              ; preds = %278, %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3211, metadata !DIExpression()), !dbg !3357
  br label %281, !dbg !3480

281:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %280
  %282 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %280 ], !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %282, metadata !3211, metadata !DIExpression()), !dbg !3357
  br i1 %133, label %465, label %655, !dbg !3481

283:                                              ; preds = %170
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3196, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3211, metadata !DIExpression()), !dbg !3357
  br i1 %132, label %284, label %465, !dbg !3483

284:                                              ; preds = %283
  br i1 %131, label %285, label %655, !dbg !3484

285:                                              ; preds = %284
  %286 = icmp eq i64 %146, 0, !dbg !3487
  %287 = icmp ne i64 %141, 0
  %288 = select i1 %286, i1 true, i1 %287, !dbg !3489
  %289 = select i1 %288, i64 %141, i64 %146, !dbg !3489
  %290 = select i1 %288, i64 %146, i64 0, !dbg !3489
  tail call void @llvm.dbg.value(metadata i64 %290, metadata !3181, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %289, metadata !3191, metadata !DIExpression()), !dbg !3250
  %291 = icmp ult i64 %140, %290, !dbg !3490
  br i1 %291, label %292, label %294, !dbg !3493

292:                                              ; preds = %285
  %293 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3490
  store i8 39, ptr %293, align 1, !dbg !3490, !tbaa !1172
  br label %294, !dbg !3490

294:                                              ; preds = %292, %285
  %295 = add i64 %140, 1, !dbg !3493
  tail call void @llvm.dbg.value(metadata i64 %295, metadata !3190, metadata !DIExpression()), !dbg !3250
  %296 = icmp ult i64 %295, %290, !dbg !3494
  br i1 %296, label %297, label %299, !dbg !3497

297:                                              ; preds = %294
  %298 = getelementptr inbounds i8, ptr %0, i64 %295, !dbg !3494
  store i8 92, ptr %298, align 1, !dbg !3494, !tbaa !1172
  br label %299, !dbg !3494

299:                                              ; preds = %297, %294
  %300 = add i64 %140, 2, !dbg !3497
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !3190, metadata !DIExpression()), !dbg !3250
  %301 = icmp ult i64 %300, %290, !dbg !3498
  br i1 %301, label %302, label %304, !dbg !3501

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %0, i64 %300, !dbg !3498
  store i8 39, ptr %303, align 1, !dbg !3498, !tbaa !1172
  br label %304, !dbg !3498

304:                                              ; preds = %302, %299
  %305 = add i64 %140, 3, !dbg !3501
  tail call void @llvm.dbg.value(metadata i64 %305, metadata !3190, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3199, metadata !DIExpression()), !dbg !3250
  br label %465, !dbg !3502

306:                                              ; preds = %170
  br i1 %17, label %307, label %315, !dbg !3503

307:                                              ; preds = %306
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3217, metadata !DIExpression()), !dbg !3504
  %308 = tail call ptr @__ctype_b_loc() #41, !dbg !3505
  %309 = load ptr, ptr %308, align 8, !dbg !3505, !tbaa !1092
  %310 = zext i8 %175 to i64
  %311 = getelementptr inbounds i16, ptr %309, i64 %310, !dbg !3505
  %312 = load i16, ptr %311, align 2, !dbg !3505, !tbaa !1204
  %313 = and i16 %312, 16384, !dbg !3507
  %314 = icmp ne i16 %313, 0, !dbg !3507
  tail call void @llvm.dbg.value(metadata i16 %312, metadata !3219, metadata !DIExpression(DW_OP_constu, 14, DW_OP_shr, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3504
  br label %355, !dbg !3508

315:                                              ; preds = %306
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !3509
  call void @llvm.dbg.value(metadata ptr %14, metadata !3280, metadata !DIExpression()), !dbg !3510
  call void @llvm.dbg.value(metadata ptr %14, metadata !3288, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i32 0, metadata !3291, metadata !DIExpression()), !dbg !3512
  call void @llvm.dbg.value(metadata i64 8, metadata !3292, metadata !DIExpression()), !dbg !3512
  store i64 0, ptr %14, align 8, !dbg !3514
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3217, metadata !DIExpression()), !dbg !3504
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3219, metadata !DIExpression()), !dbg !3504
  %316 = icmp eq i64 %171, -1, !dbg !3515
  br i1 %316, label %317, label %319, !dbg !3517

317:                                              ; preds = %315
  %318 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !3518
  tail call void @llvm.dbg.value(metadata i64 %318, metadata !3183, metadata !DIExpression()), !dbg !3250
  br label %319, !dbg !3519

319:                                              ; preds = %315, %317
  %320 = phi i64 [ %318, %317 ], [ %171, %315 ], !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %320, metadata !3183, metadata !DIExpression()), !dbg !3250
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !3520
  %321 = sub i64 %320, %145, !dbg !3521
  %322 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %321, ptr noundef nonnull %14) #38, !dbg !3522
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !3227, metadata !DIExpression()), !dbg !3249
  switch i64 %322, label %336 [
    i64 0, label %351
    i64 -1, label %325
    i64 -2, label %323
  ], !dbg !3523

323:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3217, metadata !DIExpression()), !dbg !3504
  %324 = icmp ult i64 %145, %320, !dbg !3524
  br i1 %324, label %326, label %351, !dbg !3526

325:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3219, metadata !DIExpression()), !dbg !3504
  br label %351, !dbg !3527

326:                                              ; preds = %323, %332
  %327 = phi i64 [ %334, %332 ], [ %145, %323 ]
  %328 = phi i64 [ %333, %332 ], [ 0, %323 ]
  tail call void @llvm.dbg.value(metadata i64 %328, metadata !3217, metadata !DIExpression()), !dbg !3504
  %329 = getelementptr inbounds i8, ptr %2, i64 %327, !dbg !3529
  %330 = load i8, ptr %329, align 1, !dbg !3529, !tbaa !1172
  %331 = icmp eq i8 %330, 0, !dbg !3526
  br i1 %331, label %351, label %332, !dbg !3530

332:                                              ; preds = %326
  %333 = add i64 %328, 1, !dbg !3531
  tail call void @llvm.dbg.value(metadata i64 %333, metadata !3217, metadata !DIExpression()), !dbg !3504
  %334 = add i64 %333, %145, !dbg !3532
  %335 = icmp eq i64 %333, %321, !dbg !3524
  br i1 %335, label %351, label %326, !dbg !3526, !llvm.loop !3533

336:                                              ; preds = %319
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3228, metadata !DIExpression()), !dbg !3534
  %337 = icmp ugt i64 %322, 1
  %338 = and i1 %134, %337, !dbg !3535
  %339 = and i1 %338, %132, !dbg !3535
  br i1 %339, label %340, label %347, !dbg !3535

340:                                              ; preds = %336, %344
  %341 = phi i64 [ %345, %344 ], [ 1, %336 ]
  tail call void @llvm.dbg.value(metadata i64 %341, metadata !3228, metadata !DIExpression()), !dbg !3534
  %342 = getelementptr i8, ptr %174, i64 %341, !dbg !3536
  %343 = load i8, ptr %342, align 1, !dbg !3536, !tbaa !1172
  switch i8 %343, label %344 [
    i8 91, label %354
    i8 92, label %354
    i8 94, label %354
    i8 96, label %354
    i8 124, label %354
  ], !dbg !3538

344:                                              ; preds = %340
  %345 = add nuw i64 %341, 1, !dbg !3539
  tail call void @llvm.dbg.value(metadata i64 %345, metadata !3228, metadata !DIExpression()), !dbg !3534
  %346 = icmp eq i64 %345, %322, !dbg !3540
  br i1 %346, label %347, label %340, !dbg !3541, !llvm.loop !3542

347:                                              ; preds = %344, %336
  %348 = load i32, ptr %15, align 4, !dbg !3544, !tbaa !1163
  call void @llvm.dbg.value(metadata i32 %348, metadata !3546, metadata !DIExpression()), !dbg !3549
  %349 = call i32 @iswprint(i32 noundef %348) #38, !dbg !3551
  %350 = icmp ne i32 %349, 0, !dbg !3552
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3219, metadata !DIExpression()), !dbg !3504
  tail call void @llvm.dbg.value(metadata i64 %322, metadata !3217, metadata !DIExpression()), !dbg !3504
  br label %351, !dbg !3553

351:                                              ; preds = %326, %332, %323, %325, %347, %319
  %352 = phi i64 [ %322, %319 ], [ %322, %347 ], [ 0, %325 ], [ 0, %323 ], [ %328, %326 ], [ %321, %332 ]
  %353 = phi i1 [ true, %319 ], [ %350, %347 ], [ false, %325 ], [ false, %323 ], [ false, %332 ], [ false, %326 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3219, metadata !DIExpression()), !dbg !3504
  tail call void @llvm.dbg.value(metadata i64 %352, metadata !3217, metadata !DIExpression()), !dbg !3504
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3554
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3555
  br label %355

354:                                              ; preds = %340, %340, %340, %340, %340
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3219, metadata !DIExpression()), !dbg !3504
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3217, metadata !DIExpression()), !dbg !3504
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3554
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3555
  br label %655

355:                                              ; preds = %351, %307
  %356 = phi i64 [ %171, %307 ], [ %320, %351 ], !dbg !3357
  %357 = phi i64 [ 1, %307 ], [ %352, %351 ], !dbg !3556
  %358 = phi i1 [ %314, %307 ], [ %353, %351 ], !dbg !3556
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3219, metadata !DIExpression()), !dbg !3504
  tail call void @llvm.dbg.value(metadata i64 %357, metadata !3217, metadata !DIExpression()), !dbg !3504
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !3183, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i1 %358, metadata !3211, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3357
  %359 = icmp ult i64 %357, 2, !dbg !3557
  %360 = select i1 %136, i1 true, i1 %358
  %361 = select i1 %359, i1 %360, i1 false, !dbg !3558
  br i1 %361, label %461, label %362, !dbg !3558

362:                                              ; preds = %355
  %363 = add i64 %357, %145, !dbg !3559
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !3236, metadata !DIExpression()), !dbg !3560
  br label %364, !dbg !3561

364:                                              ; preds = %457, %362
  %365 = phi i64 [ %140, %362 ], [ %458, %457 ], !dbg !3250
  %366 = phi i8 [ %144, %362 ], [ %453, %457 ], !dbg !3349
  %367 = phi i64 [ %145, %362 ], [ %432, %457 ], !dbg !3347
  %368 = phi i8 [ %173, %362 ], [ %429, %457 ], !dbg !3357
  %369 = phi i8 [ 0, %362 ], [ %430, %457 ], !dbg !3562
  %370 = phi i8 [ %175, %362 ], [ %460, %457 ], !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %370, metadata !3212, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %369, metadata !3210, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %368, metadata !3207, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !3205, metadata !DIExpression()), !dbg !3347
  tail call void @llvm.dbg.value(metadata i8 %366, metadata !3199, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %365, metadata !3190, metadata !DIExpression()), !dbg !3250
  br i1 %360, label %417, label %371, !dbg !3563

371:                                              ; preds = %364
  br i1 %131, label %372, label %659, !dbg !3568

372:                                              ; preds = %371
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3210, metadata !DIExpression()), !dbg !3357
  %373 = and i8 %366, 1, !dbg !3571
  %374 = icmp eq i8 %373, 0, !dbg !3571
  %375 = select i1 %132, i1 %374, i1 false, !dbg !3571
  br i1 %375, label %376, label %392, !dbg !3571

376:                                              ; preds = %372
  %377 = icmp ult i64 %365, %146, !dbg !3573
  br i1 %377, label %378, label %380, !dbg !3577

378:                                              ; preds = %376
  %379 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3573
  store i8 39, ptr %379, align 1, !dbg !3573, !tbaa !1172
  br label %380, !dbg !3573

380:                                              ; preds = %378, %376
  %381 = add i64 %365, 1, !dbg !3577
  tail call void @llvm.dbg.value(metadata i64 %381, metadata !3190, metadata !DIExpression()), !dbg !3250
  %382 = icmp ult i64 %381, %146, !dbg !3578
  br i1 %382, label %383, label %385, !dbg !3581

383:                                              ; preds = %380
  %384 = getelementptr inbounds i8, ptr %0, i64 %381, !dbg !3578
  store i8 36, ptr %384, align 1, !dbg !3578, !tbaa !1172
  br label %385, !dbg !3578

385:                                              ; preds = %383, %380
  %386 = add i64 %365, 2, !dbg !3581
  tail call void @llvm.dbg.value(metadata i64 %386, metadata !3190, metadata !DIExpression()), !dbg !3250
  %387 = icmp ult i64 %386, %146, !dbg !3582
  br i1 %387, label %388, label %390, !dbg !3585

388:                                              ; preds = %385
  %389 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3582
  store i8 39, ptr %389, align 1, !dbg !3582, !tbaa !1172
  br label %390, !dbg !3582

390:                                              ; preds = %388, %385
  %391 = add i64 %365, 3, !dbg !3585
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !3190, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3199, metadata !DIExpression()), !dbg !3250
  br label %392, !dbg !3586

392:                                              ; preds = %372, %390
  %393 = phi i64 [ %391, %390 ], [ %365, %372 ], !dbg !3250
  %394 = phi i8 [ 1, %390 ], [ %366, %372 ], !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %394, metadata !3199, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %393, metadata !3190, metadata !DIExpression()), !dbg !3250
  %395 = icmp ult i64 %393, %146, !dbg !3587
  br i1 %395, label %396, label %398, !dbg !3590

396:                                              ; preds = %392
  %397 = getelementptr inbounds i8, ptr %0, i64 %393, !dbg !3587
  store i8 92, ptr %397, align 1, !dbg !3587, !tbaa !1172
  br label %398, !dbg !3587

398:                                              ; preds = %396, %392
  %399 = add i64 %393, 1, !dbg !3590
  tail call void @llvm.dbg.value(metadata i64 %399, metadata !3190, metadata !DIExpression()), !dbg !3250
  %400 = icmp ult i64 %399, %146, !dbg !3591
  br i1 %400, label %401, label %405, !dbg !3594

401:                                              ; preds = %398
  %402 = lshr i8 %370, 6
  %403 = or disjoint i8 %402, 48, !dbg !3591
  %404 = getelementptr inbounds i8, ptr %0, i64 %399, !dbg !3591
  store i8 %403, ptr %404, align 1, !dbg !3591, !tbaa !1172
  br label %405, !dbg !3591

405:                                              ; preds = %401, %398
  %406 = add i64 %393, 2, !dbg !3594
  tail call void @llvm.dbg.value(metadata i64 %406, metadata !3190, metadata !DIExpression()), !dbg !3250
  %407 = icmp ult i64 %406, %146, !dbg !3595
  br i1 %407, label %408, label %413, !dbg !3598

408:                                              ; preds = %405
  %409 = lshr i8 %370, 3
  %410 = and i8 %409, 7, !dbg !3595
  %411 = or disjoint i8 %410, 48, !dbg !3595
  %412 = getelementptr inbounds i8, ptr %0, i64 %406, !dbg !3595
  store i8 %411, ptr %412, align 1, !dbg !3595, !tbaa !1172
  br label %413, !dbg !3595

413:                                              ; preds = %408, %405
  %414 = add i64 %393, 3, !dbg !3598
  tail call void @llvm.dbg.value(metadata i64 %414, metadata !3190, metadata !DIExpression()), !dbg !3250
  %415 = and i8 %370, 7, !dbg !3599
  %416 = or disjoint i8 %415, 48, !dbg !3600
  tail call void @llvm.dbg.value(metadata i8 %416, metadata !3212, metadata !DIExpression()), !dbg !3357
  br label %426, !dbg !3601

417:                                              ; preds = %364
  %418 = and i8 %368, 1, !dbg !3602
  %419 = icmp eq i8 %418, 0, !dbg !3602
  br i1 %419, label %426, label %420, !dbg !3604

420:                                              ; preds = %417
  %421 = icmp ult i64 %365, %146, !dbg !3605
  br i1 %421, label %422, label %424, !dbg !3609

422:                                              ; preds = %420
  %423 = getelementptr inbounds i8, ptr %0, i64 %365, !dbg !3605
  store i8 92, ptr %423, align 1, !dbg !3605, !tbaa !1172
  br label %424, !dbg !3605

424:                                              ; preds = %422, %420
  %425 = add i64 %365, 1, !dbg !3609
  tail call void @llvm.dbg.value(metadata i64 %425, metadata !3190, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3207, metadata !DIExpression()), !dbg !3357
  br label %426, !dbg !3610

426:                                              ; preds = %417, %424, %413
  %427 = phi i64 [ %425, %424 ], [ %365, %417 ], [ %414, %413 ], !dbg !3250
  %428 = phi i8 [ %366, %424 ], [ %366, %417 ], [ %394, %413 ], !dbg !3349
  %429 = phi i8 [ 0, %424 ], [ %368, %417 ], [ %368, %413 ], !dbg !3357
  %430 = phi i8 [ %369, %424 ], [ %369, %417 ], [ 1, %413 ], !dbg !3357
  %431 = phi i8 [ %370, %424 ], [ %370, %417 ], [ %416, %413 ], !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !3212, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !3210, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !3207, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !3199, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !3190, metadata !DIExpression()), !dbg !3250
  %432 = add i64 %367, 1, !dbg !3611
  %433 = icmp ugt i64 %363, %432, !dbg !3613
  br i1 %433, label %434, label %463, !dbg !3614

434:                                              ; preds = %426
  %435 = and i8 %428, 1, !dbg !3615
  %436 = icmp ne i8 %435, 0, !dbg !3615
  %437 = and i8 %430, 1, !dbg !3615
  %438 = icmp eq i8 %437, 0, !dbg !3615
  %439 = select i1 %436, i1 %438, i1 false, !dbg !3615
  br i1 %439, label %440, label %451, !dbg !3615

440:                                              ; preds = %434
  %441 = icmp ult i64 %427, %146, !dbg !3618
  br i1 %441, label %442, label %444, !dbg !3622

442:                                              ; preds = %440
  %443 = getelementptr inbounds i8, ptr %0, i64 %427, !dbg !3618
  store i8 39, ptr %443, align 1, !dbg !3618, !tbaa !1172
  br label %444, !dbg !3618

444:                                              ; preds = %442, %440
  %445 = add i64 %427, 1, !dbg !3622
  tail call void @llvm.dbg.value(metadata i64 %445, metadata !3190, metadata !DIExpression()), !dbg !3250
  %446 = icmp ult i64 %445, %146, !dbg !3623
  br i1 %446, label %447, label %449, !dbg !3626

447:                                              ; preds = %444
  %448 = getelementptr inbounds i8, ptr %0, i64 %445, !dbg !3623
  store i8 39, ptr %448, align 1, !dbg !3623, !tbaa !1172
  br label %449, !dbg !3623

449:                                              ; preds = %447, %444
  %450 = add i64 %427, 2, !dbg !3626
  tail call void @llvm.dbg.value(metadata i64 %450, metadata !3190, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3199, metadata !DIExpression()), !dbg !3250
  br label %451, !dbg !3627

451:                                              ; preds = %434, %449
  %452 = phi i64 [ %450, %449 ], [ %427, %434 ], !dbg !3628
  %453 = phi i8 [ 0, %449 ], [ %428, %434 ], !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %453, metadata !3199, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %452, metadata !3190, metadata !DIExpression()), !dbg !3250
  %454 = icmp ult i64 %452, %146, !dbg !3629
  br i1 %454, label %455, label %457, !dbg !3632

455:                                              ; preds = %451
  %456 = getelementptr inbounds i8, ptr %0, i64 %452, !dbg !3629
  store i8 %431, ptr %456, align 1, !dbg !3629, !tbaa !1172
  br label %457, !dbg !3629

457:                                              ; preds = %455, %451
  %458 = add i64 %452, 1, !dbg !3632
  tail call void @llvm.dbg.value(metadata i64 %458, metadata !3190, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %432, metadata !3205, metadata !DIExpression()), !dbg !3347
  %459 = getelementptr inbounds i8, ptr %2, i64 %432, !dbg !3633
  %460 = load i8, ptr %459, align 1, !dbg !3633, !tbaa !1172
  tail call void @llvm.dbg.value(metadata i8 %460, metadata !3212, metadata !DIExpression()), !dbg !3357
  br label %364, !dbg !3634, !llvm.loop !3635

461:                                              ; preds = %355
  %462 = zext i1 %358 to i8, !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %175, metadata !3212, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %462, metadata !3211, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3210, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !3207, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %145, metadata !3205, metadata !DIExpression()), !dbg !3347
  tail call void @llvm.dbg.value(metadata i8 %144, metadata !3199, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !3190, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !3183, metadata !DIExpression()), !dbg !3250
  br label %465

463:                                              ; preds = %426
  %464 = zext i1 %358 to i8, !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %431, metadata !3212, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %464, metadata !3211, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %430, metadata !3210, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %429, metadata !3207, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %367, metadata !3205, metadata !DIExpression()), !dbg !3347
  tail call void @llvm.dbg.value(metadata i8 %428, metadata !3199, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %427, metadata !3190, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %356, metadata !3183, metadata !DIExpression()), !dbg !3250
  br label %558

465:                                              ; preds = %461, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %274, %206, %209, %223, %283, %304, %281, %278, %275, %226, %227, %259, %236, %232, %229, %228
  %466 = phi i64 [ %171, %304 ], [ %171, %283 ], [ %171, %281 ], [ %171, %278 ], [ -1, %275 ], [ %171, %226 ], [ %171, %236 ], [ %171, %259 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %274 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %356, %461 ], !dbg !3638
  %467 = phi i64 [ %305, %304 ], [ %140, %283 ], [ %140, %281 ], [ %140, %278 ], [ %140, %275 ], [ %140, %226 ], [ %140, %236 ], [ %260, %259 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %274 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %461 ], !dbg !3250
  %468 = phi i64 [ %289, %304 ], [ %141, %283 ], [ %141, %281 ], [ %141, %278 ], [ %141, %275 ], [ %141, %226 ], [ %141, %236 ], [ %141, %259 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %274 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %461 ], !dbg !3255
  %469 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %142, %281 ], [ %142, %278 ], [ %142, %275 ], [ %142, %226 ], [ %142, %236 ], [ %142, %259 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %274 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %461 ], !dbg !3250
  %470 = phi i8 [ 0, %304 ], [ %144, %283 ], [ %144, %281 ], [ %144, %278 ], [ %144, %275 ], [ %144, %226 ], [ %144, %236 ], [ %144, %259 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %274 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %461 ], !dbg !3250
  %471 = phi i64 [ %145, %304 ], [ %145, %283 ], [ %145, %281 ], [ %145, %278 ], [ %145, %275 ], [ %145, %226 ], [ %145, %236 ], [ %230, %259 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %274 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %461 ], !dbg !3347
  %472 = phi i8 [ 0, %304 ], [ 0, %283 ], [ 0, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %274 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %461 ], !dbg !3357
  %473 = phi i8 [ 1, %304 ], [ 1, %283 ], [ %282, %281 ], [ 0, %278 ], [ 0, %275 ], [ 0, %226 ], [ 0, %236 ], [ 0, %259 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %274 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %462, %461 ], !dbg !3357
  %474 = phi i8 [ 39, %304 ], [ 39, %283 ], [ %175, %281 ], [ %175, %278 ], [ %175, %275 ], [ 63, %226 ], [ 63, %236 ], [ %238, %259 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %274 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %461 ], !dbg !3357
  %475 = phi i64 [ %290, %304 ], [ %146, %283 ], [ %146, %281 ], [ %146, %278 ], [ %146, %275 ], [ %146, %226 ], [ %146, %236 ], [ %146, %259 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %274 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %461 ]
  tail call void @llvm.dbg.value(metadata i64 %475, metadata !3181, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %474, metadata !3212, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %473, metadata !3211, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %472, metadata !3210, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %173, metadata !3207, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %471, metadata !3205, metadata !DIExpression()), !dbg !3347
  tail call void @llvm.dbg.value(metadata i8 %470, metadata !3199, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %469, metadata !3196, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %468, metadata !3191, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %467, metadata !3190, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %466, metadata !3183, metadata !DIExpression()), !dbg !3250
  br i1 %126, label %487, label %476, !dbg !3639

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
  br i1 %137, label %488, label %509, !dbg !3641

487:                                              ; preds = %465
  br i1 %27, label %509, label %488, !dbg !3642

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
  %499 = lshr i8 %490, 5, !dbg !3643
  %500 = zext nneg i8 %499 to i64, !dbg !3643
  %501 = getelementptr inbounds i32, ptr %6, i64 %500, !dbg !3644
  %502 = load i32, ptr %501, align 4, !dbg !3644, !tbaa !1163
  %503 = and i8 %490, 31, !dbg !3645
  %504 = zext nneg i8 %503 to i32, !dbg !3645
  %505 = shl nuw i32 1, %504, !dbg !3646
  %506 = and i32 %502, %505, !dbg !3646
  %507 = icmp eq i32 %506, 0, !dbg !3646
  %508 = and i1 %172, %507, !dbg !3647
  br i1 %508, label %558, label %520, !dbg !3647

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
  br i1 %172, label %558, label %520, !dbg !3648

520:                                              ; preds = %269, %272, %509, %488
  %521 = phi i64 [ %498, %488 ], [ %519, %509 ], [ %171, %272 ], [ %171, %269 ], !dbg !3638
  %522 = phi i64 [ %497, %488 ], [ %518, %509 ], [ %140, %272 ], [ %140, %269 ], !dbg !3250
  %523 = phi i64 [ %496, %488 ], [ %517, %509 ], [ %141, %272 ], [ %141, %269 ], !dbg !3255
  %524 = phi i8 [ %495, %488 ], [ %516, %509 ], [ %142, %272 ], [ %142, %269 ], !dbg !3259
  %525 = phi i8 [ %494, %488 ], [ %515, %509 ], [ %144, %272 ], [ %144, %269 ], !dbg !3349
  %526 = phi i64 [ %493, %488 ], [ %514, %509 ], [ %145, %272 ], [ %145, %269 ], !dbg !3649
  %527 = phi i8 [ %491, %488 ], [ %512, %509 ], [ 0, %272 ], [ 0, %269 ], !dbg !3357
  %528 = phi i8 [ %490, %488 ], [ %511, %509 ], [ %273, %272 ], [ 92, %269 ], !dbg !3357
  %529 = phi i64 [ %489, %488 ], [ %510, %509 ], [ %146, %272 ], [ %146, %269 ]
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !3181, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !3212, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !3211, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !3205, metadata !DIExpression()), !dbg !3347
  tail call void @llvm.dbg.value(metadata i8 %525, metadata !3199, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !3196, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !3191, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !3190, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !3183, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.label(metadata !3239), !dbg !3650
  br i1 %131, label %530, label %659, !dbg !3651

530:                                              ; preds = %520
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3210, metadata !DIExpression()), !dbg !3357
  %531 = and i8 %525, 1, !dbg !3653
  %532 = icmp eq i8 %531, 0, !dbg !3653
  %533 = select i1 %132, i1 %532, i1 false, !dbg !3653
  br i1 %533, label %534, label %550, !dbg !3653

534:                                              ; preds = %530
  %535 = icmp ult i64 %522, %529, !dbg !3655
  br i1 %535, label %536, label %538, !dbg !3659

536:                                              ; preds = %534
  %537 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3655
  store i8 39, ptr %537, align 1, !dbg !3655, !tbaa !1172
  br label %538, !dbg !3655

538:                                              ; preds = %536, %534
  %539 = add i64 %522, 1, !dbg !3659
  tail call void @llvm.dbg.value(metadata i64 %539, metadata !3190, metadata !DIExpression()), !dbg !3250
  %540 = icmp ult i64 %539, %529, !dbg !3660
  br i1 %540, label %541, label %543, !dbg !3663

541:                                              ; preds = %538
  %542 = getelementptr inbounds i8, ptr %0, i64 %539, !dbg !3660
  store i8 36, ptr %542, align 1, !dbg !3660, !tbaa !1172
  br label %543, !dbg !3660

543:                                              ; preds = %541, %538
  %544 = add i64 %522, 2, !dbg !3663
  tail call void @llvm.dbg.value(metadata i64 %544, metadata !3190, metadata !DIExpression()), !dbg !3250
  %545 = icmp ult i64 %544, %529, !dbg !3664
  br i1 %545, label %546, label %548, !dbg !3667

546:                                              ; preds = %543
  %547 = getelementptr inbounds i8, ptr %0, i64 %544, !dbg !3664
  store i8 39, ptr %547, align 1, !dbg !3664, !tbaa !1172
  br label %548, !dbg !3664

548:                                              ; preds = %546, %543
  %549 = add i64 %522, 3, !dbg !3667
  tail call void @llvm.dbg.value(metadata i64 %549, metadata !3190, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3199, metadata !DIExpression()), !dbg !3250
  br label %550, !dbg !3668

550:                                              ; preds = %530, %548
  %551 = phi i64 [ %549, %548 ], [ %522, %530 ], !dbg !3357
  %552 = phi i8 [ 1, %548 ], [ %525, %530 ], !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !3199, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %551, metadata !3190, metadata !DIExpression()), !dbg !3250
  %553 = icmp ult i64 %551, %529, !dbg !3669
  br i1 %553, label %554, label %556, !dbg !3672

554:                                              ; preds = %550
  %555 = getelementptr inbounds i8, ptr %0, i64 %551, !dbg !3669
  store i8 92, ptr %555, align 1, !dbg !3669, !tbaa !1172
  br label %556, !dbg !3669

556:                                              ; preds = %550, %554
  %557 = add i64 %551, 1, !dbg !3672
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !3181, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %528, metadata !3212, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %527, metadata !3211, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3210, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !3205, metadata !DIExpression()), !dbg !3347
  tail call void @llvm.dbg.value(metadata i8 %552, metadata !3199, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %524, metadata !3196, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %523, metadata !3191, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %557, metadata !3190, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %521, metadata !3183, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.label(metadata !3240), !dbg !3673
  br label %585, !dbg !3674

558:                                              ; preds = %463, %488, %267, %269, %509
  %559 = phi i64 [ %356, %463 ], [ %519, %509 ], [ %171, %267 ], [ %171, %269 ], [ %498, %488 ], !dbg !3638
  %560 = phi i64 [ %427, %463 ], [ %518, %509 ], [ %140, %267 ], [ %140, %269 ], [ %497, %488 ], !dbg !3250
  %561 = phi i64 [ %141, %463 ], [ %517, %509 ], [ %141, %267 ], [ %141, %269 ], [ %496, %488 ], !dbg !3255
  %562 = phi i8 [ %142, %463 ], [ %516, %509 ], [ %142, %267 ], [ %142, %269 ], [ %495, %488 ], !dbg !3259
  %563 = phi i8 [ %428, %463 ], [ %515, %509 ], [ %144, %267 ], [ %144, %269 ], [ %494, %488 ], !dbg !3349
  %564 = phi i64 [ %367, %463 ], [ %514, %509 ], [ %145, %267 ], [ %145, %269 ], [ %493, %488 ], !dbg !3649
  %565 = phi i8 [ %430, %463 ], [ %513, %509 ], [ 0, %267 ], [ 0, %269 ], [ %492, %488 ], !dbg !3357
  %566 = phi i8 [ %464, %463 ], [ %512, %509 ], [ 0, %267 ], [ 0, %269 ], [ %491, %488 ], !dbg !3357
  %567 = phi i8 [ %431, %463 ], [ %511, %509 ], [ 92, %267 ], [ 92, %269 ], [ %490, %488 ], !dbg !3677
  %568 = phi i64 [ %146, %463 ], [ %510, %509 ], [ %146, %267 ], [ %146, %269 ], [ %489, %488 ]
  tail call void @llvm.dbg.value(metadata i64 %568, metadata !3181, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %567, metadata !3212, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %566, metadata !3211, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i8 %565, metadata !3210, metadata !DIExpression()), !dbg !3357
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !3205, metadata !DIExpression()), !dbg !3347
  tail call void @llvm.dbg.value(metadata i8 %563, metadata !3199, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %562, metadata !3196, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !3191, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %560, metadata !3190, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %559, metadata !3183, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.label(metadata !3240), !dbg !3673
  %569 = and i8 %563, 1, !dbg !3674
  %570 = icmp ne i8 %569, 0, !dbg !3674
  %571 = and i8 %565, 1, !dbg !3674
  %572 = icmp eq i8 %571, 0, !dbg !3674
  %573 = select i1 %570, i1 %572, i1 false, !dbg !3674
  br i1 %573, label %574, label %585, !dbg !3674

574:                                              ; preds = %558
  %575 = icmp ult i64 %560, %568, !dbg !3678
  br i1 %575, label %576, label %578, !dbg !3682

576:                                              ; preds = %574
  %577 = getelementptr inbounds i8, ptr %0, i64 %560, !dbg !3678
  store i8 39, ptr %577, align 1, !dbg !3678, !tbaa !1172
  br label %578, !dbg !3678

578:                                              ; preds = %576, %574
  %579 = add i64 %560, 1, !dbg !3682
  tail call void @llvm.dbg.value(metadata i64 %579, metadata !3190, metadata !DIExpression()), !dbg !3250
  %580 = icmp ult i64 %579, %568, !dbg !3683
  br i1 %580, label %581, label %583, !dbg !3686

581:                                              ; preds = %578
  %582 = getelementptr inbounds i8, ptr %0, i64 %579, !dbg !3683
  store i8 39, ptr %582, align 1, !dbg !3683, !tbaa !1172
  br label %583, !dbg !3683

583:                                              ; preds = %581, %578
  %584 = add i64 %560, 2, !dbg !3686
  tail call void @llvm.dbg.value(metadata i64 %584, metadata !3190, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3199, metadata !DIExpression()), !dbg !3250
  br label %585, !dbg !3687

585:                                              ; preds = %556, %558, %583
  %586 = phi i64 [ %568, %583 ], [ %568, %558 ], [ %529, %556 ]
  %587 = phi i8 [ %567, %583 ], [ %567, %558 ], [ %528, %556 ]
  %588 = phi i8 [ %566, %583 ], [ %566, %558 ], [ %527, %556 ]
  %589 = phi i64 [ %564, %583 ], [ %564, %558 ], [ %526, %556 ]
  %590 = phi i8 [ %562, %583 ], [ %562, %558 ], [ %524, %556 ]
  %591 = phi i64 [ %561, %583 ], [ %561, %558 ], [ %523, %556 ]
  %592 = phi i64 [ %559, %583 ], [ %559, %558 ], [ %521, %556 ]
  %593 = phi i64 [ %584, %583 ], [ %560, %558 ], [ %557, %556 ], !dbg !3357
  %594 = phi i8 [ 0, %583 ], [ %563, %558 ], [ %552, %556 ], !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %594, metadata !3199, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %593, metadata !3190, metadata !DIExpression()), !dbg !3250
  %595 = icmp ult i64 %593, %586, !dbg !3688
  br i1 %595, label %596, label %598, !dbg !3691

596:                                              ; preds = %585
  %597 = getelementptr inbounds i8, ptr %0, i64 %593, !dbg !3688
  store i8 %587, ptr %597, align 1, !dbg !3688, !tbaa !1172
  br label %598, !dbg !3688

598:                                              ; preds = %596, %585
  %599 = add i64 %593, 1, !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !3190, metadata !DIExpression()), !dbg !3250
  %600 = icmp eq i8 %588, 0, !dbg !3692
  %601 = select i1 %600, i8 0, i8 %143, !dbg !3694
  tail call void @llvm.dbg.value(metadata i8 %601, metadata !3197, metadata !DIExpression()), !dbg !3250
  br label %602, !dbg !3695

602:                                              ; preds = %225, %598
  %603 = phi i64 [ %592, %598 ], [ %171, %225 ], !dbg !3638
  %604 = phi i64 [ %599, %598 ], [ %140, %225 ], !dbg !3250
  %605 = phi i64 [ %591, %598 ], [ %141, %225 ], !dbg !3255
  %606 = phi i8 [ %590, %598 ], [ %142, %225 ], !dbg !3259
  %607 = phi i8 [ %601, %598 ], [ %143, %225 ], !dbg !3260
  %608 = phi i8 [ %594, %598 ], [ %144, %225 ], !dbg !3349
  %609 = phi i64 [ %589, %598 ], [ %145, %225 ], !dbg !3649
  %610 = phi i64 [ %586, %598 ], [ %146, %225 ]
  tail call void @llvm.dbg.value(metadata i64 %610, metadata !3181, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !3205, metadata !DIExpression()), !dbg !3347
  tail call void @llvm.dbg.value(metadata i8 %608, metadata !3199, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %607, metadata !3197, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %606, metadata !3196, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %605, metadata !3191, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !3190, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %603, metadata !3183, metadata !DIExpression()), !dbg !3250
  %611 = add i64 %609, 1, !dbg !3696
  tail call void @llvm.dbg.value(metadata i64 %611, metadata !3205, metadata !DIExpression()), !dbg !3347
  br label %138, !dbg !3697, !llvm.loop !3698

612:                                              ; preds = %152, %148
  tail call void @llvm.dbg.value(metadata i64 %146, metadata !3181, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %143, metadata !3197, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i8 %142, metadata !3196, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %141, metadata !3191, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !3190, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %139, metadata !3183, metadata !DIExpression()), !dbg !3250
  %613 = icmp eq i64 %140, 0, !dbg !3700
  %614 = and i1 %132, %613, !dbg !3702
  %615 = xor i1 %614, true, !dbg !3702
  %616 = select i1 %615, i1 true, i1 %131, !dbg !3702
  br i1 %616, label %617, label %655, !dbg !3702

617:                                              ; preds = %612
  %618 = select i1 %132, i1 %131, i1 false, !dbg !3703
  %619 = and i8 %142, 1
  %620 = icmp ne i8 %619, 0
  %621 = select i1 %618, i1 %620, i1 false, !dbg !3703
  br i1 %621, label %622, label %631, !dbg !3703

622:                                              ; preds = %617
  %623 = and i8 %143, 1, !dbg !3705
  %624 = icmp eq i8 %623, 0, !dbg !3705
  br i1 %624, label %627, label %625, !dbg !3708

625:                                              ; preds = %622
  %626 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %116, ptr noundef %117), !dbg !3709
  br label %672, !dbg !3710

627:                                              ; preds = %622
  %628 = icmp eq i64 %146, 0, !dbg !3711
  %629 = icmp ne i64 %141, 0
  %630 = select i1 %628, i1 %629, i1 false, !dbg !3713
  br i1 %630, label %28, label %631, !dbg !3713

631:                                              ; preds = %627, %617
  %632 = phi i1 [ true, %627 ], [ %131, %617 ]
  %633 = icmp ne ptr %119, null, !dbg !3714
  %634 = select i1 %633, i1 %632, i1 false, !dbg !3716
  br i1 %634, label %635, label %650, !dbg !3716

635:                                              ; preds = %631
  tail call void @llvm.dbg.value(metadata ptr %119, metadata !3192, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %140, metadata !3190, metadata !DIExpression()), !dbg !3250
  %636 = load i8, ptr %119, align 1, !dbg !3717, !tbaa !1172
  %637 = icmp eq i8 %636, 0, !dbg !3720
  br i1 %637, label %650, label %638, !dbg !3720

638:                                              ; preds = %635, %645
  %639 = phi i8 [ %648, %645 ], [ %636, %635 ]
  %640 = phi ptr [ %647, %645 ], [ %119, %635 ]
  %641 = phi i64 [ %646, %645 ], [ %140, %635 ]
  tail call void @llvm.dbg.value(metadata ptr %640, metadata !3192, metadata !DIExpression()), !dbg !3250
  tail call void @llvm.dbg.value(metadata i64 %641, metadata !3190, metadata !DIExpression()), !dbg !3250
  %642 = icmp ult i64 %641, %146, !dbg !3721
  br i1 %642, label %643, label %645, !dbg !3724

643:                                              ; preds = %638
  %644 = getelementptr inbounds i8, ptr %0, i64 %641, !dbg !3721
  store i8 %639, ptr %644, align 1, !dbg !3721, !tbaa !1172
  br label %645, !dbg !3721

645:                                              ; preds = %643, %638
  %646 = add i64 %641, 1, !dbg !3724
  tail call void @llvm.dbg.value(metadata i64 %646, metadata !3190, metadata !DIExpression()), !dbg !3250
  %647 = getelementptr inbounds i8, ptr %640, i64 1, !dbg !3725
  tail call void @llvm.dbg.value(metadata ptr %647, metadata !3192, metadata !DIExpression()), !dbg !3250
  %648 = load i8, ptr %647, align 1, !dbg !3717, !tbaa !1172
  %649 = icmp eq i8 %648, 0, !dbg !3720
  br i1 %649, label %650, label %638, !dbg !3720, !llvm.loop !3726

650:                                              ; preds = %645, %635, %631
  %651 = phi i64 [ %140, %631 ], [ %140, %635 ], [ %646, %645 ], !dbg !3330
  tail call void @llvm.dbg.value(metadata i64 %651, metadata !3190, metadata !DIExpression()), !dbg !3250
  %652 = icmp ult i64 %651, %146, !dbg !3728
  br i1 %652, label %653, label %672, !dbg !3730

653:                                              ; preds = %650
  %654 = getelementptr inbounds i8, ptr %0, i64 %651, !dbg !3731
  store i8 0, ptr %654, align 1, !dbg !3732, !tbaa !1172
  br label %672, !dbg !3731

655:                                              ; preds = %612, %227, %267, %270, %281, %284, %354
  %656 = phi i64 [ %320, %354 ], [ %171, %284 ], [ %171, %281 ], [ %171, %270 ], [ %171, %267 ], [ %171, %227 ], [ %139, %612 ]
  call void @llvm.dbg.label(metadata !3241), !dbg !3733
  %657 = icmp eq i8 %123, 0, !dbg !3734
  %658 = select i1 %657, i32 2, i32 4, !dbg !3734
  br label %666, !dbg !3734

659:                                              ; preds = %520, %177, %371
  %660 = phi i64 [ %146, %371 ], [ %529, %520 ], [ %146, %177 ]
  %661 = phi i64 [ %356, %371 ], [ %521, %520 ], [ %171, %177 ]
  call void @llvm.dbg.label(metadata !3241), !dbg !3733
  %662 = icmp eq i32 %115, 2, !dbg !3736
  %663 = icmp eq i8 %123, 0, !dbg !3734
  %664 = select i1 %663, i32 2, i32 4, !dbg !3734
  %665 = select i1 %662, i32 %664, i32 %115, !dbg !3734
  br label %666, !dbg !3734

666:                                              ; preds = %239, %163, %659, %655
  %667 = phi i64 [ %656, %655 ], [ %661, %659 ], [ %161, %163 ], [ %171, %239 ]
  %668 = phi i64 [ %146, %655 ], [ %660, %659 ], [ %146, %163 ], [ %146, %239 ]
  %669 = phi i32 [ %658, %655 ], [ %665, %659 ], [ %115, %163 ], [ 5, %239 ]
  tail call void @llvm.dbg.value(metadata i32 %669, metadata !3184, metadata !DIExpression()), !dbg !3250
  %670 = and i32 %5, -3, !dbg !3737
  %671 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %668, ptr noundef %2, i64 noundef %667, i32 noundef %669, i32 noundef %670, ptr noundef null, ptr noundef %116, ptr noundef %117), !dbg !3738
  br label %672, !dbg !3739

672:                                              ; preds = %650, %653, %666, %625
  %673 = phi i64 [ %671, %666 ], [ %626, %625 ], [ %651, %653 ], [ %651, %650 ]
  ret i64 %673, !dbg !3740
}

; Function Attrs: nounwind
declare !dbg !3741 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3744 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3747 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3748 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3752, metadata !DIExpression()), !dbg !3755
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3753, metadata !DIExpression()), !dbg !3755
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3754, metadata !DIExpression()), !dbg !3755
  call void @llvm.dbg.value(metadata ptr %0, metadata !3756, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata i64 %1, metadata !3761, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata ptr null, metadata !3762, metadata !DIExpression()), !dbg !3769
  call void @llvm.dbg.value(metadata ptr %2, metadata !3763, metadata !DIExpression()), !dbg !3769
  %4 = icmp eq ptr %2, null, !dbg !3771
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3771
  call void @llvm.dbg.value(metadata ptr %5, metadata !3764, metadata !DIExpression()), !dbg !3769
  %6 = tail call ptr @__errno_location() #41, !dbg !3772
  %7 = load i32, ptr %6, align 4, !dbg !3772, !tbaa !1163
  call void @llvm.dbg.value(metadata i32 %7, metadata !3765, metadata !DIExpression()), !dbg !3769
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3773
  %9 = load i32, ptr %8, align 4, !dbg !3773, !tbaa !3124
  %10 = or i32 %9, 1, !dbg !3774
  call void @llvm.dbg.value(metadata i32 %10, metadata !3766, metadata !DIExpression()), !dbg !3769
  %11 = load i32, ptr %5, align 8, !dbg !3775, !tbaa !3074
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3776
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3777
  %14 = load ptr, ptr %13, align 8, !dbg !3777, !tbaa !3145
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3778
  %16 = load ptr, ptr %15, align 8, !dbg !3778, !tbaa !3148
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3779
  %18 = add i64 %17, 1, !dbg !3780
  call void @llvm.dbg.value(metadata i64 %18, metadata !3767, metadata !DIExpression()), !dbg !3769
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #43, !dbg !3781
  call void @llvm.dbg.value(metadata ptr %19, metadata !3768, metadata !DIExpression()), !dbg !3769
  %20 = load i32, ptr %5, align 8, !dbg !3782, !tbaa !3074
  %21 = load ptr, ptr %13, align 8, !dbg !3783, !tbaa !3145
  %22 = load ptr, ptr %15, align 8, !dbg !3784, !tbaa !3148
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3785
  store i32 %7, ptr %6, align 4, !dbg !3786, !tbaa !1163
  ret ptr %19, !dbg !3787
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3757 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3756, metadata !DIExpression()), !dbg !3788
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3761, metadata !DIExpression()), !dbg !3788
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3762, metadata !DIExpression()), !dbg !3788
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3763, metadata !DIExpression()), !dbg !3788
  %5 = icmp eq ptr %3, null, !dbg !3789
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3789
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3764, metadata !DIExpression()), !dbg !3788
  %7 = tail call ptr @__errno_location() #41, !dbg !3790
  %8 = load i32, ptr %7, align 4, !dbg !3790, !tbaa !1163
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3765, metadata !DIExpression()), !dbg !3788
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3791
  %10 = load i32, ptr %9, align 4, !dbg !3791, !tbaa !3124
  %11 = icmp eq ptr %2, null, !dbg !3792
  %12 = zext i1 %11 to i32, !dbg !3792
  %13 = or i32 %10, %12, !dbg !3793
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3766, metadata !DIExpression()), !dbg !3788
  %14 = load i32, ptr %6, align 8, !dbg !3794, !tbaa !3074
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3795
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3796
  %17 = load ptr, ptr %16, align 8, !dbg !3796, !tbaa !3145
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3797
  %19 = load ptr, ptr %18, align 8, !dbg !3797, !tbaa !3148
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3798
  %21 = add i64 %20, 1, !dbg !3799
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3767, metadata !DIExpression()), !dbg !3788
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #43, !dbg !3800
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3768, metadata !DIExpression()), !dbg !3788
  %23 = load i32, ptr %6, align 8, !dbg !3801, !tbaa !3074
  %24 = load ptr, ptr %16, align 8, !dbg !3802, !tbaa !3145
  %25 = load ptr, ptr %18, align 8, !dbg !3803, !tbaa !3148
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3804
  store i32 %8, ptr %7, align 4, !dbg !3805, !tbaa !1163
  br i1 %11, label %28, label %27, !dbg !3806

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3807, !tbaa !1396
  br label %28, !dbg !3809

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3810
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3811 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3816, !tbaa !1092
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3813, metadata !DIExpression()), !dbg !3817
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3814, metadata !DIExpression()), !dbg !3818
  %2 = load i32, ptr @nslots, align 4, !tbaa !1163
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3814, metadata !DIExpression()), !dbg !3818
  %3 = icmp sgt i32 %2, 1, !dbg !3819
  br i1 %3, label %4, label %6, !dbg !3821

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3819
  br label %10, !dbg !3821

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3822
  %8 = load ptr, ptr %7, align 8, !dbg !3822, !tbaa !3824
  %9 = icmp eq ptr %8, @slot0, !dbg !3826
  br i1 %9, label %17, label %16, !dbg !3827

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3814, metadata !DIExpression()), !dbg !3818
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3828
  %13 = load ptr, ptr %12, align 8, !dbg !3828, !tbaa !3824
  tail call void @free(ptr noundef %13) #38, !dbg !3829
  %14 = add nuw nsw i64 %11, 1, !dbg !3830
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3814, metadata !DIExpression()), !dbg !3818
  %15 = icmp eq i64 %14, %5, !dbg !3819
  br i1 %15, label %6, label %10, !dbg !3821, !llvm.loop !3831

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !3833
  store i64 256, ptr @slotvec0, align 8, !dbg !3835, !tbaa !3836
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3837, !tbaa !3824
  br label %17, !dbg !3838

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3839
  br i1 %18, label %20, label %19, !dbg !3841

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !3842
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3844, !tbaa !1092
  br label %20, !dbg !3845

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3846, !tbaa !1163
  ret void, !dbg !3847
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3848 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3850, metadata !DIExpression()), !dbg !3852
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3851, metadata !DIExpression()), !dbg !3852
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3853
  ret ptr %3, !dbg !3854
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3855 {
  %5 = alloca i64, align 8, !DIAssignID !3875
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3869, metadata !DIExpression(), metadata !3875, metadata ptr %5, metadata !DIExpression()), !dbg !3876
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3859, metadata !DIExpression()), !dbg !3877
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3860, metadata !DIExpression()), !dbg !3877
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3861, metadata !DIExpression()), !dbg !3877
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3862, metadata !DIExpression()), !dbg !3877
  %6 = tail call ptr @__errno_location() #41, !dbg !3878
  %7 = load i32, ptr %6, align 4, !dbg !3878, !tbaa !1163
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3863, metadata !DIExpression()), !dbg !3877
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3879, !tbaa !1092
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3864, metadata !DIExpression()), !dbg !3877
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3865, metadata !DIExpression()), !dbg !3877
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3880
  br i1 %9, label %10, label %11, !dbg !3880

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !3882
  unreachable, !dbg !3882

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3883, !tbaa !1163
  %13 = icmp sgt i32 %12, %0, !dbg !3884
  br i1 %13, label %32, label %14, !dbg !3885

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3886
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3866, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3876
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !3887
  %16 = sext i32 %12 to i64, !dbg !3888
  store i64 %16, ptr %5, align 8, !dbg !3889, !tbaa !1396, !DIAssignID !3890
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3869, metadata !DIExpression(), metadata !3890, metadata ptr %5, metadata !DIExpression()), !dbg !3876
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3891
  %18 = add nuw nsw i32 %0, 1, !dbg !3892
  %19 = sub i32 %18, %12, !dbg !3893
  %20 = sext i32 %19 to i64, !dbg !3894
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !3895
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3864, metadata !DIExpression()), !dbg !3877
  store ptr %21, ptr @slotvec, align 8, !dbg !3896, !tbaa !1092
  br i1 %15, label %22, label %23, !dbg !3897

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3898, !tbaa.struct !3900
  br label %23, !dbg !3901

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3902, !tbaa !1163
  %25 = sext i32 %24 to i64, !dbg !3903
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3903
  %27 = load i64, ptr %5, align 8, !dbg !3904, !tbaa !1396
  %28 = sub nsw i64 %27, %25, !dbg !3905
  %29 = shl i64 %28, 4, !dbg !3906
  call void @llvm.dbg.value(metadata ptr %26, metadata !3288, metadata !DIExpression()), !dbg !3907
  call void @llvm.dbg.value(metadata i32 0, metadata !3291, metadata !DIExpression()), !dbg !3907
  call void @llvm.dbg.value(metadata i64 %29, metadata !3292, metadata !DIExpression()), !dbg !3907
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !3909
  %30 = load i64, ptr %5, align 8, !dbg !3910, !tbaa !1396
  %31 = trunc i64 %30 to i32, !dbg !3910
  store i32 %31, ptr @nslots, align 4, !dbg !3911, !tbaa !1163
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !3912
  br label %32, !dbg !3913

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3877
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3864, metadata !DIExpression()), !dbg !3877
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3914
  %36 = load i64, ptr %35, align 8, !dbg !3915, !tbaa !3836
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3870, metadata !DIExpression()), !dbg !3916
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3917
  %38 = load ptr, ptr %37, align 8, !dbg !3917, !tbaa !3824
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3872, metadata !DIExpression()), !dbg !3916
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3918
  %40 = load i32, ptr %39, align 4, !dbg !3918, !tbaa !3124
  %41 = or i32 %40, 1, !dbg !3919
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3873, metadata !DIExpression()), !dbg !3916
  %42 = load i32, ptr %3, align 8, !dbg !3920, !tbaa !3074
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3921
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3922
  %45 = load ptr, ptr %44, align 8, !dbg !3922, !tbaa !3145
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3923
  %47 = load ptr, ptr %46, align 8, !dbg !3923, !tbaa !3148
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3924
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3874, metadata !DIExpression()), !dbg !3916
  %49 = icmp ugt i64 %36, %48, !dbg !3925
  br i1 %49, label %60, label %50, !dbg !3927

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3928
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3870, metadata !DIExpression()), !dbg !3916
  store i64 %51, ptr %35, align 8, !dbg !3930, !tbaa !3836
  %52 = icmp eq ptr %38, @slot0, !dbg !3931
  br i1 %52, label %54, label %53, !dbg !3933

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !3934
  br label %54, !dbg !3934

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #43, !dbg !3935
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3872, metadata !DIExpression()), !dbg !3916
  store ptr %55, ptr %37, align 8, !dbg !3936, !tbaa !3824
  %56 = load i32, ptr %3, align 8, !dbg !3937, !tbaa !3074
  %57 = load ptr, ptr %44, align 8, !dbg !3938, !tbaa !3145
  %58 = load ptr, ptr %46, align 8, !dbg !3939, !tbaa !3148
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3940
  br label %60, !dbg !3941

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3916
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3872, metadata !DIExpression()), !dbg !3916
  store i32 %7, ptr %6, align 4, !dbg !3942, !tbaa !1163
  ret ptr %61, !dbg !3943
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3944 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3948, metadata !DIExpression()), !dbg !3951
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3949, metadata !DIExpression()), !dbg !3951
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3950, metadata !DIExpression()), !dbg !3951
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3952
  ret ptr %4, !dbg !3953
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3954 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3956, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i32 0, metadata !3850, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata ptr %0, metadata !3851, metadata !DIExpression()), !dbg !3958
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3960
  ret ptr %2, !dbg !3961
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3962 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3966, metadata !DIExpression()), !dbg !3968
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3967, metadata !DIExpression()), !dbg !3968
  call void @llvm.dbg.value(metadata i32 0, metadata !3948, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata ptr %0, metadata !3949, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.value(metadata i64 %1, metadata !3950, metadata !DIExpression()), !dbg !3969
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3971
  ret ptr %3, !dbg !3972
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3973 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3981
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3980, metadata !DIExpression(), metadata !3981, metadata ptr %4, metadata !DIExpression()), !dbg !3982
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3977, metadata !DIExpression()), !dbg !3982
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3978, metadata !DIExpression()), !dbg !3982
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3979, metadata !DIExpression()), !dbg !3982
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3983
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3984), !dbg !3987
  call void @llvm.dbg.value(metadata i32 %1, metadata !3988, metadata !DIExpression()), !dbg !3994
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3993, metadata !DIExpression()), !dbg !3996
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3996, !alias.scope !3984, !DIAssignID !3997
  call void @llvm.dbg.assign(metadata i8 0, metadata !3980, metadata !DIExpression(), metadata !3997, metadata ptr %4, metadata !DIExpression()), !dbg !3982
  %5 = icmp eq i32 %1, 10, !dbg !3998
  br i1 %5, label %6, label %7, !dbg !4000

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !4001, !noalias !3984
  unreachable, !dbg !4001

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !4002, !tbaa !3074, !alias.scope !3984, !DIAssignID !4003
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3980, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4003, metadata ptr %4, metadata !DIExpression()), !dbg !3982
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4004
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4005
  ret ptr %8, !dbg !4006
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4007 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4016
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4015, metadata !DIExpression(), metadata !4016, metadata ptr %5, metadata !DIExpression()), !dbg !4017
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4011, metadata !DIExpression()), !dbg !4017
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4012, metadata !DIExpression()), !dbg !4017
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4013, metadata !DIExpression()), !dbg !4017
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4014, metadata !DIExpression()), !dbg !4017
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !4018
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4019), !dbg !4022
  call void @llvm.dbg.value(metadata i32 %1, metadata !3988, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3993, metadata !DIExpression()), !dbg !4025
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !4025, !alias.scope !4019, !DIAssignID !4026
  call void @llvm.dbg.assign(metadata i8 0, metadata !4015, metadata !DIExpression(), metadata !4026, metadata ptr %5, metadata !DIExpression()), !dbg !4017
  %6 = icmp eq i32 %1, 10, !dbg !4027
  br i1 %6, label %7, label %8, !dbg !4028

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !4029, !noalias !4019
  unreachable, !dbg !4029

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !4030, !tbaa !3074, !alias.scope !4019, !DIAssignID !4031
  call void @llvm.dbg.assign(metadata i32 %1, metadata !4015, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4031, metadata ptr %5, metadata !DIExpression()), !dbg !4017
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4032
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !4033
  ret ptr %9, !dbg !4034
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4035 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !4041
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4039, metadata !DIExpression()), !dbg !4042
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4040, metadata !DIExpression()), !dbg !4042
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3980, metadata !DIExpression(), metadata !4041, metadata ptr %3, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i32 0, metadata !3977, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata i32 %0, metadata !3978, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.value(metadata ptr %1, metadata !3979, metadata !DIExpression()), !dbg !4043
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !4045
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4046), !dbg !4049
  call void @llvm.dbg.value(metadata i32 %0, metadata !3988, metadata !DIExpression()), !dbg !4050
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3993, metadata !DIExpression()), !dbg !4052
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !4052, !alias.scope !4046, !DIAssignID !4053
  call void @llvm.dbg.assign(metadata i8 0, metadata !3980, metadata !DIExpression(), metadata !4053, metadata ptr %3, metadata !DIExpression()), !dbg !4043
  %4 = icmp eq i32 %0, 10, !dbg !4054
  br i1 %4, label %5, label %6, !dbg !4055

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !4056, !noalias !4046
  unreachable, !dbg !4056

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !4057, !tbaa !3074, !alias.scope !4046, !DIAssignID !4058
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3980, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4058, metadata ptr %3, metadata !DIExpression()), !dbg !4043
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !4059
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !4060
  ret ptr %7, !dbg !4061
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4062 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4069
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4066, metadata !DIExpression()), !dbg !4070
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4067, metadata !DIExpression()), !dbg !4070
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4068, metadata !DIExpression()), !dbg !4070
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4015, metadata !DIExpression(), metadata !4069, metadata ptr %4, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i32 0, metadata !4011, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i32 %0, metadata !4012, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata ptr %1, metadata !4013, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.value(metadata i64 %2, metadata !4014, metadata !DIExpression()), !dbg !4071
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4073
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4074), !dbg !4077
  call void @llvm.dbg.value(metadata i32 %0, metadata !3988, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3993, metadata !DIExpression()), !dbg !4080
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !4080, !alias.scope !4074, !DIAssignID !4081
  call void @llvm.dbg.assign(metadata i8 0, metadata !4015, metadata !DIExpression(), metadata !4081, metadata ptr %4, metadata !DIExpression()), !dbg !4071
  %5 = icmp eq i32 %0, 10, !dbg !4082
  br i1 %5, label %6, label %7, !dbg !4083

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !4084, !noalias !4074
  unreachable, !dbg !4084

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !4085, !tbaa !3074, !alias.scope !4074, !DIAssignID !4086
  call void @llvm.dbg.assign(metadata i32 %0, metadata !4015, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4086, metadata ptr %4, metadata !DIExpression()), !dbg !4071
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !4087
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4088
  ret ptr %8, !dbg !4089
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !4090 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4098
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4097, metadata !DIExpression(), metadata !4098, metadata ptr %4, metadata !DIExpression()), !dbg !4099
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4094, metadata !DIExpression()), !dbg !4099
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4095, metadata !DIExpression()), !dbg !4099
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !4096, metadata !DIExpression()), !dbg !4099
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4101, !tbaa.struct !4102, !DIAssignID !4103
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4097, metadata !DIExpression(), metadata !4103, metadata ptr %4, metadata !DIExpression()), !dbg !4099
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3091, metadata !DIExpression()), !dbg !4104
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3092, metadata !DIExpression()), !dbg !4104
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3093, metadata !DIExpression()), !dbg !4104
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3094, metadata !DIExpression()), !dbg !4104
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !4106
  %6 = lshr i8 %2, 5, !dbg !4107
  %7 = zext nneg i8 %6 to i64, !dbg !4107
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !4108
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3095, metadata !DIExpression()), !dbg !4104
  %9 = and i8 %2, 31, !dbg !4109
  %10 = zext nneg i8 %9 to i32, !dbg !4109
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !3097, metadata !DIExpression()), !dbg !4104
  %11 = load i32, ptr %8, align 4, !dbg !4110, !tbaa !1163
  %12 = lshr i32 %11, %10, !dbg !4111
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !3098, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4104
  %13 = and i32 %12, 1, !dbg !4112
  %14 = xor i32 %13, 1, !dbg !4112
  %15 = shl nuw i32 %14, %10, !dbg !4113
  %16 = xor i32 %15, %11, !dbg !4114
  store i32 %16, ptr %8, align 4, !dbg !4114, !tbaa !1163
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !4115
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4116
  ret ptr %17, !dbg !4117
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !4118 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !4124
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4122, metadata !DIExpression()), !dbg !4125
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !4123, metadata !DIExpression()), !dbg !4125
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4097, metadata !DIExpression(), metadata !4124, metadata ptr %3, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata ptr %0, metadata !4094, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i64 -1, metadata !4095, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i8 %1, metadata !4096, metadata !DIExpression()), !dbg !4126
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !4128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4129, !tbaa.struct !4102, !DIAssignID !4130
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4097, metadata !DIExpression(), metadata !4130, metadata ptr %3, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata ptr %3, metadata !3091, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i8 %1, metadata !3092, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 1, metadata !3093, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i8 %1, metadata !3094, metadata !DIExpression()), !dbg !4131
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4133
  %5 = lshr i8 %1, 5, !dbg !4134
  %6 = zext nneg i8 %5 to i64, !dbg !4134
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !4135
  call void @llvm.dbg.value(metadata ptr %7, metadata !3095, metadata !DIExpression()), !dbg !4131
  %8 = and i8 %1, 31, !dbg !4136
  %9 = zext nneg i8 %8 to i32, !dbg !4136
  call void @llvm.dbg.value(metadata i32 %9, metadata !3097, metadata !DIExpression()), !dbg !4131
  %10 = load i32, ptr %7, align 4, !dbg !4137, !tbaa !1163
  %11 = lshr i32 %10, %9, !dbg !4138
  call void @llvm.dbg.value(metadata i32 %11, metadata !3098, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4131
  %12 = and i32 %11, 1, !dbg !4139
  %13 = xor i32 %12, 1, !dbg !4139
  %14 = shl nuw i32 %13, %9, !dbg !4140
  %15 = xor i32 %14, %10, !dbg !4141
  store i32 %15, ptr %7, align 4, !dbg !4141, !tbaa !1163
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !4142
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !4143
  ret ptr %16, !dbg !4144
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !4145 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !4148
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4147, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata ptr %0, metadata !4122, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata i8 58, metadata !4123, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4097, metadata !DIExpression(), metadata !4148, metadata ptr %2, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata ptr %0, metadata !4094, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i64 -1, metadata !4095, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata i8 58, metadata !4096, metadata !DIExpression()), !dbg !4152
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !4154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4155, !tbaa.struct !4102, !DIAssignID !4156
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4097, metadata !DIExpression(), metadata !4156, metadata ptr %2, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.value(metadata ptr %2, metadata !3091, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i8 58, metadata !3092, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i32 1, metadata !3093, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i8 58, metadata !3094, metadata !DIExpression()), !dbg !4157
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !4159
  call void @llvm.dbg.value(metadata ptr %3, metadata !3095, metadata !DIExpression()), !dbg !4157
  call void @llvm.dbg.value(metadata i32 26, metadata !3097, metadata !DIExpression()), !dbg !4157
  %4 = load i32, ptr %3, align 4, !dbg !4160, !tbaa !1163
  call void @llvm.dbg.value(metadata i32 %4, metadata !3098, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4157
  %5 = or i32 %4, 67108864, !dbg !4161
  store i32 %5, ptr %3, align 4, !dbg !4161, !tbaa !1163
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !4162
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !4163
  ret ptr %6, !dbg !4164
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4165 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !4169
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4167, metadata !DIExpression()), !dbg !4170
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4168, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4097, metadata !DIExpression(), metadata !4169, metadata ptr %3, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.value(metadata ptr %0, metadata !4094, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.value(metadata i64 %1, metadata !4095, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.value(metadata i8 58, metadata !4096, metadata !DIExpression()), !dbg !4171
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !4173
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4174, !tbaa.struct !4102, !DIAssignID !4175
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4097, metadata !DIExpression(), metadata !4175, metadata ptr %3, metadata !DIExpression()), !dbg !4171
  call void @llvm.dbg.value(metadata ptr %3, metadata !3091, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i8 58, metadata !3092, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i32 1, metadata !3093, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i8 58, metadata !3094, metadata !DIExpression()), !dbg !4176
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !4178
  call void @llvm.dbg.value(metadata ptr %4, metadata !3095, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i32 26, metadata !3097, metadata !DIExpression()), !dbg !4176
  %5 = load i32, ptr %4, align 4, !dbg !4179, !tbaa !1163
  call void @llvm.dbg.value(metadata i32 %5, metadata !3098, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4176
  %6 = or i32 %5, 67108864, !dbg !4180
  store i32 %6, ptr %4, align 4, !dbg !4180, !tbaa !1163
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !4181
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !4182
  ret ptr %7, !dbg !4183
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4184 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4190
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4189, metadata !DIExpression(), metadata !4190, metadata ptr %4, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3993, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4192
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4186, metadata !DIExpression()), !dbg !4191
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4187, metadata !DIExpression()), !dbg !4191
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4188, metadata !DIExpression()), !dbg !4191
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4194
  call void @llvm.dbg.value(metadata i32 %1, metadata !3988, metadata !DIExpression()), !dbg !4195
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3993, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4195
  %5 = icmp eq i32 %1, 10, !dbg !4196
  br i1 %5, label %6, label %7, !dbg !4197

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !4198, !noalias !4199
  unreachable, !dbg !4198

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3993, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4195
  store i32 %1, ptr %4, align 8, !dbg !4202, !tbaa.struct !4102, !DIAssignID !4203
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4202
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4202
  call void @llvm.dbg.assign(metadata i32 %1, metadata !4189, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4203, metadata ptr %4, metadata !DIExpression()), !dbg !4191
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4189, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !4204, metadata ptr %8, metadata !DIExpression()), !dbg !4191
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3091, metadata !DIExpression()), !dbg !4205
  tail call void @llvm.dbg.value(metadata i8 58, metadata !3092, metadata !DIExpression()), !dbg !4205
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3093, metadata !DIExpression()), !dbg !4205
  tail call void @llvm.dbg.value(metadata i8 58, metadata !3094, metadata !DIExpression()), !dbg !4205
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4207
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !3095, metadata !DIExpression()), !dbg !4205
  tail call void @llvm.dbg.value(metadata i32 26, metadata !3097, metadata !DIExpression()), !dbg !4205
  %10 = load i32, ptr %9, align 4, !dbg !4208, !tbaa !1163
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !3098, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4205
  %11 = or i32 %10, 67108864, !dbg !4209
  store i32 %11, ptr %9, align 4, !dbg !4209, !tbaa !1163, !DIAssignID !4210
  call void @llvm.dbg.assign(metadata i32 %11, metadata !4189, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !4210, metadata ptr %9, metadata !DIExpression()), !dbg !4191
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4211
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4212
  ret ptr %12, !dbg !4213
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4214 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4222
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4218, metadata !DIExpression()), !dbg !4223
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4219, metadata !DIExpression()), !dbg !4223
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4220, metadata !DIExpression()), !dbg !4223
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4221, metadata !DIExpression()), !dbg !4223
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4224, metadata !DIExpression(), metadata !4222, metadata ptr %5, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata i32 %0, metadata !4229, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata ptr %1, metadata !4230, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata ptr %2, metadata !4231, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata ptr %3, metadata !4232, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata i64 -1, metadata !4233, metadata !DIExpression()), !dbg !4234
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !4236
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4237, !tbaa.struct !4102, !DIAssignID !4238
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4224, metadata !DIExpression(), metadata !4238, metadata ptr %5, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4224, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4239, metadata ptr undef, metadata !DIExpression()), !dbg !4234
  call void @llvm.dbg.value(metadata ptr %5, metadata !3131, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata ptr %1, metadata !3132, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata ptr %2, metadata !3133, metadata !DIExpression()), !dbg !4240
  call void @llvm.dbg.value(metadata ptr %5, metadata !3131, metadata !DIExpression()), !dbg !4240
  store i32 10, ptr %5, align 8, !dbg !4242, !tbaa !3074, !DIAssignID !4243
  call void @llvm.dbg.assign(metadata i32 10, metadata !4224, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4243, metadata ptr %5, metadata !DIExpression()), !dbg !4234
  %6 = icmp ne ptr %1, null, !dbg !4244
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4245
  br i1 %8, label %10, label %9, !dbg !4245

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !4246
  unreachable, !dbg !4246

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4247
  store ptr %1, ptr %11, align 8, !dbg !4248, !tbaa !3145, !DIAssignID !4249
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4224, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4249, metadata ptr %11, metadata !DIExpression()), !dbg !4234
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4250
  store ptr %2, ptr %12, align 8, !dbg !4251, !tbaa !3148, !DIAssignID !4252
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4224, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4252, metadata ptr %12, metadata !DIExpression()), !dbg !4234
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4253
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !4254
  ret ptr %13, !dbg !4255
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4225 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !4256
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4224, metadata !DIExpression(), metadata !4256, metadata ptr %6, metadata !DIExpression()), !dbg !4257
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4229, metadata !DIExpression()), !dbg !4257
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4230, metadata !DIExpression()), !dbg !4257
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4231, metadata !DIExpression()), !dbg !4257
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4232, metadata !DIExpression()), !dbg !4257
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !4233, metadata !DIExpression()), !dbg !4257
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !4258
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4259, !tbaa.struct !4102, !DIAssignID !4260
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4224, metadata !DIExpression(), metadata !4260, metadata ptr %6, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4224, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4261, metadata ptr undef, metadata !DIExpression()), !dbg !4257
  call void @llvm.dbg.value(metadata ptr %6, metadata !3131, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata ptr %1, metadata !3132, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata ptr %2, metadata !3133, metadata !DIExpression()), !dbg !4262
  call void @llvm.dbg.value(metadata ptr %6, metadata !3131, metadata !DIExpression()), !dbg !4262
  store i32 10, ptr %6, align 8, !dbg !4264, !tbaa !3074, !DIAssignID !4265
  call void @llvm.dbg.assign(metadata i32 10, metadata !4224, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4265, metadata ptr %6, metadata !DIExpression()), !dbg !4257
  %7 = icmp ne ptr %1, null, !dbg !4266
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4267
  br i1 %9, label %11, label %10, !dbg !4267

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !4268
  unreachable, !dbg !4268

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4269
  store ptr %1, ptr %12, align 8, !dbg !4270, !tbaa !3145, !DIAssignID !4271
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4224, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4271, metadata ptr %12, metadata !DIExpression()), !dbg !4257
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4272
  store ptr %2, ptr %13, align 8, !dbg !4273, !tbaa !3148, !DIAssignID !4274
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4224, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4274, metadata ptr %13, metadata !DIExpression()), !dbg !4257
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4275
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !4276
  ret ptr %14, !dbg !4277
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4278 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4285
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4282, metadata !DIExpression()), !dbg !4286
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4283, metadata !DIExpression()), !dbg !4286
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4284, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata i32 0, metadata !4218, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata ptr %0, metadata !4219, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata ptr %1, metadata !4220, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata ptr %2, metadata !4221, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4224, metadata !DIExpression(), metadata !4285, metadata ptr %4, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i32 0, metadata !4229, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata ptr %0, metadata !4230, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata ptr %1, metadata !4231, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata ptr %2, metadata !4232, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata i64 -1, metadata !4233, metadata !DIExpression()), !dbg !4289
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4291
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4292, !tbaa.struct !4102, !DIAssignID !4293
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4224, metadata !DIExpression(), metadata !4293, metadata ptr %4, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4224, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4294, metadata ptr undef, metadata !DIExpression()), !dbg !4289
  call void @llvm.dbg.value(metadata ptr %4, metadata !3131, metadata !DIExpression()), !dbg !4295
  call void @llvm.dbg.value(metadata ptr %0, metadata !3132, metadata !DIExpression()), !dbg !4295
  call void @llvm.dbg.value(metadata ptr %1, metadata !3133, metadata !DIExpression()), !dbg !4295
  call void @llvm.dbg.value(metadata ptr %4, metadata !3131, metadata !DIExpression()), !dbg !4295
  store i32 10, ptr %4, align 8, !dbg !4297, !tbaa !3074, !DIAssignID !4298
  call void @llvm.dbg.assign(metadata i32 10, metadata !4224, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4298, metadata ptr %4, metadata !DIExpression()), !dbg !4289
  %5 = icmp ne ptr %0, null, !dbg !4299
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4300
  br i1 %7, label %9, label %8, !dbg !4300

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !4301
  unreachable, !dbg !4301

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4302
  store ptr %0, ptr %10, align 8, !dbg !4303, !tbaa !3145, !DIAssignID !4304
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4224, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4304, metadata ptr %10, metadata !DIExpression()), !dbg !4289
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4305
  store ptr %1, ptr %11, align 8, !dbg !4306, !tbaa !3148, !DIAssignID !4307
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4224, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4307, metadata ptr %11, metadata !DIExpression()), !dbg !4289
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4308
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4309
  ret ptr %12, !dbg !4310
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4311 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4319
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4315, metadata !DIExpression()), !dbg !4320
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4316, metadata !DIExpression()), !dbg !4320
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4317, metadata !DIExpression()), !dbg !4320
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4318, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4224, metadata !DIExpression(), metadata !4319, metadata ptr %5, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata i32 0, metadata !4229, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata ptr %0, metadata !4230, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata ptr %1, metadata !4231, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata ptr %2, metadata !4232, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata i64 %3, metadata !4233, metadata !DIExpression()), !dbg !4321
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !4323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4324, !tbaa.struct !4102, !DIAssignID !4325
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4224, metadata !DIExpression(), metadata !4325, metadata ptr %5, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4224, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4326, metadata ptr undef, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata ptr %5, metadata !3131, metadata !DIExpression()), !dbg !4327
  call void @llvm.dbg.value(metadata ptr %0, metadata !3132, metadata !DIExpression()), !dbg !4327
  call void @llvm.dbg.value(metadata ptr %1, metadata !3133, metadata !DIExpression()), !dbg !4327
  call void @llvm.dbg.value(metadata ptr %5, metadata !3131, metadata !DIExpression()), !dbg !4327
  store i32 10, ptr %5, align 8, !dbg !4329, !tbaa !3074, !DIAssignID !4330
  call void @llvm.dbg.assign(metadata i32 10, metadata !4224, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4330, metadata ptr %5, metadata !DIExpression()), !dbg !4321
  %6 = icmp ne ptr %0, null, !dbg !4331
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4332
  br i1 %8, label %10, label %9, !dbg !4332

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !4333
  unreachable, !dbg !4333

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4334
  store ptr %0, ptr %11, align 8, !dbg !4335, !tbaa !3145, !DIAssignID !4336
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4224, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4336, metadata ptr %11, metadata !DIExpression()), !dbg !4321
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4337
  store ptr %1, ptr %12, align 8, !dbg !4338, !tbaa !3148, !DIAssignID !4339
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4224, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4339, metadata ptr %12, metadata !DIExpression()), !dbg !4321
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4340
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !4341
  ret ptr %13, !dbg !4342
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4343 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4347, metadata !DIExpression()), !dbg !4350
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4348, metadata !DIExpression()), !dbg !4350
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4349, metadata !DIExpression()), !dbg !4350
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4351
  ret ptr %4, !dbg !4352
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4353 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4357, metadata !DIExpression()), !dbg !4359
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4358, metadata !DIExpression()), !dbg !4359
  call void @llvm.dbg.value(metadata i32 0, metadata !4347, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata ptr %0, metadata !4348, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata i64 %1, metadata !4349, metadata !DIExpression()), !dbg !4360
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4362
  ret ptr %3, !dbg !4363
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4364 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4368, metadata !DIExpression()), !dbg !4370
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4369, metadata !DIExpression()), !dbg !4370
  call void @llvm.dbg.value(metadata i32 %0, metadata !4347, metadata !DIExpression()), !dbg !4371
  call void @llvm.dbg.value(metadata ptr %1, metadata !4348, metadata !DIExpression()), !dbg !4371
  call void @llvm.dbg.value(metadata i64 -1, metadata !4349, metadata !DIExpression()), !dbg !4371
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4373
  ret ptr %3, !dbg !4374
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4375 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4379, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i32 0, metadata !4368, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata ptr %0, metadata !4369, metadata !DIExpression()), !dbg !4381
  call void @llvm.dbg.value(metadata i32 0, metadata !4347, metadata !DIExpression()), !dbg !4383
  call void @llvm.dbg.value(metadata ptr %0, metadata !4348, metadata !DIExpression()), !dbg !4383
  call void @llvm.dbg.value(metadata i64 -1, metadata !4349, metadata !DIExpression()), !dbg !4383
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4385
  ret ptr %2, !dbg !4386
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4387 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4426, metadata !DIExpression()), !dbg !4432
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4427, metadata !DIExpression()), !dbg !4432
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4428, metadata !DIExpression()), !dbg !4432
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4429, metadata !DIExpression()), !dbg !4432
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4430, metadata !DIExpression()), !dbg !4432
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4431, metadata !DIExpression()), !dbg !4432
  %7 = icmp eq ptr %1, null, !dbg !4433
  br i1 %7, label %10, label %8, !dbg !4435

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.124, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !4436
  br label %12, !dbg !4436

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.125, ptr noundef %2, ptr noundef %3) #38, !dbg !4437
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.3.127, i32 noundef 5) #38, !dbg !4438
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !4438
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.128, ptr noundef %0), !dbg !4439
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.5.129, i32 noundef 5) #38, !dbg !4440
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.130) #38, !dbg !4440
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.128, ptr noundef %0), !dbg !4441
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
  ], !dbg !4442

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.7.131, i32 noundef 5) #38, !dbg !4443
  %21 = load ptr, ptr %4, align 8, !dbg !4443, !tbaa !1092
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !4443
  br label %147, !dbg !4445

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.8.132, i32 noundef 5) #38, !dbg !4446
  %25 = load ptr, ptr %4, align 8, !dbg !4446, !tbaa !1092
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4446
  %27 = load ptr, ptr %26, align 8, !dbg !4446, !tbaa !1092
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !4446
  br label %147, !dbg !4447

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.9.133, i32 noundef 5) #38, !dbg !4448
  %31 = load ptr, ptr %4, align 8, !dbg !4448, !tbaa !1092
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4448
  %33 = load ptr, ptr %32, align 8, !dbg !4448, !tbaa !1092
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4448
  %35 = load ptr, ptr %34, align 8, !dbg !4448, !tbaa !1092
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !4448
  br label %147, !dbg !4449

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.10.134, i32 noundef 5) #38, !dbg !4450
  %39 = load ptr, ptr %4, align 8, !dbg !4450, !tbaa !1092
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4450
  %41 = load ptr, ptr %40, align 8, !dbg !4450, !tbaa !1092
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4450
  %43 = load ptr, ptr %42, align 8, !dbg !4450, !tbaa !1092
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4450
  %45 = load ptr, ptr %44, align 8, !dbg !4450, !tbaa !1092
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !4450
  br label %147, !dbg !4451

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.11.135, i32 noundef 5) #38, !dbg !4452
  %49 = load ptr, ptr %4, align 8, !dbg !4452, !tbaa !1092
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4452
  %51 = load ptr, ptr %50, align 8, !dbg !4452, !tbaa !1092
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4452
  %53 = load ptr, ptr %52, align 8, !dbg !4452, !tbaa !1092
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4452
  %55 = load ptr, ptr %54, align 8, !dbg !4452, !tbaa !1092
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4452
  %57 = load ptr, ptr %56, align 8, !dbg !4452, !tbaa !1092
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !4452
  br label %147, !dbg !4453

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.12.136, i32 noundef 5) #38, !dbg !4454
  %61 = load ptr, ptr %4, align 8, !dbg !4454, !tbaa !1092
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4454
  %63 = load ptr, ptr %62, align 8, !dbg !4454, !tbaa !1092
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4454
  %65 = load ptr, ptr %64, align 8, !dbg !4454, !tbaa !1092
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4454
  %67 = load ptr, ptr %66, align 8, !dbg !4454, !tbaa !1092
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4454
  %69 = load ptr, ptr %68, align 8, !dbg !4454, !tbaa !1092
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4454
  %71 = load ptr, ptr %70, align 8, !dbg !4454, !tbaa !1092
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !4454
  br label %147, !dbg !4455

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.13.137, i32 noundef 5) #38, !dbg !4456
  %75 = load ptr, ptr %4, align 8, !dbg !4456, !tbaa !1092
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4456
  %77 = load ptr, ptr %76, align 8, !dbg !4456, !tbaa !1092
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4456
  %79 = load ptr, ptr %78, align 8, !dbg !4456, !tbaa !1092
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4456
  %81 = load ptr, ptr %80, align 8, !dbg !4456, !tbaa !1092
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4456
  %83 = load ptr, ptr %82, align 8, !dbg !4456, !tbaa !1092
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4456
  %85 = load ptr, ptr %84, align 8, !dbg !4456, !tbaa !1092
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4456
  %87 = load ptr, ptr %86, align 8, !dbg !4456, !tbaa !1092
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !4456
  br label %147, !dbg !4457

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.14.138, i32 noundef 5) #38, !dbg !4458
  %91 = load ptr, ptr %4, align 8, !dbg !4458, !tbaa !1092
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4458
  %93 = load ptr, ptr %92, align 8, !dbg !4458, !tbaa !1092
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4458
  %95 = load ptr, ptr %94, align 8, !dbg !4458, !tbaa !1092
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4458
  %97 = load ptr, ptr %96, align 8, !dbg !4458, !tbaa !1092
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4458
  %99 = load ptr, ptr %98, align 8, !dbg !4458, !tbaa !1092
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4458
  %101 = load ptr, ptr %100, align 8, !dbg !4458, !tbaa !1092
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4458
  %103 = load ptr, ptr %102, align 8, !dbg !4458, !tbaa !1092
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4458
  %105 = load ptr, ptr %104, align 8, !dbg !4458, !tbaa !1092
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !4458
  br label %147, !dbg !4459

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.15.139, i32 noundef 5) #38, !dbg !4460
  %109 = load ptr, ptr %4, align 8, !dbg !4460, !tbaa !1092
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4460
  %111 = load ptr, ptr %110, align 8, !dbg !4460, !tbaa !1092
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4460
  %113 = load ptr, ptr %112, align 8, !dbg !4460, !tbaa !1092
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4460
  %115 = load ptr, ptr %114, align 8, !dbg !4460, !tbaa !1092
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4460
  %117 = load ptr, ptr %116, align 8, !dbg !4460, !tbaa !1092
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4460
  %119 = load ptr, ptr %118, align 8, !dbg !4460, !tbaa !1092
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4460
  %121 = load ptr, ptr %120, align 8, !dbg !4460, !tbaa !1092
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4460
  %123 = load ptr, ptr %122, align 8, !dbg !4460, !tbaa !1092
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4460
  %125 = load ptr, ptr %124, align 8, !dbg !4460, !tbaa !1092
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !4460
  br label %147, !dbg !4461

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.16.140, i32 noundef 5) #38, !dbg !4462
  %129 = load ptr, ptr %4, align 8, !dbg !4462, !tbaa !1092
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4462
  %131 = load ptr, ptr %130, align 8, !dbg !4462, !tbaa !1092
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4462
  %133 = load ptr, ptr %132, align 8, !dbg !4462, !tbaa !1092
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4462
  %135 = load ptr, ptr %134, align 8, !dbg !4462, !tbaa !1092
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4462
  %137 = load ptr, ptr %136, align 8, !dbg !4462, !tbaa !1092
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4462
  %139 = load ptr, ptr %138, align 8, !dbg !4462, !tbaa !1092
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4462
  %141 = load ptr, ptr %140, align 8, !dbg !4462, !tbaa !1092
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4462
  %143 = load ptr, ptr %142, align 8, !dbg !4462, !tbaa !1092
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4462
  %145 = load ptr, ptr %144, align 8, !dbg !4462, !tbaa !1092
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !4462
  br label %147, !dbg !4463

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4464
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4465 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4469, metadata !DIExpression()), !dbg !4475
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4470, metadata !DIExpression()), !dbg !4475
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4471, metadata !DIExpression()), !dbg !4475
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4472, metadata !DIExpression()), !dbg !4475
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4473, metadata !DIExpression()), !dbg !4475
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4474, metadata !DIExpression()), !dbg !4475
  br label %6, !dbg !4476

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4478
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4474, metadata !DIExpression()), !dbg !4475
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4479
  %9 = load ptr, ptr %8, align 8, !dbg !4479, !tbaa !1092
  %10 = icmp eq ptr %9, null, !dbg !4481
  %11 = add i64 %7, 1, !dbg !4482
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4474, metadata !DIExpression()), !dbg !4475
  br i1 %10, label %12, label %6, !dbg !4481, !llvm.loop !4483

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4485
  ret void, !dbg !4486
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4487 {
  %6 = alloca [10 x ptr], align 16, !DIAssignID !4506
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4504, metadata !DIExpression(), metadata !4506, metadata ptr %6, metadata !DIExpression()), !dbg !4507
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4498, metadata !DIExpression()), !dbg !4507
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4499, metadata !DIExpression()), !dbg !4507
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4500, metadata !DIExpression()), !dbg !4507
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4501, metadata !DIExpression()), !dbg !4507
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4502, metadata !DIExpression()), !dbg !4507
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !4508
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4503, metadata !DIExpression()), !dbg !4507
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4503, metadata !DIExpression()), !dbg !4507
  %10 = icmp ult i32 %9, 41, !dbg !4509
  br i1 %10, label %11, label %16, !dbg !4509

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4509
  %13 = zext nneg i32 %9 to i64, !dbg !4509
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4509
  %15 = add nuw nsw i32 %9, 8, !dbg !4509
  store i32 %15, ptr %4, align 8, !dbg !4509
  br label %19, !dbg !4509

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4509
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4509
  store ptr %18, ptr %7, align 8, !dbg !4509
  br label %19, !dbg !4509

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4509
  %22 = load ptr, ptr %21, align 8, !dbg !4509
  store ptr %22, ptr %6, align 16, !dbg !4512, !tbaa !1092
  %23 = icmp eq ptr %22, null, !dbg !4513
  br i1 %23, label %128, label %24, !dbg !4514

24:                                               ; preds = %19
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4503, metadata !DIExpression()), !dbg !4507
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4503, metadata !DIExpression()), !dbg !4507
  %25 = icmp ult i32 %20, 41, !dbg !4509
  br i1 %25, label %29, label %26, !dbg !4509

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4509
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4509
  store ptr %28, ptr %7, align 8, !dbg !4509
  br label %34, !dbg !4509

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4509
  %31 = zext nneg i32 %20 to i64, !dbg !4509
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4509
  %33 = add nuw nsw i32 %20, 8, !dbg !4509
  store i32 %33, ptr %4, align 8, !dbg !4509
  br label %34, !dbg !4509

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4509
  %37 = load ptr, ptr %36, align 8, !dbg !4509
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4515
  store ptr %37, ptr %38, align 8, !dbg !4512, !tbaa !1092
  %39 = icmp eq ptr %37, null, !dbg !4513
  br i1 %39, label %128, label %40, !dbg !4514

40:                                               ; preds = %34
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4503, metadata !DIExpression()), !dbg !4507
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4503, metadata !DIExpression()), !dbg !4507
  %41 = icmp ult i32 %35, 41, !dbg !4509
  br i1 %41, label %45, label %42, !dbg !4509

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4509
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4509
  store ptr %44, ptr %7, align 8, !dbg !4509
  br label %50, !dbg !4509

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4509
  %47 = zext nneg i32 %35 to i64, !dbg !4509
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4509
  %49 = add nuw nsw i32 %35, 8, !dbg !4509
  store i32 %49, ptr %4, align 8, !dbg !4509
  br label %50, !dbg !4509

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4509
  %53 = load ptr, ptr %52, align 8, !dbg !4509
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4515
  store ptr %53, ptr %54, align 16, !dbg !4512, !tbaa !1092
  %55 = icmp eq ptr %53, null, !dbg !4513
  br i1 %55, label %128, label %56, !dbg !4514

56:                                               ; preds = %50
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4503, metadata !DIExpression()), !dbg !4507
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4503, metadata !DIExpression()), !dbg !4507
  %57 = icmp ult i32 %51, 41, !dbg !4509
  br i1 %57, label %61, label %58, !dbg !4509

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4509
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4509
  store ptr %60, ptr %7, align 8, !dbg !4509
  br label %66, !dbg !4509

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4509
  %63 = zext nneg i32 %51 to i64, !dbg !4509
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4509
  %65 = add nuw nsw i32 %51, 8, !dbg !4509
  store i32 %65, ptr %4, align 8, !dbg !4509
  br label %66, !dbg !4509

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4509
  %69 = load ptr, ptr %68, align 8, !dbg !4509
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4515
  store ptr %69, ptr %70, align 8, !dbg !4512, !tbaa !1092
  %71 = icmp eq ptr %69, null, !dbg !4513
  br i1 %71, label %128, label %72, !dbg !4514

72:                                               ; preds = %66
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4503, metadata !DIExpression()), !dbg !4507
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4503, metadata !DIExpression()), !dbg !4507
  %73 = icmp ult i32 %67, 41, !dbg !4509
  br i1 %73, label %77, label %74, !dbg !4509

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4509
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4509
  store ptr %76, ptr %7, align 8, !dbg !4509
  br label %82, !dbg !4509

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4509
  %79 = zext nneg i32 %67 to i64, !dbg !4509
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4509
  %81 = add nuw nsw i32 %67, 8, !dbg !4509
  store i32 %81, ptr %4, align 8, !dbg !4509
  br label %82, !dbg !4509

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4509
  %85 = load ptr, ptr %84, align 8, !dbg !4509
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4515
  store ptr %85, ptr %86, align 16, !dbg !4512, !tbaa !1092
  %87 = icmp eq ptr %85, null, !dbg !4513
  br i1 %87, label %128, label %88, !dbg !4514

88:                                               ; preds = %82
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4503, metadata !DIExpression()), !dbg !4507
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4503, metadata !DIExpression()), !dbg !4507
  %89 = icmp ult i32 %83, 41, !dbg !4509
  br i1 %89, label %93, label %90, !dbg !4509

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4509
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4509
  store ptr %92, ptr %7, align 8, !dbg !4509
  br label %98, !dbg !4509

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4509
  %95 = zext nneg i32 %83 to i64, !dbg !4509
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4509
  %97 = add nuw nsw i32 %83, 8, !dbg !4509
  store i32 %97, ptr %4, align 8, !dbg !4509
  br label %98, !dbg !4509

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4509
  %100 = load ptr, ptr %99, align 8, !dbg !4509
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4515
  store ptr %100, ptr %101, align 8, !dbg !4512, !tbaa !1092
  %102 = icmp eq ptr %100, null, !dbg !4513
  br i1 %102, label %128, label %103, !dbg !4514

103:                                              ; preds = %98
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4503, metadata !DIExpression()), !dbg !4507
  %104 = load ptr, ptr %7, align 8, !dbg !4509
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4509
  store ptr %105, ptr %7, align 8, !dbg !4509
  %106 = load ptr, ptr %104, align 8, !dbg !4509
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4515
  store ptr %106, ptr %107, align 16, !dbg !4512, !tbaa !1092
  %108 = icmp eq ptr %106, null, !dbg !4513
  br i1 %108, label %128, label %109, !dbg !4514

109:                                              ; preds = %103
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4503, metadata !DIExpression()), !dbg !4507
  %110 = load ptr, ptr %7, align 8, !dbg !4509
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4509
  store ptr %111, ptr %7, align 8, !dbg !4509
  %112 = load ptr, ptr %110, align 8, !dbg !4509
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4515
  store ptr %112, ptr %113, align 8, !dbg !4512, !tbaa !1092
  %114 = icmp eq ptr %112, null, !dbg !4513
  br i1 %114, label %128, label %115, !dbg !4514

115:                                              ; preds = %109
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4503, metadata !DIExpression()), !dbg !4507
  %116 = load ptr, ptr %7, align 8, !dbg !4509
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4509
  store ptr %117, ptr %7, align 8, !dbg !4509
  %118 = load ptr, ptr %116, align 8, !dbg !4509
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4515
  store ptr %118, ptr %119, align 16, !dbg !4512, !tbaa !1092
  %120 = icmp eq ptr %118, null, !dbg !4513
  br i1 %120, label %128, label %121, !dbg !4514

121:                                              ; preds = %115
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4503, metadata !DIExpression()), !dbg !4507
  %122 = load ptr, ptr %7, align 8, !dbg !4509
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4509
  store ptr %123, ptr %7, align 8, !dbg !4509
  %124 = load ptr, ptr %122, align 8, !dbg !4509
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4515
  store ptr %124, ptr %125, align 8, !dbg !4512, !tbaa !1092
  %126 = icmp eq ptr %124, null, !dbg !4513
  %127 = select i1 %126, i64 9, i64 10, !dbg !4514
  br label %128, !dbg !4514

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4516
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4517
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !4518
  ret void, !dbg !4518
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4519 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16, !DIAssignID !4532
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4527, metadata !DIExpression(), metadata !4532, metadata ptr %5, metadata !DIExpression()), !dbg !4533
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4523, metadata !DIExpression()), !dbg !4533
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4524, metadata !DIExpression()), !dbg !4533
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4525, metadata !DIExpression()), !dbg !4533
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4526, metadata !DIExpression()), !dbg !4533
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #38, !dbg !4534
  call void @llvm.va_start(ptr nonnull %5), !dbg !4535
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4536
  call void @llvm.va_end(ptr nonnull %5), !dbg !4537
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #38, !dbg !4538
  ret void, !dbg !4538
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4539 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4540, !tbaa !1092
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.128, ptr noundef %1), !dbg !4540
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.17.145, i32 noundef 5) #38, !dbg !4541
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.146) #38, !dbg !4541
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.19.147, i32 noundef 5) #38, !dbg !4542
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.148, ptr noundef nonnull @.str.21.149) #38, !dbg !4542
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.22.150, i32 noundef 5) #38, !dbg !4543
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.151) #38, !dbg !4543
  ret void, !dbg !4544
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4545 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4550, metadata !DIExpression()), !dbg !4553
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4551, metadata !DIExpression()), !dbg !4553
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4552, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata ptr %0, metadata !4554, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i64 %1, metadata !4557, metadata !DIExpression()), !dbg !4559
  call void @llvm.dbg.value(metadata i64 %2, metadata !4558, metadata !DIExpression()), !dbg !4559
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4561
  call void @llvm.dbg.value(metadata ptr %4, metadata !4562, metadata !DIExpression()), !dbg !4567
  %5 = icmp eq ptr %4, null, !dbg !4569
  br i1 %5, label %6, label %7, !dbg !4571

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4572
  unreachable, !dbg !4572

7:                                                ; preds = %3
  ret ptr %4, !dbg !4573
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !4555 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4554, metadata !DIExpression()), !dbg !4574
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4557, metadata !DIExpression()), !dbg !4574
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4558, metadata !DIExpression()), !dbg !4574
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4575
  call void @llvm.dbg.value(metadata ptr %4, metadata !4562, metadata !DIExpression()), !dbg !4576
  %5 = icmp eq ptr %4, null, !dbg !4578
  br i1 %5, label %6, label %7, !dbg !4579

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4580
  unreachable, !dbg !4580

7:                                                ; preds = %3
  ret ptr %4, !dbg !4581
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4582 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4586, metadata !DIExpression()), !dbg !4587
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !4588
  call void @llvm.dbg.value(metadata ptr %2, metadata !4562, metadata !DIExpression()), !dbg !4589
  %3 = icmp eq ptr %2, null, !dbg !4591
  br i1 %3, label %4, label %5, !dbg !4592

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4593
  unreachable, !dbg !4593

5:                                                ; preds = %1
  ret ptr %2, !dbg !4594
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4595 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4596 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4600, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i64 %0, metadata !4602, metadata !DIExpression()), !dbg !4606
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !4608
  call void @llvm.dbg.value(metadata ptr %2, metadata !4562, metadata !DIExpression()), !dbg !4609
  %3 = icmp eq ptr %2, null, !dbg !4611
  br i1 %3, label %4, label %5, !dbg !4612

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4613
  unreachable, !dbg !4613

5:                                                ; preds = %1
  ret ptr %2, !dbg !4614
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4615 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4619, metadata !DIExpression()), !dbg !4620
  call void @llvm.dbg.value(metadata i64 %0, metadata !4586, metadata !DIExpression()), !dbg !4621
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #43, !dbg !4623
  call void @llvm.dbg.value(metadata ptr %2, metadata !4562, metadata !DIExpression()), !dbg !4624
  %3 = icmp eq ptr %2, null, !dbg !4626
  br i1 %3, label %4, label %5, !dbg !4627

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4628
  unreachable, !dbg !4628

5:                                                ; preds = %1
  ret ptr %2, !dbg !4629
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4630 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4634, metadata !DIExpression()), !dbg !4636
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4635, metadata !DIExpression()), !dbg !4636
  call void @llvm.dbg.value(metadata ptr %0, metadata !4637, metadata !DIExpression()), !dbg !4642
  call void @llvm.dbg.value(metadata i64 %1, metadata !4641, metadata !DIExpression()), !dbg !4642
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4644
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !4645
  call void @llvm.dbg.value(metadata ptr %4, metadata !4562, metadata !DIExpression()), !dbg !4646
  %5 = icmp eq ptr %4, null, !dbg !4648
  br i1 %5, label %6, label %7, !dbg !4649

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4650
  unreachable, !dbg !4650

7:                                                ; preds = %2
  ret ptr %4, !dbg !4651
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4652 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4653 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4657, metadata !DIExpression()), !dbg !4659
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4658, metadata !DIExpression()), !dbg !4659
  call void @llvm.dbg.value(metadata ptr %0, metadata !4660, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.value(metadata i64 %1, metadata !4663, metadata !DIExpression()), !dbg !4664
  call void @llvm.dbg.value(metadata ptr %0, metadata !4637, metadata !DIExpression()), !dbg !4666
  call void @llvm.dbg.value(metadata i64 %1, metadata !4641, metadata !DIExpression()), !dbg !4666
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4668
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #45, !dbg !4669
  call void @llvm.dbg.value(metadata ptr %4, metadata !4562, metadata !DIExpression()), !dbg !4670
  %5 = icmp eq ptr %4, null, !dbg !4672
  br i1 %5, label %6, label %7, !dbg !4673

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4674
  unreachable, !dbg !4674

7:                                                ; preds = %2
  ret ptr %4, !dbg !4675
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !4676 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4680, metadata !DIExpression()), !dbg !4683
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4681, metadata !DIExpression()), !dbg !4683
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4682, metadata !DIExpression()), !dbg !4683
  call void @llvm.dbg.value(metadata ptr %0, metadata !4684, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.value(metadata i64 %1, metadata !4687, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.value(metadata i64 %2, metadata !4688, metadata !DIExpression()), !dbg !4689
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4691
  call void @llvm.dbg.value(metadata ptr %4, metadata !4562, metadata !DIExpression()), !dbg !4692
  %5 = icmp eq ptr %4, null, !dbg !4694
  br i1 %5, label %6, label %7, !dbg !4695

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4696
  unreachable, !dbg !4696

7:                                                ; preds = %3
  ret ptr %4, !dbg !4697
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4698 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4702, metadata !DIExpression()), !dbg !4704
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4703, metadata !DIExpression()), !dbg !4704
  call void @llvm.dbg.value(metadata ptr null, metadata !4554, metadata !DIExpression()), !dbg !4705
  call void @llvm.dbg.value(metadata i64 %0, metadata !4557, metadata !DIExpression()), !dbg !4705
  call void @llvm.dbg.value(metadata i64 %1, metadata !4558, metadata !DIExpression()), !dbg !4705
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4707
  call void @llvm.dbg.value(metadata ptr %3, metadata !4562, metadata !DIExpression()), !dbg !4708
  %4 = icmp eq ptr %3, null, !dbg !4710
  br i1 %4, label %5, label %6, !dbg !4711

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4712
  unreachable, !dbg !4712

6:                                                ; preds = %2
  ret ptr %3, !dbg !4713
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4714 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4718, metadata !DIExpression()), !dbg !4720
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4719, metadata !DIExpression()), !dbg !4720
  call void @llvm.dbg.value(metadata ptr null, metadata !4680, metadata !DIExpression()), !dbg !4721
  call void @llvm.dbg.value(metadata i64 %0, metadata !4681, metadata !DIExpression()), !dbg !4721
  call void @llvm.dbg.value(metadata i64 %1, metadata !4682, metadata !DIExpression()), !dbg !4721
  call void @llvm.dbg.value(metadata ptr null, metadata !4684, metadata !DIExpression()), !dbg !4723
  call void @llvm.dbg.value(metadata i64 %0, metadata !4687, metadata !DIExpression()), !dbg !4723
  call void @llvm.dbg.value(metadata i64 %1, metadata !4688, metadata !DIExpression()), !dbg !4723
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4725
  call void @llvm.dbg.value(metadata ptr %3, metadata !4562, metadata !DIExpression()), !dbg !4726
  %4 = icmp eq ptr %3, null, !dbg !4728
  br i1 %4, label %5, label %6, !dbg !4729

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4730
  unreachable, !dbg !4730

6:                                                ; preds = %2
  ret ptr %3, !dbg !4731
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4732 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4736, metadata !DIExpression()), !dbg !4738
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4737, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata ptr %0, metadata !1033, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata ptr %1, metadata !1034, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i64 1, metadata !1035, metadata !DIExpression()), !dbg !4739
  %3 = load i64, ptr %1, align 8, !dbg !4741, !tbaa !1396
  call void @llvm.dbg.value(metadata i64 %3, metadata !1036, metadata !DIExpression()), !dbg !4739
  %4 = icmp eq ptr %0, null, !dbg !4742
  br i1 %4, label %5, label %8, !dbg !4744

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4745
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4748
  br label %15, !dbg !4748

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4749
  %10 = add nuw i64 %9, 1, !dbg !4749
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4749
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4749
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4749
  call void @llvm.dbg.value(metadata i64 %13, metadata !1036, metadata !DIExpression()), !dbg !4739
  br i1 %12, label %14, label %15, !dbg !4752

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !4753
  unreachable, !dbg !4753

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4739
  call void @llvm.dbg.value(metadata i64 %16, metadata !1036, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata ptr %0, metadata !4554, metadata !DIExpression()), !dbg !4754
  call void @llvm.dbg.value(metadata i64 %16, metadata !4557, metadata !DIExpression()), !dbg !4754
  call void @llvm.dbg.value(metadata i64 1, metadata !4558, metadata !DIExpression()), !dbg !4754
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !4756
  call void @llvm.dbg.value(metadata ptr %17, metadata !4562, metadata !DIExpression()), !dbg !4757
  %18 = icmp eq ptr %17, null, !dbg !4759
  br i1 %18, label %19, label %20, !dbg !4760

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !4761
  unreachable, !dbg !4761

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !1033, metadata !DIExpression()), !dbg !4739
  store i64 %16, ptr %1, align 8, !dbg !4762, !tbaa !1396
  ret ptr %17, !dbg !4763
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1028 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1033, metadata !DIExpression()), !dbg !4764
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1034, metadata !DIExpression()), !dbg !4764
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1035, metadata !DIExpression()), !dbg !4764
  %4 = load i64, ptr %1, align 8, !dbg !4765, !tbaa !1396
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1036, metadata !DIExpression()), !dbg !4764
  %5 = icmp eq ptr %0, null, !dbg !4766
  br i1 %5, label %6, label %13, !dbg !4767

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4768
  br i1 %7, label %8, label %20, !dbg !4769

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4770
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1036, metadata !DIExpression()), !dbg !4764
  %10 = icmp ugt i64 %2, 128, !dbg !4772
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4773
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1036, metadata !DIExpression()), !dbg !4764
  br label %20, !dbg !4774

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4775
  %15 = add nuw i64 %14, 1, !dbg !4775
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4775
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4775
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4775
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1036, metadata !DIExpression()), !dbg !4764
  br i1 %17, label %19, label %20, !dbg !4776

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !4777
  unreachable, !dbg !4777

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4764
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !1036, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata ptr %0, metadata !4554, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata i64 %21, metadata !4557, metadata !DIExpression()), !dbg !4778
  call void @llvm.dbg.value(metadata i64 %2, metadata !4558, metadata !DIExpression()), !dbg !4778
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !4780
  call void @llvm.dbg.value(metadata ptr %22, metadata !4562, metadata !DIExpression()), !dbg !4781
  %23 = icmp eq ptr %22, null, !dbg !4783
  br i1 %23, label %24, label %25, !dbg !4784

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !4785
  unreachable, !dbg !4785

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !1033, metadata !DIExpression()), !dbg !4764
  store i64 %21, ptr %1, align 8, !dbg !4786, !tbaa !1396
  ret ptr %22, !dbg !4787
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !1040 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1047, metadata !DIExpression()), !dbg !4788
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1048, metadata !DIExpression()), !dbg !4788
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1049, metadata !DIExpression()), !dbg !4788
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1050, metadata !DIExpression()), !dbg !4788
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1051, metadata !DIExpression()), !dbg !4788
  %6 = load i64, ptr %1, align 8, !dbg !4789, !tbaa !1396
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1052, metadata !DIExpression()), !dbg !4788
  %7 = ashr i64 %6, 1, !dbg !4790
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4790
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4790
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4790
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !1053, metadata !DIExpression()), !dbg !4788
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4792
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1053, metadata !DIExpression()), !dbg !4788
  %12 = icmp sgt i64 %3, -1, !dbg !4793
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4795
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4795
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !1053, metadata !DIExpression()), !dbg !4788
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4796
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4796
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4796
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !1054, metadata !DIExpression()), !dbg !4788
  %18 = icmp slt i64 %17, 128, !dbg !4796
  %19 = select i1 %18, i64 128, i64 0, !dbg !4796
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4796
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !1055, metadata !DIExpression()), !dbg !4788
  %21 = icmp eq i64 %20, 0, !dbg !4797
  br i1 %21, label %26, label %22, !dbg !4799

22:                                               ; preds = %5
  %23 = sdiv i64 %20, %4, !dbg !4800
  tail call void @llvm.dbg.value(metadata i64 %23, metadata !1053, metadata !DIExpression()), !dbg !4788
  %24 = srem i64 %20, %4, !dbg !4802
  %25 = sub nsw i64 %20, %24, !dbg !4803
  tail call void @llvm.dbg.value(metadata i64 %25, metadata !1054, metadata !DIExpression()), !dbg !4788
  br label %26, !dbg !4804

26:                                               ; preds = %22, %5
  %27 = phi i64 [ %23, %22 ], [ %14, %5 ], !dbg !4788
  %28 = phi i64 [ %25, %22 ], [ %17, %5 ], !dbg !4788
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !1054, metadata !DIExpression()), !dbg !4788
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !1053, metadata !DIExpression()), !dbg !4788
  %29 = icmp eq ptr %0, null, !dbg !4805
  br i1 %29, label %30, label %31, !dbg !4807

30:                                               ; preds = %26
  store i64 0, ptr %1, align 8, !dbg !4808, !tbaa !1396
  br label %31, !dbg !4809

31:                                               ; preds = %30, %26
  %32 = sub nsw i64 %27, %6, !dbg !4810
  %33 = icmp slt i64 %32, %2, !dbg !4812
  br i1 %33, label %34, label %46, !dbg !4813

34:                                               ; preds = %31
  %35 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4814
  %36 = extractvalue { i64, i1 } %35, 1, !dbg !4814
  %37 = extractvalue { i64, i1 } %35, 0, !dbg !4814
  tail call void @llvm.dbg.value(metadata i64 %37, metadata !1053, metadata !DIExpression()), !dbg !4788
  %38 = icmp sgt i64 %37, %3
  %39 = select i1 %12, i1 %38, i1 false
  %40 = or i1 %36, %39, !dbg !4815
  br i1 %40, label %45, label %41, !dbg !4815

41:                                               ; preds = %34
  %42 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %37, i64 %4), !dbg !4816
  %43 = extractvalue { i64, i1 } %42, 1, !dbg !4816
  %44 = extractvalue { i64, i1 } %42, 0, !dbg !4816
  tail call void @llvm.dbg.value(metadata i64 %44, metadata !1054, metadata !DIExpression()), !dbg !4788
  br i1 %43, label %45, label %46, !dbg !4817

45:                                               ; preds = %41, %34
  tail call void @xalloc_die() #40, !dbg !4818
  unreachable, !dbg !4818

46:                                               ; preds = %41, %31
  %47 = phi i64 [ %37, %41 ], [ %27, %31 ], !dbg !4788
  %48 = phi i64 [ %44, %41 ], [ %28, %31 ], !dbg !4788
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !1054, metadata !DIExpression()), !dbg !4788
  tail call void @llvm.dbg.value(metadata i64 %47, metadata !1053, metadata !DIExpression()), !dbg !4788
  call void @llvm.dbg.value(metadata ptr %0, metadata !4634, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata i64 %48, metadata !4635, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata ptr %0, metadata !4637, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata i64 %48, metadata !4641, metadata !DIExpression()), !dbg !4821
  %49 = tail call i64 @llvm.umax.i64(i64 %48, i64 1), !dbg !4823
  %50 = tail call ptr @realloc(ptr noundef %0, i64 noundef %49) #45, !dbg !4824
  call void @llvm.dbg.value(metadata ptr %50, metadata !4562, metadata !DIExpression()), !dbg !4825
  %51 = icmp eq ptr %50, null, !dbg !4827
  br i1 %51, label %52, label %53, !dbg !4828

52:                                               ; preds = %46
  tail call void @xalloc_die() #40, !dbg !4829
  unreachable, !dbg !4829

53:                                               ; preds = %46
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !1047, metadata !DIExpression()), !dbg !4788
  store i64 %47, ptr %1, align 8, !dbg !4830, !tbaa !1396
  ret ptr %50, !dbg !4831
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4832 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4834, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i64 %0, metadata !4836, metadata !DIExpression()), !dbg !4840
  call void @llvm.dbg.value(metadata i64 1, metadata !4839, metadata !DIExpression()), !dbg !4840
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4842
  call void @llvm.dbg.value(metadata ptr %2, metadata !4562, metadata !DIExpression()), !dbg !4843
  %3 = icmp eq ptr %2, null, !dbg !4845
  br i1 %3, label %4, label %5, !dbg !4846

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4847
  unreachable, !dbg !4847

5:                                                ; preds = %1
  ret ptr %2, !dbg !4848
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4849 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4837 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4836, metadata !DIExpression()), !dbg !4850
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4839, metadata !DIExpression()), !dbg !4850
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4851
  call void @llvm.dbg.value(metadata ptr %3, metadata !4562, metadata !DIExpression()), !dbg !4852
  %4 = icmp eq ptr %3, null, !dbg !4854
  br i1 %4, label %5, label %6, !dbg !4855

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4856
  unreachable, !dbg !4856

6:                                                ; preds = %2
  ret ptr %3, !dbg !4857
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4858 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4860, metadata !DIExpression()), !dbg !4861
  call void @llvm.dbg.value(metadata i64 %0, metadata !4862, metadata !DIExpression()), !dbg !4866
  call void @llvm.dbg.value(metadata i64 1, metadata !4865, metadata !DIExpression()), !dbg !4866
  call void @llvm.dbg.value(metadata i64 %0, metadata !4868, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.value(metadata i64 1, metadata !4871, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.value(metadata i64 %0, metadata !4868, metadata !DIExpression()), !dbg !4872
  call void @llvm.dbg.value(metadata i64 1, metadata !4871, metadata !DIExpression()), !dbg !4872
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4874
  call void @llvm.dbg.value(metadata ptr %2, metadata !4562, metadata !DIExpression()), !dbg !4875
  %3 = icmp eq ptr %2, null, !dbg !4877
  br i1 %3, label %4, label %5, !dbg !4878

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4879
  unreachable, !dbg !4879

5:                                                ; preds = %1
  ret ptr %2, !dbg !4880
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4863 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4862, metadata !DIExpression()), !dbg !4881
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4865, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata i64 %0, metadata !4868, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i64 %1, metadata !4871, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i64 %0, metadata !4868, metadata !DIExpression()), !dbg !4882
  call void @llvm.dbg.value(metadata i64 %1, metadata !4871, metadata !DIExpression()), !dbg !4882
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4884
  call void @llvm.dbg.value(metadata ptr %3, metadata !4562, metadata !DIExpression()), !dbg !4885
  %4 = icmp eq ptr %3, null, !dbg !4887
  br i1 %4, label %5, label %6, !dbg !4888

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4889
  unreachable, !dbg !4889

6:                                                ; preds = %2
  ret ptr %3, !dbg !4890
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4891 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4895, metadata !DIExpression()), !dbg !4897
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4896, metadata !DIExpression()), !dbg !4897
  call void @llvm.dbg.value(metadata i64 %1, metadata !4586, metadata !DIExpression()), !dbg !4898
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !4900
  call void @llvm.dbg.value(metadata ptr %3, metadata !4562, metadata !DIExpression()), !dbg !4901
  %4 = icmp eq ptr %3, null, !dbg !4903
  br i1 %4, label %5, label %6, !dbg !4904

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4905
  unreachable, !dbg !4905

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4906, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata ptr %0, metadata !4909, metadata !DIExpression()), !dbg !4911
  call void @llvm.dbg.value(metadata i64 %1, metadata !4910, metadata !DIExpression()), !dbg !4911
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4913
  ret ptr %3, !dbg !4914
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4915 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4919, metadata !DIExpression()), !dbg !4921
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4920, metadata !DIExpression()), !dbg !4921
  call void @llvm.dbg.value(metadata i64 %1, metadata !4600, metadata !DIExpression()), !dbg !4922
  call void @llvm.dbg.value(metadata i64 %1, metadata !4602, metadata !DIExpression()), !dbg !4924
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #43, !dbg !4926
  call void @llvm.dbg.value(metadata ptr %3, metadata !4562, metadata !DIExpression()), !dbg !4927
  %4 = icmp eq ptr %3, null, !dbg !4929
  br i1 %4, label %5, label %6, !dbg !4930

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4931
  unreachable, !dbg !4931

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4906, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata ptr %0, metadata !4909, metadata !DIExpression()), !dbg !4932
  call void @llvm.dbg.value(metadata i64 %1, metadata !4910, metadata !DIExpression()), !dbg !4932
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4934
  ret ptr %3, !dbg !4935
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4936 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4940, metadata !DIExpression()), !dbg !4943
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4941, metadata !DIExpression()), !dbg !4943
  %3 = add nsw i64 %1, 1, !dbg !4944
  call void @llvm.dbg.value(metadata i64 %3, metadata !4600, metadata !DIExpression()), !dbg !4945
  call void @llvm.dbg.value(metadata i64 %3, metadata !4602, metadata !DIExpression()), !dbg !4947
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !4949
  call void @llvm.dbg.value(metadata ptr %4, metadata !4562, metadata !DIExpression()), !dbg !4950
  %5 = icmp eq ptr %4, null, !dbg !4952
  br i1 %5, label %6, label %7, !dbg !4953

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4954
  unreachable, !dbg !4954

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4942, metadata !DIExpression()), !dbg !4943
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4955
  store i8 0, ptr %8, align 1, !dbg !4956, !tbaa !1172
  call void @llvm.dbg.value(metadata ptr %4, metadata !4906, metadata !DIExpression()), !dbg !4957
  call void @llvm.dbg.value(metadata ptr %0, metadata !4909, metadata !DIExpression()), !dbg !4957
  call void @llvm.dbg.value(metadata i64 %1, metadata !4910, metadata !DIExpression()), !dbg !4957
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4959
  ret ptr %4, !dbg !4960
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4961 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4963, metadata !DIExpression()), !dbg !4964
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !4965
  %3 = add i64 %2, 1, !dbg !4966
  call void @llvm.dbg.value(metadata ptr %0, metadata !4895, metadata !DIExpression()), !dbg !4967
  call void @llvm.dbg.value(metadata i64 %3, metadata !4896, metadata !DIExpression()), !dbg !4967
  call void @llvm.dbg.value(metadata i64 %3, metadata !4586, metadata !DIExpression()), !dbg !4969
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #43, !dbg !4971
  call void @llvm.dbg.value(metadata ptr %4, metadata !4562, metadata !DIExpression()), !dbg !4972
  %5 = icmp eq ptr %4, null, !dbg !4974
  br i1 %5, label %6, label %7, !dbg !4975

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4976
  unreachable, !dbg !4976

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4906, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata ptr %0, metadata !4909, metadata !DIExpression()), !dbg !4977
  call void @llvm.dbg.value(metadata i64 %3, metadata !4910, metadata !DIExpression()), !dbg !4977
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !4979
  ret ptr %4, !dbg !4980
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4981 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4986, !tbaa !1163
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4983, metadata !DIExpression()), !dbg !4987
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.166, ptr noundef nonnull @.str.2.167, i32 noundef 5) #38, !dbg !4986
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.168, ptr noundef %2) #38, !dbg !4986
  %3 = icmp eq i32 %1, 0, !dbg !4986
  tail call void @llvm.assume(i1 %3), !dbg !4986
  tail call void @abort() #40, !dbg !4988
  unreachable, !dbg !4988
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4989 {
  %3 = alloca [81 x i8], align 16, !DIAssignID !5051
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5032, metadata !DIExpression(), metadata !5051, metadata ptr %3, metadata !DIExpression()), !dbg !5052
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5027, metadata !DIExpression()), !dbg !5052
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5028, metadata !DIExpression()), !dbg !5052
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5029, metadata !DIExpression()), !dbg !5052
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5030, metadata !DIExpression()), !dbg !5052
  tail call void @llvm.dbg.value(metadata i8 0, metadata !5031, metadata !DIExpression()), !dbg !5052
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #38, !dbg !5053
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5036, metadata !DIExpression()), !dbg !5054
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5038, metadata !DIExpression()), !dbg !5054
  br label %4, !dbg !5055

4:                                                ; preds = %43, %2
  %5 = phi i8 [ 0, %2 ], [ %44, %43 ], !dbg !5052
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !5054
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !5052
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !5056
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !5057
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !5029, metadata !DIExpression()), !dbg !5052
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !5030, metadata !DIExpression()), !dbg !5052
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5038, metadata !DIExpression()), !dbg !5054
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5036, metadata !DIExpression()), !dbg !5054
  tail call void @llvm.dbg.value(metadata i8 %5, metadata !5031, metadata !DIExpression()), !dbg !5052
  %11 = load i8, ptr %6, align 1, !dbg !5057, !tbaa !1172
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !5058

12:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !5029, metadata !DIExpression()), !dbg !5052
  %13 = icmp slt i64 %7, 80, !dbg !5059
  br i1 %13, label %14, label %43, !dbg !5062

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !5063
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !5038, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5054
  store i8 114, ptr %10, align 1, !dbg !5064, !tbaa !1172
  br label %43, !dbg !5065

16:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !5029, metadata !DIExpression()), !dbg !5052
  %17 = or i32 %8, 576, !dbg !5066
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !5030, metadata !DIExpression()), !dbg !5052
  %18 = icmp slt i64 %7, 80, !dbg !5067
  br i1 %18, label %19, label %43, !dbg !5069

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !5070
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !5038, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5054
  store i8 119, ptr %10, align 1, !dbg !5071, !tbaa !1172
  br label %43, !dbg !5072

21:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !5029, metadata !DIExpression()), !dbg !5052
  %22 = or i32 %8, 1088, !dbg !5073
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !5030, metadata !DIExpression()), !dbg !5052
  %23 = icmp slt i64 %7, 80, !dbg !5074
  br i1 %23, label %24, label %43, !dbg !5076

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !5077
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !5038, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5054
  store i8 97, ptr %10, align 1, !dbg !5078, !tbaa !1172
  br label %43, !dbg !5079

26:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !5030, metadata !DIExpression()), !dbg !5052
  %27 = icmp slt i64 %7, 80, !dbg !5080
  br i1 %27, label %28, label %43, !dbg !5082

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !5083
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !5038, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5054
  store i8 98, ptr %10, align 1, !dbg !5084, !tbaa !1172
  br label %43, !dbg !5085

30:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 2, metadata !5029, metadata !DIExpression()), !dbg !5052
  %31 = icmp slt i64 %7, 80, !dbg !5086
  br i1 %31, label %32, label %43, !dbg !5088

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !5089
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !5038, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5054
  store i8 43, ptr %10, align 1, !dbg !5090, !tbaa !1172
  br label %43, !dbg !5091

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !5092
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !5030, metadata !DIExpression()), !dbg !5052
  tail call void @llvm.dbg.value(metadata i8 1, metadata !5031, metadata !DIExpression()), !dbg !5052
  br label %43, !dbg !5093

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !5094
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !5030, metadata !DIExpression()), !dbg !5052
  tail call void @llvm.dbg.value(metadata i8 1, metadata !5031, metadata !DIExpression()), !dbg !5052
  br label %43, !dbg !5095

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #39, !dbg !5096
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !5039, metadata !DIExpression()), !dbg !5097
  %40 = sub nsw i64 80, %7, !dbg !5098
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !5100
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !5039, metadata !DIExpression()), !dbg !5097
  call void @llvm.dbg.value(metadata ptr %10, metadata !5101, metadata !DIExpression()), !dbg !5106
  call void @llvm.dbg.value(metadata ptr %6, metadata !5104, metadata !DIExpression()), !dbg !5106
  call void @llvm.dbg.value(metadata i64 %41, metadata !5105, metadata !DIExpression()), !dbg !5106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #38, !dbg !5108
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !5109
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !5038, metadata !DIExpression()), !dbg !5054
  br label %49, !dbg !5110

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i8 [ 1, %36 ], [ 1, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ], !dbg !5052
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !5052
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !5052
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !5029, metadata !DIExpression()), !dbg !5052
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !5030, metadata !DIExpression()), !dbg !5052
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !5038, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5054
  tail call void @llvm.dbg.value(metadata i8 %44, metadata !5031, metadata !DIExpression()), !dbg !5052
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !5111
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !5036, metadata !DIExpression()), !dbg !5054
  br label %4, !dbg !5112, !llvm.loop !5113

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !5054
  tail call void @llvm.dbg.value(metadata ptr %50, metadata !5038, metadata !DIExpression()), !dbg !5054
  store i8 0, ptr %50, align 1, !dbg !5115, !tbaa !1172
  %51 = and i8 %5, 1, !dbg !5116
  %52 = icmp eq i8 %51, 0, !dbg !5116
  br i1 %52, label %64, label %53, !dbg !5117

53:                                               ; preds = %49
  %54 = or i32 %9, %8, !dbg !5118
  %55 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %54, i32 noundef 438) #38, !dbg !5119
  tail call void @llvm.dbg.value(metadata i32 %55, metadata !5044, metadata !DIExpression()), !dbg !5120
  %56 = icmp slt i32 %55, 0, !dbg !5121
  br i1 %56, label %66, label %57, !dbg !5123

57:                                               ; preds = %53
  %58 = call noalias ptr @fdopen(i32 noundef %55, ptr noundef nonnull %3) #38, !dbg !5124
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !5047, metadata !DIExpression()), !dbg !5120
  %59 = icmp eq ptr %58, null, !dbg !5125
  br i1 %59, label %60, label %66, !dbg !5126

60:                                               ; preds = %57
  %61 = tail call ptr @__errno_location() #41, !dbg !5127
  %62 = load i32, ptr %61, align 4, !dbg !5127, !tbaa !1163
  tail call void @llvm.dbg.value(metadata i32 %62, metadata !5048, metadata !DIExpression()), !dbg !5128
  %63 = tail call i32 @close(i32 noundef %55) #38, !dbg !5129
  store i32 %62, ptr %61, align 4, !dbg !5130, !tbaa !1163
  br label %66, !dbg !5131

64:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !5132, metadata !DIExpression()), !dbg !5136
  call void @llvm.dbg.value(metadata ptr %1, metadata !5135, metadata !DIExpression()), !dbg !5136
  %65 = tail call noalias noundef ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !5138
  br label %66, !dbg !5139

66:                                               ; preds = %53, %60, %57, %64
  %67 = phi ptr [ %65, %64 ], [ null, %53 ], [ null, %60 ], [ %58, %57 ], !dbg !5052
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #38, !dbg !5140
  ret ptr %67, !dbg !5140
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !5141 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #35

; Function Attrs: nofree nounwind
declare !dbg !5144 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !5147 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !5148 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !5151 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5189, metadata !DIExpression()), !dbg !5194
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !5195
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5190, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5194
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5196, metadata !DIExpression()), !dbg !5199
  %3 = load i32, ptr %0, align 8, !dbg !5201, !tbaa !1430
  %4 = and i32 %3, 32, !dbg !5202
  %5 = icmp eq i32 %4, 0, !dbg !5202
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !5192, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5194
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !5203
  %7 = icmp eq i32 %6, 0, !dbg !5204
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !5193, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5194
  br i1 %5, label %8, label %18, !dbg !5205

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5207
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !5190, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5194
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5208
  %11 = xor i1 %7, true, !dbg !5208
  %12 = sext i1 %11 to i32, !dbg !5208
  br i1 %10, label %21, label %13, !dbg !5208

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !5209
  %15 = load i32, ptr %14, align 4, !dbg !5209, !tbaa !1163
  %16 = icmp ne i32 %15, 9, !dbg !5210
  %17 = sext i1 %16 to i32, !dbg !5211
  br label %21, !dbg !5211

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5212

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !5214
  store i32 0, ptr %20, align 4, !dbg !5216, !tbaa !1163
  br label %21, !dbg !5214

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5194
  ret i32 %22, !dbg !5217
}

; Function Attrs: nounwind
declare !dbg !5218 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5221 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5226, metadata !DIExpression()), !dbg !5231
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5227, metadata !DIExpression()), !dbg !5231
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5228, metadata !DIExpression()), !dbg !5231
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5229, metadata !DIExpression()), !dbg !5231
  %5 = icmp eq ptr %1, null, !dbg !5232
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5234
  %7 = select i1 %5, ptr @.str.175, ptr %1, !dbg !5234
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5234
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !5228, metadata !DIExpression()), !dbg !5231
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !5227, metadata !DIExpression()), !dbg !5231
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5226, metadata !DIExpression()), !dbg !5231
  %9 = icmp eq ptr %3, null, !dbg !5235
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5237
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5229, metadata !DIExpression()), !dbg !5231
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #38, !dbg !5238
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5230, metadata !DIExpression()), !dbg !5231
  %12 = icmp ult i64 %11, -3, !dbg !5239
  br i1 %12, label %13, label %17, !dbg !5241

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #39, !dbg !5242
  %15 = icmp eq i32 %14, 0, !dbg !5242
  br i1 %15, label %16, label %29, !dbg !5243

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5244, metadata !DIExpression()), !dbg !5249
  call void @llvm.dbg.value(metadata ptr %10, metadata !5251, metadata !DIExpression()), !dbg !5256
  call void @llvm.dbg.value(metadata i32 0, metadata !5254, metadata !DIExpression()), !dbg !5256
  call void @llvm.dbg.value(metadata i64 8, metadata !5255, metadata !DIExpression()), !dbg !5256
  store i64 0, ptr %10, align 1, !dbg !5258
  br label %29, !dbg !5259

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5260
  br i1 %18, label %19, label %20, !dbg !5262

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !5263
  unreachable, !dbg !5263

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5264

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #38, !dbg !5266
  br i1 %23, label %29, label %24, !dbg !5267

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5268
  br i1 %25, label %29, label %26, !dbg !5271

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5272, !tbaa !1172
  %28 = zext i8 %27 to i32, !dbg !5273
  store i32 %28, ptr %6, align 4, !dbg !5274, !tbaa !1163
  br label %29, !dbg !5275

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5231
  ret i64 %30, !dbg !5276
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5277 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !5282 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5284, metadata !DIExpression()), !dbg !5288
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5285, metadata !DIExpression()), !dbg !5288
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5286, metadata !DIExpression()), !dbg !5288
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5289
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5289
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5287, metadata !DIExpression()), !dbg !5288
  br i1 %5, label %6, label %8, !dbg !5291

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #41, !dbg !5292
  store i32 12, ptr %7, align 4, !dbg !5294, !tbaa !1163
  br label %12, !dbg !5295

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5289
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5287, metadata !DIExpression()), !dbg !5288
  call void @llvm.dbg.value(metadata ptr %0, metadata !5296, metadata !DIExpression()), !dbg !5300
  call void @llvm.dbg.value(metadata i64 %9, metadata !5299, metadata !DIExpression()), !dbg !5300
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5302
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #45, !dbg !5303
  br label %12, !dbg !5304

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5288
  ret ptr %13, !dbg !5305
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5306 {
  %2 = alloca [257 x i8], align 16, !DIAssignID !5313
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5309, metadata !DIExpression(), metadata !5313, metadata ptr %2, metadata !DIExpression()), !dbg !5314
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5308, metadata !DIExpression()), !dbg !5314
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !5315
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !5316
  %4 = icmp eq i32 %3, 0, !dbg !5316
  br i1 %4, label %5, label %12, !dbg !5318

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5319, metadata !DIExpression()), !dbg !5323
  call void @llvm.dbg.value(metadata !1130, metadata !5322, metadata !DIExpression()), !dbg !5323
  %6 = load i16, ptr %2, align 16, !dbg !5326
  %7 = icmp eq i16 %6, 67, !dbg !5326
  br i1 %7, label %11, label %8, !dbg !5327

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5319, metadata !DIExpression()), !dbg !5328
  call void @llvm.dbg.value(metadata ptr @.str.1.180, metadata !5322, metadata !DIExpression()), !dbg !5328
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.180, i64 6), !dbg !5330
  %10 = icmp eq i32 %9, 0, !dbg !5331
  br i1 %10, label %11, label %12, !dbg !5332

11:                                               ; preds = %8, %5
  br label %12, !dbg !5333

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5314
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !5334
  ret i1 %13, !dbg !5334
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5335 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5339, metadata !DIExpression()), !dbg !5342
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5340, metadata !DIExpression()), !dbg !5342
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5341, metadata !DIExpression()), !dbg !5342
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !5343
  ret i32 %4, !dbg !5344
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5345 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5349, metadata !DIExpression()), !dbg !5350
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !5351
  ret ptr %2, !dbg !5352
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5353 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5355, metadata !DIExpression()), !dbg !5357
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !5358
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5356, metadata !DIExpression()), !dbg !5357
  ret ptr %2, !dbg !5359
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5360 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5362, metadata !DIExpression()), !dbg !5369
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5363, metadata !DIExpression()), !dbg !5369
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5364, metadata !DIExpression()), !dbg !5369
  call void @llvm.dbg.value(metadata i32 %0, metadata !5355, metadata !DIExpression()), !dbg !5370
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !5372
  call void @llvm.dbg.value(metadata ptr %4, metadata !5356, metadata !DIExpression()), !dbg !5370
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5365, metadata !DIExpression()), !dbg !5369
  %5 = icmp eq ptr %4, null, !dbg !5373
  br i1 %5, label %6, label %9, !dbg !5374

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5375
  br i1 %7, label %19, label %8, !dbg !5378

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5379, !tbaa !1172
  br label %19, !dbg !5380

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !5381
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5366, metadata !DIExpression()), !dbg !5382
  %11 = icmp ult i64 %10, %2, !dbg !5383
  br i1 %11, label %12, label %14, !dbg !5385

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5386
  call void @llvm.dbg.value(metadata ptr %1, metadata !5388, metadata !DIExpression()), !dbg !5393
  call void @llvm.dbg.value(metadata ptr %4, metadata !5391, metadata !DIExpression()), !dbg !5393
  call void @llvm.dbg.value(metadata i64 %13, metadata !5392, metadata !DIExpression()), !dbg !5393
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #38, !dbg !5395
  br label %19, !dbg !5396

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5397
  br i1 %15, label %19, label %16, !dbg !5400

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5401
  call void @llvm.dbg.value(metadata ptr %1, metadata !5388, metadata !DIExpression()), !dbg !5403
  call void @llvm.dbg.value(metadata ptr %4, metadata !5391, metadata !DIExpression()), !dbg !5403
  call void @llvm.dbg.value(metadata i64 %17, metadata !5392, metadata !DIExpression()), !dbg !5403
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !5405
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5406
  store i8 0, ptr %18, align 1, !dbg !5407, !tbaa !1172
  br label %19, !dbg !5408

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5409
  ret i32 %20, !dbg !5410
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
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nounwind }
attributes #39 = { nounwind willreturn memory(read) }
attributes #40 = { noreturn nounwind }
attributes #41 = { nounwind willreturn memory(none) }
attributes #42 = { noreturn }
attributes #43 = { nounwind allocsize(0) }
attributes #44 = { cold }
attributes #45 = { nounwind allocsize(1) }
attributes #46 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!69, !442, !684, !688, !703, !970, !1002, !1007, !1009, !1012, !1014, !1016, !749, !763, !810, !1018, !964, !1024, !1057, !1059, !1061, !986, !1063, !1065, !1069, !1071}
!llvm.ident = !{!1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073}
!llvm.module.flags = !{!1074, !1075, !1076, !1077, !1078, !1079, !1080}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 76, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/unexpand.c", directory: "/src", checksumkind: CSK_MD5, checksum: "2f40f86ff2e1751a61c8225ac9d0fd19")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
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
!74 = !DIEnumerator(name: "CONVERT_FIRST_ONLY_OPTION", value: 128)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !76, line: 337, baseType: !77, size: 32, elements: !78)
!76 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!77 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!78 = !{!79, !80}
!79 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -130)
!80 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -131)
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
!169 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !172)
!171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!194 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!433 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!702 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !703, file: !704, line: 66, type: !746, isLocal: false, isDefinition: true)
!703 = distinct !DICompileUnit(language: DW_LANG_C11, file: !704, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !705, globals: !706, splitDebugInlining: false, nameTableKind: None)
!704 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!705 = !{!108, !115}
!706 = !{!707, !709, !728, !730, !732, !734, !701, !736, !738, !740, !742, !744}
!707 = !DIGlobalVariableExpression(var: !708, expr: !DIExpression())
!708 = distinct !DIGlobalVariable(scope: null, file: !704, line: 272, type: !227, isLocal: true, isDefinition: true)
!709 = !DIGlobalVariableExpression(var: !710, expr: !DIExpression())
!710 = distinct !DIGlobalVariable(name: "old_file_name", scope: !711, file: !704, line: 304, type: !113, isLocal: true, isDefinition: true)
!711 = distinct !DISubprogram(name: "verror_at_line", scope: !704, file: !704, line: 298, type: !712, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !721)
!712 = !DISubroutineType(types: !713)
!713 = !{null, !77, !77, !113, !72, !113, !714}
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !716)
!716 = !{!717, !718, !719, !720}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !715, file: !704, baseType: !72, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !715, file: !704, baseType: !72, size: 32, offset: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !715, file: !704, baseType: !108, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !715, file: !704, baseType: !108, size: 64, offset: 128)
!721 = !{!722, !723, !724, !725, !726, !727}
!722 = !DILocalVariable(name: "status", arg: 1, scope: !711, file: !704, line: 298, type: !77)
!723 = !DILocalVariable(name: "errnum", arg: 2, scope: !711, file: !704, line: 298, type: !77)
!724 = !DILocalVariable(name: "file_name", arg: 3, scope: !711, file: !704, line: 298, type: !113)
!725 = !DILocalVariable(name: "line_number", arg: 4, scope: !711, file: !704, line: 298, type: !72)
!726 = !DILocalVariable(name: "message", arg: 5, scope: !711, file: !704, line: 298, type: !113)
!727 = !DILocalVariable(name: "args", arg: 6, scope: !711, file: !704, line: 298, type: !714)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(name: "old_line_number", scope: !711, file: !704, line: 305, type: !72, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !704, line: 338, type: !234, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !704, line: 346, type: !269, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !704, line: 346, type: !244, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(name: "error_message_count", scope: !703, file: !704, line: 69, type: !72, isLocal: false, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !703, file: !704, line: 295, type: !77, isLocal: false, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !704, line: 208, type: !264, isLocal: true, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !704, line: 208, type: !571, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !704, line: 214, type: !227, isLocal: true, isDefinition: true)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(name: "program_name", scope: !749, file: !750, line: 31, type: !113, isLocal: false, isDefinition: true)
!749 = distinct !DICompileUnit(language: DW_LANG_C11, file: !750, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !751, globals: !752, splitDebugInlining: false, nameTableKind: None)
!750 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!751 = !{!108, !107}
!752 = !{!747, !753, !755}
!753 = !DIGlobalVariableExpression(var: !754, expr: !DIExpression())
!754 = distinct !DIGlobalVariable(scope: null, file: !750, line: 46, type: !269, isLocal: true, isDefinition: true)
!755 = !DIGlobalVariableExpression(var: !756, expr: !DIExpression())
!756 = distinct !DIGlobalVariable(scope: null, file: !750, line: 49, type: !234, isLocal: true, isDefinition: true)
!757 = !DIGlobalVariableExpression(var: !758, expr: !DIExpression())
!758 = distinct !DIGlobalVariable(name: "utf07FF", scope: !759, file: !760, line: 46, type: !783, isLocal: true, isDefinition: true)
!759 = distinct !DISubprogram(name: "proper_name_lite", scope: !760, file: !760, line: 38, type: !761, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !765)
!760 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!761 = !DISubroutineType(types: !762)
!762 = !{!113, !113, !113}
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !760, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !764, splitDebugInlining: false, nameTableKind: None)
!764 = !{!757}
!765 = !{!766, !767, !768, !769, !770}
!766 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !759, file: !760, line: 38, type: !113)
!767 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !759, file: !760, line: 38, type: !113)
!768 = !DILocalVariable(name: "translation", scope: !759, file: !760, line: 40, type: !113)
!769 = !DILocalVariable(name: "w", scope: !759, file: !760, line: 47, type: !381)
!770 = !DILocalVariable(name: "mbs", scope: !759, file: !760, line: 48, type: !771)
!771 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !772, line: 6, baseType: !773)
!772 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !774, line: 21, baseType: !775)
!774 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !774, line: 13, size: 64, elements: !776)
!776 = !{!777, !778}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !775, file: !774, line: 15, baseType: !77, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !775, file: !774, line: 20, baseType: !779, size: 32, offset: 32)
!779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !775, file: !774, line: 16, size: 32, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !779, file: !774, line: 18, baseType: !72, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !779, file: !774, line: 19, baseType: !234, size: 32)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 16, elements: !245)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(scope: null, file: !786, line: 78, type: !269, isLocal: true, isDefinition: true)
!786 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!787 = !DIGlobalVariableExpression(var: !788, expr: !DIExpression())
!788 = distinct !DIGlobalVariable(scope: null, file: !786, line: 79, type: !239, isLocal: true, isDefinition: true)
!789 = !DIGlobalVariableExpression(var: !790, expr: !DIExpression())
!790 = distinct !DIGlobalVariable(scope: null, file: !786, line: 80, type: !791, isLocal: true, isDefinition: true)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !792)
!792 = !{!793}
!793 = !DISubrange(count: 13)
!794 = !DIGlobalVariableExpression(var: !795, expr: !DIExpression())
!795 = distinct !DIGlobalVariable(scope: null, file: !786, line: 81, type: !791, isLocal: true, isDefinition: true)
!796 = !DIGlobalVariableExpression(var: !797, expr: !DIExpression())
!797 = distinct !DIGlobalVariable(scope: null, file: !786, line: 82, type: !216, isLocal: true, isDefinition: true)
!798 = !DIGlobalVariableExpression(var: !799, expr: !DIExpression())
!799 = distinct !DIGlobalVariable(scope: null, file: !786, line: 83, type: !244, isLocal: true, isDefinition: true)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(scope: null, file: !786, line: 84, type: !269, isLocal: true, isDefinition: true)
!802 = !DIGlobalVariableExpression(var: !803, expr: !DIExpression())
!803 = distinct !DIGlobalVariable(scope: null, file: !786, line: 85, type: !264, isLocal: true, isDefinition: true)
!804 = !DIGlobalVariableExpression(var: !805, expr: !DIExpression())
!805 = distinct !DIGlobalVariable(scope: null, file: !786, line: 86, type: !264, isLocal: true, isDefinition: true)
!806 = !DIGlobalVariableExpression(var: !807, expr: !DIExpression())
!807 = distinct !DIGlobalVariable(scope: null, file: !786, line: 87, type: !269, isLocal: true, isDefinition: true)
!808 = !DIGlobalVariableExpression(var: !809, expr: !DIExpression())
!809 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !810, file: !786, line: 76, type: !884, isLocal: false, isDefinition: true)
!810 = distinct !DICompileUnit(language: DW_LANG_C11, file: !786, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !811, retainedTypes: !819, globals: !820, splitDebugInlining: false, nameTableKind: None)
!811 = !{!812, !814, !81}
!812 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !813, line: 42, baseType: !72, size: 32, elements: !447)
!813 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!814 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !813, line: 254, baseType: !72, size: 32, elements: !815)
!815 = !{!816, !817, !818}
!816 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!817 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!818 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!819 = !{!108, !77, !109, !110}
!820 = !{!784, !787, !789, !794, !796, !798, !800, !802, !804, !806, !808, !821, !825, !835, !837, !842, !844, !846, !848, !850, !873, !880, !882}
!821 = !DIGlobalVariableExpression(var: !822, expr: !DIExpression())
!822 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !810, file: !786, line: 92, type: !823, isLocal: false, isDefinition: true)
!823 = !DICompositeType(tag: DW_TAG_array_type, baseType: !824, size: 320, elements: !55)
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !812)
!825 = !DIGlobalVariableExpression(var: !826, expr: !DIExpression())
!826 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !810, file: !786, line: 1040, type: !827, isLocal: false, isDefinition: true)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !786, line: 56, size: 448, elements: !828)
!828 = !{!829, !830, !831, !833, !834}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !827, file: !786, line: 59, baseType: !812, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !827, file: !786, line: 62, baseType: !77, size: 32, offset: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !827, file: !786, line: 66, baseType: !832, size: 256, offset: 64)
!832 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 256, elements: !270)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !827, file: !786, line: 69, baseType: !113, size: 64, offset: 320)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !827, file: !786, line: 72, baseType: !113, size: 64, offset: 384)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !810, file: !786, line: 107, type: !827, isLocal: true, isDefinition: true)
!837 = !DIGlobalVariableExpression(var: !838, expr: !DIExpression())
!838 = distinct !DIGlobalVariable(name: "slot0", scope: !810, file: !786, line: 831, type: !839, isLocal: true, isDefinition: true)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !840)
!840 = !{!841}
!841 = !DISubrange(count: 256)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(scope: null, file: !786, line: 321, type: !244, isLocal: true, isDefinition: true)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !786, line: 357, type: !244, isLocal: true, isDefinition: true)
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(scope: null, file: !786, line: 358, type: !244, isLocal: true, isDefinition: true)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(scope: null, file: !786, line: 199, type: !264, isLocal: true, isDefinition: true)
!850 = !DIGlobalVariableExpression(var: !851, expr: !DIExpression())
!851 = distinct !DIGlobalVariable(name: "quote", scope: !852, file: !786, line: 228, type: !871, isLocal: true, isDefinition: true)
!852 = distinct !DISubprogram(name: "gettext_quote", scope: !786, file: !786, line: 197, type: !853, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !855)
!853 = !DISubroutineType(types: !854)
!854 = !{!113, !113, !812}
!855 = !{!856, !857, !858, !859, !860}
!856 = !DILocalVariable(name: "msgid", arg: 1, scope: !852, file: !786, line: 197, type: !113)
!857 = !DILocalVariable(name: "s", arg: 2, scope: !852, file: !786, line: 197, type: !812)
!858 = !DILocalVariable(name: "translation", scope: !852, file: !786, line: 199, type: !113)
!859 = !DILocalVariable(name: "w", scope: !852, file: !786, line: 229, type: !381)
!860 = !DILocalVariable(name: "mbs", scope: !852, file: !786, line: 230, type: !861)
!861 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !772, line: 6, baseType: !862)
!862 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !774, line: 21, baseType: !863)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !774, line: 13, size: 64, elements: !864)
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !863, file: !774, line: 15, baseType: !77, size: 32)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !863, file: !774, line: 20, baseType: !867, size: 32, offset: 32)
!867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !863, file: !774, line: 16, size: 32, elements: !868)
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !867, file: !774, line: 18, baseType: !72, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !867, file: !774, line: 19, baseType: !234, size: 32)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 64, elements: !872)
!872 = !{!246, !236}
!873 = !DIGlobalVariableExpression(var: !874, expr: !DIExpression())
!874 = distinct !DIGlobalVariable(name: "slotvec", scope: !810, file: !786, line: 834, type: !875, isLocal: true, isDefinition: true)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !786, line: 823, size: 128, elements: !877)
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !876, file: !786, line: 825, baseType: !110, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !876, file: !786, line: 826, baseType: !107, size: 64, offset: 64)
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(name: "nslots", scope: !810, file: !786, line: 832, type: !77, isLocal: true, isDefinition: true)
!882 = !DIGlobalVariableExpression(var: !883, expr: !DIExpression())
!883 = distinct !DIGlobalVariable(name: "slotvec0", scope: !810, file: !786, line: 833, type: !876, isLocal: true, isDefinition: true)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !885, size: 704, elements: !347)
!885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!886 = !DIGlobalVariableExpression(var: !887, expr: !DIExpression())
!887 = distinct !DIGlobalVariable(scope: null, file: !888, line: 67, type: !337, isLocal: true, isDefinition: true)
!888 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!889 = !DIGlobalVariableExpression(var: !890, expr: !DIExpression())
!890 = distinct !DIGlobalVariable(scope: null, file: !888, line: 69, type: !264, isLocal: true, isDefinition: true)
!891 = !DIGlobalVariableExpression(var: !892, expr: !DIExpression())
!892 = distinct !DIGlobalVariable(scope: null, file: !888, line: 83, type: !264, isLocal: true, isDefinition: true)
!893 = !DIGlobalVariableExpression(var: !894, expr: !DIExpression())
!894 = distinct !DIGlobalVariable(scope: null, file: !888, line: 83, type: !234, isLocal: true, isDefinition: true)
!895 = !DIGlobalVariableExpression(var: !896, expr: !DIExpression())
!896 = distinct !DIGlobalVariable(scope: null, file: !888, line: 85, type: !244, isLocal: true, isDefinition: true)
!897 = !DIGlobalVariableExpression(var: !898, expr: !DIExpression())
!898 = distinct !DIGlobalVariable(scope: null, file: !888, line: 88, type: !899, isLocal: true, isDefinition: true)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !900)
!900 = !{!901}
!901 = !DISubrange(count: 171)
!902 = !DIGlobalVariableExpression(var: !903, expr: !DIExpression())
!903 = distinct !DIGlobalVariable(scope: null, file: !888, line: 88, type: !904, isLocal: true, isDefinition: true)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !905)
!905 = !{!906}
!906 = !DISubrange(count: 34)
!907 = !DIGlobalVariableExpression(var: !908, expr: !DIExpression())
!908 = distinct !DIGlobalVariable(scope: null, file: !888, line: 105, type: !124, isLocal: true, isDefinition: true)
!909 = !DIGlobalVariableExpression(var: !910, expr: !DIExpression())
!910 = distinct !DIGlobalVariable(scope: null, file: !888, line: 109, type: !425, isLocal: true, isDefinition: true)
!911 = !DIGlobalVariableExpression(var: !912, expr: !DIExpression())
!912 = distinct !DIGlobalVariable(scope: null, file: !888, line: 113, type: !129, isLocal: true, isDefinition: true)
!913 = !DIGlobalVariableExpression(var: !914, expr: !DIExpression())
!914 = distinct !DIGlobalVariable(scope: null, file: !888, line: 120, type: !915, isLocal: true, isDefinition: true)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !916)
!916 = !{!917}
!917 = !DISubrange(count: 32)
!918 = !DIGlobalVariableExpression(var: !919, expr: !DIExpression())
!919 = distinct !DIGlobalVariable(scope: null, file: !888, line: 127, type: !920, isLocal: true, isDefinition: true)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !921)
!921 = !{!922}
!922 = !DISubrange(count: 36)
!923 = !DIGlobalVariableExpression(var: !924, expr: !DIExpression())
!924 = distinct !DIGlobalVariable(scope: null, file: !888, line: 134, type: !291, isLocal: true, isDefinition: true)
!925 = !DIGlobalVariableExpression(var: !926, expr: !DIExpression())
!926 = distinct !DIGlobalVariable(scope: null, file: !888, line: 142, type: !927, isLocal: true, isDefinition: true)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !928)
!928 = !{!929}
!929 = !DISubrange(count: 44)
!930 = !DIGlobalVariableExpression(var: !931, expr: !DIExpression())
!931 = distinct !DIGlobalVariable(scope: null, file: !888, line: 150, type: !932, isLocal: true, isDefinition: true)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !933)
!933 = !{!934}
!934 = !DISubrange(count: 48)
!935 = !DIGlobalVariableExpression(var: !936, expr: !DIExpression())
!936 = distinct !DIGlobalVariable(scope: null, file: !888, line: 159, type: !937, isLocal: true, isDefinition: true)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !938)
!938 = !{!939}
!939 = !DISubrange(count: 52)
!940 = !DIGlobalVariableExpression(var: !941, expr: !DIExpression())
!941 = distinct !DIGlobalVariable(scope: null, file: !888, line: 170, type: !942, isLocal: true, isDefinition: true)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !943)
!943 = !{!944}
!944 = !DISubrange(count: 60)
!945 = !DIGlobalVariableExpression(var: !946, expr: !DIExpression())
!946 = distinct !DIGlobalVariable(scope: null, file: !888, line: 248, type: !216, isLocal: true, isDefinition: true)
!947 = !DIGlobalVariableExpression(var: !948, expr: !DIExpression())
!948 = distinct !DIGlobalVariable(scope: null, file: !888, line: 248, type: !313, isLocal: true, isDefinition: true)
!949 = !DIGlobalVariableExpression(var: !950, expr: !DIExpression())
!950 = distinct !DIGlobalVariable(scope: null, file: !888, line: 254, type: !216, isLocal: true, isDefinition: true)
!951 = !DIGlobalVariableExpression(var: !952, expr: !DIExpression())
!952 = distinct !DIGlobalVariable(scope: null, file: !888, line: 254, type: !119, isLocal: true, isDefinition: true)
!953 = !DIGlobalVariableExpression(var: !954, expr: !DIExpression())
!954 = distinct !DIGlobalVariable(scope: null, file: !888, line: 254, type: !291, isLocal: true, isDefinition: true)
!955 = !DIGlobalVariableExpression(var: !956, expr: !DIExpression())
!956 = distinct !DIGlobalVariable(scope: null, file: !888, line: 259, type: !3, isLocal: true, isDefinition: true)
!957 = !DIGlobalVariableExpression(var: !958, expr: !DIExpression())
!958 = distinct !DIGlobalVariable(scope: null, file: !888, line: 259, type: !959, isLocal: true, isDefinition: true)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !960)
!960 = !{!961}
!961 = !DISubrange(count: 29)
!962 = !DIGlobalVariableExpression(var: !963, expr: !DIExpression())
!963 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !964, file: !965, line: 26, type: !967, isLocal: false, isDefinition: true)
!964 = distinct !DICompileUnit(language: DW_LANG_C11, file: !965, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !966, splitDebugInlining: false, nameTableKind: None)
!965 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!966 = !{!962}
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 376, elements: !565)
!968 = !DIGlobalVariableExpression(var: !969, expr: !DIExpression())
!969 = distinct !DIGlobalVariable(name: "exit_failure", scope: !970, file: !971, line: 24, type: !973, isLocal: false, isDefinition: true)
!970 = distinct !DICompileUnit(language: DW_LANG_C11, file: !971, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !972, splitDebugInlining: false, nameTableKind: None)
!971 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!972 = !{!968}
!973 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !77)
!974 = !DIGlobalVariableExpression(var: !975, expr: !DIExpression())
!975 = distinct !DIGlobalVariable(scope: null, file: !976, line: 34, type: !253, isLocal: true, isDefinition: true)
!976 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!977 = !DIGlobalVariableExpression(var: !978, expr: !DIExpression())
!978 = distinct !DIGlobalVariable(scope: null, file: !976, line: 34, type: !264, isLocal: true, isDefinition: true)
!979 = !DIGlobalVariableExpression(var: !980, expr: !DIExpression())
!980 = distinct !DIGlobalVariable(scope: null, file: !976, line: 34, type: !286, isLocal: true, isDefinition: true)
!981 = !DIGlobalVariableExpression(var: !982, expr: !DIExpression())
!982 = distinct !DIGlobalVariable(scope: null, file: !983, line: 108, type: !49, isLocal: true, isDefinition: true)
!983 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!984 = !DIGlobalVariableExpression(var: !985, expr: !DIExpression())
!985 = distinct !DIGlobalVariable(name: "internal_state", scope: !986, file: !983, line: 97, type: !989, isLocal: true, isDefinition: true)
!986 = distinct !DICompileUnit(language: DW_LANG_C11, file: !983, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !987, globals: !988, splitDebugInlining: false, nameTableKind: None)
!987 = !{!108, !110, !115}
!988 = !{!981, !984}
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !772, line: 6, baseType: !990)
!990 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !774, line: 21, baseType: !991)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !774, line: 13, size: 64, elements: !992)
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !991, file: !774, line: 15, baseType: !77, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !991, file: !774, line: 20, baseType: !995, size: 32, offset: 32)
!995 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !991, file: !774, line: 16, size: 32, elements: !996)
!996 = !{!997, !998}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !995, file: !774, line: 18, baseType: !72, size: 32)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !995, file: !774, line: 19, baseType: !234, size: 32)
!999 = !DIGlobalVariableExpression(var: !1000, expr: !DIExpression())
!1000 = distinct !DIGlobalVariable(scope: null, file: !1001, line: 35, type: !239, isLocal: true, isDefinition: true)
!1001 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!1002 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1003, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fadvise.o -MD -MP -MF lib/.deps/libcoreutils_a-fadvise.Tpo -c lib/fadvise.c -o lib/.libcoreutils_a-fadvise.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !1004, splitDebugInlining: false, nameTableKind: None)
!1003 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!1004 = !{!1005}
!1005 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1006, line: 44, baseType: !72, size: 32, elements: !461)
!1006 = !DIFile(filename: "lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!1007 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1008, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1008 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!1009 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1010, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1011, splitDebugInlining: false, nameTableKind: None)
!1010 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!1011 = !{!108}
!1012 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1013, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1013 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!1014 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1015, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1011, splitDebugInlining: false, nameTableKind: None)
!1015 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!1016 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1017, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1017 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!1018 = distinct !DICompileUnit(language: DW_LANG_C11, file: !888, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !1019, retainedTypes: !1011, globals: !1023, splitDebugInlining: false, nameTableKind: None)
!1019 = !{!1020}
!1020 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !888, line: 40, baseType: !72, size: 32, elements: !1021)
!1021 = !{!1022}
!1022 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!1023 = !{!886, !889, !891, !893, !895, !897, !902, !907, !909, !911, !913, !918, !923, !925, !930, !935, !940, !945, !947, !949, !951, !953, !955, !957}
!1024 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1025, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !1026, retainedTypes: !1056, splitDebugInlining: false, nameTableKind: None)
!1025 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!1026 = !{!1027, !1039}
!1027 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1028, file: !1025, line: 188, baseType: !72, size: 32, elements: !1037)
!1028 = distinct !DISubprogram(name: "x2nrealloc", scope: !1025, file: !1025, line: 176, type: !1029, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !1032)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!108, !108, !1031, !110}
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!1032 = !{!1033, !1034, !1035, !1036}
!1033 = !DILocalVariable(name: "p", arg: 1, scope: !1028, file: !1025, line: 176, type: !108)
!1034 = !DILocalVariable(name: "pn", arg: 2, scope: !1028, file: !1025, line: 176, type: !1031)
!1035 = !DILocalVariable(name: "s", arg: 3, scope: !1028, file: !1025, line: 176, type: !110)
!1036 = !DILocalVariable(name: "n", scope: !1028, file: !1025, line: 178, type: !110)
!1037 = !{!1038}
!1038 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!1039 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1040, file: !1025, line: 228, baseType: !72, size: 32, elements: !1037)
!1040 = distinct !DISubprogram(name: "xpalloc", scope: !1025, file: !1025, line: 223, type: !1041, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !1046)
!1041 = !DISubroutineType(types: !1042)
!1042 = !{!108, !108, !1043, !1044, !371, !1044}
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !1045, line: 130, baseType: !371)
!1045 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!1046 = !{!1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055}
!1047 = !DILocalVariable(name: "pa", arg: 1, scope: !1040, file: !1025, line: 223, type: !108)
!1048 = !DILocalVariable(name: "pn", arg: 2, scope: !1040, file: !1025, line: 223, type: !1043)
!1049 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !1040, file: !1025, line: 223, type: !1044)
!1050 = !DILocalVariable(name: "n_max", arg: 4, scope: !1040, file: !1025, line: 223, type: !371)
!1051 = !DILocalVariable(name: "s", arg: 5, scope: !1040, file: !1025, line: 223, type: !1044)
!1052 = !DILocalVariable(name: "n0", scope: !1040, file: !1025, line: 230, type: !1044)
!1053 = !DILocalVariable(name: "n", scope: !1040, file: !1025, line: 237, type: !1044)
!1054 = !DILocalVariable(name: "nbytes", scope: !1040, file: !1025, line: 248, type: !1044)
!1055 = !DILocalVariable(name: "adjusted_nbytes", scope: !1040, file: !1025, line: 252, type: !1044)
!1056 = !{!107, !108}
!1057 = distinct !DICompileUnit(language: DW_LANG_C11, file: !976, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1058, splitDebugInlining: false, nameTableKind: None)
!1058 = !{!974, !977, !979}
!1059 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1060, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fopen.o -MD -MP -MF lib/.deps/libcoreutils_a-fopen.Tpo -c lib/fopen.c -o lib/.libcoreutils_a-fopen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1011, splitDebugInlining: false, nameTableKind: None)
!1060 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!1061 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1062, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1062 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1063 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1064, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1011, splitDebugInlining: false, nameTableKind: None)
!1064 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1065 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1001, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1066, splitDebugInlining: false, nameTableKind: None)
!1066 = !{!1067, !999}
!1067 = !DIGlobalVariableExpression(var: !1068, expr: !DIExpression())
!1068 = distinct !DIGlobalVariable(scope: null, file: !1001, line: 35, type: !244, isLocal: true, isDefinition: true)
!1069 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1070, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1070 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1071 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1072, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1011, splitDebugInlining: false, nameTableKind: None)
!1072 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1073 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1074 = !{i32 7, !"Dwarf Version", i32 5}
!1075 = !{i32 2, !"Debug Info Version", i32 3}
!1076 = !{i32 1, !"wchar_size", i32 4}
!1077 = !{i32 8, !"PIC Level", i32 2}
!1078 = !{i32 7, !"PIE Level", i32 2}
!1079 = !{i32 7, !"uwtable", i32 2}
!1080 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1081 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 73, type: !1082, scopeLine: 74, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1084)
!1082 = !DISubroutineType(types: !1083)
!1083 = !{null, !77}
!1084 = !{!1085}
!1085 = !DILocalVariable(name: "status", arg: 1, scope: !1081, file: !2, line: 73, type: !77)
!1086 = !DILocation(line: 0, scope: !1081)
!1087 = !DILocation(line: 75, column: 14, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1081, file: !2, line: 75, column: 7)
!1089 = !DILocation(line: 75, column: 7, scope: !1081)
!1090 = !DILocation(line: 76, column: 5, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 76, column: 5)
!1092 = !{!1093, !1093, i64 0}
!1093 = !{!"any pointer", !1094, i64 0}
!1094 = !{!"omnipotent char", !1095, i64 0}
!1095 = !{!"Simple C/C++ TBAA"}
!1096 = !DILocation(line: 79, column: 7, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1088, file: !2, line: 78, column: 5)
!1098 = !DILocation(line: 83, column: 7, scope: !1097)
!1099 = !DILocation(line: 729, column: 3, scope: !1100, inlinedAt: !1101)
!1100 = distinct !DISubprogram(name: "emit_stdin_note", scope: !76, file: !76, line: 727, type: !356, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69)
!1101 = distinct !DILocation(line: 87, column: 7, scope: !1097)
!1102 = !DILocation(line: 736, column: 3, scope: !1103, inlinedAt: !1104)
!1103 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !76, file: !76, line: 734, type: !356, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69)
!1104 = distinct !DILocation(line: 88, column: 7, scope: !1097)
!1105 = !DILocation(line: 90, column: 7, scope: !1097)
!1106 = !DILocation(line: 94, column: 7, scope: !1097)
!1107 = !DILocation(line: 98, column: 7, scope: !1097)
!1108 = !DILocation(line: 102, column: 7, scope: !1097)
!1109 = !DILocation(line: 103, column: 7, scope: !1097)
!1110 = !DILocation(line: 104, column: 7, scope: !1097)
!1111 = !DILocalVariable(name: "program", arg: 1, scope: !1112, file: !76, line: 836, type: !113)
!1112 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !76, file: !76, line: 836, type: !1113, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1115)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !113}
!1115 = !{!1111, !1116, !1123, !1124, !1126, !1127}
!1116 = !DILocalVariable(name: "infomap", scope: !1112, file: !76, line: 838, type: !1117)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1118, size: 896, elements: !265)
!1118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1119)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1112, file: !76, line: 838, size: 128, elements: !1120)
!1120 = !{!1121, !1122}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1119, file: !76, line: 838, baseType: !113, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1119, file: !76, line: 838, baseType: !113, size: 64, offset: 64)
!1123 = !DILocalVariable(name: "node", scope: !1112, file: !76, line: 848, type: !113)
!1124 = !DILocalVariable(name: "map_prog", scope: !1112, file: !76, line: 849, type: !1125)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1126 = !DILocalVariable(name: "lc_messages", scope: !1112, file: !76, line: 861, type: !113)
!1127 = !DILocalVariable(name: "url_program", scope: !1112, file: !76, line: 874, type: !113)
!1128 = !DILocation(line: 0, scope: !1112, inlinedAt: !1129)
!1129 = distinct !DILocation(line: 105, column: 7, scope: !1097)
!1130 = !{}
!1131 = !DILocation(line: 857, column: 3, scope: !1112, inlinedAt: !1129)
!1132 = !DILocation(line: 861, column: 29, scope: !1112, inlinedAt: !1129)
!1133 = !DILocation(line: 862, column: 7, scope: !1134, inlinedAt: !1129)
!1134 = distinct !DILexicalBlock(scope: !1112, file: !76, line: 862, column: 7)
!1135 = !DILocation(line: 862, column: 19, scope: !1134, inlinedAt: !1129)
!1136 = !DILocation(line: 862, column: 22, scope: !1134, inlinedAt: !1129)
!1137 = !DILocation(line: 862, column: 7, scope: !1112, inlinedAt: !1129)
!1138 = !DILocation(line: 868, column: 7, scope: !1139, inlinedAt: !1129)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !76, line: 863, column: 5)
!1140 = !DILocation(line: 870, column: 5, scope: !1139, inlinedAt: !1129)
!1141 = !DILocation(line: 875, column: 3, scope: !1112, inlinedAt: !1129)
!1142 = !DILocation(line: 877, column: 3, scope: !1112, inlinedAt: !1129)
!1143 = !DILocation(line: 107, column: 3, scope: !1081)
!1144 = !DISubprogram(name: "dcgettext", scope: !1145, file: !1145, line: 51, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1145 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!107, !113, !113, !77}
!1148 = !DISubprogram(name: "__fprintf_chk", scope: !1149, file: !1149, line: 93, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1149 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!77, !1152, !77, !1153, null}
!1152 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !167)
!1153 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !113)
!1154 = !DISubprogram(name: "__printf_chk", scope: !1149, file: !1149, line: 95, type: !1155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!77, !77, !1153, null}
!1157 = !DISubprogram(name: "fputs_unlocked", scope: !1158, file: !1158, line: 691, type: !1159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1158 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!77, !1153, !1152}
!1161 = !DILocation(line: 0, scope: !144)
!1162 = !DILocation(line: 581, column: 7, scope: !152)
!1163 = !{!1164, !1164, i64 0}
!1164 = !{!"int", !1094, i64 0}
!1165 = !DILocation(line: 581, column: 19, scope: !152)
!1166 = !DILocation(line: 581, column: 7, scope: !144)
!1167 = !DILocation(line: 585, column: 26, scope: !151)
!1168 = !DILocation(line: 0, scope: !151)
!1169 = !DILocation(line: 586, column: 23, scope: !151)
!1170 = !DILocation(line: 586, column: 28, scope: !151)
!1171 = !DILocation(line: 586, column: 32, scope: !151)
!1172 = !{!1094, !1094, i64 0}
!1173 = !DILocation(line: 586, column: 38, scope: !151)
!1174 = !DILocalVariable(name: "__s1", arg: 1, scope: !1175, file: !1176, line: 1359, type: !113)
!1175 = distinct !DISubprogram(name: "streq", scope: !1176, file: !1176, line: 1359, type: !1177, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1179)
!1176 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!154, !113, !113}
!1179 = !{!1174, !1180}
!1180 = !DILocalVariable(name: "__s2", arg: 2, scope: !1175, file: !1176, line: 1359, type: !113)
!1181 = !DILocation(line: 0, scope: !1175, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 586, column: 41, scope: !151)
!1183 = !DILocation(line: 1361, column: 11, scope: !1175, inlinedAt: !1182)
!1184 = !DILocation(line: 1361, column: 10, scope: !1175, inlinedAt: !1182)
!1185 = !DILocation(line: 586, column: 19, scope: !151)
!1186 = !DILocation(line: 587, column: 5, scope: !151)
!1187 = !DILocation(line: 588, column: 7, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !144, file: !76, line: 588, column: 7)
!1189 = !DILocation(line: 588, column: 7, scope: !144)
!1190 = !DILocation(line: 590, column: 7, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1188, file: !76, line: 589, column: 5)
!1192 = !DILocation(line: 591, column: 7, scope: !1191)
!1193 = !DILocation(line: 595, column: 37, scope: !144)
!1194 = !DILocation(line: 595, column: 35, scope: !144)
!1195 = !DILocation(line: 596, column: 29, scope: !144)
!1196 = !DILocation(line: 597, column: 8, scope: !160)
!1197 = !DILocation(line: 597, column: 7, scope: !144)
!1198 = !DILocation(line: 604, column: 24, scope: !159)
!1199 = !DILocation(line: 604, column: 12, scope: !160)
!1200 = !DILocation(line: 0, scope: !158)
!1201 = !DILocation(line: 610, column: 16, scope: !158)
!1202 = !DILocation(line: 610, column: 7, scope: !158)
!1203 = !DILocation(line: 611, column: 21, scope: !158)
!1204 = !{!1205, !1205, i64 0}
!1205 = !{!"short", !1094, i64 0}
!1206 = !DILocation(line: 611, column: 19, scope: !158)
!1207 = !DILocation(line: 611, column: 16, scope: !158)
!1208 = !DILocation(line: 610, column: 30, scope: !158)
!1209 = distinct !{!1209, !1202, !1203, !1210}
!1210 = !{!"llvm.loop.mustprogress"}
!1211 = !DILocation(line: 612, column: 18, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !158, file: !76, line: 612, column: 11)
!1213 = !DILocation(line: 612, column: 11, scope: !158)
!1214 = !DILocation(line: 620, column: 23, scope: !144)
!1215 = !DILocation(line: 625, column: 39, scope: !144)
!1216 = !DILocation(line: 626, column: 3, scope: !144)
!1217 = !DILocation(line: 626, column: 10, scope: !144)
!1218 = !DILocation(line: 626, column: 21, scope: !144)
!1219 = !DILocation(line: 628, column: 44, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !76, line: 628, column: 11)
!1221 = distinct !DILexicalBlock(scope: !144, file: !76, line: 627, column: 5)
!1222 = !DILocation(line: 628, column: 32, scope: !1220)
!1223 = !DILocation(line: 628, column: 49, scope: !1220)
!1224 = !DILocation(line: 628, column: 11, scope: !1221)
!1225 = !DILocation(line: 630, column: 11, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1221, file: !76, line: 630, column: 11)
!1227 = !DILocation(line: 630, column: 11, scope: !1221)
!1228 = !DILocation(line: 632, column: 26, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !76, line: 632, column: 15)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !76, line: 631, column: 9)
!1231 = !DILocation(line: 632, column: 34, scope: !1229)
!1232 = !DILocation(line: 632, column: 37, scope: !1229)
!1233 = !DILocation(line: 632, column: 15, scope: !1230)
!1234 = !DILocation(line: 636, column: 16, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1230, file: !76, line: 636, column: 15)
!1236 = !DILocation(line: 636, column: 29, scope: !1235)
!1237 = !DILocation(line: 640, column: 16, scope: !1221)
!1238 = distinct !{!1238, !1216, !1239, !1210}
!1239 = !DILocation(line: 641, column: 5, scope: !144)
!1240 = !DILocation(line: 644, column: 3, scope: !144)
!1241 = !DILocation(line: 0, scope: !1175, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 648, column: 31, scope: !144)
!1243 = !DILocation(line: 0, scope: !1175, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 649, column: 31, scope: !144)
!1245 = !DILocation(line: 0, scope: !1175, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 650, column: 31, scope: !144)
!1247 = !DILocation(line: 0, scope: !1175, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 651, column: 31, scope: !144)
!1249 = !DILocation(line: 0, scope: !1175, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 652, column: 31, scope: !144)
!1251 = !DILocation(line: 0, scope: !1175, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 653, column: 31, scope: !144)
!1253 = !DILocation(line: 0, scope: !1175, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 654, column: 31, scope: !144)
!1255 = !DILocation(line: 0, scope: !1175, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 655, column: 31, scope: !144)
!1257 = !DILocation(line: 0, scope: !1175, inlinedAt: !1258)
!1258 = distinct !DILocation(line: 656, column: 31, scope: !144)
!1259 = !DILocation(line: 0, scope: !1175, inlinedAt: !1260)
!1260 = distinct !DILocation(line: 657, column: 31, scope: !144)
!1261 = !DILocation(line: 663, column: 7, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !144, file: !76, line: 663, column: 7)
!1263 = !DILocation(line: 664, column: 7, scope: !1262)
!1264 = !DILocation(line: 664, column: 10, scope: !1262)
!1265 = !DILocation(line: 663, column: 7, scope: !144)
!1266 = !DILocation(line: 669, column: 7, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1262, file: !76, line: 665, column: 5)
!1268 = !DILocation(line: 671, column: 5, scope: !1267)
!1269 = !DILocation(line: 676, column: 7, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1262, file: !76, line: 673, column: 5)
!1271 = !DILocation(line: 679, column: 3, scope: !144)
!1272 = !DILocation(line: 683, column: 3, scope: !144)
!1273 = !DILocation(line: 686, column: 3, scope: !144)
!1274 = !DILocation(line: 688, column: 3, scope: !144)
!1275 = !DILocation(line: 691, column: 3, scope: !144)
!1276 = !DILocation(line: 695, column: 3, scope: !144)
!1277 = !DILocation(line: 696, column: 1, scope: !144)
!1278 = !DISubprogram(name: "setlocale", scope: !1279, file: !1279, line: 122, type: !1280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1279 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!107, !77, !113}
!1282 = !DISubprogram(name: "strncmp", scope: !1283, file: !1283, line: 159, type: !1284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1283 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!77, !113, !113, !110}
!1286 = !DISubprogram(name: "exit", scope: !1287, file: !1287, line: 624, type: !1082, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1287 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1288 = !DISubprogram(name: "getenv", scope: !1287, file: !1287, line: 641, type: !1289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!107, !113}
!1291 = !DISubprogram(name: "strcmp", scope: !1283, file: !1283, line: 156, type: !1292, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!77, !113, !113}
!1294 = !DISubprogram(name: "strspn", scope: !1283, file: !1283, line: 297, type: !1295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!112, !113, !113}
!1297 = !DISubprogram(name: "strchr", scope: !1283, file: !1283, line: 246, type: !1298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!107, !113, !77}
!1300 = !DISubprogram(name: "__ctype_b_loc", scope: !82, file: !82, line: 79, type: !1301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!1303}
!1303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1306 = !DISubprogram(name: "strcspn", scope: !1283, file: !1283, line: 293, type: !1295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1307 = !DISubprogram(name: "fwrite_unlocked", scope: !1158, file: !1158, line: 704, type: !1308, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!110, !1310, !110, !110, !1152}
!1310 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1311)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1313 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 273, type: !1314, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1316)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!77, !77, !594}
!1316 = !{!1317, !1318, !1319, !1320, !1321, !1322}
!1317 = !DILocalVariable(name: "argc", arg: 1, scope: !1313, file: !2, line: 273, type: !77)
!1318 = !DILocalVariable(name: "argv", arg: 2, scope: !1313, file: !2, line: 273, type: !594)
!1319 = !DILocalVariable(name: "have_tabval", scope: !1313, file: !2, line: 275, type: !154)
!1320 = !DILocalVariable(name: "tabval", scope: !1313, file: !2, line: 276, type: !389)
!1321 = !DILocalVariable(name: "c", scope: !1313, file: !2, line: 277, type: !77)
!1322 = !DILocalVariable(name: "convert_first_only", scope: !1313, file: !2, line: 281, type: !154)
!1323 = distinct !DIAssignID()
!1324 = distinct !DIAssignID()
!1325 = distinct !DIAssignID()
!1326 = distinct !DIAssignID()
!1327 = !DILocation(line: 0, scope: !1313)
!1328 = !DILocation(line: 284, column: 21, scope: !1313)
!1329 = !DILocation(line: 284, column: 3, scope: !1313)
!1330 = !DILocation(line: 285, column: 3, scope: !1313)
!1331 = !DILocation(line: 286, column: 3, scope: !1313)
!1332 = !DILocation(line: 287, column: 3, scope: !1313)
!1333 = !DILocation(line: 289, column: 3, scope: !1313)
!1334 = !DILocation(line: 291, column: 3, scope: !1313)
!1335 = !DILocation(line: 291, column: 15, scope: !1313)
!1336 = distinct !{!1336, !1334, !1337, !1210}
!1337 = !DILocation(line: 325, column: 5, scope: !1313)
!1338 = !DILocation(line: 297, column: 11, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !2, line: 295, column: 9)
!1340 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 293, column: 5)
!1341 = !DILocation(line: 299, column: 31, scope: !1339)
!1342 = !{!1343, !1343, i64 0}
!1343 = !{!"_Bool", !1094, i64 0}
!1344 = !DILocation(line: 300, column: 11, scope: !1339)
!1345 = !DILocation(line: 302, column: 31, scope: !1339)
!1346 = !DILocation(line: 303, column: 28, scope: !1339)
!1347 = !DILocation(line: 303, column: 11, scope: !1339)
!1348 = !DILocation(line: 304, column: 11, scope: !1339)
!1349 = !DILocation(line: 309, column: 15, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 309, column: 15)
!1351 = !DILocation(line: 309, column: 15, scope: !1339)
!1352 = !DILocation(line: 310, column: 13, scope: !1350)
!1353 = !DILocation(line: 313, column: 9, scope: !1339)
!1354 = !DILocation(line: 314, column: 9, scope: !1339)
!1355 = !DILocation(line: 316, column: 16, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 316, column: 15)
!1357 = !DILocation(line: 316, column: 15, scope: !1339)
!1358 = !DILocation(line: 321, column: 16, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 321, column: 15)
!1360 = !DILocation(line: 321, column: 15, scope: !1339)
!1361 = !DILocation(line: 322, column: 13, scope: !1359)
!1362 = !DILocation(line: 327, column: 7, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 327, column: 7)
!1364 = !DILocation(line: 327, column: 7, scope: !1313)
!1365 = !DILocation(line: 328, column: 25, scope: !1363)
!1366 = !DILocation(line: 328, column: 5, scope: !1363)
!1367 = !DILocation(line: 330, column: 7, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 330, column: 7)
!1369 = !DILocation(line: 330, column: 7, scope: !1313)
!1370 = !DILocation(line: 331, column: 5, scope: !1368)
!1371 = !DILocation(line: 333, column: 3, scope: !1313)
!1372 = !DILocation(line: 335, column: 19, scope: !1313)
!1373 = !DILocation(line: 335, column: 26, scope: !1313)
!1374 = !DILocation(line: 335, column: 18, scope: !1313)
!1375 = !DILocation(line: 335, column: 3, scope: !1313)
!1376 = !DILocation(line: 0, scope: !376, inlinedAt: !1377)
!1377 = distinct !DILocation(line: 337, column: 3, scope: !1313)
!1378 = !DILocation(line: 0, scope: !404, inlinedAt: !1377)
!1379 = !DILocation(line: 117, column: 14, scope: !355, inlinedAt: !1377)
!1380 = !DILocation(line: 0, scope: !355, inlinedAt: !1377)
!1381 = !DILocation(line: 124, column: 8, scope: !1382, inlinedAt: !1377)
!1382 = distinct !DILexicalBlock(scope: !355, file: !2, line: 124, column: 7)
!1383 = !DILocation(line: 124, column: 7, scope: !355, inlinedAt: !1377)
!1384 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1385, file: !363, line: 56, type: !1388)
!1385 = distinct !DISubprogram(name: "mbbuf_init", scope: !363, file: !363, line: 56, type: !1386, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1389)
!1386 = !DISubroutineType(types: !1387)
!1387 = !{null, !1388, !107, !369, !167}
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!1389 = !{!1384, !1390, !1391, !1392}
!1390 = !DILocalVariable(name: "buffer", arg: 2, scope: !1385, file: !363, line: 56, type: !107)
!1391 = !DILocalVariable(name: "size", arg: 3, scope: !1385, file: !363, line: 56, type: !369)
!1392 = !DILocalVariable(name: "fp", arg: 4, scope: !1385, file: !363, line: 56, type: !167)
!1393 = !DILocation(line: 0, scope: !1385, inlinedAt: !1394)
!1394 = distinct !DILocation(line: 129, column: 3, scope: !355, inlinedAt: !1377)
!1395 = !DILocation(line: 134, column: 29, scope: !355, inlinedAt: !1377)
!1396 = !{!1397, !1397, i64 0}
!1397 = !{!"long", !1094, i64 0}
!1398 = !DILocation(line: 134, column: 62, scope: !355, inlinedAt: !1377)
!1399 = !DILocation(line: 134, column: 19, scope: !355, inlinedAt: !1377)
!1400 = !DILocation(line: 136, column: 3, scope: !355, inlinedAt: !1377)
!1401 = !DILocation(line: 61, column: 13, scope: !1385, inlinedAt: !1394)
!1402 = !DILocation(line: 155, column: 7, scope: !376, inlinedAt: !1377)
!1403 = !DILocation(line: 155, column: 13, scope: !376, inlinedAt: !1377)
!1404 = distinct !DIAssignID()
!1405 = !DILocation(line: 171, column: 7, scope: !376, inlinedAt: !1377)
!1406 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1407, file: !363, line: 71, type: !1388)
!1407 = distinct !DISubprogram(name: "mbbuf_get_char", scope: !363, file: !363, line: 71, type: !1408, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1410)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!377, !1388}
!1410 = !{!1406, !1411, !1412, !1415}
!1411 = !DILocalVariable(name: "available", scope: !1407, file: !363, line: 73, type: !369)
!1412 = !DILocalVariable(name: "start", scope: !1413, file: !363, line: 77, type: !369)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !363, line: 76, column: 5)
!1414 = distinct !DILexicalBlock(scope: !1407, file: !363, line: 75, column: 7)
!1415 = !DILocalVariable(name: "g", scope: !1407, file: !363, line: 92, type: !377)
!1416 = !DILocation(line: 0, scope: !1407, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 173, column: 23, scope: !402, inlinedAt: !1377)
!1418 = !DILocation(line: 73, column: 35, scope: !1407, inlinedAt: !1417)
!1419 = !DILocation(line: 75, column: 17, scope: !1414, inlinedAt: !1417)
!1420 = !DILocation(line: 75, column: 32, scope: !1414, inlinedAt: !1417)
!1421 = !DILocalVariable(name: "__stream", arg: 1, scope: !1422, file: !1423, line: 128, type: !167)
!1422 = distinct !DISubprogram(name: "feof_unlocked", scope: !1423, file: !1423, line: 128, type: !1424, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1426)
!1423 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!77, !167}
!1426 = !{!1421}
!1427 = !DILocation(line: 0, scope: !1422, inlinedAt: !1428)
!1428 = distinct !DILocation(line: 75, column: 37, scope: !1414, inlinedAt: !1417)
!1429 = !DILocation(line: 130, column: 10, scope: !1422, inlinedAt: !1428)
!1430 = !{!1431, !1164, i64 0}
!1431 = !{!"_IO_FILE", !1164, i64 0, !1093, i64 8, !1093, i64 16, !1093, i64 24, !1093, i64 32, !1093, i64 40, !1093, i64 48, !1093, i64 56, !1093, i64 64, !1093, i64 72, !1093, i64 80, !1093, i64 88, !1093, i64 96, !1093, i64 104, !1164, i64 112, !1164, i64 116, !1397, i64 120, !1205, i64 128, !1094, i64 130, !1094, i64 131, !1093, i64 136, !1397, i64 144, !1093, i64 152, !1093, i64 160, !1093, i64 168, !1093, i64 176, !1397, i64 184, !1164, i64 192, !1094, i64 196}
!1432 = !DILocation(line: 75, column: 37, scope: !1414, inlinedAt: !1417)
!1433 = !DILocation(line: 75, column: 7, scope: !1407, inlinedAt: !1417)
!1434 = !DILocation(line: 78, column: 15, scope: !1435, inlinedAt: !1417)
!1435 = distinct !DILexicalBlock(scope: !1413, file: !363, line: 78, column: 11)
!1436 = !DILocation(line: 78, column: 11, scope: !1413, inlinedAt: !1417)
!1437 = !DILocation(line: 82, column: 49, scope: !1438, inlinedAt: !1417)
!1438 = distinct !DILexicalBlock(scope: !1435, file: !363, line: 81, column: 9)
!1439 = !DILocalVariable(name: "__dest", arg: 1, scope: !1440, file: !1441, line: 34, type: !108)
!1440 = distinct !DISubprogram(name: "memmove", scope: !1441, file: !1441, line: 34, type: !1442, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1444)
!1441 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1442 = !DISubroutineType(types: !1443)
!1443 = !{!108, !108, !1311, !110}
!1444 = !{!1439, !1445, !1446}
!1445 = !DILocalVariable(name: "__src", arg: 2, scope: !1440, file: !1441, line: 34, type: !1311)
!1446 = !DILocalVariable(name: "__len", arg: 3, scope: !1440, file: !1441, line: 34, type: !110)
!1447 = !DILocation(line: 0, scope: !1440, inlinedAt: !1448)
!1448 = distinct !DILocation(line: 82, column: 11, scope: !1438, inlinedAt: !1417)
!1449 = !DILocation(line: 36, column: 10, scope: !1440, inlinedAt: !1448)
!1450 = !DILocation(line: 0, scope: !1413, inlinedAt: !1417)
!1451 = !DILocation(line: 0, scope: !1435, inlinedAt: !1417)
!1452 = !DILocation(line: 85, column: 23, scope: !1413, inlinedAt: !1417)
!1453 = !DILocation(line: 86, column: 41, scope: !1413, inlinedAt: !1417)
!1454 = !DILocation(line: 89, column: 5, scope: !1413, inlinedAt: !1417)
!1455 = !DILocation(line: 90, column: 17, scope: !1456, inlinedAt: !1417)
!1456 = distinct !DILexicalBlock(scope: !1407, file: !363, line: 90, column: 7)
!1457 = !DILocation(line: 90, column: 7, scope: !1407, inlinedAt: !1417)
!1458 = !DILocation(line: 92, column: 39, scope: !1407, inlinedAt: !1417)
!1459 = !DILocalVariable(name: "mbs", scope: !1460, file: !97, line: 244, type: !1469)
!1460 = distinct !DISubprogram(name: "mcel_scan", scope: !97, file: !97, line: 230, type: !1461, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1463)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!377, !113, !113}
!1463 = !{!1464, !1465, !1466, !1459, !1467, !1468}
!1464 = !DILocalVariable(name: "p", arg: 1, scope: !1460, file: !97, line: 230, type: !113)
!1465 = !DILocalVariable(name: "lim", arg: 2, scope: !1460, file: !97, line: 230, type: !113)
!1466 = !DILocalVariable(name: "c", scope: !1460, file: !97, line: 235, type: !4)
!1467 = !DILocalVariable(name: "ch", scope: !1460, file: !97, line: 267, type: !381)
!1468 = !DILocalVariable(name: "len", scope: !1460, file: !97, line: 268, type: !110)
!1469 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !772, line: 6, baseType: !1470)
!1470 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !774, line: 21, baseType: !1471)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !774, line: 13, size: 64, elements: !1472)
!1472 = !{!1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1471, file: !774, line: 15, baseType: !77, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1471, file: !774, line: 20, baseType: !1475, size: 32, offset: 32)
!1475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1471, file: !774, line: 16, size: 32, elements: !1476)
!1476 = !{!1477, !1478}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1475, file: !774, line: 18, baseType: !72, size: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1475, file: !774, line: 19, baseType: !234, size: 32)
!1479 = !DILocation(line: 0, scope: !1460, inlinedAt: !1480)
!1480 = distinct !DILocation(line: 92, column: 14, scope: !1407, inlinedAt: !1417)
!1481 = !DILocation(line: 235, column: 12, scope: !1460, inlinedAt: !1480)
!1482 = !DILocalVariable(name: "c", arg: 1, scope: !1483, file: !97, line: 215, type: !4)
!1483 = distinct !DISubprogram(name: "mcel_isbasic", scope: !97, file: !97, line: 215, type: !1484, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1486)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!154, !4}
!1486 = !{!1482}
!1487 = !DILocation(line: 0, scope: !1483, inlinedAt: !1488)
!1488 = distinct !DILocation(line: 236, column: 7, scope: !1489, inlinedAt: !1480)
!1489 = distinct !DILexicalBlock(scope: !1460, file: !97, line: 236, column: 7)
!1490 = !DILocation(line: 217, column: 10, scope: !1483, inlinedAt: !1488)
!1491 = !DILocation(line: 236, column: 7, scope: !1460, inlinedAt: !1480)
!1492 = !DILocation(line: 93, column: 39, scope: !1407, inlinedAt: !1417)
!1493 = !DILocation(line: 244, column: 3, scope: !1460, inlinedAt: !1480)
!1494 = !DILocation(line: 244, column: 30, scope: !1460, inlinedAt: !1480)
!1495 = !{!1496, !1164, i64 0}
!1496 = !{!"", !1164, i64 0, !1094, i64 4}
!1497 = distinct !DIAssignID()
!1498 = !DILocation(line: 267, column: 3, scope: !1460, inlinedAt: !1480)
!1499 = !DILocation(line: 268, column: 38, scope: !1460, inlinedAt: !1480)
!1500 = !DILocation(line: 268, column: 16, scope: !1460, inlinedAt: !1480)
!1501 = !DILocation(line: 274, column: 7, scope: !1502, inlinedAt: !1480)
!1502 = distinct !DILexicalBlock(scope: !1460, file: !97, line: 274, column: 7)
!1503 = !DILocation(line: 274, column: 7, scope: !1460, inlinedAt: !1480)
!1504 = !{!"branch_weights", i32 1, i32 2000}
!1505 = !DILocation(line: 279, column: 19, scope: !1460, inlinedAt: !1480)
!1506 = !DILocalVariable(name: "ch", arg: 1, scope: !1507, file: !97, line: 167, type: !381)
!1507 = distinct !DISubprogram(name: "mcel_ch", scope: !97, file: !97, line: 167, type: !1508, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1510)
!1508 = !DISubroutineType(types: !1509)
!1509 = !{!377, !381, !110}
!1510 = !{!1506, !1511}
!1511 = !DILocalVariable(name: "len", arg: 2, scope: !1507, file: !97, line: 167, type: !110)
!1512 = !DILocation(line: 0, scope: !1507, inlinedAt: !1513)
!1513 = distinct !DILocation(line: 279, column: 10, scope: !1460, inlinedAt: !1480)
!1514 = !DILocation(line: 169, column: 3, scope: !1507, inlinedAt: !1513)
!1515 = !DILocation(line: 170, column: 3, scope: !1507, inlinedAt: !1513)
!1516 = !DILocation(line: 171, column: 3, scope: !1507, inlinedAt: !1513)
!1517 = !DILocation(line: 172, column: 3, scope: !1507, inlinedAt: !1513)
!1518 = !DILocation(line: 279, column: 3, scope: !1460, inlinedAt: !1480)
!1519 = !DILocalVariable(name: "err", arg: 1, scope: !1520, file: !97, line: 175, type: !115)
!1520 = distinct !DISubprogram(name: "mcel_err", scope: !97, file: !97, line: 175, type: !1521, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1523)
!1521 = !DISubroutineType(types: !1522)
!1522 = !{!377, !115}
!1523 = !{!1519}
!1524 = !DILocation(line: 0, scope: !1520, inlinedAt: !1525)
!1525 = distinct !DILocation(line: 275, column: 12, scope: !1502, inlinedAt: !1480)
!1526 = !DILocation(line: 178, column: 3, scope: !1520, inlinedAt: !1525)
!1527 = !DILocation(line: 275, column: 5, scope: !1502, inlinedAt: !1480)
!1528 = !DILocation(line: 280, column: 1, scope: !1460, inlinedAt: !1480)
!1529 = !DILocation(line: 0, scope: !1507, inlinedAt: !1530)
!1530 = distinct !DILocation(line: 237, column: 12, scope: !1489, inlinedAt: !1480)
!1531 = !DILocation(line: 172, column: 3, scope: !1507, inlinedAt: !1530)
!1532 = !DILocation(line: 237, column: 5, scope: !1489, inlinedAt: !1480)
!1533 = !DILocation(line: 94, column: 9, scope: !1534, inlinedAt: !1417)
!1534 = distinct !DILexicalBlock(scope: !1407, file: !363, line: 94, column: 7)
!1535 = !DILocation(line: 94, column: 7, scope: !1407, inlinedAt: !1417)
!1536 = !DILocation(line: 99, column: 30, scope: !1537, inlinedAt: !1417)
!1537 = distinct !DILexicalBlock(scope: !1534, file: !363, line: 97, column: 5)
!1538 = !DILocation(line: 99, column: 14, scope: !1537, inlinedAt: !1417)
!1539 = !DILocation(line: 92, column: 14, scope: !1407, inlinedAt: !1417)
!1540 = !DILocation(line: 95, column: 5, scope: !1534, inlinedAt: !1417)
!1541 = !DILocation(line: 0, scope: !1534, inlinedAt: !1417)
!1542 = !DILocation(line: 101, column: 3, scope: !1407, inlinedAt: !1417)
!1543 = !DILocation(line: 173, column: 23, scope: !402, inlinedAt: !1377)
!1544 = !DILocation(line: 173, column: 51, scope: !402, inlinedAt: !1377)
!1545 = !DILocation(line: 174, column: 18, scope: !402, inlinedAt: !1377)
!1546 = !DILocation(line: 174, column: 27, scope: !402, inlinedAt: !1377)
!1547 = !DILocation(line: 173, column: 11, scope: !402, inlinedAt: !1377)
!1548 = !DILocation(line: 61, column: 13, scope: !1385, inlinedAt: !1549)
!1549 = distinct !DILocation(line: 0, scope: !355, inlinedAt: !1377)
!1550 = distinct !{!1550, !1547, !1551, !1210, !1552}
!1551 = !DILocation(line: 175, column: 60, scope: !402, inlinedAt: !1377)
!1552 = !{!"llvm.loop.peeled.count", i32 1}
!1553 = !DILocation(line: 85, column: 21, scope: !1413, inlinedAt: !1417)
!1554 = !DILocation(line: 102, column: 1, scope: !1407, inlinedAt: !1417)
!1555 = !DILocation(line: 177, column: 15, scope: !401, inlinedAt: !1377)
!1556 = !DILocation(line: 177, column: 15, scope: !402, inlinedAt: !1377)
!1557 = !DILocalVariable(name: "wc", arg: 1, scope: !1558, file: !76, line: 178, type: !381)
!1558 = distinct !DISubprogram(name: "c32issep", scope: !76, file: !76, line: 178, type: !1559, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1561)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!154, !381}
!1561 = !{!1557}
!1562 = !DILocation(line: 0, scope: !1558, inlinedAt: !1563)
!1563 = distinct !DILocation(line: 179, column: 28, scope: !400, inlinedAt: !1377)
!1564 = !DILocalVariable(name: "wc", arg: 1, scope: !1565, file: !1566, line: 770, type: !1569)
!1565 = distinct !DISubprogram(name: "c32isblank", scope: !1566, file: !1566, line: 770, type: !1567, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1571)
!1566 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!77, !1569}
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1570, line: 20, baseType: !72)
!1570 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1571 = !{!1564}
!1572 = !DILocation(line: 0, scope: !1565, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 181, column: 13, scope: !1558, inlinedAt: !1563)
!1574 = !DILocation(line: 776, column: 10, scope: !1565, inlinedAt: !1573)
!1575 = !DILocation(line: 181, column: 11, scope: !1558, inlinedAt: !1563)
!1576 = !DILocation(line: 179, column: 20, scope: !400, inlinedAt: !1377)
!1577 = !DILocation(line: 0, scope: !400, inlinedAt: !1377)
!1578 = !DILocation(line: 181, column: 19, scope: !400, inlinedAt: !1377)
!1579 = !DILocation(line: 183, column: 19, scope: !404, inlinedAt: !1377)
!1580 = !DILocation(line: 185, column: 37, scope: !404, inlinedAt: !1377)
!1581 = !DILocation(line: 188, column: 23, scope: !1582, inlinedAt: !1377)
!1582 = distinct !DILexicalBlock(scope: !404, file: !2, line: 188, column: 23)
!1583 = !{i8 0, i8 2}
!1584 = !DILocation(line: 188, column: 23, scope: !404, inlinedAt: !1377)
!1585 = !DILocation(line: 191, column: 23, scope: !1586, inlinedAt: !1377)
!1586 = distinct !DILexicalBlock(scope: !404, file: !2, line: 191, column: 23)
!1587 = !DILocation(line: 191, column: 23, scope: !404, inlinedAt: !1377)
!1588 = !DILocation(line: 193, column: 32, scope: !1589, inlinedAt: !1377)
!1589 = distinct !DILexicalBlock(scope: !1590, file: !2, line: 193, column: 27)
!1590 = distinct !DILexicalBlock(scope: !1586, file: !2, line: 192, column: 21)
!1591 = !DILocation(line: 193, column: 27, scope: !1590, inlinedAt: !1377)
!1592 = !DILocation(line: 197, column: 31, scope: !1593, inlinedAt: !1377)
!1593 = distinct !DILexicalBlock(scope: !1594, file: !2, line: 197, column: 31)
!1594 = distinct !DILexicalBlock(scope: !1589, file: !2, line: 194, column: 25)
!1595 = !DILocation(line: 197, column: 31, scope: !1594, inlinedAt: !1377)
!1596 = !DILocalVariable(name: "wc", arg: 1, scope: !1597, file: !1566, line: 1004, type: !381)
!1597 = distinct !DISubprogram(name: "c32width", scope: !1566, file: !1566, line: 1004, type: !1598, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1600)
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!77, !381}
!1600 = !{!1596}
!1601 = !DILocation(line: 0, scope: !1597, inlinedAt: !1602)
!1602 = distinct !DILocation(line: 202, column: 37, scope: !1603, inlinedAt: !1377)
!1603 = distinct !DILexicalBlock(scope: !1589, file: !2, line: 201, column: 25)
!1604 = !DILocation(line: 1010, column: 10, scope: !1597, inlinedAt: !1602)
!1605 = !DILocation(line: 202, column: 37, scope: !1603, inlinedAt: !1377)
!1606 = !DILocation(line: 202, column: 34, scope: !1603, inlinedAt: !1377)
!1607 = !DILocation(line: 204, column: 34, scope: !1608, inlinedAt: !1377)
!1608 = distinct !DILexicalBlock(scope: !1603, file: !2, line: 204, column: 31)
!1609 = !DILocation(line: 204, column: 45, scope: !1608, inlinedAt: !1377)
!1610 = !DILocation(line: 219, column: 31, scope: !1611, inlinedAt: !1377)
!1611 = distinct !DILexicalBlock(scope: !1603, file: !2, line: 219, column: 31)
!1612 = !DILocalVariable(name: "__c", arg: 1, scope: !1613, file: !1423, line: 101, type: !77)
!1613 = distinct !DISubprogram(name: "putc_unlocked", scope: !1423, file: !1423, line: 101, type: !1614, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1616)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!77, !77, !167}
!1616 = !{!1612, !1617}
!1617 = !DILocalVariable(name: "__stream", arg: 2, scope: !1613, file: !1423, line: 101, type: !167)
!1618 = !DILocation(line: 0, scope: !1613, inlinedAt: !1619)
!1619 = distinct !DILocation(line: 219, column: 31, scope: !1611, inlinedAt: !1377)
!1620 = !DILocation(line: 103, column: 10, scope: !1613, inlinedAt: !1619)
!1621 = !{!1431, !1093, i64 40}
!1622 = !{!1431, !1093, i64 48}
!1623 = !{!"branch_weights", i32 2000, i32 1}
!1624 = !DILocation(line: 219, column: 31, scope: !1603, inlinedAt: !1377)
!1625 = !DILocation(line: 219, column: 51, scope: !1611, inlinedAt: !1377)
!1626 = !DILocation(line: 948, column: 21, scope: !1627, inlinedAt: !1630)
!1627 = distinct !DISubprogram(name: "write_error", scope: !76, file: !76, line: 946, type: !356, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1628)
!1628 = !{!1629}
!1629 = !DILocalVariable(name: "saved_errno", scope: !1627, file: !76, line: 948, type: !77)
!1630 = distinct !DILocation(line: 220, column: 29, scope: !1611, inlinedAt: !1377)
!1631 = !DILocation(line: 0, scope: !1627, inlinedAt: !1630)
!1632 = !DILocation(line: 949, column: 3, scope: !1627, inlinedAt: !1630)
!1633 = !DILocation(line: 950, column: 11, scope: !1627, inlinedAt: !1630)
!1634 = !DILocation(line: 950, column: 3, scope: !1627, inlinedAt: !1630)
!1635 = !DILocation(line: 951, column: 3, scope: !1627, inlinedAt: !1630)
!1636 = !DILocation(line: 952, column: 3, scope: !1627, inlinedAt: !1630)
!1637 = !DILocation(line: 0, scope: !1589, inlinedAt: !1377)
!1638 = !DILocation(line: 226, column: 33, scope: !1590, inlinedAt: !1377)
!1639 = !DILocation(line: 0, scope: !402, inlinedAt: !1377)
!1640 = !DILocation(line: 227, column: 21, scope: !1590, inlinedAt: !1377)
!1641 = !DILocation(line: 228, column: 17, scope: !405, inlinedAt: !1377)
!1642 = !DILocation(line: 229, column: 29, scope: !408, inlinedAt: !1377)
!1643 = !DILocation(line: 229, column: 24, scope: !405, inlinedAt: !1377)
!1644 = !DILocation(line: 233, column: 30, scope: !1645, inlinedAt: !1377)
!1645 = distinct !DILexicalBlock(scope: !408, file: !2, line: 230, column: 17)
!1646 = !DILocation(line: 233, column: 26, scope: !1645, inlinedAt: !1377)
!1647 = !DILocation(line: 235, column: 34, scope: !1645, inlinedAt: !1377)
!1648 = !DILocation(line: 235, column: 33, scope: !1645, inlinedAt: !1377)
!1649 = !DILocation(line: 235, column: 29, scope: !1645, inlinedAt: !1377)
!1650 = distinct !DIAssignID()
!1651 = !DILocation(line: 236, column: 17, scope: !1645, inlinedAt: !1377)
!1652 = !DILocation(line: 0, scope: !1597, inlinedAt: !1653)
!1653 = distinct !DILocation(line: 239, column: 31, scope: !407, inlinedAt: !1377)
!1654 = !DILocation(line: 1010, column: 10, scope: !1597, inlinedAt: !1653)
!1655 = !DILocation(line: 0, scope: !407, inlinedAt: !1377)
!1656 = !DILocation(line: 240, column: 23, scope: !1657, inlinedAt: !1377)
!1657 = distinct !DILexicalBlock(scope: !407, file: !2, line: 240, column: 23)
!1658 = !DILocation(line: 240, column: 23, scope: !407, inlinedAt: !1377)
!1659 = !DILocation(line: 241, column: 21, scope: !1657, inlinedAt: !1377)
!1660 = !DILocation(line: 0, scope: !405, inlinedAt: !1377)
!1661 = !DILocation(line: 244, column: 19, scope: !413, inlinedAt: !1377)
!1662 = !DILocation(line: 244, column: 19, scope: !400, inlinedAt: !1377)
!1663 = !DILocation(line: 246, column: 31, scope: !1664, inlinedAt: !1377)
!1664 = distinct !DILexicalBlock(scope: !412, file: !2, line: 246, column: 23)
!1665 = !DILocation(line: 246, column: 35, scope: !1664, inlinedAt: !1377)
!1666 = !DILocation(line: 247, column: 38, scope: !1664, inlinedAt: !1377)
!1667 = !DILocation(line: 247, column: 21, scope: !1664, inlinedAt: !1377)
!1668 = !DILocation(line: 248, column: 23, scope: !411, inlinedAt: !1377)
!1669 = !DILocation(line: 248, column: 66, scope: !411, inlinedAt: !1377)
!1670 = !DILocation(line: 248, column: 23, scope: !412, inlinedAt: !1377)
!1671 = !DILocation(line: 948, column: 21, scope: !1627, inlinedAt: !1672)
!1672 = distinct !DILocation(line: 249, column: 21, scope: !411, inlinedAt: !1377)
!1673 = !DILocation(line: 0, scope: !1627, inlinedAt: !1672)
!1674 = !DILocation(line: 949, column: 3, scope: !1627, inlinedAt: !1672)
!1675 = !DILocation(line: 950, column: 11, scope: !1627, inlinedAt: !1672)
!1676 = !DILocation(line: 950, column: 3, scope: !1627, inlinedAt: !1672)
!1677 = !DILocation(line: 951, column: 3, scope: !1627, inlinedAt: !1672)
!1678 = !DILocation(line: 952, column: 3, scope: !1627, inlinedAt: !1672)
!1679 = !DILocation(line: 255, column: 26, scope: !400, inlinedAt: !1377)
!1680 = !DILocation(line: 255, column: 46, scope: !400, inlinedAt: !1377)
!1681 = !DILocation(line: 255, column: 23, scope: !400, inlinedAt: !1377)
!1682 = !DILocation(line: 208, column: 35, scope: !1683, inlinedAt: !1377)
!1683 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 205, column: 29)
!1684 = !DILocation(line: 210, column: 53, scope: !1683, inlinedAt: !1377)
!1685 = !DILocalVariable(name: "g", arg: 2, scope: !1686, file: !363, line: 107, type: !377)
!1686 = distinct !DISubprogram(name: "mbbuf_char_offset", scope: !363, file: !363, line: 107, type: !1687, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1689)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!107, !1388, !377}
!1689 = !{!1690, !1685}
!1690 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1686, file: !363, line: 107, type: !1388)
!1691 = !DILocation(line: 0, scope: !1686, inlinedAt: !1692)
!1692 = distinct !DILocation(line: 211, column: 39, scope: !1683, inlinedAt: !1377)
!1693 = !DILocation(line: 109, column: 21, scope: !1694, inlinedAt: !1692)
!1694 = distinct !DILexicalBlock(scope: !1686, file: !363, line: 109, column: 7)
!1695 = !DILocation(line: 109, column: 7, scope: !1686, inlinedAt: !1692)
!1696 = !DILocation(line: 111, column: 41, scope: !1686, inlinedAt: !1692)
!1697 = !DILocation(line: 111, column: 24, scope: !1686, inlinedAt: !1692)
!1698 = !DILocalVariable(name: "__dest", arg: 1, scope: !1699, file: !1441, line: 26, type: !1702)
!1699 = distinct !DISubprogram(name: "memcpy", scope: !1441, file: !1441, line: 26, type: !1700, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1703)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!108, !1702, !1310, !110}
!1702 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !108)
!1703 = !{!1698, !1704, !1705}
!1704 = !DILocalVariable(name: "__src", arg: 2, scope: !1699, file: !1441, line: 26, type: !1310)
!1705 = !DILocalVariable(name: "__len", arg: 3, scope: !1699, file: !1441, line: 26, type: !110)
!1706 = !DILocation(line: 0, scope: !1699, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 210, column: 31, scope: !1683, inlinedAt: !1377)
!1708 = !DILocation(line: 29, column: 10, scope: !1699, inlinedAt: !1707)
!1709 = !DILocation(line: 212, column: 39, scope: !1683, inlinedAt: !1377)
!1710 = !DILocation(line: 258, column: 15, scope: !402, inlinedAt: !1377)
!1711 = !DILocation(line: 260, column: 15, scope: !1712, inlinedAt: !1377)
!1712 = distinct !DILexicalBlock(scope: !1713, file: !2, line: 259, column: 13)
!1713 = distinct !DILexicalBlock(scope: !402, file: !2, line: 258, column: 15)
!1714 = !DILocation(line: 269, column: 5, scope: !355, inlinedAt: !1377)
!1715 = !DILocation(line: 264, column: 11, scope: !402, inlinedAt: !1377)
!1716 = !DILocation(line: 0, scope: !1686, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 264, column: 11, scope: !402, inlinedAt: !1377)
!1718 = !DILocation(line: 109, column: 21, scope: !1694, inlinedAt: !1717)
!1719 = !DILocation(line: 109, column: 7, scope: !1686, inlinedAt: !1717)
!1720 = !DILocation(line: 111, column: 41, scope: !1686, inlinedAt: !1717)
!1721 = !DILocation(line: 111, column: 24, scope: !1686, inlinedAt: !1717)
!1722 = !DILocation(line: 265, column: 15, scope: !1723, inlinedAt: !1377)
!1723 = distinct !DILexicalBlock(scope: !402, file: !2, line: 265, column: 15)
!1724 = !DILocalVariable(name: "__stream", arg: 1, scope: !1725, file: !1423, line: 135, type: !167)
!1725 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1423, file: !1423, line: 135, type: !1424, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1726)
!1726 = !{!1724}
!1727 = !DILocation(line: 0, scope: !1725, inlinedAt: !1728)
!1728 = distinct !DILocation(line: 265, column: 15, scope: !1723, inlinedAt: !1377)
!1729 = !DILocation(line: 137, column: 10, scope: !1725, inlinedAt: !1728)
!1730 = !DILocation(line: 265, column: 15, scope: !402, inlinedAt: !1377)
!1731 = !DILocation(line: 948, column: 21, scope: !1627, inlinedAt: !1732)
!1732 = distinct !DILocation(line: 266, column: 13, scope: !1723, inlinedAt: !1377)
!1733 = !DILocation(line: 0, scope: !1627, inlinedAt: !1732)
!1734 = !DILocation(line: 949, column: 3, scope: !1627, inlinedAt: !1732)
!1735 = !DILocation(line: 950, column: 11, scope: !1627, inlinedAt: !1732)
!1736 = !DILocation(line: 950, column: 3, scope: !1627, inlinedAt: !1732)
!1737 = !DILocation(line: 951, column: 3, scope: !1627, inlinedAt: !1732)
!1738 = !DILocation(line: 952, column: 3, scope: !1627, inlinedAt: !1732)
!1739 = !DILocation(line: 250, column: 27, scope: !412, inlinedAt: !1377)
!1740 = !DILocation(line: 254, column: 26, scope: !400, inlinedAt: !1377)
!1741 = !DILocation(line: 251, column: 45, scope: !412, inlinedAt: !1377)
!1742 = !DILocation(line: 195, column: 34, scope: !1594, inlinedAt: !1377)
!1743 = !DILocation(line: 268, column: 19, scope: !376, inlinedAt: !1377)
!1744 = !DILocation(line: 267, column: 9, scope: !402, inlinedAt: !1377)
!1745 = distinct !{!1745, !1405, !1746, !1210}
!1746 = !DILocation(line: 268, column: 26, scope: !376, inlinedAt: !1377)
!1747 = distinct !{!1747, !1400, !1714}
!1748 = !DILocation(line: 339, column: 3, scope: !1313)
!1749 = !DILocation(line: 341, column: 10, scope: !1313)
!1750 = !DILocation(line: 341, column: 3, scope: !1313)
!1751 = !DISubprogram(name: "bindtextdomain", scope: !1145, file: !1145, line: 86, type: !1752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!107, !113, !113}
!1754 = !DISubprogram(name: "textdomain", scope: !1145, file: !1145, line: 82, type: !1289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1755 = !DISubprogram(name: "atexit", scope: !1287, file: !1287, line: 602, type: !1756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!77, !746}
!1758 = !DISubprogram(name: "getopt_long", scope: !433, file: !433, line: 66, type: !1759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!77, !77, !1761, !113, !1763, !438}
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!1764 = !DISubprogram(name: "__builtin___memmove_chk", scope: !1765, file: !1765, line: 25, type: !1766, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1765 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/strings_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "2c53309439f074d781ca95a346401d78")
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!108, !108, !1311, !112, !112}
!1768 = !DISubprogram(name: "mbrtoc32", scope: !382, file: !382, line: 57, type: !1769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!110, !1771, !1153, !110, !1773}
!1771 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1772)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1774)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1775 = !DISubprogram(name: "iswblank", scope: !1776, file: !1776, line: 146, type: !1567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1776 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1777 = !DISubprogram(name: "wcwidth", scope: !1778, file: !1778, line: 368, type: !1779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1778 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!77, !1781}
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !1782, line: 24, baseType: !77)
!1782 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_wchar_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1bf0c51e90dd5eb05cdcc01afdea587a")
!1783 = !DISubprogram(name: "__overflow", scope: !1158, file: !1158, line: 886, type: !1784, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{!77, !167, !77}
!1786 = !DISubprogram(name: "__errno_location", scope: !1787, file: !1787, line: 37, type: !1788, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1787 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!438}
!1790 = !DISubprogram(name: "fflush_unlocked", scope: !1158, file: !1158, line: 239, type: !1424, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1791 = !DISubprogram(name: "clearerr_unlocked", scope: !1158, file: !1158, line: 794, type: !1792, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{null, !167}
!1794 = !DISubprogram(name: "free", scope: !1287, file: !1287, line: 555, type: !1795, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1795 = !DISubroutineType(types: !1796)
!1796 = !{null, !108}
!1797 = distinct !DISubprogram(name: "add_tab_stop", scope: !443, file: !443, line: 84, type: !1798, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !1800)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{null, !389}
!1800 = !{!1801, !1802, !1803}
!1801 = !DILocalVariable(name: "tabval", arg: 1, scope: !1797, file: !443, line: 84, type: !389)
!1802 = !DILocalVariable(name: "prev_column", scope: !1797, file: !443, line: 86, type: !389)
!1803 = !DILocalVariable(name: "column_width", scope: !1797, file: !443, line: 87, type: !389)
!1804 = !DILocation(line: 0, scope: !1797)
!1805 = !DILocation(line: 86, column: 23, scope: !1797)
!1806 = !DILocation(line: 91, column: 3, scope: !1797)
!1807 = !DILocation(line: 86, column: 40, scope: !1797)
!1808 = !DILocation(line: 89, column: 25, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1797, file: !443, line: 89, column: 7)
!1810 = !DILocation(line: 89, column: 22, scope: !1809)
!1811 = !DILocation(line: 89, column: 7, scope: !1797)
!1812 = !DILocation(line: 90, column: 16, scope: !1809)
!1813 = !DILocation(line: 90, column: 14, scope: !1809)
!1814 = !DILocation(line: 91, column: 26, scope: !1797)
!1815 = !DILocation(line: 90, column: 5, scope: !1809)
!1816 = !DILocation(line: 87, column: 36, scope: !1797)
!1817 = !DILocation(line: 87, column: 24, scope: !1797)
!1818 = !DILocation(line: 91, column: 30, scope: !1797)
!1819 = !DILocalVariable(name: "width", arg: 1, scope: !1820, file: !443, line: 73, type: !389)
!1820 = distinct !DISubprogram(name: "set_max_column_width", scope: !443, file: !443, line: 73, type: !1798, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !1821)
!1821 = !{!1819}
!1822 = !DILocation(line: 0, scope: !1820, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 93, column: 3, scope: !1797)
!1824 = !DILocation(line: 75, column: 7, scope: !1825, inlinedAt: !1823)
!1825 = distinct !DILexicalBlock(scope: !1820, file: !443, line: 75, column: 7)
!1826 = !DILocation(line: 75, column: 24, scope: !1825, inlinedAt: !1823)
!1827 = !DILocation(line: 75, column: 7, scope: !1820, inlinedAt: !1823)
!1828 = !DILocation(line: 77, column: 11, scope: !1829, inlinedAt: !1823)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !443, line: 77, column: 11)
!1830 = distinct !DILexicalBlock(scope: !1825, file: !443, line: 76, column: 5)
!1831 = !DILocation(line: 94, column: 1, scope: !1797)
!1832 = distinct !DISubprogram(name: "parse_tab_stops", scope: !443, file: !443, line: 137, type: !1113, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !1833)
!1833 = !{!1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1852}
!1834 = !DILocalVariable(name: "stops", arg: 1, scope: !1832, file: !443, line: 137, type: !113)
!1835 = !DILocalVariable(name: "have_tabval", scope: !1832, file: !443, line: 139, type: !154)
!1836 = !DILocalVariable(name: "tabval", scope: !1832, file: !443, line: 140, type: !389)
!1837 = !DILocalVariable(name: "extend_tabval", scope: !1832, file: !443, line: 141, type: !154)
!1838 = !DILocalVariable(name: "increment_tabval", scope: !1832, file: !443, line: 142, type: !154)
!1839 = !DILocalVariable(name: "num_start", scope: !1832, file: !443, line: 143, type: !113)
!1840 = !DILocalVariable(name: "ok", scope: !1832, file: !443, line: 144, type: !154)
!1841 = !DILocalVariable(name: "len", scope: !1842, file: !443, line: 207, type: !369)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !443, line: 206, column: 13)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !443, line: 205, column: 15)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !443, line: 196, column: 9)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !443, line: 195, column: 16)
!1846 = distinct !DILexicalBlock(scope: !1847, file: !443, line: 184, column: 16)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !443, line: 173, column: 16)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !443, line: 148, column: 11)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !443, line: 147, column: 5)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !443, line: 146, column: 3)
!1851 = distinct !DILexicalBlock(scope: !1832, file: !443, line: 146, column: 3)
!1852 = !DILocalVariable(name: "bad_num", scope: !1842, file: !443, line: 208, type: !107)
!1853 = !DILocation(line: 0, scope: !1832)
!1854 = !DILocation(line: 146, column: 3, scope: !1832)
!1855 = !DILocation(line: 140, column: 9, scope: !1832)
!1856 = !DILocation(line: 141, column: 8, scope: !1832)
!1857 = !DILocation(line: 142, column: 8, scope: !1832)
!1858 = !DILocation(line: 143, column: 15, scope: !1832)
!1859 = !DILocation(line: 144, column: 8, scope: !1832)
!1860 = !DILocation(line: 146, column: 10, scope: !1850)
!1861 = !DILocation(line: 146, column: 3, scope: !1851)
!1862 = !DILocation(line: 148, column: 28, scope: !1848)
!1863 = !DILocation(line: 148, column: 11, scope: !1849)
!1864 = !DILocation(line: 150, column: 15, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !443, line: 150, column: 15)
!1866 = distinct !DILexicalBlock(scope: !1848, file: !443, line: 149, column: 9)
!1867 = !DILocation(line: 150, column: 15, scope: !1866)
!1868 = !DILocation(line: 152, column: 19, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1870, file: !443, line: 152, column: 19)
!1870 = distinct !DILexicalBlock(scope: !1865, file: !443, line: 151, column: 13)
!1871 = !DILocation(line: 152, column: 19, scope: !1870)
!1872 = !DILocalVariable(name: "tabval", arg: 1, scope: !1873, file: !443, line: 97, type: !389)
!1873 = distinct !DISubprogram(name: "set_extend_size", scope: !443, file: !443, line: 97, type: !1874, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !1876)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!154, !389}
!1876 = !{!1872, !1877}
!1877 = !DILocalVariable(name: "ok", scope: !1873, file: !443, line: 99, type: !154)
!1878 = !DILocation(line: 0, scope: !1873, inlinedAt: !1879)
!1879 = distinct !DILocation(line: 154, column: 25, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !443, line: 154, column: 23)
!1881 = distinct !DILexicalBlock(scope: !1869, file: !443, line: 153, column: 17)
!1882 = !DILocation(line: 101, column: 7, scope: !1883, inlinedAt: !1879)
!1883 = distinct !DILexicalBlock(scope: !1873, file: !443, line: 101, column: 7)
!1884 = !DILocation(line: 101, column: 7, scope: !1873, inlinedAt: !1879)
!1885 = !DILocation(line: 103, column: 7, scope: !1886, inlinedAt: !1879)
!1886 = distinct !DILexicalBlock(scope: !1883, file: !443, line: 102, column: 5)
!1887 = !DILocation(line: 107, column: 5, scope: !1886, inlinedAt: !1879)
!1888 = !DILocation(line: 108, column: 15, scope: !1873, inlinedAt: !1879)
!1889 = !DILocation(line: 0, scope: !1820, inlinedAt: !1890)
!1890 = distinct !DILocation(line: 110, column: 3, scope: !1873, inlinedAt: !1879)
!1891 = !DILocation(line: 75, column: 7, scope: !1825, inlinedAt: !1890)
!1892 = !DILocation(line: 75, column: 24, scope: !1825, inlinedAt: !1890)
!1893 = !DILocation(line: 75, column: 7, scope: !1820, inlinedAt: !1890)
!1894 = !DILocation(line: 77, column: 11, scope: !1829, inlinedAt: !1890)
!1895 = !DILocation(line: 154, column: 23, scope: !1881)
!1896 = !DILocation(line: 160, column: 24, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1869, file: !443, line: 160, column: 24)
!1898 = !DILocation(line: 160, column: 24, scope: !1869)
!1899 = !DILocalVariable(name: "tabval", arg: 1, scope: !1900, file: !443, line: 116, type: !389)
!1900 = distinct !DISubprogram(name: "set_increment_size", scope: !443, file: !443, line: 116, type: !1874, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !1901)
!1901 = !{!1899, !1902}
!1902 = !DILocalVariable(name: "ok", scope: !1900, file: !443, line: 118, type: !154)
!1903 = !DILocation(line: 0, scope: !1900, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 162, column: 25, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1906, file: !443, line: 162, column: 23)
!1906 = distinct !DILexicalBlock(scope: !1897, file: !443, line: 161, column: 17)
!1907 = !DILocation(line: 120, column: 7, scope: !1908, inlinedAt: !1904)
!1908 = distinct !DILexicalBlock(scope: !1900, file: !443, line: 120, column: 7)
!1909 = !DILocation(line: 120, column: 7, scope: !1900, inlinedAt: !1904)
!1910 = !DILocation(line: 122, column: 7, scope: !1911, inlinedAt: !1904)
!1911 = distinct !DILexicalBlock(scope: !1908, file: !443, line: 121, column: 5)
!1912 = !DILocation(line: 126, column: 5, scope: !1911, inlinedAt: !1904)
!1913 = !DILocation(line: 127, column: 18, scope: !1900, inlinedAt: !1904)
!1914 = !DILocation(line: 0, scope: !1820, inlinedAt: !1915)
!1915 = distinct !DILocation(line: 129, column: 3, scope: !1900, inlinedAt: !1904)
!1916 = !DILocation(line: 75, column: 7, scope: !1825, inlinedAt: !1915)
!1917 = !DILocation(line: 75, column: 24, scope: !1825, inlinedAt: !1915)
!1918 = !DILocation(line: 75, column: 7, scope: !1820, inlinedAt: !1915)
!1919 = !DILocation(line: 77, column: 11, scope: !1829, inlinedAt: !1915)
!1920 = !DILocation(line: 162, column: 23, scope: !1906)
!1921 = !DILocation(line: 0, scope: !1797, inlinedAt: !1922)
!1922 = distinct !DILocation(line: 169, column: 17, scope: !1897)
!1923 = !DILocation(line: 86, column: 23, scope: !1797, inlinedAt: !1922)
!1924 = !DILocation(line: 91, column: 3, scope: !1797, inlinedAt: !1922)
!1925 = !DILocation(line: 86, column: 40, scope: !1797, inlinedAt: !1922)
!1926 = !DILocation(line: 89, column: 25, scope: !1809, inlinedAt: !1922)
!1927 = !DILocation(line: 89, column: 22, scope: !1809, inlinedAt: !1922)
!1928 = !DILocation(line: 89, column: 7, scope: !1797, inlinedAt: !1922)
!1929 = !DILocation(line: 90, column: 16, scope: !1809, inlinedAt: !1922)
!1930 = !DILocation(line: 90, column: 14, scope: !1809, inlinedAt: !1922)
!1931 = !DILocation(line: 91, column: 26, scope: !1797, inlinedAt: !1922)
!1932 = !DILocation(line: 90, column: 5, scope: !1809, inlinedAt: !1922)
!1933 = !DILocation(line: 87, column: 36, scope: !1797, inlinedAt: !1922)
!1934 = !DILocation(line: 87, column: 24, scope: !1797, inlinedAt: !1922)
!1935 = !DILocation(line: 91, column: 30, scope: !1797, inlinedAt: !1922)
!1936 = !DILocation(line: 0, scope: !1820, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 93, column: 3, scope: !1797, inlinedAt: !1922)
!1938 = !DILocation(line: 75, column: 7, scope: !1825, inlinedAt: !1937)
!1939 = !DILocation(line: 75, column: 24, scope: !1825, inlinedAt: !1937)
!1940 = !DILocation(line: 75, column: 7, scope: !1820, inlinedAt: !1937)
!1941 = !DILocation(line: 77, column: 11, scope: !1829, inlinedAt: !1937)
!1942 = !DILocation(line: 173, column: 16, scope: !1848)
!1943 = !DILocation(line: 175, column: 15, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1945, file: !443, line: 175, column: 15)
!1945 = distinct !DILexicalBlock(scope: !1847, file: !443, line: 174, column: 9)
!1946 = !DILocation(line: 175, column: 15, scope: !1945)
!1947 = !DILocation(line: 177, column: 15, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1944, file: !443, line: 176, column: 13)
!1949 = !DILocation(line: 180, column: 13, scope: !1948)
!1950 = !DILocation(line: 186, column: 15, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1952, file: !443, line: 186, column: 15)
!1952 = distinct !DILexicalBlock(scope: !1846, file: !443, line: 185, column: 9)
!1953 = !DILocation(line: 186, column: 15, scope: !1952)
!1954 = !DILocation(line: 188, column: 15, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1951, file: !443, line: 187, column: 13)
!1956 = !DILocation(line: 191, column: 13, scope: !1955)
!1957 = !DILocation(line: 173, column: 16, scope: !1847)
!1958 = !DILocalVariable(name: "c", arg: 1, scope: !1959, file: !1960, line: 233, type: !77)
!1959 = distinct !DISubprogram(name: "c_isdigit", scope: !1960, file: !1960, line: 233, type: !1961, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !1963)
!1960 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!154, !77}
!1963 = !{!1958}
!1964 = !DILocation(line: 0, scope: !1959, inlinedAt: !1965)
!1965 = distinct !DILocation(line: 195, column: 16, scope: !1845)
!1966 = !DILocation(line: 235, column: 3, scope: !1959, inlinedAt: !1965)
!1967 = !DILocation(line: 195, column: 16, scope: !1846)
!1968 = !DILocation(line: 197, column: 16, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1844, file: !443, line: 197, column: 15)
!1970 = !DILocation(line: 197, column: 15, scope: !1844)
!1971 = !DILocation(line: 205, column: 16, scope: !1843)
!1972 = !DILocation(line: 205, column: 15, scope: !1844)
!1973 = !DILocation(line: 207, column: 27, scope: !1842)
!1974 = !DILocation(line: 0, scope: !1842)
!1975 = !DILocation(line: 208, column: 31, scope: !1842)
!1976 = !DILocation(line: 209, column: 15, scope: !1842)
!1977 = !DILocation(line: 210, column: 15, scope: !1842)
!1978 = !DILocation(line: 212, column: 33, scope: !1842)
!1979 = !DILocation(line: 212, column: 39, scope: !1842)
!1980 = !DILocation(line: 213, column: 13, scope: !1842)
!1981 = !DILocation(line: 217, column: 11, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1845, file: !443, line: 216, column: 9)
!1983 = !DILocation(line: 220, column: 11, scope: !1982)
!1984 = !DILocation(line: 146, column: 23, scope: !1850)
!1985 = !DILocation(line: 146, column: 3, scope: !1850)
!1986 = distinct !{!1986, !1861, !1987, !1210}
!1987 = !DILocation(line: 222, column: 5, scope: !1851)
!1988 = !DILocation(line: 224, column: 7, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1832, file: !443, line: 224, column: 7)
!1990 = !DILocation(line: 224, column: 10, scope: !1989)
!1991 = !DILocation(line: 226, column: 11, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !443, line: 226, column: 11)
!1993 = distinct !DILexicalBlock(scope: !1989, file: !443, line: 225, column: 5)
!1994 = !DILocation(line: 226, column: 11, scope: !1993)
!1995 = !DILocation(line: 0, scope: !1873, inlinedAt: !1996)
!1996 = distinct !DILocation(line: 227, column: 15, scope: !1992)
!1997 = !DILocation(line: 101, column: 7, scope: !1883, inlinedAt: !1996)
!1998 = !DILocation(line: 101, column: 7, scope: !1873, inlinedAt: !1996)
!1999 = !DILocation(line: 103, column: 7, scope: !1886, inlinedAt: !1996)
!2000 = !DILocation(line: 107, column: 5, scope: !1886, inlinedAt: !1996)
!2001 = !DILocation(line: 108, column: 15, scope: !1873, inlinedAt: !1996)
!2002 = !DILocation(line: 0, scope: !1820, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 110, column: 3, scope: !1873, inlinedAt: !1996)
!2004 = !DILocation(line: 75, column: 7, scope: !1825, inlinedAt: !2003)
!2005 = !DILocation(line: 75, column: 24, scope: !1825, inlinedAt: !2003)
!2006 = !DILocation(line: 75, column: 7, scope: !1820, inlinedAt: !2003)
!2007 = !DILocation(line: 77, column: 11, scope: !1829, inlinedAt: !2003)
!2008 = !DILocation(line: 227, column: 12, scope: !1992)
!2009 = !DILocation(line: 227, column: 9, scope: !1992)
!2010 = !DILocation(line: 228, column: 16, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1992, file: !443, line: 228, column: 16)
!2012 = !DILocation(line: 228, column: 16, scope: !1992)
!2013 = !DILocation(line: 0, scope: !1900, inlinedAt: !2014)
!2014 = distinct !DILocation(line: 229, column: 15, scope: !2011)
!2015 = !DILocation(line: 120, column: 7, scope: !1908, inlinedAt: !2014)
!2016 = !DILocation(line: 120, column: 7, scope: !1900, inlinedAt: !2014)
!2017 = !DILocation(line: 122, column: 7, scope: !1911, inlinedAt: !2014)
!2018 = !DILocation(line: 126, column: 5, scope: !1911, inlinedAt: !2014)
!2019 = !DILocation(line: 127, column: 18, scope: !1900, inlinedAt: !2014)
!2020 = !DILocation(line: 0, scope: !1820, inlinedAt: !2021)
!2021 = distinct !DILocation(line: 129, column: 3, scope: !1900, inlinedAt: !2014)
!2022 = !DILocation(line: 75, column: 7, scope: !1825, inlinedAt: !2021)
!2023 = !DILocation(line: 75, column: 24, scope: !1825, inlinedAt: !2021)
!2024 = !DILocation(line: 75, column: 7, scope: !1820, inlinedAt: !2021)
!2025 = !DILocation(line: 77, column: 11, scope: !1829, inlinedAt: !2021)
!2026 = !DILocation(line: 229, column: 12, scope: !2011)
!2027 = !DILocation(line: 229, column: 9, scope: !2011)
!2028 = !DILocation(line: 0, scope: !1797, inlinedAt: !2029)
!2029 = distinct !DILocation(line: 231, column: 9, scope: !2011)
!2030 = !DILocation(line: 86, column: 23, scope: !1797, inlinedAt: !2029)
!2031 = !DILocation(line: 91, column: 3, scope: !1797, inlinedAt: !2029)
!2032 = !DILocation(line: 86, column: 40, scope: !1797, inlinedAt: !2029)
!2033 = !DILocation(line: 89, column: 25, scope: !1809, inlinedAt: !2029)
!2034 = !DILocation(line: 89, column: 22, scope: !1809, inlinedAt: !2029)
!2035 = !DILocation(line: 89, column: 7, scope: !1797, inlinedAt: !2029)
!2036 = !DILocation(line: 90, column: 16, scope: !1809, inlinedAt: !2029)
!2037 = !DILocation(line: 90, column: 14, scope: !1809, inlinedAt: !2029)
!2038 = !DILocation(line: 91, column: 26, scope: !1797, inlinedAt: !2029)
!2039 = !DILocation(line: 90, column: 5, scope: !1809, inlinedAt: !2029)
!2040 = !DILocation(line: 87, column: 36, scope: !1797, inlinedAt: !2029)
!2041 = !DILocation(line: 87, column: 24, scope: !1797, inlinedAt: !2029)
!2042 = !DILocation(line: 91, column: 30, scope: !1797, inlinedAt: !2029)
!2043 = !DILocation(line: 0, scope: !1820, inlinedAt: !2044)
!2044 = distinct !DILocation(line: 93, column: 3, scope: !1797, inlinedAt: !2029)
!2045 = !DILocation(line: 75, column: 7, scope: !1825, inlinedAt: !2044)
!2046 = !DILocation(line: 75, column: 24, scope: !1825, inlinedAt: !2044)
!2047 = !DILocation(line: 75, column: 7, scope: !1820, inlinedAt: !2044)
!2048 = !DILocation(line: 77, column: 11, scope: !1829, inlinedAt: !2044)
!2049 = !DILocation(line: 234, column: 9, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !1832, file: !443, line: 234, column: 7)
!2051 = !DILocation(line: 234, column: 7, scope: !1832)
!2052 = !DILocation(line: 235, column: 5, scope: !2050)
!2053 = !DILocation(line: 236, column: 1, scope: !1832)
!2054 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !443, file: !443, line: 268, type: !356, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442)
!2055 = !DILocation(line: 270, column: 23, scope: !2054)
!2056 = !DILocation(line: 270, column: 33, scope: !2054)
!2057 = !DILocalVariable(name: "tabs", arg: 1, scope: !2058, file: !443, line: 242, type: !2061)
!2058 = distinct !DISubprogram(name: "validate_tab_stops", scope: !443, file: !443, line: 242, type: !2059, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !2063)
!2059 = !DISubroutineType(types: !2060)
!2060 = !{null, !2061, !369}
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!2063 = !{!2057, !2064, !2065, !2066}
!2064 = !DILocalVariable(name: "entries", arg: 2, scope: !2058, file: !443, line: 242, type: !369)
!2065 = !DILocalVariable(name: "prev_tab", scope: !2058, file: !443, line: 244, type: !389)
!2066 = !DILocalVariable(name: "i", scope: !2067, file: !443, line: 246, type: !369)
!2067 = distinct !DILexicalBlock(scope: !2058, file: !443, line: 246, column: 3)
!2068 = !DILocation(line: 0, scope: !2058, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 270, column: 3, scope: !2054)
!2070 = !DILocation(line: 0, scope: !2067, inlinedAt: !2069)
!2071 = !DILocation(line: 246, column: 23, scope: !2072, inlinedAt: !2069)
!2072 = distinct !DILexicalBlock(scope: !2067, file: !443, line: 246, column: 3)
!2073 = !DILocation(line: 246, column: 3, scope: !2067, inlinedAt: !2069)
!2074 = !DILocation(line: 246, column: 35, scope: !2072, inlinedAt: !2069)
!2075 = distinct !{!2075, !2073, !2076, !1210}
!2076 = !DILocation(line: 253, column: 5, scope: !2067, inlinedAt: !2069)
!2077 = !DILocation(line: 255, column: 7, scope: !2078, inlinedAt: !2069)
!2078 = distinct !DILexicalBlock(scope: !2058, file: !443, line: 255, column: 7)
!2079 = !DILocation(line: 255, column: 22, scope: !2078, inlinedAt: !2069)
!2080 = !DILocation(line: 248, column: 11, scope: !2081, inlinedAt: !2069)
!2081 = distinct !DILexicalBlock(scope: !2082, file: !443, line: 248, column: 11)
!2082 = distinct !DILexicalBlock(scope: !2072, file: !443, line: 247, column: 5)
!2083 = !DILocation(line: 248, column: 19, scope: !2081, inlinedAt: !2069)
!2084 = !DILocation(line: 248, column: 11, scope: !2082, inlinedAt: !2069)
!2085 = !DILocation(line: 249, column: 9, scope: !2081, inlinedAt: !2069)
!2086 = !DILocation(line: 250, column: 19, scope: !2087, inlinedAt: !2069)
!2087 = distinct !DILexicalBlock(scope: !2082, file: !443, line: 250, column: 11)
!2088 = !DILocation(line: 250, column: 11, scope: !2082, inlinedAt: !2069)
!2089 = !DILocation(line: 251, column: 9, scope: !2087, inlinedAt: !2069)
!2090 = !DILocation(line: 256, column: 5, scope: !2078, inlinedAt: !2069)
!2091 = !DILocation(line: 272, column: 22, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2054, file: !443, line: 272, column: 7)
!2093 = !DILocation(line: 272, column: 7, scope: !2054)
!2094 = !DILocation(line: 273, column: 35, scope: !2092)
!2095 = !DILocation(line: 273, column: 33, scope: !2092)
!2096 = !DILocation(line: 273, column: 5, scope: !2092)
!2097 = !DILocation(line: 276, column: 27, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2092, file: !443, line: 276, column: 12)
!2099 = !DILocation(line: 276, column: 32, scope: !2098)
!2100 = !DILocation(line: 277, column: 16, scope: !2098)
!2101 = !DILocation(line: 277, column: 5, scope: !2098)
!2102 = !DILocation(line: 0, scope: !2092)
!2103 = !DILocation(line: 280, column: 1, scope: !2054)
!2104 = distinct !DISubprogram(name: "get_next_tab_column", scope: !443, file: !443, line: 288, type: !2105, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !2109)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!389, !389, !2107, !2108}
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!2109 = !{!2110, !2111, !2112, !2113, !2114, !2120, !2124}
!2110 = !DILocalVariable(name: "column", arg: 1, scope: !2104, file: !443, line: 288, type: !389)
!2111 = !DILocalVariable(name: "tab_index", arg: 2, scope: !2104, file: !443, line: 288, type: !2107)
!2112 = !DILocalVariable(name: "last_tab", arg: 3, scope: !2104, file: !443, line: 288, type: !2108)
!2113 = !DILocalVariable(name: "tab_distance", scope: !2104, file: !443, line: 291, type: !389)
!2114 = !DILocalVariable(name: "tab", scope: !2115, file: !443, line: 302, type: !389)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !443, line: 301, column: 9)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !443, line: 300, column: 7)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !443, line: 300, column: 7)
!2118 = distinct !DILexicalBlock(scope: !2119, file: !443, line: 297, column: 5)
!2119 = distinct !DILexicalBlock(scope: !2104, file: !443, line: 294, column: 7)
!2120 = !DILocalVariable(name: "end_tab", scope: !2121, file: !443, line: 314, type: !389)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !443, line: 311, column: 9)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !443, line: 310, column: 16)
!2123 = distinct !DILexicalBlock(scope: !2118, file: !443, line: 308, column: 11)
!2124 = !DILocalVariable(name: "tab_stop", scope: !2104, file: !443, line: 324, type: !389)
!2125 = !DILocation(line: 0, scope: !2104)
!2126 = !DILocation(line: 290, column: 13, scope: !2104)
!2127 = !DILocation(line: 294, column: 7, scope: !2119)
!2128 = !DILocation(line: 294, column: 7, scope: !2104)
!2129 = !DILocation(line: 300, column: 26, scope: !2116)
!2130 = !DILocation(line: 300, column: 7, scope: !2117)
!2131 = !DILocation(line: 295, column: 38, scope: !2119)
!2132 = !DILocation(line: 295, column: 29, scope: !2119)
!2133 = !DILocation(line: 295, column: 5, scope: !2119)
!2134 = !DILocation(line: 302, column: 23, scope: !2115)
!2135 = !DILocation(line: 0, scope: !2115)
!2136 = !DILocation(line: 303, column: 22, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2115, file: !443, line: 303, column: 15)
!2138 = !DILocation(line: 300, column: 57, scope: !2116)
!2139 = distinct !{!2139, !2130, !2140, !1210}
!2140 = !DILocation(line: 305, column: 9, scope: !2117)
!2141 = !DILocation(line: 308, column: 11, scope: !2123)
!2142 = !DILocation(line: 308, column: 11, scope: !2118)
!2143 = !DILocation(line: 309, column: 45, scope: !2123)
!2144 = !DILocation(line: 309, column: 36, scope: !2123)
!2145 = !DILocation(line: 309, column: 9, scope: !2123)
!2146 = !DILocation(line: 310, column: 16, scope: !2122)
!2147 = !DILocation(line: 310, column: 16, scope: !2123)
!2148 = !DILocation(line: 314, column: 27, scope: !2121)
!2149 = !DILocation(line: 0, scope: !2121)
!2150 = !DILocation(line: 315, column: 52, scope: !2121)
!2151 = !DILocation(line: 315, column: 63, scope: !2121)
!2152 = !DILocation(line: 315, column: 41, scope: !2121)
!2153 = !DILocation(line: 316, column: 9, scope: !2121)
!2154 = !DILocation(line: 319, column: 21, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2122, file: !443, line: 318, column: 9)
!2156 = !DILocation(line: 0, scope: !2119)
!2157 = !DILocation(line: 325, column: 7, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2104, file: !443, line: 325, column: 7)
!2159 = !DILocation(line: 325, column: 7, scope: !2104)
!2160 = !DILocation(line: 326, column: 5, scope: !2158)
!2161 = !DILocation(line: 328, column: 1, scope: !2104)
!2162 = distinct !DISubprogram(name: "set_file_list", scope: !443, file: !443, line: 333, type: !2163, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !2165)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{null, !594}
!2165 = !{!2166}
!2166 = !DILocalVariable(name: "list", arg: 1, scope: !2162, file: !443, line: 333, type: !594)
!2167 = !DILocation(line: 0, scope: !2162)
!2168 = !DILocation(line: 335, column: 19, scope: !2162)
!2169 = !DILocation(line: 337, column: 8, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2162, file: !443, line: 337, column: 7)
!2171 = !DILocation(line: 0, scope: !2170)
!2172 = !DILocation(line: 341, column: 1, scope: !2162)
!2173 = !DILocation(line: 0, scope: !495)
!2174 = !DILocation(line: 354, column: 7, scope: !537)
!2175 = !DILocation(line: 354, column: 7, scope: !495)
!2176 = !DILocation(line: 356, column: 17, scope: !536)
!2177 = !DILocation(line: 0, scope: !536)
!2178 = !DILocalVariable(name: "__stream", arg: 1, scope: !2179, file: !1423, line: 135, type: !498)
!2179 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1423, file: !1423, line: 135, type: !2180, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !2182)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!77, !498}
!2182 = !{!2178}
!2183 = !DILocation(line: 0, scope: !2179, inlinedAt: !2184)
!2184 = distinct !DILocation(line: 357, column: 12, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !536, file: !443, line: 357, column: 11)
!2186 = !DILocation(line: 137, column: 10, scope: !2179, inlinedAt: !2184)
!2187 = !DILocation(line: 357, column: 12, scope: !2185)
!2188 = !DILocation(line: 357, column: 11, scope: !536)
!2189 = !DILocation(line: 359, column: 18, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !536, file: !443, line: 359, column: 11)
!2191 = !DILocalVariable(name: "__s1", arg: 1, scope: !2192, file: !1176, line: 1359, type: !113)
!2192 = distinct !DISubprogram(name: "streq", scope: !1176, file: !1176, line: 1359, type: !1177, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !2193)
!2193 = !{!2191, !2194}
!2194 = !DILocalVariable(name: "__s2", arg: 2, scope: !2192, file: !1176, line: 1359, type: !113)
!2195 = !DILocation(line: 0, scope: !2192, inlinedAt: !2196)
!2196 = distinct !DILocation(line: 359, column: 11, scope: !2190)
!2197 = !DILocation(line: 1361, column: 11, scope: !2192, inlinedAt: !2196)
!2198 = !DILocation(line: 1361, column: 10, scope: !2192, inlinedAt: !2196)
!2199 = !DILocation(line: 359, column: 11, scope: !536)
!2200 = !DILocation(line: 360, column: 9, scope: !2190)
!2201 = !DILocation(line: 361, column: 16, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2190, file: !443, line: 361, column: 16)
!2203 = !DILocation(line: 361, column: 28, scope: !2202)
!2204 = !DILocation(line: 361, column: 16, scope: !2190)
!2205 = !DILocation(line: 362, column: 15, scope: !2202)
!2206 = !DILocation(line: 362, column: 9, scope: !2202)
!2207 = !DILocation(line: 363, column: 11, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !536, file: !443, line: 363, column: 11)
!2209 = !DILocation(line: 363, column: 11, scope: !536)
!2210 = !DILocation(line: 365, column: 11, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2208, file: !443, line: 364, column: 9)
!2212 = !DILocation(line: 366, column: 23, scope: !2211)
!2213 = !DILocation(line: 367, column: 9, scope: !2211)
!2214 = !DILocation(line: 370, column: 28, scope: !495)
!2215 = !DILocation(line: 370, column: 18, scope: !495)
!2216 = !DILocation(line: 370, column: 32, scope: !495)
!2217 = !DILocation(line: 370, column: 3, scope: !495)
!2218 = !DILocation(line: 0, scope: !2192, inlinedAt: !2219)
!2219 = distinct !DILocation(line: 372, column: 11, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2221, file: !443, line: 372, column: 11)
!2221 = distinct !DILexicalBlock(scope: !495, file: !443, line: 371, column: 5)
!2222 = !DILocation(line: 1361, column: 11, scope: !2192, inlinedAt: !2219)
!2223 = !DILocation(line: 1361, column: 10, scope: !2192, inlinedAt: !2219)
!2224 = !DILocation(line: 372, column: 11, scope: !2221)
!2225 = !DILocation(line: 374, column: 27, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2220, file: !443, line: 373, column: 9)
!2227 = !DILocation(line: 375, column: 16, scope: !2226)
!2228 = !DILocation(line: 376, column: 9, scope: !2226)
!2229 = !DILocation(line: 378, column: 14, scope: !2220)
!2230 = !DILocation(line: 0, scope: !2220)
!2231 = !DILocation(line: 379, column: 11, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2221, file: !443, line: 379, column: 11)
!2233 = !DILocation(line: 379, column: 11, scope: !2221)
!2234 = !DILocation(line: 381, column: 21, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2232, file: !443, line: 380, column: 9)
!2236 = !DILocation(line: 382, column: 11, scope: !2235)
!2237 = !DILocation(line: 383, column: 11, scope: !2235)
!2238 = !DILocation(line: 385, column: 7, scope: !2221)
!2239 = !DILocation(line: 386, column: 19, scope: !2221)
!2240 = distinct !{!2240, !2217, !2241, !1210}
!2241 = !DILocation(line: 387, column: 5, scope: !495)
!2242 = !DILocation(line: 389, column: 1, scope: !495)
!2243 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !443, file: !443, line: 393, type: !356, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442)
!2244 = !DILocation(line: 395, column: 9, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2243, file: !443, line: 395, column: 9)
!2246 = !DILocation(line: 395, column: 25, scope: !2245)
!2247 = !DILocation(line: 395, column: 36, scope: !2245)
!2248 = !DILocation(line: 395, column: 28, scope: !2245)
!2249 = !DILocation(line: 395, column: 43, scope: !2245)
!2250 = !DILocation(line: 395, column: 9, scope: !2243)
!2251 = !DILocation(line: 396, column: 7, scope: !2245)
!2252 = !DILocation(line: 397, column: 1, scope: !2243)
!2253 = distinct !DISubprogram(name: "emit_tab_list_info", scope: !443, file: !443, line: 402, type: !1113, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !442, retainedNodes: !2254)
!2254 = !{!2255}
!2255 = !DILocalVariable(name: "program", arg: 1, scope: !2253, file: !443, line: 402, type: !113)
!2256 = !DILocation(line: 0, scope: !2253)
!2257 = !DILocation(line: 405, column: 20, scope: !2253)
!2258 = !DILocation(line: 0, scope: !597, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 405, column: 3, scope: !2253)
!2260 = !DILocation(line: 581, column: 7, scope: !604, inlinedAt: !2259)
!2261 = !DILocation(line: 581, column: 19, scope: !604, inlinedAt: !2259)
!2262 = !DILocation(line: 581, column: 7, scope: !597, inlinedAt: !2259)
!2263 = !DILocation(line: 585, column: 26, scope: !603, inlinedAt: !2259)
!2264 = !DILocation(line: 0, scope: !603, inlinedAt: !2259)
!2265 = !DILocation(line: 586, column: 23, scope: !603, inlinedAt: !2259)
!2266 = !DILocation(line: 586, column: 28, scope: !603, inlinedAt: !2259)
!2267 = !DILocation(line: 586, column: 32, scope: !603, inlinedAt: !2259)
!2268 = !DILocation(line: 586, column: 38, scope: !603, inlinedAt: !2259)
!2269 = !DILocation(line: 0, scope: !2192, inlinedAt: !2270)
!2270 = distinct !DILocation(line: 586, column: 41, scope: !603, inlinedAt: !2259)
!2271 = !DILocation(line: 1361, column: 11, scope: !2192, inlinedAt: !2270)
!2272 = !DILocation(line: 1361, column: 10, scope: !2192, inlinedAt: !2270)
!2273 = !DILocation(line: 586, column: 19, scope: !603, inlinedAt: !2259)
!2274 = !DILocation(line: 587, column: 5, scope: !603, inlinedAt: !2259)
!2275 = !DILocation(line: 588, column: 7, scope: !2276, inlinedAt: !2259)
!2276 = distinct !DILexicalBlock(scope: !597, file: !76, line: 588, column: 7)
!2277 = !DILocation(line: 588, column: 7, scope: !597, inlinedAt: !2259)
!2278 = !DILocation(line: 590, column: 7, scope: !2279, inlinedAt: !2259)
!2279 = distinct !DILexicalBlock(scope: !2276, file: !76, line: 589, column: 5)
!2280 = !DILocation(line: 591, column: 7, scope: !2279, inlinedAt: !2259)
!2281 = !DILocation(line: 595, column: 37, scope: !597, inlinedAt: !2259)
!2282 = !DILocation(line: 595, column: 35, scope: !597, inlinedAt: !2259)
!2283 = !DILocation(line: 596, column: 29, scope: !597, inlinedAt: !2259)
!2284 = !DILocation(line: 597, column: 8, scope: !611, inlinedAt: !2259)
!2285 = !DILocation(line: 597, column: 7, scope: !597, inlinedAt: !2259)
!2286 = !DILocation(line: 604, column: 24, scope: !610, inlinedAt: !2259)
!2287 = !DILocation(line: 604, column: 12, scope: !611, inlinedAt: !2259)
!2288 = !DILocation(line: 0, scope: !609, inlinedAt: !2259)
!2289 = !DILocation(line: 610, column: 16, scope: !609, inlinedAt: !2259)
!2290 = !DILocation(line: 610, column: 7, scope: !609, inlinedAt: !2259)
!2291 = !DILocation(line: 611, column: 21, scope: !609, inlinedAt: !2259)
!2292 = !DILocation(line: 611, column: 19, scope: !609, inlinedAt: !2259)
!2293 = !DILocation(line: 611, column: 16, scope: !609, inlinedAt: !2259)
!2294 = !DILocation(line: 610, column: 30, scope: !609, inlinedAt: !2259)
!2295 = distinct !{!2295, !2290, !2291, !1210}
!2296 = !DILocation(line: 612, column: 18, scope: !2297, inlinedAt: !2259)
!2297 = distinct !DILexicalBlock(scope: !609, file: !76, line: 612, column: 11)
!2298 = !DILocation(line: 612, column: 11, scope: !609, inlinedAt: !2259)
!2299 = !DILocation(line: 618, column: 5, scope: !609, inlinedAt: !2259)
!2300 = !DILocation(line: 620, column: 23, scope: !597, inlinedAt: !2259)
!2301 = !DILocation(line: 625, column: 39, scope: !597, inlinedAt: !2259)
!2302 = !DILocation(line: 626, column: 3, scope: !597, inlinedAt: !2259)
!2303 = !DILocation(line: 626, column: 10, scope: !597, inlinedAt: !2259)
!2304 = !DILocation(line: 626, column: 21, scope: !597, inlinedAt: !2259)
!2305 = !DILocation(line: 628, column: 44, scope: !2306, inlinedAt: !2259)
!2306 = distinct !DILexicalBlock(scope: !2307, file: !76, line: 628, column: 11)
!2307 = distinct !DILexicalBlock(scope: !597, file: !76, line: 627, column: 5)
!2308 = !DILocation(line: 628, column: 32, scope: !2306, inlinedAt: !2259)
!2309 = !DILocation(line: 628, column: 49, scope: !2306, inlinedAt: !2259)
!2310 = !DILocation(line: 628, column: 11, scope: !2307, inlinedAt: !2259)
!2311 = !DILocation(line: 630, column: 11, scope: !2312, inlinedAt: !2259)
!2312 = distinct !DILexicalBlock(scope: !2307, file: !76, line: 630, column: 11)
!2313 = !DILocation(line: 630, column: 11, scope: !2307, inlinedAt: !2259)
!2314 = !DILocation(line: 632, column: 26, scope: !2315, inlinedAt: !2259)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !76, line: 632, column: 15)
!2316 = distinct !DILexicalBlock(scope: !2312, file: !76, line: 631, column: 9)
!2317 = !DILocation(line: 632, column: 34, scope: !2315, inlinedAt: !2259)
!2318 = !DILocation(line: 632, column: 37, scope: !2315, inlinedAt: !2259)
!2319 = !DILocation(line: 632, column: 15, scope: !2316, inlinedAt: !2259)
!2320 = !DILocation(line: 636, column: 16, scope: !2321, inlinedAt: !2259)
!2321 = distinct !DILexicalBlock(scope: !2316, file: !76, line: 636, column: 15)
!2322 = !DILocation(line: 636, column: 29, scope: !2321, inlinedAt: !2259)
!2323 = !DILocation(line: 640, column: 16, scope: !2307, inlinedAt: !2259)
!2324 = distinct !{!2324, !2302, !2325, !1210}
!2325 = !DILocation(line: 641, column: 5, scope: !597, inlinedAt: !2259)
!2326 = !DILocation(line: 644, column: 3, scope: !597, inlinedAt: !2259)
!2327 = !DILocation(line: 0, scope: !2192, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 648, column: 31, scope: !597, inlinedAt: !2259)
!2329 = !DILocation(line: 1361, column: 11, scope: !2192, inlinedAt: !2328)
!2330 = !DILocation(line: 1361, column: 10, scope: !2192, inlinedAt: !2328)
!2331 = !DILocation(line: 648, column: 31, scope: !597, inlinedAt: !2259)
!2332 = !DILocation(line: 0, scope: !2192, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 649, column: 31, scope: !597, inlinedAt: !2259)
!2334 = !DILocation(line: 1361, column: 11, scope: !2192, inlinedAt: !2333)
!2335 = !DILocation(line: 1361, column: 10, scope: !2192, inlinedAt: !2333)
!2336 = !DILocation(line: 649, column: 31, scope: !597, inlinedAt: !2259)
!2337 = !DILocation(line: 0, scope: !2192, inlinedAt: !2338)
!2338 = distinct !DILocation(line: 650, column: 31, scope: !597, inlinedAt: !2259)
!2339 = !DILocation(line: 1361, column: 11, scope: !2192, inlinedAt: !2338)
!2340 = !DILocation(line: 1361, column: 10, scope: !2192, inlinedAt: !2338)
!2341 = !DILocation(line: 650, column: 31, scope: !597, inlinedAt: !2259)
!2342 = !DILocation(line: 0, scope: !2192, inlinedAt: !2343)
!2343 = distinct !DILocation(line: 651, column: 31, scope: !597, inlinedAt: !2259)
!2344 = !DILocation(line: 1361, column: 11, scope: !2192, inlinedAt: !2343)
!2345 = !DILocation(line: 1361, column: 10, scope: !2192, inlinedAt: !2343)
!2346 = !DILocation(line: 651, column: 31, scope: !597, inlinedAt: !2259)
!2347 = !DILocation(line: 0, scope: !2192, inlinedAt: !2348)
!2348 = distinct !DILocation(line: 652, column: 31, scope: !597, inlinedAt: !2259)
!2349 = !DILocation(line: 1361, column: 11, scope: !2192, inlinedAt: !2348)
!2350 = !DILocation(line: 1361, column: 10, scope: !2192, inlinedAt: !2348)
!2351 = !DILocation(line: 652, column: 31, scope: !597, inlinedAt: !2259)
!2352 = !DILocation(line: 0, scope: !2192, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 653, column: 31, scope: !597, inlinedAt: !2259)
!2354 = !DILocation(line: 1361, column: 11, scope: !2192, inlinedAt: !2353)
!2355 = !DILocation(line: 1361, column: 10, scope: !2192, inlinedAt: !2353)
!2356 = !DILocation(line: 653, column: 31, scope: !597, inlinedAt: !2259)
!2357 = !DILocation(line: 0, scope: !2192, inlinedAt: !2358)
!2358 = distinct !DILocation(line: 654, column: 31, scope: !597, inlinedAt: !2259)
!2359 = !DILocation(line: 1361, column: 11, scope: !2192, inlinedAt: !2358)
!2360 = !DILocation(line: 1361, column: 10, scope: !2192, inlinedAt: !2358)
!2361 = !DILocation(line: 654, column: 31, scope: !597, inlinedAt: !2259)
!2362 = !DILocation(line: 0, scope: !2192, inlinedAt: !2363)
!2363 = distinct !DILocation(line: 655, column: 31, scope: !597, inlinedAt: !2259)
!2364 = !DILocation(line: 1361, column: 11, scope: !2192, inlinedAt: !2363)
!2365 = !DILocation(line: 1361, column: 10, scope: !2192, inlinedAt: !2363)
!2366 = !DILocation(line: 655, column: 31, scope: !597, inlinedAt: !2259)
!2367 = !DILocation(line: 0, scope: !2192, inlinedAt: !2368)
!2368 = distinct !DILocation(line: 656, column: 31, scope: !597, inlinedAt: !2259)
!2369 = !DILocation(line: 1361, column: 11, scope: !2192, inlinedAt: !2368)
!2370 = !DILocation(line: 1361, column: 10, scope: !2192, inlinedAt: !2368)
!2371 = !DILocation(line: 656, column: 31, scope: !597, inlinedAt: !2259)
!2372 = !DILocation(line: 0, scope: !2192, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 657, column: 31, scope: !597, inlinedAt: !2259)
!2374 = !DILocation(line: 1361, column: 11, scope: !2192, inlinedAt: !2373)
!2375 = !DILocation(line: 1361, column: 10, scope: !2192, inlinedAt: !2373)
!2376 = !DILocation(line: 657, column: 31, scope: !597, inlinedAt: !2259)
!2377 = !DILocation(line: 663, column: 7, scope: !2378, inlinedAt: !2259)
!2378 = distinct !DILexicalBlock(scope: !597, file: !76, line: 663, column: 7)
!2379 = !DILocation(line: 664, column: 7, scope: !2378, inlinedAt: !2259)
!2380 = !DILocation(line: 664, column: 10, scope: !2378, inlinedAt: !2259)
!2381 = !DILocation(line: 663, column: 7, scope: !597, inlinedAt: !2259)
!2382 = !DILocation(line: 669, column: 7, scope: !2383, inlinedAt: !2259)
!2383 = distinct !DILexicalBlock(scope: !2378, file: !76, line: 665, column: 5)
!2384 = !DILocation(line: 671, column: 5, scope: !2383, inlinedAt: !2259)
!2385 = !DILocation(line: 676, column: 7, scope: !2386, inlinedAt: !2259)
!2386 = distinct !DILexicalBlock(scope: !2378, file: !76, line: 673, column: 5)
!2387 = !DILocation(line: 679, column: 3, scope: !597, inlinedAt: !2259)
!2388 = !DILocation(line: 683, column: 3, scope: !597, inlinedAt: !2259)
!2389 = !DILocation(line: 686, column: 3, scope: !597, inlinedAt: !2259)
!2390 = !DILocation(line: 688, column: 3, scope: !597, inlinedAt: !2259)
!2391 = !DILocation(line: 691, column: 3, scope: !597, inlinedAt: !2259)
!2392 = !DILocation(line: 695, column: 3, scope: !597, inlinedAt: !2259)
!2393 = !DILocation(line: 696, column: 1, scope: !597, inlinedAt: !2259)
!2394 = !DILocation(line: 409, column: 3, scope: !2253)
!2395 = !DILocation(line: 416, column: 1, scope: !2253)
!2396 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !689, file: !689, line: 50, type: !1113, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !2397)
!2397 = !{!2398}
!2398 = !DILocalVariable(name: "file", arg: 1, scope: !2396, file: !689, line: 50, type: !113)
!2399 = !DILocation(line: 0, scope: !2396)
!2400 = !DILocation(line: 52, column: 13, scope: !2396)
!2401 = !DILocation(line: 53, column: 1, scope: !2396)
!2402 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !689, file: !689, line: 87, type: !2403, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !2405)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{null, !154}
!2405 = !{!2406}
!2406 = !DILocalVariable(name: "ignore", arg: 1, scope: !2402, file: !689, line: 87, type: !154)
!2407 = !DILocation(line: 0, scope: !2402)
!2408 = !DILocation(line: 89, column: 16, scope: !2402)
!2409 = !DILocation(line: 90, column: 1, scope: !2402)
!2410 = distinct !DISubprogram(name: "close_stdout", scope: !689, file: !689, line: 116, type: !356, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !688, retainedNodes: !2411)
!2411 = !{!2412}
!2412 = !DILocalVariable(name: "write_error", scope: !2413, file: !689, line: 121, type: !113)
!2413 = distinct !DILexicalBlock(scope: !2414, file: !689, line: 120, column: 5)
!2414 = distinct !DILexicalBlock(scope: !2410, file: !689, line: 118, column: 7)
!2415 = !DILocation(line: 118, column: 21, scope: !2414)
!2416 = !DILocation(line: 118, column: 7, scope: !2414)
!2417 = !DILocation(line: 118, column: 29, scope: !2414)
!2418 = !DILocation(line: 119, column: 7, scope: !2414)
!2419 = !DILocation(line: 119, column: 12, scope: !2414)
!2420 = !DILocation(line: 119, column: 25, scope: !2414)
!2421 = !DILocation(line: 119, column: 28, scope: !2414)
!2422 = !DILocation(line: 119, column: 34, scope: !2414)
!2423 = !DILocation(line: 118, column: 7, scope: !2410)
!2424 = !DILocation(line: 121, column: 33, scope: !2413)
!2425 = !DILocation(line: 0, scope: !2413)
!2426 = !DILocation(line: 122, column: 11, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2413, file: !689, line: 122, column: 11)
!2428 = !DILocation(line: 0, scope: !2427)
!2429 = !DILocation(line: 122, column: 11, scope: !2413)
!2430 = !DILocation(line: 123, column: 9, scope: !2427)
!2431 = !DILocation(line: 126, column: 9, scope: !2427)
!2432 = !DILocation(line: 128, column: 14, scope: !2413)
!2433 = !DILocation(line: 128, column: 7, scope: !2413)
!2434 = !DILocation(line: 133, column: 42, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2410, file: !689, line: 133, column: 7)
!2436 = !DILocation(line: 133, column: 28, scope: !2435)
!2437 = !DILocation(line: 133, column: 50, scope: !2435)
!2438 = !DILocation(line: 133, column: 7, scope: !2410)
!2439 = !DILocation(line: 134, column: 12, scope: !2435)
!2440 = !DILocation(line: 134, column: 5, scope: !2435)
!2441 = !DILocation(line: 135, column: 1, scope: !2410)
!2442 = !DISubprogram(name: "_exit", scope: !2443, file: !2443, line: 624, type: !1082, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2443 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2444 = distinct !DISubprogram(name: "verror", scope: !704, file: !704, line: 251, type: !2445, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2447)
!2445 = !DISubroutineType(types: !2446)
!2446 = !{null, !77, !77, !113, !714}
!2447 = !{!2448, !2449, !2450, !2451}
!2448 = !DILocalVariable(name: "status", arg: 1, scope: !2444, file: !704, line: 251, type: !77)
!2449 = !DILocalVariable(name: "errnum", arg: 2, scope: !2444, file: !704, line: 251, type: !77)
!2450 = !DILocalVariable(name: "message", arg: 3, scope: !2444, file: !704, line: 251, type: !113)
!2451 = !DILocalVariable(name: "args", arg: 4, scope: !2444, file: !704, line: 251, type: !714)
!2452 = !DILocation(line: 0, scope: !2444)
!2453 = !DILocation(line: 261, column: 3, scope: !2444)
!2454 = !DILocation(line: 265, column: 7, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2444, file: !704, line: 265, column: 7)
!2456 = !DILocation(line: 265, column: 7, scope: !2444)
!2457 = !DILocation(line: 266, column: 5, scope: !2455)
!2458 = !DILocation(line: 272, column: 7, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2455, file: !704, line: 268, column: 5)
!2460 = !DILocation(line: 276, column: 3, scope: !2444)
!2461 = !DILocation(line: 282, column: 1, scope: !2444)
!2462 = distinct !DISubprogram(name: "flush_stdout", scope: !704, file: !704, line: 163, type: !356, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2463)
!2463 = !{!2464}
!2464 = !DILocalVariable(name: "stdout_fd", scope: !2462, file: !704, line: 166, type: !77)
!2465 = !DILocation(line: 0, scope: !2462)
!2466 = !DILocalVariable(name: "fd", arg: 1, scope: !2467, file: !704, line: 145, type: !77)
!2467 = distinct !DISubprogram(name: "is_open", scope: !704, file: !704, line: 145, type: !2468, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2470)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!77, !77}
!2470 = !{!2466}
!2471 = !DILocation(line: 0, scope: !2467, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 182, column: 25, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2462, file: !704, line: 182, column: 7)
!2474 = !DILocation(line: 157, column: 15, scope: !2467, inlinedAt: !2472)
!2475 = !DILocation(line: 157, column: 12, scope: !2467, inlinedAt: !2472)
!2476 = !DILocation(line: 182, column: 7, scope: !2462)
!2477 = !DILocation(line: 184, column: 5, scope: !2473)
!2478 = !DILocation(line: 185, column: 1, scope: !2462)
!2479 = distinct !DISubprogram(name: "error_tail", scope: !704, file: !704, line: 219, type: !2445, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2480)
!2480 = !{!2481, !2482, !2483, !2484}
!2481 = !DILocalVariable(name: "status", arg: 1, scope: !2479, file: !704, line: 219, type: !77)
!2482 = !DILocalVariable(name: "errnum", arg: 2, scope: !2479, file: !704, line: 219, type: !77)
!2483 = !DILocalVariable(name: "message", arg: 3, scope: !2479, file: !704, line: 219, type: !113)
!2484 = !DILocalVariable(name: "args", arg: 4, scope: !2479, file: !704, line: 219, type: !714)
!2485 = distinct !DIAssignID()
!2486 = !DILocation(line: 0, scope: !2479)
!2487 = !DILocation(line: 229, column: 13, scope: !2479)
!2488 = !DILocalVariable(name: "__stream", arg: 1, scope: !2489, file: !1149, line: 132, type: !2492)
!2489 = distinct !DISubprogram(name: "vfprintf", scope: !1149, file: !1149, line: 132, type: !2490, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2527)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!77, !2492, !1153, !714}
!2492 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2493)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !2495)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !2496)
!2496 = !{!2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2495, file: !171, line: 51, baseType: !77, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2495, file: !171, line: 54, baseType: !107, size: 64, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2495, file: !171, line: 55, baseType: !107, size: 64, offset: 128)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2495, file: !171, line: 56, baseType: !107, size: 64, offset: 192)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2495, file: !171, line: 57, baseType: !107, size: 64, offset: 256)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2495, file: !171, line: 58, baseType: !107, size: 64, offset: 320)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2495, file: !171, line: 59, baseType: !107, size: 64, offset: 384)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2495, file: !171, line: 60, baseType: !107, size: 64, offset: 448)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2495, file: !171, line: 61, baseType: !107, size: 64, offset: 512)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2495, file: !171, line: 64, baseType: !107, size: 64, offset: 576)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2495, file: !171, line: 65, baseType: !107, size: 64, offset: 640)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2495, file: !171, line: 66, baseType: !107, size: 64, offset: 704)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2495, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2495, file: !171, line: 70, baseType: !2511, size: 64, offset: 832)
!2511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2495, file: !171, line: 72, baseType: !77, size: 32, offset: 896)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2495, file: !171, line: 73, baseType: !77, size: 32, offset: 928)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2495, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2495, file: !171, line: 77, baseType: !109, size: 16, offset: 1024)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2495, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2495, file: !171, line: 79, baseType: !49, size: 8, offset: 1048)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2495, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2495, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2495, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2495, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2495, file: !171, line: 93, baseType: !2511, size: 64, offset: 1344)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2495, file: !171, line: 94, baseType: !108, size: 64, offset: 1408)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2495, file: !171, line: 95, baseType: !110, size: 64, offset: 1472)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2495, file: !171, line: 96, baseType: !77, size: 32, offset: 1536)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2495, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!2527 = !{!2488, !2528, !2529}
!2528 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2489, file: !1149, line: 133, type: !1153)
!2529 = !DILocalVariable(name: "__ap", arg: 3, scope: !2489, file: !1149, line: 133, type: !714)
!2530 = !DILocation(line: 0, scope: !2489, inlinedAt: !2531)
!2531 = distinct !DILocation(line: 229, column: 3, scope: !2479)
!2532 = !DILocation(line: 135, column: 10, scope: !2489, inlinedAt: !2531)
!2533 = !DILocation(line: 232, column: 3, scope: !2479)
!2534 = !DILocation(line: 233, column: 7, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2479, file: !704, line: 233, column: 7)
!2536 = !DILocation(line: 233, column: 7, scope: !2479)
!2537 = !DILocalVariable(name: "errbuf", scope: !2538, file: !704, line: 193, type: !2542)
!2538 = distinct !DISubprogram(name: "print_errno_message", scope: !704, file: !704, line: 188, type: !1082, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2539)
!2539 = !{!2540, !2541, !2537}
!2540 = !DILocalVariable(name: "errnum", arg: 1, scope: !2538, file: !704, line: 188, type: !77)
!2541 = !DILocalVariable(name: "s", scope: !2538, file: !704, line: 190, type: !113)
!2542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2543)
!2543 = !{!2544}
!2544 = !DISubrange(count: 1024)
!2545 = !DILocation(line: 0, scope: !2538, inlinedAt: !2546)
!2546 = distinct !DILocation(line: 234, column: 5, scope: !2535)
!2547 = !DILocation(line: 193, column: 3, scope: !2538, inlinedAt: !2546)
!2548 = !DILocation(line: 195, column: 7, scope: !2538, inlinedAt: !2546)
!2549 = !DILocation(line: 207, column: 9, scope: !2550, inlinedAt: !2546)
!2550 = distinct !DILexicalBlock(scope: !2538, file: !704, line: 207, column: 7)
!2551 = !DILocation(line: 207, column: 7, scope: !2538, inlinedAt: !2546)
!2552 = !DILocation(line: 208, column: 9, scope: !2550, inlinedAt: !2546)
!2553 = !DILocation(line: 208, column: 5, scope: !2550, inlinedAt: !2546)
!2554 = !DILocation(line: 214, column: 3, scope: !2538, inlinedAt: !2546)
!2555 = !DILocation(line: 216, column: 1, scope: !2538, inlinedAt: !2546)
!2556 = !DILocation(line: 234, column: 5, scope: !2535)
!2557 = !DILocation(line: 238, column: 3, scope: !2479)
!2558 = !DILocalVariable(name: "__c", arg: 1, scope: !2559, file: !1423, line: 101, type: !77)
!2559 = distinct !DISubprogram(name: "putc_unlocked", scope: !1423, file: !1423, line: 101, type: !2560, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2562)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!77, !77, !2493}
!2562 = !{!2558, !2563}
!2563 = !DILocalVariable(name: "__stream", arg: 2, scope: !2559, file: !1423, line: 101, type: !2493)
!2564 = !DILocation(line: 0, scope: !2559, inlinedAt: !2565)
!2565 = distinct !DILocation(line: 238, column: 3, scope: !2479)
!2566 = !DILocation(line: 103, column: 10, scope: !2559, inlinedAt: !2565)
!2567 = !DILocation(line: 240, column: 3, scope: !2479)
!2568 = !DILocation(line: 241, column: 7, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2479, file: !704, line: 241, column: 7)
!2570 = !DILocation(line: 241, column: 7, scope: !2479)
!2571 = !DILocation(line: 242, column: 5, scope: !2569)
!2572 = !DILocation(line: 243, column: 1, scope: !2479)
!2573 = !DISubprogram(name: "__vfprintf_chk", scope: !1149, file: !1149, line: 96, type: !2574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{!77, !2492, !77, !1153, !714}
!2576 = !DISubprogram(name: "strerror_r", scope: !1283, file: !1283, line: 444, type: !2577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!107, !77, !107, !110}
!2579 = !DISubprogram(name: "fcntl", scope: !2580, file: !2580, line: 149, type: !2581, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2580 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2581 = !DISubroutineType(types: !2582)
!2582 = !{!77, !77, !77, null}
!2583 = distinct !DISubprogram(name: "error", scope: !704, file: !704, line: 285, type: !2584, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2586)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{null, !77, !77, !113, null}
!2586 = !{!2587, !2588, !2589, !2590}
!2587 = !DILocalVariable(name: "status", arg: 1, scope: !2583, file: !704, line: 285, type: !77)
!2588 = !DILocalVariable(name: "errnum", arg: 2, scope: !2583, file: !704, line: 285, type: !77)
!2589 = !DILocalVariable(name: "message", arg: 3, scope: !2583, file: !704, line: 285, type: !113)
!2590 = !DILocalVariable(name: "ap", scope: !2583, file: !704, line: 287, type: !2591)
!2591 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1158, line: 52, baseType: !2592)
!2592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2593, line: 12, baseType: !2594)
!2593 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!2594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !704, baseType: !2595)
!2595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 192, elements: !50)
!2596 = distinct !DIAssignID()
!2597 = !DILocation(line: 0, scope: !2583)
!2598 = !DILocation(line: 287, column: 3, scope: !2583)
!2599 = !DILocation(line: 288, column: 3, scope: !2583)
!2600 = !DILocation(line: 289, column: 3, scope: !2583)
!2601 = !DILocation(line: 290, column: 3, scope: !2583)
!2602 = !DILocation(line: 291, column: 1, scope: !2583)
!2603 = !DILocation(line: 0, scope: !711)
!2604 = !DILocation(line: 302, column: 7, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !711, file: !704, line: 302, column: 7)
!2606 = !DILocation(line: 302, column: 7, scope: !711)
!2607 = !DILocation(line: 307, column: 11, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2609, file: !704, line: 307, column: 11)
!2609 = distinct !DILexicalBlock(scope: !2605, file: !704, line: 303, column: 5)
!2610 = !DILocation(line: 307, column: 27, scope: !2608)
!2611 = !DILocation(line: 308, column: 11, scope: !2608)
!2612 = !DILocation(line: 308, column: 28, scope: !2608)
!2613 = !DILocation(line: 308, column: 25, scope: !2608)
!2614 = !DILocation(line: 309, column: 15, scope: !2608)
!2615 = !DILocation(line: 309, column: 33, scope: !2608)
!2616 = !DILocation(line: 310, column: 19, scope: !2608)
!2617 = !DILocation(line: 311, column: 22, scope: !2608)
!2618 = !DILocation(line: 311, column: 56, scope: !2608)
!2619 = !DILocation(line: 307, column: 11, scope: !2609)
!2620 = !DILocation(line: 316, column: 21, scope: !2609)
!2621 = !DILocation(line: 317, column: 23, scope: !2609)
!2622 = !DILocation(line: 318, column: 5, scope: !2609)
!2623 = !DILocation(line: 327, column: 3, scope: !711)
!2624 = !DILocation(line: 331, column: 7, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !711, file: !704, line: 331, column: 7)
!2626 = !DILocation(line: 331, column: 7, scope: !711)
!2627 = !DILocation(line: 332, column: 5, scope: !2625)
!2628 = !DILocation(line: 338, column: 7, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2625, file: !704, line: 334, column: 5)
!2630 = !DILocation(line: 346, column: 3, scope: !711)
!2631 = !DILocation(line: 350, column: 3, scope: !711)
!2632 = !DILocation(line: 356, column: 1, scope: !711)
!2633 = distinct !DISubprogram(name: "error_at_line", scope: !704, file: !704, line: 359, type: !2634, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !703, retainedNodes: !2636)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{null, !77, !77, !113, !72, !113, null}
!2636 = !{!2637, !2638, !2639, !2640, !2641, !2642}
!2637 = !DILocalVariable(name: "status", arg: 1, scope: !2633, file: !704, line: 359, type: !77)
!2638 = !DILocalVariable(name: "errnum", arg: 2, scope: !2633, file: !704, line: 359, type: !77)
!2639 = !DILocalVariable(name: "file_name", arg: 3, scope: !2633, file: !704, line: 359, type: !113)
!2640 = !DILocalVariable(name: "line_number", arg: 4, scope: !2633, file: !704, line: 360, type: !72)
!2641 = !DILocalVariable(name: "message", arg: 5, scope: !2633, file: !704, line: 360, type: !113)
!2642 = !DILocalVariable(name: "ap", scope: !2633, file: !704, line: 362, type: !2591)
!2643 = distinct !DIAssignID()
!2644 = !DILocation(line: 0, scope: !2633)
!2645 = !DILocation(line: 362, column: 3, scope: !2633)
!2646 = !DILocation(line: 363, column: 3, scope: !2633)
!2647 = !DILocation(line: 364, column: 3, scope: !2633)
!2648 = !DILocation(line: 366, column: 3, scope: !2633)
!2649 = !DILocation(line: 367, column: 1, scope: !2633)
!2650 = distinct !DISubprogram(name: "fdadvise", scope: !1003, file: !1003, line: 25, type: !2651, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !2655)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{null, !77, !2653, !2653, !2654}
!2653 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1158, line: 63, baseType: !193)
!2654 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !1006, line: 51, baseType: !1005)
!2655 = !{!2656, !2657, !2658, !2659}
!2656 = !DILocalVariable(name: "fd", arg: 1, scope: !2650, file: !1003, line: 25, type: !77)
!2657 = !DILocalVariable(name: "offset", arg: 2, scope: !2650, file: !1003, line: 25, type: !2653)
!2658 = !DILocalVariable(name: "len", arg: 3, scope: !2650, file: !1003, line: 25, type: !2653)
!2659 = !DILocalVariable(name: "advice", arg: 4, scope: !2650, file: !1003, line: 25, type: !2654)
!2660 = !DILocation(line: 0, scope: !2650)
!2661 = !DILocation(line: 28, column: 3, scope: !2650)
!2662 = !DILocation(line: 30, column: 1, scope: !2650)
!2663 = !DISubprogram(name: "posix_fadvise", scope: !2580, file: !2580, line: 273, type: !2664, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!77, !77, !2653, !2653, !77}
!2666 = distinct !DISubprogram(name: "fadvise", scope: !1003, file: !1003, line: 33, type: !2667, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !2703)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{null, !2669, !2654}
!2669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2670, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !2671)
!2671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !2672)
!2672 = !{!2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702}
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2671, file: !171, line: 51, baseType: !77, size: 32)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2671, file: !171, line: 54, baseType: !107, size: 64, offset: 64)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2671, file: !171, line: 55, baseType: !107, size: 64, offset: 128)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2671, file: !171, line: 56, baseType: !107, size: 64, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2671, file: !171, line: 57, baseType: !107, size: 64, offset: 256)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2671, file: !171, line: 58, baseType: !107, size: 64, offset: 320)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2671, file: !171, line: 59, baseType: !107, size: 64, offset: 384)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2671, file: !171, line: 60, baseType: !107, size: 64, offset: 448)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2671, file: !171, line: 61, baseType: !107, size: 64, offset: 512)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2671, file: !171, line: 64, baseType: !107, size: 64, offset: 576)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2671, file: !171, line: 65, baseType: !107, size: 64, offset: 640)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2671, file: !171, line: 66, baseType: !107, size: 64, offset: 704)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2671, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2671, file: !171, line: 70, baseType: !2687, size: 64, offset: 832)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2671, file: !171, line: 72, baseType: !77, size: 32, offset: 896)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2671, file: !171, line: 73, baseType: !77, size: 32, offset: 928)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2671, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2671, file: !171, line: 77, baseType: !109, size: 16, offset: 1024)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2671, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2671, file: !171, line: 79, baseType: !49, size: 8, offset: 1048)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2671, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2671, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2671, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2671, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2671, file: !171, line: 93, baseType: !2687, size: 64, offset: 1344)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2671, file: !171, line: 94, baseType: !108, size: 64, offset: 1408)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2671, file: !171, line: 95, baseType: !110, size: 64, offset: 1472)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2671, file: !171, line: 96, baseType: !77, size: 32, offset: 1536)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2671, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!2703 = !{!2704, !2705}
!2704 = !DILocalVariable(name: "fp", arg: 1, scope: !2666, file: !1003, line: 33, type: !2669)
!2705 = !DILocalVariable(name: "advice", arg: 2, scope: !2666, file: !1003, line: 33, type: !2654)
!2706 = !DILocation(line: 0, scope: !2666)
!2707 = !DILocation(line: 35, column: 7, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2666, file: !1003, line: 35, column: 7)
!2709 = !DILocation(line: 35, column: 7, scope: !2666)
!2710 = !DILocation(line: 36, column: 15, scope: !2708)
!2711 = !DILocation(line: 0, scope: !2650, inlinedAt: !2712)
!2712 = distinct !DILocation(line: 36, column: 5, scope: !2708)
!2713 = !DILocation(line: 28, column: 3, scope: !2650, inlinedAt: !2712)
!2714 = !DILocation(line: 36, column: 5, scope: !2708)
!2715 = !DILocation(line: 37, column: 1, scope: !2666)
!2716 = !DISubprogram(name: "fileno", scope: !1158, file: !1158, line: 809, type: !2717, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!77, !2669}
!2719 = distinct !DISubprogram(name: "rpl_fclose", scope: !1008, file: !1008, line: 58, type: !2720, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1007, retainedNodes: !2756)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!77, !2722}
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !2724)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !2725)
!2725 = !{!2726, !2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2724, file: !171, line: 51, baseType: !77, size: 32)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2724, file: !171, line: 54, baseType: !107, size: 64, offset: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2724, file: !171, line: 55, baseType: !107, size: 64, offset: 128)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2724, file: !171, line: 56, baseType: !107, size: 64, offset: 192)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2724, file: !171, line: 57, baseType: !107, size: 64, offset: 256)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2724, file: !171, line: 58, baseType: !107, size: 64, offset: 320)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2724, file: !171, line: 59, baseType: !107, size: 64, offset: 384)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2724, file: !171, line: 60, baseType: !107, size: 64, offset: 448)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2724, file: !171, line: 61, baseType: !107, size: 64, offset: 512)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2724, file: !171, line: 64, baseType: !107, size: 64, offset: 576)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2724, file: !171, line: 65, baseType: !107, size: 64, offset: 640)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2724, file: !171, line: 66, baseType: !107, size: 64, offset: 704)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2724, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2724, file: !171, line: 70, baseType: !2740, size: 64, offset: 832)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2724, file: !171, line: 72, baseType: !77, size: 32, offset: 896)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2724, file: !171, line: 73, baseType: !77, size: 32, offset: 928)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2724, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2724, file: !171, line: 77, baseType: !109, size: 16, offset: 1024)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2724, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2724, file: !171, line: 79, baseType: !49, size: 8, offset: 1048)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2724, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2724, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2724, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2724, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2724, file: !171, line: 93, baseType: !2740, size: 64, offset: 1344)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2724, file: !171, line: 94, baseType: !108, size: 64, offset: 1408)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2724, file: !171, line: 95, baseType: !110, size: 64, offset: 1472)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2724, file: !171, line: 96, baseType: !77, size: 32, offset: 1536)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2724, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!2756 = !{!2757, !2758, !2759, !2760}
!2757 = !DILocalVariable(name: "fp", arg: 1, scope: !2719, file: !1008, line: 58, type: !2722)
!2758 = !DILocalVariable(name: "saved_errno", scope: !2719, file: !1008, line: 60, type: !77)
!2759 = !DILocalVariable(name: "fd", scope: !2719, file: !1008, line: 63, type: !77)
!2760 = !DILocalVariable(name: "result", scope: !2719, file: !1008, line: 74, type: !77)
!2761 = !DILocation(line: 0, scope: !2719)
!2762 = !DILocation(line: 63, column: 12, scope: !2719)
!2763 = !DILocation(line: 64, column: 10, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2719, file: !1008, line: 64, column: 7)
!2765 = !DILocation(line: 64, column: 7, scope: !2719)
!2766 = !DILocation(line: 65, column: 12, scope: !2764)
!2767 = !DILocation(line: 65, column: 5, scope: !2764)
!2768 = !DILocation(line: 70, column: 9, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2719, file: !1008, line: 70, column: 7)
!2770 = !DILocation(line: 70, column: 23, scope: !2769)
!2771 = !DILocation(line: 70, column: 33, scope: !2769)
!2772 = !DILocation(line: 70, column: 26, scope: !2769)
!2773 = !DILocation(line: 70, column: 59, scope: !2769)
!2774 = !DILocation(line: 71, column: 7, scope: !2769)
!2775 = !DILocation(line: 71, column: 10, scope: !2769)
!2776 = !DILocation(line: 70, column: 7, scope: !2719)
!2777 = !DILocation(line: 100, column: 12, scope: !2719)
!2778 = !DILocation(line: 105, column: 7, scope: !2719)
!2779 = !DILocation(line: 72, column: 19, scope: !2769)
!2780 = !DILocation(line: 105, column: 19, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2719, file: !1008, line: 105, column: 7)
!2782 = !DILocation(line: 107, column: 13, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2781, file: !1008, line: 106, column: 5)
!2784 = !DILocation(line: 109, column: 5, scope: !2783)
!2785 = !DILocation(line: 112, column: 1, scope: !2719)
!2786 = !DISubprogram(name: "fclose", scope: !1158, file: !1158, line: 178, type: !2720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2787 = !DISubprogram(name: "__freading", scope: !2788, file: !2788, line: 51, type: !2720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2788 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2789 = !DISubprogram(name: "lseek", scope: !2443, file: !2443, line: 339, type: !2790, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!193, !77, !193, !77}
!2792 = distinct !DISubprogram(name: "rpl_fflush", scope: !1010, file: !1010, line: 130, type: !2793, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1009, retainedNodes: !2829)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!77, !2795}
!2795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2796, size: 64)
!2796 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !2797)
!2797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !2798)
!2798 = !{!2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2797, file: !171, line: 51, baseType: !77, size: 32)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2797, file: !171, line: 54, baseType: !107, size: 64, offset: 64)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2797, file: !171, line: 55, baseType: !107, size: 64, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2797, file: !171, line: 56, baseType: !107, size: 64, offset: 192)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2797, file: !171, line: 57, baseType: !107, size: 64, offset: 256)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2797, file: !171, line: 58, baseType: !107, size: 64, offset: 320)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2797, file: !171, line: 59, baseType: !107, size: 64, offset: 384)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2797, file: !171, line: 60, baseType: !107, size: 64, offset: 448)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2797, file: !171, line: 61, baseType: !107, size: 64, offset: 512)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2797, file: !171, line: 64, baseType: !107, size: 64, offset: 576)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2797, file: !171, line: 65, baseType: !107, size: 64, offset: 640)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2797, file: !171, line: 66, baseType: !107, size: 64, offset: 704)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2797, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2797, file: !171, line: 70, baseType: !2813, size: 64, offset: 832)
!2813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2797, file: !171, line: 72, baseType: !77, size: 32, offset: 896)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2797, file: !171, line: 73, baseType: !77, size: 32, offset: 928)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2797, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2797, file: !171, line: 77, baseType: !109, size: 16, offset: 1024)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2797, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2797, file: !171, line: 79, baseType: !49, size: 8, offset: 1048)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2797, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2797, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2797, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2797, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2797, file: !171, line: 93, baseType: !2813, size: 64, offset: 1344)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2797, file: !171, line: 94, baseType: !108, size: 64, offset: 1408)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2797, file: !171, line: 95, baseType: !110, size: 64, offset: 1472)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2797, file: !171, line: 96, baseType: !77, size: 32, offset: 1536)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2797, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!2829 = !{!2830}
!2830 = !DILocalVariable(name: "stream", arg: 1, scope: !2792, file: !1010, line: 130, type: !2795)
!2831 = !DILocation(line: 0, scope: !2792)
!2832 = !DILocation(line: 151, column: 14, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2792, file: !1010, line: 151, column: 7)
!2834 = !DILocation(line: 151, column: 22, scope: !2833)
!2835 = !DILocation(line: 151, column: 27, scope: !2833)
!2836 = !DILocation(line: 151, column: 7, scope: !2792)
!2837 = !DILocation(line: 152, column: 12, scope: !2833)
!2838 = !DILocation(line: 152, column: 5, scope: !2833)
!2839 = !DILocalVariable(name: "fp", arg: 1, scope: !2840, file: !1010, line: 42, type: !2795)
!2840 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1010, file: !1010, line: 42, type: !2841, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1009, retainedNodes: !2843)
!2841 = !DISubroutineType(types: !2842)
!2842 = !{null, !2795}
!2843 = !{!2839}
!2844 = !DILocation(line: 0, scope: !2840, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 157, column: 3, scope: !2792)
!2846 = !DILocation(line: 44, column: 12, scope: !2847, inlinedAt: !2845)
!2847 = distinct !DILexicalBlock(scope: !2840, file: !1010, line: 44, column: 7)
!2848 = !DILocation(line: 44, column: 19, scope: !2847, inlinedAt: !2845)
!2849 = !DILocation(line: 44, column: 7, scope: !2840, inlinedAt: !2845)
!2850 = !DILocation(line: 46, column: 5, scope: !2847, inlinedAt: !2845)
!2851 = !DILocation(line: 159, column: 10, scope: !2792)
!2852 = !DILocation(line: 159, column: 3, scope: !2792)
!2853 = !DILocation(line: 236, column: 1, scope: !2792)
!2854 = !DISubprogram(name: "fflush", scope: !1158, file: !1158, line: 230, type: !2793, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2855 = distinct !DISubprogram(name: "fpurge", scope: !1013, file: !1013, line: 32, type: !2856, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1012, retainedNodes: !2892)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!77, !2858}
!2858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2859, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !2860)
!2860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !2861)
!2861 = !{!2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891}
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2860, file: !171, line: 51, baseType: !77, size: 32)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2860, file: !171, line: 54, baseType: !107, size: 64, offset: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2860, file: !171, line: 55, baseType: !107, size: 64, offset: 128)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2860, file: !171, line: 56, baseType: !107, size: 64, offset: 192)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2860, file: !171, line: 57, baseType: !107, size: 64, offset: 256)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2860, file: !171, line: 58, baseType: !107, size: 64, offset: 320)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2860, file: !171, line: 59, baseType: !107, size: 64, offset: 384)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2860, file: !171, line: 60, baseType: !107, size: 64, offset: 448)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2860, file: !171, line: 61, baseType: !107, size: 64, offset: 512)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2860, file: !171, line: 64, baseType: !107, size: 64, offset: 576)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2860, file: !171, line: 65, baseType: !107, size: 64, offset: 640)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2860, file: !171, line: 66, baseType: !107, size: 64, offset: 704)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2860, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2860, file: !171, line: 70, baseType: !2876, size: 64, offset: 832)
!2876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2860, size: 64)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2860, file: !171, line: 72, baseType: !77, size: 32, offset: 896)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2860, file: !171, line: 73, baseType: !77, size: 32, offset: 928)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2860, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2860, file: !171, line: 77, baseType: !109, size: 16, offset: 1024)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2860, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2860, file: !171, line: 79, baseType: !49, size: 8, offset: 1048)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2860, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2860, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2860, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2860, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2860, file: !171, line: 93, baseType: !2876, size: 64, offset: 1344)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2860, file: !171, line: 94, baseType: !108, size: 64, offset: 1408)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2860, file: !171, line: 95, baseType: !110, size: 64, offset: 1472)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2860, file: !171, line: 96, baseType: !77, size: 32, offset: 1536)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2860, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!2892 = !{!2893}
!2893 = !DILocalVariable(name: "fp", arg: 1, scope: !2855, file: !1013, line: 32, type: !2858)
!2894 = !DILocation(line: 0, scope: !2855)
!2895 = !DILocation(line: 36, column: 3, scope: !2855)
!2896 = !DILocation(line: 38, column: 3, scope: !2855)
!2897 = !DISubprogram(name: "__fpurge", scope: !2788, file: !2788, line: 72, type: !2898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{null, !2858}
!2900 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1015, file: !1015, line: 28, type: !2901, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1014, retainedNodes: !2937)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!77, !2903, !2653, !77}
!2903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2904, size: 64)
!2904 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !2905)
!2905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !2906)
!2906 = !{!2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936}
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2905, file: !171, line: 51, baseType: !77, size: 32)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2905, file: !171, line: 54, baseType: !107, size: 64, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2905, file: !171, line: 55, baseType: !107, size: 64, offset: 128)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2905, file: !171, line: 56, baseType: !107, size: 64, offset: 192)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2905, file: !171, line: 57, baseType: !107, size: 64, offset: 256)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2905, file: !171, line: 58, baseType: !107, size: 64, offset: 320)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2905, file: !171, line: 59, baseType: !107, size: 64, offset: 384)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2905, file: !171, line: 60, baseType: !107, size: 64, offset: 448)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2905, file: !171, line: 61, baseType: !107, size: 64, offset: 512)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2905, file: !171, line: 64, baseType: !107, size: 64, offset: 576)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2905, file: !171, line: 65, baseType: !107, size: 64, offset: 640)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2905, file: !171, line: 66, baseType: !107, size: 64, offset: 704)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2905, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2905, file: !171, line: 70, baseType: !2921, size: 64, offset: 832)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2905, size: 64)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2905, file: !171, line: 72, baseType: !77, size: 32, offset: 896)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2905, file: !171, line: 73, baseType: !77, size: 32, offset: 928)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2905, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2905, file: !171, line: 77, baseType: !109, size: 16, offset: 1024)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2905, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2905, file: !171, line: 79, baseType: !49, size: 8, offset: 1048)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2905, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2905, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2905, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2905, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2905, file: !171, line: 93, baseType: !2921, size: 64, offset: 1344)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2905, file: !171, line: 94, baseType: !108, size: 64, offset: 1408)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2905, file: !171, line: 95, baseType: !110, size: 64, offset: 1472)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2905, file: !171, line: 96, baseType: !77, size: 32, offset: 1536)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2905, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!2937 = !{!2938, !2939, !2940, !2941}
!2938 = !DILocalVariable(name: "fp", arg: 1, scope: !2900, file: !1015, line: 28, type: !2903)
!2939 = !DILocalVariable(name: "offset", arg: 2, scope: !2900, file: !1015, line: 28, type: !2653)
!2940 = !DILocalVariable(name: "whence", arg: 3, scope: !2900, file: !1015, line: 28, type: !77)
!2941 = !DILocalVariable(name: "pos", scope: !2942, file: !1015, line: 123, type: !2653)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !1015, line: 119, column: 5)
!2943 = distinct !DILexicalBlock(scope: !2900, file: !1015, line: 55, column: 7)
!2944 = !DILocation(line: 0, scope: !2900)
!2945 = !DILocation(line: 55, column: 12, scope: !2943)
!2946 = !{!1431, !1093, i64 16}
!2947 = !DILocation(line: 55, column: 33, scope: !2943)
!2948 = !{!1431, !1093, i64 8}
!2949 = !DILocation(line: 55, column: 25, scope: !2943)
!2950 = !DILocation(line: 56, column: 7, scope: !2943)
!2951 = !DILocation(line: 56, column: 15, scope: !2943)
!2952 = !DILocation(line: 56, column: 37, scope: !2943)
!2953 = !{!1431, !1093, i64 32}
!2954 = !DILocation(line: 56, column: 29, scope: !2943)
!2955 = !DILocation(line: 57, column: 7, scope: !2943)
!2956 = !DILocation(line: 57, column: 15, scope: !2943)
!2957 = !{!1431, !1093, i64 72}
!2958 = !DILocation(line: 57, column: 29, scope: !2943)
!2959 = !DILocation(line: 55, column: 7, scope: !2900)
!2960 = !DILocation(line: 123, column: 26, scope: !2942)
!2961 = !DILocation(line: 123, column: 19, scope: !2942)
!2962 = !DILocation(line: 0, scope: !2942)
!2963 = !DILocation(line: 124, column: 15, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2942, file: !1015, line: 124, column: 11)
!2965 = !DILocation(line: 124, column: 11, scope: !2942)
!2966 = !DILocation(line: 135, column: 19, scope: !2942)
!2967 = !DILocation(line: 136, column: 12, scope: !2942)
!2968 = !DILocation(line: 136, column: 20, scope: !2942)
!2969 = !{!1431, !1397, i64 144}
!2970 = !DILocation(line: 167, column: 7, scope: !2942)
!2971 = !DILocation(line: 169, column: 10, scope: !2900)
!2972 = !DILocation(line: 169, column: 3, scope: !2900)
!2973 = !DILocation(line: 170, column: 1, scope: !2900)
!2974 = !DISubprogram(name: "fseeko", scope: !1158, file: !1158, line: 736, type: !2975, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!77, !2903, !193, !77}
!2977 = distinct !DISubprogram(name: "getprogname", scope: !1017, file: !1017, line: 54, type: !2978, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1016)
!2978 = !DISubroutineType(types: !2979)
!2979 = !{!113}
!2980 = !DILocation(line: 58, column: 10, scope: !2977)
!2981 = !DILocation(line: 58, column: 3, scope: !2977)
!2982 = distinct !DISubprogram(name: "set_program_name", scope: !750, file: !750, line: 37, type: !1113, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !749, retainedNodes: !2983)
!2983 = !{!2984, !2985, !2986}
!2984 = !DILocalVariable(name: "argv0", arg: 1, scope: !2982, file: !750, line: 37, type: !113)
!2985 = !DILocalVariable(name: "slash", scope: !2982, file: !750, line: 44, type: !113)
!2986 = !DILocalVariable(name: "base", scope: !2982, file: !750, line: 45, type: !113)
!2987 = !DILocation(line: 0, scope: !2982)
!2988 = !DILocation(line: 44, column: 23, scope: !2982)
!2989 = !DILocation(line: 45, column: 22, scope: !2982)
!2990 = !DILocation(line: 46, column: 17, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2982, file: !750, line: 46, column: 7)
!2992 = !DILocation(line: 46, column: 9, scope: !2991)
!2993 = !DILocation(line: 46, column: 25, scope: !2991)
!2994 = !DILocation(line: 46, column: 40, scope: !2991)
!2995 = !DILocalVariable(name: "__s1", arg: 1, scope: !2996, file: !1176, line: 974, type: !1311)
!2996 = distinct !DISubprogram(name: "memeq", scope: !1176, file: !1176, line: 974, type: !2997, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !749, retainedNodes: !2999)
!2997 = !DISubroutineType(types: !2998)
!2998 = !{!154, !1311, !1311, !110}
!2999 = !{!2995, !3000, !3001}
!3000 = !DILocalVariable(name: "__s2", arg: 2, scope: !2996, file: !1176, line: 974, type: !1311)
!3001 = !DILocalVariable(name: "__n", arg: 3, scope: !2996, file: !1176, line: 974, type: !110)
!3002 = !DILocation(line: 0, scope: !2996, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 46, column: 28, scope: !2991)
!3004 = !DILocation(line: 976, column: 11, scope: !2996, inlinedAt: !3003)
!3005 = !DILocation(line: 976, column: 10, scope: !2996, inlinedAt: !3003)
!3006 = !DILocation(line: 46, column: 7, scope: !2982)
!3007 = !DILocation(line: 49, column: 11, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3009, file: !750, line: 49, column: 11)
!3009 = distinct !DILexicalBlock(scope: !2991, file: !750, line: 47, column: 5)
!3010 = !DILocation(line: 49, column: 36, scope: !3008)
!3011 = !DILocation(line: 49, column: 11, scope: !3009)
!3012 = !DILocation(line: 65, column: 16, scope: !2982)
!3013 = !DILocation(line: 71, column: 27, scope: !2982)
!3014 = !DILocation(line: 74, column: 33, scope: !2982)
!3015 = !DILocation(line: 76, column: 1, scope: !2982)
!3016 = !DISubprogram(name: "strrchr", scope: !1283, file: !1283, line: 273, type: !1298, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3017 = distinct !DIAssignID()
!3018 = !DILocation(line: 0, scope: !759)
!3019 = distinct !DIAssignID()
!3020 = !DILocation(line: 40, column: 29, scope: !759)
!3021 = !DILocation(line: 41, column: 19, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !759, file: !760, line: 41, column: 7)
!3023 = !DILocation(line: 41, column: 7, scope: !759)
!3024 = !DILocation(line: 47, column: 3, scope: !759)
!3025 = !DILocation(line: 48, column: 3, scope: !759)
!3026 = !DILocalVariable(name: "ps", arg: 1, scope: !3027, file: !3028, line: 1135, type: !3031)
!3027 = distinct !DISubprogram(name: "mbszero", scope: !3028, file: !3028, line: 1135, type: !3029, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3032)
!3028 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!3029 = !DISubroutineType(types: !3030)
!3030 = !{null, !3031}
!3031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!3032 = !{!3026}
!3033 = !DILocation(line: 0, scope: !3027, inlinedAt: !3034)
!3034 = distinct !DILocation(line: 48, column: 18, scope: !759)
!3035 = !DILocalVariable(name: "__dest", arg: 1, scope: !3036, file: !1441, line: 57, type: !108)
!3036 = distinct !DISubprogram(name: "memset", scope: !1441, file: !1441, line: 57, type: !3037, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!108, !108, !77, !110}
!3039 = !{!3035, !3040, !3041}
!3040 = !DILocalVariable(name: "__ch", arg: 2, scope: !3036, file: !1441, line: 57, type: !77)
!3041 = !DILocalVariable(name: "__len", arg: 3, scope: !3036, file: !1441, line: 57, type: !110)
!3042 = !DILocation(line: 0, scope: !3036, inlinedAt: !3043)
!3043 = distinct !DILocation(line: 1137, column: 3, scope: !3027, inlinedAt: !3034)
!3044 = !DILocation(line: 59, column: 10, scope: !3036, inlinedAt: !3043)
!3045 = !DILocation(line: 49, column: 7, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !759, file: !760, line: 49, column: 7)
!3047 = !DILocation(line: 49, column: 39, scope: !3046)
!3048 = !DILocation(line: 49, column: 44, scope: !3046)
!3049 = !DILocation(line: 54, column: 1, scope: !759)
!3050 = distinct !DISubprogram(name: "clone_quoting_options", scope: !786, file: !786, line: 113, type: !3051, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3054)
!3051 = !DISubroutineType(types: !3052)
!3052 = !{!3053, !3053}
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!3054 = !{!3055, !3056, !3057}
!3055 = !DILocalVariable(name: "o", arg: 1, scope: !3050, file: !786, line: 113, type: !3053)
!3056 = !DILocalVariable(name: "saved_errno", scope: !3050, file: !786, line: 115, type: !77)
!3057 = !DILocalVariable(name: "p", scope: !3050, file: !786, line: 116, type: !3053)
!3058 = !DILocation(line: 0, scope: !3050)
!3059 = !DILocation(line: 115, column: 21, scope: !3050)
!3060 = !DILocation(line: 116, column: 40, scope: !3050)
!3061 = !DILocation(line: 116, column: 31, scope: !3050)
!3062 = !DILocation(line: 118, column: 9, scope: !3050)
!3063 = !DILocation(line: 119, column: 3, scope: !3050)
!3064 = distinct !DISubprogram(name: "get_quoting_style", scope: !786, file: !786, line: 124, type: !3065, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3069)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!812, !3067}
!3067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3068, size: 64)
!3068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!3069 = !{!3070}
!3070 = !DILocalVariable(name: "o", arg: 1, scope: !3064, file: !786, line: 124, type: !3067)
!3071 = !DILocation(line: 0, scope: !3064)
!3072 = !DILocation(line: 126, column: 11, scope: !3064)
!3073 = !DILocation(line: 126, column: 46, scope: !3064)
!3074 = !{!3075, !1164, i64 0}
!3075 = !{!"quoting_options", !1164, i64 0, !1164, i64 4, !1094, i64 8, !1093, i64 40, !1093, i64 48}
!3076 = !DILocation(line: 126, column: 3, scope: !3064)
!3077 = distinct !DISubprogram(name: "set_quoting_style", scope: !786, file: !786, line: 132, type: !3078, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3080)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{null, !3053, !812}
!3080 = !{!3081, !3082}
!3081 = !DILocalVariable(name: "o", arg: 1, scope: !3077, file: !786, line: 132, type: !3053)
!3082 = !DILocalVariable(name: "s", arg: 2, scope: !3077, file: !786, line: 132, type: !812)
!3083 = !DILocation(line: 0, scope: !3077)
!3084 = !DILocation(line: 134, column: 4, scope: !3077)
!3085 = !DILocation(line: 134, column: 45, scope: !3077)
!3086 = !DILocation(line: 135, column: 1, scope: !3077)
!3087 = distinct !DISubprogram(name: "set_char_quoting", scope: !786, file: !786, line: 143, type: !3088, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3090)
!3088 = !DISubroutineType(types: !3089)
!3089 = !{!77, !3053, !4, !77}
!3090 = !{!3091, !3092, !3093, !3094, !3095, !3097, !3098}
!3091 = !DILocalVariable(name: "o", arg: 1, scope: !3087, file: !786, line: 143, type: !3053)
!3092 = !DILocalVariable(name: "c", arg: 2, scope: !3087, file: !786, line: 143, type: !4)
!3093 = !DILocalVariable(name: "i", arg: 3, scope: !3087, file: !786, line: 143, type: !77)
!3094 = !DILocalVariable(name: "uc", scope: !3087, file: !786, line: 145, type: !115)
!3095 = !DILocalVariable(name: "p", scope: !3087, file: !786, line: 146, type: !3096)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!3097 = !DILocalVariable(name: "shift", scope: !3087, file: !786, line: 148, type: !77)
!3098 = !DILocalVariable(name: "r", scope: !3087, file: !786, line: 149, type: !72)
!3099 = !DILocation(line: 0, scope: !3087)
!3100 = !DILocation(line: 147, column: 6, scope: !3087)
!3101 = !DILocation(line: 147, column: 41, scope: !3087)
!3102 = !DILocation(line: 147, column: 62, scope: !3087)
!3103 = !DILocation(line: 147, column: 57, scope: !3087)
!3104 = !DILocation(line: 148, column: 15, scope: !3087)
!3105 = !DILocation(line: 149, column: 21, scope: !3087)
!3106 = !DILocation(line: 149, column: 24, scope: !3087)
!3107 = !DILocation(line: 149, column: 34, scope: !3087)
!3108 = !DILocation(line: 150, column: 19, scope: !3087)
!3109 = !DILocation(line: 150, column: 24, scope: !3087)
!3110 = !DILocation(line: 150, column: 6, scope: !3087)
!3111 = !DILocation(line: 151, column: 3, scope: !3087)
!3112 = distinct !DISubprogram(name: "set_quoting_flags", scope: !786, file: !786, line: 159, type: !3113, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3115)
!3113 = !DISubroutineType(types: !3114)
!3114 = !{!77, !3053, !77}
!3115 = !{!3116, !3117, !3118}
!3116 = !DILocalVariable(name: "o", arg: 1, scope: !3112, file: !786, line: 159, type: !3053)
!3117 = !DILocalVariable(name: "i", arg: 2, scope: !3112, file: !786, line: 159, type: !77)
!3118 = !DILocalVariable(name: "r", scope: !3112, file: !786, line: 163, type: !77)
!3119 = !DILocation(line: 0, scope: !3112)
!3120 = !DILocation(line: 161, column: 8, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3112, file: !786, line: 161, column: 7)
!3122 = !DILocation(line: 161, column: 7, scope: !3112)
!3123 = !DILocation(line: 163, column: 14, scope: !3112)
!3124 = !{!3075, !1164, i64 4}
!3125 = !DILocation(line: 164, column: 12, scope: !3112)
!3126 = !DILocation(line: 165, column: 3, scope: !3112)
!3127 = distinct !DISubprogram(name: "set_custom_quoting", scope: !786, file: !786, line: 169, type: !3128, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3130)
!3128 = !DISubroutineType(types: !3129)
!3129 = !{null, !3053, !113, !113}
!3130 = !{!3131, !3132, !3133}
!3131 = !DILocalVariable(name: "o", arg: 1, scope: !3127, file: !786, line: 169, type: !3053)
!3132 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3127, file: !786, line: 170, type: !113)
!3133 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3127, file: !786, line: 170, type: !113)
!3134 = !DILocation(line: 0, scope: !3127)
!3135 = !DILocation(line: 172, column: 8, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3127, file: !786, line: 172, column: 7)
!3137 = !DILocation(line: 172, column: 7, scope: !3127)
!3138 = !DILocation(line: 174, column: 12, scope: !3127)
!3139 = !DILocation(line: 175, column: 8, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3127, file: !786, line: 175, column: 7)
!3141 = !DILocation(line: 175, column: 19, scope: !3140)
!3142 = !DILocation(line: 176, column: 5, scope: !3140)
!3143 = !DILocation(line: 177, column: 6, scope: !3127)
!3144 = !DILocation(line: 177, column: 17, scope: !3127)
!3145 = !{!3075, !1093, i64 40}
!3146 = !DILocation(line: 178, column: 6, scope: !3127)
!3147 = !DILocation(line: 178, column: 18, scope: !3127)
!3148 = !{!3075, !1093, i64 48}
!3149 = !DILocation(line: 179, column: 1, scope: !3127)
!3150 = !DISubprogram(name: "abort", scope: !1287, file: !1287, line: 598, type: !356, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3151 = distinct !DISubprogram(name: "quotearg_buffer", scope: !786, file: !786, line: 774, type: !3152, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3154)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!110, !107, !110, !113, !110, !3067}
!3154 = !{!3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162}
!3155 = !DILocalVariable(name: "buffer", arg: 1, scope: !3151, file: !786, line: 774, type: !107)
!3156 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3151, file: !786, line: 774, type: !110)
!3157 = !DILocalVariable(name: "arg", arg: 3, scope: !3151, file: !786, line: 775, type: !113)
!3158 = !DILocalVariable(name: "argsize", arg: 4, scope: !3151, file: !786, line: 775, type: !110)
!3159 = !DILocalVariable(name: "o", arg: 5, scope: !3151, file: !786, line: 776, type: !3067)
!3160 = !DILocalVariable(name: "p", scope: !3151, file: !786, line: 778, type: !3067)
!3161 = !DILocalVariable(name: "saved_errno", scope: !3151, file: !786, line: 779, type: !77)
!3162 = !DILocalVariable(name: "r", scope: !3151, file: !786, line: 780, type: !110)
!3163 = !DILocation(line: 0, scope: !3151)
!3164 = !DILocation(line: 778, column: 37, scope: !3151)
!3165 = !DILocation(line: 779, column: 21, scope: !3151)
!3166 = !DILocation(line: 781, column: 43, scope: !3151)
!3167 = !DILocation(line: 781, column: 53, scope: !3151)
!3168 = !DILocation(line: 781, column: 63, scope: !3151)
!3169 = !DILocation(line: 782, column: 43, scope: !3151)
!3170 = !DILocation(line: 782, column: 58, scope: !3151)
!3171 = !DILocation(line: 780, column: 14, scope: !3151)
!3172 = !DILocation(line: 783, column: 9, scope: !3151)
!3173 = !DILocation(line: 784, column: 3, scope: !3151)
!3174 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !786, file: !786, line: 251, type: !3175, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3179)
!3175 = !DISubroutineType(types: !3176)
!3176 = !{!110, !107, !110, !113, !110, !812, !77, !3177, !113, !113}
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3178, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!3179 = !{!3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3205, !3207, !3210, !3211, !3212, !3213, !3216, !3217, !3219, !3220, !3223, !3227, !3228, !3236, !3239, !3240, !3241}
!3180 = !DILocalVariable(name: "buffer", arg: 1, scope: !3174, file: !786, line: 251, type: !107)
!3181 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3174, file: !786, line: 251, type: !110)
!3182 = !DILocalVariable(name: "arg", arg: 3, scope: !3174, file: !786, line: 252, type: !113)
!3183 = !DILocalVariable(name: "argsize", arg: 4, scope: !3174, file: !786, line: 252, type: !110)
!3184 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3174, file: !786, line: 253, type: !812)
!3185 = !DILocalVariable(name: "flags", arg: 6, scope: !3174, file: !786, line: 253, type: !77)
!3186 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3174, file: !786, line: 254, type: !3177)
!3187 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3174, file: !786, line: 255, type: !113)
!3188 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3174, file: !786, line: 256, type: !113)
!3189 = !DILocalVariable(name: "unibyte_locale", scope: !3174, file: !786, line: 258, type: !154)
!3190 = !DILocalVariable(name: "len", scope: !3174, file: !786, line: 260, type: !110)
!3191 = !DILocalVariable(name: "orig_buffersize", scope: !3174, file: !786, line: 261, type: !110)
!3192 = !DILocalVariable(name: "quote_string", scope: !3174, file: !786, line: 262, type: !113)
!3193 = !DILocalVariable(name: "quote_string_len", scope: !3174, file: !786, line: 263, type: !110)
!3194 = !DILocalVariable(name: "backslash_escapes", scope: !3174, file: !786, line: 264, type: !154)
!3195 = !DILocalVariable(name: "elide_outer_quotes", scope: !3174, file: !786, line: 265, type: !154)
!3196 = !DILocalVariable(name: "encountered_single_quote", scope: !3174, file: !786, line: 266, type: !154)
!3197 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3174, file: !786, line: 267, type: !154)
!3198 = !DILabel(scope: !3174, name: "process_input", file: !786, line: 308)
!3199 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3174, file: !786, line: 309, type: !154)
!3200 = !DILocalVariable(name: "lq", scope: !3201, file: !786, line: 361, type: !113)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !786, line: 361, column: 11)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !786, line: 360, column: 13)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !786, line: 333, column: 7)
!3204 = distinct !DILexicalBlock(scope: !3174, file: !786, line: 312, column: 5)
!3205 = !DILocalVariable(name: "i", scope: !3206, file: !786, line: 395, type: !110)
!3206 = distinct !DILexicalBlock(scope: !3174, file: !786, line: 395, column: 3)
!3207 = !DILocalVariable(name: "is_right_quote", scope: !3208, file: !786, line: 397, type: !154)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !786, line: 396, column: 5)
!3209 = distinct !DILexicalBlock(scope: !3206, file: !786, line: 395, column: 3)
!3210 = !DILocalVariable(name: "escaping", scope: !3208, file: !786, line: 398, type: !154)
!3211 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3208, file: !786, line: 399, type: !154)
!3212 = !DILocalVariable(name: "c", scope: !3208, file: !786, line: 417, type: !115)
!3213 = !DILabel(scope: !3214, name: "c_and_shell_escape", file: !786, line: 502)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !786, line: 478, column: 9)
!3215 = distinct !DILexicalBlock(scope: !3208, file: !786, line: 419, column: 9)
!3216 = !DILabel(scope: !3214, name: "c_escape", file: !786, line: 507)
!3217 = !DILocalVariable(name: "m", scope: !3218, file: !786, line: 598, type: !110)
!3218 = distinct !DILexicalBlock(scope: !3215, file: !786, line: 596, column: 11)
!3219 = !DILocalVariable(name: "printable", scope: !3218, file: !786, line: 600, type: !154)
!3220 = !DILocalVariable(name: "mbs", scope: !3221, file: !786, line: 609, type: !861)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !786, line: 608, column: 15)
!3222 = distinct !DILexicalBlock(scope: !3218, file: !786, line: 602, column: 17)
!3223 = !DILocalVariable(name: "w", scope: !3224, file: !786, line: 618, type: !381)
!3224 = distinct !DILexicalBlock(scope: !3225, file: !786, line: 617, column: 19)
!3225 = distinct !DILexicalBlock(scope: !3226, file: !786, line: 616, column: 17)
!3226 = distinct !DILexicalBlock(scope: !3221, file: !786, line: 616, column: 17)
!3227 = !DILocalVariable(name: "bytes", scope: !3224, file: !786, line: 619, type: !110)
!3228 = !DILocalVariable(name: "j", scope: !3229, file: !786, line: 648, type: !110)
!3229 = distinct !DILexicalBlock(scope: !3230, file: !786, line: 648, column: 29)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !786, line: 647, column: 27)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !786, line: 645, column: 29)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !786, line: 636, column: 23)
!3233 = distinct !DILexicalBlock(scope: !3234, file: !786, line: 628, column: 30)
!3234 = distinct !DILexicalBlock(scope: !3235, file: !786, line: 623, column: 30)
!3235 = distinct !DILexicalBlock(scope: !3224, file: !786, line: 621, column: 25)
!3236 = !DILocalVariable(name: "ilim", scope: !3237, file: !786, line: 674, type: !110)
!3237 = distinct !DILexicalBlock(scope: !3238, file: !786, line: 671, column: 15)
!3238 = distinct !DILexicalBlock(scope: !3218, file: !786, line: 670, column: 17)
!3239 = !DILabel(scope: !3208, name: "store_escape", file: !786, line: 709)
!3240 = !DILabel(scope: !3208, name: "store_c", file: !786, line: 712)
!3241 = !DILabel(scope: !3174, name: "force_outer_quoting_style", file: !786, line: 753)
!3242 = distinct !DIAssignID()
!3243 = distinct !DIAssignID()
!3244 = distinct !DIAssignID()
!3245 = distinct !DIAssignID()
!3246 = distinct !DIAssignID()
!3247 = !DILocation(line: 0, scope: !3221)
!3248 = distinct !DIAssignID()
!3249 = !DILocation(line: 0, scope: !3224)
!3250 = !DILocation(line: 0, scope: !3174)
!3251 = !DILocation(line: 258, column: 25, scope: !3174)
!3252 = !DILocation(line: 258, column: 36, scope: !3174)
!3253 = !DILocation(line: 265, column: 8, scope: !3174)
!3254 = !DILocation(line: 267, column: 3, scope: !3174)
!3255 = !DILocation(line: 261, column: 10, scope: !3174)
!3256 = !DILocation(line: 262, column: 15, scope: !3174)
!3257 = !DILocation(line: 263, column: 10, scope: !3174)
!3258 = !DILocation(line: 264, column: 8, scope: !3174)
!3259 = !DILocation(line: 266, column: 8, scope: !3174)
!3260 = !DILocation(line: 267, column: 8, scope: !3174)
!3261 = !DILocation(line: 308, column: 2, scope: !3174)
!3262 = !DILocation(line: 311, column: 3, scope: !3174)
!3263 = !DILocation(line: 318, column: 11, scope: !3204)
!3264 = !DILocation(line: 318, column: 12, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3204, file: !786, line: 318, column: 11)
!3266 = !DILocation(line: 319, column: 9, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3268, file: !786, line: 319, column: 9)
!3268 = distinct !DILexicalBlock(scope: !3265, file: !786, line: 319, column: 9)
!3269 = !DILocation(line: 319, column: 9, scope: !3268)
!3270 = !DILocation(line: 0, scope: !852, inlinedAt: !3271)
!3271 = distinct !DILocation(line: 357, column: 26, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !786, line: 335, column: 11)
!3273 = distinct !DILexicalBlock(scope: !3203, file: !786, line: 334, column: 13)
!3274 = !DILocation(line: 199, column: 29, scope: !852, inlinedAt: !3271)
!3275 = !DILocation(line: 201, column: 19, scope: !3276, inlinedAt: !3271)
!3276 = distinct !DILexicalBlock(scope: !852, file: !786, line: 201, column: 7)
!3277 = !DILocation(line: 201, column: 7, scope: !852, inlinedAt: !3271)
!3278 = !DILocation(line: 229, column: 3, scope: !852, inlinedAt: !3271)
!3279 = !DILocation(line: 230, column: 3, scope: !852, inlinedAt: !3271)
!3280 = !DILocalVariable(name: "ps", arg: 1, scope: !3281, file: !3028, line: 1135, type: !3284)
!3281 = distinct !DISubprogram(name: "mbszero", scope: !3028, file: !3028, line: 1135, type: !3282, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3285)
!3282 = !DISubroutineType(types: !3283)
!3283 = !{null, !3284}
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!3285 = !{!3280}
!3286 = !DILocation(line: 0, scope: !3281, inlinedAt: !3287)
!3287 = distinct !DILocation(line: 230, column: 18, scope: !852, inlinedAt: !3271)
!3288 = !DILocalVariable(name: "__dest", arg: 1, scope: !3289, file: !1441, line: 57, type: !108)
!3289 = distinct !DISubprogram(name: "memset", scope: !1441, file: !1441, line: 57, type: !3037, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3290)
!3290 = !{!3288, !3291, !3292}
!3291 = !DILocalVariable(name: "__ch", arg: 2, scope: !3289, file: !1441, line: 57, type: !77)
!3292 = !DILocalVariable(name: "__len", arg: 3, scope: !3289, file: !1441, line: 57, type: !110)
!3293 = !DILocation(line: 0, scope: !3289, inlinedAt: !3294)
!3294 = distinct !DILocation(line: 1137, column: 3, scope: !3281, inlinedAt: !3287)
!3295 = !DILocation(line: 59, column: 10, scope: !3289, inlinedAt: !3294)
!3296 = !DILocation(line: 231, column: 7, scope: !3297, inlinedAt: !3271)
!3297 = distinct !DILexicalBlock(scope: !852, file: !786, line: 231, column: 7)
!3298 = !DILocation(line: 231, column: 40, scope: !3297, inlinedAt: !3271)
!3299 = !DILocation(line: 231, column: 45, scope: !3297, inlinedAt: !3271)
!3300 = !DILocation(line: 235, column: 1, scope: !852, inlinedAt: !3271)
!3301 = !DILocation(line: 0, scope: !852, inlinedAt: !3302)
!3302 = distinct !DILocation(line: 358, column: 27, scope: !3272)
!3303 = !DILocation(line: 199, column: 29, scope: !852, inlinedAt: !3302)
!3304 = !DILocation(line: 201, column: 19, scope: !3276, inlinedAt: !3302)
!3305 = !DILocation(line: 201, column: 7, scope: !852, inlinedAt: !3302)
!3306 = !DILocation(line: 229, column: 3, scope: !852, inlinedAt: !3302)
!3307 = !DILocation(line: 230, column: 3, scope: !852, inlinedAt: !3302)
!3308 = !DILocation(line: 0, scope: !3281, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 230, column: 18, scope: !852, inlinedAt: !3302)
!3310 = !DILocation(line: 0, scope: !3289, inlinedAt: !3311)
!3311 = distinct !DILocation(line: 1137, column: 3, scope: !3281, inlinedAt: !3309)
!3312 = !DILocation(line: 59, column: 10, scope: !3289, inlinedAt: !3311)
!3313 = !DILocation(line: 231, column: 7, scope: !3297, inlinedAt: !3302)
!3314 = !DILocation(line: 231, column: 40, scope: !3297, inlinedAt: !3302)
!3315 = !DILocation(line: 231, column: 45, scope: !3297, inlinedAt: !3302)
!3316 = !DILocation(line: 235, column: 1, scope: !852, inlinedAt: !3302)
!3317 = !DILocation(line: 360, column: 14, scope: !3202)
!3318 = !DILocation(line: 360, column: 13, scope: !3203)
!3319 = !DILocation(line: 0, scope: !3201)
!3320 = !DILocation(line: 361, column: 45, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3201, file: !786, line: 361, column: 11)
!3322 = !DILocation(line: 361, column: 11, scope: !3201)
!3323 = !DILocation(line: 362, column: 13, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !786, line: 362, column: 13)
!3325 = distinct !DILexicalBlock(scope: !3321, file: !786, line: 362, column: 13)
!3326 = !DILocation(line: 362, column: 13, scope: !3325)
!3327 = !DILocation(line: 361, column: 52, scope: !3321)
!3328 = distinct !{!3328, !3322, !3329, !1210}
!3329 = !DILocation(line: 362, column: 13, scope: !3201)
!3330 = !DILocation(line: 260, column: 10, scope: !3174)
!3331 = !DILocation(line: 365, column: 28, scope: !3203)
!3332 = !DILocation(line: 367, column: 7, scope: !3204)
!3333 = !DILocation(line: 370, column: 7, scope: !3204)
!3334 = !DILocation(line: 373, column: 7, scope: !3204)
!3335 = !DILocation(line: 376, column: 12, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3204, file: !786, line: 376, column: 11)
!3337 = !DILocation(line: 376, column: 11, scope: !3204)
!3338 = !DILocation(line: 381, column: 12, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3204, file: !786, line: 381, column: 11)
!3340 = !DILocation(line: 381, column: 11, scope: !3204)
!3341 = !DILocation(line: 382, column: 9, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3343, file: !786, line: 382, column: 9)
!3343 = distinct !DILexicalBlock(scope: !3339, file: !786, line: 382, column: 9)
!3344 = !DILocation(line: 382, column: 9, scope: !3343)
!3345 = !DILocation(line: 389, column: 7, scope: !3204)
!3346 = !DILocation(line: 392, column: 7, scope: !3204)
!3347 = !DILocation(line: 0, scope: !3206)
!3348 = !DILocation(line: 395, column: 8, scope: !3206)
!3349 = !DILocation(line: 309, column: 8, scope: !3174)
!3350 = !DILocation(line: 395, scope: !3206)
!3351 = !DILocation(line: 395, column: 34, scope: !3209)
!3352 = !DILocation(line: 395, column: 26, scope: !3209)
!3353 = !DILocation(line: 395, column: 48, scope: !3209)
!3354 = !DILocation(line: 395, column: 55, scope: !3209)
!3355 = !DILocation(line: 395, column: 3, scope: !3206)
!3356 = !DILocation(line: 395, column: 67, scope: !3209)
!3357 = !DILocation(line: 0, scope: !3208)
!3358 = !DILocation(line: 402, column: 11, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3208, file: !786, line: 401, column: 11)
!3360 = !DILocation(line: 404, column: 17, scope: !3359)
!3361 = !DILocation(line: 405, column: 39, scope: !3359)
!3362 = !DILocation(line: 409, column: 32, scope: !3359)
!3363 = !DILocation(line: 405, column: 19, scope: !3359)
!3364 = !DILocation(line: 405, column: 15, scope: !3359)
!3365 = !DILocation(line: 410, column: 11, scope: !3359)
!3366 = !DILocation(line: 410, column: 25, scope: !3359)
!3367 = !DILocalVariable(name: "__s1", arg: 1, scope: !3368, file: !1176, line: 974, type: !1311)
!3368 = distinct !DISubprogram(name: "memeq", scope: !1176, file: !1176, line: 974, type: !2997, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3369)
!3369 = !{!3367, !3370, !3371}
!3370 = !DILocalVariable(name: "__s2", arg: 2, scope: !3368, file: !1176, line: 974, type: !1311)
!3371 = !DILocalVariable(name: "__n", arg: 3, scope: !3368, file: !1176, line: 974, type: !110)
!3372 = !DILocation(line: 0, scope: !3368, inlinedAt: !3373)
!3373 = distinct !DILocation(line: 410, column: 14, scope: !3359)
!3374 = !DILocation(line: 976, column: 11, scope: !3368, inlinedAt: !3373)
!3375 = !DILocation(line: 976, column: 10, scope: !3368, inlinedAt: !3373)
!3376 = !DILocation(line: 401, column: 11, scope: !3208)
!3377 = !DILocation(line: 417, column: 25, scope: !3208)
!3378 = !DILocation(line: 418, column: 7, scope: !3208)
!3379 = !DILocation(line: 421, column: 15, scope: !3215)
!3380 = !DILocation(line: 423, column: 15, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !786, line: 423, column: 15)
!3382 = distinct !DILexicalBlock(scope: !3383, file: !786, line: 422, column: 13)
!3383 = distinct !DILexicalBlock(scope: !3215, file: !786, line: 421, column: 15)
!3384 = !DILocation(line: 423, column: 15, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3381, file: !786, line: 423, column: 15)
!3386 = !DILocation(line: 423, column: 15, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3388, file: !786, line: 423, column: 15)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !786, line: 423, column: 15)
!3389 = distinct !DILexicalBlock(scope: !3385, file: !786, line: 423, column: 15)
!3390 = !DILocation(line: 423, column: 15, scope: !3388)
!3391 = !DILocation(line: 423, column: 15, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3393, file: !786, line: 423, column: 15)
!3393 = distinct !DILexicalBlock(scope: !3389, file: !786, line: 423, column: 15)
!3394 = !DILocation(line: 423, column: 15, scope: !3393)
!3395 = !DILocation(line: 423, column: 15, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !786, line: 423, column: 15)
!3397 = distinct !DILexicalBlock(scope: !3389, file: !786, line: 423, column: 15)
!3398 = !DILocation(line: 423, column: 15, scope: !3397)
!3399 = !DILocation(line: 423, column: 15, scope: !3389)
!3400 = !DILocation(line: 423, column: 15, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !786, line: 423, column: 15)
!3402 = distinct !DILexicalBlock(scope: !3381, file: !786, line: 423, column: 15)
!3403 = !DILocation(line: 423, column: 15, scope: !3402)
!3404 = !DILocation(line: 431, column: 19, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3382, file: !786, line: 430, column: 19)
!3406 = !DILocation(line: 431, column: 24, scope: !3405)
!3407 = !DILocation(line: 431, column: 28, scope: !3405)
!3408 = !DILocation(line: 431, column: 38, scope: !3405)
!3409 = !DILocation(line: 431, column: 48, scope: !3405)
!3410 = !DILocation(line: 431, column: 59, scope: !3405)
!3411 = !DILocation(line: 433, column: 19, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3413, file: !786, line: 433, column: 19)
!3413 = distinct !DILexicalBlock(scope: !3414, file: !786, line: 433, column: 19)
!3414 = distinct !DILexicalBlock(scope: !3405, file: !786, line: 432, column: 17)
!3415 = !DILocation(line: 433, column: 19, scope: !3413)
!3416 = !DILocation(line: 434, column: 19, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3418, file: !786, line: 434, column: 19)
!3418 = distinct !DILexicalBlock(scope: !3414, file: !786, line: 434, column: 19)
!3419 = !DILocation(line: 434, column: 19, scope: !3418)
!3420 = !DILocation(line: 435, column: 17, scope: !3414)
!3421 = !DILocation(line: 442, column: 20, scope: !3383)
!3422 = !DILocation(line: 447, column: 11, scope: !3215)
!3423 = !DILocation(line: 450, column: 19, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3215, file: !786, line: 448, column: 13)
!3425 = !DILocation(line: 456, column: 19, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3424, file: !786, line: 455, column: 19)
!3427 = !DILocation(line: 456, column: 24, scope: !3426)
!3428 = !DILocation(line: 456, column: 28, scope: !3426)
!3429 = !DILocation(line: 456, column: 38, scope: !3426)
!3430 = !DILocation(line: 456, column: 41, scope: !3426)
!3431 = !DILocation(line: 456, column: 52, scope: !3426)
!3432 = !DILocation(line: 455, column: 19, scope: !3424)
!3433 = !DILocation(line: 457, column: 25, scope: !3426)
!3434 = !DILocation(line: 457, column: 17, scope: !3426)
!3435 = !DILocation(line: 464, column: 25, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3426, file: !786, line: 458, column: 19)
!3437 = !DILocation(line: 468, column: 21, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !786, line: 468, column: 21)
!3439 = distinct !DILexicalBlock(scope: !3436, file: !786, line: 468, column: 21)
!3440 = !DILocation(line: 468, column: 21, scope: !3439)
!3441 = !DILocation(line: 469, column: 21, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !786, line: 469, column: 21)
!3443 = distinct !DILexicalBlock(scope: !3436, file: !786, line: 469, column: 21)
!3444 = !DILocation(line: 469, column: 21, scope: !3443)
!3445 = !DILocation(line: 470, column: 21, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !786, line: 470, column: 21)
!3447 = distinct !DILexicalBlock(scope: !3436, file: !786, line: 470, column: 21)
!3448 = !DILocation(line: 470, column: 21, scope: !3447)
!3449 = !DILocation(line: 471, column: 21, scope: !3450)
!3450 = distinct !DILexicalBlock(scope: !3451, file: !786, line: 471, column: 21)
!3451 = distinct !DILexicalBlock(scope: !3436, file: !786, line: 471, column: 21)
!3452 = !DILocation(line: 471, column: 21, scope: !3451)
!3453 = !DILocation(line: 472, column: 21, scope: !3436)
!3454 = !DILocation(line: 482, column: 33, scope: !3214)
!3455 = !DILocation(line: 483, column: 33, scope: !3214)
!3456 = !DILocation(line: 485, column: 33, scope: !3214)
!3457 = !DILocation(line: 486, column: 33, scope: !3214)
!3458 = !DILocation(line: 487, column: 33, scope: !3214)
!3459 = !DILocation(line: 490, column: 17, scope: !3214)
!3460 = !DILocation(line: 492, column: 21, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !786, line: 491, column: 15)
!3462 = distinct !DILexicalBlock(scope: !3214, file: !786, line: 490, column: 17)
!3463 = !DILocation(line: 499, column: 35, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3214, file: !786, line: 499, column: 17)
!3465 = !DILocation(line: 499, column: 57, scope: !3464)
!3466 = !DILocation(line: 0, scope: !3214)
!3467 = !DILocation(line: 502, column: 11, scope: !3214)
!3468 = !DILocation(line: 504, column: 17, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3214, file: !786, line: 503, column: 17)
!3470 = !DILocation(line: 507, column: 11, scope: !3214)
!3471 = !DILocation(line: 508, column: 17, scope: !3214)
!3472 = !DILocation(line: 517, column: 15, scope: !3215)
!3473 = !DILocation(line: 517, column: 40, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3215, file: !786, line: 517, column: 15)
!3475 = !DILocation(line: 517, column: 47, scope: !3474)
!3476 = !DILocation(line: 517, column: 18, scope: !3474)
!3477 = !DILocation(line: 521, column: 17, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3215, file: !786, line: 521, column: 15)
!3479 = !DILocation(line: 521, column: 15, scope: !3215)
!3480 = !DILocation(line: 525, column: 11, scope: !3215)
!3481 = !DILocation(line: 537, column: 15, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3215, file: !786, line: 536, column: 15)
!3483 = !DILocation(line: 544, column: 15, scope: !3215)
!3484 = !DILocation(line: 546, column: 19, scope: !3485)
!3485 = distinct !DILexicalBlock(scope: !3486, file: !786, line: 545, column: 13)
!3486 = distinct !DILexicalBlock(scope: !3215, file: !786, line: 544, column: 15)
!3487 = !DILocation(line: 549, column: 19, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3485, file: !786, line: 549, column: 19)
!3489 = !DILocation(line: 549, column: 30, scope: !3488)
!3490 = !DILocation(line: 558, column: 15, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3492, file: !786, line: 558, column: 15)
!3492 = distinct !DILexicalBlock(scope: !3485, file: !786, line: 558, column: 15)
!3493 = !DILocation(line: 558, column: 15, scope: !3492)
!3494 = !DILocation(line: 559, column: 15, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !786, line: 559, column: 15)
!3496 = distinct !DILexicalBlock(scope: !3485, file: !786, line: 559, column: 15)
!3497 = !DILocation(line: 559, column: 15, scope: !3496)
!3498 = !DILocation(line: 560, column: 15, scope: !3499)
!3499 = distinct !DILexicalBlock(scope: !3500, file: !786, line: 560, column: 15)
!3500 = distinct !DILexicalBlock(scope: !3485, file: !786, line: 560, column: 15)
!3501 = !DILocation(line: 560, column: 15, scope: !3500)
!3502 = !DILocation(line: 562, column: 13, scope: !3485)
!3503 = !DILocation(line: 602, column: 17, scope: !3218)
!3504 = !DILocation(line: 0, scope: !3218)
!3505 = !DILocation(line: 605, column: 29, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3222, file: !786, line: 603, column: 15)
!3507 = !DILocation(line: 605, column: 27, scope: !3506)
!3508 = !DILocation(line: 606, column: 15, scope: !3506)
!3509 = !DILocation(line: 609, column: 17, scope: !3221)
!3510 = !DILocation(line: 0, scope: !3281, inlinedAt: !3511)
!3511 = distinct !DILocation(line: 609, column: 32, scope: !3221)
!3512 = !DILocation(line: 0, scope: !3289, inlinedAt: !3513)
!3513 = distinct !DILocation(line: 1137, column: 3, scope: !3281, inlinedAt: !3511)
!3514 = !DILocation(line: 59, column: 10, scope: !3289, inlinedAt: !3513)
!3515 = !DILocation(line: 613, column: 29, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3221, file: !786, line: 613, column: 21)
!3517 = !DILocation(line: 613, column: 21, scope: !3221)
!3518 = !DILocation(line: 614, column: 29, scope: !3516)
!3519 = !DILocation(line: 614, column: 19, scope: !3516)
!3520 = !DILocation(line: 618, column: 21, scope: !3224)
!3521 = !DILocation(line: 620, column: 54, scope: !3224)
!3522 = !DILocation(line: 619, column: 36, scope: !3224)
!3523 = !DILocation(line: 621, column: 25, scope: !3224)
!3524 = !DILocation(line: 631, column: 38, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3233, file: !786, line: 629, column: 23)
!3526 = !DILocation(line: 631, column: 48, scope: !3525)
!3527 = !DILocation(line: 626, column: 25, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3234, file: !786, line: 624, column: 23)
!3529 = !DILocation(line: 631, column: 51, scope: !3525)
!3530 = !DILocation(line: 631, column: 25, scope: !3525)
!3531 = !DILocation(line: 632, column: 28, scope: !3525)
!3532 = !DILocation(line: 631, column: 34, scope: !3525)
!3533 = distinct !{!3533, !3530, !3531, !1210}
!3534 = !DILocation(line: 0, scope: !3229)
!3535 = !DILocation(line: 646, column: 29, scope: !3231)
!3536 = !DILocation(line: 649, column: 39, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3229, file: !786, line: 648, column: 29)
!3538 = !DILocation(line: 649, column: 31, scope: !3537)
!3539 = !DILocation(line: 648, column: 60, scope: !3537)
!3540 = !DILocation(line: 648, column: 50, scope: !3537)
!3541 = !DILocation(line: 648, column: 29, scope: !3229)
!3542 = distinct !{!3542, !3541, !3543, !1210}
!3543 = !DILocation(line: 654, column: 33, scope: !3229)
!3544 = !DILocation(line: 657, column: 43, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3232, file: !786, line: 657, column: 29)
!3546 = !DILocalVariable(name: "wc", arg: 1, scope: !3547, file: !1566, line: 865, type: !1569)
!3547 = distinct !DISubprogram(name: "c32isprint", scope: !1566, file: !1566, line: 865, type: !1567, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3548)
!3548 = !{!3546}
!3549 = !DILocation(line: 0, scope: !3547, inlinedAt: !3550)
!3550 = distinct !DILocation(line: 657, column: 31, scope: !3545)
!3551 = !DILocation(line: 871, column: 10, scope: !3547, inlinedAt: !3550)
!3552 = !DILocation(line: 657, column: 31, scope: !3545)
!3553 = !DILocation(line: 664, column: 23, scope: !3224)
!3554 = !DILocation(line: 665, column: 19, scope: !3225)
!3555 = !DILocation(line: 666, column: 15, scope: !3222)
!3556 = !DILocation(line: 0, scope: !3222)
!3557 = !DILocation(line: 670, column: 19, scope: !3238)
!3558 = !DILocation(line: 670, column: 23, scope: !3238)
!3559 = !DILocation(line: 674, column: 33, scope: !3237)
!3560 = !DILocation(line: 0, scope: !3237)
!3561 = !DILocation(line: 676, column: 17, scope: !3237)
!3562 = !DILocation(line: 398, column: 12, scope: !3208)
!3563 = !DILocation(line: 678, column: 43, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !786, line: 678, column: 25)
!3565 = distinct !DILexicalBlock(scope: !3566, file: !786, line: 677, column: 19)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !786, line: 676, column: 17)
!3567 = distinct !DILexicalBlock(scope: !3237, file: !786, line: 676, column: 17)
!3568 = !DILocation(line: 680, column: 25, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3570, file: !786, line: 680, column: 25)
!3570 = distinct !DILexicalBlock(scope: !3564, file: !786, line: 679, column: 23)
!3571 = !DILocation(line: 680, column: 25, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3569, file: !786, line: 680, column: 25)
!3573 = !DILocation(line: 680, column: 25, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3575, file: !786, line: 680, column: 25)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !786, line: 680, column: 25)
!3576 = distinct !DILexicalBlock(scope: !3572, file: !786, line: 680, column: 25)
!3577 = !DILocation(line: 680, column: 25, scope: !3575)
!3578 = !DILocation(line: 680, column: 25, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3580, file: !786, line: 680, column: 25)
!3580 = distinct !DILexicalBlock(scope: !3576, file: !786, line: 680, column: 25)
!3581 = !DILocation(line: 680, column: 25, scope: !3580)
!3582 = !DILocation(line: 680, column: 25, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3584, file: !786, line: 680, column: 25)
!3584 = distinct !DILexicalBlock(scope: !3576, file: !786, line: 680, column: 25)
!3585 = !DILocation(line: 680, column: 25, scope: !3584)
!3586 = !DILocation(line: 680, column: 25, scope: !3576)
!3587 = !DILocation(line: 680, column: 25, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !786, line: 680, column: 25)
!3589 = distinct !DILexicalBlock(scope: !3569, file: !786, line: 680, column: 25)
!3590 = !DILocation(line: 680, column: 25, scope: !3589)
!3591 = !DILocation(line: 681, column: 25, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3593, file: !786, line: 681, column: 25)
!3593 = distinct !DILexicalBlock(scope: !3570, file: !786, line: 681, column: 25)
!3594 = !DILocation(line: 681, column: 25, scope: !3593)
!3595 = !DILocation(line: 682, column: 25, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3597, file: !786, line: 682, column: 25)
!3597 = distinct !DILexicalBlock(scope: !3570, file: !786, line: 682, column: 25)
!3598 = !DILocation(line: 682, column: 25, scope: !3597)
!3599 = !DILocation(line: 683, column: 38, scope: !3570)
!3600 = !DILocation(line: 683, column: 33, scope: !3570)
!3601 = !DILocation(line: 684, column: 23, scope: !3570)
!3602 = !DILocation(line: 685, column: 30, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3564, file: !786, line: 685, column: 30)
!3604 = !DILocation(line: 685, column: 30, scope: !3564)
!3605 = !DILocation(line: 687, column: 25, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !786, line: 687, column: 25)
!3607 = distinct !DILexicalBlock(scope: !3608, file: !786, line: 687, column: 25)
!3608 = distinct !DILexicalBlock(scope: !3603, file: !786, line: 686, column: 23)
!3609 = !DILocation(line: 687, column: 25, scope: !3607)
!3610 = !DILocation(line: 689, column: 23, scope: !3608)
!3611 = !DILocation(line: 690, column: 35, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3565, file: !786, line: 690, column: 25)
!3613 = !DILocation(line: 690, column: 30, scope: !3612)
!3614 = !DILocation(line: 690, column: 25, scope: !3565)
!3615 = !DILocation(line: 692, column: 21, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3617, file: !786, line: 692, column: 21)
!3617 = distinct !DILexicalBlock(scope: !3565, file: !786, line: 692, column: 21)
!3618 = !DILocation(line: 692, column: 21, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3620, file: !786, line: 692, column: 21)
!3620 = distinct !DILexicalBlock(scope: !3621, file: !786, line: 692, column: 21)
!3621 = distinct !DILexicalBlock(scope: !3616, file: !786, line: 692, column: 21)
!3622 = !DILocation(line: 692, column: 21, scope: !3620)
!3623 = !DILocation(line: 692, column: 21, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !786, line: 692, column: 21)
!3625 = distinct !DILexicalBlock(scope: !3621, file: !786, line: 692, column: 21)
!3626 = !DILocation(line: 692, column: 21, scope: !3625)
!3627 = !DILocation(line: 692, column: 21, scope: !3621)
!3628 = !DILocation(line: 0, scope: !3565)
!3629 = !DILocation(line: 693, column: 21, scope: !3630)
!3630 = distinct !DILexicalBlock(scope: !3631, file: !786, line: 693, column: 21)
!3631 = distinct !DILexicalBlock(scope: !3565, file: !786, line: 693, column: 21)
!3632 = !DILocation(line: 693, column: 21, scope: !3631)
!3633 = !DILocation(line: 694, column: 25, scope: !3565)
!3634 = !DILocation(line: 676, column: 17, scope: !3566)
!3635 = distinct !{!3635, !3636, !3637}
!3636 = !DILocation(line: 676, column: 17, scope: !3567)
!3637 = !DILocation(line: 695, column: 19, scope: !3567)
!3638 = !DILocation(line: 409, column: 30, scope: !3359)
!3639 = !DILocation(line: 702, column: 34, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3208, file: !786, line: 702, column: 11)
!3641 = !DILocation(line: 704, column: 14, scope: !3640)
!3642 = !DILocation(line: 705, column: 14, scope: !3640)
!3643 = !DILocation(line: 705, column: 35, scope: !3640)
!3644 = !DILocation(line: 705, column: 17, scope: !3640)
!3645 = !DILocation(line: 705, column: 47, scope: !3640)
!3646 = !DILocation(line: 705, column: 65, scope: !3640)
!3647 = !DILocation(line: 706, column: 11, scope: !3640)
!3648 = !DILocation(line: 702, column: 11, scope: !3208)
!3649 = !DILocation(line: 395, column: 15, scope: !3206)
!3650 = !DILocation(line: 709, column: 5, scope: !3208)
!3651 = !DILocation(line: 710, column: 7, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3208, file: !786, line: 710, column: 7)
!3653 = !DILocation(line: 710, column: 7, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3652, file: !786, line: 710, column: 7)
!3655 = !DILocation(line: 710, column: 7, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3657, file: !786, line: 710, column: 7)
!3657 = distinct !DILexicalBlock(scope: !3658, file: !786, line: 710, column: 7)
!3658 = distinct !DILexicalBlock(scope: !3654, file: !786, line: 710, column: 7)
!3659 = !DILocation(line: 710, column: 7, scope: !3657)
!3660 = !DILocation(line: 710, column: 7, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3662, file: !786, line: 710, column: 7)
!3662 = distinct !DILexicalBlock(scope: !3658, file: !786, line: 710, column: 7)
!3663 = !DILocation(line: 710, column: 7, scope: !3662)
!3664 = !DILocation(line: 710, column: 7, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3666, file: !786, line: 710, column: 7)
!3666 = distinct !DILexicalBlock(scope: !3658, file: !786, line: 710, column: 7)
!3667 = !DILocation(line: 710, column: 7, scope: !3666)
!3668 = !DILocation(line: 710, column: 7, scope: !3658)
!3669 = !DILocation(line: 710, column: 7, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3671, file: !786, line: 710, column: 7)
!3671 = distinct !DILexicalBlock(scope: !3652, file: !786, line: 710, column: 7)
!3672 = !DILocation(line: 710, column: 7, scope: !3671)
!3673 = !DILocation(line: 712, column: 5, scope: !3208)
!3674 = !DILocation(line: 713, column: 7, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !786, line: 713, column: 7)
!3676 = distinct !DILexicalBlock(scope: !3208, file: !786, line: 713, column: 7)
!3677 = !DILocation(line: 417, column: 21, scope: !3208)
!3678 = !DILocation(line: 713, column: 7, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3680, file: !786, line: 713, column: 7)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !786, line: 713, column: 7)
!3681 = distinct !DILexicalBlock(scope: !3675, file: !786, line: 713, column: 7)
!3682 = !DILocation(line: 713, column: 7, scope: !3680)
!3683 = !DILocation(line: 713, column: 7, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3685, file: !786, line: 713, column: 7)
!3685 = distinct !DILexicalBlock(scope: !3681, file: !786, line: 713, column: 7)
!3686 = !DILocation(line: 713, column: 7, scope: !3685)
!3687 = !DILocation(line: 713, column: 7, scope: !3681)
!3688 = !DILocation(line: 714, column: 7, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3690, file: !786, line: 714, column: 7)
!3690 = distinct !DILexicalBlock(scope: !3208, file: !786, line: 714, column: 7)
!3691 = !DILocation(line: 714, column: 7, scope: !3690)
!3692 = !DILocation(line: 716, column: 13, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3208, file: !786, line: 716, column: 11)
!3694 = !DILocation(line: 716, column: 11, scope: !3208)
!3695 = !DILocation(line: 718, column: 5, scope: !3209)
!3696 = !DILocation(line: 395, column: 82, scope: !3209)
!3697 = !DILocation(line: 395, column: 3, scope: !3209)
!3698 = distinct !{!3698, !3355, !3699, !1210}
!3699 = !DILocation(line: 718, column: 5, scope: !3206)
!3700 = !DILocation(line: 720, column: 11, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3174, file: !786, line: 720, column: 7)
!3702 = !DILocation(line: 720, column: 16, scope: !3701)
!3703 = !DILocation(line: 728, column: 51, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3174, file: !786, line: 728, column: 7)
!3705 = !DILocation(line: 731, column: 11, scope: !3706)
!3706 = distinct !DILexicalBlock(scope: !3707, file: !786, line: 731, column: 11)
!3707 = distinct !DILexicalBlock(scope: !3704, file: !786, line: 730, column: 5)
!3708 = !DILocation(line: 731, column: 11, scope: !3707)
!3709 = !DILocation(line: 732, column: 16, scope: !3706)
!3710 = !DILocation(line: 732, column: 9, scope: !3706)
!3711 = !DILocation(line: 736, column: 18, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3706, file: !786, line: 736, column: 16)
!3713 = !DILocation(line: 736, column: 29, scope: !3712)
!3714 = !DILocation(line: 745, column: 7, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3174, file: !786, line: 745, column: 7)
!3716 = !DILocation(line: 745, column: 20, scope: !3715)
!3717 = !DILocation(line: 746, column: 12, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3719, file: !786, line: 746, column: 5)
!3719 = distinct !DILexicalBlock(scope: !3715, file: !786, line: 746, column: 5)
!3720 = !DILocation(line: 746, column: 5, scope: !3719)
!3721 = !DILocation(line: 747, column: 7, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3723, file: !786, line: 747, column: 7)
!3723 = distinct !DILexicalBlock(scope: !3718, file: !786, line: 747, column: 7)
!3724 = !DILocation(line: 747, column: 7, scope: !3723)
!3725 = !DILocation(line: 746, column: 39, scope: !3718)
!3726 = distinct !{!3726, !3720, !3727, !1210}
!3727 = !DILocation(line: 747, column: 7, scope: !3719)
!3728 = !DILocation(line: 749, column: 11, scope: !3729)
!3729 = distinct !DILexicalBlock(scope: !3174, file: !786, line: 749, column: 7)
!3730 = !DILocation(line: 749, column: 7, scope: !3174)
!3731 = !DILocation(line: 750, column: 5, scope: !3729)
!3732 = !DILocation(line: 750, column: 17, scope: !3729)
!3733 = !DILocation(line: 753, column: 2, scope: !3174)
!3734 = !DILocation(line: 756, column: 51, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3174, file: !786, line: 756, column: 7)
!3736 = !DILocation(line: 756, column: 21, scope: !3735)
!3737 = !DILocation(line: 760, column: 42, scope: !3174)
!3738 = !DILocation(line: 758, column: 10, scope: !3174)
!3739 = !DILocation(line: 758, column: 3, scope: !3174)
!3740 = !DILocation(line: 762, column: 1, scope: !3174)
!3741 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1287, file: !1287, line: 98, type: !3742, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3742 = !DISubroutineType(types: !3743)
!3743 = !{!110}
!3744 = !DISubprogram(name: "strlen", scope: !1283, file: !1283, line: 407, type: !3745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!112, !113}
!3747 = !DISubprogram(name: "iswprint", scope: !1776, file: !1776, line: 120, type: !1567, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3748 = distinct !DISubprogram(name: "quotearg_alloc", scope: !786, file: !786, line: 788, type: !3749, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3751)
!3749 = !DISubroutineType(types: !3750)
!3750 = !{!107, !113, !110, !3067}
!3751 = !{!3752, !3753, !3754}
!3752 = !DILocalVariable(name: "arg", arg: 1, scope: !3748, file: !786, line: 788, type: !113)
!3753 = !DILocalVariable(name: "argsize", arg: 2, scope: !3748, file: !786, line: 788, type: !110)
!3754 = !DILocalVariable(name: "o", arg: 3, scope: !3748, file: !786, line: 789, type: !3067)
!3755 = !DILocation(line: 0, scope: !3748)
!3756 = !DILocalVariable(name: "arg", arg: 1, scope: !3757, file: !786, line: 801, type: !113)
!3757 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !786, file: !786, line: 801, type: !3758, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3760)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!107, !113, !110, !1031, !3067}
!3760 = !{!3756, !3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768}
!3761 = !DILocalVariable(name: "argsize", arg: 2, scope: !3757, file: !786, line: 801, type: !110)
!3762 = !DILocalVariable(name: "size", arg: 3, scope: !3757, file: !786, line: 801, type: !1031)
!3763 = !DILocalVariable(name: "o", arg: 4, scope: !3757, file: !786, line: 802, type: !3067)
!3764 = !DILocalVariable(name: "p", scope: !3757, file: !786, line: 804, type: !3067)
!3765 = !DILocalVariable(name: "saved_errno", scope: !3757, file: !786, line: 805, type: !77)
!3766 = !DILocalVariable(name: "flags", scope: !3757, file: !786, line: 807, type: !77)
!3767 = !DILocalVariable(name: "bufsize", scope: !3757, file: !786, line: 808, type: !110)
!3768 = !DILocalVariable(name: "buf", scope: !3757, file: !786, line: 812, type: !107)
!3769 = !DILocation(line: 0, scope: !3757, inlinedAt: !3770)
!3770 = distinct !DILocation(line: 791, column: 10, scope: !3748)
!3771 = !DILocation(line: 804, column: 37, scope: !3757, inlinedAt: !3770)
!3772 = !DILocation(line: 805, column: 21, scope: !3757, inlinedAt: !3770)
!3773 = !DILocation(line: 807, column: 18, scope: !3757, inlinedAt: !3770)
!3774 = !DILocation(line: 807, column: 24, scope: !3757, inlinedAt: !3770)
!3775 = !DILocation(line: 808, column: 72, scope: !3757, inlinedAt: !3770)
!3776 = !DILocation(line: 809, column: 56, scope: !3757, inlinedAt: !3770)
!3777 = !DILocation(line: 810, column: 49, scope: !3757, inlinedAt: !3770)
!3778 = !DILocation(line: 811, column: 49, scope: !3757, inlinedAt: !3770)
!3779 = !DILocation(line: 808, column: 20, scope: !3757, inlinedAt: !3770)
!3780 = !DILocation(line: 811, column: 62, scope: !3757, inlinedAt: !3770)
!3781 = !DILocation(line: 812, column: 15, scope: !3757, inlinedAt: !3770)
!3782 = !DILocation(line: 813, column: 60, scope: !3757, inlinedAt: !3770)
!3783 = !DILocation(line: 815, column: 32, scope: !3757, inlinedAt: !3770)
!3784 = !DILocation(line: 815, column: 47, scope: !3757, inlinedAt: !3770)
!3785 = !DILocation(line: 813, column: 3, scope: !3757, inlinedAt: !3770)
!3786 = !DILocation(line: 816, column: 9, scope: !3757, inlinedAt: !3770)
!3787 = !DILocation(line: 791, column: 3, scope: !3748)
!3788 = !DILocation(line: 0, scope: !3757)
!3789 = !DILocation(line: 804, column: 37, scope: !3757)
!3790 = !DILocation(line: 805, column: 21, scope: !3757)
!3791 = !DILocation(line: 807, column: 18, scope: !3757)
!3792 = !DILocation(line: 807, column: 27, scope: !3757)
!3793 = !DILocation(line: 807, column: 24, scope: !3757)
!3794 = !DILocation(line: 808, column: 72, scope: !3757)
!3795 = !DILocation(line: 809, column: 56, scope: !3757)
!3796 = !DILocation(line: 810, column: 49, scope: !3757)
!3797 = !DILocation(line: 811, column: 49, scope: !3757)
!3798 = !DILocation(line: 808, column: 20, scope: !3757)
!3799 = !DILocation(line: 811, column: 62, scope: !3757)
!3800 = !DILocation(line: 812, column: 15, scope: !3757)
!3801 = !DILocation(line: 813, column: 60, scope: !3757)
!3802 = !DILocation(line: 815, column: 32, scope: !3757)
!3803 = !DILocation(line: 815, column: 47, scope: !3757)
!3804 = !DILocation(line: 813, column: 3, scope: !3757)
!3805 = !DILocation(line: 816, column: 9, scope: !3757)
!3806 = !DILocation(line: 817, column: 7, scope: !3757)
!3807 = !DILocation(line: 818, column: 11, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3757, file: !786, line: 817, column: 7)
!3809 = !DILocation(line: 818, column: 5, scope: !3808)
!3810 = !DILocation(line: 819, column: 3, scope: !3757)
!3811 = distinct !DISubprogram(name: "quotearg_free", scope: !786, file: !786, line: 837, type: !356, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3812)
!3812 = !{!3813, !3814}
!3813 = !DILocalVariable(name: "sv", scope: !3811, file: !786, line: 839, type: !875)
!3814 = !DILocalVariable(name: "i", scope: !3815, file: !786, line: 840, type: !77)
!3815 = distinct !DILexicalBlock(scope: !3811, file: !786, line: 840, column: 3)
!3816 = !DILocation(line: 839, column: 24, scope: !3811)
!3817 = !DILocation(line: 0, scope: !3811)
!3818 = !DILocation(line: 0, scope: !3815)
!3819 = !DILocation(line: 840, column: 21, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3815, file: !786, line: 840, column: 3)
!3821 = !DILocation(line: 840, column: 3, scope: !3815)
!3822 = !DILocation(line: 842, column: 13, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3811, file: !786, line: 842, column: 7)
!3824 = !{!3825, !1093, i64 8}
!3825 = !{!"slotvec", !1397, i64 0, !1093, i64 8}
!3826 = !DILocation(line: 842, column: 17, scope: !3823)
!3827 = !DILocation(line: 842, column: 7, scope: !3811)
!3828 = !DILocation(line: 841, column: 17, scope: !3820)
!3829 = !DILocation(line: 841, column: 5, scope: !3820)
!3830 = !DILocation(line: 840, column: 32, scope: !3820)
!3831 = distinct !{!3831, !3821, !3832, !1210}
!3832 = !DILocation(line: 841, column: 20, scope: !3815)
!3833 = !DILocation(line: 844, column: 7, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3823, file: !786, line: 843, column: 5)
!3835 = !DILocation(line: 845, column: 21, scope: !3834)
!3836 = !{!3825, !1397, i64 0}
!3837 = !DILocation(line: 846, column: 20, scope: !3834)
!3838 = !DILocation(line: 847, column: 5, scope: !3834)
!3839 = !DILocation(line: 848, column: 10, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3811, file: !786, line: 848, column: 7)
!3841 = !DILocation(line: 848, column: 7, scope: !3811)
!3842 = !DILocation(line: 850, column: 7, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3840, file: !786, line: 849, column: 5)
!3844 = !DILocation(line: 851, column: 15, scope: !3843)
!3845 = !DILocation(line: 852, column: 5, scope: !3843)
!3846 = !DILocation(line: 853, column: 10, scope: !3811)
!3847 = !DILocation(line: 854, column: 1, scope: !3811)
!3848 = distinct !DISubprogram(name: "quotearg_n", scope: !786, file: !786, line: 919, type: !1280, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3849)
!3849 = !{!3850, !3851}
!3850 = !DILocalVariable(name: "n", arg: 1, scope: !3848, file: !786, line: 919, type: !77)
!3851 = !DILocalVariable(name: "arg", arg: 2, scope: !3848, file: !786, line: 919, type: !113)
!3852 = !DILocation(line: 0, scope: !3848)
!3853 = !DILocation(line: 921, column: 10, scope: !3848)
!3854 = !DILocation(line: 921, column: 3, scope: !3848)
!3855 = distinct !DISubprogram(name: "quotearg_n_options", scope: !786, file: !786, line: 866, type: !3856, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3858)
!3856 = !DISubroutineType(types: !3857)
!3857 = !{!107, !77, !113, !110, !3067}
!3858 = !{!3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3869, !3870, !3872, !3873, !3874}
!3859 = !DILocalVariable(name: "n", arg: 1, scope: !3855, file: !786, line: 866, type: !77)
!3860 = !DILocalVariable(name: "arg", arg: 2, scope: !3855, file: !786, line: 866, type: !113)
!3861 = !DILocalVariable(name: "argsize", arg: 3, scope: !3855, file: !786, line: 866, type: !110)
!3862 = !DILocalVariable(name: "options", arg: 4, scope: !3855, file: !786, line: 867, type: !3067)
!3863 = !DILocalVariable(name: "saved_errno", scope: !3855, file: !786, line: 869, type: !77)
!3864 = !DILocalVariable(name: "sv", scope: !3855, file: !786, line: 871, type: !875)
!3865 = !DILocalVariable(name: "nslots_max", scope: !3855, file: !786, line: 873, type: !77)
!3866 = !DILocalVariable(name: "preallocated", scope: !3867, file: !786, line: 879, type: !154)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !786, line: 878, column: 5)
!3868 = distinct !DILexicalBlock(scope: !3855, file: !786, line: 877, column: 7)
!3869 = !DILocalVariable(name: "new_nslots", scope: !3867, file: !786, line: 880, type: !1044)
!3870 = !DILocalVariable(name: "size", scope: !3871, file: !786, line: 891, type: !110)
!3871 = distinct !DILexicalBlock(scope: !3855, file: !786, line: 890, column: 3)
!3872 = !DILocalVariable(name: "val", scope: !3871, file: !786, line: 892, type: !107)
!3873 = !DILocalVariable(name: "flags", scope: !3871, file: !786, line: 894, type: !77)
!3874 = !DILocalVariable(name: "qsize", scope: !3871, file: !786, line: 895, type: !110)
!3875 = distinct !DIAssignID()
!3876 = !DILocation(line: 0, scope: !3867)
!3877 = !DILocation(line: 0, scope: !3855)
!3878 = !DILocation(line: 869, column: 21, scope: !3855)
!3879 = !DILocation(line: 871, column: 24, scope: !3855)
!3880 = !DILocation(line: 874, column: 17, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3855, file: !786, line: 874, column: 7)
!3882 = !DILocation(line: 875, column: 5, scope: !3881)
!3883 = !DILocation(line: 877, column: 7, scope: !3868)
!3884 = !DILocation(line: 877, column: 14, scope: !3868)
!3885 = !DILocation(line: 877, column: 7, scope: !3855)
!3886 = !DILocation(line: 879, column: 31, scope: !3867)
!3887 = !DILocation(line: 880, column: 7, scope: !3867)
!3888 = !DILocation(line: 880, column: 26, scope: !3867)
!3889 = !DILocation(line: 880, column: 13, scope: !3867)
!3890 = distinct !DIAssignID()
!3891 = !DILocation(line: 882, column: 31, scope: !3867)
!3892 = !DILocation(line: 883, column: 33, scope: !3867)
!3893 = !DILocation(line: 883, column: 42, scope: !3867)
!3894 = !DILocation(line: 883, column: 31, scope: !3867)
!3895 = !DILocation(line: 882, column: 22, scope: !3867)
!3896 = !DILocation(line: 882, column: 15, scope: !3867)
!3897 = !DILocation(line: 884, column: 11, scope: !3867)
!3898 = !DILocation(line: 885, column: 15, scope: !3899)
!3899 = distinct !DILexicalBlock(scope: !3867, file: !786, line: 884, column: 11)
!3900 = !{i64 0, i64 8, !1396, i64 8, i64 8, !1092}
!3901 = !DILocation(line: 885, column: 9, scope: !3899)
!3902 = !DILocation(line: 886, column: 20, scope: !3867)
!3903 = !DILocation(line: 886, column: 18, scope: !3867)
!3904 = !DILocation(line: 886, column: 32, scope: !3867)
!3905 = !DILocation(line: 886, column: 43, scope: !3867)
!3906 = !DILocation(line: 886, column: 53, scope: !3867)
!3907 = !DILocation(line: 0, scope: !3289, inlinedAt: !3908)
!3908 = distinct !DILocation(line: 886, column: 7, scope: !3867)
!3909 = !DILocation(line: 59, column: 10, scope: !3289, inlinedAt: !3908)
!3910 = !DILocation(line: 887, column: 16, scope: !3867)
!3911 = !DILocation(line: 887, column: 14, scope: !3867)
!3912 = !DILocation(line: 888, column: 5, scope: !3868)
!3913 = !DILocation(line: 888, column: 5, scope: !3867)
!3914 = !DILocation(line: 891, column: 19, scope: !3871)
!3915 = !DILocation(line: 891, column: 25, scope: !3871)
!3916 = !DILocation(line: 0, scope: !3871)
!3917 = !DILocation(line: 892, column: 23, scope: !3871)
!3918 = !DILocation(line: 894, column: 26, scope: !3871)
!3919 = !DILocation(line: 894, column: 32, scope: !3871)
!3920 = !DILocation(line: 896, column: 55, scope: !3871)
!3921 = !DILocation(line: 897, column: 55, scope: !3871)
!3922 = !DILocation(line: 898, column: 55, scope: !3871)
!3923 = !DILocation(line: 899, column: 55, scope: !3871)
!3924 = !DILocation(line: 895, column: 20, scope: !3871)
!3925 = !DILocation(line: 901, column: 14, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3871, file: !786, line: 901, column: 9)
!3927 = !DILocation(line: 901, column: 9, scope: !3871)
!3928 = !DILocation(line: 903, column: 35, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3926, file: !786, line: 902, column: 7)
!3930 = !DILocation(line: 903, column: 20, scope: !3929)
!3931 = !DILocation(line: 904, column: 17, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3929, file: !786, line: 904, column: 13)
!3933 = !DILocation(line: 904, column: 13, scope: !3929)
!3934 = !DILocation(line: 905, column: 11, scope: !3932)
!3935 = !DILocation(line: 906, column: 27, scope: !3929)
!3936 = !DILocation(line: 906, column: 19, scope: !3929)
!3937 = !DILocation(line: 907, column: 69, scope: !3929)
!3938 = !DILocation(line: 909, column: 44, scope: !3929)
!3939 = !DILocation(line: 910, column: 44, scope: !3929)
!3940 = !DILocation(line: 907, column: 9, scope: !3929)
!3941 = !DILocation(line: 911, column: 7, scope: !3929)
!3942 = !DILocation(line: 913, column: 11, scope: !3871)
!3943 = !DILocation(line: 914, column: 5, scope: !3871)
!3944 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !786, file: !786, line: 925, type: !3945, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3947)
!3945 = !DISubroutineType(types: !3946)
!3946 = !{!107, !77, !113, !110}
!3947 = !{!3948, !3949, !3950}
!3948 = !DILocalVariable(name: "n", arg: 1, scope: !3944, file: !786, line: 925, type: !77)
!3949 = !DILocalVariable(name: "arg", arg: 2, scope: !3944, file: !786, line: 925, type: !113)
!3950 = !DILocalVariable(name: "argsize", arg: 3, scope: !3944, file: !786, line: 925, type: !110)
!3951 = !DILocation(line: 0, scope: !3944)
!3952 = !DILocation(line: 927, column: 10, scope: !3944)
!3953 = !DILocation(line: 927, column: 3, scope: !3944)
!3954 = distinct !DISubprogram(name: "quotearg", scope: !786, file: !786, line: 931, type: !1289, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3955)
!3955 = !{!3956}
!3956 = !DILocalVariable(name: "arg", arg: 1, scope: !3954, file: !786, line: 931, type: !113)
!3957 = !DILocation(line: 0, scope: !3954)
!3958 = !DILocation(line: 0, scope: !3848, inlinedAt: !3959)
!3959 = distinct !DILocation(line: 933, column: 10, scope: !3954)
!3960 = !DILocation(line: 921, column: 10, scope: !3848, inlinedAt: !3959)
!3961 = !DILocation(line: 933, column: 3, scope: !3954)
!3962 = distinct !DISubprogram(name: "quotearg_mem", scope: !786, file: !786, line: 937, type: !3963, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3965)
!3963 = !DISubroutineType(types: !3964)
!3964 = !{!107, !113, !110}
!3965 = !{!3966, !3967}
!3966 = !DILocalVariable(name: "arg", arg: 1, scope: !3962, file: !786, line: 937, type: !113)
!3967 = !DILocalVariable(name: "argsize", arg: 2, scope: !3962, file: !786, line: 937, type: !110)
!3968 = !DILocation(line: 0, scope: !3962)
!3969 = !DILocation(line: 0, scope: !3944, inlinedAt: !3970)
!3970 = distinct !DILocation(line: 939, column: 10, scope: !3962)
!3971 = !DILocation(line: 927, column: 10, scope: !3944, inlinedAt: !3970)
!3972 = !DILocation(line: 939, column: 3, scope: !3962)
!3973 = distinct !DISubprogram(name: "quotearg_n_style", scope: !786, file: !786, line: 943, type: !3974, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3976)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!107, !77, !812, !113}
!3976 = !{!3977, !3978, !3979, !3980}
!3977 = !DILocalVariable(name: "n", arg: 1, scope: !3973, file: !786, line: 943, type: !77)
!3978 = !DILocalVariable(name: "s", arg: 2, scope: !3973, file: !786, line: 943, type: !812)
!3979 = !DILocalVariable(name: "arg", arg: 3, scope: !3973, file: !786, line: 943, type: !113)
!3980 = !DILocalVariable(name: "o", scope: !3973, file: !786, line: 945, type: !3068)
!3981 = distinct !DIAssignID()
!3982 = !DILocation(line: 0, scope: !3973)
!3983 = !DILocation(line: 945, column: 3, scope: !3973)
!3984 = !{!3985}
!3985 = distinct !{!3985, !3986, !"quoting_options_from_style: argument 0"}
!3986 = distinct !{!3986, !"quoting_options_from_style"}
!3987 = !DILocation(line: 945, column: 36, scope: !3973)
!3988 = !DILocalVariable(name: "style", arg: 1, scope: !3989, file: !786, line: 183, type: !812)
!3989 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !786, file: !786, line: 183, type: !3990, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3992)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!827, !812}
!3992 = !{!3988, !3993}
!3993 = !DILocalVariable(name: "o", scope: !3989, file: !786, line: 185, type: !827)
!3994 = !DILocation(line: 0, scope: !3989, inlinedAt: !3995)
!3995 = distinct !DILocation(line: 945, column: 36, scope: !3973)
!3996 = !DILocation(line: 185, column: 26, scope: !3989, inlinedAt: !3995)
!3997 = distinct !DIAssignID()
!3998 = !DILocation(line: 186, column: 13, scope: !3999, inlinedAt: !3995)
!3999 = distinct !DILexicalBlock(scope: !3989, file: !786, line: 186, column: 7)
!4000 = !DILocation(line: 186, column: 7, scope: !3989, inlinedAt: !3995)
!4001 = !DILocation(line: 187, column: 5, scope: !3999, inlinedAt: !3995)
!4002 = !DILocation(line: 188, column: 11, scope: !3989, inlinedAt: !3995)
!4003 = distinct !DIAssignID()
!4004 = !DILocation(line: 946, column: 10, scope: !3973)
!4005 = !DILocation(line: 947, column: 1, scope: !3973)
!4006 = !DILocation(line: 946, column: 3, scope: !3973)
!4007 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !786, file: !786, line: 950, type: !4008, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4010)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!107, !77, !812, !113, !110}
!4010 = !{!4011, !4012, !4013, !4014, !4015}
!4011 = !DILocalVariable(name: "n", arg: 1, scope: !4007, file: !786, line: 950, type: !77)
!4012 = !DILocalVariable(name: "s", arg: 2, scope: !4007, file: !786, line: 950, type: !812)
!4013 = !DILocalVariable(name: "arg", arg: 3, scope: !4007, file: !786, line: 951, type: !113)
!4014 = !DILocalVariable(name: "argsize", arg: 4, scope: !4007, file: !786, line: 951, type: !110)
!4015 = !DILocalVariable(name: "o", scope: !4007, file: !786, line: 953, type: !3068)
!4016 = distinct !DIAssignID()
!4017 = !DILocation(line: 0, scope: !4007)
!4018 = !DILocation(line: 953, column: 3, scope: !4007)
!4019 = !{!4020}
!4020 = distinct !{!4020, !4021, !"quoting_options_from_style: argument 0"}
!4021 = distinct !{!4021, !"quoting_options_from_style"}
!4022 = !DILocation(line: 953, column: 36, scope: !4007)
!4023 = !DILocation(line: 0, scope: !3989, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 953, column: 36, scope: !4007)
!4025 = !DILocation(line: 185, column: 26, scope: !3989, inlinedAt: !4024)
!4026 = distinct !DIAssignID()
!4027 = !DILocation(line: 186, column: 13, scope: !3999, inlinedAt: !4024)
!4028 = !DILocation(line: 186, column: 7, scope: !3989, inlinedAt: !4024)
!4029 = !DILocation(line: 187, column: 5, scope: !3999, inlinedAt: !4024)
!4030 = !DILocation(line: 188, column: 11, scope: !3989, inlinedAt: !4024)
!4031 = distinct !DIAssignID()
!4032 = !DILocation(line: 954, column: 10, scope: !4007)
!4033 = !DILocation(line: 955, column: 1, scope: !4007)
!4034 = !DILocation(line: 954, column: 3, scope: !4007)
!4035 = distinct !DISubprogram(name: "quotearg_style", scope: !786, file: !786, line: 958, type: !4036, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4038)
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!107, !812, !113}
!4038 = !{!4039, !4040}
!4039 = !DILocalVariable(name: "s", arg: 1, scope: !4035, file: !786, line: 958, type: !812)
!4040 = !DILocalVariable(name: "arg", arg: 2, scope: !4035, file: !786, line: 958, type: !113)
!4041 = distinct !DIAssignID()
!4042 = !DILocation(line: 0, scope: !4035)
!4043 = !DILocation(line: 0, scope: !3973, inlinedAt: !4044)
!4044 = distinct !DILocation(line: 960, column: 10, scope: !4035)
!4045 = !DILocation(line: 945, column: 3, scope: !3973, inlinedAt: !4044)
!4046 = !{!4047}
!4047 = distinct !{!4047, !4048, !"quoting_options_from_style: argument 0"}
!4048 = distinct !{!4048, !"quoting_options_from_style"}
!4049 = !DILocation(line: 945, column: 36, scope: !3973, inlinedAt: !4044)
!4050 = !DILocation(line: 0, scope: !3989, inlinedAt: !4051)
!4051 = distinct !DILocation(line: 945, column: 36, scope: !3973, inlinedAt: !4044)
!4052 = !DILocation(line: 185, column: 26, scope: !3989, inlinedAt: !4051)
!4053 = distinct !DIAssignID()
!4054 = !DILocation(line: 186, column: 13, scope: !3999, inlinedAt: !4051)
!4055 = !DILocation(line: 186, column: 7, scope: !3989, inlinedAt: !4051)
!4056 = !DILocation(line: 187, column: 5, scope: !3999, inlinedAt: !4051)
!4057 = !DILocation(line: 188, column: 11, scope: !3989, inlinedAt: !4051)
!4058 = distinct !DIAssignID()
!4059 = !DILocation(line: 946, column: 10, scope: !3973, inlinedAt: !4044)
!4060 = !DILocation(line: 947, column: 1, scope: !3973, inlinedAt: !4044)
!4061 = !DILocation(line: 960, column: 3, scope: !4035)
!4062 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !786, file: !786, line: 964, type: !4063, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4065)
!4063 = !DISubroutineType(types: !4064)
!4064 = !{!107, !812, !113, !110}
!4065 = !{!4066, !4067, !4068}
!4066 = !DILocalVariable(name: "s", arg: 1, scope: !4062, file: !786, line: 964, type: !812)
!4067 = !DILocalVariable(name: "arg", arg: 2, scope: !4062, file: !786, line: 964, type: !113)
!4068 = !DILocalVariable(name: "argsize", arg: 3, scope: !4062, file: !786, line: 964, type: !110)
!4069 = distinct !DIAssignID()
!4070 = !DILocation(line: 0, scope: !4062)
!4071 = !DILocation(line: 0, scope: !4007, inlinedAt: !4072)
!4072 = distinct !DILocation(line: 966, column: 10, scope: !4062)
!4073 = !DILocation(line: 953, column: 3, scope: !4007, inlinedAt: !4072)
!4074 = !{!4075}
!4075 = distinct !{!4075, !4076, !"quoting_options_from_style: argument 0"}
!4076 = distinct !{!4076, !"quoting_options_from_style"}
!4077 = !DILocation(line: 953, column: 36, scope: !4007, inlinedAt: !4072)
!4078 = !DILocation(line: 0, scope: !3989, inlinedAt: !4079)
!4079 = distinct !DILocation(line: 953, column: 36, scope: !4007, inlinedAt: !4072)
!4080 = !DILocation(line: 185, column: 26, scope: !3989, inlinedAt: !4079)
!4081 = distinct !DIAssignID()
!4082 = !DILocation(line: 186, column: 13, scope: !3999, inlinedAt: !4079)
!4083 = !DILocation(line: 186, column: 7, scope: !3989, inlinedAt: !4079)
!4084 = !DILocation(line: 187, column: 5, scope: !3999, inlinedAt: !4079)
!4085 = !DILocation(line: 188, column: 11, scope: !3989, inlinedAt: !4079)
!4086 = distinct !DIAssignID()
!4087 = !DILocation(line: 954, column: 10, scope: !4007, inlinedAt: !4072)
!4088 = !DILocation(line: 955, column: 1, scope: !4007, inlinedAt: !4072)
!4089 = !DILocation(line: 966, column: 3, scope: !4062)
!4090 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !786, file: !786, line: 970, type: !4091, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4093)
!4091 = !DISubroutineType(types: !4092)
!4092 = !{!107, !113, !110, !4}
!4093 = !{!4094, !4095, !4096, !4097}
!4094 = !DILocalVariable(name: "arg", arg: 1, scope: !4090, file: !786, line: 970, type: !113)
!4095 = !DILocalVariable(name: "argsize", arg: 2, scope: !4090, file: !786, line: 970, type: !110)
!4096 = !DILocalVariable(name: "ch", arg: 3, scope: !4090, file: !786, line: 970, type: !4)
!4097 = !DILocalVariable(name: "options", scope: !4090, file: !786, line: 972, type: !827)
!4098 = distinct !DIAssignID()
!4099 = !DILocation(line: 0, scope: !4090)
!4100 = !DILocation(line: 972, column: 3, scope: !4090)
!4101 = !DILocation(line: 973, column: 13, scope: !4090)
!4102 = !{i64 0, i64 4, !1163, i64 4, i64 4, !1163, i64 8, i64 32, !1172, i64 40, i64 8, !1092, i64 48, i64 8, !1092}
!4103 = distinct !DIAssignID()
!4104 = !DILocation(line: 0, scope: !3087, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 974, column: 3, scope: !4090)
!4106 = !DILocation(line: 147, column: 41, scope: !3087, inlinedAt: !4105)
!4107 = !DILocation(line: 147, column: 62, scope: !3087, inlinedAt: !4105)
!4108 = !DILocation(line: 147, column: 57, scope: !3087, inlinedAt: !4105)
!4109 = !DILocation(line: 148, column: 15, scope: !3087, inlinedAt: !4105)
!4110 = !DILocation(line: 149, column: 21, scope: !3087, inlinedAt: !4105)
!4111 = !DILocation(line: 149, column: 24, scope: !3087, inlinedAt: !4105)
!4112 = !DILocation(line: 150, column: 19, scope: !3087, inlinedAt: !4105)
!4113 = !DILocation(line: 150, column: 24, scope: !3087, inlinedAt: !4105)
!4114 = !DILocation(line: 150, column: 6, scope: !3087, inlinedAt: !4105)
!4115 = !DILocation(line: 975, column: 10, scope: !4090)
!4116 = !DILocation(line: 976, column: 1, scope: !4090)
!4117 = !DILocation(line: 975, column: 3, scope: !4090)
!4118 = distinct !DISubprogram(name: "quotearg_char", scope: !786, file: !786, line: 979, type: !4119, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4121)
!4119 = !DISubroutineType(types: !4120)
!4120 = !{!107, !113, !4}
!4121 = !{!4122, !4123}
!4122 = !DILocalVariable(name: "arg", arg: 1, scope: !4118, file: !786, line: 979, type: !113)
!4123 = !DILocalVariable(name: "ch", arg: 2, scope: !4118, file: !786, line: 979, type: !4)
!4124 = distinct !DIAssignID()
!4125 = !DILocation(line: 0, scope: !4118)
!4126 = !DILocation(line: 0, scope: !4090, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 981, column: 10, scope: !4118)
!4128 = !DILocation(line: 972, column: 3, scope: !4090, inlinedAt: !4127)
!4129 = !DILocation(line: 973, column: 13, scope: !4090, inlinedAt: !4127)
!4130 = distinct !DIAssignID()
!4131 = !DILocation(line: 0, scope: !3087, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 974, column: 3, scope: !4090, inlinedAt: !4127)
!4133 = !DILocation(line: 147, column: 41, scope: !3087, inlinedAt: !4132)
!4134 = !DILocation(line: 147, column: 62, scope: !3087, inlinedAt: !4132)
!4135 = !DILocation(line: 147, column: 57, scope: !3087, inlinedAt: !4132)
!4136 = !DILocation(line: 148, column: 15, scope: !3087, inlinedAt: !4132)
!4137 = !DILocation(line: 149, column: 21, scope: !3087, inlinedAt: !4132)
!4138 = !DILocation(line: 149, column: 24, scope: !3087, inlinedAt: !4132)
!4139 = !DILocation(line: 150, column: 19, scope: !3087, inlinedAt: !4132)
!4140 = !DILocation(line: 150, column: 24, scope: !3087, inlinedAt: !4132)
!4141 = !DILocation(line: 150, column: 6, scope: !3087, inlinedAt: !4132)
!4142 = !DILocation(line: 975, column: 10, scope: !4090, inlinedAt: !4127)
!4143 = !DILocation(line: 976, column: 1, scope: !4090, inlinedAt: !4127)
!4144 = !DILocation(line: 981, column: 3, scope: !4118)
!4145 = distinct !DISubprogram(name: "quotearg_colon", scope: !786, file: !786, line: 985, type: !1289, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4146)
!4146 = !{!4147}
!4147 = !DILocalVariable(name: "arg", arg: 1, scope: !4145, file: !786, line: 985, type: !113)
!4148 = distinct !DIAssignID()
!4149 = !DILocation(line: 0, scope: !4145)
!4150 = !DILocation(line: 0, scope: !4118, inlinedAt: !4151)
!4151 = distinct !DILocation(line: 987, column: 10, scope: !4145)
!4152 = !DILocation(line: 0, scope: !4090, inlinedAt: !4153)
!4153 = distinct !DILocation(line: 981, column: 10, scope: !4118, inlinedAt: !4151)
!4154 = !DILocation(line: 972, column: 3, scope: !4090, inlinedAt: !4153)
!4155 = !DILocation(line: 973, column: 13, scope: !4090, inlinedAt: !4153)
!4156 = distinct !DIAssignID()
!4157 = !DILocation(line: 0, scope: !3087, inlinedAt: !4158)
!4158 = distinct !DILocation(line: 974, column: 3, scope: !4090, inlinedAt: !4153)
!4159 = !DILocation(line: 147, column: 57, scope: !3087, inlinedAt: !4158)
!4160 = !DILocation(line: 149, column: 21, scope: !3087, inlinedAt: !4158)
!4161 = !DILocation(line: 150, column: 6, scope: !3087, inlinedAt: !4158)
!4162 = !DILocation(line: 975, column: 10, scope: !4090, inlinedAt: !4153)
!4163 = !DILocation(line: 976, column: 1, scope: !4090, inlinedAt: !4153)
!4164 = !DILocation(line: 987, column: 3, scope: !4145)
!4165 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !786, file: !786, line: 991, type: !3963, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4166)
!4166 = !{!4167, !4168}
!4167 = !DILocalVariable(name: "arg", arg: 1, scope: !4165, file: !786, line: 991, type: !113)
!4168 = !DILocalVariable(name: "argsize", arg: 2, scope: !4165, file: !786, line: 991, type: !110)
!4169 = distinct !DIAssignID()
!4170 = !DILocation(line: 0, scope: !4165)
!4171 = !DILocation(line: 0, scope: !4090, inlinedAt: !4172)
!4172 = distinct !DILocation(line: 993, column: 10, scope: !4165)
!4173 = !DILocation(line: 972, column: 3, scope: !4090, inlinedAt: !4172)
!4174 = !DILocation(line: 973, column: 13, scope: !4090, inlinedAt: !4172)
!4175 = distinct !DIAssignID()
!4176 = !DILocation(line: 0, scope: !3087, inlinedAt: !4177)
!4177 = distinct !DILocation(line: 974, column: 3, scope: !4090, inlinedAt: !4172)
!4178 = !DILocation(line: 147, column: 57, scope: !3087, inlinedAt: !4177)
!4179 = !DILocation(line: 149, column: 21, scope: !3087, inlinedAt: !4177)
!4180 = !DILocation(line: 150, column: 6, scope: !3087, inlinedAt: !4177)
!4181 = !DILocation(line: 975, column: 10, scope: !4090, inlinedAt: !4172)
!4182 = !DILocation(line: 976, column: 1, scope: !4090, inlinedAt: !4172)
!4183 = !DILocation(line: 993, column: 3, scope: !4165)
!4184 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !786, file: !786, line: 997, type: !3974, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4185)
!4185 = !{!4186, !4187, !4188, !4189}
!4186 = !DILocalVariable(name: "n", arg: 1, scope: !4184, file: !786, line: 997, type: !77)
!4187 = !DILocalVariable(name: "s", arg: 2, scope: !4184, file: !786, line: 997, type: !812)
!4188 = !DILocalVariable(name: "arg", arg: 3, scope: !4184, file: !786, line: 997, type: !113)
!4189 = !DILocalVariable(name: "options", scope: !4184, file: !786, line: 999, type: !827)
!4190 = distinct !DIAssignID()
!4191 = !DILocation(line: 0, scope: !4184)
!4192 = !DILocation(line: 185, column: 26, scope: !3989, inlinedAt: !4193)
!4193 = distinct !DILocation(line: 1000, column: 13, scope: !4184)
!4194 = !DILocation(line: 999, column: 3, scope: !4184)
!4195 = !DILocation(line: 0, scope: !3989, inlinedAt: !4193)
!4196 = !DILocation(line: 186, column: 13, scope: !3999, inlinedAt: !4193)
!4197 = !DILocation(line: 186, column: 7, scope: !3989, inlinedAt: !4193)
!4198 = !DILocation(line: 187, column: 5, scope: !3999, inlinedAt: !4193)
!4199 = !{!4200}
!4200 = distinct !{!4200, !4201, !"quoting_options_from_style: argument 0"}
!4201 = distinct !{!4201, !"quoting_options_from_style"}
!4202 = !DILocation(line: 1000, column: 13, scope: !4184)
!4203 = distinct !DIAssignID()
!4204 = distinct !DIAssignID()
!4205 = !DILocation(line: 0, scope: !3087, inlinedAt: !4206)
!4206 = distinct !DILocation(line: 1001, column: 3, scope: !4184)
!4207 = !DILocation(line: 147, column: 57, scope: !3087, inlinedAt: !4206)
!4208 = !DILocation(line: 149, column: 21, scope: !3087, inlinedAt: !4206)
!4209 = !DILocation(line: 150, column: 6, scope: !3087, inlinedAt: !4206)
!4210 = distinct !DIAssignID()
!4211 = !DILocation(line: 1002, column: 10, scope: !4184)
!4212 = !DILocation(line: 1003, column: 1, scope: !4184)
!4213 = !DILocation(line: 1002, column: 3, scope: !4184)
!4214 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !786, file: !786, line: 1006, type: !4215, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4217)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!107, !77, !113, !113, !113}
!4217 = !{!4218, !4219, !4220, !4221}
!4218 = !DILocalVariable(name: "n", arg: 1, scope: !4214, file: !786, line: 1006, type: !77)
!4219 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4214, file: !786, line: 1006, type: !113)
!4220 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4214, file: !786, line: 1007, type: !113)
!4221 = !DILocalVariable(name: "arg", arg: 4, scope: !4214, file: !786, line: 1007, type: !113)
!4222 = distinct !DIAssignID()
!4223 = !DILocation(line: 0, scope: !4214)
!4224 = !DILocalVariable(name: "o", scope: !4225, file: !786, line: 1018, type: !827)
!4225 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !786, file: !786, line: 1014, type: !4226, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4228)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!107, !77, !113, !113, !113, !110}
!4228 = !{!4229, !4230, !4231, !4232, !4233, !4224}
!4229 = !DILocalVariable(name: "n", arg: 1, scope: !4225, file: !786, line: 1014, type: !77)
!4230 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4225, file: !786, line: 1014, type: !113)
!4231 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4225, file: !786, line: 1015, type: !113)
!4232 = !DILocalVariable(name: "arg", arg: 4, scope: !4225, file: !786, line: 1016, type: !113)
!4233 = !DILocalVariable(name: "argsize", arg: 5, scope: !4225, file: !786, line: 1016, type: !110)
!4234 = !DILocation(line: 0, scope: !4225, inlinedAt: !4235)
!4235 = distinct !DILocation(line: 1009, column: 10, scope: !4214)
!4236 = !DILocation(line: 1018, column: 3, scope: !4225, inlinedAt: !4235)
!4237 = !DILocation(line: 1018, column: 30, scope: !4225, inlinedAt: !4235)
!4238 = distinct !DIAssignID()
!4239 = distinct !DIAssignID()
!4240 = !DILocation(line: 0, scope: !3127, inlinedAt: !4241)
!4241 = distinct !DILocation(line: 1019, column: 3, scope: !4225, inlinedAt: !4235)
!4242 = !DILocation(line: 174, column: 12, scope: !3127, inlinedAt: !4241)
!4243 = distinct !DIAssignID()
!4244 = !DILocation(line: 175, column: 8, scope: !3140, inlinedAt: !4241)
!4245 = !DILocation(line: 175, column: 19, scope: !3140, inlinedAt: !4241)
!4246 = !DILocation(line: 176, column: 5, scope: !3140, inlinedAt: !4241)
!4247 = !DILocation(line: 177, column: 6, scope: !3127, inlinedAt: !4241)
!4248 = !DILocation(line: 177, column: 17, scope: !3127, inlinedAt: !4241)
!4249 = distinct !DIAssignID()
!4250 = !DILocation(line: 178, column: 6, scope: !3127, inlinedAt: !4241)
!4251 = !DILocation(line: 178, column: 18, scope: !3127, inlinedAt: !4241)
!4252 = distinct !DIAssignID()
!4253 = !DILocation(line: 1020, column: 10, scope: !4225, inlinedAt: !4235)
!4254 = !DILocation(line: 1021, column: 1, scope: !4225, inlinedAt: !4235)
!4255 = !DILocation(line: 1009, column: 3, scope: !4214)
!4256 = distinct !DIAssignID()
!4257 = !DILocation(line: 0, scope: !4225)
!4258 = !DILocation(line: 1018, column: 3, scope: !4225)
!4259 = !DILocation(line: 1018, column: 30, scope: !4225)
!4260 = distinct !DIAssignID()
!4261 = distinct !DIAssignID()
!4262 = !DILocation(line: 0, scope: !3127, inlinedAt: !4263)
!4263 = distinct !DILocation(line: 1019, column: 3, scope: !4225)
!4264 = !DILocation(line: 174, column: 12, scope: !3127, inlinedAt: !4263)
!4265 = distinct !DIAssignID()
!4266 = !DILocation(line: 175, column: 8, scope: !3140, inlinedAt: !4263)
!4267 = !DILocation(line: 175, column: 19, scope: !3140, inlinedAt: !4263)
!4268 = !DILocation(line: 176, column: 5, scope: !3140, inlinedAt: !4263)
!4269 = !DILocation(line: 177, column: 6, scope: !3127, inlinedAt: !4263)
!4270 = !DILocation(line: 177, column: 17, scope: !3127, inlinedAt: !4263)
!4271 = distinct !DIAssignID()
!4272 = !DILocation(line: 178, column: 6, scope: !3127, inlinedAt: !4263)
!4273 = !DILocation(line: 178, column: 18, scope: !3127, inlinedAt: !4263)
!4274 = distinct !DIAssignID()
!4275 = !DILocation(line: 1020, column: 10, scope: !4225)
!4276 = !DILocation(line: 1021, column: 1, scope: !4225)
!4277 = !DILocation(line: 1020, column: 3, scope: !4225)
!4278 = distinct !DISubprogram(name: "quotearg_custom", scope: !786, file: !786, line: 1024, type: !4279, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4281)
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!107, !113, !113, !113}
!4281 = !{!4282, !4283, !4284}
!4282 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4278, file: !786, line: 1024, type: !113)
!4283 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4278, file: !786, line: 1024, type: !113)
!4284 = !DILocalVariable(name: "arg", arg: 3, scope: !4278, file: !786, line: 1025, type: !113)
!4285 = distinct !DIAssignID()
!4286 = !DILocation(line: 0, scope: !4278)
!4287 = !DILocation(line: 0, scope: !4214, inlinedAt: !4288)
!4288 = distinct !DILocation(line: 1027, column: 10, scope: !4278)
!4289 = !DILocation(line: 0, scope: !4225, inlinedAt: !4290)
!4290 = distinct !DILocation(line: 1009, column: 10, scope: !4214, inlinedAt: !4288)
!4291 = !DILocation(line: 1018, column: 3, scope: !4225, inlinedAt: !4290)
!4292 = !DILocation(line: 1018, column: 30, scope: !4225, inlinedAt: !4290)
!4293 = distinct !DIAssignID()
!4294 = distinct !DIAssignID()
!4295 = !DILocation(line: 0, scope: !3127, inlinedAt: !4296)
!4296 = distinct !DILocation(line: 1019, column: 3, scope: !4225, inlinedAt: !4290)
!4297 = !DILocation(line: 174, column: 12, scope: !3127, inlinedAt: !4296)
!4298 = distinct !DIAssignID()
!4299 = !DILocation(line: 175, column: 8, scope: !3140, inlinedAt: !4296)
!4300 = !DILocation(line: 175, column: 19, scope: !3140, inlinedAt: !4296)
!4301 = !DILocation(line: 176, column: 5, scope: !3140, inlinedAt: !4296)
!4302 = !DILocation(line: 177, column: 6, scope: !3127, inlinedAt: !4296)
!4303 = !DILocation(line: 177, column: 17, scope: !3127, inlinedAt: !4296)
!4304 = distinct !DIAssignID()
!4305 = !DILocation(line: 178, column: 6, scope: !3127, inlinedAt: !4296)
!4306 = !DILocation(line: 178, column: 18, scope: !3127, inlinedAt: !4296)
!4307 = distinct !DIAssignID()
!4308 = !DILocation(line: 1020, column: 10, scope: !4225, inlinedAt: !4290)
!4309 = !DILocation(line: 1021, column: 1, scope: !4225, inlinedAt: !4290)
!4310 = !DILocation(line: 1027, column: 3, scope: !4278)
!4311 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !786, file: !786, line: 1031, type: !4312, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4314)
!4312 = !DISubroutineType(types: !4313)
!4313 = !{!107, !113, !113, !113, !110}
!4314 = !{!4315, !4316, !4317, !4318}
!4315 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4311, file: !786, line: 1031, type: !113)
!4316 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4311, file: !786, line: 1031, type: !113)
!4317 = !DILocalVariable(name: "arg", arg: 3, scope: !4311, file: !786, line: 1032, type: !113)
!4318 = !DILocalVariable(name: "argsize", arg: 4, scope: !4311, file: !786, line: 1032, type: !110)
!4319 = distinct !DIAssignID()
!4320 = !DILocation(line: 0, scope: !4311)
!4321 = !DILocation(line: 0, scope: !4225, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 1034, column: 10, scope: !4311)
!4323 = !DILocation(line: 1018, column: 3, scope: !4225, inlinedAt: !4322)
!4324 = !DILocation(line: 1018, column: 30, scope: !4225, inlinedAt: !4322)
!4325 = distinct !DIAssignID()
!4326 = distinct !DIAssignID()
!4327 = !DILocation(line: 0, scope: !3127, inlinedAt: !4328)
!4328 = distinct !DILocation(line: 1019, column: 3, scope: !4225, inlinedAt: !4322)
!4329 = !DILocation(line: 174, column: 12, scope: !3127, inlinedAt: !4328)
!4330 = distinct !DIAssignID()
!4331 = !DILocation(line: 175, column: 8, scope: !3140, inlinedAt: !4328)
!4332 = !DILocation(line: 175, column: 19, scope: !3140, inlinedAt: !4328)
!4333 = !DILocation(line: 176, column: 5, scope: !3140, inlinedAt: !4328)
!4334 = !DILocation(line: 177, column: 6, scope: !3127, inlinedAt: !4328)
!4335 = !DILocation(line: 177, column: 17, scope: !3127, inlinedAt: !4328)
!4336 = distinct !DIAssignID()
!4337 = !DILocation(line: 178, column: 6, scope: !3127, inlinedAt: !4328)
!4338 = !DILocation(line: 178, column: 18, scope: !3127, inlinedAt: !4328)
!4339 = distinct !DIAssignID()
!4340 = !DILocation(line: 1020, column: 10, scope: !4225, inlinedAt: !4322)
!4341 = !DILocation(line: 1021, column: 1, scope: !4225, inlinedAt: !4322)
!4342 = !DILocation(line: 1034, column: 3, scope: !4311)
!4343 = distinct !DISubprogram(name: "quote_n_mem", scope: !786, file: !786, line: 1049, type: !4344, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4346)
!4344 = !DISubroutineType(types: !4345)
!4345 = !{!113, !77, !113, !110}
!4346 = !{!4347, !4348, !4349}
!4347 = !DILocalVariable(name: "n", arg: 1, scope: !4343, file: !786, line: 1049, type: !77)
!4348 = !DILocalVariable(name: "arg", arg: 2, scope: !4343, file: !786, line: 1049, type: !113)
!4349 = !DILocalVariable(name: "argsize", arg: 3, scope: !4343, file: !786, line: 1049, type: !110)
!4350 = !DILocation(line: 0, scope: !4343)
!4351 = !DILocation(line: 1051, column: 10, scope: !4343)
!4352 = !DILocation(line: 1051, column: 3, scope: !4343)
!4353 = distinct !DISubprogram(name: "quote_mem", scope: !786, file: !786, line: 1055, type: !4354, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4356)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!113, !113, !110}
!4356 = !{!4357, !4358}
!4357 = !DILocalVariable(name: "arg", arg: 1, scope: !4353, file: !786, line: 1055, type: !113)
!4358 = !DILocalVariable(name: "argsize", arg: 2, scope: !4353, file: !786, line: 1055, type: !110)
!4359 = !DILocation(line: 0, scope: !4353)
!4360 = !DILocation(line: 0, scope: !4343, inlinedAt: !4361)
!4361 = distinct !DILocation(line: 1057, column: 10, scope: !4353)
!4362 = !DILocation(line: 1051, column: 10, scope: !4343, inlinedAt: !4361)
!4363 = !DILocation(line: 1057, column: 3, scope: !4353)
!4364 = distinct !DISubprogram(name: "quote_n", scope: !786, file: !786, line: 1061, type: !4365, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4367)
!4365 = !DISubroutineType(types: !4366)
!4366 = !{!113, !77, !113}
!4367 = !{!4368, !4369}
!4368 = !DILocalVariable(name: "n", arg: 1, scope: !4364, file: !786, line: 1061, type: !77)
!4369 = !DILocalVariable(name: "arg", arg: 2, scope: !4364, file: !786, line: 1061, type: !113)
!4370 = !DILocation(line: 0, scope: !4364)
!4371 = !DILocation(line: 0, scope: !4343, inlinedAt: !4372)
!4372 = distinct !DILocation(line: 1063, column: 10, scope: !4364)
!4373 = !DILocation(line: 1051, column: 10, scope: !4343, inlinedAt: !4372)
!4374 = !DILocation(line: 1063, column: 3, scope: !4364)
!4375 = distinct !DISubprogram(name: "quote", scope: !786, file: !786, line: 1067, type: !4376, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4378)
!4376 = !DISubroutineType(types: !4377)
!4377 = !{!113, !113}
!4378 = !{!4379}
!4379 = !DILocalVariable(name: "arg", arg: 1, scope: !4375, file: !786, line: 1067, type: !113)
!4380 = !DILocation(line: 0, scope: !4375)
!4381 = !DILocation(line: 0, scope: !4364, inlinedAt: !4382)
!4382 = distinct !DILocation(line: 1069, column: 10, scope: !4375)
!4383 = !DILocation(line: 0, scope: !4343, inlinedAt: !4384)
!4384 = distinct !DILocation(line: 1063, column: 10, scope: !4364, inlinedAt: !4382)
!4385 = !DILocation(line: 1051, column: 10, scope: !4343, inlinedAt: !4384)
!4386 = !DILocation(line: 1069, column: 3, scope: !4375)
!4387 = distinct !DISubprogram(name: "version_etc_arn", scope: !888, file: !888, line: 61, type: !4388, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1018, retainedNodes: !4425)
!4388 = !DISubroutineType(types: !4389)
!4389 = !{null, !4390, !113, !113, !113, !4424, !110}
!4390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4391, size: 64)
!4391 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !4392)
!4392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !4393)
!4393 = !{!4394, !4395, !4396, !4397, !4398, !4399, !4400, !4401, !4402, !4403, !4404, !4405, !4406, !4407, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423}
!4394 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4392, file: !171, line: 51, baseType: !77, size: 32)
!4395 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4392, file: !171, line: 54, baseType: !107, size: 64, offset: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4392, file: !171, line: 55, baseType: !107, size: 64, offset: 128)
!4397 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4392, file: !171, line: 56, baseType: !107, size: 64, offset: 192)
!4398 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4392, file: !171, line: 57, baseType: !107, size: 64, offset: 256)
!4399 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4392, file: !171, line: 58, baseType: !107, size: 64, offset: 320)
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4392, file: !171, line: 59, baseType: !107, size: 64, offset: 384)
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4392, file: !171, line: 60, baseType: !107, size: 64, offset: 448)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4392, file: !171, line: 61, baseType: !107, size: 64, offset: 512)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4392, file: !171, line: 64, baseType: !107, size: 64, offset: 576)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4392, file: !171, line: 65, baseType: !107, size: 64, offset: 640)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4392, file: !171, line: 66, baseType: !107, size: 64, offset: 704)
!4406 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4392, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!4407 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4392, file: !171, line: 70, baseType: !4408, size: 64, offset: 832)
!4408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4392, size: 64)
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4392, file: !171, line: 72, baseType: !77, size: 32, offset: 896)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4392, file: !171, line: 73, baseType: !77, size: 32, offset: 928)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4392, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4392, file: !171, line: 77, baseType: !109, size: 16, offset: 1024)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4392, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4392, file: !171, line: 79, baseType: !49, size: 8, offset: 1048)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4392, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4392, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4392, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4392, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4392, file: !171, line: 93, baseType: !4408, size: 64, offset: 1344)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4392, file: !171, line: 94, baseType: !108, size: 64, offset: 1408)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4392, file: !171, line: 95, baseType: !110, size: 64, offset: 1472)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4392, file: !171, line: 96, baseType: !77, size: 32, offset: 1536)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4392, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!4425 = !{!4426, !4427, !4428, !4429, !4430, !4431}
!4426 = !DILocalVariable(name: "stream", arg: 1, scope: !4387, file: !888, line: 61, type: !4390)
!4427 = !DILocalVariable(name: "command_name", arg: 2, scope: !4387, file: !888, line: 62, type: !113)
!4428 = !DILocalVariable(name: "package", arg: 3, scope: !4387, file: !888, line: 62, type: !113)
!4429 = !DILocalVariable(name: "version", arg: 4, scope: !4387, file: !888, line: 63, type: !113)
!4430 = !DILocalVariable(name: "authors", arg: 5, scope: !4387, file: !888, line: 64, type: !4424)
!4431 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4387, file: !888, line: 64, type: !110)
!4432 = !DILocation(line: 0, scope: !4387)
!4433 = !DILocation(line: 66, column: 7, scope: !4434)
!4434 = distinct !DILexicalBlock(scope: !4387, file: !888, line: 66, column: 7)
!4435 = !DILocation(line: 66, column: 7, scope: !4387)
!4436 = !DILocation(line: 67, column: 5, scope: !4434)
!4437 = !DILocation(line: 69, column: 5, scope: !4434)
!4438 = !DILocation(line: 83, column: 3, scope: !4387)
!4439 = !DILocation(line: 85, column: 3, scope: !4387)
!4440 = !DILocation(line: 88, column: 3, scope: !4387)
!4441 = !DILocation(line: 95, column: 3, scope: !4387)
!4442 = !DILocation(line: 97, column: 3, scope: !4387)
!4443 = !DILocation(line: 105, column: 7, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4387, file: !888, line: 98, column: 5)
!4445 = !DILocation(line: 106, column: 7, scope: !4444)
!4446 = !DILocation(line: 109, column: 7, scope: !4444)
!4447 = !DILocation(line: 110, column: 7, scope: !4444)
!4448 = !DILocation(line: 113, column: 7, scope: !4444)
!4449 = !DILocation(line: 115, column: 7, scope: !4444)
!4450 = !DILocation(line: 120, column: 7, scope: !4444)
!4451 = !DILocation(line: 122, column: 7, scope: !4444)
!4452 = !DILocation(line: 127, column: 7, scope: !4444)
!4453 = !DILocation(line: 129, column: 7, scope: !4444)
!4454 = !DILocation(line: 134, column: 7, scope: !4444)
!4455 = !DILocation(line: 137, column: 7, scope: !4444)
!4456 = !DILocation(line: 142, column: 7, scope: !4444)
!4457 = !DILocation(line: 145, column: 7, scope: !4444)
!4458 = !DILocation(line: 150, column: 7, scope: !4444)
!4459 = !DILocation(line: 154, column: 7, scope: !4444)
!4460 = !DILocation(line: 159, column: 7, scope: !4444)
!4461 = !DILocation(line: 163, column: 7, scope: !4444)
!4462 = !DILocation(line: 170, column: 7, scope: !4444)
!4463 = !DILocation(line: 174, column: 7, scope: !4444)
!4464 = !DILocation(line: 176, column: 1, scope: !4387)
!4465 = distinct !DISubprogram(name: "version_etc_ar", scope: !888, file: !888, line: 183, type: !4466, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1018, retainedNodes: !4468)
!4466 = !DISubroutineType(types: !4467)
!4467 = !{null, !4390, !113, !113, !113, !4424}
!4468 = !{!4469, !4470, !4471, !4472, !4473, !4474}
!4469 = !DILocalVariable(name: "stream", arg: 1, scope: !4465, file: !888, line: 183, type: !4390)
!4470 = !DILocalVariable(name: "command_name", arg: 2, scope: !4465, file: !888, line: 184, type: !113)
!4471 = !DILocalVariable(name: "package", arg: 3, scope: !4465, file: !888, line: 184, type: !113)
!4472 = !DILocalVariable(name: "version", arg: 4, scope: !4465, file: !888, line: 185, type: !113)
!4473 = !DILocalVariable(name: "authors", arg: 5, scope: !4465, file: !888, line: 185, type: !4424)
!4474 = !DILocalVariable(name: "n_authors", scope: !4465, file: !888, line: 187, type: !110)
!4475 = !DILocation(line: 0, scope: !4465)
!4476 = !DILocation(line: 189, column: 8, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4465, file: !888, line: 189, column: 3)
!4478 = !DILocation(line: 189, scope: !4477)
!4479 = !DILocation(line: 189, column: 23, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4477, file: !888, line: 189, column: 3)
!4481 = !DILocation(line: 189, column: 3, scope: !4477)
!4482 = !DILocation(line: 189, column: 52, scope: !4480)
!4483 = distinct !{!4483, !4481, !4484, !1210}
!4484 = !DILocation(line: 190, column: 5, scope: !4477)
!4485 = !DILocation(line: 191, column: 3, scope: !4465)
!4486 = !DILocation(line: 192, column: 1, scope: !4465)
!4487 = distinct !DISubprogram(name: "version_etc_va", scope: !888, file: !888, line: 199, type: !4488, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1018, retainedNodes: !4497)
!4488 = !DISubroutineType(types: !4489)
!4489 = !{null, !4390, !113, !113, !113, !4490}
!4490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4491, size: 64)
!4491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4492)
!4492 = !{!4493, !4494, !4495, !4496}
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4491, file: !888, line: 192, baseType: !72, size: 32)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4491, file: !888, line: 192, baseType: !72, size: 32, offset: 32)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4491, file: !888, line: 192, baseType: !108, size: 64, offset: 64)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4491, file: !888, line: 192, baseType: !108, size: 64, offset: 128)
!4497 = !{!4498, !4499, !4500, !4501, !4502, !4503, !4504}
!4498 = !DILocalVariable(name: "stream", arg: 1, scope: !4487, file: !888, line: 199, type: !4390)
!4499 = !DILocalVariable(name: "command_name", arg: 2, scope: !4487, file: !888, line: 200, type: !113)
!4500 = !DILocalVariable(name: "package", arg: 3, scope: !4487, file: !888, line: 200, type: !113)
!4501 = !DILocalVariable(name: "version", arg: 4, scope: !4487, file: !888, line: 201, type: !113)
!4502 = !DILocalVariable(name: "authors", arg: 5, scope: !4487, file: !888, line: 201, type: !4490)
!4503 = !DILocalVariable(name: "n_authors", scope: !4487, file: !888, line: 203, type: !110)
!4504 = !DILocalVariable(name: "authtab", scope: !4487, file: !888, line: 204, type: !4505)
!4505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 640, elements: !55)
!4506 = distinct !DIAssignID()
!4507 = !DILocation(line: 0, scope: !4487)
!4508 = !DILocation(line: 204, column: 3, scope: !4487)
!4509 = !DILocation(line: 208, column: 35, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4511, file: !888, line: 206, column: 3)
!4511 = distinct !DILexicalBlock(scope: !4487, file: !888, line: 206, column: 3)
!4512 = !DILocation(line: 208, column: 33, scope: !4510)
!4513 = !DILocation(line: 208, column: 67, scope: !4510)
!4514 = !DILocation(line: 206, column: 3, scope: !4511)
!4515 = !DILocation(line: 208, column: 14, scope: !4510)
!4516 = !DILocation(line: 0, scope: !4511)
!4517 = !DILocation(line: 211, column: 3, scope: !4487)
!4518 = !DILocation(line: 213, column: 1, scope: !4487)
!4519 = distinct !DISubprogram(name: "version_etc", scope: !888, file: !888, line: 230, type: !4520, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1018, retainedNodes: !4522)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{null, !4390, !113, !113, !113, null}
!4522 = !{!4523, !4524, !4525, !4526, !4527}
!4523 = !DILocalVariable(name: "stream", arg: 1, scope: !4519, file: !888, line: 230, type: !4390)
!4524 = !DILocalVariable(name: "command_name", arg: 2, scope: !4519, file: !888, line: 231, type: !113)
!4525 = !DILocalVariable(name: "package", arg: 3, scope: !4519, file: !888, line: 231, type: !113)
!4526 = !DILocalVariable(name: "version", arg: 4, scope: !4519, file: !888, line: 232, type: !113)
!4527 = !DILocalVariable(name: "authors", scope: !4519, file: !888, line: 234, type: !4528)
!4528 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1158, line: 52, baseType: !4529)
!4529 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2593, line: 12, baseType: !4530)
!4530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !888, baseType: !4531)
!4531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4491, size: 192, elements: !50)
!4532 = distinct !DIAssignID()
!4533 = !DILocation(line: 0, scope: !4519)
!4534 = !DILocation(line: 234, column: 3, scope: !4519)
!4535 = !DILocation(line: 235, column: 3, scope: !4519)
!4536 = !DILocation(line: 236, column: 3, scope: !4519)
!4537 = !DILocation(line: 237, column: 3, scope: !4519)
!4538 = !DILocation(line: 238, column: 1, scope: !4519)
!4539 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !888, file: !888, line: 241, type: !356, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1018)
!4540 = !DILocation(line: 243, column: 3, scope: !4539)
!4541 = !DILocation(line: 248, column: 3, scope: !4539)
!4542 = !DILocation(line: 254, column: 3, scope: !4539)
!4543 = !DILocation(line: 259, column: 3, scope: !4539)
!4544 = !DILocation(line: 261, column: 1, scope: !4539)
!4545 = distinct !DISubprogram(name: "xnrealloc", scope: !4546, file: !4546, line: 147, type: !4547, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4549)
!4546 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!108, !108, !110, !110}
!4549 = !{!4550, !4551, !4552}
!4550 = !DILocalVariable(name: "p", arg: 1, scope: !4545, file: !4546, line: 147, type: !108)
!4551 = !DILocalVariable(name: "n", arg: 2, scope: !4545, file: !4546, line: 147, type: !110)
!4552 = !DILocalVariable(name: "s", arg: 3, scope: !4545, file: !4546, line: 147, type: !110)
!4553 = !DILocation(line: 0, scope: !4545)
!4554 = !DILocalVariable(name: "p", arg: 1, scope: !4555, file: !1025, line: 83, type: !108)
!4555 = distinct !DISubprogram(name: "xreallocarray", scope: !1025, file: !1025, line: 83, type: !4547, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4556)
!4556 = !{!4554, !4557, !4558}
!4557 = !DILocalVariable(name: "n", arg: 2, scope: !4555, file: !1025, line: 83, type: !110)
!4558 = !DILocalVariable(name: "s", arg: 3, scope: !4555, file: !1025, line: 83, type: !110)
!4559 = !DILocation(line: 0, scope: !4555, inlinedAt: !4560)
!4560 = distinct !DILocation(line: 149, column: 10, scope: !4545)
!4561 = !DILocation(line: 85, column: 25, scope: !4555, inlinedAt: !4560)
!4562 = !DILocalVariable(name: "p", arg: 1, scope: !4563, file: !1025, line: 37, type: !108)
!4563 = distinct !DISubprogram(name: "check_nonnull", scope: !1025, file: !1025, line: 37, type: !4564, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4566)
!4564 = !DISubroutineType(types: !4565)
!4565 = !{!108, !108}
!4566 = !{!4562}
!4567 = !DILocation(line: 0, scope: !4563, inlinedAt: !4568)
!4568 = distinct !DILocation(line: 85, column: 10, scope: !4555, inlinedAt: !4560)
!4569 = !DILocation(line: 39, column: 8, scope: !4570, inlinedAt: !4568)
!4570 = distinct !DILexicalBlock(scope: !4563, file: !1025, line: 39, column: 7)
!4571 = !DILocation(line: 39, column: 7, scope: !4563, inlinedAt: !4568)
!4572 = !DILocation(line: 40, column: 5, scope: !4570, inlinedAt: !4568)
!4573 = !DILocation(line: 149, column: 3, scope: !4545)
!4574 = !DILocation(line: 0, scope: !4555)
!4575 = !DILocation(line: 85, column: 25, scope: !4555)
!4576 = !DILocation(line: 0, scope: !4563, inlinedAt: !4577)
!4577 = distinct !DILocation(line: 85, column: 10, scope: !4555)
!4578 = !DILocation(line: 39, column: 8, scope: !4570, inlinedAt: !4577)
!4579 = !DILocation(line: 39, column: 7, scope: !4563, inlinedAt: !4577)
!4580 = !DILocation(line: 40, column: 5, scope: !4570, inlinedAt: !4577)
!4581 = !DILocation(line: 85, column: 3, scope: !4555)
!4582 = distinct !DISubprogram(name: "xmalloc", scope: !1025, file: !1025, line: 47, type: !4583, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4585)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!108, !110}
!4585 = !{!4586}
!4586 = !DILocalVariable(name: "s", arg: 1, scope: !4582, file: !1025, line: 47, type: !110)
!4587 = !DILocation(line: 0, scope: !4582)
!4588 = !DILocation(line: 49, column: 25, scope: !4582)
!4589 = !DILocation(line: 0, scope: !4563, inlinedAt: !4590)
!4590 = distinct !DILocation(line: 49, column: 10, scope: !4582)
!4591 = !DILocation(line: 39, column: 8, scope: !4570, inlinedAt: !4590)
!4592 = !DILocation(line: 39, column: 7, scope: !4563, inlinedAt: !4590)
!4593 = !DILocation(line: 40, column: 5, scope: !4570, inlinedAt: !4590)
!4594 = !DILocation(line: 49, column: 3, scope: !4582)
!4595 = !DISubprogram(name: "malloc", scope: !1287, file: !1287, line: 540, type: !4583, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4596 = distinct !DISubprogram(name: "ximalloc", scope: !1025, file: !1025, line: 53, type: !4597, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4599)
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!108, !1044}
!4599 = !{!4600}
!4600 = !DILocalVariable(name: "s", arg: 1, scope: !4596, file: !1025, line: 53, type: !1044)
!4601 = !DILocation(line: 0, scope: !4596)
!4602 = !DILocalVariable(name: "s", arg: 1, scope: !4603, file: !4604, line: 55, type: !1044)
!4603 = distinct !DISubprogram(name: "imalloc", scope: !4604, file: !4604, line: 55, type: !4597, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4605)
!4604 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4605 = !{!4602}
!4606 = !DILocation(line: 0, scope: !4603, inlinedAt: !4607)
!4607 = distinct !DILocation(line: 55, column: 25, scope: !4596)
!4608 = !DILocation(line: 57, column: 26, scope: !4603, inlinedAt: !4607)
!4609 = !DILocation(line: 0, scope: !4563, inlinedAt: !4610)
!4610 = distinct !DILocation(line: 55, column: 10, scope: !4596)
!4611 = !DILocation(line: 39, column: 8, scope: !4570, inlinedAt: !4610)
!4612 = !DILocation(line: 39, column: 7, scope: !4563, inlinedAt: !4610)
!4613 = !DILocation(line: 40, column: 5, scope: !4570, inlinedAt: !4610)
!4614 = !DILocation(line: 55, column: 3, scope: !4596)
!4615 = distinct !DISubprogram(name: "xcharalloc", scope: !1025, file: !1025, line: 59, type: !4616, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4618)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!107, !110}
!4618 = !{!4619}
!4619 = !DILocalVariable(name: "n", arg: 1, scope: !4615, file: !1025, line: 59, type: !110)
!4620 = !DILocation(line: 0, scope: !4615)
!4621 = !DILocation(line: 0, scope: !4582, inlinedAt: !4622)
!4622 = distinct !DILocation(line: 61, column: 10, scope: !4615)
!4623 = !DILocation(line: 49, column: 25, scope: !4582, inlinedAt: !4622)
!4624 = !DILocation(line: 0, scope: !4563, inlinedAt: !4625)
!4625 = distinct !DILocation(line: 49, column: 10, scope: !4582, inlinedAt: !4622)
!4626 = !DILocation(line: 39, column: 8, scope: !4570, inlinedAt: !4625)
!4627 = !DILocation(line: 39, column: 7, scope: !4563, inlinedAt: !4625)
!4628 = !DILocation(line: 40, column: 5, scope: !4570, inlinedAt: !4625)
!4629 = !DILocation(line: 61, column: 3, scope: !4615)
!4630 = distinct !DISubprogram(name: "xrealloc", scope: !1025, file: !1025, line: 68, type: !4631, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4633)
!4631 = !DISubroutineType(types: !4632)
!4632 = !{!108, !108, !110}
!4633 = !{!4634, !4635}
!4634 = !DILocalVariable(name: "p", arg: 1, scope: !4630, file: !1025, line: 68, type: !108)
!4635 = !DILocalVariable(name: "s", arg: 2, scope: !4630, file: !1025, line: 68, type: !110)
!4636 = !DILocation(line: 0, scope: !4630)
!4637 = !DILocalVariable(name: "ptr", arg: 1, scope: !4638, file: !4639, line: 2057, type: !108)
!4638 = distinct !DISubprogram(name: "rpl_realloc", scope: !4639, file: !4639, line: 2057, type: !4631, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4640)
!4639 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4640 = !{!4637, !4641}
!4641 = !DILocalVariable(name: "size", arg: 2, scope: !4638, file: !4639, line: 2057, type: !110)
!4642 = !DILocation(line: 0, scope: !4638, inlinedAt: !4643)
!4643 = distinct !DILocation(line: 70, column: 25, scope: !4630)
!4644 = !DILocation(line: 2059, column: 24, scope: !4638, inlinedAt: !4643)
!4645 = !DILocation(line: 2059, column: 10, scope: !4638, inlinedAt: !4643)
!4646 = !DILocation(line: 0, scope: !4563, inlinedAt: !4647)
!4647 = distinct !DILocation(line: 70, column: 10, scope: !4630)
!4648 = !DILocation(line: 39, column: 8, scope: !4570, inlinedAt: !4647)
!4649 = !DILocation(line: 39, column: 7, scope: !4563, inlinedAt: !4647)
!4650 = !DILocation(line: 40, column: 5, scope: !4570, inlinedAt: !4647)
!4651 = !DILocation(line: 70, column: 3, scope: !4630)
!4652 = !DISubprogram(name: "realloc", scope: !1287, file: !1287, line: 551, type: !4631, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4653 = distinct !DISubprogram(name: "xirealloc", scope: !1025, file: !1025, line: 74, type: !4654, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4656)
!4654 = !DISubroutineType(types: !4655)
!4655 = !{!108, !108, !1044}
!4656 = !{!4657, !4658}
!4657 = !DILocalVariable(name: "p", arg: 1, scope: !4653, file: !1025, line: 74, type: !108)
!4658 = !DILocalVariable(name: "s", arg: 2, scope: !4653, file: !1025, line: 74, type: !1044)
!4659 = !DILocation(line: 0, scope: !4653)
!4660 = !DILocalVariable(name: "p", arg: 1, scope: !4661, file: !4604, line: 66, type: !108)
!4661 = distinct !DISubprogram(name: "irealloc", scope: !4604, file: !4604, line: 66, type: !4654, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4662)
!4662 = !{!4660, !4663}
!4663 = !DILocalVariable(name: "s", arg: 2, scope: !4661, file: !4604, line: 66, type: !1044)
!4664 = !DILocation(line: 0, scope: !4661, inlinedAt: !4665)
!4665 = distinct !DILocation(line: 76, column: 25, scope: !4653)
!4666 = !DILocation(line: 0, scope: !4638, inlinedAt: !4667)
!4667 = distinct !DILocation(line: 68, column: 26, scope: !4661, inlinedAt: !4665)
!4668 = !DILocation(line: 2059, column: 24, scope: !4638, inlinedAt: !4667)
!4669 = !DILocation(line: 2059, column: 10, scope: !4638, inlinedAt: !4667)
!4670 = !DILocation(line: 0, scope: !4563, inlinedAt: !4671)
!4671 = distinct !DILocation(line: 76, column: 10, scope: !4653)
!4672 = !DILocation(line: 39, column: 8, scope: !4570, inlinedAt: !4671)
!4673 = !DILocation(line: 39, column: 7, scope: !4563, inlinedAt: !4671)
!4674 = !DILocation(line: 40, column: 5, scope: !4570, inlinedAt: !4671)
!4675 = !DILocation(line: 76, column: 3, scope: !4653)
!4676 = distinct !DISubprogram(name: "xireallocarray", scope: !1025, file: !1025, line: 89, type: !4677, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4679)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{!108, !108, !1044, !1044}
!4679 = !{!4680, !4681, !4682}
!4680 = !DILocalVariable(name: "p", arg: 1, scope: !4676, file: !1025, line: 89, type: !108)
!4681 = !DILocalVariable(name: "n", arg: 2, scope: !4676, file: !1025, line: 89, type: !1044)
!4682 = !DILocalVariable(name: "s", arg: 3, scope: !4676, file: !1025, line: 89, type: !1044)
!4683 = !DILocation(line: 0, scope: !4676)
!4684 = !DILocalVariable(name: "p", arg: 1, scope: !4685, file: !4604, line: 98, type: !108)
!4685 = distinct !DISubprogram(name: "ireallocarray", scope: !4604, file: !4604, line: 98, type: !4677, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4686)
!4686 = !{!4684, !4687, !4688}
!4687 = !DILocalVariable(name: "n", arg: 2, scope: !4685, file: !4604, line: 98, type: !1044)
!4688 = !DILocalVariable(name: "s", arg: 3, scope: !4685, file: !4604, line: 98, type: !1044)
!4689 = !DILocation(line: 0, scope: !4685, inlinedAt: !4690)
!4690 = distinct !DILocation(line: 91, column: 25, scope: !4676)
!4691 = !DILocation(line: 101, column: 13, scope: !4685, inlinedAt: !4690)
!4692 = !DILocation(line: 0, scope: !4563, inlinedAt: !4693)
!4693 = distinct !DILocation(line: 91, column: 10, scope: !4676)
!4694 = !DILocation(line: 39, column: 8, scope: !4570, inlinedAt: !4693)
!4695 = !DILocation(line: 39, column: 7, scope: !4563, inlinedAt: !4693)
!4696 = !DILocation(line: 40, column: 5, scope: !4570, inlinedAt: !4693)
!4697 = !DILocation(line: 91, column: 3, scope: !4676)
!4698 = distinct !DISubprogram(name: "xnmalloc", scope: !1025, file: !1025, line: 98, type: !4699, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4701)
!4699 = !DISubroutineType(types: !4700)
!4700 = !{!108, !110, !110}
!4701 = !{!4702, !4703}
!4702 = !DILocalVariable(name: "n", arg: 1, scope: !4698, file: !1025, line: 98, type: !110)
!4703 = !DILocalVariable(name: "s", arg: 2, scope: !4698, file: !1025, line: 98, type: !110)
!4704 = !DILocation(line: 0, scope: !4698)
!4705 = !DILocation(line: 0, scope: !4555, inlinedAt: !4706)
!4706 = distinct !DILocation(line: 100, column: 10, scope: !4698)
!4707 = !DILocation(line: 85, column: 25, scope: !4555, inlinedAt: !4706)
!4708 = !DILocation(line: 0, scope: !4563, inlinedAt: !4709)
!4709 = distinct !DILocation(line: 85, column: 10, scope: !4555, inlinedAt: !4706)
!4710 = !DILocation(line: 39, column: 8, scope: !4570, inlinedAt: !4709)
!4711 = !DILocation(line: 39, column: 7, scope: !4563, inlinedAt: !4709)
!4712 = !DILocation(line: 40, column: 5, scope: !4570, inlinedAt: !4709)
!4713 = !DILocation(line: 100, column: 3, scope: !4698)
!4714 = distinct !DISubprogram(name: "xinmalloc", scope: !1025, file: !1025, line: 104, type: !4715, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4717)
!4715 = !DISubroutineType(types: !4716)
!4716 = !{!108, !1044, !1044}
!4717 = !{!4718, !4719}
!4718 = !DILocalVariable(name: "n", arg: 1, scope: !4714, file: !1025, line: 104, type: !1044)
!4719 = !DILocalVariable(name: "s", arg: 2, scope: !4714, file: !1025, line: 104, type: !1044)
!4720 = !DILocation(line: 0, scope: !4714)
!4721 = !DILocation(line: 0, scope: !4676, inlinedAt: !4722)
!4722 = distinct !DILocation(line: 106, column: 10, scope: !4714)
!4723 = !DILocation(line: 0, scope: !4685, inlinedAt: !4724)
!4724 = distinct !DILocation(line: 91, column: 25, scope: !4676, inlinedAt: !4722)
!4725 = !DILocation(line: 101, column: 13, scope: !4685, inlinedAt: !4724)
!4726 = !DILocation(line: 0, scope: !4563, inlinedAt: !4727)
!4727 = distinct !DILocation(line: 91, column: 10, scope: !4676, inlinedAt: !4722)
!4728 = !DILocation(line: 39, column: 8, scope: !4570, inlinedAt: !4727)
!4729 = !DILocation(line: 39, column: 7, scope: !4563, inlinedAt: !4727)
!4730 = !DILocation(line: 40, column: 5, scope: !4570, inlinedAt: !4727)
!4731 = !DILocation(line: 106, column: 3, scope: !4714)
!4732 = distinct !DISubprogram(name: "x2realloc", scope: !1025, file: !1025, line: 116, type: !4733, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4735)
!4733 = !DISubroutineType(types: !4734)
!4734 = !{!108, !108, !1031}
!4735 = !{!4736, !4737}
!4736 = !DILocalVariable(name: "p", arg: 1, scope: !4732, file: !1025, line: 116, type: !108)
!4737 = !DILocalVariable(name: "ps", arg: 2, scope: !4732, file: !1025, line: 116, type: !1031)
!4738 = !DILocation(line: 0, scope: !4732)
!4739 = !DILocation(line: 0, scope: !1028, inlinedAt: !4740)
!4740 = distinct !DILocation(line: 118, column: 10, scope: !4732)
!4741 = !DILocation(line: 178, column: 14, scope: !1028, inlinedAt: !4740)
!4742 = !DILocation(line: 180, column: 9, scope: !4743, inlinedAt: !4740)
!4743 = distinct !DILexicalBlock(scope: !1028, file: !1025, line: 180, column: 7)
!4744 = !DILocation(line: 180, column: 7, scope: !1028, inlinedAt: !4740)
!4745 = !DILocation(line: 182, column: 13, scope: !4746, inlinedAt: !4740)
!4746 = distinct !DILexicalBlock(scope: !4747, file: !1025, line: 182, column: 11)
!4747 = distinct !DILexicalBlock(scope: !4743, file: !1025, line: 181, column: 5)
!4748 = !DILocation(line: 182, column: 11, scope: !4747, inlinedAt: !4740)
!4749 = !DILocation(line: 197, column: 11, scope: !4750, inlinedAt: !4740)
!4750 = distinct !DILexicalBlock(scope: !4751, file: !1025, line: 197, column: 11)
!4751 = distinct !DILexicalBlock(scope: !4743, file: !1025, line: 195, column: 5)
!4752 = !DILocation(line: 197, column: 11, scope: !4751, inlinedAt: !4740)
!4753 = !DILocation(line: 198, column: 9, scope: !4750, inlinedAt: !4740)
!4754 = !DILocation(line: 0, scope: !4555, inlinedAt: !4755)
!4755 = distinct !DILocation(line: 201, column: 7, scope: !1028, inlinedAt: !4740)
!4756 = !DILocation(line: 85, column: 25, scope: !4555, inlinedAt: !4755)
!4757 = !DILocation(line: 0, scope: !4563, inlinedAt: !4758)
!4758 = distinct !DILocation(line: 85, column: 10, scope: !4555, inlinedAt: !4755)
!4759 = !DILocation(line: 39, column: 8, scope: !4570, inlinedAt: !4758)
!4760 = !DILocation(line: 39, column: 7, scope: !4563, inlinedAt: !4758)
!4761 = !DILocation(line: 40, column: 5, scope: !4570, inlinedAt: !4758)
!4762 = !DILocation(line: 202, column: 7, scope: !1028, inlinedAt: !4740)
!4763 = !DILocation(line: 118, column: 3, scope: !4732)
!4764 = !DILocation(line: 0, scope: !1028)
!4765 = !DILocation(line: 178, column: 14, scope: !1028)
!4766 = !DILocation(line: 180, column: 9, scope: !4743)
!4767 = !DILocation(line: 180, column: 7, scope: !1028)
!4768 = !DILocation(line: 182, column: 13, scope: !4746)
!4769 = !DILocation(line: 182, column: 11, scope: !4747)
!4770 = !DILocation(line: 190, column: 30, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4746, file: !1025, line: 183, column: 9)
!4772 = !DILocation(line: 191, column: 16, scope: !4771)
!4773 = !DILocation(line: 191, column: 13, scope: !4771)
!4774 = !DILocation(line: 192, column: 9, scope: !4771)
!4775 = !DILocation(line: 197, column: 11, scope: !4750)
!4776 = !DILocation(line: 197, column: 11, scope: !4751)
!4777 = !DILocation(line: 198, column: 9, scope: !4750)
!4778 = !DILocation(line: 0, scope: !4555, inlinedAt: !4779)
!4779 = distinct !DILocation(line: 201, column: 7, scope: !1028)
!4780 = !DILocation(line: 85, column: 25, scope: !4555, inlinedAt: !4779)
!4781 = !DILocation(line: 0, scope: !4563, inlinedAt: !4782)
!4782 = distinct !DILocation(line: 85, column: 10, scope: !4555, inlinedAt: !4779)
!4783 = !DILocation(line: 39, column: 8, scope: !4570, inlinedAt: !4782)
!4784 = !DILocation(line: 39, column: 7, scope: !4563, inlinedAt: !4782)
!4785 = !DILocation(line: 40, column: 5, scope: !4570, inlinedAt: !4782)
!4786 = !DILocation(line: 202, column: 7, scope: !1028)
!4787 = !DILocation(line: 203, column: 3, scope: !1028)
!4788 = !DILocation(line: 0, scope: !1040)
!4789 = !DILocation(line: 230, column: 14, scope: !1040)
!4790 = !DILocation(line: 238, column: 7, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !1040, file: !1025, line: 238, column: 7)
!4792 = !DILocation(line: 238, column: 7, scope: !1040)
!4793 = !DILocation(line: 240, column: 9, scope: !4794)
!4794 = distinct !DILexicalBlock(scope: !1040, file: !1025, line: 240, column: 7)
!4795 = !DILocation(line: 240, column: 18, scope: !4794)
!4796 = !DILocation(line: 253, column: 8, scope: !1040)
!4797 = !DILocation(line: 256, column: 7, scope: !4798)
!4798 = distinct !DILexicalBlock(scope: !1040, file: !1025, line: 256, column: 7)
!4799 = !DILocation(line: 256, column: 7, scope: !1040)
!4800 = !DILocation(line: 258, column: 27, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4798, file: !1025, line: 257, column: 5)
!4802 = !DILocation(line: 259, column: 50, scope: !4801)
!4803 = !DILocation(line: 259, column: 32, scope: !4801)
!4804 = !DILocation(line: 260, column: 5, scope: !4801)
!4805 = !DILocation(line: 262, column: 9, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !1040, file: !1025, line: 262, column: 7)
!4807 = !DILocation(line: 262, column: 7, scope: !1040)
!4808 = !DILocation(line: 263, column: 9, scope: !4806)
!4809 = !DILocation(line: 263, column: 5, scope: !4806)
!4810 = !DILocation(line: 264, column: 9, scope: !4811)
!4811 = distinct !DILexicalBlock(scope: !1040, file: !1025, line: 264, column: 7)
!4812 = !DILocation(line: 264, column: 14, scope: !4811)
!4813 = !DILocation(line: 265, column: 7, scope: !4811)
!4814 = !DILocation(line: 265, column: 11, scope: !4811)
!4815 = !DILocation(line: 266, column: 11, scope: !4811)
!4816 = !DILocation(line: 267, column: 14, scope: !4811)
!4817 = !DILocation(line: 264, column: 7, scope: !1040)
!4818 = !DILocation(line: 268, column: 5, scope: !4811)
!4819 = !DILocation(line: 0, scope: !4630, inlinedAt: !4820)
!4820 = distinct !DILocation(line: 269, column: 8, scope: !1040)
!4821 = !DILocation(line: 0, scope: !4638, inlinedAt: !4822)
!4822 = distinct !DILocation(line: 70, column: 25, scope: !4630, inlinedAt: !4820)
!4823 = !DILocation(line: 2059, column: 24, scope: !4638, inlinedAt: !4822)
!4824 = !DILocation(line: 2059, column: 10, scope: !4638, inlinedAt: !4822)
!4825 = !DILocation(line: 0, scope: !4563, inlinedAt: !4826)
!4826 = distinct !DILocation(line: 70, column: 10, scope: !4630, inlinedAt: !4820)
!4827 = !DILocation(line: 39, column: 8, scope: !4570, inlinedAt: !4826)
!4828 = !DILocation(line: 39, column: 7, scope: !4563, inlinedAt: !4826)
!4829 = !DILocation(line: 40, column: 5, scope: !4570, inlinedAt: !4826)
!4830 = !DILocation(line: 270, column: 7, scope: !1040)
!4831 = !DILocation(line: 271, column: 3, scope: !1040)
!4832 = distinct !DISubprogram(name: "xzalloc", scope: !1025, file: !1025, line: 279, type: !4583, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4833)
!4833 = !{!4834}
!4834 = !DILocalVariable(name: "s", arg: 1, scope: !4832, file: !1025, line: 279, type: !110)
!4835 = !DILocation(line: 0, scope: !4832)
!4836 = !DILocalVariable(name: "n", arg: 1, scope: !4837, file: !1025, line: 294, type: !110)
!4837 = distinct !DISubprogram(name: "xcalloc", scope: !1025, file: !1025, line: 294, type: !4699, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4838)
!4838 = !{!4836, !4839}
!4839 = !DILocalVariable(name: "s", arg: 2, scope: !4837, file: !1025, line: 294, type: !110)
!4840 = !DILocation(line: 0, scope: !4837, inlinedAt: !4841)
!4841 = distinct !DILocation(line: 281, column: 10, scope: !4832)
!4842 = !DILocation(line: 296, column: 25, scope: !4837, inlinedAt: !4841)
!4843 = !DILocation(line: 0, scope: !4563, inlinedAt: !4844)
!4844 = distinct !DILocation(line: 296, column: 10, scope: !4837, inlinedAt: !4841)
!4845 = !DILocation(line: 39, column: 8, scope: !4570, inlinedAt: !4844)
!4846 = !DILocation(line: 39, column: 7, scope: !4563, inlinedAt: !4844)
!4847 = !DILocation(line: 40, column: 5, scope: !4570, inlinedAt: !4844)
!4848 = !DILocation(line: 281, column: 3, scope: !4832)
!4849 = !DISubprogram(name: "calloc", scope: !1287, file: !1287, line: 543, type: !4699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4850 = !DILocation(line: 0, scope: !4837)
!4851 = !DILocation(line: 296, column: 25, scope: !4837)
!4852 = !DILocation(line: 0, scope: !4563, inlinedAt: !4853)
!4853 = distinct !DILocation(line: 296, column: 10, scope: !4837)
!4854 = !DILocation(line: 39, column: 8, scope: !4570, inlinedAt: !4853)
!4855 = !DILocation(line: 39, column: 7, scope: !4563, inlinedAt: !4853)
!4856 = !DILocation(line: 40, column: 5, scope: !4570, inlinedAt: !4853)
!4857 = !DILocation(line: 296, column: 3, scope: !4837)
!4858 = distinct !DISubprogram(name: "xizalloc", scope: !1025, file: !1025, line: 285, type: !4597, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4859)
!4859 = !{!4860}
!4860 = !DILocalVariable(name: "s", arg: 1, scope: !4858, file: !1025, line: 285, type: !1044)
!4861 = !DILocation(line: 0, scope: !4858)
!4862 = !DILocalVariable(name: "n", arg: 1, scope: !4863, file: !1025, line: 300, type: !1044)
!4863 = distinct !DISubprogram(name: "xicalloc", scope: !1025, file: !1025, line: 300, type: !4715, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4864)
!4864 = !{!4862, !4865}
!4865 = !DILocalVariable(name: "s", arg: 2, scope: !4863, file: !1025, line: 300, type: !1044)
!4866 = !DILocation(line: 0, scope: !4863, inlinedAt: !4867)
!4867 = distinct !DILocation(line: 287, column: 10, scope: !4858)
!4868 = !DILocalVariable(name: "n", arg: 1, scope: !4869, file: !4604, line: 77, type: !1044)
!4869 = distinct !DISubprogram(name: "icalloc", scope: !4604, file: !4604, line: 77, type: !4715, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4870)
!4870 = !{!4868, !4871}
!4871 = !DILocalVariable(name: "s", arg: 2, scope: !4869, file: !4604, line: 77, type: !1044)
!4872 = !DILocation(line: 0, scope: !4869, inlinedAt: !4873)
!4873 = distinct !DILocation(line: 302, column: 25, scope: !4863, inlinedAt: !4867)
!4874 = !DILocation(line: 91, column: 10, scope: !4869, inlinedAt: !4873)
!4875 = !DILocation(line: 0, scope: !4563, inlinedAt: !4876)
!4876 = distinct !DILocation(line: 302, column: 10, scope: !4863, inlinedAt: !4867)
!4877 = !DILocation(line: 39, column: 8, scope: !4570, inlinedAt: !4876)
!4878 = !DILocation(line: 39, column: 7, scope: !4563, inlinedAt: !4876)
!4879 = !DILocation(line: 40, column: 5, scope: !4570, inlinedAt: !4876)
!4880 = !DILocation(line: 287, column: 3, scope: !4858)
!4881 = !DILocation(line: 0, scope: !4863)
!4882 = !DILocation(line: 0, scope: !4869, inlinedAt: !4883)
!4883 = distinct !DILocation(line: 302, column: 25, scope: !4863)
!4884 = !DILocation(line: 91, column: 10, scope: !4869, inlinedAt: !4883)
!4885 = !DILocation(line: 0, scope: !4563, inlinedAt: !4886)
!4886 = distinct !DILocation(line: 302, column: 10, scope: !4863)
!4887 = !DILocation(line: 39, column: 8, scope: !4570, inlinedAt: !4886)
!4888 = !DILocation(line: 39, column: 7, scope: !4563, inlinedAt: !4886)
!4889 = !DILocation(line: 40, column: 5, scope: !4570, inlinedAt: !4886)
!4890 = !DILocation(line: 302, column: 3, scope: !4863)
!4891 = distinct !DISubprogram(name: "xmemdup", scope: !1025, file: !1025, line: 310, type: !4892, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4894)
!4892 = !DISubroutineType(types: !4893)
!4893 = !{!108, !1311, !110}
!4894 = !{!4895, !4896}
!4895 = !DILocalVariable(name: "p", arg: 1, scope: !4891, file: !1025, line: 310, type: !1311)
!4896 = !DILocalVariable(name: "s", arg: 2, scope: !4891, file: !1025, line: 310, type: !110)
!4897 = !DILocation(line: 0, scope: !4891)
!4898 = !DILocation(line: 0, scope: !4582, inlinedAt: !4899)
!4899 = distinct !DILocation(line: 312, column: 18, scope: !4891)
!4900 = !DILocation(line: 49, column: 25, scope: !4582, inlinedAt: !4899)
!4901 = !DILocation(line: 0, scope: !4563, inlinedAt: !4902)
!4902 = distinct !DILocation(line: 49, column: 10, scope: !4582, inlinedAt: !4899)
!4903 = !DILocation(line: 39, column: 8, scope: !4570, inlinedAt: !4902)
!4904 = !DILocation(line: 39, column: 7, scope: !4563, inlinedAt: !4902)
!4905 = !DILocation(line: 40, column: 5, scope: !4570, inlinedAt: !4902)
!4906 = !DILocalVariable(name: "__dest", arg: 1, scope: !4907, file: !1441, line: 26, type: !1702)
!4907 = distinct !DISubprogram(name: "memcpy", scope: !1441, file: !1441, line: 26, type: !1700, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4908)
!4908 = !{!4906, !4909, !4910}
!4909 = !DILocalVariable(name: "__src", arg: 2, scope: !4907, file: !1441, line: 26, type: !1310)
!4910 = !DILocalVariable(name: "__len", arg: 3, scope: !4907, file: !1441, line: 26, type: !110)
!4911 = !DILocation(line: 0, scope: !4907, inlinedAt: !4912)
!4912 = distinct !DILocation(line: 312, column: 10, scope: !4891)
!4913 = !DILocation(line: 29, column: 10, scope: !4907, inlinedAt: !4912)
!4914 = !DILocation(line: 312, column: 3, scope: !4891)
!4915 = distinct !DISubprogram(name: "ximemdup", scope: !1025, file: !1025, line: 316, type: !4916, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4918)
!4916 = !DISubroutineType(types: !4917)
!4917 = !{!108, !1311, !1044}
!4918 = !{!4919, !4920}
!4919 = !DILocalVariable(name: "p", arg: 1, scope: !4915, file: !1025, line: 316, type: !1311)
!4920 = !DILocalVariable(name: "s", arg: 2, scope: !4915, file: !1025, line: 316, type: !1044)
!4921 = !DILocation(line: 0, scope: !4915)
!4922 = !DILocation(line: 0, scope: !4596, inlinedAt: !4923)
!4923 = distinct !DILocation(line: 318, column: 18, scope: !4915)
!4924 = !DILocation(line: 0, scope: !4603, inlinedAt: !4925)
!4925 = distinct !DILocation(line: 55, column: 25, scope: !4596, inlinedAt: !4923)
!4926 = !DILocation(line: 57, column: 26, scope: !4603, inlinedAt: !4925)
!4927 = !DILocation(line: 0, scope: !4563, inlinedAt: !4928)
!4928 = distinct !DILocation(line: 55, column: 10, scope: !4596, inlinedAt: !4923)
!4929 = !DILocation(line: 39, column: 8, scope: !4570, inlinedAt: !4928)
!4930 = !DILocation(line: 39, column: 7, scope: !4563, inlinedAt: !4928)
!4931 = !DILocation(line: 40, column: 5, scope: !4570, inlinedAt: !4928)
!4932 = !DILocation(line: 0, scope: !4907, inlinedAt: !4933)
!4933 = distinct !DILocation(line: 318, column: 10, scope: !4915)
!4934 = !DILocation(line: 29, column: 10, scope: !4907, inlinedAt: !4933)
!4935 = !DILocation(line: 318, column: 3, scope: !4915)
!4936 = distinct !DISubprogram(name: "ximemdup0", scope: !1025, file: !1025, line: 325, type: !4937, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4939)
!4937 = !DISubroutineType(types: !4938)
!4938 = !{!107, !1311, !1044}
!4939 = !{!4940, !4941, !4942}
!4940 = !DILocalVariable(name: "p", arg: 1, scope: !4936, file: !1025, line: 325, type: !1311)
!4941 = !DILocalVariable(name: "s", arg: 2, scope: !4936, file: !1025, line: 325, type: !1044)
!4942 = !DILocalVariable(name: "result", scope: !4936, file: !1025, line: 327, type: !107)
!4943 = !DILocation(line: 0, scope: !4936)
!4944 = !DILocation(line: 327, column: 30, scope: !4936)
!4945 = !DILocation(line: 0, scope: !4596, inlinedAt: !4946)
!4946 = distinct !DILocation(line: 327, column: 18, scope: !4936)
!4947 = !DILocation(line: 0, scope: !4603, inlinedAt: !4948)
!4948 = distinct !DILocation(line: 55, column: 25, scope: !4596, inlinedAt: !4946)
!4949 = !DILocation(line: 57, column: 26, scope: !4603, inlinedAt: !4948)
!4950 = !DILocation(line: 0, scope: !4563, inlinedAt: !4951)
!4951 = distinct !DILocation(line: 55, column: 10, scope: !4596, inlinedAt: !4946)
!4952 = !DILocation(line: 39, column: 8, scope: !4570, inlinedAt: !4951)
!4953 = !DILocation(line: 39, column: 7, scope: !4563, inlinedAt: !4951)
!4954 = !DILocation(line: 40, column: 5, scope: !4570, inlinedAt: !4951)
!4955 = !DILocation(line: 328, column: 3, scope: !4936)
!4956 = !DILocation(line: 328, column: 13, scope: !4936)
!4957 = !DILocation(line: 0, scope: !4907, inlinedAt: !4958)
!4958 = distinct !DILocation(line: 329, column: 10, scope: !4936)
!4959 = !DILocation(line: 29, column: 10, scope: !4907, inlinedAt: !4958)
!4960 = !DILocation(line: 329, column: 3, scope: !4936)
!4961 = distinct !DISubprogram(name: "xstrdup", scope: !1025, file: !1025, line: 335, type: !1289, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1024, retainedNodes: !4962)
!4962 = !{!4963}
!4963 = !DILocalVariable(name: "string", arg: 1, scope: !4961, file: !1025, line: 335, type: !113)
!4964 = !DILocation(line: 0, scope: !4961)
!4965 = !DILocation(line: 337, column: 27, scope: !4961)
!4966 = !DILocation(line: 337, column: 43, scope: !4961)
!4967 = !DILocation(line: 0, scope: !4891, inlinedAt: !4968)
!4968 = distinct !DILocation(line: 337, column: 10, scope: !4961)
!4969 = !DILocation(line: 0, scope: !4582, inlinedAt: !4970)
!4970 = distinct !DILocation(line: 312, column: 18, scope: !4891, inlinedAt: !4968)
!4971 = !DILocation(line: 49, column: 25, scope: !4582, inlinedAt: !4970)
!4972 = !DILocation(line: 0, scope: !4563, inlinedAt: !4973)
!4973 = distinct !DILocation(line: 49, column: 10, scope: !4582, inlinedAt: !4970)
!4974 = !DILocation(line: 39, column: 8, scope: !4570, inlinedAt: !4973)
!4975 = !DILocation(line: 39, column: 7, scope: !4563, inlinedAt: !4973)
!4976 = !DILocation(line: 40, column: 5, scope: !4570, inlinedAt: !4973)
!4977 = !DILocation(line: 0, scope: !4907, inlinedAt: !4978)
!4978 = distinct !DILocation(line: 312, column: 10, scope: !4891, inlinedAt: !4968)
!4979 = !DILocation(line: 29, column: 10, scope: !4907, inlinedAt: !4978)
!4980 = !DILocation(line: 337, column: 3, scope: !4961)
!4981 = distinct !DISubprogram(name: "xalloc_die", scope: !976, file: !976, line: 32, type: !356, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1057, retainedNodes: !4982)
!4982 = !{!4983}
!4983 = !DILocalVariable(name: "__errstatus", scope: !4984, file: !976, line: 34, type: !4985)
!4984 = distinct !DILexicalBlock(scope: !4981, file: !976, line: 34, column: 3)
!4985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!4986 = !DILocation(line: 34, column: 3, scope: !4984)
!4987 = !DILocation(line: 0, scope: !4984)
!4988 = !DILocation(line: 40, column: 3, scope: !4981)
!4989 = distinct !DISubprogram(name: "rpl_fopen", scope: !1060, file: !1060, line: 46, type: !4990, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1059, retainedNodes: !5026)
!4990 = !DISubroutineType(types: !4991)
!4991 = !{!4992, !113, !113}
!4992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4993, size: 64)
!4993 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !4994)
!4994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !4995)
!4995 = !{!4996, !4997, !4998, !4999, !5000, !5001, !5002, !5003, !5004, !5005, !5006, !5007, !5008, !5009, !5011, !5012, !5013, !5014, !5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022, !5023, !5024, !5025}
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4994, file: !171, line: 51, baseType: !77, size: 32)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4994, file: !171, line: 54, baseType: !107, size: 64, offset: 64)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4994, file: !171, line: 55, baseType: !107, size: 64, offset: 128)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4994, file: !171, line: 56, baseType: !107, size: 64, offset: 192)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4994, file: !171, line: 57, baseType: !107, size: 64, offset: 256)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4994, file: !171, line: 58, baseType: !107, size: 64, offset: 320)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4994, file: !171, line: 59, baseType: !107, size: 64, offset: 384)
!5003 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4994, file: !171, line: 60, baseType: !107, size: 64, offset: 448)
!5004 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4994, file: !171, line: 61, baseType: !107, size: 64, offset: 512)
!5005 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4994, file: !171, line: 64, baseType: !107, size: 64, offset: 576)
!5006 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4994, file: !171, line: 65, baseType: !107, size: 64, offset: 640)
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4994, file: !171, line: 66, baseType: !107, size: 64, offset: 704)
!5008 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4994, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!5009 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4994, file: !171, line: 70, baseType: !5010, size: 64, offset: 832)
!5010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4994, size: 64)
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4994, file: !171, line: 72, baseType: !77, size: 32, offset: 896)
!5012 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4994, file: !171, line: 73, baseType: !77, size: 32, offset: 928)
!5013 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4994, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!5014 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4994, file: !171, line: 77, baseType: !109, size: 16, offset: 1024)
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4994, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!5016 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4994, file: !171, line: 79, baseType: !49, size: 8, offset: 1048)
!5017 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4994, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!5018 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4994, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4994, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4994, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4994, file: !171, line: 93, baseType: !5010, size: 64, offset: 1344)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4994, file: !171, line: 94, baseType: !108, size: 64, offset: 1408)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4994, file: !171, line: 95, baseType: !110, size: 64, offset: 1472)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4994, file: !171, line: 96, baseType: !77, size: 32, offset: 1536)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4994, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!5026 = !{!5027, !5028, !5029, !5030, !5031, !5032, !5036, !5038, !5039, !5044, !5047, !5048}
!5027 = !DILocalVariable(name: "filename", arg: 1, scope: !4989, file: !1060, line: 46, type: !113)
!5028 = !DILocalVariable(name: "mode", arg: 2, scope: !4989, file: !1060, line: 46, type: !113)
!5029 = !DILocalVariable(name: "open_direction", scope: !4989, file: !1060, line: 54, type: !77)
!5030 = !DILocalVariable(name: "open_flags", scope: !4989, file: !1060, line: 55, type: !77)
!5031 = !DILocalVariable(name: "open_flags_gnu", scope: !4989, file: !1060, line: 57, type: !154)
!5032 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4989, file: !1060, line: 59, type: !5033)
!5033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !5034)
!5034 = !{!5035}
!5035 = !DISubrange(count: 81)
!5036 = !DILocalVariable(name: "p", scope: !5037, file: !1060, line: 62, type: !113)
!5037 = distinct !DILexicalBlock(scope: !4989, file: !1060, line: 61, column: 3)
!5038 = !DILocalVariable(name: "q", scope: !5037, file: !1060, line: 64, type: !107)
!5039 = !DILocalVariable(name: "len", scope: !5040, file: !1060, line: 128, type: !110)
!5040 = distinct !DILexicalBlock(scope: !5041, file: !1060, line: 127, column: 9)
!5041 = distinct !DILexicalBlock(scope: !5042, file: !1060, line: 68, column: 7)
!5042 = distinct !DILexicalBlock(scope: !5043, file: !1060, line: 67, column: 5)
!5043 = distinct !DILexicalBlock(scope: !5037, file: !1060, line: 67, column: 5)
!5044 = !DILocalVariable(name: "fd", scope: !5045, file: !1060, line: 199, type: !77)
!5045 = distinct !DILexicalBlock(scope: !5046, file: !1060, line: 198, column: 5)
!5046 = distinct !DILexicalBlock(scope: !4989, file: !1060, line: 197, column: 7)
!5047 = !DILocalVariable(name: "fp", scope: !5045, file: !1060, line: 204, type: !4992)
!5048 = !DILocalVariable(name: "saved_errno", scope: !5049, file: !1060, line: 207, type: !77)
!5049 = distinct !DILexicalBlock(scope: !5050, file: !1060, line: 206, column: 9)
!5050 = distinct !DILexicalBlock(scope: !5045, file: !1060, line: 205, column: 11)
!5051 = distinct !DIAssignID()
!5052 = !DILocation(line: 0, scope: !4989)
!5053 = !DILocation(line: 59, column: 3, scope: !4989)
!5054 = !DILocation(line: 0, scope: !5037)
!5055 = !DILocation(line: 67, column: 5, scope: !5037)
!5056 = !DILocation(line: 54, column: 7, scope: !4989)
!5057 = !DILocation(line: 67, column: 12, scope: !5042)
!5058 = !DILocation(line: 67, column: 5, scope: !5043)
!5059 = !DILocation(line: 74, column: 19, scope: !5060)
!5060 = distinct !DILexicalBlock(scope: !5061, file: !1060, line: 74, column: 17)
!5061 = distinct !DILexicalBlock(scope: !5041, file: !1060, line: 70, column: 11)
!5062 = !DILocation(line: 74, column: 17, scope: !5061)
!5063 = !DILocation(line: 75, column: 17, scope: !5060)
!5064 = !DILocation(line: 75, column: 20, scope: !5060)
!5065 = !DILocation(line: 75, column: 15, scope: !5060)
!5066 = !DILocation(line: 80, column: 24, scope: !5061)
!5067 = !DILocation(line: 82, column: 19, scope: !5068)
!5068 = distinct !DILexicalBlock(scope: !5061, file: !1060, line: 82, column: 17)
!5069 = !DILocation(line: 82, column: 17, scope: !5061)
!5070 = !DILocation(line: 83, column: 17, scope: !5068)
!5071 = !DILocation(line: 83, column: 20, scope: !5068)
!5072 = !DILocation(line: 83, column: 15, scope: !5068)
!5073 = !DILocation(line: 88, column: 24, scope: !5061)
!5074 = !DILocation(line: 90, column: 19, scope: !5075)
!5075 = distinct !DILexicalBlock(scope: !5061, file: !1060, line: 90, column: 17)
!5076 = !DILocation(line: 90, column: 17, scope: !5061)
!5077 = !DILocation(line: 91, column: 17, scope: !5075)
!5078 = !DILocation(line: 91, column: 20, scope: !5075)
!5079 = !DILocation(line: 91, column: 15, scope: !5075)
!5080 = !DILocation(line: 100, column: 19, scope: !5081)
!5081 = distinct !DILexicalBlock(scope: !5061, file: !1060, line: 100, column: 17)
!5082 = !DILocation(line: 100, column: 17, scope: !5061)
!5083 = !DILocation(line: 101, column: 17, scope: !5081)
!5084 = !DILocation(line: 101, column: 20, scope: !5081)
!5085 = !DILocation(line: 101, column: 15, scope: !5081)
!5086 = !DILocation(line: 107, column: 19, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !5061, file: !1060, line: 107, column: 17)
!5088 = !DILocation(line: 107, column: 17, scope: !5061)
!5089 = !DILocation(line: 108, column: 17, scope: !5087)
!5090 = !DILocation(line: 108, column: 20, scope: !5087)
!5091 = !DILocation(line: 108, column: 15, scope: !5087)
!5092 = !DILocation(line: 113, column: 24, scope: !5061)
!5093 = !DILocation(line: 115, column: 13, scope: !5061)
!5094 = !DILocation(line: 117, column: 24, scope: !5061)
!5095 = !DILocation(line: 119, column: 13, scope: !5061)
!5096 = !DILocation(line: 128, column: 24, scope: !5040)
!5097 = !DILocation(line: 0, scope: !5040)
!5098 = !DILocation(line: 129, column: 48, scope: !5099)
!5099 = distinct !DILexicalBlock(scope: !5040, file: !1060, line: 129, column: 15)
!5100 = !DILocation(line: 129, column: 15, scope: !5040)
!5101 = !DILocalVariable(name: "__dest", arg: 1, scope: !5102, file: !1441, line: 26, type: !1702)
!5102 = distinct !DISubprogram(name: "memcpy", scope: !1441, file: !1441, line: 26, type: !1700, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1059, retainedNodes: !5103)
!5103 = !{!5101, !5104, !5105}
!5104 = !DILocalVariable(name: "__src", arg: 2, scope: !5102, file: !1441, line: 26, type: !1310)
!5105 = !DILocalVariable(name: "__len", arg: 3, scope: !5102, file: !1441, line: 26, type: !110)
!5106 = !DILocation(line: 0, scope: !5102, inlinedAt: !5107)
!5107 = distinct !DILocation(line: 131, column: 11, scope: !5040)
!5108 = !DILocation(line: 29, column: 10, scope: !5102, inlinedAt: !5107)
!5109 = !DILocation(line: 132, column: 13, scope: !5040)
!5110 = !DILocation(line: 135, column: 9, scope: !5041)
!5111 = !DILocation(line: 67, column: 25, scope: !5042)
!5112 = !DILocation(line: 67, column: 5, scope: !5042)
!5113 = distinct !{!5113, !5058, !5114, !1210}
!5114 = !DILocation(line: 136, column: 7, scope: !5043)
!5115 = !DILocation(line: 138, column: 8, scope: !5037)
!5116 = !DILocation(line: 197, column: 7, scope: !5046)
!5117 = !DILocation(line: 197, column: 7, scope: !4989)
!5118 = !DILocation(line: 199, column: 47, scope: !5045)
!5119 = !DILocation(line: 199, column: 16, scope: !5045)
!5120 = !DILocation(line: 0, scope: !5045)
!5121 = !DILocation(line: 201, column: 14, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5045, file: !1060, line: 201, column: 11)
!5123 = !DILocation(line: 201, column: 11, scope: !5045)
!5124 = !DILocation(line: 204, column: 18, scope: !5045)
!5125 = !DILocation(line: 205, column: 14, scope: !5050)
!5126 = !DILocation(line: 205, column: 11, scope: !5045)
!5127 = !DILocation(line: 207, column: 29, scope: !5049)
!5128 = !DILocation(line: 0, scope: !5049)
!5129 = !DILocation(line: 208, column: 11, scope: !5049)
!5130 = !DILocation(line: 209, column: 17, scope: !5049)
!5131 = !DILocation(line: 210, column: 9, scope: !5049)
!5132 = !DILocalVariable(name: "filename", arg: 1, scope: !5133, file: !1060, line: 30, type: !113)
!5133 = distinct !DISubprogram(name: "orig_fopen", scope: !1060, file: !1060, line: 30, type: !4990, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1059, retainedNodes: !5134)
!5134 = !{!5132, !5135}
!5135 = !DILocalVariable(name: "mode", arg: 2, scope: !5133, file: !1060, line: 30, type: !113)
!5136 = !DILocation(line: 0, scope: !5133, inlinedAt: !5137)
!5137 = distinct !DILocation(line: 219, column: 10, scope: !4989)
!5138 = !DILocation(line: 32, column: 10, scope: !5133, inlinedAt: !5137)
!5139 = !DILocation(line: 219, column: 3, scope: !4989)
!5140 = !DILocation(line: 220, column: 1, scope: !4989)
!5141 = !DISubprogram(name: "open", scope: !2580, file: !2580, line: 181, type: !5142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5142 = !DISubroutineType(types: !5143)
!5143 = !{!77, !113, !77, null}
!5144 = !DISubprogram(name: "fdopen", scope: !1158, file: !1158, line: 293, type: !5145, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5145 = !DISubroutineType(types: !5146)
!5146 = !{!4992, !77, !113}
!5147 = !DISubprogram(name: "close", scope: !2443, file: !2443, line: 358, type: !2468, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5148 = !DISubprogram(name: "fopen", scope: !1158, file: !1158, line: 258, type: !5149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5149 = !DISubroutineType(types: !5150)
!5150 = !{!4992, !1153, !1153}
!5151 = distinct !DISubprogram(name: "close_stream", scope: !1062, file: !1062, line: 55, type: !5152, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1061, retainedNodes: !5188)
!5152 = !DISubroutineType(types: !5153)
!5153 = !{!77, !5154}
!5154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5155, size: 64)
!5155 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !169, line: 7, baseType: !5156)
!5156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !171, line: 49, size: 1728, elements: !5157)
!5157 = !{!5158, !5159, !5160, !5161, !5162, !5163, !5164, !5165, !5166, !5167, !5168, !5169, !5170, !5171, !5173, !5174, !5175, !5176, !5177, !5178, !5179, !5180, !5181, !5182, !5183, !5184, !5185, !5186, !5187}
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5156, file: !171, line: 51, baseType: !77, size: 32)
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5156, file: !171, line: 54, baseType: !107, size: 64, offset: 64)
!5160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5156, file: !171, line: 55, baseType: !107, size: 64, offset: 128)
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5156, file: !171, line: 56, baseType: !107, size: 64, offset: 192)
!5162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5156, file: !171, line: 57, baseType: !107, size: 64, offset: 256)
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5156, file: !171, line: 58, baseType: !107, size: 64, offset: 320)
!5164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5156, file: !171, line: 59, baseType: !107, size: 64, offset: 384)
!5165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5156, file: !171, line: 60, baseType: !107, size: 64, offset: 448)
!5166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5156, file: !171, line: 61, baseType: !107, size: 64, offset: 512)
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5156, file: !171, line: 64, baseType: !107, size: 64, offset: 576)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5156, file: !171, line: 65, baseType: !107, size: 64, offset: 640)
!5169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5156, file: !171, line: 66, baseType: !107, size: 64, offset: 704)
!5170 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5156, file: !171, line: 68, baseType: !186, size: 64, offset: 768)
!5171 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5156, file: !171, line: 70, baseType: !5172, size: 64, offset: 832)
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5156, size: 64)
!5173 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5156, file: !171, line: 72, baseType: !77, size: 32, offset: 896)
!5174 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5156, file: !171, line: 73, baseType: !77, size: 32, offset: 928)
!5175 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5156, file: !171, line: 74, baseType: !193, size: 64, offset: 960)
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5156, file: !171, line: 77, baseType: !109, size: 16, offset: 1024)
!5177 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5156, file: !171, line: 78, baseType: !198, size: 8, offset: 1040)
!5178 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5156, file: !171, line: 79, baseType: !49, size: 8, offset: 1048)
!5179 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5156, file: !171, line: 81, baseType: !201, size: 64, offset: 1088)
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5156, file: !171, line: 89, baseType: !204, size: 64, offset: 1152)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5156, file: !171, line: 91, baseType: !206, size: 64, offset: 1216)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5156, file: !171, line: 92, baseType: !209, size: 64, offset: 1280)
!5183 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5156, file: !171, line: 93, baseType: !5172, size: 64, offset: 1344)
!5184 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5156, file: !171, line: 94, baseType: !108, size: 64, offset: 1408)
!5185 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5156, file: !171, line: 95, baseType: !110, size: 64, offset: 1472)
!5186 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5156, file: !171, line: 96, baseType: !77, size: 32, offset: 1536)
!5187 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5156, file: !171, line: 98, baseType: !216, size: 160, offset: 1568)
!5188 = !{!5189, !5190, !5192, !5193}
!5189 = !DILocalVariable(name: "stream", arg: 1, scope: !5151, file: !1062, line: 55, type: !5154)
!5190 = !DILocalVariable(name: "some_pending", scope: !5151, file: !1062, line: 57, type: !5191)
!5191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !154)
!5192 = !DILocalVariable(name: "prev_fail", scope: !5151, file: !1062, line: 58, type: !5191)
!5193 = !DILocalVariable(name: "fclose_fail", scope: !5151, file: !1062, line: 59, type: !5191)
!5194 = !DILocation(line: 0, scope: !5151)
!5195 = !DILocation(line: 57, column: 30, scope: !5151)
!5196 = !DILocalVariable(name: "__stream", arg: 1, scope: !5197, file: !1423, line: 135, type: !5154)
!5197 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1423, file: !1423, line: 135, type: !5152, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1061, retainedNodes: !5198)
!5198 = !{!5196}
!5199 = !DILocation(line: 0, scope: !5197, inlinedAt: !5200)
!5200 = distinct !DILocation(line: 58, column: 27, scope: !5151)
!5201 = !DILocation(line: 137, column: 10, scope: !5197, inlinedAt: !5200)
!5202 = !DILocation(line: 58, column: 43, scope: !5151)
!5203 = !DILocation(line: 59, column: 29, scope: !5151)
!5204 = !DILocation(line: 59, column: 45, scope: !5151)
!5205 = !DILocation(line: 69, column: 17, scope: !5206)
!5206 = distinct !DILexicalBlock(scope: !5151, file: !1062, line: 69, column: 7)
!5207 = !DILocation(line: 57, column: 50, scope: !5151)
!5208 = !DILocation(line: 69, column: 33, scope: !5206)
!5209 = !DILocation(line: 69, column: 53, scope: !5206)
!5210 = !DILocation(line: 69, column: 59, scope: !5206)
!5211 = !DILocation(line: 69, column: 7, scope: !5151)
!5212 = !DILocation(line: 71, column: 11, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5206, file: !1062, line: 70, column: 5)
!5214 = !DILocation(line: 72, column: 9, scope: !5215)
!5215 = distinct !DILexicalBlock(scope: !5213, file: !1062, line: 71, column: 11)
!5216 = !DILocation(line: 72, column: 15, scope: !5215)
!5217 = !DILocation(line: 77, column: 1, scope: !5151)
!5218 = !DISubprogram(name: "__fpending", scope: !2788, file: !2788, line: 75, type: !5219, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5219 = !DISubroutineType(types: !5220)
!5220 = !{!110, !5154}
!5221 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !983, file: !983, line: 100, type: !5222, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !5225)
!5222 = !DISubroutineType(types: !5223)
!5223 = !{!110, !1772, !113, !110, !5224}
!5224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!5225 = !{!5226, !5227, !5228, !5229, !5230}
!5226 = !DILocalVariable(name: "pwc", arg: 1, scope: !5221, file: !983, line: 100, type: !1772)
!5227 = !DILocalVariable(name: "s", arg: 2, scope: !5221, file: !983, line: 100, type: !113)
!5228 = !DILocalVariable(name: "n", arg: 3, scope: !5221, file: !983, line: 100, type: !110)
!5229 = !DILocalVariable(name: "ps", arg: 4, scope: !5221, file: !983, line: 100, type: !5224)
!5230 = !DILocalVariable(name: "ret", scope: !5221, file: !983, line: 130, type: !110)
!5231 = !DILocation(line: 0, scope: !5221)
!5232 = !DILocation(line: 105, column: 9, scope: !5233)
!5233 = distinct !DILexicalBlock(scope: !5221, file: !983, line: 105, column: 7)
!5234 = !DILocation(line: 105, column: 7, scope: !5221)
!5235 = !DILocation(line: 117, column: 10, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5221, file: !983, line: 117, column: 7)
!5237 = !DILocation(line: 117, column: 7, scope: !5221)
!5238 = !DILocation(line: 130, column: 16, scope: !5221)
!5239 = !DILocation(line: 135, column: 11, scope: !5240)
!5240 = distinct !DILexicalBlock(scope: !5221, file: !983, line: 135, column: 7)
!5241 = !DILocation(line: 135, column: 25, scope: !5240)
!5242 = !DILocation(line: 135, column: 30, scope: !5240)
!5243 = !DILocation(line: 135, column: 7, scope: !5221)
!5244 = !DILocalVariable(name: "ps", arg: 1, scope: !5245, file: !3028, line: 1135, type: !5224)
!5245 = distinct !DISubprogram(name: "mbszero", scope: !3028, file: !3028, line: 1135, type: !5246, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !5248)
!5246 = !DISubroutineType(types: !5247)
!5247 = !{null, !5224}
!5248 = !{!5244}
!5249 = !DILocation(line: 0, scope: !5245, inlinedAt: !5250)
!5250 = distinct !DILocation(line: 137, column: 5, scope: !5240)
!5251 = !DILocalVariable(name: "__dest", arg: 1, scope: !5252, file: !1441, line: 57, type: !108)
!5252 = distinct !DISubprogram(name: "memset", scope: !1441, file: !1441, line: 57, type: !3037, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !986, retainedNodes: !5253)
!5253 = !{!5251, !5254, !5255}
!5254 = !DILocalVariable(name: "__ch", arg: 2, scope: !5252, file: !1441, line: 57, type: !77)
!5255 = !DILocalVariable(name: "__len", arg: 3, scope: !5252, file: !1441, line: 57, type: !110)
!5256 = !DILocation(line: 0, scope: !5252, inlinedAt: !5257)
!5257 = distinct !DILocation(line: 1137, column: 3, scope: !5245, inlinedAt: !5250)
!5258 = !DILocation(line: 59, column: 10, scope: !5252, inlinedAt: !5257)
!5259 = !DILocation(line: 137, column: 5, scope: !5240)
!5260 = !DILocation(line: 138, column: 11, scope: !5261)
!5261 = distinct !DILexicalBlock(scope: !5221, file: !983, line: 138, column: 7)
!5262 = !DILocation(line: 138, column: 7, scope: !5221)
!5263 = !DILocation(line: 139, column: 5, scope: !5261)
!5264 = !DILocation(line: 143, column: 26, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5221, file: !983, line: 143, column: 7)
!5266 = !DILocation(line: 143, column: 41, scope: !5265)
!5267 = !DILocation(line: 143, column: 7, scope: !5221)
!5268 = !DILocation(line: 145, column: 15, scope: !5269)
!5269 = distinct !DILexicalBlock(scope: !5270, file: !983, line: 145, column: 11)
!5270 = distinct !DILexicalBlock(scope: !5265, file: !983, line: 144, column: 5)
!5271 = !DILocation(line: 145, column: 11, scope: !5270)
!5272 = !DILocation(line: 146, column: 32, scope: !5269)
!5273 = !DILocation(line: 146, column: 16, scope: !5269)
!5274 = !DILocation(line: 146, column: 14, scope: !5269)
!5275 = !DILocation(line: 146, column: 9, scope: !5269)
!5276 = !DILocation(line: 286, column: 1, scope: !5221)
!5277 = !DISubprogram(name: "mbsinit", scope: !1778, file: !1778, line: 293, type: !5278, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5278 = !DISubroutineType(types: !5279)
!5279 = !{!77, !5280}
!5280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5281, size: 64)
!5281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !989)
!5282 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1064, file: !1064, line: 27, type: !4547, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1063, retainedNodes: !5283)
!5283 = !{!5284, !5285, !5286, !5287}
!5284 = !DILocalVariable(name: "ptr", arg: 1, scope: !5282, file: !1064, line: 27, type: !108)
!5285 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5282, file: !1064, line: 27, type: !110)
!5286 = !DILocalVariable(name: "size", arg: 3, scope: !5282, file: !1064, line: 27, type: !110)
!5287 = !DILocalVariable(name: "nbytes", scope: !5282, file: !1064, line: 29, type: !110)
!5288 = !DILocation(line: 0, scope: !5282)
!5289 = !DILocation(line: 30, column: 7, scope: !5290)
!5290 = distinct !DILexicalBlock(scope: !5282, file: !1064, line: 30, column: 7)
!5291 = !DILocation(line: 30, column: 7, scope: !5282)
!5292 = !DILocation(line: 32, column: 7, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5290, file: !1064, line: 31, column: 5)
!5294 = !DILocation(line: 32, column: 13, scope: !5293)
!5295 = !DILocation(line: 33, column: 7, scope: !5293)
!5296 = !DILocalVariable(name: "ptr", arg: 1, scope: !5297, file: !4639, line: 2057, type: !108)
!5297 = distinct !DISubprogram(name: "rpl_realloc", scope: !4639, file: !4639, line: 2057, type: !4631, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1063, retainedNodes: !5298)
!5298 = !{!5296, !5299}
!5299 = !DILocalVariable(name: "size", arg: 2, scope: !5297, file: !4639, line: 2057, type: !110)
!5300 = !DILocation(line: 0, scope: !5297, inlinedAt: !5301)
!5301 = distinct !DILocation(line: 37, column: 10, scope: !5282)
!5302 = !DILocation(line: 2059, column: 24, scope: !5297, inlinedAt: !5301)
!5303 = !DILocation(line: 2059, column: 10, scope: !5297, inlinedAt: !5301)
!5304 = !DILocation(line: 37, column: 3, scope: !5282)
!5305 = !DILocation(line: 38, column: 1, scope: !5282)
!5306 = distinct !DISubprogram(name: "hard_locale", scope: !1001, file: !1001, line: 28, type: !1961, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1065, retainedNodes: !5307)
!5307 = !{!5308, !5309}
!5308 = !DILocalVariable(name: "category", arg: 1, scope: !5306, file: !1001, line: 28, type: !77)
!5309 = !DILocalVariable(name: "locale", scope: !5306, file: !1001, line: 30, type: !5310)
!5310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5311)
!5311 = !{!5312}
!5312 = !DISubrange(count: 257)
!5313 = distinct !DIAssignID()
!5314 = !DILocation(line: 0, scope: !5306)
!5315 = !DILocation(line: 30, column: 3, scope: !5306)
!5316 = !DILocation(line: 32, column: 7, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5306, file: !1001, line: 32, column: 7)
!5318 = !DILocation(line: 32, column: 7, scope: !5306)
!5319 = !DILocalVariable(name: "__s1", arg: 1, scope: !5320, file: !1176, line: 1359, type: !113)
!5320 = distinct !DISubprogram(name: "streq", scope: !1176, file: !1176, line: 1359, type: !1177, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1065, retainedNodes: !5321)
!5321 = !{!5319, !5322}
!5322 = !DILocalVariable(name: "__s2", arg: 2, scope: !5320, file: !1176, line: 1359, type: !113)
!5323 = !DILocation(line: 0, scope: !5320, inlinedAt: !5324)
!5324 = distinct !DILocation(line: 35, column: 9, scope: !5325)
!5325 = distinct !DILexicalBlock(scope: !5306, file: !1001, line: 35, column: 7)
!5326 = !DILocation(line: 1361, column: 11, scope: !5320, inlinedAt: !5324)
!5327 = !DILocation(line: 35, column: 29, scope: !5325)
!5328 = !DILocation(line: 0, scope: !5320, inlinedAt: !5329)
!5329 = distinct !DILocation(line: 35, column: 32, scope: !5325)
!5330 = !DILocation(line: 1361, column: 11, scope: !5320, inlinedAt: !5329)
!5331 = !DILocation(line: 1361, column: 10, scope: !5320, inlinedAt: !5329)
!5332 = !DILocation(line: 35, column: 7, scope: !5306)
!5333 = !DILocation(line: 46, column: 3, scope: !5306)
!5334 = !DILocation(line: 47, column: 1, scope: !5306)
!5335 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1070, file: !1070, line: 154, type: !5336, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1069, retainedNodes: !5338)
!5336 = !DISubroutineType(types: !5337)
!5337 = !{!77, !77, !107, !110}
!5338 = !{!5339, !5340, !5341}
!5339 = !DILocalVariable(name: "category", arg: 1, scope: !5335, file: !1070, line: 154, type: !77)
!5340 = !DILocalVariable(name: "buf", arg: 2, scope: !5335, file: !1070, line: 154, type: !107)
!5341 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5335, file: !1070, line: 154, type: !110)
!5342 = !DILocation(line: 0, scope: !5335)
!5343 = !DILocation(line: 159, column: 10, scope: !5335)
!5344 = !DILocation(line: 159, column: 3, scope: !5335)
!5345 = distinct !DISubprogram(name: "setlocale_null", scope: !1070, file: !1070, line: 186, type: !5346, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1069, retainedNodes: !5348)
!5346 = !DISubroutineType(types: !5347)
!5347 = !{!113, !77}
!5348 = !{!5349}
!5349 = !DILocalVariable(name: "category", arg: 1, scope: !5345, file: !1070, line: 186, type: !77)
!5350 = !DILocation(line: 0, scope: !5345)
!5351 = !DILocation(line: 189, column: 10, scope: !5345)
!5352 = !DILocation(line: 189, column: 3, scope: !5345)
!5353 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1072, file: !1072, line: 35, type: !5346, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !5354)
!5354 = !{!5355, !5356}
!5355 = !DILocalVariable(name: "category", arg: 1, scope: !5353, file: !1072, line: 35, type: !77)
!5356 = !DILocalVariable(name: "result", scope: !5353, file: !1072, line: 37, type: !113)
!5357 = !DILocation(line: 0, scope: !5353)
!5358 = !DILocation(line: 37, column: 24, scope: !5353)
!5359 = !DILocation(line: 62, column: 3, scope: !5353)
!5360 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1072, file: !1072, line: 66, type: !5336, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !5361)
!5361 = !{!5362, !5363, !5364, !5365, !5366}
!5362 = !DILocalVariable(name: "category", arg: 1, scope: !5360, file: !1072, line: 66, type: !77)
!5363 = !DILocalVariable(name: "buf", arg: 2, scope: !5360, file: !1072, line: 66, type: !107)
!5364 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5360, file: !1072, line: 66, type: !110)
!5365 = !DILocalVariable(name: "result", scope: !5360, file: !1072, line: 111, type: !113)
!5366 = !DILocalVariable(name: "length", scope: !5367, file: !1072, line: 125, type: !110)
!5367 = distinct !DILexicalBlock(scope: !5368, file: !1072, line: 124, column: 5)
!5368 = distinct !DILexicalBlock(scope: !5360, file: !1072, line: 113, column: 7)
!5369 = !DILocation(line: 0, scope: !5360)
!5370 = !DILocation(line: 0, scope: !5353, inlinedAt: !5371)
!5371 = distinct !DILocation(line: 111, column: 24, scope: !5360)
!5372 = !DILocation(line: 37, column: 24, scope: !5353, inlinedAt: !5371)
!5373 = !DILocation(line: 113, column: 14, scope: !5368)
!5374 = !DILocation(line: 113, column: 7, scope: !5360)
!5375 = !DILocation(line: 116, column: 19, scope: !5376)
!5376 = distinct !DILexicalBlock(scope: !5377, file: !1072, line: 116, column: 11)
!5377 = distinct !DILexicalBlock(scope: !5368, file: !1072, line: 114, column: 5)
!5378 = !DILocation(line: 116, column: 11, scope: !5377)
!5379 = !DILocation(line: 120, column: 16, scope: !5376)
!5380 = !DILocation(line: 120, column: 9, scope: !5376)
!5381 = !DILocation(line: 125, column: 23, scope: !5367)
!5382 = !DILocation(line: 0, scope: !5367)
!5383 = !DILocation(line: 126, column: 18, scope: !5384)
!5384 = distinct !DILexicalBlock(scope: !5367, file: !1072, line: 126, column: 11)
!5385 = !DILocation(line: 126, column: 11, scope: !5367)
!5386 = !DILocation(line: 128, column: 39, scope: !5387)
!5387 = distinct !DILexicalBlock(scope: !5384, file: !1072, line: 127, column: 9)
!5388 = !DILocalVariable(name: "__dest", arg: 1, scope: !5389, file: !1441, line: 26, type: !1702)
!5389 = distinct !DISubprogram(name: "memcpy", scope: !1441, file: !1441, line: 26, type: !1700, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !5390)
!5390 = !{!5388, !5391, !5392}
!5391 = !DILocalVariable(name: "__src", arg: 2, scope: !5389, file: !1441, line: 26, type: !1310)
!5392 = !DILocalVariable(name: "__len", arg: 3, scope: !5389, file: !1441, line: 26, type: !110)
!5393 = !DILocation(line: 0, scope: !5389, inlinedAt: !5394)
!5394 = distinct !DILocation(line: 128, column: 11, scope: !5387)
!5395 = !DILocation(line: 29, column: 10, scope: !5389, inlinedAt: !5394)
!5396 = !DILocation(line: 129, column: 11, scope: !5387)
!5397 = !DILocation(line: 133, column: 23, scope: !5398)
!5398 = distinct !DILexicalBlock(scope: !5399, file: !1072, line: 133, column: 15)
!5399 = distinct !DILexicalBlock(scope: !5384, file: !1072, line: 132, column: 9)
!5400 = !DILocation(line: 133, column: 15, scope: !5399)
!5401 = !DILocation(line: 138, column: 44, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5398, file: !1072, line: 134, column: 13)
!5403 = !DILocation(line: 0, scope: !5389, inlinedAt: !5404)
!5404 = distinct !DILocation(line: 138, column: 15, scope: !5402)
!5405 = !DILocation(line: 29, column: 10, scope: !5389, inlinedAt: !5404)
!5406 = !DILocation(line: 139, column: 15, scope: !5402)
!5407 = !DILocation(line: 139, column: 32, scope: !5402)
!5408 = !DILocation(line: 140, column: 13, scope: !5402)
!5409 = !DILocation(line: 0, scope: !5368)
!5410 = !DILocation(line: 145, column: 1, scope: !5360)
