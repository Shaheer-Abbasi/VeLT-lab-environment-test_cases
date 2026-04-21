; ModuleID = 'src/unexpand.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
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
@.str.13 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !119
@.str.14 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !124
@.str.15 = private unnamed_addr constant [28 x i8] c"tab stop value is too large\00", align 1, !dbg !129
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !134
@.str.17 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !139
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !144
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
@.str.58 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1, !dbg !422
@.str.59 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !427
@convert_entire_line = dso_local local_unnamed_addr global i8 0, align 1, !dbg !439
@exit_status = dso_local local_unnamed_addr global i32 0, align 4, !dbg !469
@first_free_tab = internal unnamed_addr global i64 0, align 8, !dbg !552
@tab_list = internal unnamed_addr global ptr null, align 8, !dbg !554
@n_tabs_allocated = internal global i64 0, align 8, !dbg !557
@.str.22 = private unnamed_addr constant [41 x i8] c"'/' specifier not at start of number: %s\00", align 1, !dbg !471
@.str.1.23 = private unnamed_addr constant [41 x i8] c"'+' specifier not at start of number: %s\00", align 1, !dbg !476
@.str.2.24 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1, !dbg !478
@.str.3.25 = private unnamed_addr constant [25 x i8] c"tab stop is too large %s\00", align 1, !dbg !480
@.str.4.26 = private unnamed_addr constant [43 x i8] c"tab size contains invalid character(s): %s\00", align 1, !dbg !485
@extend_size = internal unnamed_addr global i64 0, align 8, !dbg !580
@increment_size = internal unnamed_addr global i64 0, align 8, !dbg !582
@max_column_width = dso_local local_unnamed_addr global i64 0, align 8, !dbg !550
@tab_size = internal unnamed_addr global i64 0, align 8, !dbg !584
@.str.5.34 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1, !dbg !490
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !677
@stdin_argv = internal global [2 x ptr] [ptr @.str.6.37, ptr null], align 16, !dbg !588
@file_list = internal unnamed_addr global ptr null, align 8, !dbg !591
@next_file.prev_file = internal unnamed_addr global ptr null, align 8, !dbg !492
@.str.6.37 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !537
@.str.7.40 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !539
@stdin = external local_unnamed_addr global ptr, align 8
@.str.8.41 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !541
@.str.9.46 = private unnamed_addr constant [71 x i8] c"  -t, --tabs=LIST\0A         use comma separated list of tab positions.\0A\00", align 1, !dbg !543
@.str.10.63 = private unnamed_addr constant [305 x i8] c"         The last specified position can be prefixed with '/'\0A         to specify a tab size to use after the last\0A         explicitly specified tab stop.  Also a prefix of '+'\0A         can be used to align remaining tab stops relative to\0A         the last specified tab stop instead of the first column\0A\00", align 1, !dbg !545
@.str.12.11 = private unnamed_addr constant [47 x i8] c"'/' specifier only allowed with the last value\00", align 1, !dbg !561
@.str.13.12 = private unnamed_addr constant [47 x i8] c"'+' specifier only allowed with the last value\00", align 1, !dbg !566
@.str.14.29 = private unnamed_addr constant [21 x i8] c"tab size cannot be 0\00", align 1, !dbg !568
@.str.15.30 = private unnamed_addr constant [28 x i8] c"tab sizes must be ascending\00", align 1, !dbg !573
@.str.16.31 = private unnamed_addr constant [45 x i8] c"'/' specifier is mutually exclusive with '+'\00", align 1, !dbg !575
@oputs_.help_no_sgr.47 = internal unnamed_addr global i32 -1, align 4, !dbg !594
@.str.17.48 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !623
@.str.18.49 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !625
@.str.19.50 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !627
@.str.20.51 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !629
@.str.21.52 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !631
@.str.22.53 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !633
@.str.23 = private unnamed_addr constant [4 x i8] c"dir\00", align 1, !dbg !635
@.str.24 = private unnamed_addr constant [3 x i8] c"ls\00", align 1, !dbg !637
@.str.25 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1, !dbg !639
@.str.26 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1, !dbg !641
@.str.27 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1, !dbg !643
@.str.28 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1, !dbg !645
@.str.29 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1, !dbg !647
@.str.30 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !649
@.str.31 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !651
@.str.32 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !653
@.str.33 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !655
@.str.34 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !657
@.str.35.54 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !659
@.str.36.55 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !661
@.str.37.56 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !663
@.str.38.57 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !665
@.str.39.58 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !667
@.str.40.59 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !669
@.str.41.60 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !671
@.str.42.61 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !673
@.str.43.62 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !675
@.str.66 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !678
@Version = dso_local local_unnamed_addr global ptr @.str.66, align 8, !dbg !681
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !685
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !698
@.str.69 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !690
@.str.1.70 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !692
@.str.2.71 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !694
@.str.3.72 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !696
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !700
@stderr = external local_unnamed_addr global ptr, align 8
@.str.73 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !706
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !738
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !708
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !819
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !833
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !871
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !878
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !835
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !880
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !823
@.str.10.116 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !840
@.str.11.114 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !842
@.str.12.117 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !844
@.str.13.115 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !846
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !848
@.str.124 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !884
@.str.1.125 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !887
@.str.2.126 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !889
@.str.3.127 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !891
@.str.4.128 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !893
@.str.5.129 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !895
@.str.6.130 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !900
@.str.7.131 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !905
@.str.8.132 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !907
@.str.9.133 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !909
@.str.10.134 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !911
@.str.11.135 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !916
@.str.12.136 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !921
@.str.13.137 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !923
@.str.14.138 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !928
@.str.15.139 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !933
@.str.16.140 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !938
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.145 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !943
@.str.18.146 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !945
@.str.19.147 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !947
@.str.20.148 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !949
@.str.21.149 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !951
@.str.22.150 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !953
@.str.23.151 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !955
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !960
@exit_failure = dso_local global i32 1, align 4, !dbg !966
@.str.168 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !972
@.str.1.166 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !975
@.str.2.167 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !977
@.str.175 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !979
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !982
@.str.1.180 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !997

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1075 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1079, metadata !DIExpression()), !dbg !1080
  %2 = icmp eq i32 %0, 0, !dbg !1081
  br i1 %2, label %8, label %3, !dbg !1083

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1084, !tbaa !1086
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !1084
  %6 = load ptr, ptr @program_name, align 8, !dbg !1084, !tbaa !1086
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !1084
  br label %40, !dbg !1084

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !1090
  %10 = load ptr, ptr @program_name, align 8, !dbg !1090, !tbaa !1086
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !1090
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !1092
  %13 = load ptr, ptr @stdout, align 8, !dbg !1092, !tbaa !1086
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1092
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #37, !dbg !1093
  %16 = load ptr, ptr @stdout, align 8, !dbg !1093, !tbaa !1086
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1093
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #37, !dbg !1097
  %19 = load ptr, ptr @stdout, align 8, !dbg !1097, !tbaa !1086
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !1097
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !1100
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1100
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !1101
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1101
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !1102
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1102
  tail call void @emit_tab_list_info(ptr noundef nonnull @.str.3) #37, !dbg !1103
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !1104
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1104
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #37, !dbg !1105
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1105
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1106, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1118, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata ptr poison, metadata !1118, metadata !DIExpression()), !dbg !1123
  tail call void @emit_bug_reporting_address() #37, !dbg !1125
  %26 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !1126
  call void @llvm.dbg.value(metadata ptr %26, metadata !1121, metadata !DIExpression()), !dbg !1123
  %27 = icmp eq ptr %26, null, !dbg !1127
  br i1 %27, label %35, label %28, !dbg !1129

28:                                               ; preds = %8
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(4) @.str.48, i64 noundef 3) #38, !dbg !1130
  %30 = icmp eq i32 %29, 0, !dbg !1130
  br i1 %30, label %35, label %31, !dbg !1131

31:                                               ; preds = %28
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #37, !dbg !1132
  %33 = load ptr, ptr @stdout, align 8, !dbg !1132, !tbaa !1086
  %34 = tail call i32 @fputs_unlocked(ptr noundef %32, ptr noundef %33), !dbg !1132
  br label %35, !dbg !1134

35:                                               ; preds = %8, %28, %31
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1118, metadata !DIExpression()), !dbg !1123
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1122, metadata !DIExpression()), !dbg !1123
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #37, !dbg !1135
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3) #37, !dbg !1135
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #37, !dbg !1136
  %39 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52) #37, !dbg !1136
  br label %40

40:                                               ; preds = %35, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !1137
  unreachable, !dbg !1137
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1138 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1142 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1148 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1151 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !146 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !150, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata ptr %0, metadata !151, metadata !DIExpression()), !dbg !1155
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1156, !tbaa !1157
  %3 = icmp eq i32 %2, -1, !dbg !1159
  br i1 %3, label %4, label %16, !dbg !1160

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.18) #37, !dbg !1161
  call void @llvm.dbg.value(metadata ptr %5, metadata !152, metadata !DIExpression()), !dbg !1162
  %6 = icmp eq ptr %5, null, !dbg !1163
  br i1 %6, label %14, label %7, !dbg !1164

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1165, !tbaa !1166
  %9 = icmp eq i8 %8, 0, !dbg !1165
  br i1 %9, label %14, label %10, !dbg !1167

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1168, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !1174, metadata !DIExpression()), !dbg !1175
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.19) #38, !dbg !1177
  %12 = icmp eq i32 %11, 0, !dbg !1178
  %13 = zext i1 %12 to i32, !dbg !1167
  br label %14, !dbg !1167

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1179, !tbaa !1157
  br label %16, !dbg !1180

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1181
  %18 = icmp eq i32 %17, 0, !dbg !1181
  br i1 %18, label %22, label %19, !dbg !1183

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1184, !tbaa !1086
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1184
  br label %128, !dbg !1186

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !155, metadata !DIExpression()), !dbg !1155
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.20) #38, !dbg !1187
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1188
  call void @llvm.dbg.value(metadata ptr %24, metadata !156, metadata !DIExpression()), !dbg !1155
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !1189
  call void @llvm.dbg.value(metadata ptr %25, metadata !157, metadata !DIExpression()), !dbg !1155
  %26 = icmp eq ptr %25, null, !dbg !1190
  br i1 %26, label %58, label %27, !dbg !1191

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1192
  br i1 %28, label %58, label %29, !dbg !1193

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !158, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i64 0, metadata !162, metadata !DIExpression()), !dbg !1194
  %30 = icmp ult ptr %24, %25, !dbg !1195
  br i1 %30, label %31, label %52, !dbg !1196

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !1155
  %33 = load ptr, ptr %32, align 8, !tbaa !1086
  br label %34, !dbg !1196

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !158, metadata !DIExpression()), !dbg !1194
  call void @llvm.dbg.value(metadata i64 %36, metadata !162, metadata !DIExpression()), !dbg !1194
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1197
  call void @llvm.dbg.value(metadata ptr %37, metadata !158, metadata !DIExpression()), !dbg !1194
  %38 = load i8, ptr %35, align 1, !dbg !1197, !tbaa !1166
  %39 = sext i8 %38 to i64, !dbg !1197
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1197
  %41 = load i16, ptr %40, align 2, !dbg !1197, !tbaa !1198
  %42 = freeze i16 %41, !dbg !1200
  %43 = lshr i16 %42, 13, !dbg !1200
  %44 = and i16 %43, 1, !dbg !1200
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1201
  call void @llvm.dbg.value(metadata i64 %46, metadata !162, metadata !DIExpression()), !dbg !1194
  %47 = icmp ult ptr %37, %25, !dbg !1195
  %48 = icmp ult i64 %46, 2, !dbg !1202
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1202
  br i1 %49, label %34, label %50, !dbg !1196, !llvm.loop !1203

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1205
  br i1 %51, label %52, label %54, !dbg !1207

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1207

54:                                               ; preds = %50, %52
  %55 = phi i1 [ %53, %52 ], [ %51, %50 ]
  %56 = phi ptr [ %25, %52 ], [ %24, %50 ]
  %57 = zext i1 %55 to i8, !dbg !1207
  call void @llvm.dbg.value(metadata i8 %57, metadata !155, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata ptr %56, metadata !157, metadata !DIExpression()), !dbg !1155
  br label %58, !dbg !1208

58:                                               ; preds = %22, %27, %54
  %59 = phi ptr [ %56, %54 ], [ %24, %27 ], [ %24, %22 ], !dbg !1155
  %60 = phi i8 [ %57, %54 ], [ 1, %27 ], [ 0, %22 ], !dbg !1155
  call void @llvm.dbg.value(metadata i8 %60, metadata !155, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata ptr %59, metadata !157, metadata !DIExpression()), !dbg !1155
  %61 = tail call i64 @strcspn(ptr noundef %59, ptr noundef nonnull @.str.21) #38, !dbg !1209
  call void @llvm.dbg.value(metadata i64 %61, metadata !163, metadata !DIExpression()), !dbg !1155
  %62 = getelementptr inbounds i8, ptr %59, i64 %61, !dbg !1210
  call void @llvm.dbg.value(metadata ptr %62, metadata !164, metadata !DIExpression()), !dbg !1155
  br label %63, !dbg !1211

63:                                               ; preds = %96, %58
  %64 = phi ptr [ %62, %58 ], [ %97, %96 ], !dbg !1155
  %65 = phi i8 [ %60, %58 ], [ %73, %96 ], !dbg !1155
  call void @llvm.dbg.value(metadata i8 %65, metadata !155, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.value(metadata ptr %64, metadata !164, metadata !DIExpression()), !dbg !1155
  %66 = load i8, ptr %64, align 1, !dbg !1212, !tbaa !1166
  switch i8 %66, label %72 [
    i8 0, label %98
    i8 10, label %98
    i8 45, label %67
  ], !dbg !1213

67:                                               ; preds = %63
  %68 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1214
  %69 = load i8, ptr %68, align 1, !dbg !1217, !tbaa !1166
  %70 = icmp eq i8 %69, 45, !dbg !1218
  %71 = select i1 %70, i8 0, i8 %65, !dbg !1219
  br label %72, !dbg !1219

72:                                               ; preds = %67, %63
  %73 = phi i8 [ %65, %63 ], [ %71, %67 ], !dbg !1155
  call void @llvm.dbg.value(metadata i8 %73, metadata !155, metadata !DIExpression()), !dbg !1155
  %74 = tail call ptr @__ctype_b_loc() #40, !dbg !1220
  %75 = load ptr, ptr %74, align 8, !dbg !1220, !tbaa !1086
  %76 = sext i8 %66 to i64, !dbg !1220
  %77 = getelementptr inbounds i16, ptr %75, i64 %76, !dbg !1220
  %78 = load i16, ptr %77, align 2, !dbg !1220, !tbaa !1198
  %79 = and i16 %78, 8192, !dbg !1220
  %80 = icmp eq i16 %79, 0, !dbg !1220
  br i1 %80, label %96, label %81, !dbg !1222

81:                                               ; preds = %72
  %82 = icmp eq i8 %66, 9, !dbg !1223
  br i1 %82, label %98, label %83, !dbg !1226

83:                                               ; preds = %81
  %84 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1227
  %85 = load i8, ptr %84, align 1, !dbg !1227, !tbaa !1166
  %86 = sext i8 %85 to i64, !dbg !1227
  %87 = getelementptr inbounds i16, ptr %75, i64 %86, !dbg !1227
  %88 = load i16, ptr %87, align 2, !dbg !1227, !tbaa !1198
  %89 = and i16 %88, 8192, !dbg !1227
  %90 = icmp eq i16 %89, 0, !dbg !1227
  br i1 %90, label %91, label %98, !dbg !1228

91:                                               ; preds = %83
  %92 = and i8 %73, 1, !dbg !1229
  %93 = icmp ne i8 %92, 0, !dbg !1229
  %94 = icmp eq i8 %85, 45
  %95 = select i1 %93, i1 true, i1 %94, !dbg !1231
  br i1 %95, label %96, label %98, !dbg !1231

96:                                               ; preds = %91, %72
  %97 = getelementptr inbounds i8, ptr %64, i64 1, !dbg !1232
  call void @llvm.dbg.value(metadata ptr %97, metadata !164, metadata !DIExpression()), !dbg !1155
  br label %63, !dbg !1211, !llvm.loop !1233

98:                                               ; preds = %91, %63, %63, %81, %83
  %99 = ptrtoint ptr %24 to i64, !dbg !1235
  %100 = load ptr, ptr @stdout, align 8, !dbg !1235, !tbaa !1086
  %101 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %100), !dbg !1235
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1168, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1168, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1168, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1168, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1168, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1168, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1168, metadata !DIExpression()), !dbg !1248
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1168, metadata !DIExpression()), !dbg !1250
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1168, metadata !DIExpression()), !dbg !1252
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1168, metadata !DIExpression()), !dbg !1254
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !220, metadata !DIExpression()), !dbg !1155
  %102 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(7) @.str.35, i64 noundef 6) #38, !dbg !1256
  %103 = icmp eq i32 %102, 0, !dbg !1256
  br i1 %103, label %107, label %104, !dbg !1258

104:                                              ; preds = %98
  %105 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(10) @.str.36, i64 noundef 9) #38, !dbg !1259
  %106 = icmp eq i32 %105, 0, !dbg !1259
  br i1 %106, label %107, label %110, !dbg !1260

107:                                              ; preds = %104, %98
  %108 = trunc i64 %61 to i32, !dbg !1261
  %109 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %108, ptr noundef %59) #37, !dbg !1261
  br label %113, !dbg !1263

110:                                              ; preds = %104
  %111 = trunc i64 %61 to i32, !dbg !1264
  %112 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3, i32 noundef %111, ptr noundef %59) #37, !dbg !1264
  br label %113

113:                                              ; preds = %110, %107
  %114 = load ptr, ptr @stdout, align 8, !dbg !1266, !tbaa !1086
  %115 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %114), !dbg !1266
  %116 = load ptr, ptr @stdout, align 8, !dbg !1267, !tbaa !1086
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %116), !dbg !1267
  %118 = ptrtoint ptr %64 to i64, !dbg !1268
  %119 = sub i64 %118, %99, !dbg !1268
  %120 = load ptr, ptr @stdout, align 8, !dbg !1268, !tbaa !1086
  %121 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %119, ptr noundef %120), !dbg !1268
  %122 = load ptr, ptr @stdout, align 8, !dbg !1269, !tbaa !1086
  %123 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %122), !dbg !1269
  %124 = load ptr, ptr @stdout, align 8, !dbg !1270, !tbaa !1086
  %125 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %124), !dbg !1270
  %126 = load ptr, ptr @stdout, align 8, !dbg !1271, !tbaa !1086
  %127 = tail call i32 @fputs_unlocked(ptr noundef nonnull %64, ptr noundef %126), !dbg !1271
  br label %128, !dbg !1272

128:                                              ; preds = %113, %19
  ret void, !dbg !1272
}

; Function Attrs: nounwind
declare !dbg !1273 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1277 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1281 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1283 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1286 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1289 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1292 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1295 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1301 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1302 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1308 {
  %3 = alloca %struct.__mbstate_t, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !1312, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata ptr %1, metadata !1313, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i8 0, metadata !1314, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i8 0, metadata !1317, metadata !DIExpression()), !dbg !1318
  %7 = load ptr, ptr %1, align 8, !dbg !1319, !tbaa !1086
  tail call void @set_program_name(ptr noundef %7) #37, !dbg !1320
  %8 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.9) #37, !dbg !1321
  %9 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #37, !dbg !1322
  %10 = tail call ptr @textdomain(ptr noundef nonnull @.str.10) #37, !dbg !1323
  %11 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1324
  br label %12, !dbg !1325

12:                                               ; preds = %48, %2
  %13 = phi i64 [ %54, %48 ], [ undef, %2 ]
  %14 = phi i8 [ %42, %48 ], [ 0, %2 ]
  %15 = phi i8 [ %20, %48 ], [ 0, %2 ]
  br label %16, !dbg !1325

16:                                               ; preds = %32, %12
  %17 = phi i8 [ %14, %12 ], [ 0, %32 ]
  %18 = phi i8 [ %15, %12 ], [ %20, %32 ]
  br label %19, !dbg !1325

19:                                               ; preds = %21, %16
  %20 = phi i8 [ %18, %16 ], [ 1, %21 ]
  br label %21, !dbg !1325

21:                                               ; preds = %27, %19
  call void @llvm.dbg.value(metadata i8 %20, metadata !1317, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i8 %17, metadata !1314, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i64 %13, metadata !1315, metadata !DIExpression()), !dbg !1318
  %22 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1326
  call void @llvm.dbg.value(metadata i32 %22, metadata !1316, metadata !DIExpression()), !dbg !1318
  switch i32 %22, label %38 [
    i32 -1, label %57
    i32 63, label %23
    i32 97, label %24
    i32 116, label %25
    i32 128, label %19
    i32 44, label %28
    i32 -130, label %33
    i32 -131, label %34
  ], !dbg !1325, !llvm.loop !1327

23:                                               ; preds = %21
  tail call void @usage(i32 noundef 1) #41, !dbg !1329
  unreachable, !dbg !1329

24:                                               ; preds = %21
  store i8 1, ptr @convert_entire_line, align 1, !dbg !1332, !tbaa !1333
  br label %27, !dbg !1335

25:                                               ; preds = %21
  store i8 1, ptr @convert_entire_line, align 1, !dbg !1336, !tbaa !1333
  %26 = load ptr, ptr @optarg, align 8, !dbg !1337, !tbaa !1086
  tail call void @parse_tab_stops(ptr noundef %26) #37, !dbg !1338
  br label %27, !dbg !1339

27:                                               ; preds = %25, %24
  br label %21, !dbg !1318, !llvm.loop !1327

28:                                               ; preds = %21
  %29 = and i8 %17, 1, !dbg !1340
  %30 = icmp eq i8 %29, 0, !dbg !1340
  br i1 %30, label %32, label %31, !dbg !1342

31:                                               ; preds = %28
  tail call void @add_tab_stop(i64 noundef %13) #37, !dbg !1343
  br label %32, !dbg !1343

32:                                               ; preds = %31, %28
  br label %16, !dbg !1325, !llvm.loop !1327

33:                                               ; preds = %21
  tail call void @usage(i32 noundef 0) #41, !dbg !1344
  unreachable, !dbg !1344

34:                                               ; preds = %21
  %35 = load ptr, ptr @stdout, align 8, !dbg !1345, !tbaa !1086
  %36 = load ptr, ptr @Version, align 8, !dbg !1345, !tbaa !1086
  %37 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #37, !dbg !1345
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %35, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, ptr noundef %36, ptr noundef %37, ptr noundef null) #37, !dbg !1345
  tail call void @exit(i32 noundef 0) #39, !dbg !1345
  unreachable, !dbg !1345

38:                                               ; preds = %21
  %39 = and i8 %17, 1, !dbg !1346
  %40 = icmp eq i8 %39, 0, !dbg !1346
  %41 = select i1 %40, i64 0, i64 %13, !dbg !1348
  %42 = select i1 %40, i8 1, i8 %17, !dbg !1348
  call void @llvm.dbg.value(metadata i8 %42, metadata !1314, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i64 %41, metadata !1315, metadata !DIExpression()), !dbg !1318
  %43 = icmp slt i64 %41, 0, !dbg !1349
  br i1 %43, label %44, label %46, !dbg !1349

44:                                               ; preds = %38
  %45 = icmp ult i64 %41, -922337203685477580, !dbg !1349
  br i1 %45, label %55, label %48, !dbg !1349

46:                                               ; preds = %38
  %47 = icmp ugt i64 %41, 922337203685477580, !dbg !1349
  br i1 %47, label %55, label %48, !dbg !1349

48:                                               ; preds = %44, %46
  call void @llvm.dbg.value(metadata i64 %41, metadata !1315, metadata !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value)), !dbg !1318
  call void @llvm.dbg.value(metadata i64 %41, metadata !1315, metadata !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value)), !dbg !1318
  %49 = mul nsw i64 %41, 10, !dbg !1349
  call void @llvm.dbg.value(metadata i64 %49, metadata !1315, metadata !DIExpression()), !dbg !1318
  %50 = add nsw i32 %22, -48, !dbg !1349
  %51 = sext i32 %50 to i64, !dbg !1349
  %52 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %49, i64 %51), !dbg !1349
  %53 = extractvalue { i64, i1 } %52, 1, !dbg !1349
  %54 = extractvalue { i64, i1 } %52, 0, !dbg !1349
  call void @llvm.dbg.value(metadata i64 %54, metadata !1315, metadata !DIExpression()), !dbg !1318
  br i1 %53, label %55, label %12, !dbg !1351, !llvm.loop !1327

55:                                               ; preds = %44, %46, %48
  %56 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #37, !dbg !1352
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %56) #37, !dbg !1352
  unreachable, !dbg !1352

57:                                               ; preds = %21
  %58 = icmp eq i8 %20, 0, !dbg !1353
  br i1 %58, label %60, label %59, !dbg !1355

59:                                               ; preds = %57
  store i8 0, ptr @convert_entire_line, align 1, !dbg !1356, !tbaa !1333
  br label %60, !dbg !1357

60:                                               ; preds = %59, %57
  %61 = and i8 %17, 1, !dbg !1358
  %62 = icmp eq i8 %61, 0, !dbg !1358
  br i1 %62, label %64, label %63, !dbg !1360

63:                                               ; preds = %60
  tail call void @add_tab_stop(i64 noundef %13) #37, !dbg !1361
  br label %64, !dbg !1361

64:                                               ; preds = %63, %60
  tail call void @finalize_tab_stops() #37, !dbg !1362
  %65 = load i32, ptr @optind, align 4, !dbg !1363, !tbaa !1157
  %66 = icmp slt i32 %65, %0, !dbg !1364
  %67 = sext i32 %65 to i64, !dbg !1365
  %68 = getelementptr inbounds ptr, ptr %1, i64 %67, !dbg !1365
  %69 = select i1 %66, ptr %68, ptr null, !dbg !1365
  tail call void @set_file_list(ptr noundef %69) #37, !dbg !1366
  %70 = tail call ptr @next_file(ptr noundef null) #37, !dbg !1367
  call void @llvm.dbg.value(metadata ptr %70, metadata !359, metadata !DIExpression()), !dbg !1369
  %71 = icmp eq ptr %70, null, !dbg !1370
  br i1 %71, label %380, label %72, !dbg !1372

72:                                               ; preds = %64
  call void @llvm.dbg.value(metadata ptr undef, metadata !1373, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !1379, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata i64 262144, metadata !1380, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata ptr %70, metadata !1381, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata ptr %70, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 262144, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1369
  %73 = load i64, ptr @max_column_width, align 8, !dbg !1384, !tbaa !1385
  %74 = shl i64 %73, 4, !dbg !1387
  %75 = tail call noalias nonnull ptr @ximalloc(i64 noundef %74) #42, !dbg !1388
  call void @llvm.dbg.value(metadata ptr %75, metadata !360, metadata !DIExpression()), !dbg !1369
  br label %76, !dbg !1389

76:                                               ; preds = %379, %72
  %77 = phi i64 [ 0, %72 ], [ %218, %379 ], !dbg !1369
  %78 = phi i64 [ 0, %72 ], [ %219, %379 ], !dbg !1369
  %79 = phi ptr [ %70, %72 ], [ %223, %379 ], !dbg !1390
  %80 = phi ptr [ %70, %72 ], [ %224, %379 ], !dbg !1369
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata ptr %79, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 262144, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %78, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %77, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata ptr %80, metadata !359, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i8 1, metadata !386, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 0, metadata !387, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 0, metadata !393, metadata !DIExpression()), !dbg !1391
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !1392
  call void @llvm.dbg.value(metadata i64 0, metadata !394, metadata !DIExpression()), !dbg !1391
  store i64 0, ptr %5, align 8, !dbg !1393, !tbaa !1385
  call void @llvm.dbg.value(metadata i8 0, metadata !395, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i8 1, metadata !396, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 0, metadata !397, metadata !DIExpression()), !dbg !1391
  br label %81, !dbg !1394

81:                                               ; preds = %372, %76
  %82 = phi i64 [ %77, %76 ], [ %218, %372 ], !dbg !1369
  %83 = phi i64 [ %78, %76 ], [ %219, %372 ], !dbg !1369
  %84 = phi ptr [ %79, %76 ], [ %223, %372 ], !dbg !1390
  %85 = phi i64 [ 0, %76 ], [ %373, %372 ], !dbg !1391
  %86 = phi i8 [ 1, %76 ], [ %374, %372 ], !dbg !1391
  %87 = phi i8 [ 0, %76 ], [ %375, %372 ], !dbg !1391
  %88 = phi i64 [ 0, %76 ], [ %376, %372 ], !dbg !1391
  %89 = phi i8 [ 1, %76 ], [ %377, %372 ], !dbg !1391
  %90 = phi ptr [ %80, %76 ], [ %224, %372 ], !dbg !1369
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata ptr %84, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 262144, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %83, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %82, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata ptr %90, metadata !359, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata i8 %89, metadata !386, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %88, metadata !387, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i8 %87, metadata !395, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i8 %86, metadata !396, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %85, metadata !397, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata ptr %84, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 262144, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %83, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %82, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata ptr %90, metadata !359, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata ptr undef, metadata !1395, metadata !DIExpression()), !dbg !1405
  %91 = sub nsw i64 %82, %83, !dbg !1407
  call void @llvm.dbg.value(metadata i64 %91, metadata !1400, metadata !DIExpression()), !dbg !1405
  %92 = icmp slt i64 %91, 4, !dbg !1408
  br i1 %92, label %93, label %113, !dbg !1409

93:                                               ; preds = %81
  call void @llvm.dbg.value(metadata ptr %84, metadata !1410, metadata !DIExpression()), !dbg !1416
  %94 = load i32, ptr %84, align 8, !dbg !1418, !tbaa !1419
  %95 = and i32 %94, 16, !dbg !1421
  %96 = icmp eq i32 %95, 0, !dbg !1421
  br i1 %96, label %97, label %108, !dbg !1422

97:                                               ; preds = %93
  %98 = icmp sgt i64 %91, 0, !dbg !1423
  br i1 %98, label %99, label %102, !dbg !1425

99:                                               ; preds = %97
  %100 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %83, !dbg !1426
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !1428, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata ptr %100, metadata !1434, metadata !DIExpression()), !dbg !1436
  call void @llvm.dbg.value(metadata i64 %91, metadata !1435, metadata !DIExpression()), !dbg !1436
  %101 = call ptr @__memmove_chk(ptr noundef nonnull @unexpand.line_in, ptr noundef nonnull %100, i64 noundef %91, i64 noundef 262144) #37, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %91, metadata !1401, metadata !DIExpression()), !dbg !1439
  br label %102

102:                                              ; preds = %99, %97
  %103 = phi i64 [ %91, %99 ], [ 0, %97 ], !dbg !1440
  call void @llvm.dbg.value(metadata i64 %103, metadata !1401, metadata !DIExpression()), !dbg !1439
  %104 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %103, !dbg !1441
  %105 = sub nuw nsw i64 262144, %103, !dbg !1441
  %106 = call i64 @fread_unlocked(ptr noundef nonnull %104, i64 noundef 1, i64 noundef %105, ptr noundef nonnull %84), !dbg !1441
  %107 = add i64 %106, %103, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %107, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %107, metadata !1400, metadata !DIExpression()), !dbg !1405
  br label %108, !dbg !1443

108:                                              ; preds = %102, %93
  %109 = phi i64 [ %107, %102 ], [ %82, %93 ], !dbg !1369
  %110 = phi i64 [ 0, %102 ], [ %83, %93 ], !dbg !1369
  %111 = phi i64 [ %107, %102 ], [ %91, %93 ], !dbg !1405
  call void @llvm.dbg.value(metadata i64 %110, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %109, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %111, metadata !1400, metadata !DIExpression()), !dbg !1405
  %112 = icmp slt i64 %111, 1, !dbg !1444
  br i1 %112, label %159, label %113, !dbg !1446

113:                                              ; preds = %108, %81
  %114 = phi i64 [ %109, %108 ], [ %82, %81 ], !dbg !1369
  %115 = phi i64 [ %110, %108 ], [ %83, %81 ], !dbg !1369
  call void @llvm.dbg.value(metadata i64 %115, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %114, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1369
  %116 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %115, !dbg !1447
  call void @llvm.dbg.value(metadata ptr %116, metadata !1448, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1453, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1468
  %117 = load i8, ptr %116, align 1, !dbg !1470, !tbaa !1166
  call void @llvm.dbg.value(metadata i8 %117, metadata !1454, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i8 %117, metadata !1471, metadata !DIExpression()), !dbg !1476
  %118 = icmp sgt i8 %117, -1, !dbg !1479
  br i1 %118, label %140, label %119, !dbg !1480

119:                                              ; preds = %113
  call void @llvm.dbg.value(metadata !DIArgList(ptr @unexpand.line_in, i64 %114), metadata !1453, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1468
  %120 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %114, !dbg !1481
  call void @llvm.dbg.value(metadata ptr %120, metadata !1453, metadata !DIExpression()), !dbg !1468
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #37, !dbg !1482
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1455, metadata !DIExpression()), !dbg !1483
  store i32 0, ptr %3, align 4, !dbg !1484, !tbaa !1485
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #37, !dbg !1487
  %121 = ptrtoint ptr %120 to i64, !dbg !1488
  %122 = ptrtoint ptr %116 to i64, !dbg !1488
  %123 = sub i64 %121, %122, !dbg !1488
  call void @llvm.dbg.value(metadata ptr %4, metadata !1466, metadata !DIExpression(DW_OP_deref)), !dbg !1468
  %124 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %116, i64 noundef %123, ptr noundef nonnull %3) #37, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %124, metadata !1467, metadata !DIExpression()), !dbg !1468
  %125 = icmp slt i64 %124, 0, !dbg !1490
  br i1 %125, label %134, label %126, !dbg !1492, !prof !1493

126:                                              ; preds = %119
  %127 = load i32, ptr %4, align 4, !dbg !1494, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %127, metadata !1466, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i32 %127, metadata !1495, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i64 %124, metadata !1500, metadata !DIExpression()), !dbg !1501
  %128 = icmp ne i64 %124, 0, !dbg !1503
  call void @llvm.assume(i1 %128), !dbg !1503
  %129 = icmp ult i64 %124, 5, !dbg !1504
  call void @llvm.assume(i1 %129), !dbg !1504
  %130 = icmp ult i32 %127, 1114112, !dbg !1505
  call void @llvm.assume(i1 %130), !dbg !1505
  %131 = shl nuw nsw i64 %124, 40, !dbg !1506
  %132 = zext i32 %127 to i64, !dbg !1506
  %133 = or i64 %131, %132, !dbg !1506
  br label %138, !dbg !1507

134:                                              ; preds = %119
  call void @llvm.dbg.value(metadata i8 %117, metadata !1508, metadata !DIExpression()), !dbg !1513
  %135 = zext i8 %117 to i64, !dbg !1515
  %136 = shl nuw nsw i64 %135, 32, !dbg !1515
  %137 = or i64 %136, 1099511627776, !dbg !1515
  br label %138, !dbg !1516

138:                                              ; preds = %134, %126
  %139 = phi i64 [ %137, %134 ], [ %133, %126 ], !dbg !1468
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #37, !dbg !1517
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #37, !dbg !1517
  br label %143

140:                                              ; preds = %113
  call void @llvm.dbg.value(metadata i64 1, metadata !1500, metadata !DIExpression()), !dbg !1518
  %141 = zext i8 %117 to i64, !dbg !1520
  call void @llvm.dbg.value(metadata i64 %141, metadata !1495, metadata !DIExpression()), !dbg !1518
  %142 = or i64 %141, 1099511627776, !dbg !1520
  br label %143, !dbg !1521

143:                                              ; preds = %140, %138
  %144 = phi i64 [ %142, %140 ], [ %139, %138 ], !dbg !1468
  call void @llvm.dbg.value(metadata i64 %144, metadata !1404, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %144, metadata !1404, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %144, metadata !1404, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %144, metadata !1404, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1405
  %145 = and i64 %144, 1095216660480, !dbg !1522
  %146 = icmp eq i64 %145, 0, !dbg !1522
  br i1 %146, label %150, label %147, !dbg !1524

147:                                              ; preds = %143
  call void @llvm.dbg.value(metadata i64 %115, metadata !361, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1369
  %148 = load i8, ptr %116, align 1, !dbg !1525, !tbaa !1166
  %149 = zext i8 %148 to i64, !dbg !1527
  call void @llvm.dbg.value(metadata i8 %148, metadata !1404, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1405
  br label %152

150:                                              ; preds = %143
  %151 = lshr i64 %144, 40, !dbg !1528
  call void @llvm.dbg.value(metadata i64 %151, metadata !1404, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %144, metadata !1404, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1405
  call void @llvm.dbg.value(metadata !DIArgList(i64 %115, i64 %151), metadata !361, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1369
  br label %152, !dbg !1529

152:                                              ; preds = %150, %147
  %153 = phi i64 [ %151, %150 ], [ 1, %147 ]
  %154 = phi i64 [ %144, %150 ], [ %149, %147 ], !dbg !1405
  %155 = add nsw i64 %153, %115, !dbg !1530
  call void @llvm.dbg.value(metadata i64 %155, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i32 poison, metadata !1404, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1405
  %156 = and i64 %144, -4294967296, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %114, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i16 poison, metadata !1404, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1405
  call void @llvm.dbg.value(metadata i32 poison, metadata !1404, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1405
  call void @llvm.dbg.value(metadata i8 poison, metadata !1404, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1405
  call void @llvm.dbg.value(metadata i8 poison, metadata !1404, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %154, metadata !374, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %156, metadata !374, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %156, metadata !374, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1391
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !374, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1391
  %157 = and i64 %154, 4294967295, !dbg !1532
  %158 = icmp eq i64 %157, 4294967295, !dbg !1532
  br i1 %158, label %159, label %217, !dbg !1533

159:                                              ; preds = %152, %108
  %160 = phi i64 [ %156, %152 ], [ 0, %108 ]
  %161 = phi i64 [ %154, %152 ], [ 4294967295, %108 ]
  %162 = phi i64 [ %155, %152 ], [ %110, %108 ]
  %163 = phi i64 [ %114, %152 ], [ %109, %108 ]
  %164 = call ptr @next_file(ptr noundef %90) #37, !dbg !1534
  call void @llvm.dbg.value(metadata ptr %164, metadata !359, metadata !DIExpression()), !dbg !1369
  %165 = icmp eq ptr %164, null, !dbg !1533
  br i1 %165, label %217, label %166, !dbg !1535

166:                                              ; preds = %159, %210
  %167 = phi ptr [ %215, %210 ], [ %164, %159 ], !dbg !1369
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata ptr %167, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 262144, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata ptr %167, metadata !359, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.value(metadata ptr undef, metadata !1395, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata i64 0, metadata !1400, metadata !DIExpression()), !dbg !1405
  call void @llvm.dbg.value(metadata ptr %167, metadata !1410, metadata !DIExpression()), !dbg !1416
  %168 = load i32, ptr %167, align 8, !dbg !1418, !tbaa !1419
  %169 = and i32 %168, 16, !dbg !1421
  %170 = icmp eq i32 %169, 0, !dbg !1421
  br i1 %170, label %171, label %210, !dbg !1422

171:                                              ; preds = %166
  call void @llvm.dbg.value(metadata i64 0, metadata !1401, metadata !DIExpression()), !dbg !1439
  %172 = call i64 @fread_unlocked(ptr noundef nonnull @unexpand.line_in, i64 noundef 1, i64 noundef 262144, ptr noundef nonnull %167), !dbg !1441
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %172, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %172, metadata !1400, metadata !DIExpression()), !dbg !1405
  %173 = icmp slt i64 %172, 1, !dbg !1444
  br i1 %173, label %210, label %174, !dbg !1446

174:                                              ; preds = %171
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i64 %172, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !1448, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1453, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1468
  %175 = load i8, ptr @unexpand.line_in, align 16, !dbg !1470, !tbaa !1166
  call void @llvm.dbg.value(metadata i8 %175, metadata !1454, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i8 %175, metadata !1471, metadata !DIExpression()), !dbg !1476
  %176 = icmp sgt i8 %175, -1, !dbg !1479
  br i1 %176, label %177, label %180, !dbg !1480

177:                                              ; preds = %174
  call void @llvm.dbg.value(metadata i64 1, metadata !1500, metadata !DIExpression()), !dbg !1518
  %178 = zext i8 %175 to i64, !dbg !1520
  call void @llvm.dbg.value(metadata i64 %178, metadata !1495, metadata !DIExpression()), !dbg !1518
  %179 = or i64 %178, 1099511627776, !dbg !1520
  br label %199, !dbg !1521

180:                                              ; preds = %174
  call void @llvm.dbg.value(metadata !DIArgList(ptr @unexpand.line_in, i64 %172), metadata !1453, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1468
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #37, !dbg !1482
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1455, metadata !DIExpression()), !dbg !1483
  store i32 0, ptr %3, align 4, !dbg !1484, !tbaa !1485
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #37, !dbg !1487
  call void @llvm.dbg.value(metadata ptr %4, metadata !1466, metadata !DIExpression(DW_OP_deref)), !dbg !1468
  %181 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull @unexpand.line_in, i64 noundef %172, ptr noundef nonnull %3) #37, !dbg !1489
  call void @llvm.dbg.value(metadata i64 %181, metadata !1467, metadata !DIExpression()), !dbg !1468
  %182 = icmp slt i64 %181, 0, !dbg !1490
  br i1 %182, label %183, label %187, !dbg !1492, !prof !1493

183:                                              ; preds = %180
  call void @llvm.dbg.value(metadata i8 %175, metadata !1508, metadata !DIExpression()), !dbg !1513
  %184 = zext i8 %175 to i64, !dbg !1515
  %185 = shl nuw nsw i64 %184, 32, !dbg !1515
  %186 = or i64 %185, 1099511627776, !dbg !1515
  br label %195, !dbg !1516

187:                                              ; preds = %180
  %188 = load i32, ptr %4, align 4, !dbg !1494, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %188, metadata !1466, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.value(metadata i32 %188, metadata !1495, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.value(metadata i64 %181, metadata !1500, metadata !DIExpression()), !dbg !1501
  %189 = icmp ne i64 %181, 0, !dbg !1503
  call void @llvm.assume(i1 %189), !dbg !1503
  %190 = icmp ult i64 %181, 5, !dbg !1504
  call void @llvm.assume(i1 %190), !dbg !1504
  %191 = icmp ult i32 %188, 1114112, !dbg !1505
  call void @llvm.assume(i1 %191), !dbg !1505
  %192 = shl nuw nsw i64 %181, 40, !dbg !1506
  %193 = zext i32 %188 to i64, !dbg !1506
  %194 = or i64 %192, %193, !dbg !1506
  br label %195, !dbg !1507

195:                                              ; preds = %187, %183
  %196 = phi i64 [ %186, %183 ], [ %194, %187 ], !dbg !1468
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #37, !dbg !1517
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #37, !dbg !1517
  %197 = load i8, ptr @unexpand.line_in, align 16, !dbg !1524
  %198 = zext i8 %197 to i64, !dbg !1524
  br label %199

199:                                              ; preds = %195, %177
  %200 = phi i64 [ %198, %195 ], [ %178, %177 ], !dbg !1524
  %201 = phi i64 [ %196, %195 ], [ %179, %177 ], !dbg !1468
  call void @llvm.dbg.value(metadata i64 %201, metadata !1404, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %201, metadata !1404, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %201, metadata !1404, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %201, metadata !1404, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1405
  %202 = and i64 %201, 1095216660480, !dbg !1522
  %203 = icmp eq i64 %202, 0, !dbg !1522
  %204 = lshr i64 %201, 40, !dbg !1524
  %205 = select i1 %203, i64 %204, i64 1, !dbg !1524
  %206 = select i1 %203, i64 %201, i64 %200, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %205, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i32 poison, metadata !1404, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1405
  %207 = and i64 %201, -4294967296, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %172, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1369
  call void @llvm.dbg.value(metadata i16 poison, metadata !1404, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1405
  call void @llvm.dbg.value(metadata i32 poison, metadata !1404, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1405
  call void @llvm.dbg.value(metadata i8 poison, metadata !1404, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1405
  call void @llvm.dbg.value(metadata i8 poison, metadata !1404, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1405
  call void @llvm.dbg.value(metadata i64 %206, metadata !374, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %207, metadata !374, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %207, metadata !374, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1391
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !374, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1391
  %208 = and i64 %206, 4294967295, !dbg !1532
  %209 = icmp eq i64 %208, 4294967295, !dbg !1532
  br i1 %209, label %210, label %217, !dbg !1533

210:                                              ; preds = %199, %171, %166
  %211 = phi i64 [ %207, %199 ], [ 0, %171 ], [ 0, %166 ]
  %212 = phi i64 [ %206, %199 ], [ 4294967295, %171 ], [ 4294967295, %166 ]
  %213 = phi i64 [ %205, %199 ], [ 0, %171 ], [ 0, %166 ]
  %214 = phi i64 [ %172, %199 ], [ %172, %171 ], [ 0, %166 ]
  %215 = call ptr @next_file(ptr noundef nonnull %167) #37, !dbg !1534
  call void @llvm.dbg.value(metadata ptr %215, metadata !359, metadata !DIExpression()), !dbg !1369
  %216 = icmp eq ptr %215, null, !dbg !1533
  br i1 %216, label %217, label %166, !dbg !1535, !llvm.loop !1536

217:                                              ; preds = %210, %199, %159, %152
  %218 = phi i64 [ %114, %152 ], [ %163, %159 ], [ %172, %199 ], [ %214, %210 ], !dbg !1539
  %219 = phi i64 [ %155, %152 ], [ %162, %159 ], [ %205, %199 ], [ %213, %210 ], !dbg !1405
  %220 = phi i64 [ %154, %152 ], [ %161, %159 ], [ %206, %199 ], [ %212, %210 ], !dbg !1405
  %221 = phi i64 [ %156, %152 ], [ %160, %159 ], [ %207, %199 ], [ %211, %210 ], !dbg !1540
  %222 = phi i1 [ false, %152 ], [ true, %159 ], [ false, %199 ], [ true, %210 ], !dbg !1532
  %223 = phi ptr [ %84, %152 ], [ %84, %159 ], [ %167, %199 ], [ %167, %210 ], !dbg !1369
  %224 = phi ptr [ %90, %152 ], [ null, %159 ], [ %167, %199 ], [ null, %210 ], !dbg !1369
  %225 = trunc i64 %220 to i32, !dbg !1541
  %226 = lshr i64 %221, 40, !dbg !1541
  call void @llvm.dbg.value(metadata ptr %224, metadata !359, metadata !DIExpression()), !dbg !1369
  %227 = and i8 %89, 1, !dbg !1542
  %228 = icmp eq i8 %227, 0, !dbg !1542
  br i1 %228, label %345, label %229, !dbg !1543

229:                                              ; preds = %217
  call void @llvm.dbg.value(metadata i32 %225, metadata !1544, metadata !DIExpression()), !dbg !1549
  call void @llvm.dbg.value(metadata i32 %225, metadata !1551, metadata !DIExpression()), !dbg !1559
  %230 = call i32 @iswblank(i32 noundef %225) #37, !dbg !1561
  %231 = icmp ne i32 %230, 0, !dbg !1562
  %232 = zext i1 %231 to i8, !dbg !1563
  call void @llvm.dbg.value(metadata i8 %232, metadata !398, metadata !DIExpression()), !dbg !1564
  br i1 %231, label %233, label %283, !dbg !1565

233:                                              ; preds = %229
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #37, !dbg !1566
  call void @llvm.dbg.value(metadata ptr %5, metadata !394, metadata !DIExpression(DW_OP_deref)), !dbg !1391
  call void @llvm.dbg.value(metadata ptr %6, metadata !402, metadata !DIExpression(DW_OP_deref)), !dbg !1567
  %234 = call i64 @get_next_tab_column(i64 noundef %88, ptr noundef nonnull %5, ptr noundef nonnull %6) #37, !dbg !1568
  call void @llvm.dbg.value(metadata i64 %234, metadata !393, metadata !DIExpression()), !dbg !1391
  %235 = load i8, ptr %6, align 1, !dbg !1569, !tbaa !1333, !range !1571, !noundef !1095
  call void @llvm.dbg.value(metadata i8 %235, metadata !402, metadata !DIExpression()), !dbg !1567
  %236 = icmp eq i8 %235, 0, !dbg !1569
  %237 = select i1 %236, i8 %89, i8 0, !dbg !1572
  call void @llvm.dbg.value(metadata i8 %237, metadata !386, metadata !DIExpression()), !dbg !1391
  %238 = and i8 %237, 1, !dbg !1573
  %239 = icmp eq i8 %238, 0, !dbg !1573
  br i1 %239, label %279, label %240, !dbg !1575

240:                                              ; preds = %233
  %241 = icmp eq i32 %225, 9, !dbg !1576
  br i1 %241, label %242, label %244, !dbg !1579

242:                                              ; preds = %240
  call void @llvm.dbg.value(metadata i64 %234, metadata !387, metadata !DIExpression()), !dbg !1391
  %243 = icmp eq i64 %85, 0, !dbg !1580
  br i1 %243, label %275, label %273, !dbg !1583

244:                                              ; preds = %240
  call void @llvm.dbg.value(metadata i32 %225, metadata !1584, metadata !DIExpression()), !dbg !1589
  %245 = call i32 @wcwidth(i32 noundef %225) #37, !dbg !1592
  %246 = sext i32 %245 to i64, !dbg !1593
  %247 = add nsw i64 %88, %246, !dbg !1594
  call void @llvm.dbg.value(metadata i64 %247, metadata !387, metadata !DIExpression()), !dbg !1391
  %248 = and i8 %86, 1, !dbg !1595
  %249 = icmp ne i8 %248, 0, !dbg !1595
  %250 = icmp eq i64 %247, %234
  %251 = select i1 %249, i1 %250, i1 false, !dbg !1597
  br i1 %251, label %252, label %338, !dbg !1597

252:                                              ; preds = %244
  call void @llvm.dbg.value(metadata i8 0, metadata !374, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1391
  %253 = load ptr, ptr @stdout, align 8, !dbg !1598, !tbaa !1086
  call void @llvm.dbg.value(metadata i32 9, metadata !1600, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata ptr %253, metadata !1605, metadata !DIExpression()), !dbg !1606
  %254 = getelementptr inbounds %struct._IO_FILE, ptr %253, i64 0, i32 5, !dbg !1608
  %255 = load ptr, ptr %254, align 8, !dbg !1608, !tbaa !1609
  %256 = getelementptr inbounds %struct._IO_FILE, ptr %253, i64 0, i32 6, !dbg !1608
  %257 = load ptr, ptr %256, align 8, !dbg !1608, !tbaa !1610
  %258 = icmp ult ptr %255, %257, !dbg !1608
  br i1 %258, label %259, label %261, !dbg !1608, !prof !1611

259:                                              ; preds = %252
  %260 = getelementptr inbounds i8, ptr %255, i64 1, !dbg !1608
  store ptr %260, ptr %254, align 8, !dbg !1608, !tbaa !1609
  store i8 9, ptr %255, align 1, !dbg !1608, !tbaa !1166
  br label %273, !dbg !1612

261:                                              ; preds = %252
  %262 = call i32 @__overflow(ptr noundef nonnull %253, i32 noundef 9) #37, !dbg !1608
  %263 = icmp slt i32 %262, 0, !dbg !1613
  br i1 %263, label %264, label %273, !dbg !1612

264:                                              ; preds = %261
  %265 = tail call ptr @__errno_location() #40, !dbg !1614
  %266 = load i32, ptr %265, align 4, !dbg !1614, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %266, metadata !1617, metadata !DIExpression()), !dbg !1619
  %267 = load ptr, ptr @stdout, align 8, !dbg !1620, !tbaa !1086
  %268 = call i32 @fflush_unlocked(ptr noundef %267) #37, !dbg !1620
  %269 = load ptr, ptr @stdout, align 8, !dbg !1621, !tbaa !1086
  %270 = call i32 @fpurge(ptr noundef %269) #37, !dbg !1622
  %271 = load ptr, ptr @stdout, align 8, !dbg !1623, !tbaa !1086
  call void @clearerr_unlocked(ptr noundef %271) #37, !dbg !1623
  %272 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #37, !dbg !1624
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %266, ptr noundef %272) #37, !dbg !1624
  unreachable, !dbg !1624

273:                                              ; preds = %261, %259, %242
  %274 = phi i64 [ %226, %242 ], [ 0, %259 ], [ 0, %261 ]
  store i8 9, ptr %75, align 1, !dbg !1625, !tbaa !1166
  br label %275, !dbg !1626

275:                                              ; preds = %273, %242
  %276 = phi i64 [ %226, %242 ], [ %274, %273 ], !dbg !1627
  call void @llvm.dbg.value(metadata i8 poison, metadata !374, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %234, metadata !387, metadata !DIExpression()), !dbg !1391
  %277 = and i8 %87, 1, !dbg !1626
  %278 = zext i8 %277 to i64, !dbg !1626
  call void @llvm.dbg.value(metadata i64 %278, metadata !397, metadata !DIExpression()), !dbg !1391
  br label %279, !dbg !1628

279:                                              ; preds = %275, %233
  %280 = phi i64 [ %85, %233 ], [ %278, %275 ]
  %281 = phi i64 [ %88, %233 ], [ %234, %275 ]
  %282 = phi i64 [ %226, %233 ], [ %276, %275 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !374, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %281, metadata !387, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i8 %87, metadata !395, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i8 poison, metadata !396, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %280, metadata !397, metadata !DIExpression()), !dbg !1391
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #37, !dbg !1629
  br label %304

283:                                              ; preds = %229
  %284 = icmp eq i32 %225, 8, !dbg !1630
  br i1 %284, label %285, label %293, !dbg !1631

285:                                              ; preds = %283
  %286 = icmp ne i64 %88, 0, !dbg !1632
  %287 = sext i1 %286 to i64
  %288 = add i64 %88, %287, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %288, metadata !387, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %288, metadata !393, metadata !DIExpression()), !dbg !1391
  %289 = load i64, ptr %5, align 8, !dbg !1635, !tbaa !1385
  call void @llvm.dbg.value(metadata i64 %289, metadata !394, metadata !DIExpression()), !dbg !1391
  %290 = icmp ne i64 %289, 0, !dbg !1636
  %291 = sext i1 %290 to i64
  %292 = add i64 %289, %291, !dbg !1637
  call void @llvm.dbg.value(metadata i64 %292, metadata !394, metadata !DIExpression()), !dbg !1391
  store i64 %292, ptr %5, align 8, !dbg !1637, !tbaa !1385
  br label %304, !dbg !1638

293:                                              ; preds = %283
  call void @llvm.dbg.value(metadata i32 %225, metadata !1584, metadata !DIExpression()), !dbg !1639
  %294 = call i32 @wcwidth(i32 noundef %225) #37, !dbg !1641
  call void @llvm.dbg.value(metadata i32 %294, metadata !405, metadata !DIExpression()), !dbg !1642
  %295 = icmp slt i32 %294, 0, !dbg !1643
  %296 = select i1 %295, i32 1, i32 %294, !dbg !1643
  %297 = zext i32 %296 to i64, !dbg !1643
  %298 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %88, i64 %297), !dbg !1643
  %299 = extractvalue { i64, i1 } %298, 1, !dbg !1643
  call void @llvm.dbg.value(metadata i64 poison, metadata !387, metadata !DIExpression()), !dbg !1391
  br i1 %299, label %300, label %302, !dbg !1645

300:                                              ; preds = %293
  %301 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #37, !dbg !1646
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %301) #37, !dbg !1646
  unreachable, !dbg !1646

302:                                              ; preds = %293
  %303 = extractvalue { i64, i1 } %298, 0, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %303, metadata !387, metadata !DIExpression()), !dbg !1391
  br label %304

304:                                              ; preds = %302, %285, %279
  %305 = phi i64 [ %85, %285 ], [ %85, %302 ], [ %280, %279 ], !dbg !1391
  %306 = phi i64 [ %288, %285 ], [ %303, %302 ], [ %281, %279 ], !dbg !1647
  %307 = phi i8 [ %89, %285 ], [ %89, %302 ], [ %237, %279 ], !dbg !1391
  %308 = phi i64 [ %226, %285 ], [ %226, %302 ], [ %282, %279 ], !dbg !1541
  call void @llvm.dbg.value(metadata i8 poison, metadata !374, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1391
  call void @llvm.dbg.value(metadata i8 %307, metadata !386, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %306, metadata !387, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i8 %87, metadata !395, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %305, metadata !397, metadata !DIExpression()), !dbg !1391
  %309 = icmp eq i64 %305, 0, !dbg !1648
  br i1 %309, label %329, label %310, !dbg !1649

310:                                              ; preds = %304
  %311 = icmp slt i64 %305, 2, !dbg !1650
  %312 = and i8 %87, 1
  %313 = icmp eq i8 %312, 0
  %314 = select i1 %311, i1 true, i1 %313, !dbg !1652
  br i1 %314, label %316, label %315, !dbg !1652

315:                                              ; preds = %310
  store i8 9, ptr %75, align 1, !dbg !1653, !tbaa !1166
  br label %316, !dbg !1654

316:                                              ; preds = %310, %315
  %317 = load ptr, ptr @stdout, align 8, !dbg !1655, !tbaa !1086
  %318 = call i64 @fwrite_unlocked(ptr noundef nonnull %75, i64 noundef 1, i64 noundef %305, ptr noundef %317), !dbg !1655
  %319 = icmp eq i64 %318, %305, !dbg !1656
  br i1 %319, label %329, label %320, !dbg !1657

320:                                              ; preds = %316
  %321 = tail call ptr @__errno_location() #40, !dbg !1658
  %322 = load i32, ptr %321, align 4, !dbg !1658, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %322, metadata !1617, metadata !DIExpression()), !dbg !1660
  %323 = load ptr, ptr @stdout, align 8, !dbg !1661, !tbaa !1086
  %324 = call i32 @fflush_unlocked(ptr noundef %323) #37, !dbg !1661
  %325 = load ptr, ptr @stdout, align 8, !dbg !1662, !tbaa !1086
  %326 = call i32 @fpurge(ptr noundef %325) #37, !dbg !1663
  %327 = load ptr, ptr @stdout, align 8, !dbg !1664, !tbaa !1086
  call void @clearerr_unlocked(ptr noundef %327) #37, !dbg !1664
  %328 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #37, !dbg !1665
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %322, ptr noundef %328) #37, !dbg !1665
  unreachable, !dbg !1665

329:                                              ; preds = %316, %304
  %330 = phi i8 [ %87, %304 ], [ 0, %316 ], !dbg !1391
  call void @llvm.dbg.value(metadata i8 %330, metadata !395, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 0, metadata !397, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i8 %232, metadata !396, metadata !DIExpression()), !dbg !1391
  %331 = load i8, ptr @convert_entire_line, align 1, !dbg !1666, !tbaa !1333, !range !1571, !noundef !1095
  %332 = icmp ne i8 %331, 0, !dbg !1666
  %333 = or i1 %231, %332, !dbg !1667
  %334 = and i8 %307, 1, !dbg !1668
  %335 = icmp ne i8 %334, 0, !dbg !1668
  %336 = and i1 %335, %333, !dbg !1668
  %337 = zext i1 %336 to i8, !dbg !1668
  call void @llvm.dbg.value(metadata i8 poison, metadata !374, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1391
  call void @llvm.dbg.value(metadata i8 %337, metadata !386, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %306, metadata !387, metadata !DIExpression()), !dbg !1391
  br label %345

338:                                              ; preds = %244
  %339 = select i1 %250, i8 1, i8 %87, !dbg !1669
  call void @llvm.dbg.value(metadata i8 %339, metadata !395, metadata !DIExpression()), !dbg !1391
  %340 = getelementptr inbounds i8, ptr %75, i64 %85, !dbg !1671
  call void @llvm.dbg.value(metadata !DIArgList(i64 %221, i64 0), metadata !1672, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1678
  call void @llvm.dbg.value(metadata i64 %226, metadata !1672, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1678
  call void @llvm.dbg.value(metadata !DIArgList(i64 %221, i64 0), metadata !1672, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1678
  call void @llvm.dbg.value(metadata ptr undef, metadata !1677, metadata !DIExpression()), !dbg !1678
  %341 = icmp sge i64 %219, %226, !dbg !1680
  call void @llvm.assume(i1 %341), !dbg !1682
  %342 = sub nsw i64 %219, %226, !dbg !1683
  %343 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %342, !dbg !1684
  call void @llvm.dbg.value(metadata ptr %340, metadata !1685, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata ptr %343, metadata !1691, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.value(metadata i64 %226, metadata !1692, metadata !DIExpression()), !dbg !1693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %340, ptr noundef nonnull align 1 %343, i64 noundef %226, i1 noundef false) #37, !dbg !1695
  %344 = add nsw i64 %226, %85, !dbg !1696
  call void @llvm.dbg.value(metadata i64 %226, metadata !374, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %247, metadata !387, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i8 1, metadata !396, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %344, metadata !397, metadata !DIExpression()), !dbg !1391
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #37, !dbg !1629
  call void @llvm.dbg.value(metadata i8 %237, metadata !386, metadata !DIExpression()), !dbg !1391
  br label %372

345:                                              ; preds = %329, %217
  %346 = phi i64 [ %85, %217 ], [ 0, %329 ], !dbg !1391
  %347 = phi i8 [ %86, %217 ], [ %232, %329 ], !dbg !1391
  %348 = phi i8 [ %87, %217 ], [ %330, %329 ], !dbg !1391
  %349 = phi i64 [ %88, %217 ], [ %306, %329 ], !dbg !1391
  %350 = phi i8 [ %89, %217 ], [ %337, %329 ], !dbg !1391
  %351 = phi i64 [ %226, %217 ], [ %308, %329 ], !dbg !1541
  call void @llvm.dbg.value(metadata i8 poison, metadata !374, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1391
  call void @llvm.dbg.value(metadata i8 %350, metadata !386, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %349, metadata !387, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i8 %348, metadata !395, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i8 %347, metadata !396, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %346, metadata !397, metadata !DIExpression()), !dbg !1391
  br i1 %222, label %352, label %353, !dbg !1697

352:                                              ; preds = %345
  call void @free(ptr noundef nonnull %75) #37, !dbg !1698
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !1701
  br label %380

353:                                              ; preds = %345
  %354 = and i64 %351, 255, !dbg !1702
  call void @llvm.dbg.value(metadata !DIArgList(i32 0, i64 %354), metadata !1672, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 0, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1703
  call void @llvm.dbg.value(metadata i64 %354, metadata !1672, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1703
  call void @llvm.dbg.value(metadata !DIArgList(i32 0, i64 %354), metadata !1672, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 0, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1703
  call void @llvm.dbg.value(metadata ptr undef, metadata !1677, metadata !DIExpression()), !dbg !1703
  %355 = icmp sge i64 %219, %354, !dbg !1705
  call void @llvm.assume(i1 %355), !dbg !1706
  %356 = sub nsw i64 %219, %354, !dbg !1707
  %357 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %356, !dbg !1708
  %358 = load ptr, ptr @stdout, align 8, !dbg !1702, !tbaa !1086
  %359 = call i64 @fwrite_unlocked(ptr noundef nonnull %357, i64 noundef 1, i64 noundef %354, ptr noundef %358), !dbg !1702
  %360 = load ptr, ptr @stdout, align 8, !dbg !1709, !tbaa !1086
  call void @llvm.dbg.value(metadata ptr %360, metadata !1711, metadata !DIExpression()), !dbg !1714
  %361 = load i32, ptr %360, align 8, !dbg !1716, !tbaa !1419
  %362 = and i32 %361, 32, !dbg !1709
  %363 = icmp eq i32 %362, 0, !dbg !1709
  br i1 %363, label %372, label %364, !dbg !1717

364:                                              ; preds = %353
  %365 = tail call ptr @__errno_location() #40, !dbg !1718
  %366 = load i32, ptr %365, align 4, !dbg !1718, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %366, metadata !1617, metadata !DIExpression()), !dbg !1720
  %367 = call i32 @fflush_unlocked(ptr noundef nonnull %360) #37, !dbg !1721
  %368 = load ptr, ptr @stdout, align 8, !dbg !1722, !tbaa !1086
  %369 = call i32 @fpurge(ptr noundef %368) #37, !dbg !1723
  %370 = load ptr, ptr @stdout, align 8, !dbg !1724, !tbaa !1086
  call void @clearerr_unlocked(ptr noundef %370) #37, !dbg !1724
  %371 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #37, !dbg !1725
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %366, ptr noundef %371) #37, !dbg !1725
  unreachable, !dbg !1725

372:                                              ; preds = %353, %338
  %373 = phi i64 [ %344, %338 ], [ %346, %353 ], !dbg !1726
  %374 = phi i8 [ 1, %338 ], [ %347, %353 ], !dbg !1727
  %375 = phi i8 [ %339, %338 ], [ %348, %353 ], !dbg !1728
  %376 = phi i64 [ %247, %338 ], [ %349, %353 ], !dbg !1729
  %377 = phi i8 [ %89, %338 ], [ %350, %353 ], !dbg !1668
  call void @llvm.dbg.value(metadata i8 %377, metadata !386, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %376, metadata !387, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i8 %375, metadata !395, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i8 %374, metadata !396, metadata !DIExpression()), !dbg !1391
  call void @llvm.dbg.value(metadata i64 %373, metadata !397, metadata !DIExpression()), !dbg !1391
  %378 = icmp eq i32 %225, 10, !dbg !1730
  br i1 %378, label %379, label %81, !dbg !1731, !llvm.loop !1732

379:                                              ; preds = %372
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !1701
  br label %76, !llvm.loop !1734

380:                                              ; preds = %64, %352
  call void @cleanup_file_list_stdin() #37, !dbg !1735
  %381 = load i32, ptr @exit_status, align 4, !dbg !1736, !tbaa !1157
  ret i32 %381, !dbg !1737
}

; Function Attrs: nounwind
declare !dbg !1738 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1741 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1742 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1745 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1751 ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1755 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind
declare !dbg !1762 i32 @iswblank(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1764 i32 @wcwidth(i32 noundef) local_unnamed_addr #2

declare !dbg !1769 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1772 ptr @__errno_location() local_unnamed_addr #9

declare !dbg !1776 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1777 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1780 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local void @add_tab_stop(i64 noundef %0) local_unnamed_addr #10 !dbg !1783 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1787, metadata !DIExpression()), !dbg !1790
  %2 = load i64, ptr @first_free_tab, align 8, !dbg !1791, !tbaa !1385
  %3 = icmp eq i64 %2, 0, !dbg !1791
  br i1 %3, label %9, label %4, !dbg !1791

4:                                                ; preds = %1
  %5 = load ptr, ptr @tab_list, align 8, !dbg !1792, !tbaa !1086
  %6 = add nsw i64 %2, -1, !dbg !1793
  %7 = getelementptr inbounds i64, ptr %5, i64 %6, !dbg !1792
  %8 = load i64, ptr %7, align 8, !dbg !1792, !tbaa !1385
  br label %9, !dbg !1791

9:                                                ; preds = %1, %4
  %10 = phi i64 [ %8, %4 ], [ 0, %1 ], !dbg !1791
  call void @llvm.dbg.value(metadata i64 %10, metadata !1788, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i64 poison, metadata !1789, metadata !DIExpression()), !dbg !1790
  %11 = load i64, ptr @n_tabs_allocated, align 8, !dbg !1794, !tbaa !1385
  %12 = icmp eq i64 %2, %11, !dbg !1796
  %13 = load ptr, ptr @tab_list, align 8, !dbg !1790, !tbaa !1086
  br i1 %12, label %14, label %17, !dbg !1797

14:                                               ; preds = %9
  %15 = tail call nonnull ptr @xpalloc(ptr noundef %13, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #37, !dbg !1798
  store ptr %15, ptr @tab_list, align 8, !dbg !1799, !tbaa !1086
  %16 = load i64, ptr @first_free_tab, align 8, !dbg !1800, !tbaa !1385
  br label %17, !dbg !1801

17:                                               ; preds = %9, %14
  %18 = phi i64 [ %16, %14 ], [ %2, %9 ], !dbg !1800
  %19 = phi ptr [ %15, %14 ], [ %13, %9 ], !dbg !1802
  %20 = icmp sgt i64 %10, %0, !dbg !1803
  %21 = sub nsw i64 %0, %10, !dbg !1804
  %22 = select i1 %20, i64 0, i64 %21, !dbg !1804
  call void @llvm.dbg.value(metadata i64 %22, metadata !1789, metadata !DIExpression()), !dbg !1790
  %23 = add nsw i64 %18, 1, !dbg !1800
  store i64 %23, ptr @first_free_tab, align 8, !dbg !1800, !tbaa !1385
  %24 = getelementptr inbounds i64, ptr %19, i64 %18, !dbg !1802
  store i64 %0, ptr %24, align 8, !dbg !1805, !tbaa !1385
  call void @llvm.dbg.value(metadata i64 %22, metadata !1806, metadata !DIExpression()), !dbg !1809
  %25 = load i64, ptr @max_column_width, align 8, !dbg !1811, !tbaa !1385
  %26 = icmp slt i64 %25, %22, !dbg !1813
  br i1 %26, label %27, label %28, !dbg !1814

27:                                               ; preds = %17
  store i64 %22, ptr @max_column_width, align 8, !dbg !1815
  br label %28

28:                                               ; preds = %17, %27
  ret void, !dbg !1818
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_tab_stops(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !1819 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1821, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 0, metadata !1822, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 0, metadata !1823, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 0, metadata !1824, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 0, metadata !1825, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata ptr null, metadata !1826, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 1, metadata !1827, metadata !DIExpression()), !dbg !1840
  br label %2, !dbg !1841

2:                                                ; preds = %122, %1
  %3 = phi i64 [ 0, %1 ], [ %123, %122 ], !dbg !1842
  %4 = phi i8 [ 0, %1 ], [ %124, %122 ], !dbg !1843
  %5 = phi i8 [ 0, %1 ], [ %125, %122 ], !dbg !1844
  %6 = phi ptr [ null, %1 ], [ %126, %122 ], !dbg !1845
  %7 = phi i8 [ 1, %1 ], [ %127, %122 ], !dbg !1846
  %8 = phi i8 [ 0, %1 ], [ %128, %122 ], !dbg !1840
  %9 = phi ptr [ %0, %1 ], [ %130, %122 ]
  call void @llvm.dbg.value(metadata ptr %9, metadata !1821, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 %8, metadata !1822, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 %7, metadata !1827, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata ptr %6, metadata !1826, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 %5, metadata !1825, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 %4, metadata !1824, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %3, metadata !1823, metadata !DIExpression()), !dbg !1840
  %10 = load i8, ptr %9, align 1, !dbg !1847, !tbaa !1166
  switch i8 %10, label %11 [
    i8 0, label %131
    i8 44, label %19
  ], !dbg !1848

11:                                               ; preds = %2
  %12 = tail call ptr @__ctype_b_loc() #40, !dbg !1849
  %13 = load ptr, ptr %12, align 8, !dbg !1849, !tbaa !1086
  %14 = zext i8 %10 to i64
  %15 = getelementptr inbounds i16, ptr %13, i64 %14, !dbg !1849
  %16 = load i16, ptr %15, align 2, !dbg !1849, !tbaa !1198
  %17 = and i16 %16, 1, !dbg !1849
  %18 = icmp eq i16 %17, 0, !dbg !1849
  br i1 %18, label %74, label %19, !dbg !1850

19:                                               ; preds = %2, %11
  %20 = and i8 %8, 1, !dbg !1851
  %21 = icmp eq i8 %20, 0, !dbg !1851
  br i1 %21, label %122, label %22, !dbg !1854

22:                                               ; preds = %19
  %23 = and i8 %4, 1, !dbg !1855
  %24 = icmp eq i8 %23, 0, !dbg !1855
  br i1 %24, label %35, label %25, !dbg !1858

25:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 %3, metadata !1859, metadata !DIExpression()), !dbg !1865
  call void @llvm.dbg.value(metadata i8 1, metadata !1864, metadata !DIExpression()), !dbg !1865
  %26 = load i64, ptr @extend_size, align 8, !dbg !1869, !tbaa !1385
  %27 = icmp eq i64 %26, 0, !dbg !1869
  br i1 %27, label %30, label %28, !dbg !1871

28:                                               ; preds = %25
  %29 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12.11, i32 noundef 5) #37, !dbg !1872
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %29) #37, !dbg !1872
  call void @llvm.dbg.value(metadata i8 0, metadata !1864, metadata !DIExpression()), !dbg !1865
  br label %30, !dbg !1874

30:                                               ; preds = %28, %25
  call void @llvm.dbg.value(metadata i8 poison, metadata !1864, metadata !DIExpression()), !dbg !1865
  store i64 %3, ptr @extend_size, align 8, !dbg !1875, !tbaa !1385
  call void @llvm.dbg.value(metadata i64 %3, metadata !1806, metadata !DIExpression()), !dbg !1876
  %31 = load i64, ptr @max_column_width, align 8, !dbg !1878, !tbaa !1385
  %32 = icmp slt i64 %31, %3, !dbg !1879
  br i1 %32, label %33, label %34, !dbg !1880

33:                                               ; preds = %30
  store i64 %3, ptr @max_column_width, align 8, !dbg !1881
  br label %34

34:                                               ; preds = %30, %33
  br i1 %27, label %122, label %195, !dbg !1882

35:                                               ; preds = %22
  %36 = and i8 %5, 1, !dbg !1883
  %37 = icmp eq i8 %36, 0, !dbg !1883
  br i1 %37, label %48, label %38, !dbg !1885

38:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %3, metadata !1886, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8 1, metadata !1889, metadata !DIExpression()), !dbg !1890
  %39 = load i64, ptr @increment_size, align 8, !dbg !1894, !tbaa !1385
  %40 = icmp eq i64 %39, 0, !dbg !1894
  br i1 %40, label %43, label %41, !dbg !1896

41:                                               ; preds = %38
  %42 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13.12, i32 noundef 5) #37, !dbg !1897
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %42) #37, !dbg !1897
  call void @llvm.dbg.value(metadata i8 0, metadata !1889, metadata !DIExpression()), !dbg !1890
  br label %43, !dbg !1899

43:                                               ; preds = %41, %38
  call void @llvm.dbg.value(metadata i8 poison, metadata !1889, metadata !DIExpression()), !dbg !1890
  store i64 %3, ptr @increment_size, align 8, !dbg !1900, !tbaa !1385
  call void @llvm.dbg.value(metadata i64 %3, metadata !1806, metadata !DIExpression()), !dbg !1901
  %44 = load i64, ptr @max_column_width, align 8, !dbg !1903, !tbaa !1385
  %45 = icmp slt i64 %44, %3, !dbg !1904
  br i1 %45, label %46, label %47, !dbg !1905

46:                                               ; preds = %43
  store i64 %3, ptr @max_column_width, align 8, !dbg !1906
  br label %47

47:                                               ; preds = %43, %46
  br i1 %40, label %122, label %195, !dbg !1907

48:                                               ; preds = %35
  call void @llvm.dbg.value(metadata i64 %3, metadata !1787, metadata !DIExpression()), !dbg !1908
  %49 = load i64, ptr @first_free_tab, align 8, !dbg !1910, !tbaa !1385
  %50 = icmp eq i64 %49, 0, !dbg !1910
  %51 = load ptr, ptr @tab_list, align 8, !dbg !1908, !tbaa !1086
  br i1 %50, label %56, label %52, !dbg !1910

52:                                               ; preds = %48
  %53 = add nsw i64 %49, -1, !dbg !1911
  %54 = getelementptr inbounds i64, ptr %51, i64 %53, !dbg !1912
  %55 = load i64, ptr %54, align 8, !dbg !1912, !tbaa !1385
  br label %56, !dbg !1910

56:                                               ; preds = %48, %52
  %57 = phi i64 [ %55, %52 ], [ 0, %48 ], !dbg !1910
  call void @llvm.dbg.value(metadata i64 %57, metadata !1788, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i64 poison, metadata !1789, metadata !DIExpression()), !dbg !1908
  %58 = load i64, ptr @n_tabs_allocated, align 8, !dbg !1913, !tbaa !1385
  %59 = icmp eq i64 %49, %58, !dbg !1914
  br i1 %59, label %60, label %63, !dbg !1915

60:                                               ; preds = %56
  %61 = tail call nonnull ptr @xpalloc(ptr noundef %51, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #37, !dbg !1916
  store ptr %61, ptr @tab_list, align 8, !dbg !1917, !tbaa !1086
  %62 = load i64, ptr @first_free_tab, align 8, !dbg !1918, !tbaa !1385
  br label %63, !dbg !1919

63:                                               ; preds = %60, %56
  %64 = phi i64 [ %62, %60 ], [ %49, %56 ], !dbg !1918
  %65 = phi ptr [ %61, %60 ], [ %51, %56 ], !dbg !1920
  %66 = icmp slt i64 %3, %57, !dbg !1921
  %67 = sub nsw i64 %3, %57, !dbg !1922
  %68 = select i1 %66, i64 0, i64 %67, !dbg !1922
  call void @llvm.dbg.value(metadata i64 %68, metadata !1789, metadata !DIExpression()), !dbg !1908
  %69 = add nsw i64 %64, 1, !dbg !1918
  store i64 %69, ptr @first_free_tab, align 8, !dbg !1918, !tbaa !1385
  %70 = getelementptr inbounds i64, ptr %65, i64 %64, !dbg !1920
  store i64 %3, ptr %70, align 8, !dbg !1923, !tbaa !1385
  call void @llvm.dbg.value(metadata i64 %68, metadata !1806, metadata !DIExpression()), !dbg !1924
  %71 = load i64, ptr @max_column_width, align 8, !dbg !1926, !tbaa !1385
  %72 = icmp slt i64 %71, %68, !dbg !1927
  br i1 %72, label %73, label %122, !dbg !1928

73:                                               ; preds = %63
  store i64 %68, ptr @max_column_width, align 8, !dbg !1929
  br label %122

74:                                               ; preds = %11
  switch i8 %10, label %87 [
    i8 47, label %75
    i8 43, label %81
  ], !dbg !1930

75:                                               ; preds = %74
  %76 = and i8 %8, 1, !dbg !1931
  %77 = icmp eq i8 %76, 0, !dbg !1931
  br i1 %77, label %122, label %78, !dbg !1934

78:                                               ; preds = %75
  %79 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !1935
  %80 = tail call ptr @quote(ptr noundef nonnull %9) #37, !dbg !1935
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %79, ptr noundef %80) #37, !dbg !1935
  call void @llvm.dbg.value(metadata i8 0, metadata !1827, metadata !DIExpression()), !dbg !1840
  br label %122, !dbg !1937

81:                                               ; preds = %74
  %82 = and i8 %8, 1, !dbg !1938
  %83 = icmp eq i8 %82, 0, !dbg !1938
  br i1 %83, label %122, label %84, !dbg !1941

84:                                               ; preds = %81
  %85 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.23, i32 noundef 5) #37, !dbg !1942
  %86 = tail call ptr @quote(ptr noundef nonnull %9) #37, !dbg !1942
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %85, ptr noundef %86) #37, !dbg !1942
  call void @llvm.dbg.value(metadata i8 0, metadata !1827, metadata !DIExpression()), !dbg !1840
  br label %122, !dbg !1944

87:                                               ; preds = %74
  %88 = sext i8 %10 to i32, !dbg !1945
  call void @llvm.dbg.value(metadata i32 %88, metadata !1946, metadata !DIExpression()), !dbg !1952
  %89 = add nsw i32 %88, -48, !dbg !1954
  %90 = icmp ult i32 %89, 10, !dbg !1954
  br i1 %90, label %91, label %119, !dbg !1955

91:                                               ; preds = %87
  %92 = and i8 %8, 1, !dbg !1956
  %93 = icmp eq i8 %92, 0, !dbg !1956
  %94 = select i1 %93, i64 0, i64 %3, !dbg !1958
  %95 = select i1 %93, ptr %9, ptr %6, !dbg !1958
  %96 = select i1 %93, i8 1, i8 %8, !dbg !1958
  call void @llvm.dbg.value(metadata i8 %96, metadata !1822, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata ptr %95, metadata !1826, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %94, metadata !1823, metadata !DIExpression()), !dbg !1840
  %97 = icmp slt i64 %94, 0, !dbg !1959
  br i1 %97, label %98, label %100, !dbg !1959

98:                                               ; preds = %91
  %99 = icmp ult i64 %94, -922337203685477580, !dbg !1959
  br i1 %99, label %102, label %104, !dbg !1959

100:                                              ; preds = %91
  %101 = icmp ugt i64 %94, 922337203685477580, !dbg !1959
  br i1 %101, label %102, label %104, !dbg !1959

102:                                              ; preds = %98, %100
  %103 = mul i64 %94, 10, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %103, metadata !1823, metadata !DIExpression()), !dbg !1840
  br label %111, !dbg !1959

104:                                              ; preds = %98, %100
  call void @llvm.dbg.value(metadata i64 %94, metadata !1823, metadata !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value)), !dbg !1840
  %105 = mul nsw i64 %94, 10, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %105, metadata !1823, metadata !DIExpression()), !dbg !1840
  %106 = sext i8 %10 to i64, !dbg !1959
  %107 = add nsw i64 %106, -48, !dbg !1959
  %108 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %105, i64 %107), !dbg !1959
  %109 = extractvalue { i64, i1 } %108, 1, !dbg !1959
  %110 = extractvalue { i64, i1 } %108, 0, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %110, metadata !1823, metadata !DIExpression()), !dbg !1840
  br i1 %109, label %111, label %122, !dbg !1960

111:                                              ; preds = %102, %104
  %112 = phi i64 [ %110, %104 ], [ %103, %102 ], !dbg !1959
  call void @llvm.dbg.value(metadata i64 %112, metadata !1823, metadata !DIExpression()), !dbg !1840
  %113 = tail call i64 @strspn(ptr noundef %95, ptr noundef nonnull @.str.2.24) #38, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %113, metadata !1828, metadata !DIExpression()), !dbg !1962
  %114 = tail call noalias nonnull ptr @ximemdup0(ptr noundef %95, i64 noundef %113) #37, !dbg !1963
  call void @llvm.dbg.value(metadata ptr %114, metadata !1839, metadata !DIExpression()), !dbg !1962
  %115 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3.25, i32 noundef 5) #37, !dbg !1964
  %116 = tail call ptr @quote(ptr noundef nonnull %114) #37, !dbg !1964
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %115, ptr noundef %116) #37, !dbg !1964
  tail call void @free(ptr noundef nonnull %114) #37, !dbg !1965
  call void @llvm.dbg.value(metadata i8 0, metadata !1827, metadata !DIExpression()), !dbg !1840
  %117 = getelementptr i8, ptr %95, i64 -1, !dbg !1966
  %118 = getelementptr i8, ptr %117, i64 %113, !dbg !1967
  call void @llvm.dbg.value(metadata ptr %118, metadata !1821, metadata !DIExpression()), !dbg !1840
  br label %122, !dbg !1968

119:                                              ; preds = %87
  %120 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4.26, i32 noundef 5) #37, !dbg !1969
  %121 = tail call ptr @quote(ptr noundef nonnull %9) #37, !dbg !1969
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %120, ptr noundef %121) #37, !dbg !1969
  call void @llvm.dbg.value(metadata i8 0, metadata !1827, metadata !DIExpression()), !dbg !1840
  br label %195, !dbg !1971

122:                                              ; preds = %73, %63, %81, %84, %75, %78, %19, %47, %34, %104, %111
  %123 = phi i64 [ %112, %111 ], [ %110, %104 ], [ %3, %34 ], [ %3, %47 ], [ %3, %19 ], [ %3, %78 ], [ %3, %75 ], [ %3, %84 ], [ %3, %81 ], [ %3, %63 ], [ %3, %73 ], !dbg !1840
  %124 = phi i8 [ %4, %111 ], [ %4, %104 ], [ %4, %34 ], [ %4, %47 ], [ %4, %19 ], [ 1, %78 ], [ 1, %75 ], [ 0, %84 ], [ 0, %81 ], [ %4, %63 ], [ %4, %73 ], !dbg !1840
  %125 = phi i8 [ %5, %111 ], [ %5, %104 ], [ %5, %34 ], [ %5, %47 ], [ %5, %19 ], [ 0, %78 ], [ 0, %75 ], [ 1, %84 ], [ 1, %81 ], [ %5, %63 ], [ %5, %73 ], !dbg !1840
  %126 = phi ptr [ %95, %111 ], [ %95, %104 ], [ %6, %34 ], [ %6, %47 ], [ %6, %19 ], [ %6, %78 ], [ %6, %75 ], [ %6, %84 ], [ %6, %81 ], [ %6, %63 ], [ %6, %73 ], !dbg !1845
  %127 = phi i8 [ 0, %111 ], [ %7, %104 ], [ %7, %34 ], [ %7, %47 ], [ %7, %19 ], [ 0, %78 ], [ %7, %75 ], [ 0, %84 ], [ %7, %81 ], [ %7, %63 ], [ %7, %73 ], !dbg !1840
  %128 = phi i8 [ %96, %111 ], [ %96, %104 ], [ 0, %34 ], [ 0, %47 ], [ 0, %19 ], [ %8, %78 ], [ %8, %75 ], [ %8, %84 ], [ %8, %81 ], [ 0, %63 ], [ 0, %73 ], !dbg !1840
  %129 = phi ptr [ %118, %111 ], [ %9, %104 ], [ %9, %34 ], [ %9, %47 ], [ %9, %19 ], [ %9, %78 ], [ %9, %75 ], [ %9, %84 ], [ %9, %81 ], [ %9, %63 ], [ %9, %73 ]
  call void @llvm.dbg.value(metadata ptr %129, metadata !1821, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 %128, metadata !1822, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 %127, metadata !1827, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata ptr %126, metadata !1826, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 %125, metadata !1825, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i8 %124, metadata !1824, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i64 %123, metadata !1823, metadata !DIExpression()), !dbg !1840
  %130 = getelementptr inbounds i8, ptr %129, i64 1, !dbg !1972
  call void @llvm.dbg.value(metadata ptr %130, metadata !1821, metadata !DIExpression()), !dbg !1840
  br label %2, !dbg !1973, !llvm.loop !1974

131:                                              ; preds = %2
  call void @llvm.dbg.value(metadata i8 %7, metadata !1827, metadata !DIExpression()), !dbg !1840
  %132 = and i8 %7, 1, !dbg !1976
  %133 = icmp eq i8 %132, 0, !dbg !1976
  %134 = and i8 %8, 1
  %135 = icmp eq i8 %134, 0
  %136 = select i1 %133, i1 true, i1 %135, !dbg !1978
  br i1 %136, label %191, label %137, !dbg !1978

137:                                              ; preds = %131
  %138 = and i8 %4, 1, !dbg !1979
  %139 = icmp eq i8 %138, 0, !dbg !1979
  br i1 %139, label %151, label %140, !dbg !1982

140:                                              ; preds = %137
  call void @llvm.dbg.value(metadata i64 %3, metadata !1859, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i8 1, metadata !1864, metadata !DIExpression()), !dbg !1983
  %141 = load i64, ptr @extend_size, align 8, !dbg !1985, !tbaa !1385
  %142 = icmp eq i64 %141, 0, !dbg !1985
  br i1 %142, label %145, label %143, !dbg !1986

143:                                              ; preds = %140
  %144 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12.11, i32 noundef 5) #37, !dbg !1987
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %144) #37, !dbg !1987
  call void @llvm.dbg.value(metadata i8 0, metadata !1864, metadata !DIExpression()), !dbg !1983
  br label %145, !dbg !1988

145:                                              ; preds = %143, %140
  call void @llvm.dbg.value(metadata i8 poison, metadata !1864, metadata !DIExpression()), !dbg !1983
  store i64 %3, ptr @extend_size, align 8, !dbg !1989, !tbaa !1385
  call void @llvm.dbg.value(metadata i64 %3, metadata !1806, metadata !DIExpression()), !dbg !1990
  %146 = load i64, ptr @max_column_width, align 8, !dbg !1992, !tbaa !1385
  %147 = icmp slt i64 %146, %3, !dbg !1993
  br i1 %147, label %148, label %149, !dbg !1994

148:                                              ; preds = %145
  store i64 %3, ptr @max_column_width, align 8, !dbg !1995
  br label %149

149:                                              ; preds = %145, %148
  %150 = zext i1 %142 to i8, !dbg !1996
  call void @llvm.dbg.value(metadata i8 %150, metadata !1827, metadata !DIExpression()), !dbg !1840
  br label %191, !dbg !1997

151:                                              ; preds = %137
  %152 = and i8 %5, 1, !dbg !1998
  %153 = icmp eq i8 %152, 0, !dbg !1998
  br i1 %153, label %165, label %154, !dbg !2000

154:                                              ; preds = %151
  call void @llvm.dbg.value(metadata i64 %3, metadata !1886, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8 1, metadata !1889, metadata !DIExpression()), !dbg !2001
  %155 = load i64, ptr @increment_size, align 8, !dbg !2003, !tbaa !1385
  %156 = icmp eq i64 %155, 0, !dbg !2003
  br i1 %156, label %159, label %157, !dbg !2004

157:                                              ; preds = %154
  %158 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13.12, i32 noundef 5) #37, !dbg !2005
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %158) #37, !dbg !2005
  call void @llvm.dbg.value(metadata i8 0, metadata !1889, metadata !DIExpression()), !dbg !2001
  br label %159, !dbg !2006

159:                                              ; preds = %157, %154
  call void @llvm.dbg.value(metadata i8 poison, metadata !1889, metadata !DIExpression()), !dbg !2001
  store i64 %3, ptr @increment_size, align 8, !dbg !2007, !tbaa !1385
  call void @llvm.dbg.value(metadata i64 %3, metadata !1806, metadata !DIExpression()), !dbg !2008
  %160 = load i64, ptr @max_column_width, align 8, !dbg !2010, !tbaa !1385
  %161 = icmp slt i64 %160, %3, !dbg !2011
  br i1 %161, label %162, label %163, !dbg !2012

162:                                              ; preds = %159
  store i64 %3, ptr @max_column_width, align 8, !dbg !2013
  br label %163

163:                                              ; preds = %159, %162
  %164 = zext i1 %156 to i8, !dbg !2014
  call void @llvm.dbg.value(metadata i8 %164, metadata !1827, metadata !DIExpression()), !dbg !1840
  br label %191, !dbg !2015

165:                                              ; preds = %151
  call void @llvm.dbg.value(metadata i64 %3, metadata !1787, metadata !DIExpression()), !dbg !2016
  %166 = load i64, ptr @first_free_tab, align 8, !dbg !2018, !tbaa !1385
  %167 = icmp eq i64 %166, 0, !dbg !2018
  %168 = load ptr, ptr @tab_list, align 8, !dbg !2016, !tbaa !1086
  br i1 %167, label %173, label %169, !dbg !2018

169:                                              ; preds = %165
  %170 = add nsw i64 %166, -1, !dbg !2019
  %171 = getelementptr inbounds i64, ptr %168, i64 %170, !dbg !2020
  %172 = load i64, ptr %171, align 8, !dbg !2020, !tbaa !1385
  br label %173, !dbg !2018

173:                                              ; preds = %165, %169
  %174 = phi i64 [ %172, %169 ], [ 0, %165 ], !dbg !2018
  call void @llvm.dbg.value(metadata i64 %174, metadata !1788, metadata !DIExpression()), !dbg !2016
  call void @llvm.dbg.value(metadata i64 poison, metadata !1789, metadata !DIExpression()), !dbg !2016
  %175 = load i64, ptr @n_tabs_allocated, align 8, !dbg !2021, !tbaa !1385
  %176 = icmp eq i64 %166, %175, !dbg !2022
  br i1 %176, label %177, label %180, !dbg !2023

177:                                              ; preds = %173
  %178 = tail call nonnull ptr @xpalloc(ptr noundef %168, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #37, !dbg !2024
  store ptr %178, ptr @tab_list, align 8, !dbg !2025, !tbaa !1086
  %179 = load i64, ptr @first_free_tab, align 8, !dbg !2026, !tbaa !1385
  br label %180, !dbg !2027

180:                                              ; preds = %177, %173
  %181 = phi i64 [ %179, %177 ], [ %166, %173 ], !dbg !2026
  %182 = phi ptr [ %178, %177 ], [ %168, %173 ], !dbg !2028
  %183 = icmp slt i64 %3, %174, !dbg !2029
  %184 = sub nsw i64 %3, %174, !dbg !2030
  %185 = select i1 %183, i64 0, i64 %184, !dbg !2030
  call void @llvm.dbg.value(metadata i64 %185, metadata !1789, metadata !DIExpression()), !dbg !2016
  %186 = add nsw i64 %181, 1, !dbg !2026
  store i64 %186, ptr @first_free_tab, align 8, !dbg !2026, !tbaa !1385
  %187 = getelementptr inbounds i64, ptr %182, i64 %181, !dbg !2028
  store i64 %3, ptr %187, align 8, !dbg !2031, !tbaa !1385
  call void @llvm.dbg.value(metadata i64 %185, metadata !1806, metadata !DIExpression()), !dbg !2032
  %188 = load i64, ptr @max_column_width, align 8, !dbg !2034, !tbaa !1385
  %189 = icmp slt i64 %188, %185, !dbg !2035
  br i1 %189, label %190, label %191, !dbg !2036

190:                                              ; preds = %180
  store i64 %185, ptr @max_column_width, align 8, !dbg !2037
  br label %191

191:                                              ; preds = %190, %180, %149, %163, %131
  %192 = phi i8 [ %150, %149 ], [ %164, %163 ], [ %7, %131 ], [ %7, %180 ], [ %7, %190 ], !dbg !1840
  call void @llvm.dbg.value(metadata i8 %192, metadata !1827, metadata !DIExpression()), !dbg !1840
  %193 = and i8 %192, 1, !dbg !2038
  %194 = icmp eq i8 %193, 0, !dbg !2038
  br i1 %194, label %195, label %196, !dbg !2040

195:                                              ; preds = %34, %47, %119, %191
  tail call void @exit(i32 noundef 1) #39, !dbg !2041
  unreachable, !dbg !2041

196:                                              ; preds = %191
  ret void, !dbg !2042
}

; Function Attrs: nounwind uwtable
define dso_local void @finalize_tab_stops() local_unnamed_addr #10 !dbg !2043 {
  %1 = load ptr, ptr @tab_list, align 8, !dbg !2044, !tbaa !1086
  %2 = load i64, ptr @first_free_tab, align 8, !dbg !2045, !tbaa !1385
  call void @llvm.dbg.value(metadata ptr %1, metadata !2046, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i64 %2, metadata !2053, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i64 0, metadata !2054, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i64 0, metadata !2055, metadata !DIExpression()), !dbg !2059
  %3 = icmp sgt i64 %2, 0, !dbg !2060
  br i1 %3, label %13, label %7, !dbg !2062

4:                                                ; preds = %21
  %5 = add nuw nsw i64 %14, 1, !dbg !2063
  call void @llvm.dbg.value(metadata i64 %5, metadata !2055, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i64 %14, metadata !2055, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2059
  call void @llvm.dbg.value(metadata i64 %17, metadata !2054, metadata !DIExpression()), !dbg !2057
  %6 = icmp eq i64 %5, %2, !dbg !2060
  br i1 %6, label %7, label %13, !dbg !2062, !llvm.loop !2064

7:                                                ; preds = %4, %0
  %8 = load i64, ptr @increment_size, align 8, !dbg !2066, !tbaa !1385
  %9 = icmp ne i64 %8, 0, !dbg !2066
  %10 = load i64, ptr @extend_size, align 8
  %11 = icmp ne i64 %10, 0
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2068
  br i1 %12, label %25, label %27, !dbg !2068

13:                                               ; preds = %0, %4
  %14 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %15 = phi i64 [ %17, %4 ], [ 0, %0 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !2055, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i64 %15, metadata !2054, metadata !DIExpression()), !dbg !2057
  %16 = getelementptr inbounds i64, ptr %1, i64 %14, !dbg !2069
  %17 = load i64, ptr %16, align 8, !dbg !2069, !tbaa !1385
  %18 = icmp eq i64 %17, 0, !dbg !2072
  br i1 %18, label %19, label %21, !dbg !2073

19:                                               ; preds = %13
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14.29, i32 noundef 5) #37, !dbg !2074
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %20) #37, !dbg !2074
  unreachable, !dbg !2074

21:                                               ; preds = %13
  %22 = icmp sgt i64 %17, %15, !dbg !2075
  call void @llvm.dbg.value(metadata i64 %17, metadata !2054, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i64 %14, metadata !2055, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2059
  br i1 %22, label %4, label %23, !dbg !2077

23:                                               ; preds = %21
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15.30, i32 noundef 5) #37, !dbg !2078
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %24) #37, !dbg !2078
  unreachable, !dbg !2078

25:                                               ; preds = %7
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16.31, i32 noundef 5) #37, !dbg !2079
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %26) #37, !dbg !2079
  unreachable, !dbg !2079

27:                                               ; preds = %7
  %28 = icmp eq i64 %2, 0, !dbg !2080
  br i1 %28, label %29, label %34, !dbg !2082

29:                                               ; preds = %27
  %30 = icmp eq i64 %10, 0, !dbg !2083
  %31 = icmp eq i64 %8, 0, !dbg !2083
  %32 = select i1 %31, i64 8, i64 %8, !dbg !2083
  %33 = select i1 %30, i64 %32, i64 %10, !dbg !2083
  store i64 %33, ptr @max_column_width, align 8, !dbg !2084, !tbaa !1385
  br label %40, !dbg !2085

34:                                               ; preds = %27
  %35 = icmp ne i64 %2, 1, !dbg !2086
  %36 = select i1 %35, i1 true, i1 %11, !dbg !2088
  %37 = select i1 %36, i1 true, i1 %9, !dbg !2088
  br i1 %37, label %40, label %38, !dbg !2088

38:                                               ; preds = %34
  %39 = load i64, ptr %1, align 8, !dbg !2089, !tbaa !1385
  br label %40, !dbg !2090

40:                                               ; preds = %34, %38, %29
  %41 = phi i64 [ %39, %38 ], [ %33, %29 ], [ 0, %34 ]
  store i64 %41, ptr @tab_size, align 8, !dbg !2091, !tbaa !1385
  ret void, !dbg !2092
}

; Function Attrs: nounwind uwtable
define dso_local i64 @get_next_tab_column(i64 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef nonnull writeonly %2) local_unnamed_addr #10 !dbg !2093 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2098, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %1, metadata !2099, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata ptr %2, metadata !2100, metadata !DIExpression()), !dbg !2113
  store i8 0, ptr %2, align 1, !dbg !2114, !tbaa !1333
  %4 = load i64, ptr @tab_size, align 8, !dbg !2115, !tbaa !1385
  %5 = icmp eq i64 %4, 0, !dbg !2115
  br i1 %5, label %6, label %12, !dbg !2116

6:                                                ; preds = %3
  %7 = load i64, ptr @first_free_tab, align 8, !tbaa !1385
  %8 = load i64, ptr %1, align 8, !tbaa !1385
  %9 = icmp slt i64 %8, %7, !dbg !2117
  br i1 %9, label %10, label %23, !dbg !2118

10:                                               ; preds = %6
  %11 = load ptr, ptr @tab_list, align 8, !tbaa !1086
  br label %15, !dbg !2118

12:                                               ; preds = %3
  %13 = srem i64 %0, %4, !dbg !2119
  %14 = sub nsw i64 %4, %13, !dbg !2120
  call void @llvm.dbg.value(metadata i64 %14, metadata !2101, metadata !DIExpression()), !dbg !2113
  br label %41, !dbg !2121

15:                                               ; preds = %10, %20
  %16 = phi i64 [ %8, %10 ], [ %21, %20 ]
  %17 = getelementptr inbounds i64, ptr %11, i64 %16, !dbg !2122
  %18 = load i64, ptr %17, align 8, !dbg !2122, !tbaa !1385
  call void @llvm.dbg.value(metadata i64 %18, metadata !2102, metadata !DIExpression()), !dbg !2123
  %19 = icmp sgt i64 %18, %0, !dbg !2124
  br i1 %19, label %49, label %20

20:                                               ; preds = %15
  %21 = add i64 %16, 1, !dbg !2126
  store i64 %21, ptr %1, align 8, !dbg !2126, !tbaa !1385
  %22 = icmp eq i64 %21, %7, !dbg !2117
  br i1 %22, label %23, label %15, !dbg !2118, !llvm.loop !2127

23:                                               ; preds = %20, %6
  %24 = load i64, ptr @extend_size, align 8, !dbg !2129, !tbaa !1385
  %25 = icmp eq i64 %24, 0, !dbg !2129
  br i1 %25, label %29, label %26, !dbg !2130

26:                                               ; preds = %23
  %27 = srem i64 %0, %24, !dbg !2131
  %28 = sub nsw i64 %24, %27, !dbg !2132
  call void @llvm.dbg.value(metadata i64 %28, metadata !2101, metadata !DIExpression()), !dbg !2113
  br label %41, !dbg !2133

29:                                               ; preds = %23
  %30 = load i64, ptr @increment_size, align 8, !dbg !2134, !tbaa !1385
  %31 = icmp eq i64 %30, 0, !dbg !2134
  br i1 %31, label %40, label %32, !dbg !2135

32:                                               ; preds = %29
  %33 = load ptr, ptr @tab_list, align 8, !dbg !2136, !tbaa !1086
  %34 = add nsw i64 %7, -1, !dbg !2137
  %35 = getelementptr inbounds i64, ptr %33, i64 %34, !dbg !2136
  %36 = load i64, ptr %35, align 8, !dbg !2136, !tbaa !1385
  call void @llvm.dbg.value(metadata i64 %36, metadata !2108, metadata !DIExpression()), !dbg !2138
  %37 = sub nsw i64 %0, %36, !dbg !2139
  %38 = srem i64 %37, %30, !dbg !2140
  %39 = sub nsw i64 %30, %38, !dbg !2141
  call void @llvm.dbg.value(metadata i64 %39, metadata !2101, metadata !DIExpression()), !dbg !2113
  br label %41, !dbg !2142

40:                                               ; preds = %29
  store i8 1, ptr %2, align 1, !dbg !2143, !tbaa !1333
  call void @llvm.dbg.value(metadata i64 1, metadata !2101, metadata !DIExpression()), !dbg !2113
  br label %41

41:                                               ; preds = %26, %40, %32, %12
  %42 = phi i64 [ %14, %12 ], [ %28, %26 ], [ %39, %32 ], [ 1, %40 ], !dbg !2145
  call void @llvm.dbg.value(metadata i64 %42, metadata !2101, metadata !DIExpression()), !dbg !2113
  %43 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 %42), !dbg !2146
  %44 = extractvalue { i64, i1 } %43, 1, !dbg !2146
  call void @llvm.dbg.value(metadata i64 poison, metadata !2112, metadata !DIExpression()), !dbg !2113
  br i1 %44, label %45, label %47, !dbg !2148

45:                                               ; preds = %41
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5.34, i32 noundef 5) #37, !dbg !2149
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %46) #37, !dbg !2149
  unreachable, !dbg !2149

47:                                               ; preds = %41
  %48 = extractvalue { i64, i1 } %43, 0, !dbg !2146
  call void @llvm.dbg.value(metadata i64 %48, metadata !2112, metadata !DIExpression()), !dbg !2113
  br label %49

49:                                               ; preds = %15, %47
  %50 = phi i64 [ %48, %47 ], [ %18, %15 ], !dbg !2113
  ret i64 %50, !dbg !2150
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_file_list(ptr noundef %0) local_unnamed_addr #15 !dbg !2151 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2155, metadata !DIExpression()), !dbg !2156
  store i1 false, ptr @have_read_stdin, align 1, !dbg !2157
  %2 = icmp eq ptr %0, null, !dbg !2158
  %3 = select i1 %2, ptr @stdin_argv, ptr %0
  store ptr %3, ptr @file_list, align 8, !dbg !2160, !tbaa !1086
  ret void, !dbg !2161
}

; Function Attrs: nounwind uwtable
define dso_local ptr @next_file(ptr noundef %0) local_unnamed_addr #10 !dbg !494 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !532, metadata !DIExpression()), !dbg !2162
  %2 = icmp eq ptr %0, null, !dbg !2163
  br i1 %2, label %25, label %3, !dbg !2164

3:                                                ; preds = %1
  %4 = tail call ptr @__errno_location() #40, !dbg !2165
  %5 = load i32, ptr %4, align 4, !dbg !2165, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %5, metadata !534, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata ptr %0, metadata !2167, metadata !DIExpression()), !dbg !2172
  %6 = load i32, ptr %0, align 8, !dbg !2175, !tbaa !1419
  %7 = and i32 %6, 32, !dbg !2176
  %8 = icmp eq i32 %7, 0, !dbg !2176
  %9 = select i1 %8, i32 0, i32 %5, !dbg !2177
  call void @llvm.dbg.value(metadata i32 %9, metadata !534, metadata !DIExpression()), !dbg !2166
  %10 = load ptr, ptr @next_file.prev_file, align 8, !dbg !2178, !tbaa !1086
  call void @llvm.dbg.value(metadata ptr %10, metadata !2180, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.value(metadata ptr @.str.6.37, metadata !2183, metadata !DIExpression()), !dbg !2184
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.6.37) #38, !dbg !2186
  %12 = icmp eq i32 %11, 0, !dbg !2187
  br i1 %12, label %13, label %14, !dbg !2188

13:                                               ; preds = %3
  tail call void @clearerr_unlocked(ptr noundef nonnull %0) #37, !dbg !2189
  br label %19, !dbg !2189

14:                                               ; preds = %3
  %15 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !2190
  %16 = icmp eq i32 %15, 0, !dbg !2192
  br i1 %16, label %19, label %17, !dbg !2193

17:                                               ; preds = %14
  %18 = load i32, ptr %4, align 4, !dbg !2194, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %18, metadata !534, metadata !DIExpression()), !dbg !2166
  br label %19, !dbg !2195

19:                                               ; preds = %14, %17, %13
  %20 = phi i32 [ %9, %13 ], [ %18, %17 ], [ %9, %14 ], !dbg !2166
  call void @llvm.dbg.value(metadata i32 %20, metadata !534, metadata !DIExpression()), !dbg !2166
  %21 = icmp eq i32 %20, 0, !dbg !2196
  br i1 %21, label %25, label %22, !dbg !2198

22:                                               ; preds = %19
  %23 = load ptr, ptr @next_file.prev_file, align 8, !dbg !2199, !tbaa !1086
  %24 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %23) #37, !dbg !2199
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %20, ptr noundef nonnull @.str.7.40, ptr noundef %24) #37, !dbg !2199
  store i32 1, ptr @exit_status, align 4, !dbg !2201, !tbaa !1157
  br label %25, !dbg !2202

25:                                               ; preds = %19, %22, %1
  %26 = load ptr, ptr @file_list, align 8, !dbg !2203, !tbaa !1086
  %27 = getelementptr inbounds ptr, ptr %26, i64 1, !dbg !2203
  store ptr %27, ptr @file_list, align 8, !dbg !2203, !tbaa !1086
  %28 = load ptr, ptr %26, align 8, !dbg !2204, !tbaa !1086
  call void @llvm.dbg.value(metadata ptr %28, metadata !533, metadata !DIExpression()), !dbg !2162
  %29 = icmp eq ptr %28, null, !dbg !2205
  br i1 %29, label %50, label %30, !dbg !2206

30:                                               ; preds = %25, %42
  %31 = phi ptr [ %48, %42 ], [ %28, %25 ]
  call void @llvm.dbg.value(metadata ptr %31, metadata !2180, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata ptr @.str.6.37, metadata !2183, metadata !DIExpression()), !dbg !2207
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(2) @.str.6.37) #38, !dbg !2211
  %33 = icmp eq i32 %32, 0, !dbg !2212
  br i1 %33, label %34, label %36, !dbg !2213

34:                                               ; preds = %30
  store i1 true, ptr @have_read_stdin, align 1, !dbg !2214
  %35 = load ptr, ptr @stdin, align 8, !dbg !2216, !tbaa !1086
  call void @llvm.dbg.value(metadata ptr %35, metadata !532, metadata !DIExpression()), !dbg !2162
  br label %38, !dbg !2217

36:                                               ; preds = %30
  %37 = tail call noalias ptr @rpl_fopen(ptr noundef nonnull %31, ptr noundef nonnull @.str.8.41) #37, !dbg !2218
  call void @llvm.dbg.value(metadata ptr %37, metadata !532, metadata !DIExpression()), !dbg !2162
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %35, %34 ], [ %37, %36 ], !dbg !2219
  call void @llvm.dbg.value(metadata ptr %39, metadata !532, metadata !DIExpression()), !dbg !2162
  %40 = icmp eq ptr %39, null, !dbg !2220
  br i1 %40, label %42, label %41, !dbg !2222

41:                                               ; preds = %38
  store ptr %31, ptr @next_file.prev_file, align 8, !dbg !2223, !tbaa !1086
  tail call void @fadvise(ptr noundef nonnull %39, i32 noundef 2) #37, !dbg !2225
  br label %50, !dbg !2226

42:                                               ; preds = %38
  %43 = tail call ptr @__errno_location() #40, !dbg !2227
  %44 = load i32, ptr %43, align 4, !dbg !2227, !tbaa !1157
  %45 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef nonnull %31) #37, !dbg !2227
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %44, ptr noundef nonnull @.str.7.40, ptr noundef %45) #37, !dbg !2227
  store i32 1, ptr @exit_status, align 4, !dbg !2228, !tbaa !1157
  %46 = load ptr, ptr @file_list, align 8, !dbg !2203, !tbaa !1086
  %47 = getelementptr inbounds ptr, ptr %46, i64 1, !dbg !2203
  store ptr %47, ptr @file_list, align 8, !dbg !2203, !tbaa !1086
  %48 = load ptr, ptr %46, align 8, !dbg !2204, !tbaa !1086
  call void @llvm.dbg.value(metadata ptr %48, metadata !533, metadata !DIExpression()), !dbg !2162
  %49 = icmp eq ptr %48, null, !dbg !2205
  br i1 %49, label %50, label %30, !dbg !2206, !llvm.loop !2229

50:                                               ; preds = %42, %25, %41
  %51 = phi ptr [ %39, %41 ], [ null, %25 ], [ null, %42 ], !dbg !2162
  ret ptr %51, !dbg !2231
}

; Function Attrs: nounwind uwtable
define dso_local void @cleanup_file_list_stdin() local_unnamed_addr #10 !dbg !2232 {
  %1 = load i1, ptr @have_read_stdin, align 1, !dbg !2233
  br i1 %1, label %2, label %9, !dbg !2235

2:                                                ; preds = %0
  %3 = load ptr, ptr @stdin, align 8, !dbg !2236, !tbaa !1086
  %4 = tail call i32 @rpl_fclose(ptr noundef %3) #37, !dbg !2237
  %5 = icmp eq i32 %4, 0, !dbg !2238
  br i1 %5, label %9, label %6, !dbg !2239

6:                                                ; preds = %2
  %7 = tail call ptr @__errno_location() #40, !dbg !2240
  %8 = load i32, ptr %7, align 4, !dbg !2240, !tbaa !1157
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %8, ptr noundef nonnull @.str.6.37) #37, !dbg !2240
  unreachable, !dbg !2240

9:                                                ; preds = %2, %0
  ret void, !dbg !2241
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_tab_list_info(ptr noundef %0) local_unnamed_addr #10 !dbg !2242 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2244, metadata !DIExpression()), !dbg !2245
  %2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9.46, i32 noundef 5) #37, !dbg !2246
  call void @llvm.dbg.value(metadata ptr %0, metadata !599, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata ptr %2, metadata !600, metadata !DIExpression()), !dbg !2247
  %3 = load i32, ptr @oputs_.help_no_sgr.47, align 4, !dbg !2249, !tbaa !1157
  %4 = icmp eq i32 %3, -1, !dbg !2250
  br i1 %4, label %5, label %17, !dbg !2251

5:                                                ; preds = %1
  %6 = tail call ptr @getenv(ptr noundef nonnull @.str.17.48) #37, !dbg !2252
  call void @llvm.dbg.value(metadata ptr %6, metadata !601, metadata !DIExpression()), !dbg !2253
  %7 = icmp eq ptr %6, null, !dbg !2254
  br i1 %7, label %15, label %8, !dbg !2255

8:                                                ; preds = %5
  %9 = load i8, ptr %6, align 1, !dbg !2256, !tbaa !1166
  %10 = icmp eq i8 %9, 0, !dbg !2256
  br i1 %10, label %15, label %11, !dbg !2257

11:                                               ; preds = %8
  call void @llvm.dbg.value(metadata ptr %6, metadata !2180, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.value(metadata ptr @.str.18.49, metadata !2183, metadata !DIExpression()), !dbg !2258
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(5) @.str.18.49) #38, !dbg !2260
  %13 = icmp eq i32 %12, 0, !dbg !2261
  %14 = zext i1 %13 to i32, !dbg !2257
  br label %15, !dbg !2257

15:                                               ; preds = %11, %8, %5
  %16 = phi i32 [ 1, %8 ], [ 1, %5 ], [ %14, %11 ]
  store i32 %16, ptr @oputs_.help_no_sgr.47, align 4, !dbg !2262, !tbaa !1157
  br label %17, !dbg !2263

17:                                               ; preds = %15, %1
  %18 = phi i32 [ %16, %15 ], [ %3, %1 ], !dbg !2264
  %19 = icmp eq i32 %18, 0, !dbg !2264
  br i1 %19, label %23, label %20, !dbg !2266

20:                                               ; preds = %17
  %21 = load ptr, ptr @stdout, align 8, !dbg !2267, !tbaa !1086
  %22 = tail call i32 @fputs_unlocked(ptr noundef %2, ptr noundef %21), !dbg !2267
  br label %158, !dbg !2269

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 1, metadata !604, metadata !DIExpression()), !dbg !2247
  %24 = tail call i64 @strspn(ptr noundef %2, ptr noundef nonnull @.str.19.50) #38, !dbg !2270
  %25 = getelementptr inbounds i8, ptr %2, i64 %24, !dbg !2271
  call void @llvm.dbg.value(metadata ptr %25, metadata !605, metadata !DIExpression()), !dbg !2247
  %26 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 45) #38, !dbg !2272
  call void @llvm.dbg.value(metadata ptr %26, metadata !606, metadata !DIExpression()), !dbg !2247
  %27 = icmp eq ptr %26, null, !dbg !2273
  br i1 %27, label %56, label %28, !dbg !2274

28:                                               ; preds = %23
  %29 = icmp eq ptr %26, %25, !dbg !2275
  br i1 %29, label %56, label %30, !dbg !2276

30:                                               ; preds = %28
  call void @llvm.dbg.value(metadata ptr %25, metadata !607, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 0, metadata !611, metadata !DIExpression()), !dbg !2277
  %31 = icmp ult ptr %25, %26, !dbg !2278
  br i1 %31, label %32, label %52, !dbg !2279

32:                                               ; preds = %30
  %33 = tail call ptr @__ctype_b_loc() #40, !dbg !2247
  %34 = load ptr, ptr %33, align 8, !tbaa !1086
  br label %35, !dbg !2279

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %25, %32 ], [ %38, %35 ]
  %37 = phi i64 [ 0, %32 ], [ %46, %35 ]
  call void @llvm.dbg.value(metadata ptr %36, metadata !607, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata i64 %37, metadata !611, metadata !DIExpression()), !dbg !2277
  %38 = getelementptr inbounds i8, ptr %36, i64 1, !dbg !2280
  call void @llvm.dbg.value(metadata ptr %38, metadata !607, metadata !DIExpression()), !dbg !2277
  %39 = load i8, ptr %36, align 1, !dbg !2280, !tbaa !1166
  %40 = sext i8 %39 to i64, !dbg !2280
  %41 = getelementptr inbounds i16, ptr %34, i64 %40, !dbg !2280
  %42 = load i16, ptr %41, align 2, !dbg !2280, !tbaa !1198
  %43 = lshr i16 %42, 13, !dbg !2281
  %44 = and i16 %43, 1, !dbg !2281
  %45 = zext i16 %44 to i64
  %46 = add nuw nsw i64 %37, %45, !dbg !2282
  call void @llvm.dbg.value(metadata i64 %46, metadata !611, metadata !DIExpression()), !dbg !2277
  %47 = icmp ult ptr %38, %26, !dbg !2278
  %48 = icmp ult i64 %46, 2, !dbg !2283
  %49 = select i1 %47, i1 %48, i1 false, !dbg !2283
  br i1 %49, label %35, label %50, !dbg !2279, !llvm.loop !2284

50:                                               ; preds = %35
  %51 = icmp ne i64 %46, 2, !dbg !2285
  br label %52, !dbg !2285

52:                                               ; preds = %50, %30
  %53 = phi i1 [ true, %30 ], [ %51, %50 ]
  %54 = select i1 %53, ptr %26, ptr %25, !dbg !2287
  %55 = zext i1 %53 to i8, !dbg !2287
  call void @llvm.dbg.value(metadata i8 %55, metadata !604, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata ptr %54, metadata !606, metadata !DIExpression()), !dbg !2247
  br label %56, !dbg !2288

56:                                               ; preds = %52, %28, %23
  %57 = phi ptr [ %54, %52 ], [ %25, %28 ], [ %25, %23 ], !dbg !2247
  %58 = phi i8 [ %55, %52 ], [ 1, %28 ], [ 0, %23 ], !dbg !2247
  call void @llvm.dbg.value(metadata i8 %58, metadata !604, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata ptr %57, metadata !606, metadata !DIExpression()), !dbg !2247
  %59 = tail call i64 @strcspn(ptr noundef %57, ptr noundef nonnull @.str.20.51) #38, !dbg !2289
  call void @llvm.dbg.value(metadata i64 %59, metadata !612, metadata !DIExpression()), !dbg !2247
  %60 = getelementptr inbounds i8, ptr %57, i64 %59, !dbg !2290
  call void @llvm.dbg.value(metadata ptr %60, metadata !613, metadata !DIExpression()), !dbg !2247
  br label %61, !dbg !2291

61:                                               ; preds = %94, %56
  %62 = phi ptr [ %60, %56 ], [ %95, %94 ], !dbg !2247
  %63 = phi i8 [ %58, %56 ], [ %71, %94 ], !dbg !2247
  call void @llvm.dbg.value(metadata i8 %63, metadata !604, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata ptr %62, metadata !613, metadata !DIExpression()), !dbg !2247
  %64 = load i8, ptr %62, align 1, !dbg !2292, !tbaa !1166
  switch i8 %64, label %70 [
    i8 0, label %96
    i8 10, label %96
    i8 45, label %65
  ], !dbg !2293

65:                                               ; preds = %61
  %66 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !2294
  %67 = load i8, ptr %66, align 1, !dbg !2297, !tbaa !1166
  %68 = icmp eq i8 %67, 45, !dbg !2298
  %69 = select i1 %68, i8 0, i8 %63, !dbg !2299
  br label %70, !dbg !2299

70:                                               ; preds = %65, %61
  %71 = phi i8 [ %63, %61 ], [ %69, %65 ], !dbg !2247
  call void @llvm.dbg.value(metadata i8 %71, metadata !604, metadata !DIExpression()), !dbg !2247
  %72 = tail call ptr @__ctype_b_loc() #40, !dbg !2300
  %73 = load ptr, ptr %72, align 8, !dbg !2300, !tbaa !1086
  %74 = sext i8 %64 to i64, !dbg !2300
  %75 = getelementptr inbounds i16, ptr %73, i64 %74, !dbg !2300
  %76 = load i16, ptr %75, align 2, !dbg !2300, !tbaa !1198
  %77 = and i16 %76, 8192, !dbg !2300
  %78 = icmp eq i16 %77, 0, !dbg !2300
  br i1 %78, label %94, label %79, !dbg !2302

79:                                               ; preds = %70
  %80 = icmp eq i8 %64, 9, !dbg !2303
  br i1 %80, label %96, label %81, !dbg !2306

81:                                               ; preds = %79
  %82 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !2307
  %83 = load i8, ptr %82, align 1, !dbg !2307, !tbaa !1166
  %84 = sext i8 %83 to i64, !dbg !2307
  %85 = getelementptr inbounds i16, ptr %73, i64 %84, !dbg !2307
  %86 = load i16, ptr %85, align 2, !dbg !2307, !tbaa !1198
  %87 = and i16 %86, 8192, !dbg !2307
  %88 = icmp eq i16 %87, 0, !dbg !2307
  br i1 %88, label %89, label %96, !dbg !2308

89:                                               ; preds = %81
  %90 = and i8 %71, 1, !dbg !2309
  %91 = icmp ne i8 %90, 0, !dbg !2309
  %92 = icmp eq i8 %83, 45
  %93 = select i1 %91, i1 true, i1 %92, !dbg !2311
  br i1 %93, label %94, label %96, !dbg !2311

94:                                               ; preds = %89, %70
  %95 = getelementptr inbounds i8, ptr %62, i64 1, !dbg !2312
  call void @llvm.dbg.value(metadata ptr %95, metadata !613, metadata !DIExpression()), !dbg !2247
  br label %61, !dbg !2291, !llvm.loop !2313

96:                                               ; preds = %89, %81, %79, %61, %61
  %97 = ptrtoint ptr %25 to i64, !dbg !2315
  %98 = load ptr, ptr @stdout, align 8, !dbg !2315, !tbaa !1086
  %99 = tail call i64 @fwrite_unlocked(ptr noundef %2, i64 noundef 1, i64 noundef %24, ptr noundef %98), !dbg !2315
  call void @llvm.dbg.value(metadata ptr %0, metadata !2180, metadata !DIExpression()), !dbg !2316
  call void @llvm.dbg.value(metadata ptr @.str.21.52, metadata !2183, metadata !DIExpression()), !dbg !2316
  %100 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.21.52) #38, !dbg !2318
  %101 = icmp eq i32 %100, 0, !dbg !2319
  br i1 %101, label %130, label %102, !dbg !2320

102:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %0, metadata !2180, metadata !DIExpression()), !dbg !2321
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !2183, metadata !DIExpression()), !dbg !2321
  %103 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.23) #38, !dbg !2323
  %104 = icmp eq i32 %103, 0, !dbg !2324
  br i1 %104, label %130, label %105, !dbg !2325

105:                                              ; preds = %102
  call void @llvm.dbg.value(metadata ptr %0, metadata !2180, metadata !DIExpression()), !dbg !2326
  call void @llvm.dbg.value(metadata ptr @.str.25, metadata !2183, metadata !DIExpression()), !dbg !2326
  %106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.25) #38, !dbg !2328
  %107 = icmp eq i32 %106, 0, !dbg !2329
  br i1 %107, label %130, label %108, !dbg !2330

108:                                              ; preds = %105
  call void @llvm.dbg.value(metadata ptr %0, metadata !2180, metadata !DIExpression()), !dbg !2331
  call void @llvm.dbg.value(metadata ptr @.str.26, metadata !2183, metadata !DIExpression()), !dbg !2331
  %109 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.26) #38, !dbg !2333
  %110 = icmp eq i32 %109, 0, !dbg !2334
  br i1 %110, label %130, label %111, !dbg !2335

111:                                              ; preds = %108
  call void @llvm.dbg.value(metadata ptr %0, metadata !2180, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !2183, metadata !DIExpression()), !dbg !2336
  %112 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.28) #38, !dbg !2338
  %113 = icmp eq i32 %112, 0, !dbg !2339
  br i1 %113, label %130, label %114, !dbg !2340

114:                                              ; preds = %111
  call void @llvm.dbg.value(metadata ptr %0, metadata !2180, metadata !DIExpression()), !dbg !2341
  call void @llvm.dbg.value(metadata ptr @.str.29, metadata !2183, metadata !DIExpression()), !dbg !2341
  %115 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.29) #38, !dbg !2343
  %116 = icmp eq i32 %115, 0, !dbg !2344
  br i1 %116, label %130, label %117, !dbg !2345

117:                                              ; preds = %114
  call void @llvm.dbg.value(metadata ptr %0, metadata !2180, metadata !DIExpression()), !dbg !2346
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !2183, metadata !DIExpression()), !dbg !2346
  %118 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.30) #38, !dbg !2348
  %119 = icmp eq i32 %118, 0, !dbg !2349
  br i1 %119, label %130, label %120, !dbg !2350

120:                                              ; preds = %117
  call void @llvm.dbg.value(metadata ptr %0, metadata !2180, metadata !DIExpression()), !dbg !2351
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !2183, metadata !DIExpression()), !dbg !2351
  %121 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.31) #38, !dbg !2353
  %122 = icmp eq i32 %121, 0, !dbg !2354
  br i1 %122, label %130, label %123, !dbg !2355

123:                                              ; preds = %120
  call void @llvm.dbg.value(metadata ptr %0, metadata !2180, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata ptr @.str.32, metadata !2183, metadata !DIExpression()), !dbg !2356
  %124 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.32) #38, !dbg !2358
  %125 = icmp eq i32 %124, 0, !dbg !2359
  br i1 %125, label %130, label %126, !dbg !2360

126:                                              ; preds = %123
  call void @llvm.dbg.value(metadata ptr %0, metadata !2180, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata ptr @.str.33, metadata !2183, metadata !DIExpression()), !dbg !2361
  %127 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.33) #38, !dbg !2363
  %128 = icmp eq i32 %127, 0, !dbg !2364
  %129 = select i1 %128, ptr @.str.27, ptr %0, !dbg !2365
  br label %130, !dbg !2360

130:                                              ; preds = %126, %123, %120, %117, %114, %111, %108, %105, %102, %96
  %131 = phi ptr [ @.str.22.53, %96 ], [ @.str.24, %102 ], [ @.str.24, %105 ], [ @.str.27, %108 ], [ @.str.27, %111 ], [ @.str.27, %114 ], [ @.str.27, %117 ], [ @.str.27, %120 ], [ %129, %126 ], [ @.str.27, %123 ], !dbg !2320
  call void @llvm.dbg.value(metadata ptr %131, metadata !618, metadata !DIExpression()), !dbg !2247
  %132 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(7) @.str.34, i64 noundef 6) #38, !dbg !2366
  %133 = icmp eq i32 %132, 0, !dbg !2366
  br i1 %133, label %137, label %134, !dbg !2368

134:                                              ; preds = %130
  %135 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %57, ptr noundef nonnull dereferenceable(10) @.str.35.54, i64 noundef 9) #38, !dbg !2369
  %136 = icmp eq i32 %135, 0, !dbg !2369
  br i1 %136, label %137, label %140, !dbg !2370

137:                                              ; preds = %134, %130
  %138 = trunc i64 %59 to i32, !dbg !2371
  %139 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36.55, ptr noundef nonnull @.str.37.56, ptr noundef %131, ptr noundef %131, i32 noundef %138, ptr noundef %57) #37, !dbg !2371
  br label %143, !dbg !2373

140:                                              ; preds = %134
  %141 = trunc i64 %59 to i32, !dbg !2374
  %142 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38.57, ptr noundef nonnull @.str.39.58, ptr noundef %131, i32 noundef %141, ptr noundef %57) #37, !dbg !2374
  br label %143

143:                                              ; preds = %140, %137
  %144 = load ptr, ptr @stdout, align 8, !dbg !2376, !tbaa !1086
  %145 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40.59, ptr noundef %144), !dbg !2376
  %146 = load ptr, ptr @stdout, align 8, !dbg !2377, !tbaa !1086
  %147 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41.60, ptr noundef %146), !dbg !2377
  %148 = ptrtoint ptr %62 to i64, !dbg !2378
  %149 = sub i64 %148, %97, !dbg !2378
  %150 = load ptr, ptr @stdout, align 8, !dbg !2378, !tbaa !1086
  %151 = tail call i64 @fwrite_unlocked(ptr noundef %25, i64 noundef 1, i64 noundef %149, ptr noundef %150), !dbg !2378
  %152 = load ptr, ptr @stdout, align 8, !dbg !2379, !tbaa !1086
  %153 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42.61, ptr noundef %152), !dbg !2379
  %154 = load ptr, ptr @stdout, align 8, !dbg !2380, !tbaa !1086
  %155 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43.62, ptr noundef %154), !dbg !2380
  %156 = load ptr, ptr @stdout, align 8, !dbg !2381, !tbaa !1086
  %157 = tail call i32 @fputs_unlocked(ptr noundef nonnull %62, ptr noundef %156), !dbg !2381
  br label %158, !dbg !2382

158:                                              ; preds = %20, %143
  %159 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10.63, i32 noundef 5) #37, !dbg !2383
  %160 = load ptr, ptr @stdout, align 8, !dbg !2383, !tbaa !1086
  %161 = tail call i32 @fputs_unlocked(ptr noundef %159, ptr noundef %160), !dbg !2383
  ret void, !dbg !2384
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #15 !dbg !2385 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2387, metadata !DIExpression()), !dbg !2388
  store ptr %0, ptr @file_name, align 8, !dbg !2389, !tbaa !1086
  ret void, !dbg !2390
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef zeroext %0) local_unnamed_addr #15 !dbg !2391 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2395, metadata !DIExpression()), !dbg !2396
  store i8 %2, ptr @ignore_EPIPE, align 1, !dbg !2397, !tbaa !1333
  ret void, !dbg !2398
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2399 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2404, !tbaa !1086
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !2405
  %3 = icmp eq i32 %2, 0, !dbg !2406
  br i1 %3, label %22, label %4, !dbg !2407

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 1, !dbg !2408, !tbaa !1333, !range !1571, !noundef !1095
  %6 = icmp eq i8 %5, 0, !dbg !2408
  br i1 %6, label %11, label %7, !dbg !2409

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !2410
  %9 = load i32, ptr %8, align 4, !dbg !2410, !tbaa !1157
  %10 = icmp eq i32 %9, 32, !dbg !2411
  br i1 %10, label %22, label %11, !dbg !2412

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1.70, i32 noundef 5) #37, !dbg !2413
  call void @llvm.dbg.value(metadata ptr %12, metadata !2401, metadata !DIExpression()), !dbg !2414
  %13 = load ptr, ptr @file_name, align 8, !dbg !2415, !tbaa !1086
  %14 = icmp eq ptr %13, null, !dbg !2415
  %15 = tail call ptr @__errno_location() #40, !dbg !2417
  %16 = load i32, ptr %15, align 4, !dbg !2417, !tbaa !1157
  br i1 %14, label %19, label %17, !dbg !2418

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !2419
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.71, ptr noundef %18, ptr noundef %12) #37, !dbg !2419
  br label %20, !dbg !2419

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.72, ptr noundef %12) #37, !dbg !2420
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2421, !tbaa !1157
  tail call void @_exit(i32 noundef %21) #39, !dbg !2422
  unreachable, !dbg !2422

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2423, !tbaa !1086
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !2425
  %25 = icmp eq i32 %24, 0, !dbg !2426
  br i1 %25, label %28, label %26, !dbg !2427

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2428, !tbaa !1157
  tail call void @_exit(i32 noundef %27) #39, !dbg !2429
  unreachable, !dbg !2429

28:                                               ; preds = %22
  ret void, !dbg !2430
}

; Function Attrs: noreturn
declare !dbg !2431 void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #17 !dbg !2433 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2437, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32 %1, metadata !2438, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata ptr %2, metadata !2439, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata ptr %3, metadata !2440, metadata !DIExpression()), !dbg !2441
  tail call fastcc void @flush_stdout(), !dbg !2442
  %5 = load ptr, ptr @error_print_progname, align 8, !dbg !2443, !tbaa !1086
  %6 = icmp eq ptr %5, null, !dbg !2443
  br i1 %6, label %8, label %7, !dbg !2445

7:                                                ; preds = %4
  tail call void %5() #37, !dbg !2446
  br label %12, !dbg !2446

8:                                                ; preds = %4
  %9 = load ptr, ptr @stderr, align 8, !dbg !2447, !tbaa !1086
  %10 = tail call ptr @getprogname() #38, !dbg !2447
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %9, i32 noundef 1, ptr noundef nonnull @.str.73, ptr noundef %10) #37, !dbg !2447
  br label %12

12:                                               ; preds = %8, %7
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3), !dbg !2449
  ret void, !dbg !2450
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2451 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2453, metadata !DIExpression()), !dbg !2454
  call void @llvm.dbg.value(metadata i32 1, metadata !2455, metadata !DIExpression()), !dbg !2460
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !2463
  %2 = icmp slt i32 %1, 0, !dbg !2464
  br i1 %2, label %6, label %3, !dbg !2465

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2466, !tbaa !1086
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !2466
  br label %6, !dbg !2466

6:                                                ; preds = %3, %0
  ret void, !dbg !2467
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #10 !dbg !2468 {
  %5 = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2470, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32 %1, metadata !2471, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata ptr %2, metadata !2472, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata ptr %3, metadata !2473, metadata !DIExpression()), !dbg !2474
  %6 = load ptr, ptr @stderr, align 8, !dbg !2475, !tbaa !1086
  call void @llvm.dbg.value(metadata ptr %6, metadata !2476, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata ptr %2, metadata !2516, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata ptr %3, metadata !2517, metadata !DIExpression()), !dbg !2518
  %7 = tail call i32 @__vfprintf_chk(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %2, ptr noundef %3) #37, !dbg !2520
  %8 = load i32, ptr @error_message_count, align 4, !dbg !2521, !tbaa !1157
  %9 = add i32 %8, 1, !dbg !2521
  store i32 %9, ptr @error_message_count, align 4, !dbg !2521, !tbaa !1157
  %10 = icmp eq i32 %1, 0, !dbg !2522
  br i1 %10, label %20, label %11, !dbg !2524

11:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2525, metadata !DIExpression()), !dbg !2533
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !2535
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2529, metadata !DIExpression()), !dbg !2536
  %12 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !2537
  call void @llvm.dbg.value(metadata ptr %12, metadata !2528, metadata !DIExpression()), !dbg !2533
  %13 = icmp eq ptr %12, null, !dbg !2538
  br i1 %13, label %14, label %16, !dbg !2540

14:                                               ; preds = %11
  %15 = call ptr @dcgettext(ptr noundef nonnull @.str.4.74, ptr noundef nonnull @.str.5.75, i32 noundef 5) #37, !dbg !2541
  call void @llvm.dbg.value(metadata ptr %15, metadata !2528, metadata !DIExpression()), !dbg !2533
  br label %16, !dbg !2542

16:                                               ; preds = %11, %14
  %17 = phi ptr [ %12, %11 ], [ %15, %14 ], !dbg !2533
  call void @llvm.dbg.value(metadata ptr %17, metadata !2528, metadata !DIExpression()), !dbg !2533
  %18 = load ptr, ptr @stderr, align 8, !dbg !2543, !tbaa !1086
  %19 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %18, i32 noundef 1, ptr noundef nonnull @.str.6.76, ptr noundef %17) #37, !dbg !2543
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !2544
  br label %20, !dbg !2545

20:                                               ; preds = %16, %4
  %21 = load ptr, ptr @stderr, align 8, !dbg !2546, !tbaa !1086
  call void @llvm.dbg.value(metadata i32 10, metadata !2547, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata ptr %21, metadata !2552, metadata !DIExpression()), !dbg !2553
  %22 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 5, !dbg !2555
  %23 = load ptr, ptr %22, align 8, !dbg !2555, !tbaa !1609
  %24 = getelementptr inbounds %struct._IO_FILE, ptr %21, i64 0, i32 6, !dbg !2555
  %25 = load ptr, ptr %24, align 8, !dbg !2555, !tbaa !1610
  %26 = icmp ult ptr %23, %25, !dbg !2555
  br i1 %26, label %29, label %27, !dbg !2555, !prof !1611

27:                                               ; preds = %20
  %28 = call i32 @__overflow(ptr noundef nonnull %21, i32 noundef 10) #37, !dbg !2555
  br label %31, !dbg !2555

29:                                               ; preds = %20
  %30 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !2555
  store ptr %30, ptr %22, align 8, !dbg !2555, !tbaa !1609
  store i8 10, ptr %23, align 1, !dbg !2555, !tbaa !1166
  br label %31, !dbg !2555

31:                                               ; preds = %27, %29
  %32 = load ptr, ptr @stderr, align 8, !dbg !2556, !tbaa !1086
  %33 = call i32 @fflush_unlocked(ptr noundef %32) #37, !dbg !2556
  %34 = icmp eq i32 %0, 0, !dbg !2557
  br i1 %34, label %36, label %35, !dbg !2559

35:                                               ; preds = %31
  call void @exit(i32 noundef %0) #39, !dbg !2560
  unreachable, !dbg !2560

36:                                               ; preds = %31
  ret void, !dbg !2561
}

declare !dbg !2562 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2565 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2568 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2572 {
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2576, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata i32 %1, metadata !2577, metadata !DIExpression()), !dbg !2585
  call void @llvm.dbg.value(metadata ptr %2, metadata !2578, metadata !DIExpression()), !dbg !2585
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #37, !dbg !2586
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2579, metadata !DIExpression()), !dbg !2587
  call void @llvm.va_start(ptr nonnull %4), !dbg !2588
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %4) #43, !dbg !2589
  call void @llvm.va_end(ptr nonnull %4), !dbg !2590
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #37, !dbg !2591
  ret void, !dbg !2591
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #17 !dbg !710 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !722, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i32 %1, metadata !723, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata ptr %2, metadata !724, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i32 %3, metadata !725, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata ptr %4, metadata !726, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata ptr %5, metadata !727, metadata !DIExpression()), !dbg !2592
  %7 = load i32, ptr @error_one_per_line, align 4, !dbg !2593, !tbaa !1157
  %8 = icmp eq i32 %7, 0, !dbg !2593
  br i1 %8, label %23, label %9, !dbg !2595

9:                                                ; preds = %6
  %10 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2596, !tbaa !1157
  %11 = icmp eq i32 %10, %3, !dbg !2599
  br i1 %11, label %12, label %22, !dbg !2600

12:                                               ; preds = %9
  %13 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2601, !tbaa !1086
  %14 = icmp eq ptr %13, %2, !dbg !2602
  br i1 %14, label %36, label %15, !dbg !2603

15:                                               ; preds = %12
  %16 = icmp ne ptr %13, null, !dbg !2604
  %17 = icmp ne ptr %2, null
  %18 = and i1 %17, %16, !dbg !2605
  br i1 %18, label %19, label %22, !dbg !2605

19:                                               ; preds = %15
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2606
  %21 = icmp eq i32 %20, 0, !dbg !2607
  br i1 %21, label %36, label %22, !dbg !2608

22:                                               ; preds = %19, %15, %9
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2609, !tbaa !1086
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2610, !tbaa !1157
  br label %23, !dbg !2611

23:                                               ; preds = %22, %6
  tail call fastcc void @flush_stdout(), !dbg !2612
  %24 = load ptr, ptr @error_print_progname, align 8, !dbg !2613, !tbaa !1086
  %25 = icmp eq ptr %24, null, !dbg !2613
  br i1 %25, label %27, label %26, !dbg !2615

26:                                               ; preds = %23
  tail call void %24() #37, !dbg !2616
  br label %31, !dbg !2616

27:                                               ; preds = %23
  %28 = load ptr, ptr @stderr, align 8, !dbg !2617, !tbaa !1086
  %29 = tail call ptr @getprogname() #38, !dbg !2617
  %30 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %28, i32 noundef 1, ptr noundef nonnull @.str.1.79, ptr noundef %29) #37, !dbg !2617
  br label %31

31:                                               ; preds = %27, %26
  %32 = load ptr, ptr @stderr, align 8, !dbg !2619, !tbaa !1086
  %33 = icmp eq ptr %2, null, !dbg !2619
  %34 = select i1 %33, ptr @.str.3.80, ptr @.str.2.81, !dbg !2619
  %35 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %34, ptr noundef %2, i32 noundef %3) #37, !dbg !2619
  tail call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef %5), !dbg !2620
  br label %36, !dbg !2621

36:                                               ; preds = %12, %19, %31
  ret void, !dbg !2621
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2622 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !2626, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i32 %1, metadata !2627, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata ptr %2, metadata !2628, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata i32 %3, metadata !2629, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.value(metadata ptr %4, metadata !2630, metadata !DIExpression()), !dbg !2632
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #37, !dbg !2633
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2631, metadata !DIExpression()), !dbg !2634
  call void @llvm.va_start(ptr nonnull %6), !dbg !2635
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %6) #43, !dbg !2636
  call void @llvm.va_end(ptr nonnull %6), !dbg !2637
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #37, !dbg !2638
  ret void, !dbg !2638
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2639 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2645, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i64 %1, metadata !2646, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i64 %2, metadata !2647, metadata !DIExpression()), !dbg !2649
  call void @llvm.dbg.value(metadata i32 %3, metadata !2648, metadata !DIExpression()), !dbg !2649
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #37, !dbg !2650
  ret void, !dbg !2651
}

; Function Attrs: nounwind
declare !dbg !2652 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2655 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2693, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i32 %1, metadata !2694, metadata !DIExpression()), !dbg !2695
  %3 = icmp eq ptr %0, null, !dbg !2696
  br i1 %3, label %7, label %4, !dbg !2698

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2699
  call void @llvm.dbg.value(metadata i32 %5, metadata !2645, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 0, metadata !2646, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i64 0, metadata !2647, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i32 %1, metadata !2648, metadata !DIExpression()), !dbg !2700
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #37, !dbg !2702
  br label %7, !dbg !2703

7:                                                ; preds = %4, %2
  ret void, !dbg !2704
}

; Function Attrs: nofree nounwind
declare !dbg !2705 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2708 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2746, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 0, metadata !2747, metadata !DIExpression()), !dbg !2750
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2751
  call void @llvm.dbg.value(metadata i32 %2, metadata !2748, metadata !DIExpression()), !dbg !2750
  %3 = icmp slt i32 %2, 0, !dbg !2752
  br i1 %3, label %4, label %6, !dbg !2754

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2755
  br label %24, !dbg !2756

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !2757
  %8 = icmp eq i32 %7, 0, !dbg !2757
  br i1 %8, label %13, label %9, !dbg !2759

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2760
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !2761
  %12 = icmp eq i64 %11, -1, !dbg !2762
  br i1 %12, label %16, label %13, !dbg !2763

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !2764
  %15 = icmp eq i32 %14, 0, !dbg !2764
  br i1 %15, label %16, label %18, !dbg !2765

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2747, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 0, metadata !2749, metadata !DIExpression()), !dbg !2750
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2766
  call void @llvm.dbg.value(metadata i32 %17, metadata !2749, metadata !DIExpression()), !dbg !2750
  br label %24, !dbg !2767

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !2768
  %20 = load i32, ptr %19, align 4, !dbg !2768, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %20, metadata !2747, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 0, metadata !2749, metadata !DIExpression()), !dbg !2750
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2766
  call void @llvm.dbg.value(metadata i32 %21, metadata !2749, metadata !DIExpression()), !dbg !2750
  %22 = icmp eq i32 %20, 0, !dbg !2769
  br i1 %22, label %24, label %23, !dbg !2767

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2771, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 -1, metadata !2749, metadata !DIExpression()), !dbg !2750
  br label %24, !dbg !2773

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2750
  ret i32 %25, !dbg !2774
}

; Function Attrs: nofree nounwind
declare !dbg !2775 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2776 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2778 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2781 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2819, metadata !DIExpression()), !dbg !2820
  %2 = icmp eq ptr %0, null, !dbg !2821
  br i1 %2, label %6, label %3, !dbg !2823

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !2824
  %5 = icmp eq i32 %4, 0, !dbg !2824
  br i1 %5, label %6, label %8, !dbg !2825

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2826
  br label %16, !dbg !2827

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2828, metadata !DIExpression()), !dbg !2833
  %9 = load i32, ptr %0, align 8, !dbg !2835, !tbaa !1419
  %10 = and i32 %9, 256, !dbg !2837
  %11 = icmp eq i32 %10, 0, !dbg !2837
  br i1 %11, label %14, label %12, !dbg !2838

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !2839
  br label %14, !dbg !2839

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2840
  br label %16, !dbg !2841

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2820
  ret i32 %17, !dbg !2842
}

; Function Attrs: nofree nounwind
declare !dbg !2843 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2844 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2882, metadata !DIExpression()), !dbg !2883
  tail call void @__fpurge(ptr noundef nonnull %0) #37, !dbg !2884
  ret i32 0, !dbg !2885
}

; Function Attrs: nounwind
declare !dbg !2886 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2889 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2927, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i64 %1, metadata !2928, metadata !DIExpression()), !dbg !2933
  call void @llvm.dbg.value(metadata i32 %2, metadata !2929, metadata !DIExpression()), !dbg !2933
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2934
  %5 = load ptr, ptr %4, align 8, !dbg !2934, !tbaa !2935
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2936
  %7 = load ptr, ptr %6, align 8, !dbg !2936, !tbaa !2937
  %8 = icmp eq ptr %5, %7, !dbg !2938
  br i1 %8, label %9, label %27, !dbg !2939

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2940
  %11 = load ptr, ptr %10, align 8, !dbg !2940, !tbaa !1609
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2941
  %13 = load ptr, ptr %12, align 8, !dbg !2941, !tbaa !2942
  %14 = icmp eq ptr %11, %13, !dbg !2943
  br i1 %14, label %15, label %27, !dbg !2944

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2945
  %17 = load ptr, ptr %16, align 8, !dbg !2945, !tbaa !2946
  %18 = icmp eq ptr %17, null, !dbg !2947
  br i1 %18, label %19, label %27, !dbg !2948

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2949
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !2950
  call void @llvm.dbg.value(metadata i64 %21, metadata !2930, metadata !DIExpression()), !dbg !2951
  %22 = icmp eq i64 %21, -1, !dbg !2952
  br i1 %22, label %29, label %23, !dbg !2954

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2955, !tbaa !1419
  %25 = and i32 %24, -17, !dbg !2955
  store i32 %25, ptr %0, align 8, !dbg !2955, !tbaa !1419
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2956
  store i64 %21, ptr %26, align 8, !dbg !2957, !tbaa !2958
  br label %29, !dbg !2959

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2960
  br label %29, !dbg !2961

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2933
  ret i32 %30, !dbg !2962
}

; Function Attrs: nofree nounwind
declare !dbg !2963 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !2966 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2969, !tbaa !1086
  ret ptr %1, !dbg !2970
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !2971 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2973, metadata !DIExpression()), !dbg !2976
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !2977
  call void @llvm.dbg.value(metadata ptr %2, metadata !2974, metadata !DIExpression()), !dbg !2976
  %3 = icmp eq ptr %2, null, !dbg !2978
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2978
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2978
  call void @llvm.dbg.value(metadata ptr %5, metadata !2975, metadata !DIExpression()), !dbg !2976
  %6 = ptrtoint ptr %5 to i64, !dbg !2979
  %7 = ptrtoint ptr %0 to i64, !dbg !2979
  %8 = sub i64 %6, %7, !dbg !2979
  %9 = icmp sgt i64 %8, 6, !dbg !2981
  br i1 %9, label %10, label %19, !dbg !2982

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2983
  call void @llvm.dbg.value(metadata ptr %11, metadata !2984, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata ptr @.str.100, metadata !2989, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.value(metadata i64 7, metadata !2990, metadata !DIExpression()), !dbg !2991
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.100, i64 7), !dbg !2993
  %13 = icmp eq i32 %12, 0, !dbg !2994
  br i1 %13, label %14, label %19, !dbg !2995

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2973, metadata !DIExpression()), !dbg !2976
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.101, i64 noundef 3) #38, !dbg !2996
  %16 = icmp eq i32 %15, 0, !dbg !2999
  %17 = select i1 %16, i64 3, i64 0, !dbg !3000
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !3000
  br label %19, !dbg !3000

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2976
  call void @llvm.dbg.value(metadata ptr %21, metadata !2975, metadata !DIExpression()), !dbg !2976
  call void @llvm.dbg.value(metadata ptr %20, metadata !2973, metadata !DIExpression()), !dbg !2976
  store ptr %20, ptr @program_name, align 8, !dbg !3001, !tbaa !1086
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !3002, !tbaa !1086
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !3003, !tbaa !1086
  ret void, !dbg !3004
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3005 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !759 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !766, metadata !DIExpression()), !dbg !3006
  call void @llvm.dbg.value(metadata ptr %1, metadata !767, metadata !DIExpression()), !dbg !3006
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !3007
  call void @llvm.dbg.value(metadata ptr %5, metadata !768, metadata !DIExpression()), !dbg !3006
  %6 = icmp eq ptr %5, %0, !dbg !3008
  br i1 %6, label %7, label %14, !dbg !3010

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !3011
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !3012
  call void @llvm.dbg.declare(metadata ptr %4, metadata !770, metadata !DIExpression()), !dbg !3013
  call void @llvm.dbg.value(metadata ptr %4, metadata !3014, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata ptr %4, metadata !3023, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i32 0, metadata !3028, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 8, metadata !3029, metadata !DIExpression()), !dbg !3030
  store i64 0, ptr %4, align 8, !dbg !3032
  call void @llvm.dbg.value(metadata ptr %3, metadata !769, metadata !DIExpression(DW_OP_deref)), !dbg !3006
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !3033
  %9 = icmp eq i64 %8, 2, !dbg !3035
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !769, metadata !DIExpression()), !dbg !3006
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !3036
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !3006
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !3037
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !3037
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !3006
  ret ptr %15, !dbg !3037
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !3038 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3043, metadata !DIExpression()), !dbg !3046
  %2 = tail call ptr @__errno_location() #40, !dbg !3047
  %3 = load i32, ptr %2, align 4, !dbg !3047, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %3, metadata !3044, metadata !DIExpression()), !dbg !3046
  %4 = icmp eq ptr %0, null, !dbg !3048
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3048
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !3049
  call void @llvm.dbg.value(metadata ptr %6, metadata !3045, metadata !DIExpression()), !dbg !3046
  store i32 %3, ptr %2, align 4, !dbg !3050, !tbaa !1157
  ret ptr %6, !dbg !3051
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !3052 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3058, metadata !DIExpression()), !dbg !3059
  %2 = icmp eq ptr %0, null, !dbg !3060
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !3060
  %4 = load i32, ptr %3, align 8, !dbg !3061, !tbaa !3062
  ret i32 %4, !dbg !3064
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !3065 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3069, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.value(metadata i32 %1, metadata !3070, metadata !DIExpression()), !dbg !3071
  %3 = icmp eq ptr %0, null, !dbg !3072
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3072
  store i32 %1, ptr %4, align 8, !dbg !3073, !tbaa !3062
  ret void, !dbg !3074
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #24 !dbg !3075 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3079, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 %1, metadata !3080, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i32 %2, metadata !3081, metadata !DIExpression()), !dbg !3087
  call void @llvm.dbg.value(metadata i8 %1, metadata !3082, metadata !DIExpression()), !dbg !3087
  %4 = icmp eq ptr %0, null, !dbg !3088
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3088
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3089
  %7 = lshr i8 %1, 5, !dbg !3090
  %8 = zext i8 %7 to i64, !dbg !3090
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !3091
  call void @llvm.dbg.value(metadata ptr %9, metadata !3083, metadata !DIExpression()), !dbg !3087
  %10 = and i8 %1, 31, !dbg !3092
  %11 = zext i8 %10 to i32, !dbg !3092
  call void @llvm.dbg.value(metadata i32 %11, metadata !3085, metadata !DIExpression()), !dbg !3087
  %12 = load i32, ptr %9, align 4, !dbg !3093, !tbaa !1157
  %13 = lshr i32 %12, %11, !dbg !3094
  %14 = and i32 %13, 1, !dbg !3095
  call void @llvm.dbg.value(metadata i32 %14, metadata !3086, metadata !DIExpression()), !dbg !3087
  %15 = xor i32 %13, %2, !dbg !3096
  %16 = and i32 %15, 1, !dbg !3096
  %17 = shl nuw i32 %16, %11, !dbg !3097
  %18 = xor i32 %17, %12, !dbg !3098
  store i32 %18, ptr %9, align 4, !dbg !3098, !tbaa !1157
  ret i32 %14, !dbg !3099
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !3100 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3104, metadata !DIExpression()), !dbg !3107
  call void @llvm.dbg.value(metadata i32 %1, metadata !3105, metadata !DIExpression()), !dbg !3107
  %3 = icmp eq ptr %0, null, !dbg !3108
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3110
  call void @llvm.dbg.value(metadata ptr %4, metadata !3104, metadata !DIExpression()), !dbg !3107
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !3111
  %6 = load i32, ptr %5, align 4, !dbg !3111, !tbaa !3112
  call void @llvm.dbg.value(metadata i32 %6, metadata !3106, metadata !DIExpression()), !dbg !3107
  store i32 %1, ptr %5, align 4, !dbg !3113, !tbaa !3112
  ret i32 %6, !dbg !3114
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3115 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3119, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %1, metadata !3120, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %2, metadata !3121, metadata !DIExpression()), !dbg !3122
  %4 = icmp eq ptr %0, null, !dbg !3123
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3125
  call void @llvm.dbg.value(metadata ptr %5, metadata !3119, metadata !DIExpression()), !dbg !3122
  store i32 10, ptr %5, align 8, !dbg !3126, !tbaa !3062
  %6 = icmp ne ptr %1, null, !dbg !3127
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3129
  br i1 %8, label %10, label %9, !dbg !3129

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3130
  unreachable, !dbg !3130

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3131
  store ptr %1, ptr %11, align 8, !dbg !3132, !tbaa !3133
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3134
  store ptr %2, ptr %12, align 8, !dbg !3135, !tbaa !3136
  ret void, !dbg !3137
}

; Function Attrs: noreturn nounwind
declare !dbg !3138 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3139 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3143, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %1, metadata !3144, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata ptr %2, metadata !3145, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata i64 %3, metadata !3146, metadata !DIExpression()), !dbg !3151
  call void @llvm.dbg.value(metadata ptr %4, metadata !3147, metadata !DIExpression()), !dbg !3151
  %6 = icmp eq ptr %4, null, !dbg !3152
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !3152
  call void @llvm.dbg.value(metadata ptr %7, metadata !3148, metadata !DIExpression()), !dbg !3151
  %8 = tail call ptr @__errno_location() #40, !dbg !3153
  %9 = load i32, ptr %8, align 4, !dbg !3153, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %9, metadata !3149, metadata !DIExpression()), !dbg !3151
  %10 = load i32, ptr %7, align 8, !dbg !3154, !tbaa !3062
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !3155
  %12 = load i32, ptr %11, align 4, !dbg !3155, !tbaa !3112
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !3156
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !3157
  %15 = load ptr, ptr %14, align 8, !dbg !3157, !tbaa !3133
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !3158
  %17 = load ptr, ptr %16, align 8, !dbg !3158, !tbaa !3136
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !3159
  call void @llvm.dbg.value(metadata i64 %18, metadata !3150, metadata !DIExpression()), !dbg !3151
  store i32 %9, ptr %8, align 4, !dbg !3160, !tbaa !1157
  ret i64 %18, !dbg !3161
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !3162 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3168, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %1, metadata !3169, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %2, metadata !3170, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %3, metadata !3171, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i32 %4, metadata !3172, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i32 %5, metadata !3173, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %6, metadata !3174, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %7, metadata !3175, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %8, metadata !3176, metadata !DIExpression()), !dbg !3230
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !3231
  %17 = icmp eq i64 %16, 1, !dbg !3232
  call void @llvm.dbg.value(metadata i1 %17, metadata !3177, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3230
  call void @llvm.dbg.value(metadata i64 0, metadata !3178, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 0, metadata !3179, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr null, metadata !3180, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 0, metadata !3181, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 0, metadata !3182, metadata !DIExpression()), !dbg !3230
  %18 = trunc i32 %5 to i8, !dbg !3233
  %19 = lshr i8 %18, 1, !dbg !3233
  %20 = and i8 %19, 1, !dbg !3233
  call void @llvm.dbg.value(metadata i8 %20, metadata !3183, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 0, metadata !3184, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 1, metadata !3185, metadata !DIExpression()), !dbg !3230
  %21 = getelementptr inbounds i8, ptr %2, i64 1
  %22 = and i32 %5, 4
  %23 = icmp eq i32 %22, 0
  %24 = and i32 %5, 1
  %25 = icmp eq i32 %24, 0
  %26 = icmp ne ptr %6, null
  %27 = icmp eq ptr %6, null
  br label %28, !dbg !3234

28:                                               ; preds = %642, %9
  %29 = phi i32 [ %4, %9 ], [ 2, %642 ]
  %30 = phi ptr [ %7, %9 ], [ %117, %642 ]
  %31 = phi ptr [ %8, %9 ], [ %118, %642 ]
  %32 = phi i64 [ %3, %9 ], [ %139, %642 ]
  %33 = phi i64 [ 0, %9 ], [ %141, %642 ], !dbg !3235
  %34 = phi ptr [ null, %9 ], [ %120, %642 ], !dbg !3236
  %35 = phi i64 [ 0, %9 ], [ %121, %642 ], !dbg !3237
  %36 = phi i8 [ 0, %9 ], [ %122, %642 ], !dbg !3238
  %37 = phi i8 [ %20, %9 ], [ %123, %642 ], !dbg !3230
  %38 = phi i8 [ 0, %9 ], [ %142, %642 ], !dbg !3239
  %39 = phi i8 [ 1, %9 ], [ %143, %642 ], !dbg !3240
  %40 = phi i64 [ %1, %9 ], [ %141, %642 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !3169, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %39, metadata !3185, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %38, metadata !3184, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %37, metadata !3183, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %36, metadata !3182, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %35, metadata !3181, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %34, metadata !3180, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %33, metadata !3179, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 0, metadata !3178, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %32, metadata !3171, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %31, metadata !3176, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %30, metadata !3175, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i32 %29, metadata !3172, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.label(metadata !3223), !dbg !3241
  call void @llvm.dbg.value(metadata i8 0, metadata !3186, metadata !DIExpression()), !dbg !3230
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
  ], !dbg !3242

41:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !3183, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i32 5, metadata !3172, metadata !DIExpression()), !dbg !3230
  br label %115, !dbg !3243

42:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 %37, metadata !3183, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i32 5, metadata !3172, metadata !DIExpression()), !dbg !3230
  %43 = and i8 %37, 1, !dbg !3244
  %44 = icmp eq i8 %43, 0, !dbg !3244
  br i1 %44, label %45, label %115, !dbg !3243

45:                                               ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !3246
  br i1 %46, label %115, label %47, !dbg !3249

47:                                               ; preds = %45
  store i8 34, ptr %0, align 1, !dbg !3246, !tbaa !1166
  br label %115, !dbg !3246

48:                                               ; preds = %28, %28
  call void @llvm.dbg.value(metadata ptr @.str.11.114, metadata !854, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.value(metadata i32 %29, metadata !855, metadata !DIExpression()), !dbg !3250
  %49 = call ptr @dcgettext(ptr noundef nonnull @.str.13.115, ptr noundef nonnull @.str.11.114, i32 noundef 5) #37, !dbg !3254
  call void @llvm.dbg.value(metadata ptr %49, metadata !856, metadata !DIExpression()), !dbg !3250
  %50 = icmp eq ptr %49, @.str.11.114, !dbg !3255
  br i1 %50, label %51, label %60, !dbg !3257

51:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !3258
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !3259
  call void @llvm.dbg.declare(metadata ptr %13, metadata !858, metadata !DIExpression()), !dbg !3260
  call void @llvm.dbg.value(metadata ptr %13, metadata !3261, metadata !DIExpression()), !dbg !3267
  call void @llvm.dbg.value(metadata ptr %13, metadata !3269, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i32 0, metadata !3272, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.value(metadata i64 8, metadata !3273, metadata !DIExpression()), !dbg !3274
  store i64 0, ptr %13, align 8, !dbg !3276
  call void @llvm.dbg.value(metadata ptr %12, metadata !857, metadata !DIExpression(DW_OP_deref)), !dbg !3250
  %52 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !3277
  %53 = icmp eq i64 %52, 3, !dbg !3279
  %54 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %54, metadata !857, metadata !DIExpression()), !dbg !3250
  %55 = icmp eq i32 %54, 8216
  %56 = select i1 %53, i1 %55, i1 false, !dbg !3280
  %57 = icmp eq i32 %29, 9, !dbg !3280
  %58 = select i1 %57, ptr @.str.10.116, ptr @.str.12.117, !dbg !3280
  %59 = select i1 %56, ptr @gettext_quote.quote, ptr %58, !dbg !3280
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !3281
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !3281
  br label %60

60:                                               ; preds = %48, %51
  %61 = phi ptr [ %59, %51 ], [ %49, %48 ], !dbg !3250
  call void @llvm.dbg.value(metadata ptr %61, metadata !3175, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr @.str.12.117, metadata !854, metadata !DIExpression()), !dbg !3282
  call void @llvm.dbg.value(metadata i32 %29, metadata !855, metadata !DIExpression()), !dbg !3282
  %62 = call ptr @dcgettext(ptr noundef nonnull @.str.13.115, ptr noundef nonnull @.str.12.117, i32 noundef 5) #37, !dbg !3284
  call void @llvm.dbg.value(metadata ptr %62, metadata !856, metadata !DIExpression()), !dbg !3282
  %63 = icmp eq ptr %62, @.str.12.117, !dbg !3285
  br i1 %63, label %64, label %73, !dbg !3286

64:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !3287
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !3288
  call void @llvm.dbg.declare(metadata ptr %11, metadata !858, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata ptr %11, metadata !3261, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata ptr %11, metadata !3269, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 0, metadata !3272, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i64 8, metadata !3273, metadata !DIExpression()), !dbg !3292
  store i64 0, ptr %11, align 8, !dbg !3294
  call void @llvm.dbg.value(metadata ptr %10, metadata !857, metadata !DIExpression(DW_OP_deref)), !dbg !3282
  %65 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !3295
  %66 = icmp eq i64 %65, 3, !dbg !3296
  %67 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %67, metadata !857, metadata !DIExpression()), !dbg !3282
  %68 = icmp eq i32 %67, 8216
  %69 = select i1 %66, i1 %68, i1 false, !dbg !3297
  %70 = icmp eq i32 %29, 9, !dbg !3297
  %71 = select i1 %70, ptr @.str.10.116, ptr @.str.12.117, !dbg !3297
  %72 = select i1 %69, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %71, !dbg !3297
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !3298
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !3298
  br label %73

73:                                               ; preds = %64, %60, %28
  %74 = phi ptr [ %30, %28 ], [ %61, %60 ], [ %61, %64 ]
  %75 = phi ptr [ %31, %28 ], [ %62, %60 ], [ %72, %64 ]
  call void @llvm.dbg.value(metadata ptr %75, metadata !3176, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %74, metadata !3175, metadata !DIExpression()), !dbg !3230
  %76 = and i8 %37, 1, !dbg !3299
  %77 = icmp eq i8 %76, 0, !dbg !3299
  br i1 %77, label %78, label %93, !dbg !3300

78:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %74, metadata !3187, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 0, metadata !3178, metadata !DIExpression()), !dbg !3230
  %79 = load i8, ptr %74, align 1, !dbg !3302, !tbaa !1166
  %80 = icmp eq i8 %79, 0, !dbg !3304
  br i1 %80, label %93, label %81, !dbg !3304

81:                                               ; preds = %78, %88
  %82 = phi i8 [ %91, %88 ], [ %79, %78 ]
  %83 = phi ptr [ %90, %88 ], [ %74, %78 ]
  %84 = phi i64 [ %89, %88 ], [ 0, %78 ]
  call void @llvm.dbg.value(metadata ptr %83, metadata !3187, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i64 %84, metadata !3178, metadata !DIExpression()), !dbg !3230
  %85 = icmp ult i64 %84, %40, !dbg !3305
  br i1 %85, label %86, label %88, !dbg !3308

86:                                               ; preds = %81
  %87 = getelementptr inbounds i8, ptr %0, i64 %84, !dbg !3305
  store i8 %82, ptr %87, align 1, !dbg !3305, !tbaa !1166
  br label %88, !dbg !3305

88:                                               ; preds = %86, %81
  %89 = add i64 %84, 1, !dbg !3308
  call void @llvm.dbg.value(metadata i64 %89, metadata !3178, metadata !DIExpression()), !dbg !3230
  %90 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3309
  call void @llvm.dbg.value(metadata ptr %90, metadata !3187, metadata !DIExpression()), !dbg !3301
  %91 = load i8, ptr %90, align 1, !dbg !3302, !tbaa !1166
  %92 = icmp eq i8 %91, 0, !dbg !3304
  br i1 %92, label %93, label %81, !dbg !3304, !llvm.loop !3310

93:                                               ; preds = %88, %78, %73
  %94 = phi i64 [ 0, %73 ], [ 0, %78 ], [ %89, %88 ], !dbg !3312
  call void @llvm.dbg.value(metadata i64 %94, metadata !3178, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 1, metadata !3182, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %75, metadata !3180, metadata !DIExpression()), !dbg !3230
  %95 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %75) #38, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %95, metadata !3181, metadata !DIExpression()), !dbg !3230
  br label %115, !dbg !3314

96:                                               ; preds = %28
  call void @llvm.dbg.value(metadata i8 1, metadata !3182, metadata !DIExpression()), !dbg !3230
  br label %97, !dbg !3315

97:                                               ; preds = %28, %96
  %98 = phi i8 [ %36, %28 ], [ 1, %96 ], !dbg !3230
  call void @llvm.dbg.value(metadata i8 %98, metadata !3182, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 1, metadata !3183, metadata !DIExpression()), !dbg !3230
  br label %99, !dbg !3316

99:                                               ; preds = %28, %97
  %100 = phi i8 [ %36, %28 ], [ %98, %97 ], !dbg !3238
  %101 = phi i8 [ %37, %28 ], [ 1, %97 ], !dbg !3230
  call void @llvm.dbg.value(metadata i8 %101, metadata !3183, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %100, metadata !3182, metadata !DIExpression()), !dbg !3230
  %102 = and i8 %101, 1, !dbg !3317
  %103 = icmp eq i8 %102, 0, !dbg !3317
  %104 = select i1 %103, i8 1, i8 %100, !dbg !3319
  br label %105, !dbg !3319

105:                                              ; preds = %99, %28
  %106 = phi i8 [ %36, %28 ], [ %104, %99 ], !dbg !3230
  %107 = phi i8 [ %37, %28 ], [ %101, %99 ], !dbg !3233
  call void @llvm.dbg.value(metadata i8 %107, metadata !3183, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %106, metadata !3182, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i32 2, metadata !3172, metadata !DIExpression()), !dbg !3230
  %108 = and i8 %107, 1, !dbg !3320
  %109 = icmp eq i8 %108, 0, !dbg !3320
  br i1 %109, label %110, label %115, !dbg !3322

110:                                              ; preds = %105
  %111 = icmp eq i64 %40, 0, !dbg !3323
  br i1 %111, label %115, label %112, !dbg !3326

112:                                              ; preds = %110
  store i8 39, ptr %0, align 1, !dbg !3323, !tbaa !1166
  br label %115, !dbg !3323

113:                                              ; preds = %28
  call void @llvm.dbg.value(metadata i8 0, metadata !3183, metadata !DIExpression()), !dbg !3230
  br label %115, !dbg !3327

114:                                              ; preds = %28
  call void @abort() #39, !dbg !3328
  unreachable, !dbg !3328

115:                                              ; preds = %41, %105, %112, %110, %28, %42, %47, %45, %113, %93
  %116 = phi i32 [ 0, %113 ], [ %29, %93 ], [ 5, %45 ], [ 5, %47 ], [ 5, %42 ], [ %29, %28 ], [ 2, %110 ], [ 2, %112 ], [ 2, %105 ], [ 5, %41 ]
  %117 = phi ptr [ %30, %113 ], [ %74, %93 ], [ %30, %45 ], [ %30, %47 ], [ %30, %42 ], [ %30, %28 ], [ %30, %110 ], [ %30, %112 ], [ %30, %105 ], [ %30, %41 ]
  %118 = phi ptr [ %31, %113 ], [ %75, %93 ], [ %31, %45 ], [ %31, %47 ], [ %31, %42 ], [ %31, %28 ], [ %31, %110 ], [ %31, %112 ], [ %31, %105 ], [ %31, %41 ]
  %119 = phi i64 [ 0, %113 ], [ %94, %93 ], [ 1, %45 ], [ 1, %47 ], [ 0, %42 ], [ 0, %28 ], [ 1, %110 ], [ 1, %112 ], [ 0, %105 ], [ 0, %41 ], !dbg !3312
  %120 = phi ptr [ %34, %113 ], [ %75, %93 ], [ @.str.10.116, %45 ], [ @.str.10.116, %47 ], [ @.str.10.116, %42 ], [ %34, %28 ], [ @.str.12.117, %110 ], [ @.str.12.117, %112 ], [ @.str.12.117, %105 ], [ @.str.10.116, %41 ], !dbg !3230
  %121 = phi i64 [ %35, %113 ], [ %95, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ %35, %28 ], [ 1, %110 ], [ 1, %112 ], [ 1, %105 ], [ 1, %41 ], !dbg !3230
  %122 = phi i8 [ %36, %113 ], [ 1, %93 ], [ 1, %45 ], [ 1, %47 ], [ 1, %42 ], [ 1, %28 ], [ %106, %110 ], [ %106, %112 ], [ %106, %105 ], [ 1, %41 ], !dbg !3230
  %123 = phi i8 [ 0, %113 ], [ %37, %93 ], [ %37, %45 ], [ %37, %47 ], [ %37, %42 ], [ 0, %28 ], [ %107, %110 ], [ %107, %112 ], [ %107, %105 ], [ 1, %41 ], !dbg !3230
  call void @llvm.dbg.value(metadata i8 %123, metadata !3183, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %122, metadata !3182, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %121, metadata !3181, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %120, metadata !3180, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %119, metadata !3178, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %118, metadata !3176, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata ptr %117, metadata !3175, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i32 %116, metadata !3172, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 0, metadata !3192, metadata !DIExpression()), !dbg !3329
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
  br label %138, !dbg !3330

138:                                              ; preds = %617, %115
  %139 = phi i64 [ %32, %115 ], [ %618, %617 ]
  %140 = phi i64 [ %119, %115 ], [ %619, %617 ], !dbg !3312
  %141 = phi i64 [ %33, %115 ], [ %620, %617 ], !dbg !3235
  %142 = phi i8 [ %38, %115 ], [ %621, %617 ], !dbg !3239
  %143 = phi i8 [ %39, %115 ], [ %622, %617 ], !dbg !3240
  %144 = phi i8 [ 0, %115 ], [ %623, %617 ], !dbg !3331
  %145 = phi i64 [ 0, %115 ], [ %626, %617 ], !dbg !3332
  %146 = phi i64 [ %40, %115 ], [ %625, %617 ]
  call void @llvm.dbg.value(metadata i64 %146, metadata !3169, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %145, metadata !3192, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8 %144, metadata !3186, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %143, metadata !3185, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %142, metadata !3184, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %141, metadata !3179, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %140, metadata !3178, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %139, metadata !3171, metadata !DIExpression()), !dbg !3230
  %147 = icmp eq i64 %139, -1, !dbg !3333
  br i1 %147, label %148, label %152, !dbg !3334

148:                                              ; preds = %138
  %149 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3335
  %150 = load i8, ptr %149, align 1, !dbg !3335, !tbaa !1166
  %151 = icmp eq i8 %150, 0, !dbg !3336
  br i1 %151, label %627, label %154, !dbg !3337

152:                                              ; preds = %138
  %153 = icmp eq i64 %145, %139, !dbg !3338
  br i1 %153, label %627, label %154, !dbg !3337

154:                                              ; preds = %148, %152
  call void @llvm.dbg.value(metadata i8 0, metadata !3194, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 0, metadata !3197, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 0, metadata !3198, metadata !DIExpression()), !dbg !3339
  br i1 %129, label %155, label %170, !dbg !3340

155:                                              ; preds = %154
  %156 = add i64 %145, %121, !dbg !3342
  %157 = select i1 %147, i1 %130, i1 false, !dbg !3343
  br i1 %157, label %158, label %160, !dbg !3343

158:                                              ; preds = %155
  %159 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !3344
  call void @llvm.dbg.value(metadata i64 %159, metadata !3171, metadata !DIExpression()), !dbg !3230
  br label %160, !dbg !3345

160:                                              ; preds = %155, %158
  %161 = phi i64 [ %159, %158 ], [ %139, %155 ], !dbg !3345
  call void @llvm.dbg.value(metadata i64 %161, metadata !3171, metadata !DIExpression()), !dbg !3230
  %162 = icmp ugt i64 %156, %161, !dbg !3346
  br i1 %162, label %170, label %163, !dbg !3347

163:                                              ; preds = %160
  %164 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3348
  call void @llvm.dbg.value(metadata ptr %164, metadata !3349, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata ptr %120, metadata !3352, metadata !DIExpression()), !dbg !3354
  call void @llvm.dbg.value(metadata i64 %121, metadata !3353, metadata !DIExpression()), !dbg !3354
  %165 = call i32 @bcmp(ptr %164, ptr %120, i64 %121), !dbg !3356
  %166 = icmp ne i32 %165, 0, !dbg !3357
  %167 = select i1 %166, i1 true, i1 %132, !dbg !3358
  %168 = xor i1 %166, true, !dbg !3358
  %169 = zext i1 %168 to i8, !dbg !3358
  br i1 %167, label %170, label %688, !dbg !3358

170:                                              ; preds = %163, %160, %154
  %171 = phi i64 [ %161, %163 ], [ %161, %160 ], [ %139, %154 ]
  %172 = phi i1 [ %166, %163 ], [ true, %160 ], [ true, %154 ], !dbg !3339
  %173 = phi i8 [ %169, %163 ], [ 0, %160 ], [ 0, %154 ], !dbg !3339
  call void @llvm.dbg.value(metadata i8 %173, metadata !3194, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i64 %171, metadata !3171, metadata !DIExpression()), !dbg !3230
  %174 = getelementptr inbounds i8, ptr %2, i64 %145, !dbg !3359
  %175 = load i8, ptr %174, align 1, !dbg !3359, !tbaa !1166
  call void @llvm.dbg.value(metadata i8 %175, metadata !3199, metadata !DIExpression()), !dbg !3339
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
  ], !dbg !3360

176:                                              ; preds = %170
  br i1 %125, label %177, label %225, !dbg !3361

177:                                              ; preds = %176
  br i1 %132, label %178, label %674, !dbg !3362

178:                                              ; preds = %177
  call void @llvm.dbg.value(metadata i8 1, metadata !3197, metadata !DIExpression()), !dbg !3339
  %179 = and i8 %144, 1, !dbg !3366
  %180 = icmp eq i8 %179, 0, !dbg !3366
  %181 = select i1 %133, i1 %180, i1 false, !dbg !3366
  br i1 %181, label %182, label %198, !dbg !3366

182:                                              ; preds = %178
  %183 = icmp ult i64 %140, %146, !dbg !3368
  br i1 %183, label %184, label %186, !dbg !3372

184:                                              ; preds = %182
  %185 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3368
  store i8 39, ptr %185, align 1, !dbg !3368, !tbaa !1166
  br label %186, !dbg !3368

186:                                              ; preds = %184, %182
  %187 = add i64 %140, 1, !dbg !3372
  call void @llvm.dbg.value(metadata i64 %187, metadata !3178, metadata !DIExpression()), !dbg !3230
  %188 = icmp ult i64 %187, %146, !dbg !3373
  br i1 %188, label %189, label %191, !dbg !3376

189:                                              ; preds = %186
  %190 = getelementptr inbounds i8, ptr %0, i64 %187, !dbg !3373
  store i8 36, ptr %190, align 1, !dbg !3373, !tbaa !1166
  br label %191, !dbg !3373

191:                                              ; preds = %189, %186
  %192 = add i64 %140, 2, !dbg !3376
  call void @llvm.dbg.value(metadata i64 %192, metadata !3178, metadata !DIExpression()), !dbg !3230
  %193 = icmp ult i64 %192, %146, !dbg !3377
  br i1 %193, label %194, label %196, !dbg !3380

194:                                              ; preds = %191
  %195 = getelementptr inbounds i8, ptr %0, i64 %192, !dbg !3377
  store i8 39, ptr %195, align 1, !dbg !3377, !tbaa !1166
  br label %196, !dbg !3377

196:                                              ; preds = %194, %191
  %197 = add i64 %140, 3, !dbg !3380
  call void @llvm.dbg.value(metadata i64 %197, metadata !3178, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 1, metadata !3186, metadata !DIExpression()), !dbg !3230
  br label %198, !dbg !3381

198:                                              ; preds = %178, %196
  %199 = phi i64 [ %197, %196 ], [ %140, %178 ], !dbg !3230
  %200 = phi i8 [ 1, %196 ], [ %144, %178 ], !dbg !3230
  call void @llvm.dbg.value(metadata i8 %200, metadata !3186, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %199, metadata !3178, metadata !DIExpression()), !dbg !3230
  %201 = icmp ult i64 %199, %146, !dbg !3382
  br i1 %201, label %202, label %204, !dbg !3385

202:                                              ; preds = %198
  %203 = getelementptr inbounds i8, ptr %0, i64 %199, !dbg !3382
  store i8 92, ptr %203, align 1, !dbg !3382, !tbaa !1166
  br label %204, !dbg !3382

204:                                              ; preds = %202, %198
  %205 = add i64 %199, 1, !dbg !3385
  call void @llvm.dbg.value(metadata i64 %205, metadata !3178, metadata !DIExpression()), !dbg !3230
  br i1 %126, label %206, label %491, !dbg !3386

206:                                              ; preds = %204
  %207 = add i64 %145, 1, !dbg !3388
  %208 = icmp ult i64 %207, %171, !dbg !3389
  br i1 %208, label %209, label %480, !dbg !3390

209:                                              ; preds = %206
  %210 = getelementptr inbounds i8, ptr %2, i64 %207, !dbg !3391
  %211 = load i8, ptr %210, align 1, !dbg !3391, !tbaa !1166
  %212 = add i8 %211, -48, !dbg !3392
  %213 = icmp ult i8 %212, 10, !dbg !3392
  br i1 %213, label %214, label %480, !dbg !3392

214:                                              ; preds = %209
  %215 = icmp ult i64 %205, %146, !dbg !3393
  br i1 %215, label %216, label %218, !dbg !3397

216:                                              ; preds = %214
  %217 = getelementptr inbounds i8, ptr %0, i64 %205, !dbg !3393
  store i8 48, ptr %217, align 1, !dbg !3393, !tbaa !1166
  br label %218, !dbg !3393

218:                                              ; preds = %216, %214
  %219 = add i64 %199, 2, !dbg !3397
  call void @llvm.dbg.value(metadata i64 %219, metadata !3178, metadata !DIExpression()), !dbg !3230
  %220 = icmp ult i64 %219, %146, !dbg !3398
  br i1 %220, label %221, label %223, !dbg !3401

221:                                              ; preds = %218
  %222 = getelementptr inbounds i8, ptr %0, i64 %219, !dbg !3398
  store i8 48, ptr %222, align 1, !dbg !3398, !tbaa !1166
  br label %223, !dbg !3398

223:                                              ; preds = %221, %218
  %224 = add i64 %199, 3, !dbg !3401
  call void @llvm.dbg.value(metadata i64 %224, metadata !3178, metadata !DIExpression()), !dbg !3230
  br label %480, !dbg !3402

225:                                              ; preds = %176
  br i1 %25, label %491, label %617, !dbg !3403

226:                                              ; preds = %170
  switch i32 %116, label %480 [
    i32 2, label %227
    i32 5, label %228
  ], !dbg !3404

227:                                              ; preds = %226
  br i1 %132, label %480, label %670, !dbg !3405

228:                                              ; preds = %226
  br i1 %23, label %480, label %229, !dbg !3407

229:                                              ; preds = %228
  %230 = add i64 %145, 2, !dbg !3409
  %231 = icmp ult i64 %230, %171, !dbg !3410
  br i1 %231, label %232, label %480, !dbg !3411

232:                                              ; preds = %229
  %233 = add i64 %145, 1, !dbg !3412
  %234 = getelementptr inbounds i8, ptr %2, i64 %233, !dbg !3413
  %235 = load i8, ptr %234, align 1, !dbg !3413, !tbaa !1166
  %236 = icmp eq i8 %235, 63, !dbg !3414
  br i1 %236, label %237, label %480, !dbg !3415

237:                                              ; preds = %232
  %238 = getelementptr inbounds i8, ptr %2, i64 %230, !dbg !3416
  %239 = load i8, ptr %238, align 1, !dbg !3416, !tbaa !1166
  %240 = sext i8 %239 to i32, !dbg !3416
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
  ], !dbg !3417

241:                                              ; preds = %237, %237, %237, %237, %237, %237, %237, %237, %237
  br i1 %132, label %242, label %688, !dbg !3418

242:                                              ; preds = %241
  call void @llvm.dbg.value(metadata i8 %239, metadata !3199, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i64 %230, metadata !3192, metadata !DIExpression()), !dbg !3329
  %243 = icmp ult i64 %140, %146, !dbg !3420
  br i1 %243, label %244, label %246, !dbg !3423

244:                                              ; preds = %242
  %245 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3420
  store i8 63, ptr %245, align 1, !dbg !3420, !tbaa !1166
  br label %246, !dbg !3420

246:                                              ; preds = %244, %242
  %247 = add i64 %140, 1, !dbg !3423
  call void @llvm.dbg.value(metadata i64 %247, metadata !3178, metadata !DIExpression()), !dbg !3230
  %248 = icmp ult i64 %247, %146, !dbg !3424
  br i1 %248, label %249, label %251, !dbg !3427

249:                                              ; preds = %246
  %250 = getelementptr inbounds i8, ptr %0, i64 %247, !dbg !3424
  store i8 34, ptr %250, align 1, !dbg !3424, !tbaa !1166
  br label %251, !dbg !3424

251:                                              ; preds = %249, %246
  %252 = add i64 %140, 2, !dbg !3427
  call void @llvm.dbg.value(metadata i64 %252, metadata !3178, metadata !DIExpression()), !dbg !3230
  %253 = icmp ult i64 %252, %146, !dbg !3428
  br i1 %253, label %254, label %256, !dbg !3431

254:                                              ; preds = %251
  %255 = getelementptr inbounds i8, ptr %0, i64 %252, !dbg !3428
  store i8 34, ptr %255, align 1, !dbg !3428, !tbaa !1166
  br label %256, !dbg !3428

256:                                              ; preds = %254, %251
  %257 = add i64 %140, 3, !dbg !3431
  call void @llvm.dbg.value(metadata i64 %257, metadata !3178, metadata !DIExpression()), !dbg !3230
  %258 = icmp ult i64 %257, %146, !dbg !3432
  br i1 %258, label %259, label %261, !dbg !3435

259:                                              ; preds = %256
  %260 = getelementptr inbounds i8, ptr %0, i64 %257, !dbg !3432
  store i8 63, ptr %260, align 1, !dbg !3432, !tbaa !1166
  br label %261, !dbg !3432

261:                                              ; preds = %259, %256
  %262 = add i64 %140, 4, !dbg !3435
  call void @llvm.dbg.value(metadata i64 %262, metadata !3178, metadata !DIExpression()), !dbg !3230
  br label %480, !dbg !3436

263:                                              ; preds = %170
  br label %274, !dbg !3437

264:                                              ; preds = %170
  br label %274, !dbg !3438

265:                                              ; preds = %170
  br label %272, !dbg !3439

266:                                              ; preds = %170
  br label %272, !dbg !3440

267:                                              ; preds = %170
  br label %274, !dbg !3441

268:                                              ; preds = %170
  br i1 %133, label %269, label %270, !dbg !3442

269:                                              ; preds = %268
  br i1 %132, label %573, label %670, !dbg !3443

270:                                              ; preds = %268
  br i1 %125, label %271, label %491, !dbg !3446

271:                                              ; preds = %270
  br i1 %136, label %573, label %535, !dbg !3448

272:                                              ; preds = %170, %266, %265
  %273 = phi i8 [ 116, %266 ], [ 114, %265 ], [ 110, %170 ], !dbg !3449
  call void @llvm.dbg.label(metadata !3224), !dbg !3450
  br i1 %134, label %274, label %670, !dbg !3451

274:                                              ; preds = %170, %272, %267, %264, %263
  %275 = phi i8 [ %273, %272 ], [ 118, %267 ], [ 102, %264 ], [ 98, %263 ], [ 97, %170 ], !dbg !3449
  call void @llvm.dbg.label(metadata !3226), !dbg !3453
  br i1 %125, label %535, label %491, !dbg !3454

276:                                              ; preds = %170, %170
  switch i64 %171, label %480 [
    i64 -1, label %277
    i64 1, label %280
  ], !dbg !3455

277:                                              ; preds = %276
  %278 = load i8, ptr %21, align 1, !dbg !3456, !tbaa !1166
  %279 = icmp eq i8 %278, 0, !dbg !3458
  br i1 %279, label %280, label %480, !dbg !3459

280:                                              ; preds = %276, %277, %170, %170
  %281 = icmp eq i64 %145, 0, !dbg !3460
  br i1 %281, label %282, label %480, !dbg !3462

282:                                              ; preds = %280, %170
  call void @llvm.dbg.value(metadata i8 1, metadata !3198, metadata !DIExpression()), !dbg !3339
  br label %283, !dbg !3463

283:                                              ; preds = %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %282
  %284 = phi i8 [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 1, %282 ], !dbg !3339
  call void @llvm.dbg.value(metadata i8 %284, metadata !3198, metadata !DIExpression()), !dbg !3339
  br i1 %134, label %480, label %670, !dbg !3464

285:                                              ; preds = %170
  call void @llvm.dbg.value(metadata i8 1, metadata !3184, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 1, metadata !3198, metadata !DIExpression()), !dbg !3339
  br i1 %133, label %286, label %480, !dbg !3466

286:                                              ; preds = %285
  br i1 %132, label %287, label %670, !dbg !3467

287:                                              ; preds = %286
  %288 = icmp eq i64 %146, 0, !dbg !3470
  %289 = icmp ne i64 %141, 0
  %290 = select i1 %288, i1 true, i1 %289, !dbg !3472
  %291 = select i1 %290, i64 %141, i64 %146, !dbg !3472
  %292 = select i1 %290, i64 %146, i64 0, !dbg !3472
  call void @llvm.dbg.value(metadata i64 %292, metadata !3169, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %291, metadata !3179, metadata !DIExpression()), !dbg !3230
  %293 = icmp ult i64 %140, %292, !dbg !3473
  br i1 %293, label %294, label %296, !dbg !3476

294:                                              ; preds = %287
  %295 = getelementptr inbounds i8, ptr %0, i64 %140, !dbg !3473
  store i8 39, ptr %295, align 1, !dbg !3473, !tbaa !1166
  br label %296, !dbg !3473

296:                                              ; preds = %294, %287
  %297 = add i64 %140, 1, !dbg !3476
  call void @llvm.dbg.value(metadata i64 %297, metadata !3178, metadata !DIExpression()), !dbg !3230
  %298 = icmp ult i64 %297, %292, !dbg !3477
  br i1 %298, label %299, label %301, !dbg !3480

299:                                              ; preds = %296
  %300 = getelementptr inbounds i8, ptr %0, i64 %297, !dbg !3477
  store i8 92, ptr %300, align 1, !dbg !3477, !tbaa !1166
  br label %301, !dbg !3477

301:                                              ; preds = %299, %296
  %302 = add i64 %140, 2, !dbg !3480
  call void @llvm.dbg.value(metadata i64 %302, metadata !3178, metadata !DIExpression()), !dbg !3230
  %303 = icmp ult i64 %302, %292, !dbg !3481
  br i1 %303, label %304, label %306, !dbg !3484

304:                                              ; preds = %301
  %305 = getelementptr inbounds i8, ptr %0, i64 %302, !dbg !3481
  store i8 39, ptr %305, align 1, !dbg !3481, !tbaa !1166
  br label %306, !dbg !3481

306:                                              ; preds = %304, %301
  %307 = add i64 %140, 3, !dbg !3484
  call void @llvm.dbg.value(metadata i64 %307, metadata !3178, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 0, metadata !3186, metadata !DIExpression()), !dbg !3230
  br label %480, !dbg !3485

308:                                              ; preds = %170
  br i1 %17, label %309, label %319, !dbg !3486

309:                                              ; preds = %308
  call void @llvm.dbg.value(metadata i64 1, metadata !3200, metadata !DIExpression()), !dbg !3487
  %310 = tail call ptr @__ctype_b_loc() #40, !dbg !3488
  %311 = load ptr, ptr %310, align 8, !dbg !3488, !tbaa !1086
  %312 = zext i8 %175 to i64
  %313 = getelementptr inbounds i16, ptr %311, i64 %312, !dbg !3488
  %314 = load i16, ptr %313, align 2, !dbg !3488, !tbaa !1198
  %315 = lshr i16 %314, 14, !dbg !3490
  %316 = trunc i16 %315 to i8, !dbg !3490
  %317 = and i8 %316, 1, !dbg !3490
  call void @llvm.dbg.value(metadata i8 %317, metadata !3203, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i64 %171, metadata !3171, metadata !DIExpression()), !dbg !3230
  %318 = icmp eq i8 %317, 0, !dbg !3491
  call void @llvm.dbg.value(metadata i1 %318, metadata !3198, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3339
  br label %368, !dbg !3492

319:                                              ; preds = %308
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !3493
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3204, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.value(metadata ptr %14, metadata !3261, metadata !DIExpression()), !dbg !3495
  call void @llvm.dbg.value(metadata ptr %14, metadata !3269, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i32 0, metadata !3272, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i64 8, metadata !3273, metadata !DIExpression()), !dbg !3497
  store i64 0, ptr %14, align 8, !dbg !3499
  call void @llvm.dbg.value(metadata i64 0, metadata !3200, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i8 1, metadata !3203, metadata !DIExpression()), !dbg !3487
  %320 = icmp eq i64 %171, -1, !dbg !3500
  br i1 %320, label %321, label %323, !dbg !3502

321:                                              ; preds = %319
  %322 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !3503
  call void @llvm.dbg.value(metadata i64 %322, metadata !3171, metadata !DIExpression()), !dbg !3230
  br label %323, !dbg !3504

323:                                              ; preds = %319, %321
  %324 = phi i64 [ %322, %321 ], [ %171, %319 ], !dbg !3339
  call void @llvm.dbg.value(metadata i64 %324, metadata !3171, metadata !DIExpression()), !dbg !3230
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !3505
  %325 = sub i64 %324, %145, !dbg !3506
  call void @llvm.dbg.value(metadata ptr %15, metadata !3207, metadata !DIExpression(DW_OP_deref)), !dbg !3507
  %326 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %174, i64 noundef %325, ptr noundef nonnull %14) #37, !dbg !3508
  call void @llvm.dbg.value(metadata i64 %326, metadata !3211, metadata !DIExpression()), !dbg !3507
  switch i64 %326, label %341 [
    i64 0, label %360
    i64 -1, label %330
    i64 -2, label %327
  ], !dbg !3509

327:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i64 0, metadata !3200, metadata !DIExpression()), !dbg !3487
  %328 = icmp ugt i64 %324, %145, !dbg !3510
  br i1 %328, label %331, label %329, !dbg !3512

329:                                              ; preds = %327
  call void @llvm.dbg.value(metadata i8 0, metadata !3203, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i64 0, metadata !3200, metadata !DIExpression()), !dbg !3487
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !3513
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !3514
  call void @llvm.dbg.value(metadata i64 %324, metadata !3171, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i1 true, metadata !3198, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3339
  br label %368, !dbg !3492

330:                                              ; preds = %323
  call void @llvm.dbg.value(metadata i8 0, metadata !3203, metadata !DIExpression()), !dbg !3487
  br label %360, !dbg !3515

331:                                              ; preds = %327, %337
  %332 = phi i64 [ %339, %337 ], [ %145, %327 ]
  %333 = phi i64 [ %338, %337 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i64 %333, metadata !3200, metadata !DIExpression()), !dbg !3487
  %334 = getelementptr inbounds i8, ptr %2, i64 %332, !dbg !3517
  %335 = load i8, ptr %334, align 1, !dbg !3517, !tbaa !1166
  %336 = icmp eq i8 %335, 0, !dbg !3512
  br i1 %336, label %363, label %337, !dbg !3518

337:                                              ; preds = %331
  %338 = add i64 %333, 1, !dbg !3519
  call void @llvm.dbg.value(metadata i64 %338, metadata !3200, metadata !DIExpression()), !dbg !3487
  %339 = add i64 %338, %145, !dbg !3520
  %340 = icmp eq i64 %338, %325, !dbg !3510
  br i1 %340, label %363, label %331, !dbg !3512, !llvm.loop !3521

341:                                              ; preds = %323
  %342 = icmp ugt i64 %326, 1
  %343 = and i1 %135, %342, !dbg !3522
  %344 = and i1 %343, %133, !dbg !3522
  call void @llvm.dbg.value(metadata i64 1, metadata !3212, metadata !DIExpression()), !dbg !3523
  br i1 %344, label %345, label %354, !dbg !3522

345:                                              ; preds = %341, %351
  %346 = phi i64 [ %352, %351 ], [ 1, %341 ]
  call void @llvm.dbg.value(metadata i64 %346, metadata !3212, metadata !DIExpression()), !dbg !3523
  %347 = add i64 %346, %145, !dbg !3524
  %348 = getelementptr inbounds i8, ptr %2, i64 %347, !dbg !3526
  %349 = load i8, ptr %348, align 1, !dbg !3526, !tbaa !1166
  %350 = sext i8 %349 to i32, !dbg !3526
  switch i32 %350, label %351 [
    i32 91, label %359
    i32 92, label %359
    i32 94, label %359
    i32 96, label %359
    i32 124, label %359
  ], !dbg !3527

351:                                              ; preds = %345
  %352 = add nuw i64 %346, 1, !dbg !3528
  call void @llvm.dbg.value(metadata i64 %352, metadata !3212, metadata !DIExpression()), !dbg !3523
  %353 = icmp eq i64 %352, %326, !dbg !3529
  br i1 %353, label %354, label %345, !dbg !3530, !llvm.loop !3531

354:                                              ; preds = %351, %341
  %355 = load i32, ptr %15, align 4, !dbg !3533, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %355, metadata !3207, metadata !DIExpression()), !dbg !3507
  call void @llvm.dbg.value(metadata i32 %355, metadata !3535, metadata !DIExpression()), !dbg !3538
  %356 = call i32 @iswprint(i32 noundef %355) #37, !dbg !3540
  %357 = icmp ne i32 %356, 0, !dbg !3541
  %358 = zext i1 %357 to i8, !dbg !3542
  call void @llvm.dbg.value(metadata i8 %358, metadata !3203, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i64 %326, metadata !3200, metadata !DIExpression()), !dbg !3487
  br label %363, !dbg !3543

359:                                              ; preds = %345, %345, %345, %345, %345
  call void @llvm.dbg.value(metadata i8 1, metadata !3203, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i64 0, metadata !3200, metadata !DIExpression()), !dbg !3487
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !3513
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !3514
  br label %670

360:                                              ; preds = %323, %330
  %361 = phi i1 [ false, %323 ], [ true, %330 ]
  %362 = phi i8 [ 1, %323 ], [ 0, %330 ]
  call void @llvm.dbg.value(metadata i8 %362, metadata !3203, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i64 0, metadata !3200, metadata !DIExpression()), !dbg !3487
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !3513
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !3514
  call void @llvm.dbg.value(metadata i64 %324, metadata !3171, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i1 %361, metadata !3198, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3339
  br label %368, !dbg !3492

363:                                              ; preds = %331, %337, %354
  %364 = phi i64 [ %326, %354 ], [ %333, %331 ], [ %325, %337 ]
  %365 = phi i8 [ %358, %354 ], [ 0, %337 ], [ 0, %331 ]
  call void @llvm.dbg.value(metadata i8 %365, metadata !3203, metadata !DIExpression()), !dbg !3487
  call void @llvm.dbg.value(metadata i64 %364, metadata !3200, metadata !DIExpression()), !dbg !3487
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !3513
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !3514
  call void @llvm.dbg.value(metadata i64 %324, metadata !3171, metadata !DIExpression()), !dbg !3230
  %366 = icmp eq i8 %365, 0, !dbg !3491
  call void @llvm.dbg.value(metadata i1 %366, metadata !3198, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3339
  %367 = icmp ugt i64 %364, 1, !dbg !3544
  br i1 %367, label %374, label %368, !dbg !3492

368:                                              ; preds = %329, %360, %309, %363
  %369 = phi i1 [ %318, %309 ], [ %366, %363 ], [ %361, %360 ], [ true, %329 ]
  %370 = phi i8 [ %317, %309 ], [ %365, %363 ], [ %362, %360 ], [ 0, %329 ]
  %371 = phi i64 [ 1, %309 ], [ %364, %363 ], [ 0, %360 ], [ 0, %329 ]
  %372 = phi i64 [ %171, %309 ], [ %324, %363 ], [ %324, %360 ], [ %324, %329 ]
  %373 = select i1 %125, i1 %369, i1 false, !dbg !3545
  br i1 %373, label %374, label %480, !dbg !3545

374:                                              ; preds = %368, %363
  %375 = phi i1 [ true, %368 ], [ %366, %363 ]
  %376 = phi i8 [ %370, %368 ], [ %365, %363 ]
  %377 = phi i64 [ %371, %368 ], [ %364, %363 ]
  %378 = phi i64 [ %372, %368 ], [ %324, %363 ]
  %379 = add i64 %377, %145, !dbg !3546
  call void @llvm.dbg.value(metadata i64 %379, metadata !3220, metadata !DIExpression()), !dbg !3547
  %380 = select i1 %125, i1 %375, i1 false
  br label %381, !dbg !3548

381:                                              ; preds = %474, %374
  %382 = phi i64 [ %140, %374 ], [ %475, %474 ], !dbg !3230
  %383 = phi i8 [ %144, %374 ], [ %470, %474 ], !dbg !3331
  %384 = phi i64 [ %145, %374 ], [ %449, %474 ], !dbg !3329
  %385 = phi i8 [ %173, %374 ], [ %446, %474 ], !dbg !3339
  %386 = phi i8 [ 0, %374 ], [ %447, %474 ], !dbg !3549
  %387 = phi i8 [ %175, %374 ], [ %477, %474 ], !dbg !3339
  call void @llvm.dbg.value(metadata i8 %387, metadata !3199, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 %386, metadata !3197, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 %385, metadata !3194, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i64 %384, metadata !3192, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8 %383, metadata !3186, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %382, metadata !3178, metadata !DIExpression()), !dbg !3230
  br i1 %380, label %388, label %434, !dbg !3550

388:                                              ; preds = %381
  br i1 %132, label %389, label %679, !dbg !3555

389:                                              ; preds = %388
  call void @llvm.dbg.value(metadata i8 1, metadata !3197, metadata !DIExpression()), !dbg !3339
  %390 = and i8 %383, 1, !dbg !3558
  %391 = icmp eq i8 %390, 0, !dbg !3558
  %392 = select i1 %133, i1 %391, i1 false, !dbg !3558
  br i1 %392, label %393, label %409, !dbg !3558

393:                                              ; preds = %389
  %394 = icmp ult i64 %382, %146, !dbg !3560
  br i1 %394, label %395, label %397, !dbg !3564

395:                                              ; preds = %393
  %396 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3560
  store i8 39, ptr %396, align 1, !dbg !3560, !tbaa !1166
  br label %397, !dbg !3560

397:                                              ; preds = %395, %393
  %398 = add i64 %382, 1, !dbg !3564
  call void @llvm.dbg.value(metadata i64 %398, metadata !3178, metadata !DIExpression()), !dbg !3230
  %399 = icmp ult i64 %398, %146, !dbg !3565
  br i1 %399, label %400, label %402, !dbg !3568

400:                                              ; preds = %397
  %401 = getelementptr inbounds i8, ptr %0, i64 %398, !dbg !3565
  store i8 36, ptr %401, align 1, !dbg !3565, !tbaa !1166
  br label %402, !dbg !3565

402:                                              ; preds = %400, %397
  %403 = add i64 %382, 2, !dbg !3568
  call void @llvm.dbg.value(metadata i64 %403, metadata !3178, metadata !DIExpression()), !dbg !3230
  %404 = icmp ult i64 %403, %146, !dbg !3569
  br i1 %404, label %405, label %407, !dbg !3572

405:                                              ; preds = %402
  %406 = getelementptr inbounds i8, ptr %0, i64 %403, !dbg !3569
  store i8 39, ptr %406, align 1, !dbg !3569, !tbaa !1166
  br label %407, !dbg !3569

407:                                              ; preds = %405, %402
  %408 = add i64 %382, 3, !dbg !3572
  call void @llvm.dbg.value(metadata i64 %408, metadata !3178, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 1, metadata !3186, metadata !DIExpression()), !dbg !3230
  br label %409, !dbg !3573

409:                                              ; preds = %389, %407
  %410 = phi i64 [ %408, %407 ], [ %382, %389 ], !dbg !3230
  %411 = phi i8 [ 1, %407 ], [ %383, %389 ], !dbg !3230
  call void @llvm.dbg.value(metadata i8 %411, metadata !3186, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %410, metadata !3178, metadata !DIExpression()), !dbg !3230
  %412 = icmp ult i64 %410, %146, !dbg !3574
  br i1 %412, label %413, label %415, !dbg !3577

413:                                              ; preds = %409
  %414 = getelementptr inbounds i8, ptr %0, i64 %410, !dbg !3574
  store i8 92, ptr %414, align 1, !dbg !3574, !tbaa !1166
  br label %415, !dbg !3574

415:                                              ; preds = %413, %409
  %416 = add i64 %410, 1, !dbg !3577
  call void @llvm.dbg.value(metadata i64 %416, metadata !3178, metadata !DIExpression()), !dbg !3230
  %417 = icmp ult i64 %416, %146, !dbg !3578
  br i1 %417, label %418, label %422, !dbg !3581

418:                                              ; preds = %415
  %419 = lshr i8 %387, 6
  %420 = or i8 %419, 48, !dbg !3578
  %421 = getelementptr inbounds i8, ptr %0, i64 %416, !dbg !3578
  store i8 %420, ptr %421, align 1, !dbg !3578, !tbaa !1166
  br label %422, !dbg !3578

422:                                              ; preds = %418, %415
  %423 = add i64 %410, 2, !dbg !3581
  call void @llvm.dbg.value(metadata i64 %423, metadata !3178, metadata !DIExpression()), !dbg !3230
  %424 = icmp ult i64 %423, %146, !dbg !3582
  br i1 %424, label %425, label %430, !dbg !3585

425:                                              ; preds = %422
  %426 = lshr i8 %387, 3
  %427 = and i8 %426, 7, !dbg !3582
  %428 = or i8 %427, 48, !dbg !3582
  %429 = getelementptr inbounds i8, ptr %0, i64 %423, !dbg !3582
  store i8 %428, ptr %429, align 1, !dbg !3582, !tbaa !1166
  br label %430, !dbg !3582

430:                                              ; preds = %425, %422
  %431 = add i64 %410, 3, !dbg !3585
  call void @llvm.dbg.value(metadata i64 %431, metadata !3178, metadata !DIExpression()), !dbg !3230
  %432 = and i8 %387, 7, !dbg !3586
  %433 = or i8 %432, 48, !dbg !3587
  call void @llvm.dbg.value(metadata i8 %433, metadata !3199, metadata !DIExpression()), !dbg !3339
  br label %443, !dbg !3588

434:                                              ; preds = %381
  %435 = and i8 %385, 1, !dbg !3589
  %436 = icmp eq i8 %435, 0, !dbg !3589
  br i1 %436, label %443, label %437, !dbg !3591

437:                                              ; preds = %434
  %438 = icmp ult i64 %382, %146, !dbg !3592
  br i1 %438, label %439, label %441, !dbg !3596

439:                                              ; preds = %437
  %440 = getelementptr inbounds i8, ptr %0, i64 %382, !dbg !3592
  store i8 92, ptr %440, align 1, !dbg !3592, !tbaa !1166
  br label %441, !dbg !3592

441:                                              ; preds = %439, %437
  %442 = add i64 %382, 1, !dbg !3596
  call void @llvm.dbg.value(metadata i64 %442, metadata !3178, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 0, metadata !3194, metadata !DIExpression()), !dbg !3339
  br label %443, !dbg !3597

443:                                              ; preds = %434, %441, %430
  %444 = phi i64 [ %442, %441 ], [ %382, %434 ], [ %431, %430 ], !dbg !3230
  %445 = phi i8 [ %383, %441 ], [ %383, %434 ], [ %411, %430 ], !dbg !3331
  %446 = phi i8 [ 0, %441 ], [ %385, %434 ], [ %385, %430 ], !dbg !3339
  %447 = phi i8 [ %386, %441 ], [ %386, %434 ], [ 1, %430 ], !dbg !3339
  %448 = phi i8 [ %387, %441 ], [ %387, %434 ], [ %433, %430 ], !dbg !3339
  call void @llvm.dbg.value(metadata i8 %448, metadata !3199, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 %447, metadata !3197, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 %446, metadata !3194, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 %445, metadata !3186, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %444, metadata !3178, metadata !DIExpression()), !dbg !3230
  %449 = add i64 %384, 1, !dbg !3598
  %450 = icmp ugt i64 %379, %449, !dbg !3600
  br i1 %450, label %451, label %478, !dbg !3601

451:                                              ; preds = %443
  %452 = and i8 %445, 1, !dbg !3602
  %453 = icmp ne i8 %452, 0, !dbg !3602
  %454 = and i8 %447, 1, !dbg !3602
  %455 = icmp eq i8 %454, 0, !dbg !3602
  %456 = select i1 %453, i1 %455, i1 false, !dbg !3602
  br i1 %456, label %457, label %468, !dbg !3602

457:                                              ; preds = %451
  %458 = icmp ult i64 %444, %146, !dbg !3605
  br i1 %458, label %459, label %461, !dbg !3609

459:                                              ; preds = %457
  %460 = getelementptr inbounds i8, ptr %0, i64 %444, !dbg !3605
  store i8 39, ptr %460, align 1, !dbg !3605, !tbaa !1166
  br label %461, !dbg !3605

461:                                              ; preds = %459, %457
  %462 = add i64 %444, 1, !dbg !3609
  call void @llvm.dbg.value(metadata i64 %462, metadata !3178, metadata !DIExpression()), !dbg !3230
  %463 = icmp ult i64 %462, %146, !dbg !3610
  br i1 %463, label %464, label %466, !dbg !3613

464:                                              ; preds = %461
  %465 = getelementptr inbounds i8, ptr %0, i64 %462, !dbg !3610
  store i8 39, ptr %465, align 1, !dbg !3610, !tbaa !1166
  br label %466, !dbg !3610

466:                                              ; preds = %464, %461
  %467 = add i64 %444, 2, !dbg !3613
  call void @llvm.dbg.value(metadata i64 %467, metadata !3178, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 0, metadata !3186, metadata !DIExpression()), !dbg !3230
  br label %468, !dbg !3614

468:                                              ; preds = %451, %466
  %469 = phi i64 [ %467, %466 ], [ %444, %451 ], !dbg !3615
  %470 = phi i8 [ 0, %466 ], [ %445, %451 ], !dbg !3230
  call void @llvm.dbg.value(metadata i8 %470, metadata !3186, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %469, metadata !3178, metadata !DIExpression()), !dbg !3230
  %471 = icmp ult i64 %469, %146, !dbg !3616
  br i1 %471, label %472, label %474, !dbg !3619

472:                                              ; preds = %468
  %473 = getelementptr inbounds i8, ptr %0, i64 %469, !dbg !3616
  store i8 %448, ptr %473, align 1, !dbg !3616, !tbaa !1166
  br label %474, !dbg !3616

474:                                              ; preds = %472, %468
  %475 = add i64 %469, 1, !dbg !3619
  call void @llvm.dbg.value(metadata i64 %475, metadata !3178, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %449, metadata !3192, metadata !DIExpression()), !dbg !3329
  %476 = getelementptr inbounds i8, ptr %2, i64 %449, !dbg !3620
  %477 = load i8, ptr %476, align 1, !dbg !3620, !tbaa !1166
  call void @llvm.dbg.value(metadata i8 %477, metadata !3199, metadata !DIExpression()), !dbg !3339
  br label %381, !dbg !3621, !llvm.loop !3622

478:                                              ; preds = %443
  %479 = and i8 %376, 1, !dbg !3339
  call void @llvm.dbg.value(metadata i8 %448, metadata !3199, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 %479, metadata !3198, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 %447, metadata !3197, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 %446, metadata !3194, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i64 %384, metadata !3192, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8 %445, metadata !3186, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %444, metadata !3178, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %378, metadata !3171, metadata !DIExpression()), !dbg !3230
  br label %573

480:                                              ; preds = %368, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %170, %276, %206, %209, %223, %285, %306, %283, %280, %277, %226, %227, %261, %237, %232, %229, %228
  %481 = phi i64 [ %171, %306 ], [ %171, %285 ], [ %171, %283 ], [ %171, %280 ], [ -1, %277 ], [ %171, %226 ], [ %171, %237 ], [ %171, %261 ], [ %171, %232 ], [ %171, %229 ], [ %171, %228 ], [ %171, %227 ], [ %171, %223 ], [ %171, %209 ], [ %171, %206 ], [ %171, %276 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %171, %170 ], [ %372, %368 ], !dbg !3625
  %482 = phi i64 [ %307, %306 ], [ %140, %285 ], [ %140, %283 ], [ %140, %280 ], [ %140, %277 ], [ %140, %226 ], [ %140, %237 ], [ %262, %261 ], [ %140, %232 ], [ %140, %229 ], [ %140, %228 ], [ %140, %227 ], [ %224, %223 ], [ %205, %209 ], [ %205, %206 ], [ %140, %276 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %170 ], [ %140, %368 ], !dbg !3230
  %483 = phi i64 [ %291, %306 ], [ %141, %285 ], [ %141, %283 ], [ %141, %280 ], [ %141, %277 ], [ %141, %226 ], [ %141, %237 ], [ %141, %261 ], [ %141, %232 ], [ %141, %229 ], [ %141, %228 ], [ %141, %227 ], [ %141, %223 ], [ %141, %209 ], [ %141, %206 ], [ %141, %276 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %170 ], [ %141, %368 ], !dbg !3235
  %484 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %142, %283 ], [ %142, %280 ], [ %142, %277 ], [ %142, %226 ], [ %142, %237 ], [ %142, %261 ], [ %142, %232 ], [ %142, %229 ], [ %142, %228 ], [ %142, %227 ], [ %142, %223 ], [ %142, %209 ], [ %142, %206 ], [ %142, %276 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %170 ], [ %142, %368 ], !dbg !3230
  %485 = phi i8 [ 0, %306 ], [ %144, %285 ], [ %144, %283 ], [ %144, %280 ], [ %144, %277 ], [ %144, %226 ], [ %144, %237 ], [ %144, %261 ], [ %144, %232 ], [ %144, %229 ], [ %144, %228 ], [ %144, %227 ], [ %200, %223 ], [ %200, %209 ], [ %200, %206 ], [ %144, %276 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %170 ], [ %144, %368 ], !dbg !3230
  %486 = phi i64 [ %145, %306 ], [ %145, %285 ], [ %145, %283 ], [ %145, %280 ], [ %145, %277 ], [ %145, %226 ], [ %145, %237 ], [ %230, %261 ], [ %145, %232 ], [ %145, %229 ], [ %145, %228 ], [ %145, %227 ], [ %145, %223 ], [ %145, %209 ], [ %145, %206 ], [ %145, %276 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %170 ], [ %145, %368 ], !dbg !3329
  %487 = phi i8 [ 0, %306 ], [ 0, %285 ], [ 0, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 1, %223 ], [ 1, %209 ], [ 1, %206 ], [ 0, %276 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %170 ], [ 0, %368 ], !dbg !3339
  %488 = phi i8 [ 1, %306 ], [ 1, %285 ], [ %284, %283 ], [ 0, %280 ], [ 0, %277 ], [ 0, %226 ], [ 0, %237 ], [ 0, %261 ], [ 0, %232 ], [ 0, %229 ], [ 0, %228 ], [ 0, %227 ], [ 0, %223 ], [ 0, %209 ], [ 0, %206 ], [ 0, %276 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ 1, %170 ], [ %370, %368 ], !dbg !3339
  %489 = phi i8 [ 39, %306 ], [ 39, %285 ], [ %175, %283 ], [ %175, %280 ], [ %175, %277 ], [ 63, %226 ], [ 63, %237 ], [ %239, %261 ], [ 63, %232 ], [ 63, %229 ], [ 63, %228 ], [ 63, %227 ], [ 48, %223 ], [ 48, %209 ], [ 48, %206 ], [ %175, %276 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %170 ], [ %175, %368 ], !dbg !3339
  %490 = phi i64 [ %292, %306 ], [ %146, %285 ], [ %146, %283 ], [ %146, %280 ], [ %146, %277 ], [ %146, %226 ], [ %146, %237 ], [ %146, %261 ], [ %146, %232 ], [ %146, %229 ], [ %146, %228 ], [ %146, %227 ], [ %146, %223 ], [ %146, %209 ], [ %146, %206 ], [ %146, %276 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %170 ], [ %146, %368 ]
  call void @llvm.dbg.value(metadata i64 %490, metadata !3169, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %489, metadata !3199, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 %488, metadata !3198, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 %487, metadata !3197, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 %173, metadata !3194, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i64 %486, metadata !3192, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8 %485, metadata !3186, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %484, metadata !3184, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %483, metadata !3179, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %482, metadata !3178, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %481, metadata !3171, metadata !DIExpression()), !dbg !3230
  br i1 %127, label %502, label %491, !dbg !3626

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
  br i1 %137, label %503, label %524, !dbg !3628

502:                                              ; preds = %480
  br i1 %27, label %524, label %503, !dbg !3629

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
  %514 = lshr i8 %505, 5, !dbg !3630
  %515 = zext i8 %514 to i64, !dbg !3630
  %516 = getelementptr inbounds i32, ptr %6, i64 %515, !dbg !3631
  %517 = load i32, ptr %516, align 4, !dbg !3631, !tbaa !1157
  %518 = and i8 %505, 31, !dbg !3632
  %519 = zext i8 %518 to i32, !dbg !3632
  %520 = shl nuw i32 1, %519, !dbg !3633
  %521 = and i32 %517, %520, !dbg !3633
  %522 = icmp eq i32 %521, 0, !dbg !3633
  %523 = and i1 %172, %522, !dbg !3634
  br i1 %523, label %573, label %535, !dbg !3634

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
  br i1 %172, label %573, label %535, !dbg !3635

535:                                              ; preds = %271, %274, %524, %503
  %536 = phi i64 [ %513, %503 ], [ %534, %524 ], [ %171, %274 ], [ %171, %271 ], !dbg !3625
  %537 = phi i64 [ %512, %503 ], [ %533, %524 ], [ %140, %274 ], [ %140, %271 ], !dbg !3230
  %538 = phi i64 [ %511, %503 ], [ %532, %524 ], [ %141, %274 ], [ %141, %271 ], !dbg !3235
  %539 = phi i8 [ %510, %503 ], [ %531, %524 ], [ %142, %274 ], [ %142, %271 ], !dbg !3239
  %540 = phi i8 [ %509, %503 ], [ %530, %524 ], [ %144, %274 ], [ %144, %271 ], !dbg !3331
  %541 = phi i64 [ %508, %503 ], [ %529, %524 ], [ %145, %274 ], [ %145, %271 ], !dbg !3636
  %542 = phi i8 [ %506, %503 ], [ %527, %524 ], [ 0, %274 ], [ 0, %271 ], !dbg !3339
  %543 = phi i8 [ %505, %503 ], [ %526, %524 ], [ %275, %274 ], [ 92, %271 ], !dbg !3339
  %544 = phi i64 [ %504, %503 ], [ %525, %524 ], [ %146, %274 ], [ %146, %271 ]
  call void @llvm.dbg.value(metadata i64 %544, metadata !3169, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %543, metadata !3199, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 %542, metadata !3198, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i64 %541, metadata !3192, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8 %540, metadata !3186, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %539, metadata !3184, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %538, metadata !3179, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %537, metadata !3178, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %536, metadata !3171, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.label(metadata !3227), !dbg !3637
  br i1 %132, label %545, label %674, !dbg !3638

545:                                              ; preds = %535
  call void @llvm.dbg.value(metadata i8 1, metadata !3197, metadata !DIExpression()), !dbg !3339
  %546 = and i8 %540, 1, !dbg !3640
  %547 = icmp eq i8 %546, 0, !dbg !3640
  %548 = select i1 %133, i1 %547, i1 false, !dbg !3640
  br i1 %548, label %549, label %565, !dbg !3640

549:                                              ; preds = %545
  %550 = icmp ult i64 %537, %544, !dbg !3642
  br i1 %550, label %551, label %553, !dbg !3646

551:                                              ; preds = %549
  %552 = getelementptr inbounds i8, ptr %0, i64 %537, !dbg !3642
  store i8 39, ptr %552, align 1, !dbg !3642, !tbaa !1166
  br label %553, !dbg !3642

553:                                              ; preds = %551, %549
  %554 = add i64 %537, 1, !dbg !3646
  call void @llvm.dbg.value(metadata i64 %554, metadata !3178, metadata !DIExpression()), !dbg !3230
  %555 = icmp ult i64 %554, %544, !dbg !3647
  br i1 %555, label %556, label %558, !dbg !3650

556:                                              ; preds = %553
  %557 = getelementptr inbounds i8, ptr %0, i64 %554, !dbg !3647
  store i8 36, ptr %557, align 1, !dbg !3647, !tbaa !1166
  br label %558, !dbg !3647

558:                                              ; preds = %556, %553
  %559 = add i64 %537, 2, !dbg !3650
  call void @llvm.dbg.value(metadata i64 %559, metadata !3178, metadata !DIExpression()), !dbg !3230
  %560 = icmp ult i64 %559, %544, !dbg !3651
  br i1 %560, label %561, label %563, !dbg !3654

561:                                              ; preds = %558
  %562 = getelementptr inbounds i8, ptr %0, i64 %559, !dbg !3651
  store i8 39, ptr %562, align 1, !dbg !3651, !tbaa !1166
  br label %563, !dbg !3651

563:                                              ; preds = %561, %558
  %564 = add i64 %537, 3, !dbg !3654
  call void @llvm.dbg.value(metadata i64 %564, metadata !3178, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 1, metadata !3186, metadata !DIExpression()), !dbg !3230
  br label %565, !dbg !3655

565:                                              ; preds = %545, %563
  %566 = phi i64 [ %564, %563 ], [ %537, %545 ], !dbg !3339
  %567 = phi i8 [ 1, %563 ], [ %540, %545 ], !dbg !3230
  call void @llvm.dbg.value(metadata i8 %567, metadata !3186, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %566, metadata !3178, metadata !DIExpression()), !dbg !3230
  %568 = icmp ult i64 %566, %544, !dbg !3656
  br i1 %568, label %569, label %571, !dbg !3659

569:                                              ; preds = %565
  %570 = getelementptr inbounds i8, ptr %0, i64 %566, !dbg !3656
  store i8 92, ptr %570, align 1, !dbg !3656, !tbaa !1166
  br label %571, !dbg !3656

571:                                              ; preds = %565, %569
  %572 = add i64 %566, 1, !dbg !3659
  call void @llvm.dbg.value(metadata i64 %544, metadata !3169, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %543, metadata !3199, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 %542, metadata !3198, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 1, metadata !3197, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i64 %541, metadata !3192, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8 %567, metadata !3186, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %539, metadata !3184, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %538, metadata !3179, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %572, metadata !3178, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %536, metadata !3171, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.label(metadata !3228), !dbg !3660
  br label %600, !dbg !3661

573:                                              ; preds = %478, %503, %269, %271, %524
  %574 = phi i64 [ %378, %478 ], [ %534, %524 ], [ %171, %269 ], [ %171, %271 ], [ %513, %503 ], !dbg !3625
  %575 = phi i64 [ %444, %478 ], [ %533, %524 ], [ %140, %269 ], [ %140, %271 ], [ %512, %503 ], !dbg !3230
  %576 = phi i64 [ %141, %478 ], [ %532, %524 ], [ %141, %269 ], [ %141, %271 ], [ %511, %503 ], !dbg !3235
  %577 = phi i8 [ %142, %478 ], [ %531, %524 ], [ %142, %269 ], [ %142, %271 ], [ %510, %503 ], !dbg !3239
  %578 = phi i8 [ %445, %478 ], [ %530, %524 ], [ %144, %269 ], [ %144, %271 ], [ %509, %503 ], !dbg !3331
  %579 = phi i64 [ %384, %478 ], [ %529, %524 ], [ %145, %269 ], [ %145, %271 ], [ %508, %503 ], !dbg !3636
  %580 = phi i8 [ %447, %478 ], [ %528, %524 ], [ 0, %269 ], [ 0, %271 ], [ %507, %503 ], !dbg !3339
  %581 = phi i8 [ %479, %478 ], [ %527, %524 ], [ 0, %269 ], [ 0, %271 ], [ %506, %503 ], !dbg !3339
  %582 = phi i8 [ %448, %478 ], [ %526, %524 ], [ 92, %269 ], [ 92, %271 ], [ %505, %503 ], !dbg !3664
  %583 = phi i64 [ %146, %478 ], [ %525, %524 ], [ %146, %269 ], [ %146, %271 ], [ %504, %503 ]
  call void @llvm.dbg.value(metadata i64 %583, metadata !3169, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %582, metadata !3199, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 %581, metadata !3198, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i8 %580, metadata !3197, metadata !DIExpression()), !dbg !3339
  call void @llvm.dbg.value(metadata i64 %579, metadata !3192, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8 %578, metadata !3186, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %577, metadata !3184, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %576, metadata !3179, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %575, metadata !3178, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %574, metadata !3171, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.label(metadata !3228), !dbg !3660
  %584 = and i8 %578, 1, !dbg !3661
  %585 = icmp ne i8 %584, 0, !dbg !3661
  %586 = and i8 %580, 1, !dbg !3661
  %587 = icmp eq i8 %586, 0, !dbg !3661
  %588 = select i1 %585, i1 %587, i1 false, !dbg !3661
  br i1 %588, label %589, label %600, !dbg !3661

589:                                              ; preds = %573
  %590 = icmp ult i64 %575, %583, !dbg !3665
  br i1 %590, label %591, label %593, !dbg !3669

591:                                              ; preds = %589
  %592 = getelementptr inbounds i8, ptr %0, i64 %575, !dbg !3665
  store i8 39, ptr %592, align 1, !dbg !3665, !tbaa !1166
  br label %593, !dbg !3665

593:                                              ; preds = %591, %589
  %594 = add i64 %575, 1, !dbg !3669
  call void @llvm.dbg.value(metadata i64 %594, metadata !3178, metadata !DIExpression()), !dbg !3230
  %595 = icmp ult i64 %594, %583, !dbg !3670
  br i1 %595, label %596, label %598, !dbg !3673

596:                                              ; preds = %593
  %597 = getelementptr inbounds i8, ptr %0, i64 %594, !dbg !3670
  store i8 39, ptr %597, align 1, !dbg !3670, !tbaa !1166
  br label %598, !dbg !3670

598:                                              ; preds = %596, %593
  %599 = add i64 %575, 2, !dbg !3673
  call void @llvm.dbg.value(metadata i64 %599, metadata !3178, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 0, metadata !3186, metadata !DIExpression()), !dbg !3230
  br label %600, !dbg !3674

600:                                              ; preds = %571, %573, %598
  %601 = phi i64 [ %583, %598 ], [ %583, %573 ], [ %544, %571 ]
  %602 = phi i8 [ %582, %598 ], [ %582, %573 ], [ %543, %571 ]
  %603 = phi i8 [ %581, %598 ], [ %581, %573 ], [ %542, %571 ]
  %604 = phi i64 [ %579, %598 ], [ %579, %573 ], [ %541, %571 ]
  %605 = phi i8 [ %577, %598 ], [ %577, %573 ], [ %539, %571 ]
  %606 = phi i64 [ %576, %598 ], [ %576, %573 ], [ %538, %571 ]
  %607 = phi i64 [ %574, %598 ], [ %574, %573 ], [ %536, %571 ]
  %608 = phi i64 [ %599, %598 ], [ %575, %573 ], [ %572, %571 ], !dbg !3339
  %609 = phi i8 [ 0, %598 ], [ %578, %573 ], [ %567, %571 ], !dbg !3230
  call void @llvm.dbg.value(metadata i8 %609, metadata !3186, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %608, metadata !3178, metadata !DIExpression()), !dbg !3230
  %610 = icmp ult i64 %608, %601, !dbg !3675
  br i1 %610, label %611, label %613, !dbg !3678

611:                                              ; preds = %600
  %612 = getelementptr inbounds i8, ptr %0, i64 %608, !dbg !3675
  store i8 %602, ptr %612, align 1, !dbg !3675, !tbaa !1166
  br label %613, !dbg !3675

613:                                              ; preds = %611, %600
  %614 = add i64 %608, 1, !dbg !3678
  call void @llvm.dbg.value(metadata i64 %614, metadata !3178, metadata !DIExpression()), !dbg !3230
  %615 = icmp eq i8 %603, 0, !dbg !3679
  %616 = select i1 %615, i8 0, i8 %143, !dbg !3681
  call void @llvm.dbg.value(metadata i8 %616, metadata !3185, metadata !DIExpression()), !dbg !3230
  br label %617, !dbg !3682

617:                                              ; preds = %225, %613
  %618 = phi i64 [ %607, %613 ], [ %171, %225 ], !dbg !3625
  %619 = phi i64 [ %614, %613 ], [ %140, %225 ], !dbg !3230
  %620 = phi i64 [ %606, %613 ], [ %141, %225 ], !dbg !3235
  %621 = phi i8 [ %605, %613 ], [ %142, %225 ], !dbg !3239
  %622 = phi i8 [ %616, %613 ], [ %143, %225 ], !dbg !3240
  %623 = phi i8 [ %609, %613 ], [ %144, %225 ], !dbg !3331
  %624 = phi i64 [ %604, %613 ], [ %145, %225 ], !dbg !3636
  %625 = phi i64 [ %601, %613 ], [ %146, %225 ]
  call void @llvm.dbg.value(metadata i64 %625, metadata !3169, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %624, metadata !3192, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.value(metadata i8 %623, metadata !3186, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %622, metadata !3185, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %621, metadata !3184, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %620, metadata !3179, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %619, metadata !3178, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %618, metadata !3171, metadata !DIExpression()), !dbg !3230
  %626 = add i64 %624, 1, !dbg !3683
  call void @llvm.dbg.value(metadata i64 %626, metadata !3192, metadata !DIExpression()), !dbg !3329
  br label %138, !dbg !3684, !llvm.loop !3685

627:                                              ; preds = %152, %148
  call void @llvm.dbg.value(metadata i64 %146, metadata !3169, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %143, metadata !3185, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i8 %142, metadata !3184, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %141, metadata !3179, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %140, metadata !3178, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %139, metadata !3171, metadata !DIExpression()), !dbg !3230
  %628 = icmp eq i64 %140, 0, !dbg !3687
  %629 = and i1 %133, %628, !dbg !3689
  %630 = xor i1 %629, true, !dbg !3689
  %631 = select i1 %630, i1 true, i1 %132, !dbg !3689
  br i1 %631, label %632, label %670, !dbg !3689

632:                                              ; preds = %627
  %633 = select i1 %133, i1 %132, i1 false, !dbg !3690
  %634 = and i8 %142, 1
  %635 = icmp ne i8 %634, 0
  %636 = select i1 %633, i1 %635, i1 false, !dbg !3690
  br i1 %636, label %637, label %646, !dbg !3690

637:                                              ; preds = %632
  %638 = and i8 %143, 1, !dbg !3692
  %639 = icmp eq i8 %638, 0, !dbg !3692
  br i1 %639, label %642, label %640, !dbg !3695

640:                                              ; preds = %637
  %641 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %141, ptr noundef %2, i64 noundef %139, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %117, ptr noundef %118), !dbg !3696
  br label %694, !dbg !3697

642:                                              ; preds = %637
  %643 = icmp eq i64 %146, 0, !dbg !3698
  %644 = icmp ne i64 %141, 0
  %645 = select i1 %643, i1 %644, i1 false, !dbg !3700
  br i1 %645, label %28, label %646, !dbg !3700

646:                                              ; preds = %642, %632
  %647 = phi i1 [ true, %642 ], [ %132, %632 ]
  %648 = icmp ne ptr %120, null, !dbg !3701
  %649 = select i1 %648, i1 %647, i1 false, !dbg !3703
  br i1 %649, label %650, label %665, !dbg !3703

650:                                              ; preds = %646
  call void @llvm.dbg.value(metadata ptr %120, metadata !3180, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %140, metadata !3178, metadata !DIExpression()), !dbg !3230
  %651 = load i8, ptr %120, align 1, !dbg !3704, !tbaa !1166
  %652 = icmp eq i8 %651, 0, !dbg !3707
  br i1 %652, label %665, label %653, !dbg !3707

653:                                              ; preds = %650, %660
  %654 = phi i8 [ %663, %660 ], [ %651, %650 ]
  %655 = phi ptr [ %662, %660 ], [ %120, %650 ]
  %656 = phi i64 [ %661, %660 ], [ %140, %650 ]
  call void @llvm.dbg.value(metadata ptr %655, metadata !3180, metadata !DIExpression()), !dbg !3230
  call void @llvm.dbg.value(metadata i64 %656, metadata !3178, metadata !DIExpression()), !dbg !3230
  %657 = icmp ult i64 %656, %146, !dbg !3708
  br i1 %657, label %658, label %660, !dbg !3711

658:                                              ; preds = %653
  %659 = getelementptr inbounds i8, ptr %0, i64 %656, !dbg !3708
  store i8 %654, ptr %659, align 1, !dbg !3708, !tbaa !1166
  br label %660, !dbg !3708

660:                                              ; preds = %658, %653
  %661 = add i64 %656, 1, !dbg !3711
  call void @llvm.dbg.value(metadata i64 %661, metadata !3178, metadata !DIExpression()), !dbg !3230
  %662 = getelementptr inbounds i8, ptr %655, i64 1, !dbg !3712
  call void @llvm.dbg.value(metadata ptr %662, metadata !3180, metadata !DIExpression()), !dbg !3230
  %663 = load i8, ptr %662, align 1, !dbg !3704, !tbaa !1166
  %664 = icmp eq i8 %663, 0, !dbg !3707
  br i1 %664, label %665, label %653, !dbg !3707, !llvm.loop !3713

665:                                              ; preds = %660, %650, %646
  %666 = phi i64 [ %140, %646 ], [ %140, %650 ], [ %661, %660 ], !dbg !3312
  call void @llvm.dbg.value(metadata i64 %666, metadata !3178, metadata !DIExpression()), !dbg !3230
  %667 = icmp ult i64 %666, %146, !dbg !3715
  br i1 %667, label %668, label %694, !dbg !3717

668:                                              ; preds = %665
  %669 = getelementptr inbounds i8, ptr %0, i64 %666, !dbg !3718
  store i8 0, ptr %669, align 1, !dbg !3719, !tbaa !1166
  br label %694, !dbg !3718

670:                                              ; preds = %627, %227, %269, %272, %283, %286, %359
  %671 = phi i64 [ %324, %359 ], [ %171, %286 ], [ %171, %283 ], [ %171, %272 ], [ %171, %269 ], [ %171, %227 ], [ %139, %627 ]
  call void @llvm.dbg.label(metadata !3229), !dbg !3720
  %672 = icmp eq i8 %124, 0, !dbg !3721
  %673 = select i1 %672, i32 2, i32 4, !dbg !3721
  br label %684, !dbg !3721

674:                                              ; preds = %177, %535
  %675 = phi i64 [ %146, %177 ], [ %544, %535 ]
  %676 = phi i64 [ %171, %177 ], [ %536, %535 ]
  %677 = icmp eq i8 %124, 0, !dbg !3721
  %678 = select i1 %677, i32 2, i32 4, !dbg !3721
  br label %679, !dbg !3723

679:                                              ; preds = %388, %674
  %680 = phi i32 [ %678, %674 ], [ 4, %388 ]
  %681 = phi i64 [ %675, %674 ], [ %146, %388 ]
  %682 = phi i64 [ %676, %674 ], [ %378, %388 ]
  call void @llvm.dbg.label(metadata !3229), !dbg !3720
  %683 = icmp eq i32 %116, 2, !dbg !3723
  br i1 %683, label %684, label %688, !dbg !3721

684:                                              ; preds = %670, %679
  %685 = phi i32 [ %673, %670 ], [ %680, %679 ]
  %686 = phi i64 [ %671, %670 ], [ %682, %679 ]
  %687 = phi i64 [ %146, %670 ], [ %681, %679 ]
  br label %688, !dbg !3721

688:                                              ; preds = %241, %163, %679, %684
  %689 = phi i64 [ %686, %684 ], [ %682, %679 ], [ %161, %163 ], [ %171, %241 ]
  %690 = phi i64 [ %687, %684 ], [ %681, %679 ], [ %146, %163 ], [ %146, %241 ]
  %691 = phi i32 [ %685, %684 ], [ %116, %679 ], [ %116, %163 ], [ 5, %241 ]
  call void @llvm.dbg.value(metadata i32 %691, metadata !3172, metadata !DIExpression()), !dbg !3230
  %692 = and i32 %5, -3, !dbg !3724
  %693 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %690, ptr noundef %2, i64 noundef %689, i32 noundef %691, i32 noundef %692, ptr noundef null, ptr noundef %117, ptr noundef %118), !dbg !3725
  br label %694, !dbg !3726

694:                                              ; preds = %665, %668, %688, %640
  %695 = phi i64 [ %693, %688 ], [ %641, %640 ], [ %666, %668 ], [ %666, %665 ]
  ret i64 %695, !dbg !3727
}

; Function Attrs: nounwind
declare !dbg !3728 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3731 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3734 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3735 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3739, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata i64 %1, metadata !3740, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata ptr %2, metadata !3741, metadata !DIExpression()), !dbg !3742
  call void @llvm.dbg.value(metadata ptr %0, metadata !3743, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata i64 %1, metadata !3748, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata ptr null, metadata !3749, metadata !DIExpression()), !dbg !3756
  call void @llvm.dbg.value(metadata ptr %2, metadata !3750, metadata !DIExpression()), !dbg !3756
  %4 = icmp eq ptr %2, null, !dbg !3758
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3758
  call void @llvm.dbg.value(metadata ptr %5, metadata !3751, metadata !DIExpression()), !dbg !3756
  %6 = tail call ptr @__errno_location() #40, !dbg !3759
  %7 = load i32, ptr %6, align 4, !dbg !3759, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %7, metadata !3752, metadata !DIExpression()), !dbg !3756
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3760
  %9 = load i32, ptr %8, align 4, !dbg !3760, !tbaa !3112
  %10 = or i32 %9, 1, !dbg !3761
  call void @llvm.dbg.value(metadata i32 %10, metadata !3753, metadata !DIExpression()), !dbg !3756
  %11 = load i32, ptr %5, align 8, !dbg !3762, !tbaa !3062
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3763
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3764
  %14 = load ptr, ptr %13, align 8, !dbg !3764, !tbaa !3133
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3765
  %16 = load ptr, ptr %15, align 8, !dbg !3765, !tbaa !3136
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3766
  %18 = add i64 %17, 1, !dbg !3767
  call void @llvm.dbg.value(metadata i64 %18, metadata !3754, metadata !DIExpression()), !dbg !3756
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #42, !dbg !3768
  call void @llvm.dbg.value(metadata ptr %19, metadata !3755, metadata !DIExpression()), !dbg !3756
  %20 = load i32, ptr %5, align 8, !dbg !3769, !tbaa !3062
  %21 = load ptr, ptr %13, align 8, !dbg !3770, !tbaa !3133
  %22 = load ptr, ptr %15, align 8, !dbg !3771, !tbaa !3136
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3772
  store i32 %7, ptr %6, align 4, !dbg !3773, !tbaa !1157
  ret ptr %19, !dbg !3774
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3744 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3743, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata i64 %1, metadata !3748, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata ptr %2, metadata !3749, metadata !DIExpression()), !dbg !3775
  call void @llvm.dbg.value(metadata ptr %3, metadata !3750, metadata !DIExpression()), !dbg !3775
  %5 = icmp eq ptr %3, null, !dbg !3776
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3776
  call void @llvm.dbg.value(metadata ptr %6, metadata !3751, metadata !DIExpression()), !dbg !3775
  %7 = tail call ptr @__errno_location() #40, !dbg !3777
  %8 = load i32, ptr %7, align 4, !dbg !3777, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %8, metadata !3752, metadata !DIExpression()), !dbg !3775
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3778
  %10 = load i32, ptr %9, align 4, !dbg !3778, !tbaa !3112
  %11 = icmp eq ptr %2, null, !dbg !3779
  %12 = zext i1 %11 to i32, !dbg !3779
  %13 = or i32 %10, %12, !dbg !3780
  call void @llvm.dbg.value(metadata i32 %13, metadata !3753, metadata !DIExpression()), !dbg !3775
  %14 = load i32, ptr %6, align 8, !dbg !3781, !tbaa !3062
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3782
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3783
  %17 = load ptr, ptr %16, align 8, !dbg !3783, !tbaa !3133
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3784
  %19 = load ptr, ptr %18, align 8, !dbg !3784, !tbaa !3136
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3785
  %21 = add i64 %20, 1, !dbg !3786
  call void @llvm.dbg.value(metadata i64 %21, metadata !3754, metadata !DIExpression()), !dbg !3775
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #42, !dbg !3787
  call void @llvm.dbg.value(metadata ptr %22, metadata !3755, metadata !DIExpression()), !dbg !3775
  %23 = load i32, ptr %6, align 8, !dbg !3788, !tbaa !3062
  %24 = load ptr, ptr %16, align 8, !dbg !3789, !tbaa !3133
  %25 = load ptr, ptr %18, align 8, !dbg !3790, !tbaa !3136
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3791
  store i32 %8, ptr %7, align 4, !dbg !3792, !tbaa !1157
  br i1 %11, label %28, label %27, !dbg !3793

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3794, !tbaa !1385
  br label %28, !dbg !3796

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3797
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3798 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3803, !tbaa !1086
  call void @llvm.dbg.value(metadata ptr %1, metadata !3800, metadata !DIExpression()), !dbg !3804
  call void @llvm.dbg.value(metadata i32 1, metadata !3801, metadata !DIExpression()), !dbg !3805
  %2 = load i32, ptr @nslots, align 4, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 1, metadata !3801, metadata !DIExpression()), !dbg !3805
  %3 = icmp sgt i32 %2, 1, !dbg !3806
  br i1 %3, label %4, label %6, !dbg !3808

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3806
  br label %10, !dbg !3808

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3809
  %8 = load ptr, ptr %7, align 8, !dbg !3809, !tbaa !3811
  %9 = icmp eq ptr %8, @slot0, !dbg !3813
  br i1 %9, label %17, label %16, !dbg !3814

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3801, metadata !DIExpression()), !dbg !3805
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3815
  %13 = load ptr, ptr %12, align 8, !dbg !3815, !tbaa !3811
  tail call void @free(ptr noundef %13) #37, !dbg !3816
  %14 = add nuw nsw i64 %11, 1, !dbg !3817
  call void @llvm.dbg.value(metadata i64 %14, metadata !3801, metadata !DIExpression()), !dbg !3805
  %15 = icmp eq i64 %14, %5, !dbg !3806
  br i1 %15, label %6, label %10, !dbg !3808, !llvm.loop !3818

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !3820
  store i64 256, ptr @slotvec0, align 8, !dbg !3822, !tbaa !3823
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3824, !tbaa !3811
  br label %17, !dbg !3825

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3826
  br i1 %18, label %20, label %19, !dbg !3828

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !3829
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3831, !tbaa !1086
  br label %20, !dbg !3832

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3833, !tbaa !1157
  ret void, !dbg !3834
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3835 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3837, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.value(metadata ptr %1, metadata !3838, metadata !DIExpression()), !dbg !3839
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3840
  ret ptr %3, !dbg !3841
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3842 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3846, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata ptr %1, metadata !3847, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i64 %2, metadata !3848, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata ptr %3, metadata !3849, metadata !DIExpression()), !dbg !3862
  %6 = tail call ptr @__errno_location() #40, !dbg !3863
  %7 = load i32, ptr %6, align 4, !dbg !3863, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %7, metadata !3850, metadata !DIExpression()), !dbg !3862
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3864, !tbaa !1086
  call void @llvm.dbg.value(metadata ptr %8, metadata !3851, metadata !DIExpression()), !dbg !3862
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3852, metadata !DIExpression()), !dbg !3862
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3865
  br i1 %9, label %10, label %11, !dbg !3865

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !3867
  unreachable, !dbg !3867

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3868, !tbaa !1157
  %13 = icmp sgt i32 %12, %0, !dbg !3869
  br i1 %13, label %32, label %14, !dbg !3870

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3871
  call void @llvm.dbg.value(metadata i1 %15, metadata !3853, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3872
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !3873
  %16 = sext i32 %12 to i64, !dbg !3874
  call void @llvm.dbg.value(metadata i64 %16, metadata !3856, metadata !DIExpression()), !dbg !3872
  store i64 %16, ptr %5, align 8, !dbg !3875, !tbaa !1385
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3876
  %18 = add nuw nsw i32 %0, 1, !dbg !3877
  %19 = sub i32 %18, %12, !dbg !3878
  %20 = sext i32 %19 to i64, !dbg !3879
  call void @llvm.dbg.value(metadata ptr %5, metadata !3856, metadata !DIExpression(DW_OP_deref)), !dbg !3872
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !3880
  call void @llvm.dbg.value(metadata ptr %21, metadata !3851, metadata !DIExpression()), !dbg !3862
  store ptr %21, ptr @slotvec, align 8, !dbg !3881, !tbaa !1086
  br i1 %15, label %22, label %23, !dbg !3882

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3883, !tbaa.struct !3885
  br label %23, !dbg !3886

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3887, !tbaa !1157
  %25 = sext i32 %24 to i64, !dbg !3888
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3888
  %27 = load i64, ptr %5, align 8, !dbg !3889, !tbaa !1385
  call void @llvm.dbg.value(metadata i64 %27, metadata !3856, metadata !DIExpression()), !dbg !3872
  %28 = sub nsw i64 %27, %25, !dbg !3890
  %29 = shl i64 %28, 4, !dbg !3891
  call void @llvm.dbg.value(metadata ptr %26, metadata !3269, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i32 0, metadata !3272, metadata !DIExpression()), !dbg !3892
  call void @llvm.dbg.value(metadata i64 %29, metadata !3273, metadata !DIExpression()), !dbg !3892
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !3894
  %30 = load i64, ptr %5, align 8, !dbg !3895, !tbaa !1385
  call void @llvm.dbg.value(metadata i64 %30, metadata !3856, metadata !DIExpression()), !dbg !3872
  %31 = trunc i64 %30 to i32, !dbg !3895
  store i32 %31, ptr @nslots, align 4, !dbg !3896, !tbaa !1157
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !3897
  br label %32, !dbg !3898

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3862
  call void @llvm.dbg.value(metadata ptr %33, metadata !3851, metadata !DIExpression()), !dbg !3862
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3899
  %36 = load i64, ptr %35, align 8, !dbg !3900, !tbaa !3823
  call void @llvm.dbg.value(metadata i64 %36, metadata !3857, metadata !DIExpression()), !dbg !3901
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3902
  %38 = load ptr, ptr %37, align 8, !dbg !3902, !tbaa !3811
  call void @llvm.dbg.value(metadata ptr %38, metadata !3859, metadata !DIExpression()), !dbg !3901
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3903
  %40 = load i32, ptr %39, align 4, !dbg !3903, !tbaa !3112
  %41 = or i32 %40, 1, !dbg !3904
  call void @llvm.dbg.value(metadata i32 %41, metadata !3860, metadata !DIExpression()), !dbg !3901
  %42 = load i32, ptr %3, align 8, !dbg !3905, !tbaa !3062
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3906
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3907
  %45 = load ptr, ptr %44, align 8, !dbg !3907, !tbaa !3133
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3908
  %47 = load ptr, ptr %46, align 8, !dbg !3908, !tbaa !3136
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3909
  call void @llvm.dbg.value(metadata i64 %48, metadata !3861, metadata !DIExpression()), !dbg !3901
  %49 = icmp ugt i64 %36, %48, !dbg !3910
  br i1 %49, label %60, label %50, !dbg !3912

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3913
  call void @llvm.dbg.value(metadata i64 %51, metadata !3857, metadata !DIExpression()), !dbg !3901
  store i64 %51, ptr %35, align 8, !dbg !3915, !tbaa !3823
  %52 = icmp eq ptr %38, @slot0, !dbg !3916
  br i1 %52, label %54, label %53, !dbg !3918

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !3919
  br label %54, !dbg !3919

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #42, !dbg !3920
  call void @llvm.dbg.value(metadata ptr %55, metadata !3859, metadata !DIExpression()), !dbg !3901
  store ptr %55, ptr %37, align 8, !dbg !3921, !tbaa !3811
  %56 = load i32, ptr %3, align 8, !dbg !3922, !tbaa !3062
  %57 = load ptr, ptr %44, align 8, !dbg !3923, !tbaa !3133
  %58 = load ptr, ptr %46, align 8, !dbg !3924, !tbaa !3136
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3925
  br label %60, !dbg !3926

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3901
  call void @llvm.dbg.value(metadata ptr %61, metadata !3859, metadata !DIExpression()), !dbg !3901
  store i32 %7, ptr %6, align 4, !dbg !3927, !tbaa !1157
  ret ptr %61, !dbg !3928
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3929 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3933, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata ptr %1, metadata !3934, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata i64 %2, metadata !3935, metadata !DIExpression()), !dbg !3936
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3937
  ret ptr %4, !dbg !3938
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3939 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3941, metadata !DIExpression()), !dbg !3942
  call void @llvm.dbg.value(metadata i32 0, metadata !3837, metadata !DIExpression()), !dbg !3943
  call void @llvm.dbg.value(metadata ptr %0, metadata !3838, metadata !DIExpression()), !dbg !3943
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3945
  ret ptr %2, !dbg !3946
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3947 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3951, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i64 %1, metadata !3952, metadata !DIExpression()), !dbg !3953
  call void @llvm.dbg.value(metadata i32 0, metadata !3933, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata ptr %0, metadata !3934, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i64 %1, metadata !3935, metadata !DIExpression()), !dbg !3954
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3956
  ret ptr %3, !dbg !3957
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3958 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3962, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata i32 %1, metadata !3963, metadata !DIExpression()), !dbg !3966
  call void @llvm.dbg.value(metadata ptr %2, metadata !3964, metadata !DIExpression()), !dbg !3966
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3967
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3965, metadata !DIExpression()), !dbg !3968
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3969), !dbg !3972
  call void @llvm.dbg.value(metadata i32 %1, metadata !3973, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3978, metadata !DIExpression()), !dbg !3981
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3981, !alias.scope !3969
  %5 = icmp eq i32 %1, 10, !dbg !3982
  br i1 %5, label %6, label %7, !dbg !3984

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3985, !noalias !3969
  unreachable, !dbg !3985

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3986, !tbaa !3062, !alias.scope !3969
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3987
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3988
  ret ptr %8, !dbg !3989
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3990 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3994, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i32 %1, metadata !3995, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata ptr %2, metadata !3996, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.value(metadata i64 %3, metadata !3997, metadata !DIExpression()), !dbg !3999
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !4000
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3998, metadata !DIExpression()), !dbg !4001
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4002), !dbg !4005
  call void @llvm.dbg.value(metadata i32 %1, metadata !3973, metadata !DIExpression()), !dbg !4006
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3978, metadata !DIExpression()), !dbg !4008
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !4008, !alias.scope !4002
  %6 = icmp eq i32 %1, 10, !dbg !4009
  br i1 %6, label %7, label %8, !dbg !4010

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !4011, !noalias !4002
  unreachable, !dbg !4011

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !4012, !tbaa !3062, !alias.scope !4002
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4013
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !4014
  ret ptr %9, !dbg !4015
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4016 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4020, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata ptr %1, metadata !4021, metadata !DIExpression()), !dbg !4022
  call void @llvm.dbg.value(metadata i32 0, metadata !3962, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata i32 %0, metadata !3963, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.value(metadata ptr %1, metadata !3964, metadata !DIExpression()), !dbg !4023
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !4025
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3965, metadata !DIExpression()), !dbg !4026
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4027), !dbg !4030
  call void @llvm.dbg.value(metadata i32 %0, metadata !3973, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3978, metadata !DIExpression()), !dbg !4033
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !4033, !alias.scope !4027
  %4 = icmp eq i32 %0, 10, !dbg !4034
  br i1 %4, label %5, label %6, !dbg !4035

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !4036, !noalias !4027
  unreachable, !dbg !4036

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !4037, !tbaa !3062, !alias.scope !4027
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !4038
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !4039
  ret ptr %7, !dbg !4040
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4041 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4045, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata ptr %1, metadata !4046, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i64 %2, metadata !4047, metadata !DIExpression()), !dbg !4048
  call void @llvm.dbg.value(metadata i32 0, metadata !3994, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i32 %0, metadata !3995, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata ptr %1, metadata !3996, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.value(metadata i64 %2, metadata !3997, metadata !DIExpression()), !dbg !4049
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !4051
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3998, metadata !DIExpression()), !dbg !4052
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4053), !dbg !4056
  call void @llvm.dbg.value(metadata i32 %0, metadata !3973, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3978, metadata !DIExpression()), !dbg !4059
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !4059, !alias.scope !4053
  %5 = icmp eq i32 %0, 10, !dbg !4060
  br i1 %5, label %6, label %7, !dbg !4061

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !4062, !noalias !4053
  unreachable, !dbg !4062

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !4063, !tbaa !3062, !alias.scope !4053
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !4064
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !4065
  ret ptr %8, !dbg !4066
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef signext %2) local_unnamed_addr #10 !dbg !4067 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4071, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i64 %1, metadata !4072, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.value(metadata i8 %2, metadata !4073, metadata !DIExpression()), !dbg !4075
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !4076
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4074, metadata !DIExpression()), !dbg !4077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4078, !tbaa.struct !4079
  call void @llvm.dbg.value(metadata ptr %4, metadata !3079, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i8 %2, metadata !3080, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i32 1, metadata !3081, metadata !DIExpression()), !dbg !4080
  call void @llvm.dbg.value(metadata i8 %2, metadata !3082, metadata !DIExpression()), !dbg !4080
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !4082
  %6 = lshr i8 %2, 5, !dbg !4083
  %7 = zext i8 %6 to i64, !dbg !4083
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !4084
  call void @llvm.dbg.value(metadata ptr %8, metadata !3083, metadata !DIExpression()), !dbg !4080
  %9 = and i8 %2, 31, !dbg !4085
  %10 = zext i8 %9 to i32, !dbg !4085
  call void @llvm.dbg.value(metadata i32 %10, metadata !3085, metadata !DIExpression()), !dbg !4080
  %11 = load i32, ptr %8, align 4, !dbg !4086, !tbaa !1157
  %12 = lshr i32 %11, %10, !dbg !4087
  call void @llvm.dbg.value(metadata i32 %12, metadata !3086, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4080
  %13 = and i32 %12, 1, !dbg !4088
  %14 = xor i32 %13, 1, !dbg !4088
  %15 = shl nuw i32 %14, %10, !dbg !4089
  %16 = xor i32 %15, %11, !dbg !4090
  store i32 %16, ptr %8, align 4, !dbg !4090, !tbaa !1157
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !4091
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !4092
  ret ptr %17, !dbg !4093
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef signext %1) local_unnamed_addr #10 !dbg !4094 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4098, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata i8 %1, metadata !4099, metadata !DIExpression()), !dbg !4100
  call void @llvm.dbg.value(metadata ptr %0, metadata !4071, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i64 -1, metadata !4072, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata i8 %1, metadata !4073, metadata !DIExpression()), !dbg !4101
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !4103
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4074, metadata !DIExpression()), !dbg !4104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4105, !tbaa.struct !4079
  call void @llvm.dbg.value(metadata ptr %3, metadata !3079, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i8 %1, metadata !3080, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i32 1, metadata !3081, metadata !DIExpression()), !dbg !4106
  call void @llvm.dbg.value(metadata i8 %1, metadata !3082, metadata !DIExpression()), !dbg !4106
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4108
  %5 = lshr i8 %1, 5, !dbg !4109
  %6 = zext i8 %5 to i64, !dbg !4109
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !4110
  call void @llvm.dbg.value(metadata ptr %7, metadata !3083, metadata !DIExpression()), !dbg !4106
  %8 = and i8 %1, 31, !dbg !4111
  %9 = zext i8 %8 to i32, !dbg !4111
  call void @llvm.dbg.value(metadata i32 %9, metadata !3085, metadata !DIExpression()), !dbg !4106
  %10 = load i32, ptr %7, align 4, !dbg !4112, !tbaa !1157
  %11 = lshr i32 %10, %9, !dbg !4113
  call void @llvm.dbg.value(metadata i32 %11, metadata !3086, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4106
  %12 = and i32 %11, 1, !dbg !4114
  %13 = xor i32 %12, 1, !dbg !4114
  %14 = shl nuw i32 %13, %9, !dbg !4115
  %15 = xor i32 %14, %10, !dbg !4116
  store i32 %15, ptr %7, align 4, !dbg !4116, !tbaa !1157
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !4117
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !4118
  ret ptr %16, !dbg !4119
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !4120 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4122, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata ptr %0, metadata !4098, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata i8 58, metadata !4099, metadata !DIExpression()), !dbg !4124
  call void @llvm.dbg.value(metadata ptr %0, metadata !4071, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i64 -1, metadata !4072, metadata !DIExpression()), !dbg !4126
  call void @llvm.dbg.value(metadata i8 58, metadata !4073, metadata !DIExpression()), !dbg !4126
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !4128
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4074, metadata !DIExpression()), !dbg !4129
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4130, !tbaa.struct !4079
  call void @llvm.dbg.value(metadata ptr %2, metadata !3079, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i8 58, metadata !3080, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 1, metadata !3081, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i8 58, metadata !3082, metadata !DIExpression()), !dbg !4131
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !4133
  call void @llvm.dbg.value(metadata ptr %3, metadata !3083, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 26, metadata !3085, metadata !DIExpression()), !dbg !4131
  %4 = load i32, ptr %3, align 4, !dbg !4134, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %4, metadata !3086, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4131
  %5 = or i32 %4, 67108864, !dbg !4135
  store i32 %5, ptr %3, align 4, !dbg !4135, !tbaa !1157
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !4136
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !4137
  ret ptr %6, !dbg !4138
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4139 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4141, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata i64 %1, metadata !4142, metadata !DIExpression()), !dbg !4143
  call void @llvm.dbg.value(metadata ptr %0, metadata !4071, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i64 %1, metadata !4072, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.value(metadata i8 58, metadata !4073, metadata !DIExpression()), !dbg !4144
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !4146
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4074, metadata !DIExpression()), !dbg !4147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4148, !tbaa.struct !4079
  call void @llvm.dbg.value(metadata ptr %3, metadata !3079, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i8 58, metadata !3080, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i32 1, metadata !3081, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i8 58, metadata !3082, metadata !DIExpression()), !dbg !4149
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !4151
  call void @llvm.dbg.value(metadata ptr %4, metadata !3083, metadata !DIExpression()), !dbg !4149
  call void @llvm.dbg.value(metadata i32 26, metadata !3085, metadata !DIExpression()), !dbg !4149
  %5 = load i32, ptr %4, align 4, !dbg !4152, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %5, metadata !3086, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4149
  %6 = or i32 %5, 67108864, !dbg !4153
  store i32 %6, ptr %4, align 4, !dbg !4153, !tbaa !1157
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !4154
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !4155
  ret ptr %7, !dbg !4156
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4157 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3978, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4163
  call void @llvm.dbg.value(metadata i32 %0, metadata !4159, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata i32 %1, metadata !4160, metadata !DIExpression()), !dbg !4165
  call void @llvm.dbg.value(metadata ptr %2, metadata !4161, metadata !DIExpression()), !dbg !4165
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !4166
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4162, metadata !DIExpression()), !dbg !4167
  call void @llvm.dbg.value(metadata i32 %1, metadata !3973, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.value(metadata i32 0, metadata !3978, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4168
  %5 = icmp eq i32 %1, 10, !dbg !4169
  br i1 %5, label %6, label %7, !dbg !4170

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !4171, !noalias !4172
  unreachable, !dbg !4171

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3978, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4168
  store i32 %1, ptr %4, align 8, !dbg !4175, !tbaa.struct !4079
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4175
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4175
  call void @llvm.dbg.value(metadata ptr %4, metadata !3079, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i8 58, metadata !3080, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i32 1, metadata !3081, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i8 58, metadata !3082, metadata !DIExpression()), !dbg !4176
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4178
  call void @llvm.dbg.value(metadata ptr %9, metadata !3083, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i32 26, metadata !3085, metadata !DIExpression()), !dbg !4176
  %10 = load i32, ptr %9, align 4, !dbg !4179, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %10, metadata !3086, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4176
  %11 = or i32 %10, 67108864, !dbg !4180
  store i32 %11, ptr %9, align 4, !dbg !4180, !tbaa !1157
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4181
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !4182
  ret ptr %12, !dbg !4183
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4184 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4188, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata ptr %1, metadata !4189, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata ptr %2, metadata !4190, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata ptr %3, metadata !4191, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.value(metadata i32 %0, metadata !4193, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata ptr %1, metadata !4198, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata ptr %2, metadata !4199, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata ptr %3, metadata !4200, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i64 -1, metadata !4201, metadata !DIExpression()), !dbg !4203
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !4205
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4202, metadata !DIExpression()), !dbg !4206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4207, !tbaa.struct !4079
  call void @llvm.dbg.value(metadata ptr %5, metadata !3119, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata ptr %1, metadata !3120, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata ptr %2, metadata !3121, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata ptr %5, metadata !3119, metadata !DIExpression()), !dbg !4208
  store i32 10, ptr %5, align 8, !dbg !4210, !tbaa !3062
  %6 = icmp ne ptr %1, null, !dbg !4211
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4212
  br i1 %8, label %10, label %9, !dbg !4212

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !4213
  unreachable, !dbg !4213

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4214
  store ptr %1, ptr %11, align 8, !dbg !4215, !tbaa !3133
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4216
  store ptr %2, ptr %12, align 8, !dbg !4217, !tbaa !3136
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4218
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !4219
  ret ptr %13, !dbg !4220
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4194 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4193, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata ptr %1, metadata !4198, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata ptr %2, metadata !4199, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata ptr %3, metadata !4200, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i64 %4, metadata !4201, metadata !DIExpression()), !dbg !4221
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !4222
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4202, metadata !DIExpression()), !dbg !4223
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4224, !tbaa.struct !4079
  call void @llvm.dbg.value(metadata ptr %6, metadata !3119, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata ptr %1, metadata !3120, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata ptr %2, metadata !3121, metadata !DIExpression()), !dbg !4225
  call void @llvm.dbg.value(metadata ptr %6, metadata !3119, metadata !DIExpression()), !dbg !4225
  store i32 10, ptr %6, align 8, !dbg !4227, !tbaa !3062
  %7 = icmp ne ptr %1, null, !dbg !4228
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4229
  br i1 %9, label %11, label %10, !dbg !4229

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !4230
  unreachable, !dbg !4230

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4231
  store ptr %1, ptr %12, align 8, !dbg !4232, !tbaa !3133
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4233
  store ptr %2, ptr %13, align 8, !dbg !4234, !tbaa !3136
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4235
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !4236
  ret ptr %14, !dbg !4237
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4238 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4242, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata ptr %1, metadata !4243, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata ptr %2, metadata !4244, metadata !DIExpression()), !dbg !4245
  call void @llvm.dbg.value(metadata i32 0, metadata !4188, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata ptr %0, metadata !4189, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata ptr %1, metadata !4190, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata ptr %2, metadata !4191, metadata !DIExpression()), !dbg !4246
  call void @llvm.dbg.value(metadata i32 0, metadata !4193, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata ptr %0, metadata !4198, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata ptr %1, metadata !4199, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata ptr %2, metadata !4200, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.value(metadata i64 -1, metadata !4201, metadata !DIExpression()), !dbg !4248
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !4250
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4202, metadata !DIExpression()), !dbg !4251
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4252, !tbaa.struct !4079
  call void @llvm.dbg.value(metadata ptr %4, metadata !3119, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata ptr %0, metadata !3120, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata ptr %1, metadata !3121, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.value(metadata ptr %4, metadata !3119, metadata !DIExpression()), !dbg !4253
  store i32 10, ptr %4, align 8, !dbg !4255, !tbaa !3062
  %5 = icmp ne ptr %0, null, !dbg !4256
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4257
  br i1 %7, label %9, label %8, !dbg !4257

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !4258
  unreachable, !dbg !4258

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4259
  store ptr %0, ptr %10, align 8, !dbg !4260, !tbaa !3133
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4261
  store ptr %1, ptr %11, align 8, !dbg !4262, !tbaa !3136
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4263
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !4264
  ret ptr %12, !dbg !4265
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4266 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4270, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata ptr %1, metadata !4271, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata ptr %2, metadata !4272, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i64 %3, metadata !4273, metadata !DIExpression()), !dbg !4274
  call void @llvm.dbg.value(metadata i32 0, metadata !4193, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata ptr %0, metadata !4198, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata ptr %1, metadata !4199, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata ptr %2, metadata !4200, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata i64 %3, metadata !4201, metadata !DIExpression()), !dbg !4275
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !4277
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4202, metadata !DIExpression()), !dbg !4278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4279, !tbaa.struct !4079
  call void @llvm.dbg.value(metadata ptr %5, metadata !3119, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr %0, metadata !3120, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr %1, metadata !3121, metadata !DIExpression()), !dbg !4280
  call void @llvm.dbg.value(metadata ptr %5, metadata !3119, metadata !DIExpression()), !dbg !4280
  store i32 10, ptr %5, align 8, !dbg !4282, !tbaa !3062
  %6 = icmp ne ptr %0, null, !dbg !4283
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4284
  br i1 %8, label %10, label %9, !dbg !4284

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !4285
  unreachable, !dbg !4285

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4286
  store ptr %0, ptr %11, align 8, !dbg !4287, !tbaa !3133
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4288
  store ptr %1, ptr %12, align 8, !dbg !4289, !tbaa !3136
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4290
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !4291
  ret ptr %13, !dbg !4292
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4293 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4297, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata ptr %1, metadata !4298, metadata !DIExpression()), !dbg !4300
  call void @llvm.dbg.value(metadata i64 %2, metadata !4299, metadata !DIExpression()), !dbg !4300
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4301
  ret ptr %4, !dbg !4302
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4303 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4307, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.value(metadata i64 %1, metadata !4308, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.value(metadata i32 0, metadata !4297, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata ptr %0, metadata !4298, metadata !DIExpression()), !dbg !4310
  call void @llvm.dbg.value(metadata i64 %1, metadata !4299, metadata !DIExpression()), !dbg !4310
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4312
  ret ptr %3, !dbg !4313
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4314 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4318, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata ptr %1, metadata !4319, metadata !DIExpression()), !dbg !4320
  call void @llvm.dbg.value(metadata i32 %0, metadata !4297, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata ptr %1, metadata !4298, metadata !DIExpression()), !dbg !4321
  call void @llvm.dbg.value(metadata i64 -1, metadata !4299, metadata !DIExpression()), !dbg !4321
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4323
  ret ptr %3, !dbg !4324
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4325 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4329, metadata !DIExpression()), !dbg !4330
  call void @llvm.dbg.value(metadata i32 0, metadata !4318, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata ptr %0, metadata !4319, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.value(metadata i32 0, metadata !4297, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata ptr %0, metadata !4298, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.value(metadata i64 -1, metadata !4299, metadata !DIExpression()), !dbg !4333
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4335
  ret ptr %2, !dbg !4336
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4337 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4376, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata ptr %1, metadata !4377, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata ptr %2, metadata !4378, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata ptr %3, metadata !4379, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata ptr %4, metadata !4380, metadata !DIExpression()), !dbg !4382
  call void @llvm.dbg.value(metadata i64 %5, metadata !4381, metadata !DIExpression()), !dbg !4382
  %7 = icmp eq ptr %1, null, !dbg !4383
  br i1 %7, label %10, label %8, !dbg !4385

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.124, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !4386
  br label %12, !dbg !4386

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.125, ptr noundef %2, ptr noundef %3) #37, !dbg !4387
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.3.127, i32 noundef 5) #37, !dbg !4388
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !4388
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.128, ptr noundef %0), !dbg !4389
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.5.129, i32 noundef 5) #37, !dbg !4390
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.130) #37, !dbg !4390
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.128, ptr noundef %0), !dbg !4391
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
  ], !dbg !4392

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.7.131, i32 noundef 5) #37, !dbg !4393
  %21 = load ptr, ptr %4, align 8, !dbg !4393, !tbaa !1086
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !4393
  br label %147, !dbg !4395

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.8.132, i32 noundef 5) #37, !dbg !4396
  %25 = load ptr, ptr %4, align 8, !dbg !4396, !tbaa !1086
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4396
  %27 = load ptr, ptr %26, align 8, !dbg !4396, !tbaa !1086
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !4396
  br label %147, !dbg !4397

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.9.133, i32 noundef 5) #37, !dbg !4398
  %31 = load ptr, ptr %4, align 8, !dbg !4398, !tbaa !1086
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4398
  %33 = load ptr, ptr %32, align 8, !dbg !4398, !tbaa !1086
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4398
  %35 = load ptr, ptr %34, align 8, !dbg !4398, !tbaa !1086
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !4398
  br label %147, !dbg !4399

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.10.134, i32 noundef 5) #37, !dbg !4400
  %39 = load ptr, ptr %4, align 8, !dbg !4400, !tbaa !1086
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4400
  %41 = load ptr, ptr %40, align 8, !dbg !4400, !tbaa !1086
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4400
  %43 = load ptr, ptr %42, align 8, !dbg !4400, !tbaa !1086
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4400
  %45 = load ptr, ptr %44, align 8, !dbg !4400, !tbaa !1086
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !4400
  br label %147, !dbg !4401

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.11.135, i32 noundef 5) #37, !dbg !4402
  %49 = load ptr, ptr %4, align 8, !dbg !4402, !tbaa !1086
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4402
  %51 = load ptr, ptr %50, align 8, !dbg !4402, !tbaa !1086
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4402
  %53 = load ptr, ptr %52, align 8, !dbg !4402, !tbaa !1086
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4402
  %55 = load ptr, ptr %54, align 8, !dbg !4402, !tbaa !1086
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4402
  %57 = load ptr, ptr %56, align 8, !dbg !4402, !tbaa !1086
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !4402
  br label %147, !dbg !4403

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.12.136, i32 noundef 5) #37, !dbg !4404
  %61 = load ptr, ptr %4, align 8, !dbg !4404, !tbaa !1086
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4404
  %63 = load ptr, ptr %62, align 8, !dbg !4404, !tbaa !1086
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4404
  %65 = load ptr, ptr %64, align 8, !dbg !4404, !tbaa !1086
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4404
  %67 = load ptr, ptr %66, align 8, !dbg !4404, !tbaa !1086
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4404
  %69 = load ptr, ptr %68, align 8, !dbg !4404, !tbaa !1086
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4404
  %71 = load ptr, ptr %70, align 8, !dbg !4404, !tbaa !1086
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !4404
  br label %147, !dbg !4405

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.13.137, i32 noundef 5) #37, !dbg !4406
  %75 = load ptr, ptr %4, align 8, !dbg !4406, !tbaa !1086
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4406
  %77 = load ptr, ptr %76, align 8, !dbg !4406, !tbaa !1086
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4406
  %79 = load ptr, ptr %78, align 8, !dbg !4406, !tbaa !1086
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4406
  %81 = load ptr, ptr %80, align 8, !dbg !4406, !tbaa !1086
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4406
  %83 = load ptr, ptr %82, align 8, !dbg !4406, !tbaa !1086
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4406
  %85 = load ptr, ptr %84, align 8, !dbg !4406, !tbaa !1086
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4406
  %87 = load ptr, ptr %86, align 8, !dbg !4406, !tbaa !1086
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !4406
  br label %147, !dbg !4407

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.14.138, i32 noundef 5) #37, !dbg !4408
  %91 = load ptr, ptr %4, align 8, !dbg !4408, !tbaa !1086
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4408
  %93 = load ptr, ptr %92, align 8, !dbg !4408, !tbaa !1086
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4408
  %95 = load ptr, ptr %94, align 8, !dbg !4408, !tbaa !1086
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4408
  %97 = load ptr, ptr %96, align 8, !dbg !4408, !tbaa !1086
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4408
  %99 = load ptr, ptr %98, align 8, !dbg !4408, !tbaa !1086
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4408
  %101 = load ptr, ptr %100, align 8, !dbg !4408, !tbaa !1086
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4408
  %103 = load ptr, ptr %102, align 8, !dbg !4408, !tbaa !1086
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4408
  %105 = load ptr, ptr %104, align 8, !dbg !4408, !tbaa !1086
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !4408
  br label %147, !dbg !4409

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.15.139, i32 noundef 5) #37, !dbg !4410
  %109 = load ptr, ptr %4, align 8, !dbg !4410, !tbaa !1086
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4410
  %111 = load ptr, ptr %110, align 8, !dbg !4410, !tbaa !1086
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4410
  %113 = load ptr, ptr %112, align 8, !dbg !4410, !tbaa !1086
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4410
  %115 = load ptr, ptr %114, align 8, !dbg !4410, !tbaa !1086
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4410
  %117 = load ptr, ptr %116, align 8, !dbg !4410, !tbaa !1086
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4410
  %119 = load ptr, ptr %118, align 8, !dbg !4410, !tbaa !1086
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4410
  %121 = load ptr, ptr %120, align 8, !dbg !4410, !tbaa !1086
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4410
  %123 = load ptr, ptr %122, align 8, !dbg !4410, !tbaa !1086
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4410
  %125 = load ptr, ptr %124, align 8, !dbg !4410, !tbaa !1086
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !4410
  br label %147, !dbg !4411

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.16.140, i32 noundef 5) #37, !dbg !4412
  %129 = load ptr, ptr %4, align 8, !dbg !4412, !tbaa !1086
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4412
  %131 = load ptr, ptr %130, align 8, !dbg !4412, !tbaa !1086
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4412
  %133 = load ptr, ptr %132, align 8, !dbg !4412, !tbaa !1086
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4412
  %135 = load ptr, ptr %134, align 8, !dbg !4412, !tbaa !1086
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4412
  %137 = load ptr, ptr %136, align 8, !dbg !4412, !tbaa !1086
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4412
  %139 = load ptr, ptr %138, align 8, !dbg !4412, !tbaa !1086
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4412
  %141 = load ptr, ptr %140, align 8, !dbg !4412, !tbaa !1086
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4412
  %143 = load ptr, ptr %142, align 8, !dbg !4412, !tbaa !1086
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4412
  %145 = load ptr, ptr %144, align 8, !dbg !4412, !tbaa !1086
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !4412
  br label %147, !dbg !4413

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4414
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4415 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4419, metadata !DIExpression()), !dbg !4425
  call void @llvm.dbg.value(metadata ptr %1, metadata !4420, metadata !DIExpression()), !dbg !4425
  call void @llvm.dbg.value(metadata ptr %2, metadata !4421, metadata !DIExpression()), !dbg !4425
  call void @llvm.dbg.value(metadata ptr %3, metadata !4422, metadata !DIExpression()), !dbg !4425
  call void @llvm.dbg.value(metadata ptr %4, metadata !4423, metadata !DIExpression()), !dbg !4425
  call void @llvm.dbg.value(metadata i64 0, metadata !4424, metadata !DIExpression()), !dbg !4425
  br label %6, !dbg !4426

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4428
  call void @llvm.dbg.value(metadata i64 %7, metadata !4424, metadata !DIExpression()), !dbg !4425
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4429
  %9 = load ptr, ptr %8, align 8, !dbg !4429, !tbaa !1086
  %10 = icmp eq ptr %9, null, !dbg !4431
  %11 = add i64 %7, 1, !dbg !4432
  call void @llvm.dbg.value(metadata i64 %11, metadata !4424, metadata !DIExpression()), !dbg !4425
  br i1 %10, label %12, label %6, !dbg !4431, !llvm.loop !4433

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4435
  ret void, !dbg !4436
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4437 {
  %6 = alloca [10 x ptr], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4449, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata ptr %1, metadata !4450, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata ptr %2, metadata !4451, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata ptr %3, metadata !4452, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata ptr %4, metadata !4453, metadata !DIExpression()), !dbg !4457
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !4458
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4455, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i64 0, metadata !4454, metadata !DIExpression()), !dbg !4457
  %7 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 2
  %8 = getelementptr inbounds %struct.__va_list_tag, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %4, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4454, metadata !DIExpression()), !dbg !4457
  %10 = icmp ult i32 %9, 41, !dbg !4460
  br i1 %10, label %11, label %16, !dbg !4460

11:                                               ; preds = %5
  %12 = load ptr, ptr %8, align 8, !dbg !4460
  %13 = zext i32 %9 to i64, !dbg !4460
  %14 = getelementptr i8, ptr %12, i64 %13, !dbg !4460
  %15 = add nuw nsw i32 %9, 8, !dbg !4460
  store i32 %15, ptr %4, align 8, !dbg !4460
  br label %19, !dbg !4460

16:                                               ; preds = %5
  %17 = load ptr, ptr %7, align 8, !dbg !4460
  %18 = getelementptr i8, ptr %17, i64 8, !dbg !4460
  store ptr %18, ptr %7, align 8, !dbg !4460
  br label %19, !dbg !4460

19:                                               ; preds = %16, %11
  %20 = phi i32 [ %15, %11 ], [ %9, %16 ]
  %21 = phi ptr [ %14, %11 ], [ %17, %16 ], !dbg !4460
  %22 = load ptr, ptr %21, align 8, !dbg !4460
  store ptr %22, ptr %6, align 16, !dbg !4463, !tbaa !1086
  %23 = icmp eq ptr %22, null, !dbg !4464
  br i1 %23, label %128, label %24, !dbg !4465

24:                                               ; preds = %19
  call void @llvm.dbg.value(metadata i64 1, metadata !4454, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata i64 1, metadata !4454, metadata !DIExpression()), !dbg !4457
  %25 = icmp ult i32 %20, 41, !dbg !4460
  br i1 %25, label %29, label %26, !dbg !4460

26:                                               ; preds = %24
  %27 = load ptr, ptr %7, align 8, !dbg !4460
  %28 = getelementptr i8, ptr %27, i64 8, !dbg !4460
  store ptr %28, ptr %7, align 8, !dbg !4460
  br label %34, !dbg !4460

29:                                               ; preds = %24
  %30 = load ptr, ptr %8, align 8, !dbg !4460
  %31 = zext i32 %20 to i64, !dbg !4460
  %32 = getelementptr i8, ptr %30, i64 %31, !dbg !4460
  %33 = add nuw nsw i32 %20, 8, !dbg !4460
  store i32 %33, ptr %4, align 8, !dbg !4460
  br label %34, !dbg !4460

34:                                               ; preds = %29, %26
  %35 = phi i32 [ %33, %29 ], [ %20, %26 ]
  %36 = phi ptr [ %32, %29 ], [ %27, %26 ], !dbg !4460
  %37 = load ptr, ptr %36, align 8, !dbg !4460
  %38 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4466
  store ptr %37, ptr %38, align 8, !dbg !4463, !tbaa !1086
  %39 = icmp eq ptr %37, null, !dbg !4464
  br i1 %39, label %128, label %40, !dbg !4465

40:                                               ; preds = %34
  call void @llvm.dbg.value(metadata i64 2, metadata !4454, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata i64 2, metadata !4454, metadata !DIExpression()), !dbg !4457
  %41 = icmp ult i32 %35, 41, !dbg !4460
  br i1 %41, label %45, label %42, !dbg !4460

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8, !dbg !4460
  %44 = getelementptr i8, ptr %43, i64 8, !dbg !4460
  store ptr %44, ptr %7, align 8, !dbg !4460
  br label %50, !dbg !4460

45:                                               ; preds = %40
  %46 = load ptr, ptr %8, align 8, !dbg !4460
  %47 = zext i32 %35 to i64, !dbg !4460
  %48 = getelementptr i8, ptr %46, i64 %47, !dbg !4460
  %49 = add nuw nsw i32 %35, 8, !dbg !4460
  store i32 %49, ptr %4, align 8, !dbg !4460
  br label %50, !dbg !4460

50:                                               ; preds = %45, %42
  %51 = phi i32 [ %49, %45 ], [ %35, %42 ]
  %52 = phi ptr [ %48, %45 ], [ %43, %42 ], !dbg !4460
  %53 = load ptr, ptr %52, align 8, !dbg !4460
  %54 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4466
  store ptr %53, ptr %54, align 16, !dbg !4463, !tbaa !1086
  %55 = icmp eq ptr %53, null, !dbg !4464
  br i1 %55, label %128, label %56, !dbg !4465

56:                                               ; preds = %50
  call void @llvm.dbg.value(metadata i64 3, metadata !4454, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata i64 3, metadata !4454, metadata !DIExpression()), !dbg !4457
  %57 = icmp ult i32 %51, 41, !dbg !4460
  br i1 %57, label %61, label %58, !dbg !4460

58:                                               ; preds = %56
  %59 = load ptr, ptr %7, align 8, !dbg !4460
  %60 = getelementptr i8, ptr %59, i64 8, !dbg !4460
  store ptr %60, ptr %7, align 8, !dbg !4460
  br label %66, !dbg !4460

61:                                               ; preds = %56
  %62 = load ptr, ptr %8, align 8, !dbg !4460
  %63 = zext i32 %51 to i64, !dbg !4460
  %64 = getelementptr i8, ptr %62, i64 %63, !dbg !4460
  %65 = add nuw nsw i32 %51, 8, !dbg !4460
  store i32 %65, ptr %4, align 8, !dbg !4460
  br label %66, !dbg !4460

66:                                               ; preds = %61, %58
  %67 = phi i32 [ %65, %61 ], [ %51, %58 ]
  %68 = phi ptr [ %64, %61 ], [ %59, %58 ], !dbg !4460
  %69 = load ptr, ptr %68, align 8, !dbg !4460
  %70 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4466
  store ptr %69, ptr %70, align 8, !dbg !4463, !tbaa !1086
  %71 = icmp eq ptr %69, null, !dbg !4464
  br i1 %71, label %128, label %72, !dbg !4465

72:                                               ; preds = %66
  call void @llvm.dbg.value(metadata i64 4, metadata !4454, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata i64 4, metadata !4454, metadata !DIExpression()), !dbg !4457
  %73 = icmp ult i32 %67, 41, !dbg !4460
  br i1 %73, label %77, label %74, !dbg !4460

74:                                               ; preds = %72
  %75 = load ptr, ptr %7, align 8, !dbg !4460
  %76 = getelementptr i8, ptr %75, i64 8, !dbg !4460
  store ptr %76, ptr %7, align 8, !dbg !4460
  br label %82, !dbg !4460

77:                                               ; preds = %72
  %78 = load ptr, ptr %8, align 8, !dbg !4460
  %79 = zext i32 %67 to i64, !dbg !4460
  %80 = getelementptr i8, ptr %78, i64 %79, !dbg !4460
  %81 = add nuw nsw i32 %67, 8, !dbg !4460
  store i32 %81, ptr %4, align 8, !dbg !4460
  br label %82, !dbg !4460

82:                                               ; preds = %77, %74
  %83 = phi i32 [ %81, %77 ], [ %67, %74 ]
  %84 = phi ptr [ %80, %77 ], [ %75, %74 ], !dbg !4460
  %85 = load ptr, ptr %84, align 8, !dbg !4460
  %86 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4466
  store ptr %85, ptr %86, align 16, !dbg !4463, !tbaa !1086
  %87 = icmp eq ptr %85, null, !dbg !4464
  br i1 %87, label %128, label %88, !dbg !4465

88:                                               ; preds = %82
  call void @llvm.dbg.value(metadata i64 5, metadata !4454, metadata !DIExpression()), !dbg !4457
  call void @llvm.dbg.value(metadata i64 5, metadata !4454, metadata !DIExpression()), !dbg !4457
  %89 = icmp ult i32 %83, 41, !dbg !4460
  br i1 %89, label %93, label %90, !dbg !4460

90:                                               ; preds = %88
  %91 = load ptr, ptr %7, align 8, !dbg !4460
  %92 = getelementptr i8, ptr %91, i64 8, !dbg !4460
  store ptr %92, ptr %7, align 8, !dbg !4460
  br label %98, !dbg !4460

93:                                               ; preds = %88
  %94 = load ptr, ptr %8, align 8, !dbg !4460
  %95 = zext i32 %83 to i64, !dbg !4460
  %96 = getelementptr i8, ptr %94, i64 %95, !dbg !4460
  %97 = add nuw nsw i32 %83, 8, !dbg !4460
  store i32 %97, ptr %4, align 8, !dbg !4460
  br label %98, !dbg !4460

98:                                               ; preds = %93, %90
  %99 = phi ptr [ %96, %93 ], [ %91, %90 ], !dbg !4460
  %100 = load ptr, ptr %99, align 8, !dbg !4460
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4466
  store ptr %100, ptr %101, align 8, !dbg !4463, !tbaa !1086
  %102 = icmp eq ptr %100, null, !dbg !4464
  br i1 %102, label %128, label %103, !dbg !4465

103:                                              ; preds = %98
  call void @llvm.dbg.value(metadata i64 6, metadata !4454, metadata !DIExpression()), !dbg !4457
  %104 = load ptr, ptr %7, align 8, !dbg !4460
  %105 = getelementptr i8, ptr %104, i64 8, !dbg !4460
  store ptr %105, ptr %7, align 8, !dbg !4460
  %106 = load ptr, ptr %104, align 8, !dbg !4460
  %107 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4466
  store ptr %106, ptr %107, align 16, !dbg !4463, !tbaa !1086
  %108 = icmp eq ptr %106, null, !dbg !4464
  br i1 %108, label %128, label %109, !dbg !4465

109:                                              ; preds = %103
  call void @llvm.dbg.value(metadata i64 7, metadata !4454, metadata !DIExpression()), !dbg !4457
  %110 = load ptr, ptr %7, align 8, !dbg !4460
  %111 = getelementptr i8, ptr %110, i64 8, !dbg !4460
  store ptr %111, ptr %7, align 8, !dbg !4460
  %112 = load ptr, ptr %110, align 8, !dbg !4460
  %113 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4466
  store ptr %112, ptr %113, align 8, !dbg !4463, !tbaa !1086
  %114 = icmp eq ptr %112, null, !dbg !4464
  br i1 %114, label %128, label %115, !dbg !4465

115:                                              ; preds = %109
  call void @llvm.dbg.value(metadata i64 8, metadata !4454, metadata !DIExpression()), !dbg !4457
  %116 = load ptr, ptr %7, align 8, !dbg !4460
  %117 = getelementptr i8, ptr %116, i64 8, !dbg !4460
  store ptr %117, ptr %7, align 8, !dbg !4460
  %118 = load ptr, ptr %116, align 8, !dbg !4460
  %119 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4466
  store ptr %118, ptr %119, align 16, !dbg !4463, !tbaa !1086
  %120 = icmp eq ptr %118, null, !dbg !4464
  br i1 %120, label %128, label %121, !dbg !4465

121:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i64 9, metadata !4454, metadata !DIExpression()), !dbg !4457
  %122 = load ptr, ptr %7, align 8, !dbg !4460
  %123 = getelementptr i8, ptr %122, i64 8, !dbg !4460
  store ptr %123, ptr %7, align 8, !dbg !4460
  %124 = load ptr, ptr %122, align 8, !dbg !4460
  %125 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4466
  store ptr %124, ptr %125, align 8, !dbg !4463, !tbaa !1086
  %126 = icmp eq ptr %124, null, !dbg !4464
  %127 = select i1 %126, i64 9, i64 10, !dbg !4465
  br label %128, !dbg !4465

128:                                              ; preds = %121, %115, %109, %103, %98, %82, %66, %50, %34, %19
  %129 = phi i64 [ 0, %19 ], [ 1, %34 ], [ 2, %50 ], [ 3, %66 ], [ 4, %82 ], [ 5, %98 ], [ 6, %103 ], [ 7, %109 ], [ 8, %115 ], [ %127, %121 ], !dbg !4467
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %129), !dbg !4468
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !4469
  ret void, !dbg !4469
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4470 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4474, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata ptr %1, metadata !4475, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata ptr %2, metadata !4476, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata ptr %3, metadata !4477, metadata !DIExpression()), !dbg !4483
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #37, !dbg !4484
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4478, metadata !DIExpression()), !dbg !4485
  call void @llvm.va_start(ptr nonnull %5), !dbg !4486
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %5), !dbg !4487
  call void @llvm.va_end(ptr nonnull %5), !dbg !4488
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #37, !dbg !4489
  ret void, !dbg !4489
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4490 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4491, !tbaa !1086
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.128, ptr noundef %1), !dbg !4491
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.17.145, i32 noundef 5) #37, !dbg !4492
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.146) #37, !dbg !4492
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.19.147, i32 noundef 5) #37, !dbg !4493
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.148, ptr noundef nonnull @.str.21.149) #37, !dbg !4493
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.22.150, i32 noundef 5) #37, !dbg !4494
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.151) #37, !dbg !4494
  ret void, !dbg !4495
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !4496 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4501, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i64 %1, metadata !4502, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata i64 %2, metadata !4503, metadata !DIExpression()), !dbg !4504
  call void @llvm.dbg.value(metadata ptr %0, metadata !4505, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i64 %1, metadata !4508, metadata !DIExpression()), !dbg !4510
  call void @llvm.dbg.value(metadata i64 %2, metadata !4509, metadata !DIExpression()), !dbg !4510
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !4512
  call void @llvm.dbg.value(metadata ptr %4, metadata !4513, metadata !DIExpression()), !dbg !4518
  %5 = icmp eq ptr %4, null, !dbg !4520
  br i1 %5, label %6, label %7, !dbg !4522

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !4523
  unreachable, !dbg !4523

7:                                                ; preds = %3
  ret ptr %4, !dbg !4524
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4506 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4505, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i64 %1, metadata !4508, metadata !DIExpression()), !dbg !4525
  call void @llvm.dbg.value(metadata i64 %2, metadata !4509, metadata !DIExpression()), !dbg !4525
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !4526
  call void @llvm.dbg.value(metadata ptr %4, metadata !4513, metadata !DIExpression()), !dbg !4527
  %5 = icmp eq ptr %4, null, !dbg !4529
  br i1 %5, label %6, label %7, !dbg !4530

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !4531
  unreachable, !dbg !4531

7:                                                ; preds = %3
  ret ptr %4, !dbg !4532
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4533 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4537, metadata !DIExpression()), !dbg !4538
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !4539
  call void @llvm.dbg.value(metadata ptr %2, metadata !4513, metadata !DIExpression()), !dbg !4540
  %3 = icmp eq ptr %2, null, !dbg !4542
  br i1 %3, label %4, label %5, !dbg !4543

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4544
  unreachable, !dbg !4544

5:                                                ; preds = %1
  ret ptr %2, !dbg !4545
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4546 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4547 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4551, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.value(metadata i64 %0, metadata !4553, metadata !DIExpression()), !dbg !4557
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !4559
  call void @llvm.dbg.value(metadata ptr %2, metadata !4513, metadata !DIExpression()), !dbg !4560
  %3 = icmp eq ptr %2, null, !dbg !4562
  br i1 %3, label %4, label %5, !dbg !4563

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4564
  unreachable, !dbg !4564

5:                                                ; preds = %1
  ret ptr %2, !dbg !4565
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4566 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4570, metadata !DIExpression()), !dbg !4571
  call void @llvm.dbg.value(metadata i64 %0, metadata !4537, metadata !DIExpression()), !dbg !4572
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !4574
  call void @llvm.dbg.value(metadata ptr %2, metadata !4513, metadata !DIExpression()), !dbg !4575
  %3 = icmp eq ptr %2, null, !dbg !4577
  br i1 %3, label %4, label %5, !dbg !4578

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4579
  unreachable, !dbg !4579

5:                                                ; preds = %1
  ret ptr %2, !dbg !4580
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4581 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4585, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata i64 %1, metadata !4586, metadata !DIExpression()), !dbg !4587
  call void @llvm.dbg.value(metadata ptr %0, metadata !4588, metadata !DIExpression()), !dbg !4593
  call void @llvm.dbg.value(metadata i64 %1, metadata !4592, metadata !DIExpression()), !dbg !4593
  %3 = icmp eq i64 %1, 0, !dbg !4595
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4595
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !4596
  call void @llvm.dbg.value(metadata ptr %5, metadata !4513, metadata !DIExpression()), !dbg !4597
  %6 = icmp eq ptr %5, null, !dbg !4599
  br i1 %6, label %7, label %8, !dbg !4600

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4601
  unreachable, !dbg !4601

8:                                                ; preds = %2
  ret ptr %5, !dbg !4602
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4603 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4604 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4608, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata i64 %1, metadata !4609, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata ptr %0, metadata !4611, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata i64 %1, metadata !4614, metadata !DIExpression()), !dbg !4615
  call void @llvm.dbg.value(metadata ptr %0, metadata !4588, metadata !DIExpression()), !dbg !4617
  call void @llvm.dbg.value(metadata i64 %1, metadata !4592, metadata !DIExpression()), !dbg !4617
  %3 = icmp eq i64 %1, 0, !dbg !4619
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4619
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !4620
  call void @llvm.dbg.value(metadata ptr %5, metadata !4513, metadata !DIExpression()), !dbg !4621
  %6 = icmp eq ptr %5, null, !dbg !4623
  br i1 %6, label %7, label %8, !dbg !4624

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4625
  unreachable, !dbg !4625

8:                                                ; preds = %2
  ret ptr %5, !dbg !4626
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4627 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4631, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata i64 %1, metadata !4632, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata i64 %2, metadata !4633, metadata !DIExpression()), !dbg !4634
  call void @llvm.dbg.value(metadata ptr %0, metadata !4635, metadata !DIExpression()), !dbg !4640
  call void @llvm.dbg.value(metadata i64 %1, metadata !4638, metadata !DIExpression()), !dbg !4640
  call void @llvm.dbg.value(metadata i64 %2, metadata !4639, metadata !DIExpression()), !dbg !4640
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !4642
  call void @llvm.dbg.value(metadata ptr %4, metadata !4513, metadata !DIExpression()), !dbg !4643
  %5 = icmp eq ptr %4, null, !dbg !4645
  br i1 %5, label %6, label %7, !dbg !4646

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !4647
  unreachable, !dbg !4647

7:                                                ; preds = %3
  ret ptr %4, !dbg !4648
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4649 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4653, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.value(metadata i64 %1, metadata !4654, metadata !DIExpression()), !dbg !4655
  call void @llvm.dbg.value(metadata ptr null, metadata !4505, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i64 %0, metadata !4508, metadata !DIExpression()), !dbg !4656
  call void @llvm.dbg.value(metadata i64 %1, metadata !4509, metadata !DIExpression()), !dbg !4656
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !4658
  call void @llvm.dbg.value(metadata ptr %3, metadata !4513, metadata !DIExpression()), !dbg !4659
  %4 = icmp eq ptr %3, null, !dbg !4661
  br i1 %4, label %5, label %6, !dbg !4662

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4663
  unreachable, !dbg !4663

6:                                                ; preds = %2
  ret ptr %3, !dbg !4664
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4665 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4669, metadata !DIExpression()), !dbg !4671
  call void @llvm.dbg.value(metadata i64 %1, metadata !4670, metadata !DIExpression()), !dbg !4671
  call void @llvm.dbg.value(metadata ptr null, metadata !4631, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i64 %0, metadata !4632, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata i64 %1, metadata !4633, metadata !DIExpression()), !dbg !4672
  call void @llvm.dbg.value(metadata ptr null, metadata !4635, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i64 %0, metadata !4638, metadata !DIExpression()), !dbg !4674
  call void @llvm.dbg.value(metadata i64 %1, metadata !4639, metadata !DIExpression()), !dbg !4674
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !4676
  call void @llvm.dbg.value(metadata ptr %3, metadata !4513, metadata !DIExpression()), !dbg !4677
  %4 = icmp eq ptr %3, null, !dbg !4679
  br i1 %4, label %5, label %6, !dbg !4680

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4681
  unreachable, !dbg !4681

6:                                                ; preds = %2
  ret ptr %3, !dbg !4682
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4683 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4687, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.value(metadata ptr %1, metadata !4688, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.value(metadata ptr %0, metadata !1029, metadata !DIExpression()), !dbg !4690
  call void @llvm.dbg.value(metadata ptr %1, metadata !1030, metadata !DIExpression()), !dbg !4690
  call void @llvm.dbg.value(metadata i64 1, metadata !1031, metadata !DIExpression()), !dbg !4690
  %3 = load i64, ptr %1, align 8, !dbg !4692, !tbaa !1385
  call void @llvm.dbg.value(metadata i64 %3, metadata !1032, metadata !DIExpression()), !dbg !4690
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
  call void @llvm.dbg.value(metadata i64 %13, metadata !1032, metadata !DIExpression()), !dbg !4690
  br i1 %12, label %14, label %15, !dbg !4703

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !4704
  unreachable, !dbg !4704

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4690
  call void @llvm.dbg.value(metadata i64 %16, metadata !1032, metadata !DIExpression()), !dbg !4690
  call void @llvm.dbg.value(metadata ptr %0, metadata !4505, metadata !DIExpression()), !dbg !4705
  call void @llvm.dbg.value(metadata i64 %16, metadata !4508, metadata !DIExpression()), !dbg !4705
  call void @llvm.dbg.value(metadata i64 1, metadata !4509, metadata !DIExpression()), !dbg !4705
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !4707
  call void @llvm.dbg.value(metadata ptr %17, metadata !4513, metadata !DIExpression()), !dbg !4708
  %18 = icmp eq ptr %17, null, !dbg !4710
  br i1 %18, label %19, label %20, !dbg !4711

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !4712
  unreachable, !dbg !4712

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !1029, metadata !DIExpression()), !dbg !4690
  store i64 %16, ptr %1, align 8, !dbg !4713, !tbaa !1385
  ret ptr %17, !dbg !4714
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1024 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1029, metadata !DIExpression()), !dbg !4715
  call void @llvm.dbg.value(metadata ptr %1, metadata !1030, metadata !DIExpression()), !dbg !4715
  call void @llvm.dbg.value(metadata i64 %2, metadata !1031, metadata !DIExpression()), !dbg !4715
  %4 = load i64, ptr %1, align 8, !dbg !4716, !tbaa !1385
  call void @llvm.dbg.value(metadata i64 %4, metadata !1032, metadata !DIExpression()), !dbg !4715
  %5 = icmp eq ptr %0, null, !dbg !4717
  br i1 %5, label %6, label %13, !dbg !4718

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4719
  br i1 %7, label %8, label %20, !dbg !4720

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4721
  call void @llvm.dbg.value(metadata i64 %9, metadata !1032, metadata !DIExpression()), !dbg !4715
  %10 = icmp ugt i64 %2, 128, !dbg !4723
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4724
  call void @llvm.dbg.value(metadata i64 %12, metadata !1032, metadata !DIExpression()), !dbg !4715
  br label %20, !dbg !4725

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4726
  %15 = add nuw i64 %14, 1, !dbg !4726
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4726
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4726
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4726
  call void @llvm.dbg.value(metadata i64 %18, metadata !1032, metadata !DIExpression()), !dbg !4715
  br i1 %17, label %19, label %20, !dbg !4727

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !4728
  unreachable, !dbg !4728

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4715
  call void @llvm.dbg.value(metadata i64 %21, metadata !1032, metadata !DIExpression()), !dbg !4715
  call void @llvm.dbg.value(metadata ptr %0, metadata !4505, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata i64 %21, metadata !4508, metadata !DIExpression()), !dbg !4729
  call void @llvm.dbg.value(metadata i64 %2, metadata !4509, metadata !DIExpression()), !dbg !4729
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !4731
  call void @llvm.dbg.value(metadata ptr %22, metadata !4513, metadata !DIExpression()), !dbg !4732
  %23 = icmp eq ptr %22, null, !dbg !4734
  br i1 %23, label %24, label %25, !dbg !4735

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !4736
  unreachable, !dbg !4736

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !1029, metadata !DIExpression()), !dbg !4715
  store i64 %21, ptr %1, align 8, !dbg !4737, !tbaa !1385
  ret ptr %22, !dbg !4738
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !1036 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1041, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata ptr %1, metadata !1042, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i64 %2, metadata !1043, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i64 %3, metadata !1044, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i64 %4, metadata !1045, metadata !DIExpression()), !dbg !4739
  %6 = load i64, ptr %1, align 8, !dbg !4740, !tbaa !1385
  call void @llvm.dbg.value(metadata i64 %6, metadata !1046, metadata !DIExpression()), !dbg !4739
  %7 = ashr i64 %6, 1, !dbg !4741
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4741
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4741
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4741
  call void @llvm.dbg.value(metadata i64 %10, metadata !1047, metadata !DIExpression()), !dbg !4739
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4743
  call void @llvm.dbg.value(metadata i64 %11, metadata !1047, metadata !DIExpression()), !dbg !4739
  %12 = icmp sgt i64 %3, -1, !dbg !4744
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4746
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4746
  call void @llvm.dbg.value(metadata i64 %15, metadata !1047, metadata !DIExpression()), !dbg !4739
  %16 = icmp slt i64 %4, 0, !dbg !4747
  br i1 %16, label %17, label %30, !dbg !4747

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4747
  br i1 %18, label %19, label %24, !dbg !4747

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4747
  %21 = udiv i64 9223372036854775807, %20, !dbg !4747
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4747
  br i1 %23, label %46, label %43, !dbg !4747

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4747
  br i1 %25, label %43, label %26, !dbg !4747

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4747
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4747
  %29 = icmp ult i64 %28, %15, !dbg !4747
  br i1 %29, label %46, label %43, !dbg !4747

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4747
  br i1 %31, label %43, label %32, !dbg !4747

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4747
  br i1 %33, label %34, label %40, !dbg !4747

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4747
  br i1 %35, label %43, label %36, !dbg !4747

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4747
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4747
  %39 = icmp ult i64 %38, %4, !dbg !4747
  br i1 %39, label %46, label %43, !dbg !4747

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4747
  br i1 %42, label %46, label %43, !dbg !4747

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !1048, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4739
  %44 = mul i64 %15, %4, !dbg !4747
  call void @llvm.dbg.value(metadata i64 %44, metadata !1048, metadata !DIExpression()), !dbg !4739
  %45 = icmp slt i64 %44, 128, !dbg !4747
  br i1 %45, label %46, label %51, !dbg !4747

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !1049, metadata !DIExpression()), !dbg !4739
  %48 = sdiv i64 %47, %4, !dbg !4748
  call void @llvm.dbg.value(metadata i64 %48, metadata !1047, metadata !DIExpression()), !dbg !4739
  %49 = srem i64 %47, %4, !dbg !4751
  %50 = sub nsw i64 %47, %49, !dbg !4752
  call void @llvm.dbg.value(metadata i64 %50, metadata !1048, metadata !DIExpression()), !dbg !4739
  br label %51, !dbg !4753

51:                                               ; preds = %43, %46
  %52 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4739
  %53 = phi i64 [ %50, %46 ], [ %44, %43 ], !dbg !4739
  call void @llvm.dbg.value(metadata i64 %53, metadata !1048, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i64 %52, metadata !1047, metadata !DIExpression()), !dbg !4739
  %54 = icmp eq ptr %0, null, !dbg !4754
  br i1 %54, label %55, label %56, !dbg !4756

55:                                               ; preds = %51
  store i64 0, ptr %1, align 8, !dbg !4757, !tbaa !1385
  br label %56, !dbg !4758

56:                                               ; preds = %55, %51
  %57 = sub nsw i64 %52, %6, !dbg !4759
  %58 = icmp slt i64 %57, %2, !dbg !4761
  br i1 %58, label %59, label %96, !dbg !4762

59:                                               ; preds = %56
  %60 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4763
  %61 = extractvalue { i64, i1 } %60, 1, !dbg !4763
  %62 = extractvalue { i64, i1 } %60, 0, !dbg !4763
  call void @llvm.dbg.value(metadata i64 %62, metadata !1047, metadata !DIExpression()), !dbg !4739
  %63 = icmp sgt i64 %62, %3
  %64 = select i1 %12, i1 %63, i1 false
  %65 = or i1 %61, %64, !dbg !4764
  br i1 %65, label %95, label %66, !dbg !4764

66:                                               ; preds = %59
  br i1 %16, label %67, label %80, !dbg !4765

67:                                               ; preds = %66
  %68 = icmp slt i64 %62, 0, !dbg !4765
  br i1 %68, label %69, label %74, !dbg !4765

69:                                               ; preds = %67
  %70 = sub i64 0, %4, !dbg !4765
  %71 = udiv i64 9223372036854775807, %70, !dbg !4765
  %72 = sub nsw i64 0, %71
  %73 = icmp slt i64 %62, %72, !dbg !4765
  br i1 %73, label %95, label %93, !dbg !4765

74:                                               ; preds = %67
  %75 = icmp eq i64 %4, -1, !dbg !4765
  br i1 %75, label %93, label %76, !dbg !4765

76:                                               ; preds = %74
  %77 = sub i64 0, %4, !dbg !4765
  %78 = udiv i64 -9223372036854775808, %77, !dbg !4765
  %79 = icmp ult i64 %78, %62, !dbg !4765
  br i1 %79, label %95, label %93, !dbg !4765

80:                                               ; preds = %66
  %81 = icmp eq i64 %4, 0, !dbg !4765
  br i1 %81, label %93, label %82, !dbg !4765

82:                                               ; preds = %80
  %83 = icmp slt i64 %62, 0, !dbg !4765
  br i1 %83, label %84, label %90, !dbg !4765

84:                                               ; preds = %82
  %85 = icmp eq i64 %62, -1, !dbg !4765
  br i1 %85, label %93, label %86, !dbg !4765

86:                                               ; preds = %84
  %87 = sub i64 0, %62, !dbg !4765
  %88 = udiv i64 -9223372036854775808, %87, !dbg !4765
  %89 = icmp ult i64 %88, %4, !dbg !4765
  br i1 %89, label %95, label %93, !dbg !4765

90:                                               ; preds = %82
  %91 = udiv i64 9223372036854775807, %4
  %92 = icmp ult i64 %91, %62, !dbg !4765
  br i1 %92, label %95, label %93, !dbg !4765

93:                                               ; preds = %69, %76, %86, %90, %80, %74, %84
  call void @llvm.dbg.value(metadata !DIArgList(i64 %62, i64 %4), metadata !1048, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4739
  %94 = mul i64 %62, %4, !dbg !4765
  call void @llvm.dbg.value(metadata i64 %94, metadata !1048, metadata !DIExpression()), !dbg !4739
  br label %96, !dbg !4766

95:                                               ; preds = %69, %76, %86, %90, %59
  tail call void @xalloc_die() #39, !dbg !4767
  unreachable, !dbg !4767

96:                                               ; preds = %93, %56
  %97 = phi i64 [ %62, %93 ], [ %52, %56 ], !dbg !4739
  %98 = phi i64 [ %94, %93 ], [ %53, %56 ], !dbg !4739
  call void @llvm.dbg.value(metadata i64 %98, metadata !1048, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata i64 %97, metadata !1047, metadata !DIExpression()), !dbg !4739
  call void @llvm.dbg.value(metadata ptr %0, metadata !4585, metadata !DIExpression()), !dbg !4768
  call void @llvm.dbg.value(metadata i64 %98, metadata !4586, metadata !DIExpression()), !dbg !4768
  call void @llvm.dbg.value(metadata ptr %0, metadata !4588, metadata !DIExpression()), !dbg !4770
  call void @llvm.dbg.value(metadata i64 %98, metadata !4592, metadata !DIExpression()), !dbg !4770
  %99 = icmp eq i64 %98, 0, !dbg !4772
  %100 = select i1 %99, i64 1, i64 %98, !dbg !4772
  %101 = tail call ptr @realloc(ptr noundef %0, i64 noundef %100) #44, !dbg !4773
  call void @llvm.dbg.value(metadata ptr %101, metadata !4513, metadata !DIExpression()), !dbg !4774
  %102 = icmp eq ptr %101, null, !dbg !4776
  br i1 %102, label %103, label %104, !dbg !4777

103:                                              ; preds = %96
  tail call void @xalloc_die() #39, !dbg !4778
  unreachable, !dbg !4778

104:                                              ; preds = %96
  call void @llvm.dbg.value(metadata ptr %101, metadata !1041, metadata !DIExpression()), !dbg !4739
  store i64 %97, ptr %1, align 8, !dbg !4779, !tbaa !1385
  ret ptr %101, !dbg !4780
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4781 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4783, metadata !DIExpression()), !dbg !4784
  call void @llvm.dbg.value(metadata i64 %0, metadata !4785, metadata !DIExpression()), !dbg !4789
  call void @llvm.dbg.value(metadata i64 1, metadata !4788, metadata !DIExpression()), !dbg !4789
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !4791
  call void @llvm.dbg.value(metadata ptr %2, metadata !4513, metadata !DIExpression()), !dbg !4792
  %3 = icmp eq ptr %2, null, !dbg !4794
  br i1 %3, label %4, label %5, !dbg !4795

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4796
  unreachable, !dbg !4796

5:                                                ; preds = %1
  ret ptr %2, !dbg !4797
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4798 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4786 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4785, metadata !DIExpression()), !dbg !4799
  call void @llvm.dbg.value(metadata i64 %1, metadata !4788, metadata !DIExpression()), !dbg !4799
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !4800
  call void @llvm.dbg.value(metadata ptr %3, metadata !4513, metadata !DIExpression()), !dbg !4801
  %4 = icmp eq ptr %3, null, !dbg !4803
  br i1 %4, label %5, label %6, !dbg !4804

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4805
  unreachable, !dbg !4805

6:                                                ; preds = %2
  ret ptr %3, !dbg !4806
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4807 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4809, metadata !DIExpression()), !dbg !4810
  call void @llvm.dbg.value(metadata i64 %0, metadata !4811, metadata !DIExpression()), !dbg !4815
  call void @llvm.dbg.value(metadata i64 1, metadata !4814, metadata !DIExpression()), !dbg !4815
  call void @llvm.dbg.value(metadata i64 %0, metadata !4817, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata i64 1, metadata !4820, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata i64 %0, metadata !4817, metadata !DIExpression()), !dbg !4821
  call void @llvm.dbg.value(metadata i64 1, metadata !4820, metadata !DIExpression()), !dbg !4821
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !4823
  call void @llvm.dbg.value(metadata ptr %2, metadata !4513, metadata !DIExpression()), !dbg !4824
  %3 = icmp eq ptr %2, null, !dbg !4826
  br i1 %3, label %4, label %5, !dbg !4827

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4828
  unreachable, !dbg !4828

5:                                                ; preds = %1
  ret ptr %2, !dbg !4829
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4812 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4811, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i64 %1, metadata !4814, metadata !DIExpression()), !dbg !4830
  call void @llvm.dbg.value(metadata i64 %0, metadata !4817, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i64 %1, metadata !4820, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i64 %0, metadata !4817, metadata !DIExpression()), !dbg !4831
  call void @llvm.dbg.value(metadata i64 %1, metadata !4820, metadata !DIExpression()), !dbg !4831
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !4833
  call void @llvm.dbg.value(metadata ptr %3, metadata !4513, metadata !DIExpression()), !dbg !4834
  %4 = icmp eq ptr %3, null, !dbg !4836
  br i1 %4, label %5, label %6, !dbg !4837

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4838
  unreachable, !dbg !4838

6:                                                ; preds = %2
  ret ptr %3, !dbg !4839
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4840 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4844, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i64 %1, metadata !4845, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i64 %1, metadata !4537, metadata !DIExpression()), !dbg !4847
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #42, !dbg !4849
  call void @llvm.dbg.value(metadata ptr %3, metadata !4513, metadata !DIExpression()), !dbg !4850
  %4 = icmp eq ptr %3, null, !dbg !4852
  br i1 %4, label %5, label %6, !dbg !4853

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4854
  unreachable, !dbg !4854

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4855, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.value(metadata ptr %0, metadata !4858, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.value(metadata i64 %1, metadata !4859, metadata !DIExpression()), !dbg !4860
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4862
  ret ptr %3, !dbg !4863
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4864 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4868, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata i64 %1, metadata !4869, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata i64 %1, metadata !4551, metadata !DIExpression()), !dbg !4871
  call void @llvm.dbg.value(metadata i64 %1, metadata !4553, metadata !DIExpression()), !dbg !4873
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #42, !dbg !4875
  call void @llvm.dbg.value(metadata ptr %3, metadata !4513, metadata !DIExpression()), !dbg !4876
  %4 = icmp eq ptr %3, null, !dbg !4878
  br i1 %4, label %5, label %6, !dbg !4879

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4880
  unreachable, !dbg !4880

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4855, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata ptr %0, metadata !4858, metadata !DIExpression()), !dbg !4881
  call void @llvm.dbg.value(metadata i64 %1, metadata !4859, metadata !DIExpression()), !dbg !4881
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4883
  ret ptr %3, !dbg !4884
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4885 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4889, metadata !DIExpression()), !dbg !4892
  call void @llvm.dbg.value(metadata i64 %1, metadata !4890, metadata !DIExpression()), !dbg !4892
  %3 = add nsw i64 %1, 1, !dbg !4893
  call void @llvm.dbg.value(metadata i64 %3, metadata !4551, metadata !DIExpression()), !dbg !4894
  call void @llvm.dbg.value(metadata i64 %3, metadata !4553, metadata !DIExpression()), !dbg !4896
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #42, !dbg !4898
  call void @llvm.dbg.value(metadata ptr %4, metadata !4513, metadata !DIExpression()), !dbg !4899
  %5 = icmp eq ptr %4, null, !dbg !4901
  br i1 %5, label %6, label %7, !dbg !4902

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4903
  unreachable, !dbg !4903

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4891, metadata !DIExpression()), !dbg !4892
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4904
  store i8 0, ptr %8, align 1, !dbg !4905, !tbaa !1166
  call void @llvm.dbg.value(metadata ptr %4, metadata !4855, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata ptr %0, metadata !4858, metadata !DIExpression()), !dbg !4906
  call void @llvm.dbg.value(metadata i64 %1, metadata !4859, metadata !DIExpression()), !dbg !4906
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4908
  ret ptr %4, !dbg !4909
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4910 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4912, metadata !DIExpression()), !dbg !4913
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !4914
  %3 = add i64 %2, 1, !dbg !4915
  call void @llvm.dbg.value(metadata ptr %0, metadata !4844, metadata !DIExpression()), !dbg !4916
  call void @llvm.dbg.value(metadata i64 %3, metadata !4845, metadata !DIExpression()), !dbg !4916
  call void @llvm.dbg.value(metadata i64 %3, metadata !4537, metadata !DIExpression()), !dbg !4918
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #42, !dbg !4920
  call void @llvm.dbg.value(metadata ptr %4, metadata !4513, metadata !DIExpression()), !dbg !4921
  %5 = icmp eq ptr %4, null, !dbg !4923
  br i1 %5, label %6, label %7, !dbg !4924

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4925
  unreachable, !dbg !4925

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4855, metadata !DIExpression()), !dbg !4926
  call void @llvm.dbg.value(metadata ptr %0, metadata !4858, metadata !DIExpression()), !dbg !4926
  call void @llvm.dbg.value(metadata i64 %3, metadata !4859, metadata !DIExpression()), !dbg !4926
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !4928
  ret ptr %4, !dbg !4929
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4930 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4935, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %1, metadata !4932, metadata !DIExpression()), !dbg !4936
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.166, ptr noundef nonnull @.str.2.167, i32 noundef 5) #37, !dbg !4935
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.168, ptr noundef %2) #37, !dbg !4935
  %3 = icmp eq i32 %1, 0, !dbg !4935
  tail call void @llvm.assume(i1 %3), !dbg !4935
  tail call void @abort() #39, !dbg !4937
  unreachable, !dbg !4937
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4938 {
  %3 = alloca [81 x i8], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !4976, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.value(metadata ptr %1, metadata !4977, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.value(metadata i32 0, metadata !4978, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.value(metadata i32 0, metadata !4979, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.value(metadata i8 0, metadata !4980, metadata !DIExpression()), !dbg !5000
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #37, !dbg !5001
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4981, metadata !DIExpression()), !dbg !5002
  call void @llvm.dbg.value(metadata ptr %1, metadata !4985, metadata !DIExpression()), !dbg !5003
  call void @llvm.dbg.value(metadata ptr %3, metadata !4987, metadata !DIExpression()), !dbg !5003
  call void @llvm.dbg.value(metadata i32 0, metadata !4978, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.value(metadata i32 0, metadata !4979, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.value(metadata i8 0, metadata !4980, metadata !DIExpression()), !dbg !5000
  %4 = load i8, ptr %1, align 1, !dbg !5004, !tbaa !1166
  %5 = icmp eq i8 %4, 0, !dbg !5005
  br i1 %5, label %6, label %7, !dbg !5006

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4987, metadata !DIExpression()), !dbg !5003
  store i8 0, ptr %3, align 16, !dbg !5007, !tbaa !1166
  br label %74, !dbg !5008

7:                                                ; preds = %2, %47
  %8 = phi i8 [ %54, %47 ], [ %4, %2 ]
  %9 = phi ptr [ %53, %47 ], [ %3, %2 ]
  %10 = phi i32 [ %51, %47 ], [ 0, %2 ]
  %11 = phi i32 [ %50, %47 ], [ 0, %2 ]
  %12 = phi i64 [ %49, %47 ], [ 0, %2 ]
  %13 = phi ptr [ %52, %47 ], [ %1, %2 ]
  %14 = phi i8 [ %48, %47 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %10, metadata !4978, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.value(metadata i32 %11, metadata !4979, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.value(metadata ptr %13, metadata !4985, metadata !DIExpression()), !dbg !5003
  call void @llvm.dbg.value(metadata i8 %14, metadata !4980, metadata !DIExpression()), !dbg !5000
  %15 = sext i8 %8 to i32, !dbg !5004
  switch i32 %15, label %42 [
    i32 114, label %16
    i32 119, label %20
    i32 97, label %25
    i32 98, label %30
    i32 43, label %34
    i32 120, label %38
    i32 101, label %40
  ], !dbg !5009

16:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 0, metadata !4978, metadata !DIExpression()), !dbg !5000
  %17 = icmp slt i64 %12, 80, !dbg !5010
  br i1 %17, label %18, label %47, !dbg !5013

18:                                               ; preds = %16
  %19 = add nsw i64 %12, 1, !dbg !5014
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %19), metadata !4987, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5003
  store i8 %8, ptr %9, align 1, !dbg !5015, !tbaa !1166
  br label %47, !dbg !5016

20:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !4978, metadata !DIExpression()), !dbg !5000
  %21 = or i32 %11, 576, !dbg !5017
  call void @llvm.dbg.value(metadata i32 %21, metadata !4979, metadata !DIExpression()), !dbg !5000
  %22 = icmp slt i64 %12, 80, !dbg !5018
  br i1 %22, label %23, label %47, !dbg !5020

23:                                               ; preds = %20
  %24 = add nsw i64 %12, 1, !dbg !5021
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %24), metadata !4987, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5003
  store i8 %8, ptr %9, align 1, !dbg !5022, !tbaa !1166
  br label %47, !dbg !5023

25:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 1, metadata !4978, metadata !DIExpression()), !dbg !5000
  %26 = or i32 %11, 1088, !dbg !5024
  call void @llvm.dbg.value(metadata i32 %26, metadata !4979, metadata !DIExpression()), !dbg !5000
  %27 = icmp slt i64 %12, 80, !dbg !5025
  br i1 %27, label %28, label %47, !dbg !5027

28:                                               ; preds = %25
  %29 = add nsw i64 %12, 1, !dbg !5028
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4987, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5003
  store i8 %8, ptr %9, align 1, !dbg !5029, !tbaa !1166
  br label %47, !dbg !5030

30:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 %11, metadata !4979, metadata !DIExpression()), !dbg !5000
  %31 = icmp slt i64 %12, 80, !dbg !5031
  br i1 %31, label %32, label %47, !dbg !5033

32:                                               ; preds = %30
  %33 = add nsw i64 %12, 1, !dbg !5034
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4987, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5003
  store i8 %8, ptr %9, align 1, !dbg !5035, !tbaa !1166
  br label %47, !dbg !5036

34:                                               ; preds = %7
  call void @llvm.dbg.value(metadata i32 2, metadata !4978, metadata !DIExpression()), !dbg !5000
  %35 = icmp slt i64 %12, 80, !dbg !5037
  br i1 %35, label %36, label %47, !dbg !5039

36:                                               ; preds = %34
  %37 = add nsw i64 %12, 1, !dbg !5040
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %37), metadata !4987, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5003
  store i8 %8, ptr %9, align 1, !dbg !5041, !tbaa !1166
  br label %47, !dbg !5042

38:                                               ; preds = %7
  %39 = or i32 %11, 128, !dbg !5043
  call void @llvm.dbg.value(metadata i32 %39, metadata !4979, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.value(metadata i8 1, metadata !4980, metadata !DIExpression()), !dbg !5000
  br label %47, !dbg !5044

40:                                               ; preds = %7
  %41 = or i32 %11, 524288, !dbg !5045
  call void @llvm.dbg.value(metadata i32 %41, metadata !4979, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.value(metadata i8 1, metadata !4980, metadata !DIExpression()), !dbg !5000
  br label %47, !dbg !5046

42:                                               ; preds = %7
  %43 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #38, !dbg !5047
  call void @llvm.dbg.value(metadata i64 %43, metadata !4988, metadata !DIExpression()), !dbg !5048
  %44 = sub nsw i64 80, %12, !dbg !5049
  %45 = tail call i64 @llvm.umin.i64(i64 %43, i64 %44), !dbg !5051
  call void @llvm.dbg.value(metadata i64 %45, metadata !4988, metadata !DIExpression()), !dbg !5048
  call void @llvm.dbg.value(metadata ptr %9, metadata !5052, metadata !DIExpression()), !dbg !5057
  call void @llvm.dbg.value(metadata ptr %13, metadata !5055, metadata !DIExpression()), !dbg !5057
  call void @llvm.dbg.value(metadata i64 %45, metadata !5056, metadata !DIExpression()), !dbg !5057
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %9, ptr noundef nonnull align 1 %13, i64 noundef %45, i1 noundef false) #37, !dbg !5059
  %46 = getelementptr inbounds i8, ptr %9, i64 %45, !dbg !5060
  call void @llvm.dbg.value(metadata ptr %46, metadata !4987, metadata !DIExpression()), !dbg !5003
  br label %56, !dbg !5061

47:                                               ; preds = %34, %36, %30, %32, %25, %28, %20, %23, %16, %18, %40, %38
  %48 = phi i8 [ 1, %40 ], [ 1, %38 ], [ %14, %36 ], [ %14, %34 ], [ %14, %32 ], [ %14, %30 ], [ %14, %28 ], [ %14, %25 ], [ %14, %23 ], [ %14, %20 ], [ %14, %18 ], [ %14, %16 ], !dbg !5000
  %49 = phi i64 [ %12, %40 ], [ %12, %38 ], [ %37, %36 ], [ %12, %34 ], [ %33, %32 ], [ %12, %30 ], [ %29, %28 ], [ %12, %25 ], [ %24, %23 ], [ %12, %20 ], [ %19, %18 ], [ %12, %16 ]
  %50 = phi i32 [ %41, %40 ], [ %39, %38 ], [ %11, %36 ], [ %11, %34 ], [ %11, %32 ], [ %11, %30 ], [ %26, %28 ], [ %26, %25 ], [ %21, %23 ], [ %21, %20 ], [ %11, %18 ], [ %11, %16 ], !dbg !5000
  %51 = phi i32 [ %10, %40 ], [ %10, %38 ], [ 2, %36 ], [ 2, %34 ], [ %10, %32 ], [ %10, %30 ], [ 1, %28 ], [ 1, %25 ], [ 1, %23 ], [ 1, %20 ], [ 0, %18 ], [ 0, %16 ], !dbg !5000
  call void @llvm.dbg.value(metadata i32 %51, metadata !4978, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.value(metadata i32 %50, metadata !4979, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %49), metadata !4987, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !5003
  call void @llvm.dbg.value(metadata i8 %48, metadata !4980, metadata !DIExpression()), !dbg !5000
  %52 = getelementptr inbounds i8, ptr %13, i64 1, !dbg !5062
  call void @llvm.dbg.value(metadata ptr %52, metadata !4985, metadata !DIExpression()), !dbg !5003
  %53 = getelementptr inbounds i8, ptr %3, i64 %49, !dbg !5000
  call void @llvm.dbg.value(metadata ptr %53, metadata !4987, metadata !DIExpression()), !dbg !5003
  %54 = load i8, ptr %52, align 1, !dbg !5004, !tbaa !1166
  %55 = icmp eq i8 %54, 0, !dbg !5005
  br i1 %55, label %56, label %7, !dbg !5006, !llvm.loop !5063

56:                                               ; preds = %47, %42
  %57 = phi i8 [ %14, %42 ], [ %48, %47 ]
  %58 = phi i32 [ %11, %42 ], [ %50, %47 ]
  %59 = phi i32 [ %10, %42 ], [ %51, %47 ]
  %60 = phi ptr [ %46, %42 ], [ %53, %47 ], !dbg !5003
  call void @llvm.dbg.value(metadata ptr %60, metadata !4987, metadata !DIExpression()), !dbg !5003
  store i8 0, ptr %60, align 1, !dbg !5007, !tbaa !1166
  %61 = and i8 %57, 1, !dbg !5065
  %62 = icmp eq i8 %61, 0, !dbg !5065
  br i1 %62, label %74, label %63, !dbg !5008

63:                                               ; preds = %56
  %64 = or i32 %59, %58, !dbg !5066
  %65 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %64, i32 noundef 438) #37, !dbg !5067
  call void @llvm.dbg.value(metadata i32 %65, metadata !4993, metadata !DIExpression()), !dbg !5068
  %66 = icmp slt i32 %65, 0, !dbg !5069
  br i1 %66, label %76, label %67, !dbg !5071

67:                                               ; preds = %63
  %68 = call noalias ptr @fdopen(i32 noundef %65, ptr noundef nonnull %3) #37, !dbg !5072
  call void @llvm.dbg.value(metadata ptr %68, metadata !4996, metadata !DIExpression()), !dbg !5068
  %69 = icmp eq ptr %68, null, !dbg !5073
  br i1 %69, label %70, label %76, !dbg !5074

70:                                               ; preds = %67
  %71 = tail call ptr @__errno_location() #40, !dbg !5075
  %72 = load i32, ptr %71, align 4, !dbg !5075, !tbaa !1157
  call void @llvm.dbg.value(metadata i32 %72, metadata !4997, metadata !DIExpression()), !dbg !5076
  %73 = tail call i32 @close(i32 noundef %65) #37, !dbg !5077
  store i32 %72, ptr %71, align 4, !dbg !5078, !tbaa !1157
  br label %76, !dbg !5079

74:                                               ; preds = %6, %56
  call void @llvm.dbg.value(metadata ptr %0, metadata !5080, metadata !DIExpression()), !dbg !5084
  call void @llvm.dbg.value(metadata ptr %1, metadata !5083, metadata !DIExpression()), !dbg !5084
  %75 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !5086
  br label %76, !dbg !5087

76:                                               ; preds = %63, %70, %67, %74
  %77 = phi ptr [ %75, %74 ], [ null, %63 ], [ null, %70 ], [ %68, %67 ], !dbg !5000
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #37, !dbg !5088
  ret ptr %77, !dbg !5088
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !5089 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #34

; Function Attrs: nofree nounwind
declare !dbg !5092 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !5095 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !5096 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !5099 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5137, metadata !DIExpression()), !dbg !5142
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !5143
  call void @llvm.dbg.value(metadata i1 poison, metadata !5138, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5142
  call void @llvm.dbg.value(metadata ptr %0, metadata !5144, metadata !DIExpression()), !dbg !5147
  %3 = load i32, ptr %0, align 8, !dbg !5149, !tbaa !1419
  %4 = and i32 %3, 32, !dbg !5150
  %5 = icmp eq i32 %4, 0, !dbg !5150
  call void @llvm.dbg.value(metadata i1 %5, metadata !5140, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5142
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !5151
  %7 = icmp eq i32 %6, 0, !dbg !5152
  call void @llvm.dbg.value(metadata i1 %7, metadata !5141, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5142
  br i1 %5, label %8, label %18, !dbg !5153

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5155
  call void @llvm.dbg.value(metadata i1 %9, metadata !5138, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5142
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5156
  %11 = xor i1 %7, true, !dbg !5156
  %12 = sext i1 %11 to i32, !dbg !5156
  br i1 %10, label %21, label %13, !dbg !5156

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !5157
  %15 = load i32, ptr %14, align 4, !dbg !5157, !tbaa !1157
  %16 = icmp ne i32 %15, 9, !dbg !5158
  %17 = sext i1 %16 to i32, !dbg !5159
  br label %21, !dbg !5159

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5160

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !5162
  store i32 0, ptr %20, align 4, !dbg !5164, !tbaa !1157
  br label %21, !dbg !5162

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5142
  ret i32 %22, !dbg !5165
}

; Function Attrs: nounwind
declare !dbg !5166 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5169 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5174, metadata !DIExpression()), !dbg !5179
  call void @llvm.dbg.value(metadata ptr %1, metadata !5175, metadata !DIExpression()), !dbg !5179
  call void @llvm.dbg.value(metadata i64 %2, metadata !5176, metadata !DIExpression()), !dbg !5179
  call void @llvm.dbg.value(metadata ptr %3, metadata !5177, metadata !DIExpression()), !dbg !5179
  %5 = icmp eq ptr %1, null, !dbg !5180
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5182
  %7 = select i1 %5, ptr @.str.175, ptr %1, !dbg !5182
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5182
  call void @llvm.dbg.value(metadata i64 %8, metadata !5176, metadata !DIExpression()), !dbg !5179
  call void @llvm.dbg.value(metadata ptr %7, metadata !5175, metadata !DIExpression()), !dbg !5179
  call void @llvm.dbg.value(metadata ptr %6, metadata !5174, metadata !DIExpression()), !dbg !5179
  %9 = icmp eq ptr %3, null, !dbg !5183
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5185
  call void @llvm.dbg.value(metadata ptr %10, metadata !5177, metadata !DIExpression()), !dbg !5179
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #37, !dbg !5186
  call void @llvm.dbg.value(metadata i64 %11, metadata !5178, metadata !DIExpression()), !dbg !5179
  %12 = icmp ult i64 %11, -3, !dbg !5187
  br i1 %12, label %13, label %17, !dbg !5189

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #38, !dbg !5190
  %15 = icmp eq i32 %14, 0, !dbg !5190
  br i1 %15, label %16, label %29, !dbg !5191

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5192, metadata !DIExpression()), !dbg !5197
  call void @llvm.dbg.value(metadata ptr %10, metadata !5199, metadata !DIExpression()), !dbg !5204
  call void @llvm.dbg.value(metadata i32 0, metadata !5202, metadata !DIExpression()), !dbg !5204
  call void @llvm.dbg.value(metadata i64 8, metadata !5203, metadata !DIExpression()), !dbg !5204
  store i64 0, ptr %10, align 1, !dbg !5206
  br label %29, !dbg !5207

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5208
  br i1 %18, label %19, label %20, !dbg !5210

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !5211
  unreachable, !dbg !5211

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5212

22:                                               ; preds = %20
  %23 = tail call zeroext i1 @hard_locale(i32 noundef 0) #37, !dbg !5214
  br i1 %23, label %29, label %24, !dbg !5215

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5216
  br i1 %25, label %29, label %26, !dbg !5219

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5220, !tbaa !1166
  %28 = zext i8 %27 to i32, !dbg !5221
  store i32 %28, ptr %6, align 4, !dbg !5222, !tbaa !1157
  br label %29, !dbg !5223

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5179
  ret i64 %30, !dbg !5224
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5225 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !5230 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5232, metadata !DIExpression()), !dbg !5236
  call void @llvm.dbg.value(metadata i64 %1, metadata !5233, metadata !DIExpression()), !dbg !5236
  call void @llvm.dbg.value(metadata i64 %2, metadata !5234, metadata !DIExpression()), !dbg !5236
  %4 = icmp eq i64 %2, 0, !dbg !5237
  br i1 %4, label %8, label %5, !dbg !5237

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5237
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5237
  br i1 %7, label %13, label %8, !dbg !5237

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5235, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5236
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5235, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5236
  %9 = mul i64 %2, %1, !dbg !5237
  call void @llvm.dbg.value(metadata i64 %9, metadata !5235, metadata !DIExpression()), !dbg !5236
  call void @llvm.dbg.value(metadata ptr %0, metadata !5239, metadata !DIExpression()), !dbg !5243
  call void @llvm.dbg.value(metadata i64 %9, metadata !5242, metadata !DIExpression()), !dbg !5243
  %10 = icmp eq i64 %9, 0, !dbg !5245
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5245
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !5246
  br label %15, !dbg !5247

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5235, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5236
  %14 = tail call ptr @__errno_location() #40, !dbg !5248
  store i32 12, ptr %14, align 4, !dbg !5250, !tbaa !1157
  br label %15, !dbg !5251

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5236
  ret ptr %16, !dbg !5252
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5253 {
  %2 = alloca [257 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !5255, metadata !DIExpression()), !dbg !5260
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !5261
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5256, metadata !DIExpression()), !dbg !5262
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !5263
  %4 = icmp eq i32 %3, 0, !dbg !5263
  br i1 %4, label %5, label %12, !dbg !5265

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5266, metadata !DIExpression()), !dbg !5270
  %6 = load i16, ptr %2, align 16, !dbg !5273
  %7 = icmp eq i16 %6, 67, !dbg !5273
  br i1 %7, label %11, label %8, !dbg !5274

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5266, metadata !DIExpression()), !dbg !5275
  call void @llvm.dbg.value(metadata ptr @.str.1.180, metadata !5269, metadata !DIExpression()), !dbg !5275
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.180, i64 6), !dbg !5277
  %10 = icmp eq i32 %9, 0, !dbg !5278
  br i1 %10, label %11, label %12, !dbg !5279

11:                                               ; preds = %8, %5
  br label %12, !dbg !5280

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5260
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !5281
  ret i1 %13, !dbg !5281
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5282 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5286, metadata !DIExpression()), !dbg !5289
  call void @llvm.dbg.value(metadata ptr %1, metadata !5287, metadata !DIExpression()), !dbg !5289
  call void @llvm.dbg.value(metadata i64 %2, metadata !5288, metadata !DIExpression()), !dbg !5289
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !5290
  ret i32 %4, !dbg !5291
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5292 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5296, metadata !DIExpression()), !dbg !5297
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !5298
  ret ptr %2, !dbg !5299
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5300 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5302, metadata !DIExpression()), !dbg !5304
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !5305
  call void @llvm.dbg.value(metadata ptr %2, metadata !5303, metadata !DIExpression()), !dbg !5304
  ret ptr %2, !dbg !5306
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5307 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5309, metadata !DIExpression()), !dbg !5316
  call void @llvm.dbg.value(metadata ptr %1, metadata !5310, metadata !DIExpression()), !dbg !5316
  call void @llvm.dbg.value(metadata i64 %2, metadata !5311, metadata !DIExpression()), !dbg !5316
  call void @llvm.dbg.value(metadata i32 %0, metadata !5302, metadata !DIExpression()), !dbg !5317
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !5319
  call void @llvm.dbg.value(metadata ptr %4, metadata !5303, metadata !DIExpression()), !dbg !5317
  call void @llvm.dbg.value(metadata ptr %4, metadata !5312, metadata !DIExpression()), !dbg !5316
  %5 = icmp eq ptr %4, null, !dbg !5320
  br i1 %5, label %6, label %9, !dbg !5321

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5322
  br i1 %7, label %19, label %8, !dbg !5325

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5326, !tbaa !1166
  br label %19, !dbg !5327

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !5328
  call void @llvm.dbg.value(metadata i64 %10, metadata !5313, metadata !DIExpression()), !dbg !5329
  %11 = icmp ult i64 %10, %2, !dbg !5330
  br i1 %11, label %12, label %14, !dbg !5332

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5333
  call void @llvm.dbg.value(metadata ptr %1, metadata !5335, metadata !DIExpression()), !dbg !5340
  call void @llvm.dbg.value(metadata ptr %4, metadata !5338, metadata !DIExpression()), !dbg !5340
  call void @llvm.dbg.value(metadata i64 %13, metadata !5339, metadata !DIExpression()), !dbg !5340
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #37, !dbg !5342
  br label %19, !dbg !5343

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5344
  br i1 %15, label %19, label %16, !dbg !5347

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5348
  call void @llvm.dbg.value(metadata ptr %1, metadata !5335, metadata !DIExpression()), !dbg !5350
  call void @llvm.dbg.value(metadata ptr %4, metadata !5338, metadata !DIExpression()), !dbg !5350
  call void @llvm.dbg.value(metadata i64 %17, metadata !5339, metadata !DIExpression()), !dbg !5350
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !5352
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5353
  store i8 0, ptr %18, align 1, !dbg !5354, !tbaa !1166
  br label %19, !dbg !5355

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5356
  ret i32 %20, !dbg !5357
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
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind willreturn memory(argmem: read) }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #26 = { inlinehint nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nounwind allocsize(1,2) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind allocsize(0) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nounwind allocsize(1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nounwind allocsize(0,1) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { nounwind allocsize(0) }
attributes #43 = { cold }
attributes #44 = { nounwind allocsize(1) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!69, !441, !683, !687, !702, !968, !1000, !1003, !1005, !1008, !1010, !1012, !749, !763, !810, !1014, !962, !1020, !1051, !1053, !1055, !984, !1057, !1060, !1064, !1066}
!llvm.ident = !{!1068, !1068, !1068, !1068, !1068, !1068, !1068, !1068, !1068, !1068, !1068, !1068, !1068, !1068, !1068, !1068, !1068, !1068, !1068, !1068, !1068, !1068, !1068, !1068, !1068, !1068}
!llvm.module.flags = !{!1069, !1070, !1071, !1072, !1073, !1074}

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
!68 = distinct !DIGlobalVariable(name: "longopts", scope: !69, file: !2, line: 62, type: !429, isLocal: true, isDefinition: true)
!69 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !106, globals: !118, splitDebugInlining: false, nameTableKind: None)
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
!106 = !{!107, !108, !109, !110, !111, !77, !112, !113, !115, !117}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!109 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!110 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!111 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!112 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !114, line: 46, baseType: !111)
!114 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!117 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!118 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !57, !62, !119, !124, !129, !134, !139, !144, !225, !230, !232, !237, !242, !247, !249, !251, !256, !258, !260, !262, !267, !272, !274, !276, !278, !280, !282, !284, !289, !294, !296, !301, !303, !305, !307, !309, !311, !316, !318, !320, !325, !330, !335, !340, !342, !344, !349, !351, !67, !353, !422, !427}
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 314, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 14)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !2, line: 314, type: !126, isLocal: true, isDefinition: true)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 16)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !2, line: 322, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 28)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !76, line: 729, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 56)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !76, line: 736, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 75)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !146, file: !76, line: 575, type: !77, isLocal: true, isDefinition: true)
!146 = distinct !DISubprogram(name: "oputs_", scope: !76, file: !76, line: 573, type: !147, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !149)
!147 = !DISubroutineType(cc: DW_CC_nocall, types: !148)
!148 = !{null, !115, !115}
!149 = !{!150, !151, !152, !155, !156, !157, !158, !162, !163, !164, !165, !167, !219, !220, !221, !223, !224}
!150 = !DILocalVariable(name: "program", arg: 1, scope: !146, file: !76, line: 573, type: !115)
!151 = !DILocalVariable(name: "option", arg: 2, scope: !146, file: !76, line: 573, type: !115)
!152 = !DILocalVariable(name: "term", scope: !153, file: !76, line: 585, type: !115)
!153 = distinct !DILexicalBlock(scope: !154, file: !76, line: 582, column: 5)
!154 = distinct !DILexicalBlock(scope: !146, file: !76, line: 581, column: 7)
!155 = !DILocalVariable(name: "double_space", scope: !146, file: !76, line: 594, type: !109)
!156 = !DILocalVariable(name: "first_word", scope: !146, file: !76, line: 595, type: !115)
!157 = !DILocalVariable(name: "option_text", scope: !146, file: !76, line: 596, type: !115)
!158 = !DILocalVariable(name: "s", scope: !159, file: !76, line: 608, type: !115)
!159 = distinct !DILexicalBlock(scope: !160, file: !76, line: 605, column: 5)
!160 = distinct !DILexicalBlock(scope: !161, file: !76, line: 604, column: 12)
!161 = distinct !DILexicalBlock(scope: !146, file: !76, line: 597, column: 7)
!162 = !DILocalVariable(name: "spaces", scope: !159, file: !76, line: 609, type: !113)
!163 = !DILocalVariable(name: "anchor_len", scope: !146, file: !76, line: 620, type: !113)
!164 = !DILocalVariable(name: "desc_text", scope: !146, file: !76, line: 625, type: !115)
!165 = !DILocalVariable(name: "__ptr", scope: !166, file: !76, line: 644, type: !115)
!166 = distinct !DILexicalBlock(scope: !146, file: !76, line: 644, column: 3)
!167 = !DILocalVariable(name: "__stream", scope: !166, file: !76, line: 644, type: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 7, baseType: !171)
!170 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !173)
!172 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!173 = !{!174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !189, !191, !192, !193, !196, !197, !199, !200, !203, !205, !208, !211, !212, !213, !214, !215}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !171, file: !172, line: 51, baseType: !77, size: 32)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !171, file: !172, line: 54, baseType: !107, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !171, file: !172, line: 55, baseType: !107, size: 64, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !171, file: !172, line: 56, baseType: !107, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !171, file: !172, line: 57, baseType: !107, size: 64, offset: 256)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !171, file: !172, line: 58, baseType: !107, size: 64, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !171, file: !172, line: 59, baseType: !107, size: 64, offset: 384)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !171, file: !172, line: 60, baseType: !107, size: 64, offset: 448)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !171, file: !172, line: 61, baseType: !107, size: 64, offset: 512)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !171, file: !172, line: 64, baseType: !107, size: 64, offset: 576)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !171, file: !172, line: 65, baseType: !107, size: 64, offset: 640)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !171, file: !172, line: 66, baseType: !107, size: 64, offset: 704)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !171, file: !172, line: 68, baseType: !187, size: 64, offset: 768)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !172, line: 36, flags: DIFlagFwdDecl)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !171, file: !172, line: 70, baseType: !190, size: 64, offset: 832)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !171, file: !172, line: 72, baseType: !77, size: 32, offset: 896)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !171, file: !172, line: 73, baseType: !77, size: 32, offset: 928)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !171, file: !172, line: 74, baseType: !194, size: 64, offset: 960)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !195, line: 152, baseType: !110)
!195 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !171, file: !172, line: 77, baseType: !112, size: 16, offset: 1024)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !171, file: !172, line: 78, baseType: !198, size: 8, offset: 1040)
!198 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !171, file: !172, line: 79, baseType: !49, size: 8, offset: 1048)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !171, file: !172, line: 81, baseType: !201, size: 64, offset: 1088)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !172, line: 43, baseType: null)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !171, file: !172, line: 89, baseType: !204, size: 64, offset: 1152)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !195, line: 153, baseType: !110)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !171, file: !172, line: 91, baseType: !206, size: 64, offset: 1216)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !172, line: 37, flags: DIFlagFwdDecl)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !171, file: !172, line: 92, baseType: !209, size: 64, offset: 1280)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !172, line: 38, flags: DIFlagFwdDecl)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !171, file: !172, line: 93, baseType: !190, size: 64, offset: 1344)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !171, file: !172, line: 94, baseType: !108, size: 64, offset: 1408)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !171, file: !172, line: 95, baseType: !113, size: 64, offset: 1472)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !171, file: !172, line: 96, baseType: !77, size: 32, offset: 1536)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !171, file: !172, line: 98, baseType: !216, size: 160, offset: 1568)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 20)
!219 = !DILocalVariable(name: "__cnt", scope: !166, file: !76, line: 644, type: !113)
!220 = !DILocalVariable(name: "url_program", scope: !146, file: !76, line: 648, type: !115)
!221 = !DILocalVariable(name: "__ptr", scope: !222, file: !76, line: 686, type: !115)
!222 = distinct !DILexicalBlock(scope: !146, file: !76, line: 686, column: 3)
!223 = !DILocalVariable(name: "__stream", scope: !222, file: !76, line: 686, type: !168)
!224 = !DILocalVariable(name: "__cnt", scope: !222, file: !76, line: 686, type: !113)
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
!310 = distinct !DIGlobalVariable(scope: null, file: !76, line: 839, type: !126, isLocal: true, isDefinition: true)
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
!354 = distinct !DIGlobalVariable(name: "line_in", scope: !355, file: !2, line: 127, type: !419, isLocal: true, isDefinition: true)
!355 = distinct !DISubprogram(name: "unexpand", scope: !2, file: !2, line: 114, type: !356, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !358)
!356 = !DISubroutineType(types: !357)
!357 = !{null}
!358 = !{!359, !360, !361, !374, !386, !387, !393, !394, !395, !396, !397, !398, !402, !405, !408, !413, !414, !415, !417, !418}
!359 = !DILocalVariable(name: "fp", scope: !355, file: !2, line: 117, type: !168)
!360 = !DILocalVariable(name: "pending_blank", scope: !355, file: !2, line: 122, type: !107)
!361 = !DILocalVariable(name: "mbbuf", scope: !355, file: !2, line: 128, type: !362)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbbuf_t", file: !363, line: 50, baseType: !364)
!363 = !DIFile(filename: "./lib/mbbuf.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0ec2f2727b8356ce94eb797f3e7bb5fd")
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !363, line: 43, size: 320, elements: !365)
!365 = !{!366, !367, !368, !372, !373}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !364, file: !363, line: 45, baseType: !107, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !364, file: !363, line: 46, baseType: !168, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !364, file: !363, line: 47, baseType: !369, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !370, line: 130, baseType: !371)
!370 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !114, line: 35, baseType: !110)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !364, file: !363, line: 48, baseType: !369, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !364, file: !363, line: 49, baseType: !369, size: 64, offset: 256)
!374 = !DILocalVariable(name: "g", scope: !375, file: !2, line: 139, type: !376)
!375 = distinct !DILexicalBlock(scope: !355, file: !2, line: 137, column: 5)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !97, line: 143, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !97, line: 138, size: 64, elements: !378)
!378 = !{!379, !384, !385}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !377, file: !97, line: 140, baseType: !380, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !381, line: 37, baseType: !382)
!381 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !195, line: 57, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !195, line: 42, baseType: !72)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !377, file: !97, line: 141, baseType: !117, size: 8, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !377, file: !97, line: 142, baseType: !117, size: 8, offset: 40)
!386 = !DILocalVariable(name: "convert", scope: !375, file: !2, line: 142, type: !109)
!387 = !DILocalVariable(name: "column", scope: !375, file: !2, line: 149, type: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "colno", file: !389, line: 20, baseType: !390)
!389 = !DIFile(filename: "src/expand-common.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a812a23c6054c0178c7555c3090cc098")
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !391, line: 101, baseType: !392)
!391 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !195, line: 72, baseType: !110)
!393 = !DILocalVariable(name: "next_tab_column", scope: !375, file: !2, line: 152, type: !388)
!394 = !DILocalVariable(name: "tab_index", scope: !375, file: !2, line: 155, type: !369)
!395 = !DILocalVariable(name: "one_blank_before_tab_stop", scope: !375, file: !2, line: 158, type: !109)
!396 = !DILocalVariable(name: "prev_blank", scope: !375, file: !2, line: 163, type: !109)
!397 = !DILocalVariable(name: "pending", scope: !375, file: !2, line: 166, type: !369)
!398 = !DILocalVariable(name: "blank", scope: !399, file: !2, line: 179, type: !109)
!399 = distinct !DILexicalBlock(scope: !400, file: !2, line: 178, column: 13)
!400 = distinct !DILexicalBlock(scope: !401, file: !2, line: 177, column: 15)
!401 = distinct !DILexicalBlock(scope: !375, file: !2, line: 172, column: 9)
!402 = !DILocalVariable(name: "last_tab", scope: !403, file: !2, line: 183, type: !109)
!403 = distinct !DILexicalBlock(scope: !404, file: !2, line: 182, column: 17)
!404 = distinct !DILexicalBlock(scope: !399, file: !2, line: 181, column: 19)
!405 = !DILocalVariable(name: "width", scope: !406, file: !2, line: 239, type: !77)
!406 = distinct !DILexicalBlock(scope: !407, file: !2, line: 238, column: 17)
!407 = distinct !DILexicalBlock(scope: !404, file: !2, line: 229, column: 24)
!408 = !DILocalVariable(name: "__ptr", scope: !409, file: !2, line: 248, type: !115)
!409 = distinct !DILexicalBlock(scope: !410, file: !2, line: 248, column: 23)
!410 = distinct !DILexicalBlock(scope: !411, file: !2, line: 248, column: 23)
!411 = distinct !DILexicalBlock(scope: !412, file: !2, line: 245, column: 17)
!412 = distinct !DILexicalBlock(scope: !399, file: !2, line: 244, column: 19)
!413 = !DILocalVariable(name: "__stream", scope: !409, file: !2, line: 248, type: !168)
!414 = !DILocalVariable(name: "__cnt", scope: !409, file: !2, line: 248, type: !113)
!415 = !DILocalVariable(name: "__ptr", scope: !416, file: !2, line: 264, type: !115)
!416 = distinct !DILexicalBlock(scope: !401, file: !2, line: 264, column: 11)
!417 = !DILocalVariable(name: "__stream", scope: !416, file: !2, line: 264, type: !168)
!418 = !DILocalVariable(name: "__cnt", scope: !416, file: !2, line: 264, type: !113)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2097152, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 262144)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !2, line: 241, type: !424, isLocal: true, isDefinition: true)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 23)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !76, line: 952, type: !337, isLocal: true, isDefinition: true)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 1536, elements: !240)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !432, line: 50, size: 256, elements: !433)
!432 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!433 = !{!434, !435, !436, !438}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !431, file: !432, line: 52, baseType: !115, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !431, file: !432, line: 55, baseType: !77, size: 32, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !431, file: !432, line: 56, baseType: !437, size: 64, offset: 128)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !431, file: !432, line: 57, baseType: !77, size: 32, offset: 192)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(name: "convert_entire_line", scope: !441, file: !442, line: 30, type: !109, isLocal: false, isDefinition: true)
!441 = distinct !DICompileUnit(language: DW_LANG_C11, file: !442, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !443, retainedTypes: !467, globals: !468, splitDebugInlining: false, nameTableKind: None)
!442 = !DIFile(filename: "src/expand-common.c", directory: "/src", checksumkind: CSK_MD5, checksum: "942c25878b2cf9f4cd3ad8d127f8f292")
!443 = !{!81, !444, !458}
!444 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !445, line: 42, baseType: !72, size: 32, elements: !446)
!445 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!446 = !{!447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457}
!447 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!448 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!449 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!450 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!451 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!452 = !DIEnumerator(name: "c_quoting_style", value: 5)
!453 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!454 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!455 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!456 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!457 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!458 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !459, line: 44, baseType: !72, size: 32, elements: !460)
!459 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!460 = !{!461, !462, !463, !464, !465, !466}
!461 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!462 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!463 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!464 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!465 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!466 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!467 = !{!77, !112, !109, !110, !111, !108, !113, !115, !117}
!468 = !{!439, !469, !471, !476, !478, !480, !485, !490, !492, !537, !539, !541, !543, !545, !550, !552, !554, !557, !559, !561, !566, !568, !573, !575, !580, !582, !584, !586, !588, !591, !594, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675}
!469 = !DIGlobalVariableExpression(var: !470, expr: !DIExpression())
!470 = distinct !DIGlobalVariable(name: "exit_status", scope: !441, file: !442, line: 69, type: !77, isLocal: false, isDefinition: true)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !442, line: 177, type: !473, isLocal: true, isDefinition: true)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 41)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !442, line: 188, type: !473, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !442, line: 207, type: !346, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !442, line: 209, type: !482, isLocal: true, isDefinition: true)
!482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !483)
!483 = !{!484}
!484 = !DISubrange(count: 25)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !442, line: 217, type: !487, isLocal: true, isDefinition: true)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 43)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !442, line: 326, type: !424, isLocal: true, isDefinition: true)
!492 = !DIGlobalVariableExpression(var: !493, expr: !DIExpression())
!493 = distinct !DIGlobalVariable(name: "prev_file", scope: !494, file: !442, line: 351, type: !107, isLocal: true, isDefinition: true)
!494 = distinct !DISubprogram(name: "next_file", scope: !442, file: !442, line: 349, type: !495, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !531)
!495 = !DISubroutineType(types: !496)
!496 = !{!497, !497}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 7, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !499, file: !172, line: 51, baseType: !77, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !499, file: !172, line: 54, baseType: !107, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !499, file: !172, line: 55, baseType: !107, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !499, file: !172, line: 56, baseType: !107, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !499, file: !172, line: 57, baseType: !107, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !499, file: !172, line: 58, baseType: !107, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !499, file: !172, line: 59, baseType: !107, size: 64, offset: 384)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !499, file: !172, line: 60, baseType: !107, size: 64, offset: 448)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !499, file: !172, line: 61, baseType: !107, size: 64, offset: 512)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !499, file: !172, line: 64, baseType: !107, size: 64, offset: 576)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !499, file: !172, line: 65, baseType: !107, size: 64, offset: 640)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !499, file: !172, line: 66, baseType: !107, size: 64, offset: 704)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !499, file: !172, line: 68, baseType: !187, size: 64, offset: 768)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !499, file: !172, line: 70, baseType: !515, size: 64, offset: 832)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !499, file: !172, line: 72, baseType: !77, size: 32, offset: 896)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !499, file: !172, line: 73, baseType: !77, size: 32, offset: 928)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !499, file: !172, line: 74, baseType: !194, size: 64, offset: 960)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !499, file: !172, line: 77, baseType: !112, size: 16, offset: 1024)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !499, file: !172, line: 78, baseType: !198, size: 8, offset: 1040)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !499, file: !172, line: 79, baseType: !49, size: 8, offset: 1048)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !499, file: !172, line: 81, baseType: !201, size: 64, offset: 1088)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !499, file: !172, line: 89, baseType: !204, size: 64, offset: 1152)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !499, file: !172, line: 91, baseType: !206, size: 64, offset: 1216)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !499, file: !172, line: 92, baseType: !209, size: 64, offset: 1280)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !499, file: !172, line: 93, baseType: !515, size: 64, offset: 1344)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !499, file: !172, line: 94, baseType: !108, size: 64, offset: 1408)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !499, file: !172, line: 95, baseType: !113, size: 64, offset: 1472)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !499, file: !172, line: 96, baseType: !77, size: 32, offset: 1536)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !499, file: !172, line: 98, baseType: !216, size: 160, offset: 1568)
!531 = !{!532, !533, !534}
!532 = !DILocalVariable(name: "fp", arg: 1, scope: !494, file: !442, line: 349, type: !497)
!533 = !DILocalVariable(name: "file", scope: !494, file: !442, line: 352, type: !107)
!534 = !DILocalVariable(name: "err", scope: !535, file: !442, line: 356, type: !77)
!535 = distinct !DILexicalBlock(scope: !536, file: !442, line: 355, column: 5)
!536 = distinct !DILexicalBlock(scope: !494, file: !442, line: 354, column: 7)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !442, line: 359, type: !244, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !442, line: 365, type: !253, isLocal: true, isDefinition: true)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !442, line: 378, type: !244, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !442, line: 405, type: !322, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !442, line: 409, type: !547, isLocal: true, isDefinition: true)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2440, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 305)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(name: "max_column_width", scope: !441, file: !442, line: 42, type: !369, isLocal: false, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(name: "first_free_tab", scope: !441, file: !442, line: 54, type: !369, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(name: "tab_list", scope: !441, file: !442, line: 47, type: !556, isLocal: true, isDefinition: true)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(name: "n_tabs_allocated", scope: !441, file: !442, line: 50, type: !369, isLocal: true, isDefinition: true)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !442, line: 78, type: !424, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !442, line: 103, type: !563, isLocal: true, isDefinition: true)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 47)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !442, line: 122, type: !563, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !442, line: 249, type: !570, isLocal: true, isDefinition: true)
!570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !571)
!571 = !{!572}
!572 = !DISubrange(count: 21)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !442, line: 251, type: !131, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(scope: null, file: !442, line: 256, type: !577, isLocal: true, isDefinition: true)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !578)
!578 = !{!579}
!579 = !DISubrange(count: 45)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(name: "extend_size", scope: !441, file: !442, line: 36, type: !388, isLocal: true, isDefinition: true)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(name: "increment_size", scope: !441, file: !442, line: 39, type: !388, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(name: "tab_size", scope: !441, file: !442, line: 33, type: !388, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !441, file: !442, line: 66, type: !109, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(name: "stdin_argv", scope: !441, file: !442, line: 60, type: !590, isLocal: true, isDefinition: true)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 128, elements: !245)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(name: "file_list", scope: !441, file: !442, line: 57, type: !593, isLocal: true, isDefinition: true)
!593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!594 = !DIGlobalVariableExpression(var: !595, expr: !DIExpression())
!595 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !596, file: !76, line: 575, type: !77, isLocal: true, isDefinition: true)
!596 = distinct !DISubprogram(name: "oputs_", scope: !76, file: !76, line: 573, type: !597, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !598)
!597 = !DISubroutineType(types: !148)
!598 = !{!599, !600, !601, !604, !605, !606, !607, !611, !612, !613, !614, !616, !617, !618, !619, !621, !622}
!599 = !DILocalVariable(name: "program", arg: 1, scope: !596, file: !76, line: 573, type: !115)
!600 = !DILocalVariable(name: "option", arg: 2, scope: !596, file: !76, line: 573, type: !115)
!601 = !DILocalVariable(name: "term", scope: !602, file: !76, line: 585, type: !115)
!602 = distinct !DILexicalBlock(scope: !603, file: !76, line: 582, column: 5)
!603 = distinct !DILexicalBlock(scope: !596, file: !76, line: 581, column: 7)
!604 = !DILocalVariable(name: "double_space", scope: !596, file: !76, line: 594, type: !109)
!605 = !DILocalVariable(name: "first_word", scope: !596, file: !76, line: 595, type: !115)
!606 = !DILocalVariable(name: "option_text", scope: !596, file: !76, line: 596, type: !115)
!607 = !DILocalVariable(name: "s", scope: !608, file: !76, line: 608, type: !115)
!608 = distinct !DILexicalBlock(scope: !609, file: !76, line: 605, column: 5)
!609 = distinct !DILexicalBlock(scope: !610, file: !76, line: 604, column: 12)
!610 = distinct !DILexicalBlock(scope: !596, file: !76, line: 597, column: 7)
!611 = !DILocalVariable(name: "spaces", scope: !608, file: !76, line: 609, type: !113)
!612 = !DILocalVariable(name: "anchor_len", scope: !596, file: !76, line: 620, type: !113)
!613 = !DILocalVariable(name: "desc_text", scope: !596, file: !76, line: 625, type: !115)
!614 = !DILocalVariable(name: "__ptr", scope: !615, file: !76, line: 644, type: !115)
!615 = distinct !DILexicalBlock(scope: !596, file: !76, line: 644, column: 3)
!616 = !DILocalVariable(name: "__stream", scope: !615, file: !76, line: 644, type: !497)
!617 = !DILocalVariable(name: "__cnt", scope: !615, file: !76, line: 644, type: !113)
!618 = !DILocalVariable(name: "url_program", scope: !596, file: !76, line: 648, type: !115)
!619 = !DILocalVariable(name: "__ptr", scope: !620, file: !76, line: 686, type: !115)
!620 = distinct !DILexicalBlock(scope: !596, file: !76, line: 686, column: 3)
!621 = !DILocalVariable(name: "__stream", scope: !620, file: !76, line: 686, type: !497)
!622 = !DILocalVariable(name: "__cnt", scope: !620, file: !76, line: 686, type: !113)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !76, line: 585, type: !227, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !76, line: 586, type: !227, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !76, line: 595, type: !234, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !76, line: 620, type: !239, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !76, line: 648, type: !244, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !76, line: 648, type: !227, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !76, line: 649, type: !234, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !76, line: 649, type: !253, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !76, line: 650, type: !227, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !76, line: 651, type: !239, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !76, line: 651, type: !239, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !76, line: 652, type: !264, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !76, line: 653, type: !269, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !76, line: 654, type: !54, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !652, expr: !DIExpression())
!652 = distinct !DIGlobalVariable(scope: null, file: !76, line: 655, type: !54, isLocal: true, isDefinition: true)
!653 = !DIGlobalVariableExpression(var: !654, expr: !DIExpression())
!654 = distinct !DIGlobalVariable(scope: null, file: !76, line: 656, type: !54, isLocal: true, isDefinition: true)
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(scope: null, file: !76, line: 657, type: !54, isLocal: true, isDefinition: true)
!657 = !DIGlobalVariableExpression(var: !658, expr: !DIExpression())
!658 = distinct !DIGlobalVariable(scope: null, file: !76, line: 663, type: !264, isLocal: true, isDefinition: true)
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(scope: null, file: !76, line: 664, type: !54, isLocal: true, isDefinition: true)
!661 = !DIGlobalVariableExpression(var: !662, expr: !DIExpression())
!662 = distinct !DIGlobalVariable(scope: null, file: !76, line: 669, type: !286, isLocal: true, isDefinition: true)
!663 = !DIGlobalVariableExpression(var: !664, expr: !DIExpression())
!664 = distinct !DIGlobalVariable(scope: null, file: !76, line: 669, type: !291, isLocal: true, isDefinition: true)
!665 = !DIGlobalVariableExpression(var: !666, expr: !DIExpression())
!666 = distinct !DIGlobalVariable(scope: null, file: !76, line: 676, type: !64, isLocal: true, isDefinition: true)
!667 = !DIGlobalVariableExpression(var: !668, expr: !DIExpression())
!668 = distinct !DIGlobalVariable(scope: null, file: !76, line: 676, type: !298, isLocal: true, isDefinition: true)
!669 = !DIGlobalVariableExpression(var: !670, expr: !DIExpression())
!670 = distinct !DIGlobalVariable(scope: null, file: !76, line: 679, type: !253, isLocal: true, isDefinition: true)
!671 = !DIGlobalVariableExpression(var: !672, expr: !DIExpression())
!672 = distinct !DIGlobalVariable(scope: null, file: !76, line: 683, type: !227, isLocal: true, isDefinition: true)
!673 = !DIGlobalVariableExpression(var: !674, expr: !DIExpression())
!674 = distinct !DIGlobalVariable(scope: null, file: !76, line: 688, type: !227, isLocal: true, isDefinition: true)
!675 = !DIGlobalVariableExpression(var: !676, expr: !DIExpression())
!676 = distinct !DIGlobalVariable(scope: null, file: !76, line: 691, type: !269, isLocal: true, isDefinition: true)
!677 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!678 = !DIGlobalVariableExpression(var: !679, expr: !DIExpression())
!679 = distinct !DIGlobalVariable(scope: null, file: !680, line: 3, type: !64, isLocal: true, isDefinition: true)
!680 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!681 = !DIGlobalVariableExpression(var: !682, expr: !DIExpression())
!682 = distinct !DIGlobalVariable(name: "Version", scope: !683, file: !680, line: 3, type: !115, isLocal: false, isDefinition: true)
!683 = distinct !DICompileUnit(language: DW_LANG_C11, file: !680, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !684, splitDebugInlining: false, nameTableKind: None)
!684 = !{!678, !681}
!685 = !DIGlobalVariableExpression(var: !686, expr: !DIExpression())
!686 = distinct !DIGlobalVariable(name: "file_name", scope: !687, file: !688, line: 45, type: !115, isLocal: true, isDefinition: true)
!687 = distinct !DICompileUnit(language: DW_LANG_C11, file: !688, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !689, splitDebugInlining: false, nameTableKind: None)
!688 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!689 = !{!690, !692, !694, !696, !685, !698}
!690 = !DIGlobalVariableExpression(var: !691, expr: !DIExpression())
!691 = distinct !DIGlobalVariable(scope: null, file: !688, line: 121, type: !264, isLocal: true, isDefinition: true)
!692 = !DIGlobalVariableExpression(var: !693, expr: !DIExpression())
!693 = distinct !DIGlobalVariable(scope: null, file: !688, line: 121, type: !337, isLocal: true, isDefinition: true)
!694 = !DIGlobalVariableExpression(var: !695, expr: !DIExpression())
!695 = distinct !DIGlobalVariable(scope: null, file: !688, line: 123, type: !264, isLocal: true, isDefinition: true)
!696 = !DIGlobalVariableExpression(var: !697, expr: !DIExpression())
!697 = distinct !DIGlobalVariable(scope: null, file: !688, line: 126, type: !253, isLocal: true, isDefinition: true)
!698 = !DIGlobalVariableExpression(var: !699, expr: !DIExpression())
!699 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !687, file: !688, line: 55, type: !109, isLocal: true, isDefinition: true)
!700 = !DIGlobalVariableExpression(var: !701, expr: !DIExpression())
!701 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !702, file: !703, line: 66, type: !746, isLocal: false, isDefinition: true)
!702 = distinct !DICompileUnit(language: DW_LANG_C11, file: !703, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !704, globals: !705, splitDebugInlining: false, nameTableKind: None)
!703 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!704 = !{!108, !117}
!705 = !{!706, !708, !728, !730, !732, !734, !700, !736, !738, !740, !742, !744}
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !703, line: 272, type: !227, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(name: "old_file_name", scope: !710, file: !703, line: 304, type: !115, isLocal: true, isDefinition: true)
!710 = distinct !DISubprogram(name: "verror_at_line", scope: !703, file: !703, line: 298, type: !711, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !721)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !77, !77, !115, !72, !115, !713}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !715)
!715 = !{!716, !718, !719, !720}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !714, file: !717, baseType: !72, size: 32)
!717 = !DIFile(filename: "lib/error.c", directory: "/src")
!718 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !714, file: !717, baseType: !72, size: 32, offset: 32)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !714, file: !717, baseType: !108, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !714, file: !717, baseType: !108, size: 64, offset: 128)
!721 = !{!722, !723, !724, !725, !726, !727}
!722 = !DILocalVariable(name: "status", arg: 1, scope: !710, file: !703, line: 298, type: !77)
!723 = !DILocalVariable(name: "errnum", arg: 2, scope: !710, file: !703, line: 298, type: !77)
!724 = !DILocalVariable(name: "file_name", arg: 3, scope: !710, file: !703, line: 298, type: !115)
!725 = !DILocalVariable(name: "line_number", arg: 4, scope: !710, file: !703, line: 298, type: !72)
!726 = !DILocalVariable(name: "message", arg: 5, scope: !710, file: !703, line: 298, type: !115)
!727 = !DILocalVariable(name: "args", arg: 6, scope: !710, file: !703, line: 298, type: !713)
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(name: "old_line_number", scope: !710, file: !703, line: 305, type: !72, isLocal: true, isDefinition: true)
!730 = !DIGlobalVariableExpression(var: !731, expr: !DIExpression())
!731 = distinct !DIGlobalVariable(scope: null, file: !703, line: 338, type: !234, isLocal: true, isDefinition: true)
!732 = !DIGlobalVariableExpression(var: !733, expr: !DIExpression())
!733 = distinct !DIGlobalVariable(scope: null, file: !703, line: 346, type: !269, isLocal: true, isDefinition: true)
!734 = !DIGlobalVariableExpression(var: !735, expr: !DIExpression())
!735 = distinct !DIGlobalVariable(scope: null, file: !703, line: 346, type: !244, isLocal: true, isDefinition: true)
!736 = !DIGlobalVariableExpression(var: !737, expr: !DIExpression())
!737 = distinct !DIGlobalVariable(name: "error_message_count", scope: !702, file: !703, line: 69, type: !72, isLocal: false, isDefinition: true)
!738 = !DIGlobalVariableExpression(var: !739, expr: !DIExpression())
!739 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !702, file: !703, line: 295, type: !77, isLocal: false, isDefinition: true)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !703, line: 208, type: !264, isLocal: true, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !703, line: 208, type: !570, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !703, line: 214, type: !227, isLocal: true, isDefinition: true)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(name: "program_name", scope: !749, file: !750, line: 31, type: !115, isLocal: false, isDefinition: true)
!749 = distinct !DICompileUnit(language: DW_LANG_C11, file: !750, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !751, globals: !752, splitDebugInlining: false, nameTableKind: None)
!750 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!751 = !{!107}
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
!762 = !{!115, !115, !115}
!763 = distinct !DICompileUnit(language: DW_LANG_C11, file: !760, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !764, splitDebugInlining: false, nameTableKind: None)
!764 = !{!757}
!765 = !{!766, !767, !768, !769, !770}
!766 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !759, file: !760, line: 38, type: !115)
!767 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !759, file: !760, line: 38, type: !115)
!768 = !DILocalVariable(name: "translation", scope: !759, file: !760, line: 40, type: !115)
!769 = !DILocalVariable(name: "w", scope: !759, file: !760, line: 47, type: !380)
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
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 16, elements: !245)
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
!809 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !810, file: !786, line: 76, type: !882, isLocal: false, isDefinition: true)
!810 = distinct !DICompileUnit(language: DW_LANG_C11, file: !786, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !811, retainedTypes: !817, globals: !818, splitDebugInlining: false, nameTableKind: None)
!811 = !{!444, !812, !81}
!812 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !445, line: 254, baseType: !72, size: 32, elements: !813)
!813 = !{!814, !815, !816}
!814 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!815 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!816 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!817 = !{!77, !112, !113}
!818 = !{!784, !787, !789, !794, !796, !798, !800, !802, !804, !806, !808, !819, !823, !833, !835, !840, !842, !844, !846, !848, !871, !878, !880}
!819 = !DIGlobalVariableExpression(var: !820, expr: !DIExpression())
!820 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !810, file: !786, line: 92, type: !821, isLocal: false, isDefinition: true)
!821 = !DICompositeType(tag: DW_TAG_array_type, baseType: !822, size: 320, elements: !55)
!822 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!823 = !DIGlobalVariableExpression(var: !824, expr: !DIExpression())
!824 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !810, file: !786, line: 1040, type: !825, isLocal: false, isDefinition: true)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !786, line: 56, size: 448, elements: !826)
!826 = !{!827, !828, !829, !831, !832}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !825, file: !786, line: 59, baseType: !444, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !825, file: !786, line: 62, baseType: !77, size: 32, offset: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !825, file: !786, line: 66, baseType: !830, size: 256, offset: 64)
!830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 256, elements: !270)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !825, file: !786, line: 69, baseType: !115, size: 64, offset: 320)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !825, file: !786, line: 72, baseType: !115, size: 64, offset: 384)
!833 = !DIGlobalVariableExpression(var: !834, expr: !DIExpression())
!834 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !810, file: !786, line: 107, type: !825, isLocal: true, isDefinition: true)
!835 = !DIGlobalVariableExpression(var: !836, expr: !DIExpression())
!836 = distinct !DIGlobalVariable(name: "slot0", scope: !810, file: !786, line: 831, type: !837, isLocal: true, isDefinition: true)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: 256)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(scope: null, file: !786, line: 321, type: !244, isLocal: true, isDefinition: true)
!842 = !DIGlobalVariableExpression(var: !843, expr: !DIExpression())
!843 = distinct !DIGlobalVariable(scope: null, file: !786, line: 357, type: !244, isLocal: true, isDefinition: true)
!844 = !DIGlobalVariableExpression(var: !845, expr: !DIExpression())
!845 = distinct !DIGlobalVariable(scope: null, file: !786, line: 358, type: !244, isLocal: true, isDefinition: true)
!846 = !DIGlobalVariableExpression(var: !847, expr: !DIExpression())
!847 = distinct !DIGlobalVariable(scope: null, file: !786, line: 199, type: !264, isLocal: true, isDefinition: true)
!848 = !DIGlobalVariableExpression(var: !849, expr: !DIExpression())
!849 = distinct !DIGlobalVariable(name: "quote", scope: !850, file: !786, line: 228, type: !869, isLocal: true, isDefinition: true)
!850 = distinct !DISubprogram(name: "gettext_quote", scope: !786, file: !786, line: 197, type: !851, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !853)
!851 = !DISubroutineType(types: !852)
!852 = !{!115, !115, !444}
!853 = !{!854, !855, !856, !857, !858}
!854 = !DILocalVariable(name: "msgid", arg: 1, scope: !850, file: !786, line: 197, type: !115)
!855 = !DILocalVariable(name: "s", arg: 2, scope: !850, file: !786, line: 197, type: !444)
!856 = !DILocalVariable(name: "translation", scope: !850, file: !786, line: 199, type: !115)
!857 = !DILocalVariable(name: "w", scope: !850, file: !786, line: 229, type: !380)
!858 = !DILocalVariable(name: "mbs", scope: !850, file: !786, line: 230, type: !859)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !772, line: 6, baseType: !860)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !774, line: 21, baseType: !861)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !774, line: 13, size: 64, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !861, file: !774, line: 15, baseType: !77, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !861, file: !774, line: 20, baseType: !865, size: 32, offset: 32)
!865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !861, file: !774, line: 16, size: 32, elements: !866)
!866 = !{!867, !868}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !865, file: !774, line: 18, baseType: !72, size: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !865, file: !774, line: 19, baseType: !234, size: 32)
!869 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 64, elements: !870)
!870 = !{!246, !236}
!871 = !DIGlobalVariableExpression(var: !872, expr: !DIExpression())
!872 = distinct !DIGlobalVariable(name: "slotvec", scope: !810, file: !786, line: 834, type: !873, isLocal: true, isDefinition: true)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !786, line: 823, size: 128, elements: !875)
!875 = !{!876, !877}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !874, file: !786, line: 825, baseType: !113, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !874, file: !786, line: 826, baseType: !107, size: 64, offset: 64)
!878 = !DIGlobalVariableExpression(var: !879, expr: !DIExpression())
!879 = distinct !DIGlobalVariable(name: "nslots", scope: !810, file: !786, line: 832, type: !77, isLocal: true, isDefinition: true)
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(name: "slotvec0", scope: !810, file: !786, line: 833, type: !874, isLocal: true, isDefinition: true)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !883, size: 704, elements: !347)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!884 = !DIGlobalVariableExpression(var: !885, expr: !DIExpression())
!885 = distinct !DIGlobalVariable(scope: null, file: !886, line: 67, type: !337, isLocal: true, isDefinition: true)
!886 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!887 = !DIGlobalVariableExpression(var: !888, expr: !DIExpression())
!888 = distinct !DIGlobalVariable(scope: null, file: !886, line: 69, type: !264, isLocal: true, isDefinition: true)
!889 = !DIGlobalVariableExpression(var: !890, expr: !DIExpression())
!890 = distinct !DIGlobalVariable(scope: null, file: !886, line: 83, type: !264, isLocal: true, isDefinition: true)
!891 = !DIGlobalVariableExpression(var: !892, expr: !DIExpression())
!892 = distinct !DIGlobalVariable(scope: null, file: !886, line: 83, type: !234, isLocal: true, isDefinition: true)
!893 = !DIGlobalVariableExpression(var: !894, expr: !DIExpression())
!894 = distinct !DIGlobalVariable(scope: null, file: !886, line: 85, type: !244, isLocal: true, isDefinition: true)
!895 = !DIGlobalVariableExpression(var: !896, expr: !DIExpression())
!896 = distinct !DIGlobalVariable(scope: null, file: !886, line: 88, type: !897, isLocal: true, isDefinition: true)
!897 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !898)
!898 = !{!899}
!899 = !DISubrange(count: 171)
!900 = !DIGlobalVariableExpression(var: !901, expr: !DIExpression())
!901 = distinct !DIGlobalVariable(scope: null, file: !886, line: 88, type: !902, isLocal: true, isDefinition: true)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !903)
!903 = !{!904}
!904 = !DISubrange(count: 34)
!905 = !DIGlobalVariableExpression(var: !906, expr: !DIExpression())
!906 = distinct !DIGlobalVariable(scope: null, file: !886, line: 105, type: !126, isLocal: true, isDefinition: true)
!907 = !DIGlobalVariableExpression(var: !908, expr: !DIExpression())
!908 = distinct !DIGlobalVariable(scope: null, file: !886, line: 109, type: !424, isLocal: true, isDefinition: true)
!909 = !DIGlobalVariableExpression(var: !910, expr: !DIExpression())
!910 = distinct !DIGlobalVariable(scope: null, file: !886, line: 113, type: !131, isLocal: true, isDefinition: true)
!911 = !DIGlobalVariableExpression(var: !912, expr: !DIExpression())
!912 = distinct !DIGlobalVariable(scope: null, file: !886, line: 120, type: !913, isLocal: true, isDefinition: true)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !914)
!914 = !{!915}
!915 = !DISubrange(count: 32)
!916 = !DIGlobalVariableExpression(var: !917, expr: !DIExpression())
!917 = distinct !DIGlobalVariable(scope: null, file: !886, line: 127, type: !918, isLocal: true, isDefinition: true)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !919)
!919 = !{!920}
!920 = !DISubrange(count: 36)
!921 = !DIGlobalVariableExpression(var: !922, expr: !DIExpression())
!922 = distinct !DIGlobalVariable(scope: null, file: !886, line: 134, type: !291, isLocal: true, isDefinition: true)
!923 = !DIGlobalVariableExpression(var: !924, expr: !DIExpression())
!924 = distinct !DIGlobalVariable(scope: null, file: !886, line: 142, type: !925, isLocal: true, isDefinition: true)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !926)
!926 = !{!927}
!927 = !DISubrange(count: 44)
!928 = !DIGlobalVariableExpression(var: !929, expr: !DIExpression())
!929 = distinct !DIGlobalVariable(scope: null, file: !886, line: 150, type: !930, isLocal: true, isDefinition: true)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !931)
!931 = !{!932}
!932 = !DISubrange(count: 48)
!933 = !DIGlobalVariableExpression(var: !934, expr: !DIExpression())
!934 = distinct !DIGlobalVariable(scope: null, file: !886, line: 159, type: !935, isLocal: true, isDefinition: true)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !936)
!936 = !{!937}
!937 = !DISubrange(count: 52)
!938 = !DIGlobalVariableExpression(var: !939, expr: !DIExpression())
!939 = distinct !DIGlobalVariable(scope: null, file: !886, line: 170, type: !940, isLocal: true, isDefinition: true)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !941)
!941 = !{!942}
!942 = !DISubrange(count: 60)
!943 = !DIGlobalVariableExpression(var: !944, expr: !DIExpression())
!944 = distinct !DIGlobalVariable(scope: null, file: !886, line: 248, type: !216, isLocal: true, isDefinition: true)
!945 = !DIGlobalVariableExpression(var: !946, expr: !DIExpression())
!946 = distinct !DIGlobalVariable(scope: null, file: !886, line: 248, type: !313, isLocal: true, isDefinition: true)
!947 = !DIGlobalVariableExpression(var: !948, expr: !DIExpression())
!948 = distinct !DIGlobalVariable(scope: null, file: !886, line: 254, type: !216, isLocal: true, isDefinition: true)
!949 = !DIGlobalVariableExpression(var: !950, expr: !DIExpression())
!950 = distinct !DIGlobalVariable(scope: null, file: !886, line: 254, type: !121, isLocal: true, isDefinition: true)
!951 = !DIGlobalVariableExpression(var: !952, expr: !DIExpression())
!952 = distinct !DIGlobalVariable(scope: null, file: !886, line: 254, type: !291, isLocal: true, isDefinition: true)
!953 = !DIGlobalVariableExpression(var: !954, expr: !DIExpression())
!954 = distinct !DIGlobalVariable(scope: null, file: !886, line: 259, type: !3, isLocal: true, isDefinition: true)
!955 = !DIGlobalVariableExpression(var: !956, expr: !DIExpression())
!956 = distinct !DIGlobalVariable(scope: null, file: !886, line: 259, type: !957, isLocal: true, isDefinition: true)
!957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !958)
!958 = !{!959}
!959 = !DISubrange(count: 29)
!960 = !DIGlobalVariableExpression(var: !961, expr: !DIExpression())
!961 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !962, file: !963, line: 26, type: !965, isLocal: false, isDefinition: true)
!962 = distinct !DICompileUnit(language: DW_LANG_C11, file: !963, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !964, splitDebugInlining: false, nameTableKind: None)
!963 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!964 = !{!960}
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 376, elements: !564)
!966 = !DIGlobalVariableExpression(var: !967, expr: !DIExpression())
!967 = distinct !DIGlobalVariable(name: "exit_failure", scope: !968, file: !969, line: 24, type: !971, isLocal: false, isDefinition: true)
!968 = distinct !DICompileUnit(language: DW_LANG_C11, file: !969, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !970, splitDebugInlining: false, nameTableKind: None)
!969 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!970 = !{!966}
!971 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !77)
!972 = !DIGlobalVariableExpression(var: !973, expr: !DIExpression())
!973 = distinct !DIGlobalVariable(scope: null, file: !974, line: 34, type: !253, isLocal: true, isDefinition: true)
!974 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!975 = !DIGlobalVariableExpression(var: !976, expr: !DIExpression())
!976 = distinct !DIGlobalVariable(scope: null, file: !974, line: 34, type: !264, isLocal: true, isDefinition: true)
!977 = !DIGlobalVariableExpression(var: !978, expr: !DIExpression())
!978 = distinct !DIGlobalVariable(scope: null, file: !974, line: 34, type: !286, isLocal: true, isDefinition: true)
!979 = !DIGlobalVariableExpression(var: !980, expr: !DIExpression())
!980 = distinct !DIGlobalVariable(scope: null, file: !981, line: 108, type: !49, isLocal: true, isDefinition: true)
!981 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!982 = !DIGlobalVariableExpression(var: !983, expr: !DIExpression())
!983 = distinct !DIGlobalVariable(name: "internal_state", scope: !984, file: !981, line: 97, type: !987, isLocal: true, isDefinition: true)
!984 = distinct !DICompileUnit(language: DW_LANG_C11, file: !981, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !985, globals: !986, splitDebugInlining: false, nameTableKind: None)
!985 = !{!108, !113, !117}
!986 = !{!979, !982}
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !772, line: 6, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !774, line: 21, baseType: !989)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !774, line: 13, size: 64, elements: !990)
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !989, file: !774, line: 15, baseType: !77, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !989, file: !774, line: 20, baseType: !993, size: 32, offset: 32)
!993 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !989, file: !774, line: 16, size: 32, elements: !994)
!994 = !{!995, !996}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !993, file: !774, line: 18, baseType: !72, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !993, file: !774, line: 19, baseType: !234, size: 32)
!997 = !DIGlobalVariableExpression(var: !998, expr: !DIExpression())
!998 = distinct !DIGlobalVariable(scope: null, file: !999, line: 35, type: !239, isLocal: true, isDefinition: true)
!999 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!1000 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1001, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1002, splitDebugInlining: false, nameTableKind: None)
!1001 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!1002 = !{!458}
!1003 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1004, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1004 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!1005 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1006, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1007, splitDebugInlining: false, nameTableKind: None)
!1006 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!1007 = !{!108}
!1008 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1009, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1009 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!1010 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1011, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1007, splitDebugInlining: false, nameTableKind: None)
!1011 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!1012 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1013, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1013 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!1014 = distinct !DICompileUnit(language: DW_LANG_C11, file: !886, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1015, retainedTypes: !1007, globals: !1019, splitDebugInlining: false, nameTableKind: None)
!1015 = !{!1016}
!1016 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !886, line: 40, baseType: !72, size: 32, elements: !1017)
!1017 = !{!1018}
!1018 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!1019 = !{!884, !887, !889, !891, !893, !895, !900, !905, !907, !909, !911, !916, !921, !923, !928, !933, !938, !943, !945, !947, !949, !951, !953, !955}
!1020 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1021, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1022, retainedTypes: !1050, splitDebugInlining: false, nameTableKind: None)
!1021 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!1022 = !{!1023, !1035}
!1023 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1024, file: !1021, line: 188, baseType: !72, size: 32, elements: !1033)
!1024 = distinct !DISubprogram(name: "x2nrealloc", scope: !1021, file: !1021, line: 176, type: !1025, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !1028)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!108, !108, !1027, !113}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1028 = !{!1029, !1030, !1031, !1032}
!1029 = !DILocalVariable(name: "p", arg: 1, scope: !1024, file: !1021, line: 176, type: !108)
!1030 = !DILocalVariable(name: "pn", arg: 2, scope: !1024, file: !1021, line: 176, type: !1027)
!1031 = !DILocalVariable(name: "s", arg: 3, scope: !1024, file: !1021, line: 176, type: !113)
!1032 = !DILocalVariable(name: "n", scope: !1024, file: !1021, line: 178, type: !113)
!1033 = !{!1034}
!1034 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!1035 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1036, file: !1021, line: 228, baseType: !72, size: 32, elements: !1033)
!1036 = distinct !DISubprogram(name: "xpalloc", scope: !1021, file: !1021, line: 223, type: !1037, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !1040)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!108, !108, !1039, !369, !371, !369}
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!1040 = !{!1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049}
!1041 = !DILocalVariable(name: "pa", arg: 1, scope: !1036, file: !1021, line: 223, type: !108)
!1042 = !DILocalVariable(name: "pn", arg: 2, scope: !1036, file: !1021, line: 223, type: !1039)
!1043 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !1036, file: !1021, line: 223, type: !369)
!1044 = !DILocalVariable(name: "n_max", arg: 4, scope: !1036, file: !1021, line: 223, type: !371)
!1045 = !DILocalVariable(name: "s", arg: 5, scope: !1036, file: !1021, line: 223, type: !369)
!1046 = !DILocalVariable(name: "n0", scope: !1036, file: !1021, line: 230, type: !369)
!1047 = !DILocalVariable(name: "n", scope: !1036, file: !1021, line: 237, type: !369)
!1048 = !DILocalVariable(name: "nbytes", scope: !1036, file: !1021, line: 248, type: !369)
!1049 = !DILocalVariable(name: "adjusted_nbytes", scope: !1036, file: !1021, line: 252, type: !369)
!1050 = !{!107, !108, !109, !110, !111}
!1051 = distinct !DICompileUnit(language: DW_LANG_C11, file: !974, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1052, splitDebugInlining: false, nameTableKind: None)
!1052 = !{!972, !975, !977}
!1053 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1054, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1007, splitDebugInlining: false, nameTableKind: None)
!1054 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!1055 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1056, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1056 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1057 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1058, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1059, splitDebugInlining: false, nameTableKind: None)
!1058 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1059 = !{!109, !111, !108}
!1060 = distinct !DICompileUnit(language: DW_LANG_C11, file: !999, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1061, splitDebugInlining: false, nameTableKind: None)
!1061 = !{!1062, !997}
!1062 = !DIGlobalVariableExpression(var: !1063, expr: !DIExpression())
!1063 = distinct !DIGlobalVariable(scope: null, file: !999, line: 35, type: !244, isLocal: true, isDefinition: true)
!1064 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1065, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1065 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1066 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1067, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1007, splitDebugInlining: false, nameTableKind: None)
!1067 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1068 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!1069 = !{i32 7, !"Dwarf Version", i32 5}
!1070 = !{i32 2, !"Debug Info Version", i32 3}
!1071 = !{i32 1, !"wchar_size", i32 4}
!1072 = !{i32 8, !"PIC Level", i32 2}
!1073 = !{i32 7, !"PIE Level", i32 2}
!1074 = !{i32 7, !"uwtable", i32 2}
!1075 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 73, type: !1076, scopeLine: 74, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1078)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{null, !77}
!1078 = !{!1079}
!1079 = !DILocalVariable(name: "status", arg: 1, scope: !1075, file: !2, line: 73, type: !77)
!1080 = !DILocation(line: 0, scope: !1075)
!1081 = !DILocation(line: 75, column: 14, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1075, file: !2, line: 75, column: 7)
!1083 = !DILocation(line: 75, column: 7, scope: !1075)
!1084 = !DILocation(line: 76, column: 5, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 76, column: 5)
!1086 = !{!1087, !1087, i64 0}
!1087 = !{!"any pointer", !1088, i64 0}
!1088 = !{!"omnipotent char", !1089, i64 0}
!1089 = !{!"Simple C/C++ TBAA"}
!1090 = !DILocation(line: 79, column: 7, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 78, column: 5)
!1092 = !DILocation(line: 83, column: 7, scope: !1091)
!1093 = !DILocation(line: 729, column: 3, scope: !1094, inlinedAt: !1096)
!1094 = distinct !DISubprogram(name: "emit_stdin_note", scope: !76, file: !76, line: 727, type: !356, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1095)
!1095 = !{}
!1096 = distinct !DILocation(line: 87, column: 7, scope: !1091)
!1097 = !DILocation(line: 736, column: 3, scope: !1098, inlinedAt: !1099)
!1098 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !76, file: !76, line: 734, type: !356, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1095)
!1099 = distinct !DILocation(line: 88, column: 7, scope: !1091)
!1100 = !DILocation(line: 90, column: 7, scope: !1091)
!1101 = !DILocation(line: 94, column: 7, scope: !1091)
!1102 = !DILocation(line: 98, column: 7, scope: !1091)
!1103 = !DILocation(line: 102, column: 7, scope: !1091)
!1104 = !DILocation(line: 103, column: 7, scope: !1091)
!1105 = !DILocation(line: 104, column: 7, scope: !1091)
!1106 = !DILocalVariable(name: "program", arg: 1, scope: !1107, file: !76, line: 836, type: !115)
!1107 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !76, file: !76, line: 836, type: !1108, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1110)
!1108 = !DISubroutineType(types: !1109)
!1109 = !{null, !115}
!1110 = !{!1106, !1111, !1118, !1119, !1121, !1122}
!1111 = !DILocalVariable(name: "infomap", scope: !1107, file: !76, line: 838, type: !1112)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1113, size: 896, elements: !265)
!1113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1114)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1107, file: !76, line: 838, size: 128, elements: !1115)
!1115 = !{!1116, !1117}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1114, file: !76, line: 838, baseType: !115, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1114, file: !76, line: 838, baseType: !115, size: 64, offset: 64)
!1118 = !DILocalVariable(name: "node", scope: !1107, file: !76, line: 848, type: !115)
!1119 = !DILocalVariable(name: "map_prog", scope: !1107, file: !76, line: 849, type: !1120)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1121 = !DILocalVariable(name: "lc_messages", scope: !1107, file: !76, line: 861, type: !115)
!1122 = !DILocalVariable(name: "url_program", scope: !1107, file: !76, line: 874, type: !115)
!1123 = !DILocation(line: 0, scope: !1107, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 105, column: 7, scope: !1091)
!1125 = !DILocation(line: 857, column: 3, scope: !1107, inlinedAt: !1124)
!1126 = !DILocation(line: 861, column: 29, scope: !1107, inlinedAt: !1124)
!1127 = !DILocation(line: 862, column: 7, scope: !1128, inlinedAt: !1124)
!1128 = distinct !DILexicalBlock(scope: !1107, file: !76, line: 862, column: 7)
!1129 = !DILocation(line: 862, column: 19, scope: !1128, inlinedAt: !1124)
!1130 = !DILocation(line: 862, column: 22, scope: !1128, inlinedAt: !1124)
!1131 = !DILocation(line: 862, column: 7, scope: !1107, inlinedAt: !1124)
!1132 = !DILocation(line: 868, column: 7, scope: !1133, inlinedAt: !1124)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !76, line: 863, column: 5)
!1134 = !DILocation(line: 870, column: 5, scope: !1133, inlinedAt: !1124)
!1135 = !DILocation(line: 875, column: 3, scope: !1107, inlinedAt: !1124)
!1136 = !DILocation(line: 877, column: 3, scope: !1107, inlinedAt: !1124)
!1137 = !DILocation(line: 107, column: 3, scope: !1075)
!1138 = !DISubprogram(name: "dcgettext", scope: !1139, file: !1139, line: 51, type: !1140, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1139 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!107, !115, !115, !77}
!1142 = !DISubprogram(name: "__fprintf_chk", scope: !1143, file: !1143, line: 93, type: !1144, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1143 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!77, !1146, !77, !1147, null}
!1146 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !168)
!1147 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !115)
!1148 = !DISubprogram(name: "__printf_chk", scope: !1143, file: !1143, line: 95, type: !1149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1149 = !DISubroutineType(types: !1150)
!1150 = !{!77, !77, !1147, null}
!1151 = !DISubprogram(name: "fputs_unlocked", scope: !1152, file: !1152, line: 691, type: !1153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1152 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!77, !1147, !1146}
!1155 = !DILocation(line: 0, scope: !146)
!1156 = !DILocation(line: 581, column: 7, scope: !154)
!1157 = !{!1158, !1158, i64 0}
!1158 = !{!"int", !1088, i64 0}
!1159 = !DILocation(line: 581, column: 19, scope: !154)
!1160 = !DILocation(line: 581, column: 7, scope: !146)
!1161 = !DILocation(line: 585, column: 26, scope: !153)
!1162 = !DILocation(line: 0, scope: !153)
!1163 = !DILocation(line: 586, column: 23, scope: !153)
!1164 = !DILocation(line: 586, column: 28, scope: !153)
!1165 = !DILocation(line: 586, column: 32, scope: !153)
!1166 = !{!1088, !1088, i64 0}
!1167 = !DILocation(line: 586, column: 38, scope: !153)
!1168 = !DILocalVariable(name: "__s1", arg: 1, scope: !1169, file: !1170, line: 1359, type: !115)
!1169 = distinct !DISubprogram(name: "streq", scope: !1170, file: !1170, line: 1359, type: !1171, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1173)
!1170 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1171 = !DISubroutineType(types: !1172)
!1172 = !{!109, !115, !115}
!1173 = !{!1168, !1174}
!1174 = !DILocalVariable(name: "__s2", arg: 2, scope: !1169, file: !1170, line: 1359, type: !115)
!1175 = !DILocation(line: 0, scope: !1169, inlinedAt: !1176)
!1176 = distinct !DILocation(line: 586, column: 41, scope: !153)
!1177 = !DILocation(line: 1361, column: 11, scope: !1169, inlinedAt: !1176)
!1178 = !DILocation(line: 1361, column: 10, scope: !1169, inlinedAt: !1176)
!1179 = !DILocation(line: 586, column: 19, scope: !153)
!1180 = !DILocation(line: 587, column: 5, scope: !153)
!1181 = !DILocation(line: 588, column: 7, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !146, file: !76, line: 588, column: 7)
!1183 = !DILocation(line: 588, column: 7, scope: !146)
!1184 = !DILocation(line: 590, column: 7, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1182, file: !76, line: 589, column: 5)
!1186 = !DILocation(line: 591, column: 7, scope: !1185)
!1187 = !DILocation(line: 595, column: 37, scope: !146)
!1188 = !DILocation(line: 595, column: 35, scope: !146)
!1189 = !DILocation(line: 596, column: 29, scope: !146)
!1190 = !DILocation(line: 597, column: 8, scope: !161)
!1191 = !DILocation(line: 597, column: 7, scope: !146)
!1192 = !DILocation(line: 604, column: 24, scope: !160)
!1193 = !DILocation(line: 604, column: 12, scope: !161)
!1194 = !DILocation(line: 0, scope: !159)
!1195 = !DILocation(line: 610, column: 16, scope: !159)
!1196 = !DILocation(line: 610, column: 7, scope: !159)
!1197 = !DILocation(line: 611, column: 21, scope: !159)
!1198 = !{!1199, !1199, i64 0}
!1199 = !{!"short", !1088, i64 0}
!1200 = !DILocation(line: 611, column: 19, scope: !159)
!1201 = !DILocation(line: 611, column: 16, scope: !159)
!1202 = !DILocation(line: 610, column: 30, scope: !159)
!1203 = distinct !{!1203, !1196, !1197, !1204}
!1204 = !{!"llvm.loop.mustprogress"}
!1205 = !DILocation(line: 612, column: 18, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !159, file: !76, line: 612, column: 11)
!1207 = !DILocation(line: 612, column: 11, scope: !159)
!1208 = !DILocation(line: 618, column: 5, scope: !159)
!1209 = !DILocation(line: 620, column: 23, scope: !146)
!1210 = !DILocation(line: 625, column: 39, scope: !146)
!1211 = !DILocation(line: 626, column: 3, scope: !146)
!1212 = !DILocation(line: 626, column: 10, scope: !146)
!1213 = !DILocation(line: 626, column: 21, scope: !146)
!1214 = !DILocation(line: 628, column: 44, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !76, line: 628, column: 11)
!1216 = distinct !DILexicalBlock(scope: !146, file: !76, line: 627, column: 5)
!1217 = !DILocation(line: 628, column: 32, scope: !1215)
!1218 = !DILocation(line: 628, column: 49, scope: !1215)
!1219 = !DILocation(line: 628, column: 11, scope: !1216)
!1220 = !DILocation(line: 630, column: 11, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !76, line: 630, column: 11)
!1222 = !DILocation(line: 630, column: 11, scope: !1216)
!1223 = !DILocation(line: 632, column: 26, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !76, line: 632, column: 15)
!1225 = distinct !DILexicalBlock(scope: !1221, file: !76, line: 631, column: 9)
!1226 = !DILocation(line: 632, column: 34, scope: !1224)
!1227 = !DILocation(line: 632, column: 37, scope: !1224)
!1228 = !DILocation(line: 632, column: 15, scope: !1225)
!1229 = !DILocation(line: 636, column: 16, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1225, file: !76, line: 636, column: 15)
!1231 = !DILocation(line: 636, column: 29, scope: !1230)
!1232 = !DILocation(line: 640, column: 16, scope: !1216)
!1233 = distinct !{!1233, !1211, !1234, !1204}
!1234 = !DILocation(line: 641, column: 5, scope: !146)
!1235 = !DILocation(line: 644, column: 3, scope: !146)
!1236 = !DILocation(line: 0, scope: !1169, inlinedAt: !1237)
!1237 = distinct !DILocation(line: 648, column: 31, scope: !146)
!1238 = !DILocation(line: 0, scope: !1169, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 649, column: 31, scope: !146)
!1240 = !DILocation(line: 0, scope: !1169, inlinedAt: !1241)
!1241 = distinct !DILocation(line: 650, column: 31, scope: !146)
!1242 = !DILocation(line: 0, scope: !1169, inlinedAt: !1243)
!1243 = distinct !DILocation(line: 651, column: 31, scope: !146)
!1244 = !DILocation(line: 0, scope: !1169, inlinedAt: !1245)
!1245 = distinct !DILocation(line: 652, column: 31, scope: !146)
!1246 = !DILocation(line: 0, scope: !1169, inlinedAt: !1247)
!1247 = distinct !DILocation(line: 653, column: 31, scope: !146)
!1248 = !DILocation(line: 0, scope: !1169, inlinedAt: !1249)
!1249 = distinct !DILocation(line: 654, column: 31, scope: !146)
!1250 = !DILocation(line: 0, scope: !1169, inlinedAt: !1251)
!1251 = distinct !DILocation(line: 655, column: 31, scope: !146)
!1252 = !DILocation(line: 0, scope: !1169, inlinedAt: !1253)
!1253 = distinct !DILocation(line: 656, column: 31, scope: !146)
!1254 = !DILocation(line: 0, scope: !1169, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 657, column: 31, scope: !146)
!1256 = !DILocation(line: 663, column: 7, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !146, file: !76, line: 663, column: 7)
!1258 = !DILocation(line: 664, column: 7, scope: !1257)
!1259 = !DILocation(line: 664, column: 10, scope: !1257)
!1260 = !DILocation(line: 663, column: 7, scope: !146)
!1261 = !DILocation(line: 669, column: 7, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1257, file: !76, line: 665, column: 5)
!1263 = !DILocation(line: 671, column: 5, scope: !1262)
!1264 = !DILocation(line: 676, column: 7, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1257, file: !76, line: 673, column: 5)
!1266 = !DILocation(line: 679, column: 3, scope: !146)
!1267 = !DILocation(line: 683, column: 3, scope: !146)
!1268 = !DILocation(line: 686, column: 3, scope: !146)
!1269 = !DILocation(line: 688, column: 3, scope: !146)
!1270 = !DILocation(line: 691, column: 3, scope: !146)
!1271 = !DILocation(line: 695, column: 3, scope: !146)
!1272 = !DILocation(line: 696, column: 1, scope: !146)
!1273 = !DISubprogram(name: "setlocale", scope: !1274, file: !1274, line: 122, type: !1275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1274 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!107, !77, !115}
!1277 = !DISubprogram(name: "strncmp", scope: !1278, file: !1278, line: 159, type: !1279, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1278 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!77, !115, !115, !113}
!1281 = !DISubprogram(name: "exit", scope: !1282, file: !1282, line: 624, type: !1076, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1282 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1283 = !DISubprogram(name: "getenv", scope: !1282, file: !1282, line: 641, type: !1284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1284 = !DISubroutineType(types: !1285)
!1285 = !{!107, !115}
!1286 = !DISubprogram(name: "strcmp", scope: !1278, file: !1278, line: 156, type: !1287, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{!77, !115, !115}
!1289 = !DISubprogram(name: "strspn", scope: !1278, file: !1278, line: 297, type: !1290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1290 = !DISubroutineType(types: !1291)
!1291 = !{!111, !115, !115}
!1292 = !DISubprogram(name: "strchr", scope: !1278, file: !1278, line: 246, type: !1293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!107, !115, !77}
!1295 = !DISubprogram(name: "__ctype_b_loc", scope: !82, file: !82, line: 79, type: !1296, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!1298}
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!1301 = !DISubprogram(name: "strcspn", scope: !1278, file: !1278, line: 293, type: !1290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1302 = !DISubprogram(name: "fwrite_unlocked", scope: !1152, file: !1152, line: 704, type: !1303, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!113, !1305, !113, !113, !1146}
!1305 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1306)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1308 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 273, type: !1309, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1311)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!77, !77, !593}
!1311 = !{!1312, !1313, !1314, !1315, !1316, !1317}
!1312 = !DILocalVariable(name: "argc", arg: 1, scope: !1308, file: !2, line: 273, type: !77)
!1313 = !DILocalVariable(name: "argv", arg: 2, scope: !1308, file: !2, line: 273, type: !593)
!1314 = !DILocalVariable(name: "have_tabval", scope: !1308, file: !2, line: 275, type: !109)
!1315 = !DILocalVariable(name: "tabval", scope: !1308, file: !2, line: 276, type: !388)
!1316 = !DILocalVariable(name: "c", scope: !1308, file: !2, line: 277, type: !77)
!1317 = !DILocalVariable(name: "convert_first_only", scope: !1308, file: !2, line: 281, type: !109)
!1318 = !DILocation(line: 0, scope: !1308)
!1319 = !DILocation(line: 284, column: 21, scope: !1308)
!1320 = !DILocation(line: 284, column: 3, scope: !1308)
!1321 = !DILocation(line: 285, column: 3, scope: !1308)
!1322 = !DILocation(line: 286, column: 3, scope: !1308)
!1323 = !DILocation(line: 287, column: 3, scope: !1308)
!1324 = !DILocation(line: 289, column: 3, scope: !1308)
!1325 = !DILocation(line: 291, column: 3, scope: !1308)
!1326 = !DILocation(line: 291, column: 15, scope: !1308)
!1327 = distinct !{!1327, !1325, !1328, !1204}
!1328 = !DILocation(line: 325, column: 5, scope: !1308)
!1329 = !DILocation(line: 297, column: 11, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 295, column: 9)
!1331 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 293, column: 5)
!1332 = !DILocation(line: 299, column: 31, scope: !1330)
!1333 = !{!1334, !1334, i64 0}
!1334 = !{!"_Bool", !1088, i64 0}
!1335 = !DILocation(line: 300, column: 11, scope: !1330)
!1336 = !DILocation(line: 302, column: 31, scope: !1330)
!1337 = !DILocation(line: 303, column: 28, scope: !1330)
!1338 = !DILocation(line: 303, column: 11, scope: !1330)
!1339 = !DILocation(line: 304, column: 11, scope: !1330)
!1340 = !DILocation(line: 309, column: 15, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 309, column: 15)
!1342 = !DILocation(line: 309, column: 15, scope: !1330)
!1343 = !DILocation(line: 310, column: 13, scope: !1341)
!1344 = !DILocation(line: 313, column: 9, scope: !1330)
!1345 = !DILocation(line: 314, column: 9, scope: !1330)
!1346 = !DILocation(line: 316, column: 16, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 316, column: 15)
!1348 = !DILocation(line: 316, column: 15, scope: !1330)
!1349 = !DILocation(line: 321, column: 16, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 321, column: 15)
!1351 = !DILocation(line: 321, column: 15, scope: !1330)
!1352 = !DILocation(line: 322, column: 13, scope: !1350)
!1353 = !DILocation(line: 327, column: 7, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 327, column: 7)
!1355 = !DILocation(line: 327, column: 7, scope: !1308)
!1356 = !DILocation(line: 328, column: 25, scope: !1354)
!1357 = !DILocation(line: 328, column: 5, scope: !1354)
!1358 = !DILocation(line: 330, column: 7, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 330, column: 7)
!1360 = !DILocation(line: 330, column: 7, scope: !1308)
!1361 = !DILocation(line: 331, column: 5, scope: !1359)
!1362 = !DILocation(line: 333, column: 3, scope: !1308)
!1363 = !DILocation(line: 335, column: 19, scope: !1308)
!1364 = !DILocation(line: 335, column: 26, scope: !1308)
!1365 = !DILocation(line: 335, column: 18, scope: !1308)
!1366 = !DILocation(line: 335, column: 3, scope: !1308)
!1367 = !DILocation(line: 117, column: 14, scope: !355, inlinedAt: !1368)
!1368 = distinct !DILocation(line: 337, column: 3, scope: !1308)
!1369 = !DILocation(line: 0, scope: !355, inlinedAt: !1368)
!1370 = !DILocation(line: 124, column: 8, scope: !1371, inlinedAt: !1368)
!1371 = distinct !DILexicalBlock(scope: !355, file: !2, line: 124, column: 7)
!1372 = !DILocation(line: 124, column: 7, scope: !355, inlinedAt: !1368)
!1373 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1374, file: !363, line: 56, type: !1377)
!1374 = distinct !DISubprogram(name: "mbbuf_init", scope: !363, file: !363, line: 56, type: !1375, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1378)
!1375 = !DISubroutineType(types: !1376)
!1376 = !{null, !1377, !107, !369, !168}
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!1378 = !{!1373, !1379, !1380, !1381}
!1379 = !DILocalVariable(name: "buffer", arg: 2, scope: !1374, file: !363, line: 56, type: !107)
!1380 = !DILocalVariable(name: "size", arg: 3, scope: !1374, file: !363, line: 56, type: !369)
!1381 = !DILocalVariable(name: "fp", arg: 4, scope: !1374, file: !363, line: 56, type: !168)
!1382 = !DILocation(line: 0, scope: !1374, inlinedAt: !1383)
!1383 = distinct !DILocation(line: 129, column: 3, scope: !355, inlinedAt: !1368)
!1384 = !DILocation(line: 134, column: 29, scope: !355, inlinedAt: !1368)
!1385 = !{!1386, !1386, i64 0}
!1386 = !{!"long", !1088, i64 0}
!1387 = !DILocation(line: 134, column: 62, scope: !355, inlinedAt: !1368)
!1388 = !DILocation(line: 134, column: 19, scope: !355, inlinedAt: !1368)
!1389 = !DILocation(line: 136, column: 3, scope: !355, inlinedAt: !1368)
!1390 = !DILocation(line: 61, column: 13, scope: !1374, inlinedAt: !1383)
!1391 = !DILocation(line: 0, scope: !375, inlinedAt: !1368)
!1392 = !DILocation(line: 155, column: 7, scope: !375, inlinedAt: !1368)
!1393 = !DILocation(line: 155, column: 13, scope: !375, inlinedAt: !1368)
!1394 = !DILocation(line: 171, column: 7, scope: !375, inlinedAt: !1368)
!1395 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1396, file: !363, line: 71, type: !1377)
!1396 = distinct !DISubprogram(name: "mbbuf_get_char", scope: !363, file: !363, line: 71, type: !1397, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1399)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!376, !1377}
!1399 = !{!1395, !1400, !1401, !1404}
!1400 = !DILocalVariable(name: "available", scope: !1396, file: !363, line: 73, type: !369)
!1401 = !DILocalVariable(name: "start", scope: !1402, file: !363, line: 77, type: !369)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !363, line: 76, column: 5)
!1403 = distinct !DILexicalBlock(scope: !1396, file: !363, line: 75, column: 7)
!1404 = !DILocalVariable(name: "g", scope: !1396, file: !363, line: 92, type: !376)
!1405 = !DILocation(line: 0, scope: !1396, inlinedAt: !1406)
!1406 = distinct !DILocation(line: 173, column: 23, scope: !401, inlinedAt: !1368)
!1407 = !DILocation(line: 73, column: 35, scope: !1396, inlinedAt: !1406)
!1408 = !DILocation(line: 75, column: 17, scope: !1403, inlinedAt: !1406)
!1409 = !DILocation(line: 75, column: 32, scope: !1403, inlinedAt: !1406)
!1410 = !DILocalVariable(name: "__stream", arg: 1, scope: !1411, file: !1412, line: 128, type: !168)
!1411 = distinct !DISubprogram(name: "feof_unlocked", scope: !1412, file: !1412, line: 128, type: !1413, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1415)
!1412 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!77, !168}
!1415 = !{!1410}
!1416 = !DILocation(line: 0, scope: !1411, inlinedAt: !1417)
!1417 = distinct !DILocation(line: 75, column: 37, scope: !1403, inlinedAt: !1406)
!1418 = !DILocation(line: 130, column: 10, scope: !1411, inlinedAt: !1417)
!1419 = !{!1420, !1158, i64 0}
!1420 = !{!"_IO_FILE", !1158, i64 0, !1087, i64 8, !1087, i64 16, !1087, i64 24, !1087, i64 32, !1087, i64 40, !1087, i64 48, !1087, i64 56, !1087, i64 64, !1087, i64 72, !1087, i64 80, !1087, i64 88, !1087, i64 96, !1087, i64 104, !1158, i64 112, !1158, i64 116, !1386, i64 120, !1199, i64 128, !1088, i64 130, !1088, i64 131, !1087, i64 136, !1386, i64 144, !1087, i64 152, !1087, i64 160, !1087, i64 168, !1087, i64 176, !1386, i64 184, !1158, i64 192, !1088, i64 196}
!1421 = !DILocation(line: 75, column: 37, scope: !1403, inlinedAt: !1406)
!1422 = !DILocation(line: 75, column: 7, scope: !1396, inlinedAt: !1406)
!1423 = !DILocation(line: 78, column: 15, scope: !1424, inlinedAt: !1406)
!1424 = distinct !DILexicalBlock(scope: !1402, file: !363, line: 78, column: 11)
!1425 = !DILocation(line: 78, column: 11, scope: !1402, inlinedAt: !1406)
!1426 = !DILocation(line: 82, column: 49, scope: !1427, inlinedAt: !1406)
!1427 = distinct !DILexicalBlock(scope: !1424, file: !363, line: 81, column: 9)
!1428 = !DILocalVariable(name: "__dest", arg: 1, scope: !1429, file: !1430, line: 34, type: !108)
!1429 = distinct !DISubprogram(name: "memmove", scope: !1430, file: !1430, line: 34, type: !1431, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1433)
!1430 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!108, !108, !1306, !113}
!1433 = !{!1428, !1434, !1435}
!1434 = !DILocalVariable(name: "__src", arg: 2, scope: !1429, file: !1430, line: 34, type: !1306)
!1435 = !DILocalVariable(name: "__len", arg: 3, scope: !1429, file: !1430, line: 34, type: !113)
!1436 = !DILocation(line: 0, scope: !1429, inlinedAt: !1437)
!1437 = distinct !DILocation(line: 82, column: 11, scope: !1427, inlinedAt: !1406)
!1438 = !DILocation(line: 36, column: 10, scope: !1429, inlinedAt: !1437)
!1439 = !DILocation(line: 0, scope: !1402, inlinedAt: !1406)
!1440 = !DILocation(line: 0, scope: !1424, inlinedAt: !1406)
!1441 = !DILocation(line: 85, column: 23, scope: !1402, inlinedAt: !1406)
!1442 = !DILocation(line: 86, column: 41, scope: !1402, inlinedAt: !1406)
!1443 = !DILocation(line: 89, column: 5, scope: !1402, inlinedAt: !1406)
!1444 = !DILocation(line: 90, column: 17, scope: !1445, inlinedAt: !1406)
!1445 = distinct !DILexicalBlock(scope: !1396, file: !363, line: 90, column: 7)
!1446 = !DILocation(line: 90, column: 7, scope: !1396, inlinedAt: !1406)
!1447 = !DILocation(line: 92, column: 39, scope: !1396, inlinedAt: !1406)
!1448 = !DILocalVariable(name: "p", arg: 1, scope: !1449, file: !97, line: 230, type: !115)
!1449 = distinct !DISubprogram(name: "mcel_scan", scope: !97, file: !97, line: 230, type: !1450, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1452)
!1450 = !DISubroutineType(types: !1451)
!1451 = !{!376, !115, !115}
!1452 = !{!1448, !1453, !1454, !1455, !1466, !1467}
!1453 = !DILocalVariable(name: "lim", arg: 2, scope: !1449, file: !97, line: 230, type: !115)
!1454 = !DILocalVariable(name: "c", scope: !1449, file: !97, line: 235, type: !4)
!1455 = !DILocalVariable(name: "mbs", scope: !1449, file: !97, line: 244, type: !1456)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !772, line: 6, baseType: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !774, line: 21, baseType: !1458)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !774, line: 13, size: 64, elements: !1459)
!1459 = !{!1460, !1461}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1458, file: !774, line: 15, baseType: !77, size: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1458, file: !774, line: 20, baseType: !1462, size: 32, offset: 32)
!1462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1458, file: !774, line: 16, size: 32, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1462, file: !774, line: 18, baseType: !72, size: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1462, file: !774, line: 19, baseType: !234, size: 32)
!1466 = !DILocalVariable(name: "ch", scope: !1449, file: !97, line: 267, type: !380)
!1467 = !DILocalVariable(name: "len", scope: !1449, file: !97, line: 268, type: !113)
!1468 = !DILocation(line: 0, scope: !1449, inlinedAt: !1469)
!1469 = distinct !DILocation(line: 92, column: 14, scope: !1396, inlinedAt: !1406)
!1470 = !DILocation(line: 235, column: 12, scope: !1449, inlinedAt: !1469)
!1471 = !DILocalVariable(name: "c", arg: 1, scope: !1472, file: !97, line: 215, type: !4)
!1472 = distinct !DISubprogram(name: "mcel_isbasic", scope: !97, file: !97, line: 215, type: !1473, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1475)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!109, !4}
!1475 = !{!1471}
!1476 = !DILocation(line: 0, scope: !1472, inlinedAt: !1477)
!1477 = distinct !DILocation(line: 236, column: 7, scope: !1478, inlinedAt: !1469)
!1478 = distinct !DILexicalBlock(scope: !1449, file: !97, line: 236, column: 7)
!1479 = !DILocation(line: 217, column: 10, scope: !1472, inlinedAt: !1477)
!1480 = !DILocation(line: 236, column: 7, scope: !1449, inlinedAt: !1469)
!1481 = !DILocation(line: 93, column: 39, scope: !1396, inlinedAt: !1406)
!1482 = !DILocation(line: 244, column: 3, scope: !1449, inlinedAt: !1469)
!1483 = !DILocation(line: 244, column: 13, scope: !1449, inlinedAt: !1469)
!1484 = !DILocation(line: 244, column: 30, scope: !1449, inlinedAt: !1469)
!1485 = !{!1486, !1158, i64 0}
!1486 = !{!"", !1158, i64 0, !1088, i64 4}
!1487 = !DILocation(line: 267, column: 3, scope: !1449, inlinedAt: !1469)
!1488 = !DILocation(line: 268, column: 38, scope: !1449, inlinedAt: !1469)
!1489 = !DILocation(line: 268, column: 16, scope: !1449, inlinedAt: !1469)
!1490 = !DILocation(line: 274, column: 7, scope: !1491, inlinedAt: !1469)
!1491 = distinct !DILexicalBlock(scope: !1449, file: !97, line: 274, column: 7)
!1492 = !DILocation(line: 274, column: 7, scope: !1449, inlinedAt: !1469)
!1493 = !{!"branch_weights", i32 1, i32 2000}
!1494 = !DILocation(line: 279, column: 19, scope: !1449, inlinedAt: !1469)
!1495 = !DILocalVariable(name: "ch", arg: 1, scope: !1496, file: !97, line: 167, type: !380)
!1496 = distinct !DISubprogram(name: "mcel_ch", scope: !97, file: !97, line: 167, type: !1497, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1499)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!376, !380, !113}
!1499 = !{!1495, !1500}
!1500 = !DILocalVariable(name: "len", arg: 2, scope: !1496, file: !97, line: 167, type: !113)
!1501 = !DILocation(line: 0, scope: !1496, inlinedAt: !1502)
!1502 = distinct !DILocation(line: 279, column: 10, scope: !1449, inlinedAt: !1469)
!1503 = !DILocation(line: 169, column: 3, scope: !1496, inlinedAt: !1502)
!1504 = !DILocation(line: 170, column: 3, scope: !1496, inlinedAt: !1502)
!1505 = !DILocation(line: 171, column: 3, scope: !1496, inlinedAt: !1502)
!1506 = !DILocation(line: 172, column: 3, scope: !1496, inlinedAt: !1502)
!1507 = !DILocation(line: 279, column: 3, scope: !1449, inlinedAt: !1469)
!1508 = !DILocalVariable(name: "err", arg: 1, scope: !1509, file: !97, line: 175, type: !117)
!1509 = distinct !DISubprogram(name: "mcel_err", scope: !97, file: !97, line: 175, type: !1510, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1512)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!376, !117}
!1512 = !{!1508}
!1513 = !DILocation(line: 0, scope: !1509, inlinedAt: !1514)
!1514 = distinct !DILocation(line: 275, column: 12, scope: !1491, inlinedAt: !1469)
!1515 = !DILocation(line: 178, column: 3, scope: !1509, inlinedAt: !1514)
!1516 = !DILocation(line: 275, column: 5, scope: !1491, inlinedAt: !1469)
!1517 = !DILocation(line: 280, column: 1, scope: !1449, inlinedAt: !1469)
!1518 = !DILocation(line: 0, scope: !1496, inlinedAt: !1519)
!1519 = distinct !DILocation(line: 237, column: 12, scope: !1478, inlinedAt: !1469)
!1520 = !DILocation(line: 172, column: 3, scope: !1496, inlinedAt: !1519)
!1521 = !DILocation(line: 237, column: 5, scope: !1478, inlinedAt: !1469)
!1522 = !DILocation(line: 94, column: 9, scope: !1523, inlinedAt: !1406)
!1523 = distinct !DILexicalBlock(scope: !1396, file: !363, line: 94, column: 7)
!1524 = !DILocation(line: 94, column: 7, scope: !1396, inlinedAt: !1406)
!1525 = !DILocation(line: 99, column: 30, scope: !1526, inlinedAt: !1406)
!1526 = distinct !DILexicalBlock(scope: !1523, file: !363, line: 97, column: 5)
!1527 = !DILocation(line: 99, column: 14, scope: !1526, inlinedAt: !1406)
!1528 = !DILocation(line: 92, column: 14, scope: !1396, inlinedAt: !1406)
!1529 = !DILocation(line: 95, column: 5, scope: !1523, inlinedAt: !1406)
!1530 = !DILocation(line: 0, scope: !1523, inlinedAt: !1406)
!1531 = !DILocation(line: 101, column: 3, scope: !1396, inlinedAt: !1406)
!1532 = !DILocation(line: 173, column: 51, scope: !401, inlinedAt: !1368)
!1533 = !DILocation(line: 174, column: 18, scope: !401, inlinedAt: !1368)
!1534 = !DILocation(line: 174, column: 27, scope: !401, inlinedAt: !1368)
!1535 = !DILocation(line: 173, column: 11, scope: !401, inlinedAt: !1368)
!1536 = distinct !{!1536, !1535, !1537, !1204, !1538}
!1537 = !DILocation(line: 175, column: 60, scope: !401, inlinedAt: !1368)
!1538 = !{!"llvm.loop.peeled.count", i32 1}
!1539 = !DILocation(line: 85, column: 21, scope: !1402, inlinedAt: !1406)
!1540 = !DILocation(line: 102, column: 1, scope: !1396, inlinedAt: !1406)
!1541 = !DILocation(line: 173, column: 23, scope: !401, inlinedAt: !1368)
!1542 = !DILocation(line: 177, column: 15, scope: !400, inlinedAt: !1368)
!1543 = !DILocation(line: 177, column: 15, scope: !401, inlinedAt: !1368)
!1544 = !DILocalVariable(name: "wc", arg: 1, scope: !1545, file: !76, line: 178, type: !380)
!1545 = distinct !DISubprogram(name: "c32issep", scope: !76, file: !76, line: 178, type: !1546, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1548)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!109, !380}
!1548 = !{!1544}
!1549 = !DILocation(line: 0, scope: !1545, inlinedAt: !1550)
!1550 = distinct !DILocation(line: 179, column: 28, scope: !399, inlinedAt: !1368)
!1551 = !DILocalVariable(name: "wc", arg: 1, scope: !1552, file: !1553, line: 770, type: !1556)
!1552 = distinct !DISubprogram(name: "c32isblank", scope: !1553, file: !1553, line: 770, type: !1554, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1558)
!1553 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1554 = !DISubroutineType(types: !1555)
!1555 = !{!77, !1556}
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1557, line: 20, baseType: !72)
!1557 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1558 = !{!1551}
!1559 = !DILocation(line: 0, scope: !1552, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 181, column: 13, scope: !1545, inlinedAt: !1550)
!1561 = !DILocation(line: 776, column: 10, scope: !1552, inlinedAt: !1560)
!1562 = !DILocation(line: 181, column: 11, scope: !1545, inlinedAt: !1550)
!1563 = !DILocation(line: 179, column: 20, scope: !399, inlinedAt: !1368)
!1564 = !DILocation(line: 0, scope: !399, inlinedAt: !1368)
!1565 = !DILocation(line: 181, column: 19, scope: !399, inlinedAt: !1368)
!1566 = !DILocation(line: 183, column: 19, scope: !403, inlinedAt: !1368)
!1567 = !DILocation(line: 0, scope: !403, inlinedAt: !1368)
!1568 = !DILocation(line: 185, column: 37, scope: !403, inlinedAt: !1368)
!1569 = !DILocation(line: 188, column: 23, scope: !1570, inlinedAt: !1368)
!1570 = distinct !DILexicalBlock(scope: !403, file: !2, line: 188, column: 23)
!1571 = !{i8 0, i8 2}
!1572 = !DILocation(line: 188, column: 23, scope: !403, inlinedAt: !1368)
!1573 = !DILocation(line: 191, column: 23, scope: !1574, inlinedAt: !1368)
!1574 = distinct !DILexicalBlock(scope: !403, file: !2, line: 191, column: 23)
!1575 = !DILocation(line: 191, column: 23, scope: !403, inlinedAt: !1368)
!1576 = !DILocation(line: 193, column: 32, scope: !1577, inlinedAt: !1368)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !2, line: 193, column: 27)
!1578 = distinct !DILexicalBlock(scope: !1574, file: !2, line: 192, column: 21)
!1579 = !DILocation(line: 193, column: 27, scope: !1578, inlinedAt: !1368)
!1580 = !DILocation(line: 197, column: 31, scope: !1581, inlinedAt: !1368)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !2, line: 197, column: 31)
!1582 = distinct !DILexicalBlock(scope: !1577, file: !2, line: 194, column: 25)
!1583 = !DILocation(line: 197, column: 31, scope: !1582, inlinedAt: !1368)
!1584 = !DILocalVariable(name: "wc", arg: 1, scope: !1585, file: !1553, line: 1004, type: !380)
!1585 = distinct !DISubprogram(name: "c32width", scope: !1553, file: !1553, line: 1004, type: !1586, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1588)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!77, !380}
!1588 = !{!1584}
!1589 = !DILocation(line: 0, scope: !1585, inlinedAt: !1590)
!1590 = distinct !DILocation(line: 202, column: 37, scope: !1591, inlinedAt: !1368)
!1591 = distinct !DILexicalBlock(scope: !1577, file: !2, line: 201, column: 25)
!1592 = !DILocation(line: 1010, column: 10, scope: !1585, inlinedAt: !1590)
!1593 = !DILocation(line: 202, column: 37, scope: !1591, inlinedAt: !1368)
!1594 = !DILocation(line: 202, column: 34, scope: !1591, inlinedAt: !1368)
!1595 = !DILocation(line: 204, column: 34, scope: !1596, inlinedAt: !1368)
!1596 = distinct !DILexicalBlock(scope: !1591, file: !2, line: 204, column: 31)
!1597 = !DILocation(line: 204, column: 45, scope: !1596, inlinedAt: !1368)
!1598 = !DILocation(line: 219, column: 31, scope: !1599, inlinedAt: !1368)
!1599 = distinct !DILexicalBlock(scope: !1591, file: !2, line: 219, column: 31)
!1600 = !DILocalVariable(name: "__c", arg: 1, scope: !1601, file: !1412, line: 101, type: !77)
!1601 = distinct !DISubprogram(name: "putc_unlocked", scope: !1412, file: !1412, line: 101, type: !1602, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1604)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!77, !77, !168}
!1604 = !{!1600, !1605}
!1605 = !DILocalVariable(name: "__stream", arg: 2, scope: !1601, file: !1412, line: 101, type: !168)
!1606 = !DILocation(line: 0, scope: !1601, inlinedAt: !1607)
!1607 = distinct !DILocation(line: 219, column: 31, scope: !1599, inlinedAt: !1368)
!1608 = !DILocation(line: 103, column: 10, scope: !1601, inlinedAt: !1607)
!1609 = !{!1420, !1087, i64 40}
!1610 = !{!1420, !1087, i64 48}
!1611 = !{!"branch_weights", i32 2000, i32 1}
!1612 = !DILocation(line: 219, column: 31, scope: !1591, inlinedAt: !1368)
!1613 = !DILocation(line: 219, column: 51, scope: !1599, inlinedAt: !1368)
!1614 = !DILocation(line: 948, column: 21, scope: !1615, inlinedAt: !1618)
!1615 = distinct !DISubprogram(name: "write_error", scope: !76, file: !76, line: 946, type: !356, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1616)
!1616 = !{!1617}
!1617 = !DILocalVariable(name: "saved_errno", scope: !1615, file: !76, line: 948, type: !77)
!1618 = distinct !DILocation(line: 220, column: 29, scope: !1599, inlinedAt: !1368)
!1619 = !DILocation(line: 0, scope: !1615, inlinedAt: !1618)
!1620 = !DILocation(line: 949, column: 3, scope: !1615, inlinedAt: !1618)
!1621 = !DILocation(line: 950, column: 11, scope: !1615, inlinedAt: !1618)
!1622 = !DILocation(line: 950, column: 3, scope: !1615, inlinedAt: !1618)
!1623 = !DILocation(line: 951, column: 3, scope: !1615, inlinedAt: !1618)
!1624 = !DILocation(line: 952, column: 3, scope: !1615, inlinedAt: !1618)
!1625 = !DILocation(line: 0, scope: !1577, inlinedAt: !1368)
!1626 = !DILocation(line: 226, column: 33, scope: !1578, inlinedAt: !1368)
!1627 = !DILocation(line: 0, scope: !401, inlinedAt: !1368)
!1628 = !DILocation(line: 227, column: 21, scope: !1578, inlinedAt: !1368)
!1629 = !DILocation(line: 228, column: 17, scope: !404, inlinedAt: !1368)
!1630 = !DILocation(line: 229, column: 29, scope: !407, inlinedAt: !1368)
!1631 = !DILocation(line: 229, column: 24, scope: !404, inlinedAt: !1368)
!1632 = !DILocation(line: 233, column: 30, scope: !1633, inlinedAt: !1368)
!1633 = distinct !DILexicalBlock(scope: !407, file: !2, line: 230, column: 17)
!1634 = !DILocation(line: 233, column: 26, scope: !1633, inlinedAt: !1368)
!1635 = !DILocation(line: 235, column: 34, scope: !1633, inlinedAt: !1368)
!1636 = !DILocation(line: 235, column: 33, scope: !1633, inlinedAt: !1368)
!1637 = !DILocation(line: 235, column: 29, scope: !1633, inlinedAt: !1368)
!1638 = !DILocation(line: 236, column: 17, scope: !1633, inlinedAt: !1368)
!1639 = !DILocation(line: 0, scope: !1585, inlinedAt: !1640)
!1640 = distinct !DILocation(line: 239, column: 31, scope: !406, inlinedAt: !1368)
!1641 = !DILocation(line: 1010, column: 10, scope: !1585, inlinedAt: !1640)
!1642 = !DILocation(line: 0, scope: !406, inlinedAt: !1368)
!1643 = !DILocation(line: 240, column: 23, scope: !1644, inlinedAt: !1368)
!1644 = distinct !DILexicalBlock(scope: !406, file: !2, line: 240, column: 23)
!1645 = !DILocation(line: 240, column: 23, scope: !406, inlinedAt: !1368)
!1646 = !DILocation(line: 241, column: 21, scope: !1644, inlinedAt: !1368)
!1647 = !DILocation(line: 0, scope: !404, inlinedAt: !1368)
!1648 = !DILocation(line: 244, column: 19, scope: !412, inlinedAt: !1368)
!1649 = !DILocation(line: 244, column: 19, scope: !399, inlinedAt: !1368)
!1650 = !DILocation(line: 246, column: 31, scope: !1651, inlinedAt: !1368)
!1651 = distinct !DILexicalBlock(scope: !411, file: !2, line: 246, column: 23)
!1652 = !DILocation(line: 246, column: 35, scope: !1651, inlinedAt: !1368)
!1653 = !DILocation(line: 247, column: 38, scope: !1651, inlinedAt: !1368)
!1654 = !DILocation(line: 247, column: 21, scope: !1651, inlinedAt: !1368)
!1655 = !DILocation(line: 248, column: 23, scope: !410, inlinedAt: !1368)
!1656 = !DILocation(line: 248, column: 66, scope: !410, inlinedAt: !1368)
!1657 = !DILocation(line: 248, column: 23, scope: !411, inlinedAt: !1368)
!1658 = !DILocation(line: 948, column: 21, scope: !1615, inlinedAt: !1659)
!1659 = distinct !DILocation(line: 249, column: 21, scope: !410, inlinedAt: !1368)
!1660 = !DILocation(line: 0, scope: !1615, inlinedAt: !1659)
!1661 = !DILocation(line: 949, column: 3, scope: !1615, inlinedAt: !1659)
!1662 = !DILocation(line: 950, column: 11, scope: !1615, inlinedAt: !1659)
!1663 = !DILocation(line: 950, column: 3, scope: !1615, inlinedAt: !1659)
!1664 = !DILocation(line: 951, column: 3, scope: !1615, inlinedAt: !1659)
!1665 = !DILocation(line: 952, column: 3, scope: !1615, inlinedAt: !1659)
!1666 = !DILocation(line: 255, column: 26, scope: !399, inlinedAt: !1368)
!1667 = !DILocation(line: 255, column: 46, scope: !399, inlinedAt: !1368)
!1668 = !DILocation(line: 255, column: 23, scope: !399, inlinedAt: !1368)
!1669 = !DILocation(line: 208, column: 35, scope: !1670, inlinedAt: !1368)
!1670 = distinct !DILexicalBlock(scope: !1596, file: !2, line: 205, column: 29)
!1671 = !DILocation(line: 210, column: 53, scope: !1670, inlinedAt: !1368)
!1672 = !DILocalVariable(name: "g", arg: 2, scope: !1673, file: !363, line: 107, type: !376)
!1673 = distinct !DISubprogram(name: "mbbuf_char_offset", scope: !363, file: !363, line: 107, type: !1674, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1676)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!107, !1377, !376}
!1676 = !{!1677, !1672}
!1677 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1673, file: !363, line: 107, type: !1377)
!1678 = !DILocation(line: 0, scope: !1673, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 211, column: 39, scope: !1670, inlinedAt: !1368)
!1680 = !DILocation(line: 109, column: 21, scope: !1681, inlinedAt: !1679)
!1681 = distinct !DILexicalBlock(scope: !1673, file: !363, line: 109, column: 7)
!1682 = !DILocation(line: 109, column: 7, scope: !1673, inlinedAt: !1679)
!1683 = !DILocation(line: 111, column: 41, scope: !1673, inlinedAt: !1679)
!1684 = !DILocation(line: 111, column: 24, scope: !1673, inlinedAt: !1679)
!1685 = !DILocalVariable(name: "__dest", arg: 1, scope: !1686, file: !1430, line: 26, type: !1689)
!1686 = distinct !DISubprogram(name: "memcpy", scope: !1430, file: !1430, line: 26, type: !1687, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1690)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!108, !1689, !1305, !113}
!1689 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !108)
!1690 = !{!1685, !1691, !1692}
!1691 = !DILocalVariable(name: "__src", arg: 2, scope: !1686, file: !1430, line: 26, type: !1305)
!1692 = !DILocalVariable(name: "__len", arg: 3, scope: !1686, file: !1430, line: 26, type: !113)
!1693 = !DILocation(line: 0, scope: !1686, inlinedAt: !1694)
!1694 = distinct !DILocation(line: 210, column: 31, scope: !1670, inlinedAt: !1368)
!1695 = !DILocation(line: 29, column: 10, scope: !1686, inlinedAt: !1694)
!1696 = !DILocation(line: 212, column: 39, scope: !1670, inlinedAt: !1368)
!1697 = !DILocation(line: 258, column: 15, scope: !401, inlinedAt: !1368)
!1698 = !DILocation(line: 260, column: 15, scope: !1699, inlinedAt: !1368)
!1699 = distinct !DILexicalBlock(scope: !1700, file: !2, line: 259, column: 13)
!1700 = distinct !DILexicalBlock(scope: !401, file: !2, line: 258, column: 15)
!1701 = !DILocation(line: 269, column: 5, scope: !355, inlinedAt: !1368)
!1702 = !DILocation(line: 264, column: 11, scope: !401, inlinedAt: !1368)
!1703 = !DILocation(line: 0, scope: !1673, inlinedAt: !1704)
!1704 = distinct !DILocation(line: 264, column: 11, scope: !401, inlinedAt: !1368)
!1705 = !DILocation(line: 109, column: 21, scope: !1681, inlinedAt: !1704)
!1706 = !DILocation(line: 109, column: 7, scope: !1673, inlinedAt: !1704)
!1707 = !DILocation(line: 111, column: 41, scope: !1673, inlinedAt: !1704)
!1708 = !DILocation(line: 111, column: 24, scope: !1673, inlinedAt: !1704)
!1709 = !DILocation(line: 265, column: 15, scope: !1710, inlinedAt: !1368)
!1710 = distinct !DILexicalBlock(scope: !401, file: !2, line: 265, column: 15)
!1711 = !DILocalVariable(name: "__stream", arg: 1, scope: !1712, file: !1412, line: 135, type: !168)
!1712 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1412, file: !1412, line: 135, type: !1413, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1713)
!1713 = !{!1711}
!1714 = !DILocation(line: 0, scope: !1712, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 265, column: 15, scope: !1710, inlinedAt: !1368)
!1716 = !DILocation(line: 137, column: 10, scope: !1712, inlinedAt: !1715)
!1717 = !DILocation(line: 265, column: 15, scope: !401, inlinedAt: !1368)
!1718 = !DILocation(line: 948, column: 21, scope: !1615, inlinedAt: !1719)
!1719 = distinct !DILocation(line: 266, column: 13, scope: !1710, inlinedAt: !1368)
!1720 = !DILocation(line: 0, scope: !1615, inlinedAt: !1719)
!1721 = !DILocation(line: 949, column: 3, scope: !1615, inlinedAt: !1719)
!1722 = !DILocation(line: 950, column: 11, scope: !1615, inlinedAt: !1719)
!1723 = !DILocation(line: 950, column: 3, scope: !1615, inlinedAt: !1719)
!1724 = !DILocation(line: 951, column: 3, scope: !1615, inlinedAt: !1719)
!1725 = !DILocation(line: 952, column: 3, scope: !1615, inlinedAt: !1719)
!1726 = !DILocation(line: 250, column: 27, scope: !411, inlinedAt: !1368)
!1727 = !DILocation(line: 254, column: 26, scope: !399, inlinedAt: !1368)
!1728 = !DILocation(line: 251, column: 45, scope: !411, inlinedAt: !1368)
!1729 = !DILocation(line: 195, column: 34, scope: !1582, inlinedAt: !1368)
!1730 = !DILocation(line: 268, column: 19, scope: !375, inlinedAt: !1368)
!1731 = !DILocation(line: 267, column: 9, scope: !401, inlinedAt: !1368)
!1732 = distinct !{!1732, !1394, !1733, !1204}
!1733 = !DILocation(line: 268, column: 26, scope: !375, inlinedAt: !1368)
!1734 = distinct !{!1734, !1389, !1701}
!1735 = !DILocation(line: 339, column: 3, scope: !1308)
!1736 = !DILocation(line: 341, column: 10, scope: !1308)
!1737 = !DILocation(line: 341, column: 3, scope: !1308)
!1738 = !DISubprogram(name: "bindtextdomain", scope: !1139, file: !1139, line: 86, type: !1739, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!107, !115, !115}
!1741 = !DISubprogram(name: "textdomain", scope: !1139, file: !1139, line: 82, type: !1284, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1742 = !DISubprogram(name: "atexit", scope: !1282, file: !1282, line: 602, type: !1743, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!77, !746}
!1745 = !DISubprogram(name: "getopt_long", scope: !432, file: !432, line: 66, type: !1746, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!77, !77, !1748, !115, !1750, !437}
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!1751 = !DISubprogram(name: "__builtin___memmove_chk", scope: !1752, file: !1752, line: 25, type: !1753, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1752 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/strings_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "2c53309439f074d781ca95a346401d78")
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!108, !108, !1306, !111, !111}
!1755 = !DISubprogram(name: "mbrtoc32", scope: !381, file: !381, line: 57, type: !1756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!113, !1758, !1147, !113, !1760}
!1758 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1759)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1761)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1762 = !DISubprogram(name: "iswblank", scope: !1763, file: !1763, line: 146, type: !1554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1763 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1764 = !DISubprogram(name: "wcwidth", scope: !1765, file: !1765, line: 368, type: !1766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1765 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!77, !1768}
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !114, line: 74, baseType: !77)
!1769 = !DISubprogram(name: "__overflow", scope: !1152, file: !1152, line: 886, type: !1770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!77, !168, !77}
!1772 = !DISubprogram(name: "__errno_location", scope: !1773, file: !1773, line: 37, type: !1774, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1773 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!437}
!1776 = !DISubprogram(name: "fflush_unlocked", scope: !1152, file: !1152, line: 239, type: !1413, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1777 = !DISubprogram(name: "clearerr_unlocked", scope: !1152, file: !1152, line: 794, type: !1778, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{null, !168}
!1780 = !DISubprogram(name: "free", scope: !1282, file: !1282, line: 555, type: !1781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{null, !108}
!1783 = distinct !DISubprogram(name: "add_tab_stop", scope: !442, file: !442, line: 84, type: !1784, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1786)
!1784 = !DISubroutineType(types: !1785)
!1785 = !{null, !388}
!1786 = !{!1787, !1788, !1789}
!1787 = !DILocalVariable(name: "tabval", arg: 1, scope: !1783, file: !442, line: 84, type: !388)
!1788 = !DILocalVariable(name: "prev_column", scope: !1783, file: !442, line: 86, type: !388)
!1789 = !DILocalVariable(name: "column_width", scope: !1783, file: !442, line: 87, type: !388)
!1790 = !DILocation(line: 0, scope: !1783)
!1791 = !DILocation(line: 86, column: 23, scope: !1783)
!1792 = !DILocation(line: 86, column: 40, scope: !1783)
!1793 = !DILocation(line: 86, column: 64, scope: !1783)
!1794 = !DILocation(line: 89, column: 25, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1783, file: !442, line: 89, column: 7)
!1796 = !DILocation(line: 89, column: 22, scope: !1795)
!1797 = !DILocation(line: 89, column: 7, scope: !1783)
!1798 = !DILocation(line: 90, column: 16, scope: !1795)
!1799 = !DILocation(line: 90, column: 14, scope: !1795)
!1800 = !DILocation(line: 91, column: 26, scope: !1783)
!1801 = !DILocation(line: 90, column: 5, scope: !1795)
!1802 = !DILocation(line: 91, column: 3, scope: !1783)
!1803 = !DILocation(line: 87, column: 36, scope: !1783)
!1804 = !DILocation(line: 87, column: 24, scope: !1783)
!1805 = !DILocation(line: 91, column: 30, scope: !1783)
!1806 = !DILocalVariable(name: "width", arg: 1, scope: !1807, file: !442, line: 73, type: !388)
!1807 = distinct !DISubprogram(name: "set_max_column_width", scope: !442, file: !442, line: 73, type: !1784, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1808)
!1808 = !{!1806}
!1809 = !DILocation(line: 0, scope: !1807, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 93, column: 3, scope: !1783)
!1811 = !DILocation(line: 75, column: 7, scope: !1812, inlinedAt: !1810)
!1812 = distinct !DILexicalBlock(scope: !1807, file: !442, line: 75, column: 7)
!1813 = !DILocation(line: 75, column: 24, scope: !1812, inlinedAt: !1810)
!1814 = !DILocation(line: 75, column: 7, scope: !1807, inlinedAt: !1810)
!1815 = !DILocation(line: 77, column: 11, scope: !1816, inlinedAt: !1810)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !442, line: 77, column: 11)
!1817 = distinct !DILexicalBlock(scope: !1812, file: !442, line: 76, column: 5)
!1818 = !DILocation(line: 94, column: 1, scope: !1783)
!1819 = distinct !DISubprogram(name: "parse_tab_stops", scope: !442, file: !442, line: 137, type: !1108, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1820)
!1820 = !{!1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1839}
!1821 = !DILocalVariable(name: "stops", arg: 1, scope: !1819, file: !442, line: 137, type: !115)
!1822 = !DILocalVariable(name: "have_tabval", scope: !1819, file: !442, line: 139, type: !109)
!1823 = !DILocalVariable(name: "tabval", scope: !1819, file: !442, line: 140, type: !388)
!1824 = !DILocalVariable(name: "extend_tabval", scope: !1819, file: !442, line: 141, type: !109)
!1825 = !DILocalVariable(name: "increment_tabval", scope: !1819, file: !442, line: 142, type: !109)
!1826 = !DILocalVariable(name: "num_start", scope: !1819, file: !442, line: 143, type: !115)
!1827 = !DILocalVariable(name: "ok", scope: !1819, file: !442, line: 144, type: !109)
!1828 = !DILocalVariable(name: "len", scope: !1829, file: !442, line: 207, type: !369)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !442, line: 206, column: 13)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !442, line: 205, column: 15)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !442, line: 196, column: 9)
!1832 = distinct !DILexicalBlock(scope: !1833, file: !442, line: 195, column: 16)
!1833 = distinct !DILexicalBlock(scope: !1834, file: !442, line: 184, column: 16)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !442, line: 173, column: 16)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !442, line: 148, column: 11)
!1836 = distinct !DILexicalBlock(scope: !1837, file: !442, line: 147, column: 5)
!1837 = distinct !DILexicalBlock(scope: !1838, file: !442, line: 146, column: 3)
!1838 = distinct !DILexicalBlock(scope: !1819, file: !442, line: 146, column: 3)
!1839 = !DILocalVariable(name: "bad_num", scope: !1829, file: !442, line: 208, type: !107)
!1840 = !DILocation(line: 0, scope: !1819)
!1841 = !DILocation(line: 146, column: 3, scope: !1819)
!1842 = !DILocation(line: 140, column: 9, scope: !1819)
!1843 = !DILocation(line: 141, column: 8, scope: !1819)
!1844 = !DILocation(line: 142, column: 8, scope: !1819)
!1845 = !DILocation(line: 143, column: 15, scope: !1819)
!1846 = !DILocation(line: 144, column: 8, scope: !1819)
!1847 = !DILocation(line: 146, column: 10, scope: !1837)
!1848 = !DILocation(line: 146, column: 3, scope: !1838)
!1849 = !DILocation(line: 148, column: 28, scope: !1835)
!1850 = !DILocation(line: 148, column: 11, scope: !1836)
!1851 = !DILocation(line: 150, column: 15, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !442, line: 150, column: 15)
!1853 = distinct !DILexicalBlock(scope: !1835, file: !442, line: 149, column: 9)
!1854 = !DILocation(line: 150, column: 15, scope: !1853)
!1855 = !DILocation(line: 152, column: 19, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1857, file: !442, line: 152, column: 19)
!1857 = distinct !DILexicalBlock(scope: !1852, file: !442, line: 151, column: 13)
!1858 = !DILocation(line: 152, column: 19, scope: !1857)
!1859 = !DILocalVariable(name: "tabval", arg: 1, scope: !1860, file: !442, line: 97, type: !388)
!1860 = distinct !DISubprogram(name: "set_extend_size", scope: !442, file: !442, line: 97, type: !1861, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1863)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!109, !388}
!1863 = !{!1859, !1864}
!1864 = !DILocalVariable(name: "ok", scope: !1860, file: !442, line: 99, type: !109)
!1865 = !DILocation(line: 0, scope: !1860, inlinedAt: !1866)
!1866 = distinct !DILocation(line: 154, column: 25, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !442, line: 154, column: 23)
!1868 = distinct !DILexicalBlock(scope: !1856, file: !442, line: 153, column: 17)
!1869 = !DILocation(line: 101, column: 7, scope: !1870, inlinedAt: !1866)
!1870 = distinct !DILexicalBlock(scope: !1860, file: !442, line: 101, column: 7)
!1871 = !DILocation(line: 101, column: 7, scope: !1860, inlinedAt: !1866)
!1872 = !DILocation(line: 103, column: 7, scope: !1873, inlinedAt: !1866)
!1873 = distinct !DILexicalBlock(scope: !1870, file: !442, line: 102, column: 5)
!1874 = !DILocation(line: 107, column: 5, scope: !1873, inlinedAt: !1866)
!1875 = !DILocation(line: 108, column: 15, scope: !1860, inlinedAt: !1866)
!1876 = !DILocation(line: 0, scope: !1807, inlinedAt: !1877)
!1877 = distinct !DILocation(line: 110, column: 3, scope: !1860, inlinedAt: !1866)
!1878 = !DILocation(line: 75, column: 7, scope: !1812, inlinedAt: !1877)
!1879 = !DILocation(line: 75, column: 24, scope: !1812, inlinedAt: !1877)
!1880 = !DILocation(line: 75, column: 7, scope: !1807, inlinedAt: !1877)
!1881 = !DILocation(line: 77, column: 11, scope: !1816, inlinedAt: !1877)
!1882 = !DILocation(line: 154, column: 23, scope: !1868)
!1883 = !DILocation(line: 160, column: 24, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1856, file: !442, line: 160, column: 24)
!1885 = !DILocation(line: 160, column: 24, scope: !1856)
!1886 = !DILocalVariable(name: "tabval", arg: 1, scope: !1887, file: !442, line: 116, type: !388)
!1887 = distinct !DISubprogram(name: "set_increment_size", scope: !442, file: !442, line: 116, type: !1861, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1888)
!1888 = !{!1886, !1889}
!1889 = !DILocalVariable(name: "ok", scope: !1887, file: !442, line: 118, type: !109)
!1890 = !DILocation(line: 0, scope: !1887, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 162, column: 25, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !442, line: 162, column: 23)
!1893 = distinct !DILexicalBlock(scope: !1884, file: !442, line: 161, column: 17)
!1894 = !DILocation(line: 120, column: 7, scope: !1895, inlinedAt: !1891)
!1895 = distinct !DILexicalBlock(scope: !1887, file: !442, line: 120, column: 7)
!1896 = !DILocation(line: 120, column: 7, scope: !1887, inlinedAt: !1891)
!1897 = !DILocation(line: 122, column: 7, scope: !1898, inlinedAt: !1891)
!1898 = distinct !DILexicalBlock(scope: !1895, file: !442, line: 121, column: 5)
!1899 = !DILocation(line: 126, column: 5, scope: !1898, inlinedAt: !1891)
!1900 = !DILocation(line: 127, column: 18, scope: !1887, inlinedAt: !1891)
!1901 = !DILocation(line: 0, scope: !1807, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 129, column: 3, scope: !1887, inlinedAt: !1891)
!1903 = !DILocation(line: 75, column: 7, scope: !1812, inlinedAt: !1902)
!1904 = !DILocation(line: 75, column: 24, scope: !1812, inlinedAt: !1902)
!1905 = !DILocation(line: 75, column: 7, scope: !1807, inlinedAt: !1902)
!1906 = !DILocation(line: 77, column: 11, scope: !1816, inlinedAt: !1902)
!1907 = !DILocation(line: 162, column: 23, scope: !1893)
!1908 = !DILocation(line: 0, scope: !1783, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 169, column: 17, scope: !1884)
!1910 = !DILocation(line: 86, column: 23, scope: !1783, inlinedAt: !1909)
!1911 = !DILocation(line: 86, column: 64, scope: !1783, inlinedAt: !1909)
!1912 = !DILocation(line: 86, column: 40, scope: !1783, inlinedAt: !1909)
!1913 = !DILocation(line: 89, column: 25, scope: !1795, inlinedAt: !1909)
!1914 = !DILocation(line: 89, column: 22, scope: !1795, inlinedAt: !1909)
!1915 = !DILocation(line: 89, column: 7, scope: !1783, inlinedAt: !1909)
!1916 = !DILocation(line: 90, column: 16, scope: !1795, inlinedAt: !1909)
!1917 = !DILocation(line: 90, column: 14, scope: !1795, inlinedAt: !1909)
!1918 = !DILocation(line: 91, column: 26, scope: !1783, inlinedAt: !1909)
!1919 = !DILocation(line: 90, column: 5, scope: !1795, inlinedAt: !1909)
!1920 = !DILocation(line: 91, column: 3, scope: !1783, inlinedAt: !1909)
!1921 = !DILocation(line: 87, column: 36, scope: !1783, inlinedAt: !1909)
!1922 = !DILocation(line: 87, column: 24, scope: !1783, inlinedAt: !1909)
!1923 = !DILocation(line: 91, column: 30, scope: !1783, inlinedAt: !1909)
!1924 = !DILocation(line: 0, scope: !1807, inlinedAt: !1925)
!1925 = distinct !DILocation(line: 93, column: 3, scope: !1783, inlinedAt: !1909)
!1926 = !DILocation(line: 75, column: 7, scope: !1812, inlinedAt: !1925)
!1927 = !DILocation(line: 75, column: 24, scope: !1812, inlinedAt: !1925)
!1928 = !DILocation(line: 75, column: 7, scope: !1807, inlinedAt: !1925)
!1929 = !DILocation(line: 77, column: 11, scope: !1816, inlinedAt: !1925)
!1930 = !DILocation(line: 173, column: 16, scope: !1835)
!1931 = !DILocation(line: 175, column: 15, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !442, line: 175, column: 15)
!1933 = distinct !DILexicalBlock(scope: !1834, file: !442, line: 174, column: 9)
!1934 = !DILocation(line: 175, column: 15, scope: !1933)
!1935 = !DILocation(line: 177, column: 15, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1932, file: !442, line: 176, column: 13)
!1937 = !DILocation(line: 180, column: 13, scope: !1936)
!1938 = !DILocation(line: 186, column: 15, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1940, file: !442, line: 186, column: 15)
!1940 = distinct !DILexicalBlock(scope: !1833, file: !442, line: 185, column: 9)
!1941 = !DILocation(line: 186, column: 15, scope: !1940)
!1942 = !DILocation(line: 188, column: 15, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1939, file: !442, line: 187, column: 13)
!1944 = !DILocation(line: 191, column: 13, scope: !1943)
!1945 = !DILocation(line: 173, column: 16, scope: !1834)
!1946 = !DILocalVariable(name: "c", arg: 1, scope: !1947, file: !1948, line: 233, type: !77)
!1947 = distinct !DISubprogram(name: "c_isdigit", scope: !1948, file: !1948, line: 233, type: !1949, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1951)
!1948 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!109, !77}
!1951 = !{!1946}
!1952 = !DILocation(line: 0, scope: !1947, inlinedAt: !1953)
!1953 = distinct !DILocation(line: 195, column: 16, scope: !1832)
!1954 = !DILocation(line: 235, column: 3, scope: !1947, inlinedAt: !1953)
!1955 = !DILocation(line: 195, column: 16, scope: !1833)
!1956 = !DILocation(line: 197, column: 16, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1831, file: !442, line: 197, column: 15)
!1958 = !DILocation(line: 197, column: 15, scope: !1831)
!1959 = !DILocation(line: 205, column: 16, scope: !1830)
!1960 = !DILocation(line: 205, column: 15, scope: !1831)
!1961 = !DILocation(line: 207, column: 27, scope: !1829)
!1962 = !DILocation(line: 0, scope: !1829)
!1963 = !DILocation(line: 208, column: 31, scope: !1829)
!1964 = !DILocation(line: 209, column: 15, scope: !1829)
!1965 = !DILocation(line: 210, column: 15, scope: !1829)
!1966 = !DILocation(line: 212, column: 33, scope: !1829)
!1967 = !DILocation(line: 212, column: 39, scope: !1829)
!1968 = !DILocation(line: 213, column: 13, scope: !1829)
!1969 = !DILocation(line: 217, column: 11, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1832, file: !442, line: 216, column: 9)
!1971 = !DILocation(line: 220, column: 11, scope: !1970)
!1972 = !DILocation(line: 146, column: 23, scope: !1837)
!1973 = !DILocation(line: 146, column: 3, scope: !1837)
!1974 = distinct !{!1974, !1848, !1975, !1204}
!1975 = !DILocation(line: 222, column: 5, scope: !1838)
!1976 = !DILocation(line: 224, column: 7, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1819, file: !442, line: 224, column: 7)
!1978 = !DILocation(line: 224, column: 10, scope: !1977)
!1979 = !DILocation(line: 226, column: 11, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !442, line: 226, column: 11)
!1981 = distinct !DILexicalBlock(scope: !1977, file: !442, line: 225, column: 5)
!1982 = !DILocation(line: 226, column: 11, scope: !1981)
!1983 = !DILocation(line: 0, scope: !1860, inlinedAt: !1984)
!1984 = distinct !DILocation(line: 227, column: 15, scope: !1980)
!1985 = !DILocation(line: 101, column: 7, scope: !1870, inlinedAt: !1984)
!1986 = !DILocation(line: 101, column: 7, scope: !1860, inlinedAt: !1984)
!1987 = !DILocation(line: 103, column: 7, scope: !1873, inlinedAt: !1984)
!1988 = !DILocation(line: 107, column: 5, scope: !1873, inlinedAt: !1984)
!1989 = !DILocation(line: 108, column: 15, scope: !1860, inlinedAt: !1984)
!1990 = !DILocation(line: 0, scope: !1807, inlinedAt: !1991)
!1991 = distinct !DILocation(line: 110, column: 3, scope: !1860, inlinedAt: !1984)
!1992 = !DILocation(line: 75, column: 7, scope: !1812, inlinedAt: !1991)
!1993 = !DILocation(line: 75, column: 24, scope: !1812, inlinedAt: !1991)
!1994 = !DILocation(line: 75, column: 7, scope: !1807, inlinedAt: !1991)
!1995 = !DILocation(line: 77, column: 11, scope: !1816, inlinedAt: !1991)
!1996 = !DILocation(line: 227, column: 12, scope: !1980)
!1997 = !DILocation(line: 227, column: 9, scope: !1980)
!1998 = !DILocation(line: 228, column: 16, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1980, file: !442, line: 228, column: 16)
!2000 = !DILocation(line: 228, column: 16, scope: !1980)
!2001 = !DILocation(line: 0, scope: !1887, inlinedAt: !2002)
!2002 = distinct !DILocation(line: 229, column: 15, scope: !1999)
!2003 = !DILocation(line: 120, column: 7, scope: !1895, inlinedAt: !2002)
!2004 = !DILocation(line: 120, column: 7, scope: !1887, inlinedAt: !2002)
!2005 = !DILocation(line: 122, column: 7, scope: !1898, inlinedAt: !2002)
!2006 = !DILocation(line: 126, column: 5, scope: !1898, inlinedAt: !2002)
!2007 = !DILocation(line: 127, column: 18, scope: !1887, inlinedAt: !2002)
!2008 = !DILocation(line: 0, scope: !1807, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 129, column: 3, scope: !1887, inlinedAt: !2002)
!2010 = !DILocation(line: 75, column: 7, scope: !1812, inlinedAt: !2009)
!2011 = !DILocation(line: 75, column: 24, scope: !1812, inlinedAt: !2009)
!2012 = !DILocation(line: 75, column: 7, scope: !1807, inlinedAt: !2009)
!2013 = !DILocation(line: 77, column: 11, scope: !1816, inlinedAt: !2009)
!2014 = !DILocation(line: 229, column: 12, scope: !1999)
!2015 = !DILocation(line: 229, column: 9, scope: !1999)
!2016 = !DILocation(line: 0, scope: !1783, inlinedAt: !2017)
!2017 = distinct !DILocation(line: 231, column: 9, scope: !1999)
!2018 = !DILocation(line: 86, column: 23, scope: !1783, inlinedAt: !2017)
!2019 = !DILocation(line: 86, column: 64, scope: !1783, inlinedAt: !2017)
!2020 = !DILocation(line: 86, column: 40, scope: !1783, inlinedAt: !2017)
!2021 = !DILocation(line: 89, column: 25, scope: !1795, inlinedAt: !2017)
!2022 = !DILocation(line: 89, column: 22, scope: !1795, inlinedAt: !2017)
!2023 = !DILocation(line: 89, column: 7, scope: !1783, inlinedAt: !2017)
!2024 = !DILocation(line: 90, column: 16, scope: !1795, inlinedAt: !2017)
!2025 = !DILocation(line: 90, column: 14, scope: !1795, inlinedAt: !2017)
!2026 = !DILocation(line: 91, column: 26, scope: !1783, inlinedAt: !2017)
!2027 = !DILocation(line: 90, column: 5, scope: !1795, inlinedAt: !2017)
!2028 = !DILocation(line: 91, column: 3, scope: !1783, inlinedAt: !2017)
!2029 = !DILocation(line: 87, column: 36, scope: !1783, inlinedAt: !2017)
!2030 = !DILocation(line: 87, column: 24, scope: !1783, inlinedAt: !2017)
!2031 = !DILocation(line: 91, column: 30, scope: !1783, inlinedAt: !2017)
!2032 = !DILocation(line: 0, scope: !1807, inlinedAt: !2033)
!2033 = distinct !DILocation(line: 93, column: 3, scope: !1783, inlinedAt: !2017)
!2034 = !DILocation(line: 75, column: 7, scope: !1812, inlinedAt: !2033)
!2035 = !DILocation(line: 75, column: 24, scope: !1812, inlinedAt: !2033)
!2036 = !DILocation(line: 75, column: 7, scope: !1807, inlinedAt: !2033)
!2037 = !DILocation(line: 77, column: 11, scope: !1816, inlinedAt: !2033)
!2038 = !DILocation(line: 234, column: 9, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1819, file: !442, line: 234, column: 7)
!2040 = !DILocation(line: 234, column: 7, scope: !1819)
!2041 = !DILocation(line: 235, column: 5, scope: !2039)
!2042 = !DILocation(line: 236, column: 1, scope: !1819)
!2043 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !442, file: !442, line: 268, type: !356, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1095)
!2044 = !DILocation(line: 270, column: 23, scope: !2043)
!2045 = !DILocation(line: 270, column: 33, scope: !2043)
!2046 = !DILocalVariable(name: "tabs", arg: 1, scope: !2047, file: !442, line: 242, type: !2050)
!2047 = distinct !DISubprogram(name: "validate_tab_stops", scope: !442, file: !442, line: 242, type: !2048, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !2052)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{null, !2050, !369}
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!2052 = !{!2046, !2053, !2054, !2055}
!2053 = !DILocalVariable(name: "entries", arg: 2, scope: !2047, file: !442, line: 242, type: !369)
!2054 = !DILocalVariable(name: "prev_tab", scope: !2047, file: !442, line: 244, type: !388)
!2055 = !DILocalVariable(name: "i", scope: !2056, file: !442, line: 246, type: !369)
!2056 = distinct !DILexicalBlock(scope: !2047, file: !442, line: 246, column: 3)
!2057 = !DILocation(line: 0, scope: !2047, inlinedAt: !2058)
!2058 = distinct !DILocation(line: 270, column: 3, scope: !2043)
!2059 = !DILocation(line: 0, scope: !2056, inlinedAt: !2058)
!2060 = !DILocation(line: 246, column: 23, scope: !2061, inlinedAt: !2058)
!2061 = distinct !DILexicalBlock(scope: !2056, file: !442, line: 246, column: 3)
!2062 = !DILocation(line: 246, column: 3, scope: !2056, inlinedAt: !2058)
!2063 = !DILocation(line: 246, column: 35, scope: !2061, inlinedAt: !2058)
!2064 = distinct !{!2064, !2062, !2065, !1204}
!2065 = !DILocation(line: 253, column: 5, scope: !2056, inlinedAt: !2058)
!2066 = !DILocation(line: 255, column: 7, scope: !2067, inlinedAt: !2058)
!2067 = distinct !DILexicalBlock(scope: !2047, file: !442, line: 255, column: 7)
!2068 = !DILocation(line: 255, column: 22, scope: !2067, inlinedAt: !2058)
!2069 = !DILocation(line: 248, column: 11, scope: !2070, inlinedAt: !2058)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !442, line: 248, column: 11)
!2071 = distinct !DILexicalBlock(scope: !2061, file: !442, line: 247, column: 5)
!2072 = !DILocation(line: 248, column: 19, scope: !2070, inlinedAt: !2058)
!2073 = !DILocation(line: 248, column: 11, scope: !2071, inlinedAt: !2058)
!2074 = !DILocation(line: 249, column: 9, scope: !2070, inlinedAt: !2058)
!2075 = !DILocation(line: 250, column: 19, scope: !2076, inlinedAt: !2058)
!2076 = distinct !DILexicalBlock(scope: !2071, file: !442, line: 250, column: 11)
!2077 = !DILocation(line: 250, column: 11, scope: !2071, inlinedAt: !2058)
!2078 = !DILocation(line: 251, column: 9, scope: !2076, inlinedAt: !2058)
!2079 = !DILocation(line: 256, column: 5, scope: !2067, inlinedAt: !2058)
!2080 = !DILocation(line: 272, column: 22, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2043, file: !442, line: 272, column: 7)
!2082 = !DILocation(line: 272, column: 7, scope: !2043)
!2083 = !DILocation(line: 273, column: 35, scope: !2081)
!2084 = !DILocation(line: 273, column: 33, scope: !2081)
!2085 = !DILocation(line: 273, column: 5, scope: !2081)
!2086 = !DILocation(line: 276, column: 27, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2081, file: !442, line: 276, column: 12)
!2088 = !DILocation(line: 276, column: 32, scope: !2087)
!2089 = !DILocation(line: 277, column: 16, scope: !2087)
!2090 = !DILocation(line: 277, column: 5, scope: !2087)
!2091 = !DILocation(line: 0, scope: !2081)
!2092 = !DILocation(line: 280, column: 1, scope: !2043)
!2093 = distinct !DISubprogram(name: "get_next_tab_column", scope: !442, file: !442, line: 288, type: !2094, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !2097)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!388, !388, !1039, !2096}
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2097 = !{!2098, !2099, !2100, !2101, !2102, !2108, !2112}
!2098 = !DILocalVariable(name: "column", arg: 1, scope: !2093, file: !442, line: 288, type: !388)
!2099 = !DILocalVariable(name: "tab_index", arg: 2, scope: !2093, file: !442, line: 288, type: !1039)
!2100 = !DILocalVariable(name: "last_tab", arg: 3, scope: !2093, file: !442, line: 288, type: !2096)
!2101 = !DILocalVariable(name: "tab_distance", scope: !2093, file: !442, line: 291, type: !388)
!2102 = !DILocalVariable(name: "tab", scope: !2103, file: !442, line: 302, type: !388)
!2103 = distinct !DILexicalBlock(scope: !2104, file: !442, line: 301, column: 9)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !442, line: 300, column: 7)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !442, line: 300, column: 7)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !442, line: 297, column: 5)
!2107 = distinct !DILexicalBlock(scope: !2093, file: !442, line: 294, column: 7)
!2108 = !DILocalVariable(name: "end_tab", scope: !2109, file: !442, line: 314, type: !388)
!2109 = distinct !DILexicalBlock(scope: !2110, file: !442, line: 311, column: 9)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !442, line: 310, column: 16)
!2111 = distinct !DILexicalBlock(scope: !2106, file: !442, line: 308, column: 11)
!2112 = !DILocalVariable(name: "tab_stop", scope: !2093, file: !442, line: 324, type: !388)
!2113 = !DILocation(line: 0, scope: !2093)
!2114 = !DILocation(line: 290, column: 13, scope: !2093)
!2115 = !DILocation(line: 294, column: 7, scope: !2107)
!2116 = !DILocation(line: 294, column: 7, scope: !2093)
!2117 = !DILocation(line: 300, column: 26, scope: !2104)
!2118 = !DILocation(line: 300, column: 7, scope: !2105)
!2119 = !DILocation(line: 295, column: 38, scope: !2107)
!2120 = !DILocation(line: 295, column: 29, scope: !2107)
!2121 = !DILocation(line: 295, column: 5, scope: !2107)
!2122 = !DILocation(line: 302, column: 23, scope: !2103)
!2123 = !DILocation(line: 0, scope: !2103)
!2124 = !DILocation(line: 303, column: 22, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2103, file: !442, line: 303, column: 15)
!2126 = !DILocation(line: 300, column: 57, scope: !2104)
!2127 = distinct !{!2127, !2118, !2128, !1204}
!2128 = !DILocation(line: 305, column: 9, scope: !2105)
!2129 = !DILocation(line: 308, column: 11, scope: !2111)
!2130 = !DILocation(line: 308, column: 11, scope: !2106)
!2131 = !DILocation(line: 309, column: 45, scope: !2111)
!2132 = !DILocation(line: 309, column: 36, scope: !2111)
!2133 = !DILocation(line: 309, column: 9, scope: !2111)
!2134 = !DILocation(line: 310, column: 16, scope: !2110)
!2135 = !DILocation(line: 310, column: 16, scope: !2111)
!2136 = !DILocation(line: 314, column: 27, scope: !2109)
!2137 = !DILocation(line: 314, column: 51, scope: !2109)
!2138 = !DILocation(line: 0, scope: !2109)
!2139 = !DILocation(line: 315, column: 52, scope: !2109)
!2140 = !DILocation(line: 315, column: 63, scope: !2109)
!2141 = !DILocation(line: 315, column: 41, scope: !2109)
!2142 = !DILocation(line: 316, column: 9, scope: !2109)
!2143 = !DILocation(line: 319, column: 21, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2110, file: !442, line: 318, column: 9)
!2145 = !DILocation(line: 0, scope: !2107)
!2146 = !DILocation(line: 325, column: 7, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2093, file: !442, line: 325, column: 7)
!2148 = !DILocation(line: 325, column: 7, scope: !2093)
!2149 = !DILocation(line: 326, column: 5, scope: !2147)
!2150 = !DILocation(line: 328, column: 1, scope: !2093)
!2151 = distinct !DISubprogram(name: "set_file_list", scope: !442, file: !442, line: 333, type: !2152, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !2154)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{null, !593}
!2154 = !{!2155}
!2155 = !DILocalVariable(name: "list", arg: 1, scope: !2151, file: !442, line: 333, type: !593)
!2156 = !DILocation(line: 0, scope: !2151)
!2157 = !DILocation(line: 335, column: 19, scope: !2151)
!2158 = !DILocation(line: 337, column: 8, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2151, file: !442, line: 337, column: 7)
!2160 = !DILocation(line: 0, scope: !2159)
!2161 = !DILocation(line: 341, column: 1, scope: !2151)
!2162 = !DILocation(line: 0, scope: !494)
!2163 = !DILocation(line: 354, column: 7, scope: !536)
!2164 = !DILocation(line: 354, column: 7, scope: !494)
!2165 = !DILocation(line: 356, column: 17, scope: !535)
!2166 = !DILocation(line: 0, scope: !535)
!2167 = !DILocalVariable(name: "__stream", arg: 1, scope: !2168, file: !1412, line: 135, type: !497)
!2168 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1412, file: !1412, line: 135, type: !2169, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !2171)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!77, !497}
!2171 = !{!2167}
!2172 = !DILocation(line: 0, scope: !2168, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 357, column: 12, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !535, file: !442, line: 357, column: 11)
!2175 = !DILocation(line: 137, column: 10, scope: !2168, inlinedAt: !2173)
!2176 = !DILocation(line: 357, column: 12, scope: !2174)
!2177 = !DILocation(line: 357, column: 11, scope: !535)
!2178 = !DILocation(line: 359, column: 18, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !535, file: !442, line: 359, column: 11)
!2180 = !DILocalVariable(name: "__s1", arg: 1, scope: !2181, file: !1170, line: 1359, type: !115)
!2181 = distinct !DISubprogram(name: "streq", scope: !1170, file: !1170, line: 1359, type: !1171, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !2182)
!2182 = !{!2180, !2183}
!2183 = !DILocalVariable(name: "__s2", arg: 2, scope: !2181, file: !1170, line: 1359, type: !115)
!2184 = !DILocation(line: 0, scope: !2181, inlinedAt: !2185)
!2185 = distinct !DILocation(line: 359, column: 11, scope: !2179)
!2186 = !DILocation(line: 1361, column: 11, scope: !2181, inlinedAt: !2185)
!2187 = !DILocation(line: 1361, column: 10, scope: !2181, inlinedAt: !2185)
!2188 = !DILocation(line: 359, column: 11, scope: !535)
!2189 = !DILocation(line: 360, column: 9, scope: !2179)
!2190 = !DILocation(line: 361, column: 16, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2179, file: !442, line: 361, column: 16)
!2192 = !DILocation(line: 361, column: 28, scope: !2191)
!2193 = !DILocation(line: 361, column: 16, scope: !2179)
!2194 = !DILocation(line: 362, column: 15, scope: !2191)
!2195 = !DILocation(line: 362, column: 9, scope: !2191)
!2196 = !DILocation(line: 363, column: 11, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !535, file: !442, line: 363, column: 11)
!2198 = !DILocation(line: 363, column: 11, scope: !535)
!2199 = !DILocation(line: 365, column: 11, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2197, file: !442, line: 364, column: 9)
!2201 = !DILocation(line: 366, column: 23, scope: !2200)
!2202 = !DILocation(line: 367, column: 9, scope: !2200)
!2203 = !DILocation(line: 370, column: 28, scope: !494)
!2204 = !DILocation(line: 370, column: 18, scope: !494)
!2205 = !DILocation(line: 370, column: 32, scope: !494)
!2206 = !DILocation(line: 370, column: 3, scope: !494)
!2207 = !DILocation(line: 0, scope: !2181, inlinedAt: !2208)
!2208 = distinct !DILocation(line: 372, column: 11, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !442, line: 372, column: 11)
!2210 = distinct !DILexicalBlock(scope: !494, file: !442, line: 371, column: 5)
!2211 = !DILocation(line: 1361, column: 11, scope: !2181, inlinedAt: !2208)
!2212 = !DILocation(line: 1361, column: 10, scope: !2181, inlinedAt: !2208)
!2213 = !DILocation(line: 372, column: 11, scope: !2210)
!2214 = !DILocation(line: 374, column: 27, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2209, file: !442, line: 373, column: 9)
!2216 = !DILocation(line: 375, column: 16, scope: !2215)
!2217 = !DILocation(line: 376, column: 9, scope: !2215)
!2218 = !DILocation(line: 378, column: 14, scope: !2209)
!2219 = !DILocation(line: 0, scope: !2209)
!2220 = !DILocation(line: 379, column: 11, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2210, file: !442, line: 379, column: 11)
!2222 = !DILocation(line: 379, column: 11, scope: !2210)
!2223 = !DILocation(line: 381, column: 21, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2221, file: !442, line: 380, column: 9)
!2225 = !DILocation(line: 382, column: 11, scope: !2224)
!2226 = !DILocation(line: 383, column: 11, scope: !2224)
!2227 = !DILocation(line: 385, column: 7, scope: !2210)
!2228 = !DILocation(line: 386, column: 19, scope: !2210)
!2229 = distinct !{!2229, !2206, !2230, !1204}
!2230 = !DILocation(line: 387, column: 5, scope: !494)
!2231 = !DILocation(line: 389, column: 1, scope: !494)
!2232 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !442, file: !442, line: 393, type: !356, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1095)
!2233 = !DILocation(line: 395, column: 9, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2232, file: !442, line: 395, column: 9)
!2235 = !DILocation(line: 395, column: 25, scope: !2234)
!2236 = !DILocation(line: 395, column: 36, scope: !2234)
!2237 = !DILocation(line: 395, column: 28, scope: !2234)
!2238 = !DILocation(line: 395, column: 43, scope: !2234)
!2239 = !DILocation(line: 395, column: 9, scope: !2232)
!2240 = !DILocation(line: 396, column: 7, scope: !2234)
!2241 = !DILocation(line: 397, column: 1, scope: !2232)
!2242 = distinct !DISubprogram(name: "emit_tab_list_info", scope: !442, file: !442, line: 402, type: !1108, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !2243)
!2243 = !{!2244}
!2244 = !DILocalVariable(name: "program", arg: 1, scope: !2242, file: !442, line: 402, type: !115)
!2245 = !DILocation(line: 0, scope: !2242)
!2246 = !DILocation(line: 405, column: 20, scope: !2242)
!2247 = !DILocation(line: 0, scope: !596, inlinedAt: !2248)
!2248 = distinct !DILocation(line: 405, column: 3, scope: !2242)
!2249 = !DILocation(line: 581, column: 7, scope: !603, inlinedAt: !2248)
!2250 = !DILocation(line: 581, column: 19, scope: !603, inlinedAt: !2248)
!2251 = !DILocation(line: 581, column: 7, scope: !596, inlinedAt: !2248)
!2252 = !DILocation(line: 585, column: 26, scope: !602, inlinedAt: !2248)
!2253 = !DILocation(line: 0, scope: !602, inlinedAt: !2248)
!2254 = !DILocation(line: 586, column: 23, scope: !602, inlinedAt: !2248)
!2255 = !DILocation(line: 586, column: 28, scope: !602, inlinedAt: !2248)
!2256 = !DILocation(line: 586, column: 32, scope: !602, inlinedAt: !2248)
!2257 = !DILocation(line: 586, column: 38, scope: !602, inlinedAt: !2248)
!2258 = !DILocation(line: 0, scope: !2181, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 586, column: 41, scope: !602, inlinedAt: !2248)
!2260 = !DILocation(line: 1361, column: 11, scope: !2181, inlinedAt: !2259)
!2261 = !DILocation(line: 1361, column: 10, scope: !2181, inlinedAt: !2259)
!2262 = !DILocation(line: 586, column: 19, scope: !602, inlinedAt: !2248)
!2263 = !DILocation(line: 587, column: 5, scope: !602, inlinedAt: !2248)
!2264 = !DILocation(line: 588, column: 7, scope: !2265, inlinedAt: !2248)
!2265 = distinct !DILexicalBlock(scope: !596, file: !76, line: 588, column: 7)
!2266 = !DILocation(line: 588, column: 7, scope: !596, inlinedAt: !2248)
!2267 = !DILocation(line: 590, column: 7, scope: !2268, inlinedAt: !2248)
!2268 = distinct !DILexicalBlock(scope: !2265, file: !76, line: 589, column: 5)
!2269 = !DILocation(line: 591, column: 7, scope: !2268, inlinedAt: !2248)
!2270 = !DILocation(line: 595, column: 37, scope: !596, inlinedAt: !2248)
!2271 = !DILocation(line: 595, column: 35, scope: !596, inlinedAt: !2248)
!2272 = !DILocation(line: 596, column: 29, scope: !596, inlinedAt: !2248)
!2273 = !DILocation(line: 597, column: 8, scope: !610, inlinedAt: !2248)
!2274 = !DILocation(line: 597, column: 7, scope: !596, inlinedAt: !2248)
!2275 = !DILocation(line: 604, column: 24, scope: !609, inlinedAt: !2248)
!2276 = !DILocation(line: 604, column: 12, scope: !610, inlinedAt: !2248)
!2277 = !DILocation(line: 0, scope: !608, inlinedAt: !2248)
!2278 = !DILocation(line: 610, column: 16, scope: !608, inlinedAt: !2248)
!2279 = !DILocation(line: 610, column: 7, scope: !608, inlinedAt: !2248)
!2280 = !DILocation(line: 611, column: 21, scope: !608, inlinedAt: !2248)
!2281 = !DILocation(line: 611, column: 19, scope: !608, inlinedAt: !2248)
!2282 = !DILocation(line: 611, column: 16, scope: !608, inlinedAt: !2248)
!2283 = !DILocation(line: 610, column: 30, scope: !608, inlinedAt: !2248)
!2284 = distinct !{!2284, !2279, !2280, !1204}
!2285 = !DILocation(line: 612, column: 18, scope: !2286, inlinedAt: !2248)
!2286 = distinct !DILexicalBlock(scope: !608, file: !76, line: 612, column: 11)
!2287 = !DILocation(line: 612, column: 11, scope: !608, inlinedAt: !2248)
!2288 = !DILocation(line: 618, column: 5, scope: !608, inlinedAt: !2248)
!2289 = !DILocation(line: 620, column: 23, scope: !596, inlinedAt: !2248)
!2290 = !DILocation(line: 625, column: 39, scope: !596, inlinedAt: !2248)
!2291 = !DILocation(line: 626, column: 3, scope: !596, inlinedAt: !2248)
!2292 = !DILocation(line: 626, column: 10, scope: !596, inlinedAt: !2248)
!2293 = !DILocation(line: 626, column: 21, scope: !596, inlinedAt: !2248)
!2294 = !DILocation(line: 628, column: 44, scope: !2295, inlinedAt: !2248)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !76, line: 628, column: 11)
!2296 = distinct !DILexicalBlock(scope: !596, file: !76, line: 627, column: 5)
!2297 = !DILocation(line: 628, column: 32, scope: !2295, inlinedAt: !2248)
!2298 = !DILocation(line: 628, column: 49, scope: !2295, inlinedAt: !2248)
!2299 = !DILocation(line: 628, column: 11, scope: !2296, inlinedAt: !2248)
!2300 = !DILocation(line: 630, column: 11, scope: !2301, inlinedAt: !2248)
!2301 = distinct !DILexicalBlock(scope: !2296, file: !76, line: 630, column: 11)
!2302 = !DILocation(line: 630, column: 11, scope: !2296, inlinedAt: !2248)
!2303 = !DILocation(line: 632, column: 26, scope: !2304, inlinedAt: !2248)
!2304 = distinct !DILexicalBlock(scope: !2305, file: !76, line: 632, column: 15)
!2305 = distinct !DILexicalBlock(scope: !2301, file: !76, line: 631, column: 9)
!2306 = !DILocation(line: 632, column: 34, scope: !2304, inlinedAt: !2248)
!2307 = !DILocation(line: 632, column: 37, scope: !2304, inlinedAt: !2248)
!2308 = !DILocation(line: 632, column: 15, scope: !2305, inlinedAt: !2248)
!2309 = !DILocation(line: 636, column: 16, scope: !2310, inlinedAt: !2248)
!2310 = distinct !DILexicalBlock(scope: !2305, file: !76, line: 636, column: 15)
!2311 = !DILocation(line: 636, column: 29, scope: !2310, inlinedAt: !2248)
!2312 = !DILocation(line: 640, column: 16, scope: !2296, inlinedAt: !2248)
!2313 = distinct !{!2313, !2291, !2314, !1204}
!2314 = !DILocation(line: 641, column: 5, scope: !596, inlinedAt: !2248)
!2315 = !DILocation(line: 644, column: 3, scope: !596, inlinedAt: !2248)
!2316 = !DILocation(line: 0, scope: !2181, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 648, column: 31, scope: !596, inlinedAt: !2248)
!2318 = !DILocation(line: 1361, column: 11, scope: !2181, inlinedAt: !2317)
!2319 = !DILocation(line: 1361, column: 10, scope: !2181, inlinedAt: !2317)
!2320 = !DILocation(line: 648, column: 31, scope: !596, inlinedAt: !2248)
!2321 = !DILocation(line: 0, scope: !2181, inlinedAt: !2322)
!2322 = distinct !DILocation(line: 649, column: 31, scope: !596, inlinedAt: !2248)
!2323 = !DILocation(line: 1361, column: 11, scope: !2181, inlinedAt: !2322)
!2324 = !DILocation(line: 1361, column: 10, scope: !2181, inlinedAt: !2322)
!2325 = !DILocation(line: 649, column: 31, scope: !596, inlinedAt: !2248)
!2326 = !DILocation(line: 0, scope: !2181, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 650, column: 31, scope: !596, inlinedAt: !2248)
!2328 = !DILocation(line: 1361, column: 11, scope: !2181, inlinedAt: !2327)
!2329 = !DILocation(line: 1361, column: 10, scope: !2181, inlinedAt: !2327)
!2330 = !DILocation(line: 650, column: 31, scope: !596, inlinedAt: !2248)
!2331 = !DILocation(line: 0, scope: !2181, inlinedAt: !2332)
!2332 = distinct !DILocation(line: 651, column: 31, scope: !596, inlinedAt: !2248)
!2333 = !DILocation(line: 1361, column: 11, scope: !2181, inlinedAt: !2332)
!2334 = !DILocation(line: 1361, column: 10, scope: !2181, inlinedAt: !2332)
!2335 = !DILocation(line: 651, column: 31, scope: !596, inlinedAt: !2248)
!2336 = !DILocation(line: 0, scope: !2181, inlinedAt: !2337)
!2337 = distinct !DILocation(line: 652, column: 31, scope: !596, inlinedAt: !2248)
!2338 = !DILocation(line: 1361, column: 11, scope: !2181, inlinedAt: !2337)
!2339 = !DILocation(line: 1361, column: 10, scope: !2181, inlinedAt: !2337)
!2340 = !DILocation(line: 652, column: 31, scope: !596, inlinedAt: !2248)
!2341 = !DILocation(line: 0, scope: !2181, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 653, column: 31, scope: !596, inlinedAt: !2248)
!2343 = !DILocation(line: 1361, column: 11, scope: !2181, inlinedAt: !2342)
!2344 = !DILocation(line: 1361, column: 10, scope: !2181, inlinedAt: !2342)
!2345 = !DILocation(line: 653, column: 31, scope: !596, inlinedAt: !2248)
!2346 = !DILocation(line: 0, scope: !2181, inlinedAt: !2347)
!2347 = distinct !DILocation(line: 654, column: 31, scope: !596, inlinedAt: !2248)
!2348 = !DILocation(line: 1361, column: 11, scope: !2181, inlinedAt: !2347)
!2349 = !DILocation(line: 1361, column: 10, scope: !2181, inlinedAt: !2347)
!2350 = !DILocation(line: 654, column: 31, scope: !596, inlinedAt: !2248)
!2351 = !DILocation(line: 0, scope: !2181, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 655, column: 31, scope: !596, inlinedAt: !2248)
!2353 = !DILocation(line: 1361, column: 11, scope: !2181, inlinedAt: !2352)
!2354 = !DILocation(line: 1361, column: 10, scope: !2181, inlinedAt: !2352)
!2355 = !DILocation(line: 655, column: 31, scope: !596, inlinedAt: !2248)
!2356 = !DILocation(line: 0, scope: !2181, inlinedAt: !2357)
!2357 = distinct !DILocation(line: 656, column: 31, scope: !596, inlinedAt: !2248)
!2358 = !DILocation(line: 1361, column: 11, scope: !2181, inlinedAt: !2357)
!2359 = !DILocation(line: 1361, column: 10, scope: !2181, inlinedAt: !2357)
!2360 = !DILocation(line: 656, column: 31, scope: !596, inlinedAt: !2248)
!2361 = !DILocation(line: 0, scope: !2181, inlinedAt: !2362)
!2362 = distinct !DILocation(line: 657, column: 31, scope: !596, inlinedAt: !2248)
!2363 = !DILocation(line: 1361, column: 11, scope: !2181, inlinedAt: !2362)
!2364 = !DILocation(line: 1361, column: 10, scope: !2181, inlinedAt: !2362)
!2365 = !DILocation(line: 657, column: 31, scope: !596, inlinedAt: !2248)
!2366 = !DILocation(line: 663, column: 7, scope: !2367, inlinedAt: !2248)
!2367 = distinct !DILexicalBlock(scope: !596, file: !76, line: 663, column: 7)
!2368 = !DILocation(line: 664, column: 7, scope: !2367, inlinedAt: !2248)
!2369 = !DILocation(line: 664, column: 10, scope: !2367, inlinedAt: !2248)
!2370 = !DILocation(line: 663, column: 7, scope: !596, inlinedAt: !2248)
!2371 = !DILocation(line: 669, column: 7, scope: !2372, inlinedAt: !2248)
!2372 = distinct !DILexicalBlock(scope: !2367, file: !76, line: 665, column: 5)
!2373 = !DILocation(line: 671, column: 5, scope: !2372, inlinedAt: !2248)
!2374 = !DILocation(line: 676, column: 7, scope: !2375, inlinedAt: !2248)
!2375 = distinct !DILexicalBlock(scope: !2367, file: !76, line: 673, column: 5)
!2376 = !DILocation(line: 679, column: 3, scope: !596, inlinedAt: !2248)
!2377 = !DILocation(line: 683, column: 3, scope: !596, inlinedAt: !2248)
!2378 = !DILocation(line: 686, column: 3, scope: !596, inlinedAt: !2248)
!2379 = !DILocation(line: 688, column: 3, scope: !596, inlinedAt: !2248)
!2380 = !DILocation(line: 691, column: 3, scope: !596, inlinedAt: !2248)
!2381 = !DILocation(line: 695, column: 3, scope: !596, inlinedAt: !2248)
!2382 = !DILocation(line: 696, column: 1, scope: !596, inlinedAt: !2248)
!2383 = !DILocation(line: 409, column: 3, scope: !2242)
!2384 = !DILocation(line: 416, column: 1, scope: !2242)
!2385 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !688, file: !688, line: 50, type: !1108, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !2386)
!2386 = !{!2387}
!2387 = !DILocalVariable(name: "file", arg: 1, scope: !2385, file: !688, line: 50, type: !115)
!2388 = !DILocation(line: 0, scope: !2385)
!2389 = !DILocation(line: 52, column: 13, scope: !2385)
!2390 = !DILocation(line: 53, column: 1, scope: !2385)
!2391 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !688, file: !688, line: 87, type: !2392, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !2394)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{null, !109}
!2394 = !{!2395}
!2395 = !DILocalVariable(name: "ignore", arg: 1, scope: !2391, file: !688, line: 87, type: !109)
!2396 = !DILocation(line: 0, scope: !2391)
!2397 = !DILocation(line: 89, column: 16, scope: !2391)
!2398 = !DILocation(line: 90, column: 1, scope: !2391)
!2399 = distinct !DISubprogram(name: "close_stdout", scope: !688, file: !688, line: 116, type: !356, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !2400)
!2400 = !{!2401}
!2401 = !DILocalVariable(name: "write_error", scope: !2402, file: !688, line: 121, type: !115)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !688, line: 120, column: 5)
!2403 = distinct !DILexicalBlock(scope: !2399, file: !688, line: 118, column: 7)
!2404 = !DILocation(line: 118, column: 21, scope: !2403)
!2405 = !DILocation(line: 118, column: 7, scope: !2403)
!2406 = !DILocation(line: 118, column: 29, scope: !2403)
!2407 = !DILocation(line: 119, column: 7, scope: !2403)
!2408 = !DILocation(line: 119, column: 12, scope: !2403)
!2409 = !DILocation(line: 119, column: 25, scope: !2403)
!2410 = !DILocation(line: 119, column: 28, scope: !2403)
!2411 = !DILocation(line: 119, column: 34, scope: !2403)
!2412 = !DILocation(line: 118, column: 7, scope: !2399)
!2413 = !DILocation(line: 121, column: 33, scope: !2402)
!2414 = !DILocation(line: 0, scope: !2402)
!2415 = !DILocation(line: 122, column: 11, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2402, file: !688, line: 122, column: 11)
!2417 = !DILocation(line: 0, scope: !2416)
!2418 = !DILocation(line: 122, column: 11, scope: !2402)
!2419 = !DILocation(line: 123, column: 9, scope: !2416)
!2420 = !DILocation(line: 126, column: 9, scope: !2416)
!2421 = !DILocation(line: 128, column: 14, scope: !2402)
!2422 = !DILocation(line: 128, column: 7, scope: !2402)
!2423 = !DILocation(line: 133, column: 42, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2399, file: !688, line: 133, column: 7)
!2425 = !DILocation(line: 133, column: 28, scope: !2424)
!2426 = !DILocation(line: 133, column: 50, scope: !2424)
!2427 = !DILocation(line: 133, column: 7, scope: !2399)
!2428 = !DILocation(line: 134, column: 12, scope: !2424)
!2429 = !DILocation(line: 134, column: 5, scope: !2424)
!2430 = !DILocation(line: 135, column: 1, scope: !2399)
!2431 = !DISubprogram(name: "_exit", scope: !2432, file: !2432, line: 624, type: !1076, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!2432 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2433 = distinct !DISubprogram(name: "verror", scope: !703, file: !703, line: 251, type: !2434, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{null, !77, !77, !115, !713}
!2436 = !{!2437, !2438, !2439, !2440}
!2437 = !DILocalVariable(name: "status", arg: 1, scope: !2433, file: !703, line: 251, type: !77)
!2438 = !DILocalVariable(name: "errnum", arg: 2, scope: !2433, file: !703, line: 251, type: !77)
!2439 = !DILocalVariable(name: "message", arg: 3, scope: !2433, file: !703, line: 251, type: !115)
!2440 = !DILocalVariable(name: "args", arg: 4, scope: !2433, file: !703, line: 251, type: !713)
!2441 = !DILocation(line: 0, scope: !2433)
!2442 = !DILocation(line: 261, column: 3, scope: !2433)
!2443 = !DILocation(line: 265, column: 7, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2433, file: !703, line: 265, column: 7)
!2445 = !DILocation(line: 265, column: 7, scope: !2433)
!2446 = !DILocation(line: 266, column: 5, scope: !2444)
!2447 = !DILocation(line: 272, column: 7, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2444, file: !703, line: 268, column: 5)
!2449 = !DILocation(line: 276, column: 3, scope: !2433)
!2450 = !DILocation(line: 282, column: 1, scope: !2433)
!2451 = distinct !DISubprogram(name: "flush_stdout", scope: !703, file: !703, line: 163, type: !356, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2452)
!2452 = !{!2453}
!2453 = !DILocalVariable(name: "stdout_fd", scope: !2451, file: !703, line: 166, type: !77)
!2454 = !DILocation(line: 0, scope: !2451)
!2455 = !DILocalVariable(name: "fd", arg: 1, scope: !2456, file: !703, line: 145, type: !77)
!2456 = distinct !DISubprogram(name: "is_open", scope: !703, file: !703, line: 145, type: !2457, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2459)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!77, !77}
!2459 = !{!2455}
!2460 = !DILocation(line: 0, scope: !2456, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 182, column: 25, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2451, file: !703, line: 182, column: 7)
!2463 = !DILocation(line: 157, column: 15, scope: !2456, inlinedAt: !2461)
!2464 = !DILocation(line: 157, column: 12, scope: !2456, inlinedAt: !2461)
!2465 = !DILocation(line: 182, column: 7, scope: !2451)
!2466 = !DILocation(line: 184, column: 5, scope: !2462)
!2467 = !DILocation(line: 185, column: 1, scope: !2451)
!2468 = distinct !DISubprogram(name: "error_tail", scope: !703, file: !703, line: 219, type: !2434, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2469)
!2469 = !{!2470, !2471, !2472, !2473}
!2470 = !DILocalVariable(name: "status", arg: 1, scope: !2468, file: !703, line: 219, type: !77)
!2471 = !DILocalVariable(name: "errnum", arg: 2, scope: !2468, file: !703, line: 219, type: !77)
!2472 = !DILocalVariable(name: "message", arg: 3, scope: !2468, file: !703, line: 219, type: !115)
!2473 = !DILocalVariable(name: "args", arg: 4, scope: !2468, file: !703, line: 219, type: !713)
!2474 = !DILocation(line: 0, scope: !2468)
!2475 = !DILocation(line: 229, column: 13, scope: !2468)
!2476 = !DILocalVariable(name: "__stream", arg: 1, scope: !2477, file: !1143, line: 132, type: !2480)
!2477 = distinct !DISubprogram(name: "vfprintf", scope: !1143, file: !1143, line: 132, type: !2478, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2515)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!77, !2480, !1147, !713}
!2480 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2481)
!2481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2482, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 7, baseType: !2483)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !2484)
!2484 = !{!2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2483, file: !172, line: 51, baseType: !77, size: 32)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2483, file: !172, line: 54, baseType: !107, size: 64, offset: 64)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2483, file: !172, line: 55, baseType: !107, size: 64, offset: 128)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2483, file: !172, line: 56, baseType: !107, size: 64, offset: 192)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2483, file: !172, line: 57, baseType: !107, size: 64, offset: 256)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2483, file: !172, line: 58, baseType: !107, size: 64, offset: 320)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2483, file: !172, line: 59, baseType: !107, size: 64, offset: 384)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2483, file: !172, line: 60, baseType: !107, size: 64, offset: 448)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2483, file: !172, line: 61, baseType: !107, size: 64, offset: 512)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2483, file: !172, line: 64, baseType: !107, size: 64, offset: 576)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2483, file: !172, line: 65, baseType: !107, size: 64, offset: 640)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2483, file: !172, line: 66, baseType: !107, size: 64, offset: 704)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2483, file: !172, line: 68, baseType: !187, size: 64, offset: 768)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2483, file: !172, line: 70, baseType: !2499, size: 64, offset: 832)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2483, file: !172, line: 72, baseType: !77, size: 32, offset: 896)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2483, file: !172, line: 73, baseType: !77, size: 32, offset: 928)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2483, file: !172, line: 74, baseType: !194, size: 64, offset: 960)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2483, file: !172, line: 77, baseType: !112, size: 16, offset: 1024)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2483, file: !172, line: 78, baseType: !198, size: 8, offset: 1040)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2483, file: !172, line: 79, baseType: !49, size: 8, offset: 1048)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2483, file: !172, line: 81, baseType: !201, size: 64, offset: 1088)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2483, file: !172, line: 89, baseType: !204, size: 64, offset: 1152)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2483, file: !172, line: 91, baseType: !206, size: 64, offset: 1216)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2483, file: !172, line: 92, baseType: !209, size: 64, offset: 1280)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2483, file: !172, line: 93, baseType: !2499, size: 64, offset: 1344)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2483, file: !172, line: 94, baseType: !108, size: 64, offset: 1408)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2483, file: !172, line: 95, baseType: !113, size: 64, offset: 1472)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2483, file: !172, line: 96, baseType: !77, size: 32, offset: 1536)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2483, file: !172, line: 98, baseType: !216, size: 160, offset: 1568)
!2515 = !{!2476, !2516, !2517}
!2516 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2477, file: !1143, line: 133, type: !1147)
!2517 = !DILocalVariable(name: "__ap", arg: 3, scope: !2477, file: !1143, line: 133, type: !713)
!2518 = !DILocation(line: 0, scope: !2477, inlinedAt: !2519)
!2519 = distinct !DILocation(line: 229, column: 3, scope: !2468)
!2520 = !DILocation(line: 135, column: 10, scope: !2477, inlinedAt: !2519)
!2521 = !DILocation(line: 232, column: 3, scope: !2468)
!2522 = !DILocation(line: 233, column: 7, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2468, file: !703, line: 233, column: 7)
!2524 = !DILocation(line: 233, column: 7, scope: !2468)
!2525 = !DILocalVariable(name: "errnum", arg: 1, scope: !2526, file: !703, line: 188, type: !77)
!2526 = distinct !DISubprogram(name: "print_errno_message", scope: !703, file: !703, line: 188, type: !1076, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2527)
!2527 = !{!2525, !2528, !2529}
!2528 = !DILocalVariable(name: "s", scope: !2526, file: !703, line: 190, type: !115)
!2529 = !DILocalVariable(name: "errbuf", scope: !2526, file: !703, line: 193, type: !2530)
!2530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2531)
!2531 = !{!2532}
!2532 = !DISubrange(count: 1024)
!2533 = !DILocation(line: 0, scope: !2526, inlinedAt: !2534)
!2534 = distinct !DILocation(line: 234, column: 5, scope: !2523)
!2535 = !DILocation(line: 193, column: 3, scope: !2526, inlinedAt: !2534)
!2536 = !DILocation(line: 193, column: 8, scope: !2526, inlinedAt: !2534)
!2537 = !DILocation(line: 195, column: 7, scope: !2526, inlinedAt: !2534)
!2538 = !DILocation(line: 207, column: 9, scope: !2539, inlinedAt: !2534)
!2539 = distinct !DILexicalBlock(scope: !2526, file: !703, line: 207, column: 7)
!2540 = !DILocation(line: 207, column: 7, scope: !2526, inlinedAt: !2534)
!2541 = !DILocation(line: 208, column: 9, scope: !2539, inlinedAt: !2534)
!2542 = !DILocation(line: 208, column: 5, scope: !2539, inlinedAt: !2534)
!2543 = !DILocation(line: 214, column: 3, scope: !2526, inlinedAt: !2534)
!2544 = !DILocation(line: 216, column: 1, scope: !2526, inlinedAt: !2534)
!2545 = !DILocation(line: 234, column: 5, scope: !2523)
!2546 = !DILocation(line: 238, column: 3, scope: !2468)
!2547 = !DILocalVariable(name: "__c", arg: 1, scope: !2548, file: !1412, line: 101, type: !77)
!2548 = distinct !DISubprogram(name: "putc_unlocked", scope: !1412, file: !1412, line: 101, type: !2549, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2551)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!77, !77, !2481}
!2551 = !{!2547, !2552}
!2552 = !DILocalVariable(name: "__stream", arg: 2, scope: !2548, file: !1412, line: 101, type: !2481)
!2553 = !DILocation(line: 0, scope: !2548, inlinedAt: !2554)
!2554 = distinct !DILocation(line: 238, column: 3, scope: !2468)
!2555 = !DILocation(line: 103, column: 10, scope: !2548, inlinedAt: !2554)
!2556 = !DILocation(line: 240, column: 3, scope: !2468)
!2557 = !DILocation(line: 241, column: 7, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2468, file: !703, line: 241, column: 7)
!2559 = !DILocation(line: 241, column: 7, scope: !2468)
!2560 = !DILocation(line: 242, column: 5, scope: !2558)
!2561 = !DILocation(line: 243, column: 1, scope: !2468)
!2562 = !DISubprogram(name: "__vfprintf_chk", scope: !1143, file: !1143, line: 96, type: !2563, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!77, !2480, !77, !1147, !713}
!2565 = !DISubprogram(name: "strerror_r", scope: !1278, file: !1278, line: 444, type: !2566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!2566 = !DISubroutineType(types: !2567)
!2567 = !{!107, !77, !107, !113}
!2568 = !DISubprogram(name: "fcntl", scope: !2569, file: !2569, line: 149, type: !2570, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!2569 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!77, !77, !77, null}
!2572 = distinct !DISubprogram(name: "error", scope: !703, file: !703, line: 285, type: !2573, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2575)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{null, !77, !77, !115, null}
!2575 = !{!2576, !2577, !2578, !2579}
!2576 = !DILocalVariable(name: "status", arg: 1, scope: !2572, file: !703, line: 285, type: !77)
!2577 = !DILocalVariable(name: "errnum", arg: 2, scope: !2572, file: !703, line: 285, type: !77)
!2578 = !DILocalVariable(name: "message", arg: 3, scope: !2572, file: !703, line: 285, type: !115)
!2579 = !DILocalVariable(name: "ap", scope: !2572, file: !703, line: 287, type: !2580)
!2580 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1152, line: 52, baseType: !2581)
!2581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2582, line: 14, baseType: !2583)
!2582 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!2583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !717, baseType: !2584)
!2584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !714, size: 192, elements: !50)
!2585 = !DILocation(line: 0, scope: !2572)
!2586 = !DILocation(line: 287, column: 3, scope: !2572)
!2587 = !DILocation(line: 287, column: 11, scope: !2572)
!2588 = !DILocation(line: 288, column: 3, scope: !2572)
!2589 = !DILocation(line: 289, column: 3, scope: !2572)
!2590 = !DILocation(line: 290, column: 3, scope: !2572)
!2591 = !DILocation(line: 291, column: 1, scope: !2572)
!2592 = !DILocation(line: 0, scope: !710)
!2593 = !DILocation(line: 302, column: 7, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !710, file: !703, line: 302, column: 7)
!2595 = !DILocation(line: 302, column: 7, scope: !710)
!2596 = !DILocation(line: 307, column: 11, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2598, file: !703, line: 307, column: 11)
!2598 = distinct !DILexicalBlock(scope: !2594, file: !703, line: 303, column: 5)
!2599 = !DILocation(line: 307, column: 27, scope: !2597)
!2600 = !DILocation(line: 308, column: 11, scope: !2597)
!2601 = !DILocation(line: 308, column: 28, scope: !2597)
!2602 = !DILocation(line: 308, column: 25, scope: !2597)
!2603 = !DILocation(line: 309, column: 15, scope: !2597)
!2604 = !DILocation(line: 309, column: 33, scope: !2597)
!2605 = !DILocation(line: 310, column: 19, scope: !2597)
!2606 = !DILocation(line: 311, column: 22, scope: !2597)
!2607 = !DILocation(line: 311, column: 56, scope: !2597)
!2608 = !DILocation(line: 307, column: 11, scope: !2598)
!2609 = !DILocation(line: 316, column: 21, scope: !2598)
!2610 = !DILocation(line: 317, column: 23, scope: !2598)
!2611 = !DILocation(line: 318, column: 5, scope: !2598)
!2612 = !DILocation(line: 327, column: 3, scope: !710)
!2613 = !DILocation(line: 331, column: 7, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !710, file: !703, line: 331, column: 7)
!2615 = !DILocation(line: 331, column: 7, scope: !710)
!2616 = !DILocation(line: 332, column: 5, scope: !2614)
!2617 = !DILocation(line: 338, column: 7, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2614, file: !703, line: 334, column: 5)
!2619 = !DILocation(line: 346, column: 3, scope: !710)
!2620 = !DILocation(line: 350, column: 3, scope: !710)
!2621 = !DILocation(line: 356, column: 1, scope: !710)
!2622 = distinct !DISubprogram(name: "error_at_line", scope: !703, file: !703, line: 359, type: !2623, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2625)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{null, !77, !77, !115, !72, !115, null}
!2625 = !{!2626, !2627, !2628, !2629, !2630, !2631}
!2626 = !DILocalVariable(name: "status", arg: 1, scope: !2622, file: !703, line: 359, type: !77)
!2627 = !DILocalVariable(name: "errnum", arg: 2, scope: !2622, file: !703, line: 359, type: !77)
!2628 = !DILocalVariable(name: "file_name", arg: 3, scope: !2622, file: !703, line: 359, type: !115)
!2629 = !DILocalVariable(name: "line_number", arg: 4, scope: !2622, file: !703, line: 360, type: !72)
!2630 = !DILocalVariable(name: "message", arg: 5, scope: !2622, file: !703, line: 360, type: !115)
!2631 = !DILocalVariable(name: "ap", scope: !2622, file: !703, line: 362, type: !2580)
!2632 = !DILocation(line: 0, scope: !2622)
!2633 = !DILocation(line: 362, column: 3, scope: !2622)
!2634 = !DILocation(line: 362, column: 11, scope: !2622)
!2635 = !DILocation(line: 363, column: 3, scope: !2622)
!2636 = !DILocation(line: 364, column: 3, scope: !2622)
!2637 = !DILocation(line: 366, column: 3, scope: !2622)
!2638 = !DILocation(line: 367, column: 1, scope: !2622)
!2639 = distinct !DISubprogram(name: "fdadvise", scope: !1001, file: !1001, line: 25, type: !2640, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1000, retainedNodes: !2644)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{null, !77, !2642, !2642, !2643}
!2642 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1152, line: 63, baseType: !194)
!2643 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !459, line: 51, baseType: !458)
!2644 = !{!2645, !2646, !2647, !2648}
!2645 = !DILocalVariable(name: "fd", arg: 1, scope: !2639, file: !1001, line: 25, type: !77)
!2646 = !DILocalVariable(name: "offset", arg: 2, scope: !2639, file: !1001, line: 25, type: !2642)
!2647 = !DILocalVariable(name: "len", arg: 3, scope: !2639, file: !1001, line: 25, type: !2642)
!2648 = !DILocalVariable(name: "advice", arg: 4, scope: !2639, file: !1001, line: 25, type: !2643)
!2649 = !DILocation(line: 0, scope: !2639)
!2650 = !DILocation(line: 28, column: 3, scope: !2639)
!2651 = !DILocation(line: 30, column: 1, scope: !2639)
!2652 = !DISubprogram(name: "posix_fadvise", scope: !2569, file: !2569, line: 273, type: !2653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!77, !77, !2642, !2642, !77}
!2655 = distinct !DISubprogram(name: "fadvise", scope: !1001, file: !1001, line: 33, type: !2656, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1000, retainedNodes: !2692)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{null, !2658, !2643}
!2658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2659, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 7, baseType: !2660)
!2660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !2661)
!2661 = !{!2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2660, file: !172, line: 51, baseType: !77, size: 32)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2660, file: !172, line: 54, baseType: !107, size: 64, offset: 64)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2660, file: !172, line: 55, baseType: !107, size: 64, offset: 128)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2660, file: !172, line: 56, baseType: !107, size: 64, offset: 192)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2660, file: !172, line: 57, baseType: !107, size: 64, offset: 256)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2660, file: !172, line: 58, baseType: !107, size: 64, offset: 320)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2660, file: !172, line: 59, baseType: !107, size: 64, offset: 384)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2660, file: !172, line: 60, baseType: !107, size: 64, offset: 448)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2660, file: !172, line: 61, baseType: !107, size: 64, offset: 512)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2660, file: !172, line: 64, baseType: !107, size: 64, offset: 576)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2660, file: !172, line: 65, baseType: !107, size: 64, offset: 640)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2660, file: !172, line: 66, baseType: !107, size: 64, offset: 704)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2660, file: !172, line: 68, baseType: !187, size: 64, offset: 768)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2660, file: !172, line: 70, baseType: !2676, size: 64, offset: 832)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2660, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2660, file: !172, line: 72, baseType: !77, size: 32, offset: 896)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2660, file: !172, line: 73, baseType: !77, size: 32, offset: 928)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2660, file: !172, line: 74, baseType: !194, size: 64, offset: 960)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2660, file: !172, line: 77, baseType: !112, size: 16, offset: 1024)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2660, file: !172, line: 78, baseType: !198, size: 8, offset: 1040)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2660, file: !172, line: 79, baseType: !49, size: 8, offset: 1048)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2660, file: !172, line: 81, baseType: !201, size: 64, offset: 1088)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2660, file: !172, line: 89, baseType: !204, size: 64, offset: 1152)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2660, file: !172, line: 91, baseType: !206, size: 64, offset: 1216)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2660, file: !172, line: 92, baseType: !209, size: 64, offset: 1280)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2660, file: !172, line: 93, baseType: !2676, size: 64, offset: 1344)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2660, file: !172, line: 94, baseType: !108, size: 64, offset: 1408)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2660, file: !172, line: 95, baseType: !113, size: 64, offset: 1472)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2660, file: !172, line: 96, baseType: !77, size: 32, offset: 1536)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2660, file: !172, line: 98, baseType: !216, size: 160, offset: 1568)
!2692 = !{!2693, !2694}
!2693 = !DILocalVariable(name: "fp", arg: 1, scope: !2655, file: !1001, line: 33, type: !2658)
!2694 = !DILocalVariable(name: "advice", arg: 2, scope: !2655, file: !1001, line: 33, type: !2643)
!2695 = !DILocation(line: 0, scope: !2655)
!2696 = !DILocation(line: 35, column: 7, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2655, file: !1001, line: 35, column: 7)
!2698 = !DILocation(line: 35, column: 7, scope: !2655)
!2699 = !DILocation(line: 36, column: 15, scope: !2697)
!2700 = !DILocation(line: 0, scope: !2639, inlinedAt: !2701)
!2701 = distinct !DILocation(line: 36, column: 5, scope: !2697)
!2702 = !DILocation(line: 28, column: 3, scope: !2639, inlinedAt: !2701)
!2703 = !DILocation(line: 36, column: 5, scope: !2697)
!2704 = !DILocation(line: 37, column: 1, scope: !2655)
!2705 = !DISubprogram(name: "fileno", scope: !1152, file: !1152, line: 809, type: !2706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!77, !2658}
!2708 = distinct !DISubprogram(name: "rpl_fclose", scope: !1004, file: !1004, line: 58, type: !2709, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1003, retainedNodes: !2745)
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!77, !2711}
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 7, baseType: !2713)
!2713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !2714)
!2714 = !{!2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2730, !2731, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744}
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2713, file: !172, line: 51, baseType: !77, size: 32)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2713, file: !172, line: 54, baseType: !107, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2713, file: !172, line: 55, baseType: !107, size: 64, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2713, file: !172, line: 56, baseType: !107, size: 64, offset: 192)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2713, file: !172, line: 57, baseType: !107, size: 64, offset: 256)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2713, file: !172, line: 58, baseType: !107, size: 64, offset: 320)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2713, file: !172, line: 59, baseType: !107, size: 64, offset: 384)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2713, file: !172, line: 60, baseType: !107, size: 64, offset: 448)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2713, file: !172, line: 61, baseType: !107, size: 64, offset: 512)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2713, file: !172, line: 64, baseType: !107, size: 64, offset: 576)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2713, file: !172, line: 65, baseType: !107, size: 64, offset: 640)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2713, file: !172, line: 66, baseType: !107, size: 64, offset: 704)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2713, file: !172, line: 68, baseType: !187, size: 64, offset: 768)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2713, file: !172, line: 70, baseType: !2729, size: 64, offset: 832)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2713, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2713, file: !172, line: 72, baseType: !77, size: 32, offset: 896)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2713, file: !172, line: 73, baseType: !77, size: 32, offset: 928)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2713, file: !172, line: 74, baseType: !194, size: 64, offset: 960)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2713, file: !172, line: 77, baseType: !112, size: 16, offset: 1024)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2713, file: !172, line: 78, baseType: !198, size: 8, offset: 1040)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2713, file: !172, line: 79, baseType: !49, size: 8, offset: 1048)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2713, file: !172, line: 81, baseType: !201, size: 64, offset: 1088)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2713, file: !172, line: 89, baseType: !204, size: 64, offset: 1152)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2713, file: !172, line: 91, baseType: !206, size: 64, offset: 1216)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2713, file: !172, line: 92, baseType: !209, size: 64, offset: 1280)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2713, file: !172, line: 93, baseType: !2729, size: 64, offset: 1344)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2713, file: !172, line: 94, baseType: !108, size: 64, offset: 1408)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2713, file: !172, line: 95, baseType: !113, size: 64, offset: 1472)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2713, file: !172, line: 96, baseType: !77, size: 32, offset: 1536)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2713, file: !172, line: 98, baseType: !216, size: 160, offset: 1568)
!2745 = !{!2746, !2747, !2748, !2749}
!2746 = !DILocalVariable(name: "fp", arg: 1, scope: !2708, file: !1004, line: 58, type: !2711)
!2747 = !DILocalVariable(name: "saved_errno", scope: !2708, file: !1004, line: 60, type: !77)
!2748 = !DILocalVariable(name: "fd", scope: !2708, file: !1004, line: 63, type: !77)
!2749 = !DILocalVariable(name: "result", scope: !2708, file: !1004, line: 74, type: !77)
!2750 = !DILocation(line: 0, scope: !2708)
!2751 = !DILocation(line: 63, column: 12, scope: !2708)
!2752 = !DILocation(line: 64, column: 10, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2708, file: !1004, line: 64, column: 7)
!2754 = !DILocation(line: 64, column: 7, scope: !2708)
!2755 = !DILocation(line: 65, column: 12, scope: !2753)
!2756 = !DILocation(line: 65, column: 5, scope: !2753)
!2757 = !DILocation(line: 70, column: 9, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2708, file: !1004, line: 70, column: 7)
!2759 = !DILocation(line: 70, column: 23, scope: !2758)
!2760 = !DILocation(line: 70, column: 33, scope: !2758)
!2761 = !DILocation(line: 70, column: 26, scope: !2758)
!2762 = !DILocation(line: 70, column: 59, scope: !2758)
!2763 = !DILocation(line: 71, column: 7, scope: !2758)
!2764 = !DILocation(line: 71, column: 10, scope: !2758)
!2765 = !DILocation(line: 70, column: 7, scope: !2708)
!2766 = !DILocation(line: 100, column: 12, scope: !2708)
!2767 = !DILocation(line: 105, column: 7, scope: !2708)
!2768 = !DILocation(line: 72, column: 19, scope: !2758)
!2769 = !DILocation(line: 105, column: 19, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2708, file: !1004, line: 105, column: 7)
!2771 = !DILocation(line: 107, column: 13, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2770, file: !1004, line: 106, column: 5)
!2773 = !DILocation(line: 109, column: 5, scope: !2772)
!2774 = !DILocation(line: 112, column: 1, scope: !2708)
!2775 = !DISubprogram(name: "fclose", scope: !1152, file: !1152, line: 178, type: !2709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!2776 = !DISubprogram(name: "__freading", scope: !2777, file: !2777, line: 51, type: !2709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!2777 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2778 = !DISubprogram(name: "lseek", scope: !2432, file: !2432, line: 339, type: !2779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!194, !77, !194, !77}
!2781 = distinct !DISubprogram(name: "rpl_fflush", scope: !1006, file: !1006, line: 130, type: !2782, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1005, retainedNodes: !2818)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!77, !2784}
!2784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2785, size: 64)
!2785 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 7, baseType: !2786)
!2786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !2787)
!2787 = !{!2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2786, file: !172, line: 51, baseType: !77, size: 32)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2786, file: !172, line: 54, baseType: !107, size: 64, offset: 64)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2786, file: !172, line: 55, baseType: !107, size: 64, offset: 128)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2786, file: !172, line: 56, baseType: !107, size: 64, offset: 192)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2786, file: !172, line: 57, baseType: !107, size: 64, offset: 256)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2786, file: !172, line: 58, baseType: !107, size: 64, offset: 320)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2786, file: !172, line: 59, baseType: !107, size: 64, offset: 384)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2786, file: !172, line: 60, baseType: !107, size: 64, offset: 448)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2786, file: !172, line: 61, baseType: !107, size: 64, offset: 512)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2786, file: !172, line: 64, baseType: !107, size: 64, offset: 576)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2786, file: !172, line: 65, baseType: !107, size: 64, offset: 640)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2786, file: !172, line: 66, baseType: !107, size: 64, offset: 704)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2786, file: !172, line: 68, baseType: !187, size: 64, offset: 768)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2786, file: !172, line: 70, baseType: !2802, size: 64, offset: 832)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2786, file: !172, line: 72, baseType: !77, size: 32, offset: 896)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2786, file: !172, line: 73, baseType: !77, size: 32, offset: 928)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2786, file: !172, line: 74, baseType: !194, size: 64, offset: 960)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2786, file: !172, line: 77, baseType: !112, size: 16, offset: 1024)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2786, file: !172, line: 78, baseType: !198, size: 8, offset: 1040)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2786, file: !172, line: 79, baseType: !49, size: 8, offset: 1048)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2786, file: !172, line: 81, baseType: !201, size: 64, offset: 1088)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2786, file: !172, line: 89, baseType: !204, size: 64, offset: 1152)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2786, file: !172, line: 91, baseType: !206, size: 64, offset: 1216)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2786, file: !172, line: 92, baseType: !209, size: 64, offset: 1280)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2786, file: !172, line: 93, baseType: !2802, size: 64, offset: 1344)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2786, file: !172, line: 94, baseType: !108, size: 64, offset: 1408)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2786, file: !172, line: 95, baseType: !113, size: 64, offset: 1472)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2786, file: !172, line: 96, baseType: !77, size: 32, offset: 1536)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2786, file: !172, line: 98, baseType: !216, size: 160, offset: 1568)
!2818 = !{!2819}
!2819 = !DILocalVariable(name: "stream", arg: 1, scope: !2781, file: !1006, line: 130, type: !2784)
!2820 = !DILocation(line: 0, scope: !2781)
!2821 = !DILocation(line: 151, column: 14, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2781, file: !1006, line: 151, column: 7)
!2823 = !DILocation(line: 151, column: 22, scope: !2822)
!2824 = !DILocation(line: 151, column: 27, scope: !2822)
!2825 = !DILocation(line: 151, column: 7, scope: !2781)
!2826 = !DILocation(line: 152, column: 12, scope: !2822)
!2827 = !DILocation(line: 152, column: 5, scope: !2822)
!2828 = !DILocalVariable(name: "fp", arg: 1, scope: !2829, file: !1006, line: 42, type: !2784)
!2829 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1006, file: !1006, line: 42, type: !2830, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1005, retainedNodes: !2832)
!2830 = !DISubroutineType(types: !2831)
!2831 = !{null, !2784}
!2832 = !{!2828}
!2833 = !DILocation(line: 0, scope: !2829, inlinedAt: !2834)
!2834 = distinct !DILocation(line: 157, column: 3, scope: !2781)
!2835 = !DILocation(line: 44, column: 12, scope: !2836, inlinedAt: !2834)
!2836 = distinct !DILexicalBlock(scope: !2829, file: !1006, line: 44, column: 7)
!2837 = !DILocation(line: 44, column: 19, scope: !2836, inlinedAt: !2834)
!2838 = !DILocation(line: 44, column: 7, scope: !2829, inlinedAt: !2834)
!2839 = !DILocation(line: 46, column: 5, scope: !2836, inlinedAt: !2834)
!2840 = !DILocation(line: 159, column: 10, scope: !2781)
!2841 = !DILocation(line: 159, column: 3, scope: !2781)
!2842 = !DILocation(line: 236, column: 1, scope: !2781)
!2843 = !DISubprogram(name: "fflush", scope: !1152, file: !1152, line: 230, type: !2782, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!2844 = distinct !DISubprogram(name: "fpurge", scope: !1009, file: !1009, line: 32, type: !2845, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1008, retainedNodes: !2881)
!2845 = !DISubroutineType(types: !2846)
!2846 = !{!77, !2847}
!2847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2848, size: 64)
!2848 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 7, baseType: !2849)
!2849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !2850)
!2850 = !{!2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880}
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2849, file: !172, line: 51, baseType: !77, size: 32)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2849, file: !172, line: 54, baseType: !107, size: 64, offset: 64)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2849, file: !172, line: 55, baseType: !107, size: 64, offset: 128)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2849, file: !172, line: 56, baseType: !107, size: 64, offset: 192)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2849, file: !172, line: 57, baseType: !107, size: 64, offset: 256)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2849, file: !172, line: 58, baseType: !107, size: 64, offset: 320)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2849, file: !172, line: 59, baseType: !107, size: 64, offset: 384)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2849, file: !172, line: 60, baseType: !107, size: 64, offset: 448)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2849, file: !172, line: 61, baseType: !107, size: 64, offset: 512)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2849, file: !172, line: 64, baseType: !107, size: 64, offset: 576)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2849, file: !172, line: 65, baseType: !107, size: 64, offset: 640)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2849, file: !172, line: 66, baseType: !107, size: 64, offset: 704)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2849, file: !172, line: 68, baseType: !187, size: 64, offset: 768)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2849, file: !172, line: 70, baseType: !2865, size: 64, offset: 832)
!2865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2849, file: !172, line: 72, baseType: !77, size: 32, offset: 896)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2849, file: !172, line: 73, baseType: !77, size: 32, offset: 928)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2849, file: !172, line: 74, baseType: !194, size: 64, offset: 960)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2849, file: !172, line: 77, baseType: !112, size: 16, offset: 1024)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2849, file: !172, line: 78, baseType: !198, size: 8, offset: 1040)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2849, file: !172, line: 79, baseType: !49, size: 8, offset: 1048)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2849, file: !172, line: 81, baseType: !201, size: 64, offset: 1088)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2849, file: !172, line: 89, baseType: !204, size: 64, offset: 1152)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2849, file: !172, line: 91, baseType: !206, size: 64, offset: 1216)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2849, file: !172, line: 92, baseType: !209, size: 64, offset: 1280)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2849, file: !172, line: 93, baseType: !2865, size: 64, offset: 1344)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2849, file: !172, line: 94, baseType: !108, size: 64, offset: 1408)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2849, file: !172, line: 95, baseType: !113, size: 64, offset: 1472)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2849, file: !172, line: 96, baseType: !77, size: 32, offset: 1536)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2849, file: !172, line: 98, baseType: !216, size: 160, offset: 1568)
!2881 = !{!2882}
!2882 = !DILocalVariable(name: "fp", arg: 1, scope: !2844, file: !1009, line: 32, type: !2847)
!2883 = !DILocation(line: 0, scope: !2844)
!2884 = !DILocation(line: 36, column: 3, scope: !2844)
!2885 = !DILocation(line: 38, column: 3, scope: !2844)
!2886 = !DISubprogram(name: "__fpurge", scope: !2777, file: !2777, line: 72, type: !2887, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!2887 = !DISubroutineType(types: !2888)
!2888 = !{null, !2847}
!2889 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1011, file: !1011, line: 28, type: !2890, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1010, retainedNodes: !2926)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!77, !2892, !2642, !77}
!2892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2893, size: 64)
!2893 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 7, baseType: !2894)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !2895)
!2895 = !{!2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2894, file: !172, line: 51, baseType: !77, size: 32)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2894, file: !172, line: 54, baseType: !107, size: 64, offset: 64)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2894, file: !172, line: 55, baseType: !107, size: 64, offset: 128)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2894, file: !172, line: 56, baseType: !107, size: 64, offset: 192)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2894, file: !172, line: 57, baseType: !107, size: 64, offset: 256)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2894, file: !172, line: 58, baseType: !107, size: 64, offset: 320)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2894, file: !172, line: 59, baseType: !107, size: 64, offset: 384)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2894, file: !172, line: 60, baseType: !107, size: 64, offset: 448)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2894, file: !172, line: 61, baseType: !107, size: 64, offset: 512)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2894, file: !172, line: 64, baseType: !107, size: 64, offset: 576)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2894, file: !172, line: 65, baseType: !107, size: 64, offset: 640)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2894, file: !172, line: 66, baseType: !107, size: 64, offset: 704)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2894, file: !172, line: 68, baseType: !187, size: 64, offset: 768)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2894, file: !172, line: 70, baseType: !2910, size: 64, offset: 832)
!2910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2894, file: !172, line: 72, baseType: !77, size: 32, offset: 896)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2894, file: !172, line: 73, baseType: !77, size: 32, offset: 928)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2894, file: !172, line: 74, baseType: !194, size: 64, offset: 960)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2894, file: !172, line: 77, baseType: !112, size: 16, offset: 1024)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2894, file: !172, line: 78, baseType: !198, size: 8, offset: 1040)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2894, file: !172, line: 79, baseType: !49, size: 8, offset: 1048)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2894, file: !172, line: 81, baseType: !201, size: 64, offset: 1088)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2894, file: !172, line: 89, baseType: !204, size: 64, offset: 1152)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2894, file: !172, line: 91, baseType: !206, size: 64, offset: 1216)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2894, file: !172, line: 92, baseType: !209, size: 64, offset: 1280)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2894, file: !172, line: 93, baseType: !2910, size: 64, offset: 1344)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2894, file: !172, line: 94, baseType: !108, size: 64, offset: 1408)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2894, file: !172, line: 95, baseType: !113, size: 64, offset: 1472)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2894, file: !172, line: 96, baseType: !77, size: 32, offset: 1536)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2894, file: !172, line: 98, baseType: !216, size: 160, offset: 1568)
!2926 = !{!2927, !2928, !2929, !2930}
!2927 = !DILocalVariable(name: "fp", arg: 1, scope: !2889, file: !1011, line: 28, type: !2892)
!2928 = !DILocalVariable(name: "offset", arg: 2, scope: !2889, file: !1011, line: 28, type: !2642)
!2929 = !DILocalVariable(name: "whence", arg: 3, scope: !2889, file: !1011, line: 28, type: !77)
!2930 = !DILocalVariable(name: "pos", scope: !2931, file: !1011, line: 123, type: !2642)
!2931 = distinct !DILexicalBlock(scope: !2932, file: !1011, line: 119, column: 5)
!2932 = distinct !DILexicalBlock(scope: !2889, file: !1011, line: 55, column: 7)
!2933 = !DILocation(line: 0, scope: !2889)
!2934 = !DILocation(line: 55, column: 12, scope: !2932)
!2935 = !{!1420, !1087, i64 16}
!2936 = !DILocation(line: 55, column: 33, scope: !2932)
!2937 = !{!1420, !1087, i64 8}
!2938 = !DILocation(line: 55, column: 25, scope: !2932)
!2939 = !DILocation(line: 56, column: 7, scope: !2932)
!2940 = !DILocation(line: 56, column: 15, scope: !2932)
!2941 = !DILocation(line: 56, column: 37, scope: !2932)
!2942 = !{!1420, !1087, i64 32}
!2943 = !DILocation(line: 56, column: 29, scope: !2932)
!2944 = !DILocation(line: 57, column: 7, scope: !2932)
!2945 = !DILocation(line: 57, column: 15, scope: !2932)
!2946 = !{!1420, !1087, i64 72}
!2947 = !DILocation(line: 57, column: 29, scope: !2932)
!2948 = !DILocation(line: 55, column: 7, scope: !2889)
!2949 = !DILocation(line: 123, column: 26, scope: !2931)
!2950 = !DILocation(line: 123, column: 19, scope: !2931)
!2951 = !DILocation(line: 0, scope: !2931)
!2952 = !DILocation(line: 124, column: 15, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2931, file: !1011, line: 124, column: 11)
!2954 = !DILocation(line: 124, column: 11, scope: !2931)
!2955 = !DILocation(line: 135, column: 19, scope: !2931)
!2956 = !DILocation(line: 136, column: 12, scope: !2931)
!2957 = !DILocation(line: 136, column: 20, scope: !2931)
!2958 = !{!1420, !1386, i64 144}
!2959 = !DILocation(line: 167, column: 7, scope: !2931)
!2960 = !DILocation(line: 169, column: 10, scope: !2889)
!2961 = !DILocation(line: 169, column: 3, scope: !2889)
!2962 = !DILocation(line: 170, column: 1, scope: !2889)
!2963 = !DISubprogram(name: "fseeko", scope: !1152, file: !1152, line: 736, type: !2964, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!77, !2892, !194, !77}
!2966 = distinct !DISubprogram(name: "getprogname", scope: !1013, file: !1013, line: 54, type: !2967, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1012, retainedNodes: !1095)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{!115}
!2969 = !DILocation(line: 58, column: 10, scope: !2966)
!2970 = !DILocation(line: 58, column: 3, scope: !2966)
!2971 = distinct !DISubprogram(name: "set_program_name", scope: !750, file: !750, line: 37, type: !1108, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !749, retainedNodes: !2972)
!2972 = !{!2973, !2974, !2975}
!2973 = !DILocalVariable(name: "argv0", arg: 1, scope: !2971, file: !750, line: 37, type: !115)
!2974 = !DILocalVariable(name: "slash", scope: !2971, file: !750, line: 44, type: !115)
!2975 = !DILocalVariable(name: "base", scope: !2971, file: !750, line: 45, type: !115)
!2976 = !DILocation(line: 0, scope: !2971)
!2977 = !DILocation(line: 44, column: 23, scope: !2971)
!2978 = !DILocation(line: 45, column: 22, scope: !2971)
!2979 = !DILocation(line: 46, column: 17, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2971, file: !750, line: 46, column: 7)
!2981 = !DILocation(line: 46, column: 9, scope: !2980)
!2982 = !DILocation(line: 46, column: 25, scope: !2980)
!2983 = !DILocation(line: 46, column: 40, scope: !2980)
!2984 = !DILocalVariable(name: "__s1", arg: 1, scope: !2985, file: !1170, line: 974, type: !1306)
!2985 = distinct !DISubprogram(name: "memeq", scope: !1170, file: !1170, line: 974, type: !2986, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !749, retainedNodes: !2988)
!2986 = !DISubroutineType(types: !2987)
!2987 = !{!109, !1306, !1306, !113}
!2988 = !{!2984, !2989, !2990}
!2989 = !DILocalVariable(name: "__s2", arg: 2, scope: !2985, file: !1170, line: 974, type: !1306)
!2990 = !DILocalVariable(name: "__n", arg: 3, scope: !2985, file: !1170, line: 974, type: !113)
!2991 = !DILocation(line: 0, scope: !2985, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 46, column: 28, scope: !2980)
!2993 = !DILocation(line: 976, column: 11, scope: !2985, inlinedAt: !2992)
!2994 = !DILocation(line: 976, column: 10, scope: !2985, inlinedAt: !2992)
!2995 = !DILocation(line: 46, column: 7, scope: !2971)
!2996 = !DILocation(line: 49, column: 11, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !750, line: 49, column: 11)
!2998 = distinct !DILexicalBlock(scope: !2980, file: !750, line: 47, column: 5)
!2999 = !DILocation(line: 49, column: 36, scope: !2997)
!3000 = !DILocation(line: 49, column: 11, scope: !2998)
!3001 = !DILocation(line: 65, column: 16, scope: !2971)
!3002 = !DILocation(line: 71, column: 27, scope: !2971)
!3003 = !DILocation(line: 74, column: 33, scope: !2971)
!3004 = !DILocation(line: 76, column: 1, scope: !2971)
!3005 = !DISubprogram(name: "strrchr", scope: !1278, file: !1278, line: 273, type: !1293, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!3006 = !DILocation(line: 0, scope: !759)
!3007 = !DILocation(line: 40, column: 29, scope: !759)
!3008 = !DILocation(line: 41, column: 19, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !759, file: !760, line: 41, column: 7)
!3010 = !DILocation(line: 41, column: 7, scope: !759)
!3011 = !DILocation(line: 47, column: 3, scope: !759)
!3012 = !DILocation(line: 48, column: 3, scope: !759)
!3013 = !DILocation(line: 48, column: 13, scope: !759)
!3014 = !DILocalVariable(name: "ps", arg: 1, scope: !3015, file: !3016, line: 1135, type: !3019)
!3015 = distinct !DISubprogram(name: "mbszero", scope: !3016, file: !3016, line: 1135, type: !3017, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3020)
!3016 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!3017 = !DISubroutineType(types: !3018)
!3018 = !{null, !3019}
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!3020 = !{!3014}
!3021 = !DILocation(line: 0, scope: !3015, inlinedAt: !3022)
!3022 = distinct !DILocation(line: 48, column: 18, scope: !759)
!3023 = !DILocalVariable(name: "__dest", arg: 1, scope: !3024, file: !1430, line: 57, type: !108)
!3024 = distinct !DISubprogram(name: "memset", scope: !1430, file: !1430, line: 57, type: !3025, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !763, retainedNodes: !3027)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!108, !108, !77, !113}
!3027 = !{!3023, !3028, !3029}
!3028 = !DILocalVariable(name: "__ch", arg: 2, scope: !3024, file: !1430, line: 57, type: !77)
!3029 = !DILocalVariable(name: "__len", arg: 3, scope: !3024, file: !1430, line: 57, type: !113)
!3030 = !DILocation(line: 0, scope: !3024, inlinedAt: !3031)
!3031 = distinct !DILocation(line: 1137, column: 3, scope: !3015, inlinedAt: !3022)
!3032 = !DILocation(line: 59, column: 10, scope: !3024, inlinedAt: !3031)
!3033 = !DILocation(line: 49, column: 7, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !759, file: !760, line: 49, column: 7)
!3035 = !DILocation(line: 49, column: 39, scope: !3034)
!3036 = !DILocation(line: 49, column: 44, scope: !3034)
!3037 = !DILocation(line: 54, column: 1, scope: !759)
!3038 = distinct !DISubprogram(name: "clone_quoting_options", scope: !786, file: !786, line: 113, type: !3039, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3042)
!3039 = !DISubroutineType(types: !3040)
!3040 = !{!3041, !3041}
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!3042 = !{!3043, !3044, !3045}
!3043 = !DILocalVariable(name: "o", arg: 1, scope: !3038, file: !786, line: 113, type: !3041)
!3044 = !DILocalVariable(name: "saved_errno", scope: !3038, file: !786, line: 115, type: !77)
!3045 = !DILocalVariable(name: "p", scope: !3038, file: !786, line: 116, type: !3041)
!3046 = !DILocation(line: 0, scope: !3038)
!3047 = !DILocation(line: 115, column: 21, scope: !3038)
!3048 = !DILocation(line: 116, column: 40, scope: !3038)
!3049 = !DILocation(line: 116, column: 31, scope: !3038)
!3050 = !DILocation(line: 118, column: 9, scope: !3038)
!3051 = !DILocation(line: 119, column: 3, scope: !3038)
!3052 = distinct !DISubprogram(name: "get_quoting_style", scope: !786, file: !786, line: 124, type: !3053, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3057)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!444, !3055}
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3056, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!3057 = !{!3058}
!3058 = !DILocalVariable(name: "o", arg: 1, scope: !3052, file: !786, line: 124, type: !3055)
!3059 = !DILocation(line: 0, scope: !3052)
!3060 = !DILocation(line: 126, column: 11, scope: !3052)
!3061 = !DILocation(line: 126, column: 46, scope: !3052)
!3062 = !{!3063, !1088, i64 0}
!3063 = !{!"quoting_options", !1088, i64 0, !1158, i64 4, !1088, i64 8, !1087, i64 40, !1087, i64 48}
!3064 = !DILocation(line: 126, column: 3, scope: !3052)
!3065 = distinct !DISubprogram(name: "set_quoting_style", scope: !786, file: !786, line: 132, type: !3066, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3068)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{null, !3041, !444}
!3068 = !{!3069, !3070}
!3069 = !DILocalVariable(name: "o", arg: 1, scope: !3065, file: !786, line: 132, type: !3041)
!3070 = !DILocalVariable(name: "s", arg: 2, scope: !3065, file: !786, line: 132, type: !444)
!3071 = !DILocation(line: 0, scope: !3065)
!3072 = !DILocation(line: 134, column: 4, scope: !3065)
!3073 = !DILocation(line: 134, column: 45, scope: !3065)
!3074 = !DILocation(line: 135, column: 1, scope: !3065)
!3075 = distinct !DISubprogram(name: "set_char_quoting", scope: !786, file: !786, line: 143, type: !3076, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3078)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{!77, !3041, !4, !77}
!3078 = !{!3079, !3080, !3081, !3082, !3083, !3085, !3086}
!3079 = !DILocalVariable(name: "o", arg: 1, scope: !3075, file: !786, line: 143, type: !3041)
!3080 = !DILocalVariable(name: "c", arg: 2, scope: !3075, file: !786, line: 143, type: !4)
!3081 = !DILocalVariable(name: "i", arg: 3, scope: !3075, file: !786, line: 143, type: !77)
!3082 = !DILocalVariable(name: "uc", scope: !3075, file: !786, line: 145, type: !117)
!3083 = !DILocalVariable(name: "p", scope: !3075, file: !786, line: 146, type: !3084)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!3085 = !DILocalVariable(name: "shift", scope: !3075, file: !786, line: 148, type: !77)
!3086 = !DILocalVariable(name: "r", scope: !3075, file: !786, line: 149, type: !72)
!3087 = !DILocation(line: 0, scope: !3075)
!3088 = !DILocation(line: 147, column: 6, scope: !3075)
!3089 = !DILocation(line: 147, column: 41, scope: !3075)
!3090 = !DILocation(line: 147, column: 62, scope: !3075)
!3091 = !DILocation(line: 147, column: 57, scope: !3075)
!3092 = !DILocation(line: 148, column: 15, scope: !3075)
!3093 = !DILocation(line: 149, column: 21, scope: !3075)
!3094 = !DILocation(line: 149, column: 24, scope: !3075)
!3095 = !DILocation(line: 149, column: 34, scope: !3075)
!3096 = !DILocation(line: 150, column: 19, scope: !3075)
!3097 = !DILocation(line: 150, column: 24, scope: !3075)
!3098 = !DILocation(line: 150, column: 6, scope: !3075)
!3099 = !DILocation(line: 151, column: 3, scope: !3075)
!3100 = distinct !DISubprogram(name: "set_quoting_flags", scope: !786, file: !786, line: 159, type: !3101, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3103)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!77, !3041, !77}
!3103 = !{!3104, !3105, !3106}
!3104 = !DILocalVariable(name: "o", arg: 1, scope: !3100, file: !786, line: 159, type: !3041)
!3105 = !DILocalVariable(name: "i", arg: 2, scope: !3100, file: !786, line: 159, type: !77)
!3106 = !DILocalVariable(name: "r", scope: !3100, file: !786, line: 163, type: !77)
!3107 = !DILocation(line: 0, scope: !3100)
!3108 = !DILocation(line: 161, column: 8, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3100, file: !786, line: 161, column: 7)
!3110 = !DILocation(line: 161, column: 7, scope: !3100)
!3111 = !DILocation(line: 163, column: 14, scope: !3100)
!3112 = !{!3063, !1158, i64 4}
!3113 = !DILocation(line: 164, column: 12, scope: !3100)
!3114 = !DILocation(line: 165, column: 3, scope: !3100)
!3115 = distinct !DISubprogram(name: "set_custom_quoting", scope: !786, file: !786, line: 169, type: !3116, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3118)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{null, !3041, !115, !115}
!3118 = !{!3119, !3120, !3121}
!3119 = !DILocalVariable(name: "o", arg: 1, scope: !3115, file: !786, line: 169, type: !3041)
!3120 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3115, file: !786, line: 170, type: !115)
!3121 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3115, file: !786, line: 170, type: !115)
!3122 = !DILocation(line: 0, scope: !3115)
!3123 = !DILocation(line: 172, column: 8, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3115, file: !786, line: 172, column: 7)
!3125 = !DILocation(line: 172, column: 7, scope: !3115)
!3126 = !DILocation(line: 174, column: 12, scope: !3115)
!3127 = !DILocation(line: 175, column: 8, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3115, file: !786, line: 175, column: 7)
!3129 = !DILocation(line: 175, column: 19, scope: !3128)
!3130 = !DILocation(line: 176, column: 5, scope: !3128)
!3131 = !DILocation(line: 177, column: 6, scope: !3115)
!3132 = !DILocation(line: 177, column: 17, scope: !3115)
!3133 = !{!3063, !1087, i64 40}
!3134 = !DILocation(line: 178, column: 6, scope: !3115)
!3135 = !DILocation(line: 178, column: 18, scope: !3115)
!3136 = !{!3063, !1087, i64 48}
!3137 = !DILocation(line: 179, column: 1, scope: !3115)
!3138 = !DISubprogram(name: "abort", scope: !1282, file: !1282, line: 598, type: !356, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!3139 = distinct !DISubprogram(name: "quotearg_buffer", scope: !786, file: !786, line: 774, type: !3140, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3142)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!113, !107, !113, !115, !113, !3055}
!3142 = !{!3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150}
!3143 = !DILocalVariable(name: "buffer", arg: 1, scope: !3139, file: !786, line: 774, type: !107)
!3144 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3139, file: !786, line: 774, type: !113)
!3145 = !DILocalVariable(name: "arg", arg: 3, scope: !3139, file: !786, line: 775, type: !115)
!3146 = !DILocalVariable(name: "argsize", arg: 4, scope: !3139, file: !786, line: 775, type: !113)
!3147 = !DILocalVariable(name: "o", arg: 5, scope: !3139, file: !786, line: 776, type: !3055)
!3148 = !DILocalVariable(name: "p", scope: !3139, file: !786, line: 778, type: !3055)
!3149 = !DILocalVariable(name: "saved_errno", scope: !3139, file: !786, line: 779, type: !77)
!3150 = !DILocalVariable(name: "r", scope: !3139, file: !786, line: 780, type: !113)
!3151 = !DILocation(line: 0, scope: !3139)
!3152 = !DILocation(line: 778, column: 37, scope: !3139)
!3153 = !DILocation(line: 779, column: 21, scope: !3139)
!3154 = !DILocation(line: 781, column: 43, scope: !3139)
!3155 = !DILocation(line: 781, column: 53, scope: !3139)
!3156 = !DILocation(line: 781, column: 63, scope: !3139)
!3157 = !DILocation(line: 782, column: 43, scope: !3139)
!3158 = !DILocation(line: 782, column: 58, scope: !3139)
!3159 = !DILocation(line: 780, column: 14, scope: !3139)
!3160 = !DILocation(line: 783, column: 9, scope: !3139)
!3161 = !DILocation(line: 784, column: 3, scope: !3139)
!3162 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !786, file: !786, line: 251, type: !3163, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3167)
!3163 = !DISubroutineType(types: !3164)
!3164 = !{!113, !107, !113, !115, !113, !444, !77, !3165, !115, !115}
!3165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3166, size: 64)
!3166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!3167 = !{!3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3192, !3194, !3197, !3198, !3199, !3200, !3203, !3204, !3207, !3211, !3212, !3220, !3223, !3224, !3226, !3227, !3228, !3229}
!3168 = !DILocalVariable(name: "buffer", arg: 1, scope: !3162, file: !786, line: 251, type: !107)
!3169 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3162, file: !786, line: 251, type: !113)
!3170 = !DILocalVariable(name: "arg", arg: 3, scope: !3162, file: !786, line: 252, type: !115)
!3171 = !DILocalVariable(name: "argsize", arg: 4, scope: !3162, file: !786, line: 252, type: !113)
!3172 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3162, file: !786, line: 253, type: !444)
!3173 = !DILocalVariable(name: "flags", arg: 6, scope: !3162, file: !786, line: 253, type: !77)
!3174 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3162, file: !786, line: 254, type: !3165)
!3175 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3162, file: !786, line: 255, type: !115)
!3176 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3162, file: !786, line: 256, type: !115)
!3177 = !DILocalVariable(name: "unibyte_locale", scope: !3162, file: !786, line: 258, type: !109)
!3178 = !DILocalVariable(name: "len", scope: !3162, file: !786, line: 260, type: !113)
!3179 = !DILocalVariable(name: "orig_buffersize", scope: !3162, file: !786, line: 261, type: !113)
!3180 = !DILocalVariable(name: "quote_string", scope: !3162, file: !786, line: 262, type: !115)
!3181 = !DILocalVariable(name: "quote_string_len", scope: !3162, file: !786, line: 263, type: !113)
!3182 = !DILocalVariable(name: "backslash_escapes", scope: !3162, file: !786, line: 264, type: !109)
!3183 = !DILocalVariable(name: "elide_outer_quotes", scope: !3162, file: !786, line: 265, type: !109)
!3184 = !DILocalVariable(name: "encountered_single_quote", scope: !3162, file: !786, line: 266, type: !109)
!3185 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3162, file: !786, line: 267, type: !109)
!3186 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3162, file: !786, line: 309, type: !109)
!3187 = !DILocalVariable(name: "lq", scope: !3188, file: !786, line: 361, type: !115)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !786, line: 361, column: 11)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !786, line: 360, column: 13)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !786, line: 333, column: 7)
!3191 = distinct !DILexicalBlock(scope: !3162, file: !786, line: 312, column: 5)
!3192 = !DILocalVariable(name: "i", scope: !3193, file: !786, line: 395, type: !113)
!3193 = distinct !DILexicalBlock(scope: !3162, file: !786, line: 395, column: 3)
!3194 = !DILocalVariable(name: "is_right_quote", scope: !3195, file: !786, line: 397, type: !109)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !786, line: 396, column: 5)
!3196 = distinct !DILexicalBlock(scope: !3193, file: !786, line: 395, column: 3)
!3197 = !DILocalVariable(name: "escaping", scope: !3195, file: !786, line: 398, type: !109)
!3198 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3195, file: !786, line: 399, type: !109)
!3199 = !DILocalVariable(name: "c", scope: !3195, file: !786, line: 417, type: !117)
!3200 = !DILocalVariable(name: "m", scope: !3201, file: !786, line: 598, type: !113)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !786, line: 596, column: 11)
!3202 = distinct !DILexicalBlock(scope: !3195, file: !786, line: 419, column: 9)
!3203 = !DILocalVariable(name: "printable", scope: !3201, file: !786, line: 600, type: !109)
!3204 = !DILocalVariable(name: "mbs", scope: !3205, file: !786, line: 609, type: !859)
!3205 = distinct !DILexicalBlock(scope: !3206, file: !786, line: 608, column: 15)
!3206 = distinct !DILexicalBlock(scope: !3201, file: !786, line: 602, column: 17)
!3207 = !DILocalVariable(name: "w", scope: !3208, file: !786, line: 618, type: !380)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !786, line: 617, column: 19)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !786, line: 616, column: 17)
!3210 = distinct !DILexicalBlock(scope: !3205, file: !786, line: 616, column: 17)
!3211 = !DILocalVariable(name: "bytes", scope: !3208, file: !786, line: 619, type: !113)
!3212 = !DILocalVariable(name: "j", scope: !3213, file: !786, line: 648, type: !113)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !786, line: 648, column: 29)
!3214 = distinct !DILexicalBlock(scope: !3215, file: !786, line: 647, column: 27)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !786, line: 645, column: 29)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !786, line: 636, column: 23)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !786, line: 628, column: 30)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !786, line: 623, column: 30)
!3219 = distinct !DILexicalBlock(scope: !3208, file: !786, line: 621, column: 25)
!3220 = !DILocalVariable(name: "ilim", scope: !3221, file: !786, line: 674, type: !113)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !786, line: 671, column: 15)
!3222 = distinct !DILexicalBlock(scope: !3201, file: !786, line: 670, column: 17)
!3223 = !DILabel(scope: !3162, name: "process_input", file: !786, line: 308)
!3224 = !DILabel(scope: !3225, name: "c_and_shell_escape", file: !786, line: 502)
!3225 = distinct !DILexicalBlock(scope: !3202, file: !786, line: 478, column: 9)
!3226 = !DILabel(scope: !3225, name: "c_escape", file: !786, line: 507)
!3227 = !DILabel(scope: !3195, name: "store_escape", file: !786, line: 709)
!3228 = !DILabel(scope: !3195, name: "store_c", file: !786, line: 712)
!3229 = !DILabel(scope: !3162, name: "force_outer_quoting_style", file: !786, line: 753)
!3230 = !DILocation(line: 0, scope: !3162)
!3231 = !DILocation(line: 258, column: 25, scope: !3162)
!3232 = !DILocation(line: 258, column: 36, scope: !3162)
!3233 = !DILocation(line: 265, column: 8, scope: !3162)
!3234 = !DILocation(line: 267, column: 3, scope: !3162)
!3235 = !DILocation(line: 261, column: 10, scope: !3162)
!3236 = !DILocation(line: 262, column: 15, scope: !3162)
!3237 = !DILocation(line: 263, column: 10, scope: !3162)
!3238 = !DILocation(line: 264, column: 8, scope: !3162)
!3239 = !DILocation(line: 266, column: 8, scope: !3162)
!3240 = !DILocation(line: 267, column: 8, scope: !3162)
!3241 = !DILocation(line: 308, column: 2, scope: !3162)
!3242 = !DILocation(line: 311, column: 3, scope: !3162)
!3243 = !DILocation(line: 318, column: 11, scope: !3191)
!3244 = !DILocation(line: 318, column: 12, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3191, file: !786, line: 318, column: 11)
!3246 = !DILocation(line: 319, column: 9, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !786, line: 319, column: 9)
!3248 = distinct !DILexicalBlock(scope: !3245, file: !786, line: 319, column: 9)
!3249 = !DILocation(line: 319, column: 9, scope: !3248)
!3250 = !DILocation(line: 0, scope: !850, inlinedAt: !3251)
!3251 = distinct !DILocation(line: 357, column: 26, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3253, file: !786, line: 335, column: 11)
!3253 = distinct !DILexicalBlock(scope: !3190, file: !786, line: 334, column: 13)
!3254 = !DILocation(line: 199, column: 29, scope: !850, inlinedAt: !3251)
!3255 = !DILocation(line: 201, column: 19, scope: !3256, inlinedAt: !3251)
!3256 = distinct !DILexicalBlock(scope: !850, file: !786, line: 201, column: 7)
!3257 = !DILocation(line: 201, column: 7, scope: !850, inlinedAt: !3251)
!3258 = !DILocation(line: 229, column: 3, scope: !850, inlinedAt: !3251)
!3259 = !DILocation(line: 230, column: 3, scope: !850, inlinedAt: !3251)
!3260 = !DILocation(line: 230, column: 13, scope: !850, inlinedAt: !3251)
!3261 = !DILocalVariable(name: "ps", arg: 1, scope: !3262, file: !3016, line: 1135, type: !3265)
!3262 = distinct !DISubprogram(name: "mbszero", scope: !3016, file: !3016, line: 1135, type: !3263, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3266)
!3263 = !DISubroutineType(types: !3264)
!3264 = !{null, !3265}
!3265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!3266 = !{!3261}
!3267 = !DILocation(line: 0, scope: !3262, inlinedAt: !3268)
!3268 = distinct !DILocation(line: 230, column: 18, scope: !850, inlinedAt: !3251)
!3269 = !DILocalVariable(name: "__dest", arg: 1, scope: !3270, file: !1430, line: 57, type: !108)
!3270 = distinct !DISubprogram(name: "memset", scope: !1430, file: !1430, line: 57, type: !3025, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3271)
!3271 = !{!3269, !3272, !3273}
!3272 = !DILocalVariable(name: "__ch", arg: 2, scope: !3270, file: !1430, line: 57, type: !77)
!3273 = !DILocalVariable(name: "__len", arg: 3, scope: !3270, file: !1430, line: 57, type: !113)
!3274 = !DILocation(line: 0, scope: !3270, inlinedAt: !3275)
!3275 = distinct !DILocation(line: 1137, column: 3, scope: !3262, inlinedAt: !3268)
!3276 = !DILocation(line: 59, column: 10, scope: !3270, inlinedAt: !3275)
!3277 = !DILocation(line: 231, column: 7, scope: !3278, inlinedAt: !3251)
!3278 = distinct !DILexicalBlock(scope: !850, file: !786, line: 231, column: 7)
!3279 = !DILocation(line: 231, column: 40, scope: !3278, inlinedAt: !3251)
!3280 = !DILocation(line: 231, column: 45, scope: !3278, inlinedAt: !3251)
!3281 = !DILocation(line: 235, column: 1, scope: !850, inlinedAt: !3251)
!3282 = !DILocation(line: 0, scope: !850, inlinedAt: !3283)
!3283 = distinct !DILocation(line: 358, column: 27, scope: !3252)
!3284 = !DILocation(line: 199, column: 29, scope: !850, inlinedAt: !3283)
!3285 = !DILocation(line: 201, column: 19, scope: !3256, inlinedAt: !3283)
!3286 = !DILocation(line: 201, column: 7, scope: !850, inlinedAt: !3283)
!3287 = !DILocation(line: 229, column: 3, scope: !850, inlinedAt: !3283)
!3288 = !DILocation(line: 230, column: 3, scope: !850, inlinedAt: !3283)
!3289 = !DILocation(line: 230, column: 13, scope: !850, inlinedAt: !3283)
!3290 = !DILocation(line: 0, scope: !3262, inlinedAt: !3291)
!3291 = distinct !DILocation(line: 230, column: 18, scope: !850, inlinedAt: !3283)
!3292 = !DILocation(line: 0, scope: !3270, inlinedAt: !3293)
!3293 = distinct !DILocation(line: 1137, column: 3, scope: !3262, inlinedAt: !3291)
!3294 = !DILocation(line: 59, column: 10, scope: !3270, inlinedAt: !3293)
!3295 = !DILocation(line: 231, column: 7, scope: !3278, inlinedAt: !3283)
!3296 = !DILocation(line: 231, column: 40, scope: !3278, inlinedAt: !3283)
!3297 = !DILocation(line: 231, column: 45, scope: !3278, inlinedAt: !3283)
!3298 = !DILocation(line: 235, column: 1, scope: !850, inlinedAt: !3283)
!3299 = !DILocation(line: 360, column: 14, scope: !3189)
!3300 = !DILocation(line: 360, column: 13, scope: !3190)
!3301 = !DILocation(line: 0, scope: !3188)
!3302 = !DILocation(line: 361, column: 45, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3188, file: !786, line: 361, column: 11)
!3304 = !DILocation(line: 361, column: 11, scope: !3188)
!3305 = !DILocation(line: 362, column: 13, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !786, line: 362, column: 13)
!3307 = distinct !DILexicalBlock(scope: !3303, file: !786, line: 362, column: 13)
!3308 = !DILocation(line: 362, column: 13, scope: !3307)
!3309 = !DILocation(line: 361, column: 52, scope: !3303)
!3310 = distinct !{!3310, !3304, !3311, !1204}
!3311 = !DILocation(line: 362, column: 13, scope: !3188)
!3312 = !DILocation(line: 260, column: 10, scope: !3162)
!3313 = !DILocation(line: 365, column: 28, scope: !3190)
!3314 = !DILocation(line: 367, column: 7, scope: !3191)
!3315 = !DILocation(line: 370, column: 7, scope: !3191)
!3316 = !DILocation(line: 373, column: 7, scope: !3191)
!3317 = !DILocation(line: 376, column: 12, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3191, file: !786, line: 376, column: 11)
!3319 = !DILocation(line: 376, column: 11, scope: !3191)
!3320 = !DILocation(line: 381, column: 12, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3191, file: !786, line: 381, column: 11)
!3322 = !DILocation(line: 381, column: 11, scope: !3191)
!3323 = !DILocation(line: 382, column: 9, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !786, line: 382, column: 9)
!3325 = distinct !DILexicalBlock(scope: !3321, file: !786, line: 382, column: 9)
!3326 = !DILocation(line: 382, column: 9, scope: !3325)
!3327 = !DILocation(line: 389, column: 7, scope: !3191)
!3328 = !DILocation(line: 392, column: 7, scope: !3191)
!3329 = !DILocation(line: 0, scope: !3193)
!3330 = !DILocation(line: 395, column: 8, scope: !3193)
!3331 = !DILocation(line: 309, column: 8, scope: !3162)
!3332 = !DILocation(line: 395, scope: !3193)
!3333 = !DILocation(line: 395, column: 34, scope: !3196)
!3334 = !DILocation(line: 395, column: 26, scope: !3196)
!3335 = !DILocation(line: 395, column: 48, scope: !3196)
!3336 = !DILocation(line: 395, column: 55, scope: !3196)
!3337 = !DILocation(line: 395, column: 3, scope: !3193)
!3338 = !DILocation(line: 395, column: 67, scope: !3196)
!3339 = !DILocation(line: 0, scope: !3195)
!3340 = !DILocation(line: 402, column: 11, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3195, file: !786, line: 401, column: 11)
!3342 = !DILocation(line: 404, column: 17, scope: !3341)
!3343 = !DILocation(line: 405, column: 39, scope: !3341)
!3344 = !DILocation(line: 409, column: 32, scope: !3341)
!3345 = !DILocation(line: 405, column: 19, scope: !3341)
!3346 = !DILocation(line: 405, column: 15, scope: !3341)
!3347 = !DILocation(line: 410, column: 11, scope: !3341)
!3348 = !DILocation(line: 410, column: 25, scope: !3341)
!3349 = !DILocalVariable(name: "__s1", arg: 1, scope: !3350, file: !1170, line: 974, type: !1306)
!3350 = distinct !DISubprogram(name: "memeq", scope: !1170, file: !1170, line: 974, type: !2986, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3351)
!3351 = !{!3349, !3352, !3353}
!3352 = !DILocalVariable(name: "__s2", arg: 2, scope: !3350, file: !1170, line: 974, type: !1306)
!3353 = !DILocalVariable(name: "__n", arg: 3, scope: !3350, file: !1170, line: 974, type: !113)
!3354 = !DILocation(line: 0, scope: !3350, inlinedAt: !3355)
!3355 = distinct !DILocation(line: 410, column: 14, scope: !3341)
!3356 = !DILocation(line: 976, column: 11, scope: !3350, inlinedAt: !3355)
!3357 = !DILocation(line: 976, column: 10, scope: !3350, inlinedAt: !3355)
!3358 = !DILocation(line: 401, column: 11, scope: !3195)
!3359 = !DILocation(line: 417, column: 25, scope: !3195)
!3360 = !DILocation(line: 418, column: 7, scope: !3195)
!3361 = !DILocation(line: 421, column: 15, scope: !3202)
!3362 = !DILocation(line: 423, column: 15, scope: !3363)
!3363 = distinct !DILexicalBlock(scope: !3364, file: !786, line: 423, column: 15)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !786, line: 422, column: 13)
!3365 = distinct !DILexicalBlock(scope: !3202, file: !786, line: 421, column: 15)
!3366 = !DILocation(line: 423, column: 15, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3363, file: !786, line: 423, column: 15)
!3368 = !DILocation(line: 423, column: 15, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !786, line: 423, column: 15)
!3370 = distinct !DILexicalBlock(scope: !3371, file: !786, line: 423, column: 15)
!3371 = distinct !DILexicalBlock(scope: !3367, file: !786, line: 423, column: 15)
!3372 = !DILocation(line: 423, column: 15, scope: !3370)
!3373 = !DILocation(line: 423, column: 15, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !786, line: 423, column: 15)
!3375 = distinct !DILexicalBlock(scope: !3371, file: !786, line: 423, column: 15)
!3376 = !DILocation(line: 423, column: 15, scope: !3375)
!3377 = !DILocation(line: 423, column: 15, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3379, file: !786, line: 423, column: 15)
!3379 = distinct !DILexicalBlock(scope: !3371, file: !786, line: 423, column: 15)
!3380 = !DILocation(line: 423, column: 15, scope: !3379)
!3381 = !DILocation(line: 423, column: 15, scope: !3371)
!3382 = !DILocation(line: 423, column: 15, scope: !3383)
!3383 = distinct !DILexicalBlock(scope: !3384, file: !786, line: 423, column: 15)
!3384 = distinct !DILexicalBlock(scope: !3363, file: !786, line: 423, column: 15)
!3385 = !DILocation(line: 423, column: 15, scope: !3384)
!3386 = !DILocation(line: 431, column: 19, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3364, file: !786, line: 430, column: 19)
!3388 = !DILocation(line: 431, column: 24, scope: !3387)
!3389 = !DILocation(line: 431, column: 28, scope: !3387)
!3390 = !DILocation(line: 431, column: 38, scope: !3387)
!3391 = !DILocation(line: 431, column: 48, scope: !3387)
!3392 = !DILocation(line: 431, column: 59, scope: !3387)
!3393 = !DILocation(line: 433, column: 19, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !786, line: 433, column: 19)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !786, line: 433, column: 19)
!3396 = distinct !DILexicalBlock(scope: !3387, file: !786, line: 432, column: 17)
!3397 = !DILocation(line: 433, column: 19, scope: !3395)
!3398 = !DILocation(line: 434, column: 19, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3400, file: !786, line: 434, column: 19)
!3400 = distinct !DILexicalBlock(scope: !3396, file: !786, line: 434, column: 19)
!3401 = !DILocation(line: 434, column: 19, scope: !3400)
!3402 = !DILocation(line: 435, column: 17, scope: !3396)
!3403 = !DILocation(line: 442, column: 20, scope: !3365)
!3404 = !DILocation(line: 447, column: 11, scope: !3202)
!3405 = !DILocation(line: 450, column: 19, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3202, file: !786, line: 448, column: 13)
!3407 = !DILocation(line: 456, column: 19, scope: !3408)
!3408 = distinct !DILexicalBlock(scope: !3406, file: !786, line: 455, column: 19)
!3409 = !DILocation(line: 456, column: 24, scope: !3408)
!3410 = !DILocation(line: 456, column: 28, scope: !3408)
!3411 = !DILocation(line: 456, column: 38, scope: !3408)
!3412 = !DILocation(line: 456, column: 47, scope: !3408)
!3413 = !DILocation(line: 456, column: 41, scope: !3408)
!3414 = !DILocation(line: 456, column: 52, scope: !3408)
!3415 = !DILocation(line: 455, column: 19, scope: !3406)
!3416 = !DILocation(line: 457, column: 25, scope: !3408)
!3417 = !DILocation(line: 457, column: 17, scope: !3408)
!3418 = !DILocation(line: 464, column: 25, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3408, file: !786, line: 458, column: 19)
!3420 = !DILocation(line: 468, column: 21, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !786, line: 468, column: 21)
!3422 = distinct !DILexicalBlock(scope: !3419, file: !786, line: 468, column: 21)
!3423 = !DILocation(line: 468, column: 21, scope: !3422)
!3424 = !DILocation(line: 469, column: 21, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !3426, file: !786, line: 469, column: 21)
!3426 = distinct !DILexicalBlock(scope: !3419, file: !786, line: 469, column: 21)
!3427 = !DILocation(line: 469, column: 21, scope: !3426)
!3428 = !DILocation(line: 470, column: 21, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3430, file: !786, line: 470, column: 21)
!3430 = distinct !DILexicalBlock(scope: !3419, file: !786, line: 470, column: 21)
!3431 = !DILocation(line: 470, column: 21, scope: !3430)
!3432 = !DILocation(line: 471, column: 21, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3434, file: !786, line: 471, column: 21)
!3434 = distinct !DILexicalBlock(scope: !3419, file: !786, line: 471, column: 21)
!3435 = !DILocation(line: 471, column: 21, scope: !3434)
!3436 = !DILocation(line: 472, column: 21, scope: !3419)
!3437 = !DILocation(line: 482, column: 33, scope: !3225)
!3438 = !DILocation(line: 483, column: 33, scope: !3225)
!3439 = !DILocation(line: 485, column: 33, scope: !3225)
!3440 = !DILocation(line: 486, column: 33, scope: !3225)
!3441 = !DILocation(line: 487, column: 33, scope: !3225)
!3442 = !DILocation(line: 490, column: 17, scope: !3225)
!3443 = !DILocation(line: 492, column: 21, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3445, file: !786, line: 491, column: 15)
!3445 = distinct !DILexicalBlock(scope: !3225, file: !786, line: 490, column: 17)
!3446 = !DILocation(line: 499, column: 35, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3225, file: !786, line: 499, column: 17)
!3448 = !DILocation(line: 499, column: 57, scope: !3447)
!3449 = !DILocation(line: 0, scope: !3225)
!3450 = !DILocation(line: 502, column: 11, scope: !3225)
!3451 = !DILocation(line: 504, column: 17, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3225, file: !786, line: 503, column: 17)
!3453 = !DILocation(line: 507, column: 11, scope: !3225)
!3454 = !DILocation(line: 508, column: 17, scope: !3225)
!3455 = !DILocation(line: 517, column: 15, scope: !3202)
!3456 = !DILocation(line: 517, column: 40, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3202, file: !786, line: 517, column: 15)
!3458 = !DILocation(line: 517, column: 47, scope: !3457)
!3459 = !DILocation(line: 517, column: 18, scope: !3457)
!3460 = !DILocation(line: 521, column: 17, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3202, file: !786, line: 521, column: 15)
!3462 = !DILocation(line: 521, column: 15, scope: !3202)
!3463 = !DILocation(line: 525, column: 11, scope: !3202)
!3464 = !DILocation(line: 537, column: 15, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3202, file: !786, line: 536, column: 15)
!3466 = !DILocation(line: 544, column: 15, scope: !3202)
!3467 = !DILocation(line: 546, column: 19, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !786, line: 545, column: 13)
!3469 = distinct !DILexicalBlock(scope: !3202, file: !786, line: 544, column: 15)
!3470 = !DILocation(line: 549, column: 19, scope: !3471)
!3471 = distinct !DILexicalBlock(scope: !3468, file: !786, line: 549, column: 19)
!3472 = !DILocation(line: 549, column: 30, scope: !3471)
!3473 = !DILocation(line: 558, column: 15, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !786, line: 558, column: 15)
!3475 = distinct !DILexicalBlock(scope: !3468, file: !786, line: 558, column: 15)
!3476 = !DILocation(line: 558, column: 15, scope: !3475)
!3477 = !DILocation(line: 559, column: 15, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !786, line: 559, column: 15)
!3479 = distinct !DILexicalBlock(scope: !3468, file: !786, line: 559, column: 15)
!3480 = !DILocation(line: 559, column: 15, scope: !3479)
!3481 = !DILocation(line: 560, column: 15, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3483, file: !786, line: 560, column: 15)
!3483 = distinct !DILexicalBlock(scope: !3468, file: !786, line: 560, column: 15)
!3484 = !DILocation(line: 560, column: 15, scope: !3483)
!3485 = !DILocation(line: 562, column: 13, scope: !3468)
!3486 = !DILocation(line: 602, column: 17, scope: !3201)
!3487 = !DILocation(line: 0, scope: !3201)
!3488 = !DILocation(line: 605, column: 29, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3206, file: !786, line: 603, column: 15)
!3490 = !DILocation(line: 605, column: 27, scope: !3489)
!3491 = !DILocation(line: 668, column: 40, scope: !3201)
!3492 = !DILocation(line: 670, column: 23, scope: !3222)
!3493 = !DILocation(line: 609, column: 17, scope: !3205)
!3494 = !DILocation(line: 609, column: 27, scope: !3205)
!3495 = !DILocation(line: 0, scope: !3262, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 609, column: 32, scope: !3205)
!3497 = !DILocation(line: 0, scope: !3270, inlinedAt: !3498)
!3498 = distinct !DILocation(line: 1137, column: 3, scope: !3262, inlinedAt: !3496)
!3499 = !DILocation(line: 59, column: 10, scope: !3270, inlinedAt: !3498)
!3500 = !DILocation(line: 613, column: 29, scope: !3501)
!3501 = distinct !DILexicalBlock(scope: !3205, file: !786, line: 613, column: 21)
!3502 = !DILocation(line: 613, column: 21, scope: !3205)
!3503 = !DILocation(line: 614, column: 29, scope: !3501)
!3504 = !DILocation(line: 614, column: 19, scope: !3501)
!3505 = !DILocation(line: 618, column: 21, scope: !3208)
!3506 = !DILocation(line: 620, column: 54, scope: !3208)
!3507 = !DILocation(line: 0, scope: !3208)
!3508 = !DILocation(line: 619, column: 36, scope: !3208)
!3509 = !DILocation(line: 621, column: 25, scope: !3208)
!3510 = !DILocation(line: 631, column: 38, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3217, file: !786, line: 629, column: 23)
!3512 = !DILocation(line: 631, column: 48, scope: !3511)
!3513 = !DILocation(line: 665, column: 19, scope: !3209)
!3514 = !DILocation(line: 666, column: 15, scope: !3206)
!3515 = !DILocation(line: 626, column: 25, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3218, file: !786, line: 624, column: 23)
!3517 = !DILocation(line: 631, column: 51, scope: !3511)
!3518 = !DILocation(line: 631, column: 25, scope: !3511)
!3519 = !DILocation(line: 632, column: 28, scope: !3511)
!3520 = !DILocation(line: 631, column: 34, scope: !3511)
!3521 = distinct !{!3521, !3518, !3519, !1204}
!3522 = !DILocation(line: 646, column: 29, scope: !3215)
!3523 = !DILocation(line: 0, scope: !3213)
!3524 = !DILocation(line: 649, column: 49, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3213, file: !786, line: 648, column: 29)
!3526 = !DILocation(line: 649, column: 39, scope: !3525)
!3527 = !DILocation(line: 649, column: 31, scope: !3525)
!3528 = !DILocation(line: 648, column: 60, scope: !3525)
!3529 = !DILocation(line: 648, column: 50, scope: !3525)
!3530 = !DILocation(line: 648, column: 29, scope: !3213)
!3531 = distinct !{!3531, !3530, !3532, !1204}
!3532 = !DILocation(line: 654, column: 33, scope: !3213)
!3533 = !DILocation(line: 657, column: 43, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3216, file: !786, line: 657, column: 29)
!3535 = !DILocalVariable(name: "wc", arg: 1, scope: !3536, file: !1553, line: 865, type: !1556)
!3536 = distinct !DISubprogram(name: "c32isprint", scope: !1553, file: !1553, line: 865, type: !1554, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3537)
!3537 = !{!3535}
!3538 = !DILocation(line: 0, scope: !3536, inlinedAt: !3539)
!3539 = distinct !DILocation(line: 657, column: 31, scope: !3534)
!3540 = !DILocation(line: 871, column: 10, scope: !3536, inlinedAt: !3539)
!3541 = !DILocation(line: 657, column: 31, scope: !3534)
!3542 = !DILocation(line: 657, column: 29, scope: !3216)
!3543 = !DILocation(line: 664, column: 23, scope: !3208)
!3544 = !DILocation(line: 670, column: 19, scope: !3222)
!3545 = !DILocation(line: 670, column: 45, scope: !3222)
!3546 = !DILocation(line: 674, column: 33, scope: !3221)
!3547 = !DILocation(line: 0, scope: !3221)
!3548 = !DILocation(line: 676, column: 17, scope: !3221)
!3549 = !DILocation(line: 398, column: 12, scope: !3195)
!3550 = !DILocation(line: 678, column: 43, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !786, line: 678, column: 25)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !786, line: 677, column: 19)
!3553 = distinct !DILexicalBlock(scope: !3554, file: !786, line: 676, column: 17)
!3554 = distinct !DILexicalBlock(scope: !3221, file: !786, line: 676, column: 17)
!3555 = !DILocation(line: 680, column: 25, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3557, file: !786, line: 680, column: 25)
!3557 = distinct !DILexicalBlock(scope: !3551, file: !786, line: 679, column: 23)
!3558 = !DILocation(line: 680, column: 25, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3556, file: !786, line: 680, column: 25)
!3560 = !DILocation(line: 680, column: 25, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3562, file: !786, line: 680, column: 25)
!3562 = distinct !DILexicalBlock(scope: !3563, file: !786, line: 680, column: 25)
!3563 = distinct !DILexicalBlock(scope: !3559, file: !786, line: 680, column: 25)
!3564 = !DILocation(line: 680, column: 25, scope: !3562)
!3565 = !DILocation(line: 680, column: 25, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3567, file: !786, line: 680, column: 25)
!3567 = distinct !DILexicalBlock(scope: !3563, file: !786, line: 680, column: 25)
!3568 = !DILocation(line: 680, column: 25, scope: !3567)
!3569 = !DILocation(line: 680, column: 25, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3571, file: !786, line: 680, column: 25)
!3571 = distinct !DILexicalBlock(scope: !3563, file: !786, line: 680, column: 25)
!3572 = !DILocation(line: 680, column: 25, scope: !3571)
!3573 = !DILocation(line: 680, column: 25, scope: !3563)
!3574 = !DILocation(line: 680, column: 25, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !786, line: 680, column: 25)
!3576 = distinct !DILexicalBlock(scope: !3556, file: !786, line: 680, column: 25)
!3577 = !DILocation(line: 680, column: 25, scope: !3576)
!3578 = !DILocation(line: 681, column: 25, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3580, file: !786, line: 681, column: 25)
!3580 = distinct !DILexicalBlock(scope: !3557, file: !786, line: 681, column: 25)
!3581 = !DILocation(line: 681, column: 25, scope: !3580)
!3582 = !DILocation(line: 682, column: 25, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3584, file: !786, line: 682, column: 25)
!3584 = distinct !DILexicalBlock(scope: !3557, file: !786, line: 682, column: 25)
!3585 = !DILocation(line: 682, column: 25, scope: !3584)
!3586 = !DILocation(line: 683, column: 38, scope: !3557)
!3587 = !DILocation(line: 683, column: 33, scope: !3557)
!3588 = !DILocation(line: 684, column: 23, scope: !3557)
!3589 = !DILocation(line: 685, column: 30, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3551, file: !786, line: 685, column: 30)
!3591 = !DILocation(line: 685, column: 30, scope: !3551)
!3592 = !DILocation(line: 687, column: 25, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3594, file: !786, line: 687, column: 25)
!3594 = distinct !DILexicalBlock(scope: !3595, file: !786, line: 687, column: 25)
!3595 = distinct !DILexicalBlock(scope: !3590, file: !786, line: 686, column: 23)
!3596 = !DILocation(line: 687, column: 25, scope: !3594)
!3597 = !DILocation(line: 689, column: 23, scope: !3595)
!3598 = !DILocation(line: 690, column: 35, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3552, file: !786, line: 690, column: 25)
!3600 = !DILocation(line: 690, column: 30, scope: !3599)
!3601 = !DILocation(line: 690, column: 25, scope: !3552)
!3602 = !DILocation(line: 692, column: 21, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3604, file: !786, line: 692, column: 21)
!3604 = distinct !DILexicalBlock(scope: !3552, file: !786, line: 692, column: 21)
!3605 = !DILocation(line: 692, column: 21, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !786, line: 692, column: 21)
!3607 = distinct !DILexicalBlock(scope: !3608, file: !786, line: 692, column: 21)
!3608 = distinct !DILexicalBlock(scope: !3603, file: !786, line: 692, column: 21)
!3609 = !DILocation(line: 692, column: 21, scope: !3607)
!3610 = !DILocation(line: 692, column: 21, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3612, file: !786, line: 692, column: 21)
!3612 = distinct !DILexicalBlock(scope: !3608, file: !786, line: 692, column: 21)
!3613 = !DILocation(line: 692, column: 21, scope: !3612)
!3614 = !DILocation(line: 692, column: 21, scope: !3608)
!3615 = !DILocation(line: 0, scope: !3552)
!3616 = !DILocation(line: 693, column: 21, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3618, file: !786, line: 693, column: 21)
!3618 = distinct !DILexicalBlock(scope: !3552, file: !786, line: 693, column: 21)
!3619 = !DILocation(line: 693, column: 21, scope: !3618)
!3620 = !DILocation(line: 694, column: 25, scope: !3552)
!3621 = !DILocation(line: 676, column: 17, scope: !3553)
!3622 = distinct !{!3622, !3623, !3624}
!3623 = !DILocation(line: 676, column: 17, scope: !3554)
!3624 = !DILocation(line: 695, column: 19, scope: !3554)
!3625 = !DILocation(line: 409, column: 30, scope: !3341)
!3626 = !DILocation(line: 702, column: 34, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3195, file: !786, line: 702, column: 11)
!3628 = !DILocation(line: 704, column: 14, scope: !3627)
!3629 = !DILocation(line: 705, column: 14, scope: !3627)
!3630 = !DILocation(line: 705, column: 35, scope: !3627)
!3631 = !DILocation(line: 705, column: 17, scope: !3627)
!3632 = !DILocation(line: 705, column: 47, scope: !3627)
!3633 = !DILocation(line: 705, column: 65, scope: !3627)
!3634 = !DILocation(line: 706, column: 11, scope: !3627)
!3635 = !DILocation(line: 702, column: 11, scope: !3195)
!3636 = !DILocation(line: 395, column: 15, scope: !3193)
!3637 = !DILocation(line: 709, column: 5, scope: !3195)
!3638 = !DILocation(line: 710, column: 7, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3195, file: !786, line: 710, column: 7)
!3640 = !DILocation(line: 710, column: 7, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3639, file: !786, line: 710, column: 7)
!3642 = !DILocation(line: 710, column: 7, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3644, file: !786, line: 710, column: 7)
!3644 = distinct !DILexicalBlock(scope: !3645, file: !786, line: 710, column: 7)
!3645 = distinct !DILexicalBlock(scope: !3641, file: !786, line: 710, column: 7)
!3646 = !DILocation(line: 710, column: 7, scope: !3644)
!3647 = !DILocation(line: 710, column: 7, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3649, file: !786, line: 710, column: 7)
!3649 = distinct !DILexicalBlock(scope: !3645, file: !786, line: 710, column: 7)
!3650 = !DILocation(line: 710, column: 7, scope: !3649)
!3651 = !DILocation(line: 710, column: 7, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3653, file: !786, line: 710, column: 7)
!3653 = distinct !DILexicalBlock(scope: !3645, file: !786, line: 710, column: 7)
!3654 = !DILocation(line: 710, column: 7, scope: !3653)
!3655 = !DILocation(line: 710, column: 7, scope: !3645)
!3656 = !DILocation(line: 710, column: 7, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3658, file: !786, line: 710, column: 7)
!3658 = distinct !DILexicalBlock(scope: !3639, file: !786, line: 710, column: 7)
!3659 = !DILocation(line: 710, column: 7, scope: !3658)
!3660 = !DILocation(line: 712, column: 5, scope: !3195)
!3661 = !DILocation(line: 713, column: 7, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3663, file: !786, line: 713, column: 7)
!3663 = distinct !DILexicalBlock(scope: !3195, file: !786, line: 713, column: 7)
!3664 = !DILocation(line: 417, column: 21, scope: !3195)
!3665 = !DILocation(line: 713, column: 7, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3667, file: !786, line: 713, column: 7)
!3667 = distinct !DILexicalBlock(scope: !3668, file: !786, line: 713, column: 7)
!3668 = distinct !DILexicalBlock(scope: !3662, file: !786, line: 713, column: 7)
!3669 = !DILocation(line: 713, column: 7, scope: !3667)
!3670 = !DILocation(line: 713, column: 7, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3672, file: !786, line: 713, column: 7)
!3672 = distinct !DILexicalBlock(scope: !3668, file: !786, line: 713, column: 7)
!3673 = !DILocation(line: 713, column: 7, scope: !3672)
!3674 = !DILocation(line: 713, column: 7, scope: !3668)
!3675 = !DILocation(line: 714, column: 7, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3677, file: !786, line: 714, column: 7)
!3677 = distinct !DILexicalBlock(scope: !3195, file: !786, line: 714, column: 7)
!3678 = !DILocation(line: 714, column: 7, scope: !3677)
!3679 = !DILocation(line: 716, column: 13, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3195, file: !786, line: 716, column: 11)
!3681 = !DILocation(line: 716, column: 11, scope: !3195)
!3682 = !DILocation(line: 718, column: 5, scope: !3196)
!3683 = !DILocation(line: 395, column: 82, scope: !3196)
!3684 = !DILocation(line: 395, column: 3, scope: !3196)
!3685 = distinct !{!3685, !3337, !3686, !1204}
!3686 = !DILocation(line: 718, column: 5, scope: !3193)
!3687 = !DILocation(line: 720, column: 11, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3162, file: !786, line: 720, column: 7)
!3689 = !DILocation(line: 720, column: 16, scope: !3688)
!3690 = !DILocation(line: 728, column: 51, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3162, file: !786, line: 728, column: 7)
!3692 = !DILocation(line: 731, column: 11, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3694, file: !786, line: 731, column: 11)
!3694 = distinct !DILexicalBlock(scope: !3691, file: !786, line: 730, column: 5)
!3695 = !DILocation(line: 731, column: 11, scope: !3694)
!3696 = !DILocation(line: 732, column: 16, scope: !3693)
!3697 = !DILocation(line: 732, column: 9, scope: !3693)
!3698 = !DILocation(line: 736, column: 18, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !3693, file: !786, line: 736, column: 16)
!3700 = !DILocation(line: 736, column: 29, scope: !3699)
!3701 = !DILocation(line: 745, column: 7, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3162, file: !786, line: 745, column: 7)
!3703 = !DILocation(line: 745, column: 20, scope: !3702)
!3704 = !DILocation(line: 746, column: 12, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3706, file: !786, line: 746, column: 5)
!3706 = distinct !DILexicalBlock(scope: !3702, file: !786, line: 746, column: 5)
!3707 = !DILocation(line: 746, column: 5, scope: !3706)
!3708 = !DILocation(line: 747, column: 7, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3710, file: !786, line: 747, column: 7)
!3710 = distinct !DILexicalBlock(scope: !3705, file: !786, line: 747, column: 7)
!3711 = !DILocation(line: 747, column: 7, scope: !3710)
!3712 = !DILocation(line: 746, column: 39, scope: !3705)
!3713 = distinct !{!3713, !3707, !3714, !1204}
!3714 = !DILocation(line: 747, column: 7, scope: !3706)
!3715 = !DILocation(line: 749, column: 11, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3162, file: !786, line: 749, column: 7)
!3717 = !DILocation(line: 749, column: 7, scope: !3162)
!3718 = !DILocation(line: 750, column: 5, scope: !3716)
!3719 = !DILocation(line: 750, column: 17, scope: !3716)
!3720 = !DILocation(line: 753, column: 2, scope: !3162)
!3721 = !DILocation(line: 756, column: 51, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3162, file: !786, line: 756, column: 7)
!3723 = !DILocation(line: 756, column: 21, scope: !3722)
!3724 = !DILocation(line: 760, column: 42, scope: !3162)
!3725 = !DILocation(line: 758, column: 10, scope: !3162)
!3726 = !DILocation(line: 758, column: 3, scope: !3162)
!3727 = !DILocation(line: 762, column: 1, scope: !3162)
!3728 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1282, file: !1282, line: 98, type: !3729, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!3729 = !DISubroutineType(types: !3730)
!3730 = !{!113}
!3731 = !DISubprogram(name: "strlen", scope: !1278, file: !1278, line: 407, type: !3732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!111, !115}
!3734 = !DISubprogram(name: "iswprint", scope: !1763, file: !1763, line: 120, type: !1554, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!3735 = distinct !DISubprogram(name: "quotearg_alloc", scope: !786, file: !786, line: 788, type: !3736, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3738)
!3736 = !DISubroutineType(types: !3737)
!3737 = !{!107, !115, !113, !3055}
!3738 = !{!3739, !3740, !3741}
!3739 = !DILocalVariable(name: "arg", arg: 1, scope: !3735, file: !786, line: 788, type: !115)
!3740 = !DILocalVariable(name: "argsize", arg: 2, scope: !3735, file: !786, line: 788, type: !113)
!3741 = !DILocalVariable(name: "o", arg: 3, scope: !3735, file: !786, line: 789, type: !3055)
!3742 = !DILocation(line: 0, scope: !3735)
!3743 = !DILocalVariable(name: "arg", arg: 1, scope: !3744, file: !786, line: 801, type: !115)
!3744 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !786, file: !786, line: 801, type: !3745, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3747)
!3745 = !DISubroutineType(types: !3746)
!3746 = !{!107, !115, !113, !1027, !3055}
!3747 = !{!3743, !3748, !3749, !3750, !3751, !3752, !3753, !3754, !3755}
!3748 = !DILocalVariable(name: "argsize", arg: 2, scope: !3744, file: !786, line: 801, type: !113)
!3749 = !DILocalVariable(name: "size", arg: 3, scope: !3744, file: !786, line: 801, type: !1027)
!3750 = !DILocalVariable(name: "o", arg: 4, scope: !3744, file: !786, line: 802, type: !3055)
!3751 = !DILocalVariable(name: "p", scope: !3744, file: !786, line: 804, type: !3055)
!3752 = !DILocalVariable(name: "saved_errno", scope: !3744, file: !786, line: 805, type: !77)
!3753 = !DILocalVariable(name: "flags", scope: !3744, file: !786, line: 807, type: !77)
!3754 = !DILocalVariable(name: "bufsize", scope: !3744, file: !786, line: 808, type: !113)
!3755 = !DILocalVariable(name: "buf", scope: !3744, file: !786, line: 812, type: !107)
!3756 = !DILocation(line: 0, scope: !3744, inlinedAt: !3757)
!3757 = distinct !DILocation(line: 791, column: 10, scope: !3735)
!3758 = !DILocation(line: 804, column: 37, scope: !3744, inlinedAt: !3757)
!3759 = !DILocation(line: 805, column: 21, scope: !3744, inlinedAt: !3757)
!3760 = !DILocation(line: 807, column: 18, scope: !3744, inlinedAt: !3757)
!3761 = !DILocation(line: 807, column: 24, scope: !3744, inlinedAt: !3757)
!3762 = !DILocation(line: 808, column: 72, scope: !3744, inlinedAt: !3757)
!3763 = !DILocation(line: 809, column: 56, scope: !3744, inlinedAt: !3757)
!3764 = !DILocation(line: 810, column: 49, scope: !3744, inlinedAt: !3757)
!3765 = !DILocation(line: 811, column: 49, scope: !3744, inlinedAt: !3757)
!3766 = !DILocation(line: 808, column: 20, scope: !3744, inlinedAt: !3757)
!3767 = !DILocation(line: 811, column: 62, scope: !3744, inlinedAt: !3757)
!3768 = !DILocation(line: 812, column: 15, scope: !3744, inlinedAt: !3757)
!3769 = !DILocation(line: 813, column: 60, scope: !3744, inlinedAt: !3757)
!3770 = !DILocation(line: 815, column: 32, scope: !3744, inlinedAt: !3757)
!3771 = !DILocation(line: 815, column: 47, scope: !3744, inlinedAt: !3757)
!3772 = !DILocation(line: 813, column: 3, scope: !3744, inlinedAt: !3757)
!3773 = !DILocation(line: 816, column: 9, scope: !3744, inlinedAt: !3757)
!3774 = !DILocation(line: 791, column: 3, scope: !3735)
!3775 = !DILocation(line: 0, scope: !3744)
!3776 = !DILocation(line: 804, column: 37, scope: !3744)
!3777 = !DILocation(line: 805, column: 21, scope: !3744)
!3778 = !DILocation(line: 807, column: 18, scope: !3744)
!3779 = !DILocation(line: 807, column: 27, scope: !3744)
!3780 = !DILocation(line: 807, column: 24, scope: !3744)
!3781 = !DILocation(line: 808, column: 72, scope: !3744)
!3782 = !DILocation(line: 809, column: 56, scope: !3744)
!3783 = !DILocation(line: 810, column: 49, scope: !3744)
!3784 = !DILocation(line: 811, column: 49, scope: !3744)
!3785 = !DILocation(line: 808, column: 20, scope: !3744)
!3786 = !DILocation(line: 811, column: 62, scope: !3744)
!3787 = !DILocation(line: 812, column: 15, scope: !3744)
!3788 = !DILocation(line: 813, column: 60, scope: !3744)
!3789 = !DILocation(line: 815, column: 32, scope: !3744)
!3790 = !DILocation(line: 815, column: 47, scope: !3744)
!3791 = !DILocation(line: 813, column: 3, scope: !3744)
!3792 = !DILocation(line: 816, column: 9, scope: !3744)
!3793 = !DILocation(line: 817, column: 7, scope: !3744)
!3794 = !DILocation(line: 818, column: 11, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3744, file: !786, line: 817, column: 7)
!3796 = !DILocation(line: 818, column: 5, scope: !3795)
!3797 = !DILocation(line: 819, column: 3, scope: !3744)
!3798 = distinct !DISubprogram(name: "quotearg_free", scope: !786, file: !786, line: 837, type: !356, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3799)
!3799 = !{!3800, !3801}
!3800 = !DILocalVariable(name: "sv", scope: !3798, file: !786, line: 839, type: !873)
!3801 = !DILocalVariable(name: "i", scope: !3802, file: !786, line: 840, type: !77)
!3802 = distinct !DILexicalBlock(scope: !3798, file: !786, line: 840, column: 3)
!3803 = !DILocation(line: 839, column: 24, scope: !3798)
!3804 = !DILocation(line: 0, scope: !3798)
!3805 = !DILocation(line: 0, scope: !3802)
!3806 = !DILocation(line: 840, column: 21, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3802, file: !786, line: 840, column: 3)
!3808 = !DILocation(line: 840, column: 3, scope: !3802)
!3809 = !DILocation(line: 842, column: 13, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3798, file: !786, line: 842, column: 7)
!3811 = !{!3812, !1087, i64 8}
!3812 = !{!"slotvec", !1386, i64 0, !1087, i64 8}
!3813 = !DILocation(line: 842, column: 17, scope: !3810)
!3814 = !DILocation(line: 842, column: 7, scope: !3798)
!3815 = !DILocation(line: 841, column: 17, scope: !3807)
!3816 = !DILocation(line: 841, column: 5, scope: !3807)
!3817 = !DILocation(line: 840, column: 32, scope: !3807)
!3818 = distinct !{!3818, !3808, !3819, !1204}
!3819 = !DILocation(line: 841, column: 20, scope: !3802)
!3820 = !DILocation(line: 844, column: 7, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3810, file: !786, line: 843, column: 5)
!3822 = !DILocation(line: 845, column: 21, scope: !3821)
!3823 = !{!3812, !1386, i64 0}
!3824 = !DILocation(line: 846, column: 20, scope: !3821)
!3825 = !DILocation(line: 847, column: 5, scope: !3821)
!3826 = !DILocation(line: 848, column: 10, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !3798, file: !786, line: 848, column: 7)
!3828 = !DILocation(line: 848, column: 7, scope: !3798)
!3829 = !DILocation(line: 850, column: 7, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3827, file: !786, line: 849, column: 5)
!3831 = !DILocation(line: 851, column: 15, scope: !3830)
!3832 = !DILocation(line: 852, column: 5, scope: !3830)
!3833 = !DILocation(line: 853, column: 10, scope: !3798)
!3834 = !DILocation(line: 854, column: 1, scope: !3798)
!3835 = distinct !DISubprogram(name: "quotearg_n", scope: !786, file: !786, line: 919, type: !1275, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3836)
!3836 = !{!3837, !3838}
!3837 = !DILocalVariable(name: "n", arg: 1, scope: !3835, file: !786, line: 919, type: !77)
!3838 = !DILocalVariable(name: "arg", arg: 2, scope: !3835, file: !786, line: 919, type: !115)
!3839 = !DILocation(line: 0, scope: !3835)
!3840 = !DILocation(line: 921, column: 10, scope: !3835)
!3841 = !DILocation(line: 921, column: 3, scope: !3835)
!3842 = distinct !DISubprogram(name: "quotearg_n_options", scope: !786, file: !786, line: 866, type: !3843, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3845)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!107, !77, !115, !113, !3055}
!3845 = !{!3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3856, !3857, !3859, !3860, !3861}
!3846 = !DILocalVariable(name: "n", arg: 1, scope: !3842, file: !786, line: 866, type: !77)
!3847 = !DILocalVariable(name: "arg", arg: 2, scope: !3842, file: !786, line: 866, type: !115)
!3848 = !DILocalVariable(name: "argsize", arg: 3, scope: !3842, file: !786, line: 866, type: !113)
!3849 = !DILocalVariable(name: "options", arg: 4, scope: !3842, file: !786, line: 867, type: !3055)
!3850 = !DILocalVariable(name: "saved_errno", scope: !3842, file: !786, line: 869, type: !77)
!3851 = !DILocalVariable(name: "sv", scope: !3842, file: !786, line: 871, type: !873)
!3852 = !DILocalVariable(name: "nslots_max", scope: !3842, file: !786, line: 873, type: !77)
!3853 = !DILocalVariable(name: "preallocated", scope: !3854, file: !786, line: 879, type: !109)
!3854 = distinct !DILexicalBlock(scope: !3855, file: !786, line: 878, column: 5)
!3855 = distinct !DILexicalBlock(scope: !3842, file: !786, line: 877, column: 7)
!3856 = !DILocalVariable(name: "new_nslots", scope: !3854, file: !786, line: 880, type: !369)
!3857 = !DILocalVariable(name: "size", scope: !3858, file: !786, line: 891, type: !113)
!3858 = distinct !DILexicalBlock(scope: !3842, file: !786, line: 890, column: 3)
!3859 = !DILocalVariable(name: "val", scope: !3858, file: !786, line: 892, type: !107)
!3860 = !DILocalVariable(name: "flags", scope: !3858, file: !786, line: 894, type: !77)
!3861 = !DILocalVariable(name: "qsize", scope: !3858, file: !786, line: 895, type: !113)
!3862 = !DILocation(line: 0, scope: !3842)
!3863 = !DILocation(line: 869, column: 21, scope: !3842)
!3864 = !DILocation(line: 871, column: 24, scope: !3842)
!3865 = !DILocation(line: 874, column: 17, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3842, file: !786, line: 874, column: 7)
!3867 = !DILocation(line: 875, column: 5, scope: !3866)
!3868 = !DILocation(line: 877, column: 7, scope: !3855)
!3869 = !DILocation(line: 877, column: 14, scope: !3855)
!3870 = !DILocation(line: 877, column: 7, scope: !3842)
!3871 = !DILocation(line: 879, column: 31, scope: !3854)
!3872 = !DILocation(line: 0, scope: !3854)
!3873 = !DILocation(line: 880, column: 7, scope: !3854)
!3874 = !DILocation(line: 880, column: 26, scope: !3854)
!3875 = !DILocation(line: 880, column: 13, scope: !3854)
!3876 = !DILocation(line: 882, column: 31, scope: !3854)
!3877 = !DILocation(line: 883, column: 33, scope: !3854)
!3878 = !DILocation(line: 883, column: 42, scope: !3854)
!3879 = !DILocation(line: 883, column: 31, scope: !3854)
!3880 = !DILocation(line: 882, column: 22, scope: !3854)
!3881 = !DILocation(line: 882, column: 15, scope: !3854)
!3882 = !DILocation(line: 884, column: 11, scope: !3854)
!3883 = !DILocation(line: 885, column: 15, scope: !3884)
!3884 = distinct !DILexicalBlock(scope: !3854, file: !786, line: 884, column: 11)
!3885 = !{i64 0, i64 8, !1385, i64 8, i64 8, !1086}
!3886 = !DILocation(line: 885, column: 9, scope: !3884)
!3887 = !DILocation(line: 886, column: 20, scope: !3854)
!3888 = !DILocation(line: 886, column: 18, scope: !3854)
!3889 = !DILocation(line: 886, column: 32, scope: !3854)
!3890 = !DILocation(line: 886, column: 43, scope: !3854)
!3891 = !DILocation(line: 886, column: 53, scope: !3854)
!3892 = !DILocation(line: 0, scope: !3270, inlinedAt: !3893)
!3893 = distinct !DILocation(line: 886, column: 7, scope: !3854)
!3894 = !DILocation(line: 59, column: 10, scope: !3270, inlinedAt: !3893)
!3895 = !DILocation(line: 887, column: 16, scope: !3854)
!3896 = !DILocation(line: 887, column: 14, scope: !3854)
!3897 = !DILocation(line: 888, column: 5, scope: !3855)
!3898 = !DILocation(line: 888, column: 5, scope: !3854)
!3899 = !DILocation(line: 891, column: 19, scope: !3858)
!3900 = !DILocation(line: 891, column: 25, scope: !3858)
!3901 = !DILocation(line: 0, scope: !3858)
!3902 = !DILocation(line: 892, column: 23, scope: !3858)
!3903 = !DILocation(line: 894, column: 26, scope: !3858)
!3904 = !DILocation(line: 894, column: 32, scope: !3858)
!3905 = !DILocation(line: 896, column: 55, scope: !3858)
!3906 = !DILocation(line: 897, column: 55, scope: !3858)
!3907 = !DILocation(line: 898, column: 55, scope: !3858)
!3908 = !DILocation(line: 899, column: 55, scope: !3858)
!3909 = !DILocation(line: 895, column: 20, scope: !3858)
!3910 = !DILocation(line: 901, column: 14, scope: !3911)
!3911 = distinct !DILexicalBlock(scope: !3858, file: !786, line: 901, column: 9)
!3912 = !DILocation(line: 901, column: 9, scope: !3858)
!3913 = !DILocation(line: 903, column: 35, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3911, file: !786, line: 902, column: 7)
!3915 = !DILocation(line: 903, column: 20, scope: !3914)
!3916 = !DILocation(line: 904, column: 17, scope: !3917)
!3917 = distinct !DILexicalBlock(scope: !3914, file: !786, line: 904, column: 13)
!3918 = !DILocation(line: 904, column: 13, scope: !3914)
!3919 = !DILocation(line: 905, column: 11, scope: !3917)
!3920 = !DILocation(line: 906, column: 27, scope: !3914)
!3921 = !DILocation(line: 906, column: 19, scope: !3914)
!3922 = !DILocation(line: 907, column: 69, scope: !3914)
!3923 = !DILocation(line: 909, column: 44, scope: !3914)
!3924 = !DILocation(line: 910, column: 44, scope: !3914)
!3925 = !DILocation(line: 907, column: 9, scope: !3914)
!3926 = !DILocation(line: 911, column: 7, scope: !3914)
!3927 = !DILocation(line: 913, column: 11, scope: !3858)
!3928 = !DILocation(line: 914, column: 5, scope: !3858)
!3929 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !786, file: !786, line: 925, type: !3930, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3932)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!107, !77, !115, !113}
!3932 = !{!3933, !3934, !3935}
!3933 = !DILocalVariable(name: "n", arg: 1, scope: !3929, file: !786, line: 925, type: !77)
!3934 = !DILocalVariable(name: "arg", arg: 2, scope: !3929, file: !786, line: 925, type: !115)
!3935 = !DILocalVariable(name: "argsize", arg: 3, scope: !3929, file: !786, line: 925, type: !113)
!3936 = !DILocation(line: 0, scope: !3929)
!3937 = !DILocation(line: 927, column: 10, scope: !3929)
!3938 = !DILocation(line: 927, column: 3, scope: !3929)
!3939 = distinct !DISubprogram(name: "quotearg", scope: !786, file: !786, line: 931, type: !1284, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3940)
!3940 = !{!3941}
!3941 = !DILocalVariable(name: "arg", arg: 1, scope: !3939, file: !786, line: 931, type: !115)
!3942 = !DILocation(line: 0, scope: !3939)
!3943 = !DILocation(line: 0, scope: !3835, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 933, column: 10, scope: !3939)
!3945 = !DILocation(line: 921, column: 10, scope: !3835, inlinedAt: !3944)
!3946 = !DILocation(line: 933, column: 3, scope: !3939)
!3947 = distinct !DISubprogram(name: "quotearg_mem", scope: !786, file: !786, line: 937, type: !3948, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3950)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!107, !115, !113}
!3950 = !{!3951, !3952}
!3951 = !DILocalVariable(name: "arg", arg: 1, scope: !3947, file: !786, line: 937, type: !115)
!3952 = !DILocalVariable(name: "argsize", arg: 2, scope: !3947, file: !786, line: 937, type: !113)
!3953 = !DILocation(line: 0, scope: !3947)
!3954 = !DILocation(line: 0, scope: !3929, inlinedAt: !3955)
!3955 = distinct !DILocation(line: 939, column: 10, scope: !3947)
!3956 = !DILocation(line: 927, column: 10, scope: !3929, inlinedAt: !3955)
!3957 = !DILocation(line: 939, column: 3, scope: !3947)
!3958 = distinct !DISubprogram(name: "quotearg_n_style", scope: !786, file: !786, line: 943, type: !3959, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3961)
!3959 = !DISubroutineType(types: !3960)
!3960 = !{!107, !77, !444, !115}
!3961 = !{!3962, !3963, !3964, !3965}
!3962 = !DILocalVariable(name: "n", arg: 1, scope: !3958, file: !786, line: 943, type: !77)
!3963 = !DILocalVariable(name: "s", arg: 2, scope: !3958, file: !786, line: 943, type: !444)
!3964 = !DILocalVariable(name: "arg", arg: 3, scope: !3958, file: !786, line: 943, type: !115)
!3965 = !DILocalVariable(name: "o", scope: !3958, file: !786, line: 945, type: !3056)
!3966 = !DILocation(line: 0, scope: !3958)
!3967 = !DILocation(line: 945, column: 3, scope: !3958)
!3968 = !DILocation(line: 945, column: 32, scope: !3958)
!3969 = !{!3970}
!3970 = distinct !{!3970, !3971, !"quoting_options_from_style: argument 0"}
!3971 = distinct !{!3971, !"quoting_options_from_style"}
!3972 = !DILocation(line: 945, column: 36, scope: !3958)
!3973 = !DILocalVariable(name: "style", arg: 1, scope: !3974, file: !786, line: 183, type: !444)
!3974 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !786, file: !786, line: 183, type: !3975, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3977)
!3975 = !DISubroutineType(types: !3976)
!3976 = !{!825, !444}
!3977 = !{!3973, !3978}
!3978 = !DILocalVariable(name: "o", scope: !3974, file: !786, line: 185, type: !825)
!3979 = !DILocation(line: 0, scope: !3974, inlinedAt: !3980)
!3980 = distinct !DILocation(line: 945, column: 36, scope: !3958)
!3981 = !DILocation(line: 185, column: 26, scope: !3974, inlinedAt: !3980)
!3982 = !DILocation(line: 186, column: 13, scope: !3983, inlinedAt: !3980)
!3983 = distinct !DILexicalBlock(scope: !3974, file: !786, line: 186, column: 7)
!3984 = !DILocation(line: 186, column: 7, scope: !3974, inlinedAt: !3980)
!3985 = !DILocation(line: 187, column: 5, scope: !3983, inlinedAt: !3980)
!3986 = !DILocation(line: 188, column: 11, scope: !3974, inlinedAt: !3980)
!3987 = !DILocation(line: 946, column: 10, scope: !3958)
!3988 = !DILocation(line: 947, column: 1, scope: !3958)
!3989 = !DILocation(line: 946, column: 3, scope: !3958)
!3990 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !786, file: !786, line: 950, type: !3991, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !3993)
!3991 = !DISubroutineType(types: !3992)
!3992 = !{!107, !77, !444, !115, !113}
!3993 = !{!3994, !3995, !3996, !3997, !3998}
!3994 = !DILocalVariable(name: "n", arg: 1, scope: !3990, file: !786, line: 950, type: !77)
!3995 = !DILocalVariable(name: "s", arg: 2, scope: !3990, file: !786, line: 950, type: !444)
!3996 = !DILocalVariable(name: "arg", arg: 3, scope: !3990, file: !786, line: 951, type: !115)
!3997 = !DILocalVariable(name: "argsize", arg: 4, scope: !3990, file: !786, line: 951, type: !113)
!3998 = !DILocalVariable(name: "o", scope: !3990, file: !786, line: 953, type: !3056)
!3999 = !DILocation(line: 0, scope: !3990)
!4000 = !DILocation(line: 953, column: 3, scope: !3990)
!4001 = !DILocation(line: 953, column: 32, scope: !3990)
!4002 = !{!4003}
!4003 = distinct !{!4003, !4004, !"quoting_options_from_style: argument 0"}
!4004 = distinct !{!4004, !"quoting_options_from_style"}
!4005 = !DILocation(line: 953, column: 36, scope: !3990)
!4006 = !DILocation(line: 0, scope: !3974, inlinedAt: !4007)
!4007 = distinct !DILocation(line: 953, column: 36, scope: !3990)
!4008 = !DILocation(line: 185, column: 26, scope: !3974, inlinedAt: !4007)
!4009 = !DILocation(line: 186, column: 13, scope: !3983, inlinedAt: !4007)
!4010 = !DILocation(line: 186, column: 7, scope: !3974, inlinedAt: !4007)
!4011 = !DILocation(line: 187, column: 5, scope: !3983, inlinedAt: !4007)
!4012 = !DILocation(line: 188, column: 11, scope: !3974, inlinedAt: !4007)
!4013 = !DILocation(line: 954, column: 10, scope: !3990)
!4014 = !DILocation(line: 955, column: 1, scope: !3990)
!4015 = !DILocation(line: 954, column: 3, scope: !3990)
!4016 = distinct !DISubprogram(name: "quotearg_style", scope: !786, file: !786, line: 958, type: !4017, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4019)
!4017 = !DISubroutineType(types: !4018)
!4018 = !{!107, !444, !115}
!4019 = !{!4020, !4021}
!4020 = !DILocalVariable(name: "s", arg: 1, scope: !4016, file: !786, line: 958, type: !444)
!4021 = !DILocalVariable(name: "arg", arg: 2, scope: !4016, file: !786, line: 958, type: !115)
!4022 = !DILocation(line: 0, scope: !4016)
!4023 = !DILocation(line: 0, scope: !3958, inlinedAt: !4024)
!4024 = distinct !DILocation(line: 960, column: 10, scope: !4016)
!4025 = !DILocation(line: 945, column: 3, scope: !3958, inlinedAt: !4024)
!4026 = !DILocation(line: 945, column: 32, scope: !3958, inlinedAt: !4024)
!4027 = !{!4028}
!4028 = distinct !{!4028, !4029, !"quoting_options_from_style: argument 0"}
!4029 = distinct !{!4029, !"quoting_options_from_style"}
!4030 = !DILocation(line: 945, column: 36, scope: !3958, inlinedAt: !4024)
!4031 = !DILocation(line: 0, scope: !3974, inlinedAt: !4032)
!4032 = distinct !DILocation(line: 945, column: 36, scope: !3958, inlinedAt: !4024)
!4033 = !DILocation(line: 185, column: 26, scope: !3974, inlinedAt: !4032)
!4034 = !DILocation(line: 186, column: 13, scope: !3983, inlinedAt: !4032)
!4035 = !DILocation(line: 186, column: 7, scope: !3974, inlinedAt: !4032)
!4036 = !DILocation(line: 187, column: 5, scope: !3983, inlinedAt: !4032)
!4037 = !DILocation(line: 188, column: 11, scope: !3974, inlinedAt: !4032)
!4038 = !DILocation(line: 946, column: 10, scope: !3958, inlinedAt: !4024)
!4039 = !DILocation(line: 947, column: 1, scope: !3958, inlinedAt: !4024)
!4040 = !DILocation(line: 960, column: 3, scope: !4016)
!4041 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !786, file: !786, line: 964, type: !4042, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4044)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{!107, !444, !115, !113}
!4044 = !{!4045, !4046, !4047}
!4045 = !DILocalVariable(name: "s", arg: 1, scope: !4041, file: !786, line: 964, type: !444)
!4046 = !DILocalVariable(name: "arg", arg: 2, scope: !4041, file: !786, line: 964, type: !115)
!4047 = !DILocalVariable(name: "argsize", arg: 3, scope: !4041, file: !786, line: 964, type: !113)
!4048 = !DILocation(line: 0, scope: !4041)
!4049 = !DILocation(line: 0, scope: !3990, inlinedAt: !4050)
!4050 = distinct !DILocation(line: 966, column: 10, scope: !4041)
!4051 = !DILocation(line: 953, column: 3, scope: !3990, inlinedAt: !4050)
!4052 = !DILocation(line: 953, column: 32, scope: !3990, inlinedAt: !4050)
!4053 = !{!4054}
!4054 = distinct !{!4054, !4055, !"quoting_options_from_style: argument 0"}
!4055 = distinct !{!4055, !"quoting_options_from_style"}
!4056 = !DILocation(line: 953, column: 36, scope: !3990, inlinedAt: !4050)
!4057 = !DILocation(line: 0, scope: !3974, inlinedAt: !4058)
!4058 = distinct !DILocation(line: 953, column: 36, scope: !3990, inlinedAt: !4050)
!4059 = !DILocation(line: 185, column: 26, scope: !3974, inlinedAt: !4058)
!4060 = !DILocation(line: 186, column: 13, scope: !3983, inlinedAt: !4058)
!4061 = !DILocation(line: 186, column: 7, scope: !3974, inlinedAt: !4058)
!4062 = !DILocation(line: 187, column: 5, scope: !3983, inlinedAt: !4058)
!4063 = !DILocation(line: 188, column: 11, scope: !3974, inlinedAt: !4058)
!4064 = !DILocation(line: 954, column: 10, scope: !3990, inlinedAt: !4050)
!4065 = !DILocation(line: 955, column: 1, scope: !3990, inlinedAt: !4050)
!4066 = !DILocation(line: 966, column: 3, scope: !4041)
!4067 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !786, file: !786, line: 970, type: !4068, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4070)
!4068 = !DISubroutineType(types: !4069)
!4069 = !{!107, !115, !113, !4}
!4070 = !{!4071, !4072, !4073, !4074}
!4071 = !DILocalVariable(name: "arg", arg: 1, scope: !4067, file: !786, line: 970, type: !115)
!4072 = !DILocalVariable(name: "argsize", arg: 2, scope: !4067, file: !786, line: 970, type: !113)
!4073 = !DILocalVariable(name: "ch", arg: 3, scope: !4067, file: !786, line: 970, type: !4)
!4074 = !DILocalVariable(name: "options", scope: !4067, file: !786, line: 972, type: !825)
!4075 = !DILocation(line: 0, scope: !4067)
!4076 = !DILocation(line: 972, column: 3, scope: !4067)
!4077 = !DILocation(line: 972, column: 26, scope: !4067)
!4078 = !DILocation(line: 973, column: 13, scope: !4067)
!4079 = !{i64 0, i64 4, !1166, i64 4, i64 4, !1157, i64 8, i64 32, !1166, i64 40, i64 8, !1086, i64 48, i64 8, !1086}
!4080 = !DILocation(line: 0, scope: !3075, inlinedAt: !4081)
!4081 = distinct !DILocation(line: 974, column: 3, scope: !4067)
!4082 = !DILocation(line: 147, column: 41, scope: !3075, inlinedAt: !4081)
!4083 = !DILocation(line: 147, column: 62, scope: !3075, inlinedAt: !4081)
!4084 = !DILocation(line: 147, column: 57, scope: !3075, inlinedAt: !4081)
!4085 = !DILocation(line: 148, column: 15, scope: !3075, inlinedAt: !4081)
!4086 = !DILocation(line: 149, column: 21, scope: !3075, inlinedAt: !4081)
!4087 = !DILocation(line: 149, column: 24, scope: !3075, inlinedAt: !4081)
!4088 = !DILocation(line: 150, column: 19, scope: !3075, inlinedAt: !4081)
!4089 = !DILocation(line: 150, column: 24, scope: !3075, inlinedAt: !4081)
!4090 = !DILocation(line: 150, column: 6, scope: !3075, inlinedAt: !4081)
!4091 = !DILocation(line: 975, column: 10, scope: !4067)
!4092 = !DILocation(line: 976, column: 1, scope: !4067)
!4093 = !DILocation(line: 975, column: 3, scope: !4067)
!4094 = distinct !DISubprogram(name: "quotearg_char", scope: !786, file: !786, line: 979, type: !4095, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4097)
!4095 = !DISubroutineType(types: !4096)
!4096 = !{!107, !115, !4}
!4097 = !{!4098, !4099}
!4098 = !DILocalVariable(name: "arg", arg: 1, scope: !4094, file: !786, line: 979, type: !115)
!4099 = !DILocalVariable(name: "ch", arg: 2, scope: !4094, file: !786, line: 979, type: !4)
!4100 = !DILocation(line: 0, scope: !4094)
!4101 = !DILocation(line: 0, scope: !4067, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 981, column: 10, scope: !4094)
!4103 = !DILocation(line: 972, column: 3, scope: !4067, inlinedAt: !4102)
!4104 = !DILocation(line: 972, column: 26, scope: !4067, inlinedAt: !4102)
!4105 = !DILocation(line: 973, column: 13, scope: !4067, inlinedAt: !4102)
!4106 = !DILocation(line: 0, scope: !3075, inlinedAt: !4107)
!4107 = distinct !DILocation(line: 974, column: 3, scope: !4067, inlinedAt: !4102)
!4108 = !DILocation(line: 147, column: 41, scope: !3075, inlinedAt: !4107)
!4109 = !DILocation(line: 147, column: 62, scope: !3075, inlinedAt: !4107)
!4110 = !DILocation(line: 147, column: 57, scope: !3075, inlinedAt: !4107)
!4111 = !DILocation(line: 148, column: 15, scope: !3075, inlinedAt: !4107)
!4112 = !DILocation(line: 149, column: 21, scope: !3075, inlinedAt: !4107)
!4113 = !DILocation(line: 149, column: 24, scope: !3075, inlinedAt: !4107)
!4114 = !DILocation(line: 150, column: 19, scope: !3075, inlinedAt: !4107)
!4115 = !DILocation(line: 150, column: 24, scope: !3075, inlinedAt: !4107)
!4116 = !DILocation(line: 150, column: 6, scope: !3075, inlinedAt: !4107)
!4117 = !DILocation(line: 975, column: 10, scope: !4067, inlinedAt: !4102)
!4118 = !DILocation(line: 976, column: 1, scope: !4067, inlinedAt: !4102)
!4119 = !DILocation(line: 981, column: 3, scope: !4094)
!4120 = distinct !DISubprogram(name: "quotearg_colon", scope: !786, file: !786, line: 985, type: !1284, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4121)
!4121 = !{!4122}
!4122 = !DILocalVariable(name: "arg", arg: 1, scope: !4120, file: !786, line: 985, type: !115)
!4123 = !DILocation(line: 0, scope: !4120)
!4124 = !DILocation(line: 0, scope: !4094, inlinedAt: !4125)
!4125 = distinct !DILocation(line: 987, column: 10, scope: !4120)
!4126 = !DILocation(line: 0, scope: !4067, inlinedAt: !4127)
!4127 = distinct !DILocation(line: 981, column: 10, scope: !4094, inlinedAt: !4125)
!4128 = !DILocation(line: 972, column: 3, scope: !4067, inlinedAt: !4127)
!4129 = !DILocation(line: 972, column: 26, scope: !4067, inlinedAt: !4127)
!4130 = !DILocation(line: 973, column: 13, scope: !4067, inlinedAt: !4127)
!4131 = !DILocation(line: 0, scope: !3075, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 974, column: 3, scope: !4067, inlinedAt: !4127)
!4133 = !DILocation(line: 147, column: 57, scope: !3075, inlinedAt: !4132)
!4134 = !DILocation(line: 149, column: 21, scope: !3075, inlinedAt: !4132)
!4135 = !DILocation(line: 150, column: 6, scope: !3075, inlinedAt: !4132)
!4136 = !DILocation(line: 975, column: 10, scope: !4067, inlinedAt: !4127)
!4137 = !DILocation(line: 976, column: 1, scope: !4067, inlinedAt: !4127)
!4138 = !DILocation(line: 987, column: 3, scope: !4120)
!4139 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !786, file: !786, line: 991, type: !3948, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4140)
!4140 = !{!4141, !4142}
!4141 = !DILocalVariable(name: "arg", arg: 1, scope: !4139, file: !786, line: 991, type: !115)
!4142 = !DILocalVariable(name: "argsize", arg: 2, scope: !4139, file: !786, line: 991, type: !113)
!4143 = !DILocation(line: 0, scope: !4139)
!4144 = !DILocation(line: 0, scope: !4067, inlinedAt: !4145)
!4145 = distinct !DILocation(line: 993, column: 10, scope: !4139)
!4146 = !DILocation(line: 972, column: 3, scope: !4067, inlinedAt: !4145)
!4147 = !DILocation(line: 972, column: 26, scope: !4067, inlinedAt: !4145)
!4148 = !DILocation(line: 973, column: 13, scope: !4067, inlinedAt: !4145)
!4149 = !DILocation(line: 0, scope: !3075, inlinedAt: !4150)
!4150 = distinct !DILocation(line: 974, column: 3, scope: !4067, inlinedAt: !4145)
!4151 = !DILocation(line: 147, column: 57, scope: !3075, inlinedAt: !4150)
!4152 = !DILocation(line: 149, column: 21, scope: !3075, inlinedAt: !4150)
!4153 = !DILocation(line: 150, column: 6, scope: !3075, inlinedAt: !4150)
!4154 = !DILocation(line: 975, column: 10, scope: !4067, inlinedAt: !4145)
!4155 = !DILocation(line: 976, column: 1, scope: !4067, inlinedAt: !4145)
!4156 = !DILocation(line: 993, column: 3, scope: !4139)
!4157 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !786, file: !786, line: 997, type: !3959, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4158)
!4158 = !{!4159, !4160, !4161, !4162}
!4159 = !DILocalVariable(name: "n", arg: 1, scope: !4157, file: !786, line: 997, type: !77)
!4160 = !DILocalVariable(name: "s", arg: 2, scope: !4157, file: !786, line: 997, type: !444)
!4161 = !DILocalVariable(name: "arg", arg: 3, scope: !4157, file: !786, line: 997, type: !115)
!4162 = !DILocalVariable(name: "options", scope: !4157, file: !786, line: 999, type: !825)
!4163 = !DILocation(line: 185, column: 26, scope: !3974, inlinedAt: !4164)
!4164 = distinct !DILocation(line: 1000, column: 13, scope: !4157)
!4165 = !DILocation(line: 0, scope: !4157)
!4166 = !DILocation(line: 999, column: 3, scope: !4157)
!4167 = !DILocation(line: 999, column: 26, scope: !4157)
!4168 = !DILocation(line: 0, scope: !3974, inlinedAt: !4164)
!4169 = !DILocation(line: 186, column: 13, scope: !3983, inlinedAt: !4164)
!4170 = !DILocation(line: 186, column: 7, scope: !3974, inlinedAt: !4164)
!4171 = !DILocation(line: 187, column: 5, scope: !3983, inlinedAt: !4164)
!4172 = !{!4173}
!4173 = distinct !{!4173, !4174, !"quoting_options_from_style: argument 0"}
!4174 = distinct !{!4174, !"quoting_options_from_style"}
!4175 = !DILocation(line: 1000, column: 13, scope: !4157)
!4176 = !DILocation(line: 0, scope: !3075, inlinedAt: !4177)
!4177 = distinct !DILocation(line: 1001, column: 3, scope: !4157)
!4178 = !DILocation(line: 147, column: 57, scope: !3075, inlinedAt: !4177)
!4179 = !DILocation(line: 149, column: 21, scope: !3075, inlinedAt: !4177)
!4180 = !DILocation(line: 150, column: 6, scope: !3075, inlinedAt: !4177)
!4181 = !DILocation(line: 1002, column: 10, scope: !4157)
!4182 = !DILocation(line: 1003, column: 1, scope: !4157)
!4183 = !DILocation(line: 1002, column: 3, scope: !4157)
!4184 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !786, file: !786, line: 1006, type: !4185, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4187)
!4185 = !DISubroutineType(types: !4186)
!4186 = !{!107, !77, !115, !115, !115}
!4187 = !{!4188, !4189, !4190, !4191}
!4188 = !DILocalVariable(name: "n", arg: 1, scope: !4184, file: !786, line: 1006, type: !77)
!4189 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4184, file: !786, line: 1006, type: !115)
!4190 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4184, file: !786, line: 1007, type: !115)
!4191 = !DILocalVariable(name: "arg", arg: 4, scope: !4184, file: !786, line: 1007, type: !115)
!4192 = !DILocation(line: 0, scope: !4184)
!4193 = !DILocalVariable(name: "n", arg: 1, scope: !4194, file: !786, line: 1014, type: !77)
!4194 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !786, file: !786, line: 1014, type: !4195, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4197)
!4195 = !DISubroutineType(types: !4196)
!4196 = !{!107, !77, !115, !115, !115, !113}
!4197 = !{!4193, !4198, !4199, !4200, !4201, !4202}
!4198 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4194, file: !786, line: 1014, type: !115)
!4199 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4194, file: !786, line: 1015, type: !115)
!4200 = !DILocalVariable(name: "arg", arg: 4, scope: !4194, file: !786, line: 1016, type: !115)
!4201 = !DILocalVariable(name: "argsize", arg: 5, scope: !4194, file: !786, line: 1016, type: !113)
!4202 = !DILocalVariable(name: "o", scope: !4194, file: !786, line: 1018, type: !825)
!4203 = !DILocation(line: 0, scope: !4194, inlinedAt: !4204)
!4204 = distinct !DILocation(line: 1009, column: 10, scope: !4184)
!4205 = !DILocation(line: 1018, column: 3, scope: !4194, inlinedAt: !4204)
!4206 = !DILocation(line: 1018, column: 26, scope: !4194, inlinedAt: !4204)
!4207 = !DILocation(line: 1018, column: 30, scope: !4194, inlinedAt: !4204)
!4208 = !DILocation(line: 0, scope: !3115, inlinedAt: !4209)
!4209 = distinct !DILocation(line: 1019, column: 3, scope: !4194, inlinedAt: !4204)
!4210 = !DILocation(line: 174, column: 12, scope: !3115, inlinedAt: !4209)
!4211 = !DILocation(line: 175, column: 8, scope: !3128, inlinedAt: !4209)
!4212 = !DILocation(line: 175, column: 19, scope: !3128, inlinedAt: !4209)
!4213 = !DILocation(line: 176, column: 5, scope: !3128, inlinedAt: !4209)
!4214 = !DILocation(line: 177, column: 6, scope: !3115, inlinedAt: !4209)
!4215 = !DILocation(line: 177, column: 17, scope: !3115, inlinedAt: !4209)
!4216 = !DILocation(line: 178, column: 6, scope: !3115, inlinedAt: !4209)
!4217 = !DILocation(line: 178, column: 18, scope: !3115, inlinedAt: !4209)
!4218 = !DILocation(line: 1020, column: 10, scope: !4194, inlinedAt: !4204)
!4219 = !DILocation(line: 1021, column: 1, scope: !4194, inlinedAt: !4204)
!4220 = !DILocation(line: 1009, column: 3, scope: !4184)
!4221 = !DILocation(line: 0, scope: !4194)
!4222 = !DILocation(line: 1018, column: 3, scope: !4194)
!4223 = !DILocation(line: 1018, column: 26, scope: !4194)
!4224 = !DILocation(line: 1018, column: 30, scope: !4194)
!4225 = !DILocation(line: 0, scope: !3115, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 1019, column: 3, scope: !4194)
!4227 = !DILocation(line: 174, column: 12, scope: !3115, inlinedAt: !4226)
!4228 = !DILocation(line: 175, column: 8, scope: !3128, inlinedAt: !4226)
!4229 = !DILocation(line: 175, column: 19, scope: !3128, inlinedAt: !4226)
!4230 = !DILocation(line: 176, column: 5, scope: !3128, inlinedAt: !4226)
!4231 = !DILocation(line: 177, column: 6, scope: !3115, inlinedAt: !4226)
!4232 = !DILocation(line: 177, column: 17, scope: !3115, inlinedAt: !4226)
!4233 = !DILocation(line: 178, column: 6, scope: !3115, inlinedAt: !4226)
!4234 = !DILocation(line: 178, column: 18, scope: !3115, inlinedAt: !4226)
!4235 = !DILocation(line: 1020, column: 10, scope: !4194)
!4236 = !DILocation(line: 1021, column: 1, scope: !4194)
!4237 = !DILocation(line: 1020, column: 3, scope: !4194)
!4238 = distinct !DISubprogram(name: "quotearg_custom", scope: !786, file: !786, line: 1024, type: !4239, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4241)
!4239 = !DISubroutineType(types: !4240)
!4240 = !{!107, !115, !115, !115}
!4241 = !{!4242, !4243, !4244}
!4242 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4238, file: !786, line: 1024, type: !115)
!4243 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4238, file: !786, line: 1024, type: !115)
!4244 = !DILocalVariable(name: "arg", arg: 3, scope: !4238, file: !786, line: 1025, type: !115)
!4245 = !DILocation(line: 0, scope: !4238)
!4246 = !DILocation(line: 0, scope: !4184, inlinedAt: !4247)
!4247 = distinct !DILocation(line: 1027, column: 10, scope: !4238)
!4248 = !DILocation(line: 0, scope: !4194, inlinedAt: !4249)
!4249 = distinct !DILocation(line: 1009, column: 10, scope: !4184, inlinedAt: !4247)
!4250 = !DILocation(line: 1018, column: 3, scope: !4194, inlinedAt: !4249)
!4251 = !DILocation(line: 1018, column: 26, scope: !4194, inlinedAt: !4249)
!4252 = !DILocation(line: 1018, column: 30, scope: !4194, inlinedAt: !4249)
!4253 = !DILocation(line: 0, scope: !3115, inlinedAt: !4254)
!4254 = distinct !DILocation(line: 1019, column: 3, scope: !4194, inlinedAt: !4249)
!4255 = !DILocation(line: 174, column: 12, scope: !3115, inlinedAt: !4254)
!4256 = !DILocation(line: 175, column: 8, scope: !3128, inlinedAt: !4254)
!4257 = !DILocation(line: 175, column: 19, scope: !3128, inlinedAt: !4254)
!4258 = !DILocation(line: 176, column: 5, scope: !3128, inlinedAt: !4254)
!4259 = !DILocation(line: 177, column: 6, scope: !3115, inlinedAt: !4254)
!4260 = !DILocation(line: 177, column: 17, scope: !3115, inlinedAt: !4254)
!4261 = !DILocation(line: 178, column: 6, scope: !3115, inlinedAt: !4254)
!4262 = !DILocation(line: 178, column: 18, scope: !3115, inlinedAt: !4254)
!4263 = !DILocation(line: 1020, column: 10, scope: !4194, inlinedAt: !4249)
!4264 = !DILocation(line: 1021, column: 1, scope: !4194, inlinedAt: !4249)
!4265 = !DILocation(line: 1027, column: 3, scope: !4238)
!4266 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !786, file: !786, line: 1031, type: !4267, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4269)
!4267 = !DISubroutineType(types: !4268)
!4268 = !{!107, !115, !115, !115, !113}
!4269 = !{!4270, !4271, !4272, !4273}
!4270 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4266, file: !786, line: 1031, type: !115)
!4271 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4266, file: !786, line: 1031, type: !115)
!4272 = !DILocalVariable(name: "arg", arg: 3, scope: !4266, file: !786, line: 1032, type: !115)
!4273 = !DILocalVariable(name: "argsize", arg: 4, scope: !4266, file: !786, line: 1032, type: !113)
!4274 = !DILocation(line: 0, scope: !4266)
!4275 = !DILocation(line: 0, scope: !4194, inlinedAt: !4276)
!4276 = distinct !DILocation(line: 1034, column: 10, scope: !4266)
!4277 = !DILocation(line: 1018, column: 3, scope: !4194, inlinedAt: !4276)
!4278 = !DILocation(line: 1018, column: 26, scope: !4194, inlinedAt: !4276)
!4279 = !DILocation(line: 1018, column: 30, scope: !4194, inlinedAt: !4276)
!4280 = !DILocation(line: 0, scope: !3115, inlinedAt: !4281)
!4281 = distinct !DILocation(line: 1019, column: 3, scope: !4194, inlinedAt: !4276)
!4282 = !DILocation(line: 174, column: 12, scope: !3115, inlinedAt: !4281)
!4283 = !DILocation(line: 175, column: 8, scope: !3128, inlinedAt: !4281)
!4284 = !DILocation(line: 175, column: 19, scope: !3128, inlinedAt: !4281)
!4285 = !DILocation(line: 176, column: 5, scope: !3128, inlinedAt: !4281)
!4286 = !DILocation(line: 177, column: 6, scope: !3115, inlinedAt: !4281)
!4287 = !DILocation(line: 177, column: 17, scope: !3115, inlinedAt: !4281)
!4288 = !DILocation(line: 178, column: 6, scope: !3115, inlinedAt: !4281)
!4289 = !DILocation(line: 178, column: 18, scope: !3115, inlinedAt: !4281)
!4290 = !DILocation(line: 1020, column: 10, scope: !4194, inlinedAt: !4276)
!4291 = !DILocation(line: 1021, column: 1, scope: !4194, inlinedAt: !4276)
!4292 = !DILocation(line: 1034, column: 3, scope: !4266)
!4293 = distinct !DISubprogram(name: "quote_n_mem", scope: !786, file: !786, line: 1049, type: !4294, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4296)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!115, !77, !115, !113}
!4296 = !{!4297, !4298, !4299}
!4297 = !DILocalVariable(name: "n", arg: 1, scope: !4293, file: !786, line: 1049, type: !77)
!4298 = !DILocalVariable(name: "arg", arg: 2, scope: !4293, file: !786, line: 1049, type: !115)
!4299 = !DILocalVariable(name: "argsize", arg: 3, scope: !4293, file: !786, line: 1049, type: !113)
!4300 = !DILocation(line: 0, scope: !4293)
!4301 = !DILocation(line: 1051, column: 10, scope: !4293)
!4302 = !DILocation(line: 1051, column: 3, scope: !4293)
!4303 = distinct !DISubprogram(name: "quote_mem", scope: !786, file: !786, line: 1055, type: !4304, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4306)
!4304 = !DISubroutineType(types: !4305)
!4305 = !{!115, !115, !113}
!4306 = !{!4307, !4308}
!4307 = !DILocalVariable(name: "arg", arg: 1, scope: !4303, file: !786, line: 1055, type: !115)
!4308 = !DILocalVariable(name: "argsize", arg: 2, scope: !4303, file: !786, line: 1055, type: !113)
!4309 = !DILocation(line: 0, scope: !4303)
!4310 = !DILocation(line: 0, scope: !4293, inlinedAt: !4311)
!4311 = distinct !DILocation(line: 1057, column: 10, scope: !4303)
!4312 = !DILocation(line: 1051, column: 10, scope: !4293, inlinedAt: !4311)
!4313 = !DILocation(line: 1057, column: 3, scope: !4303)
!4314 = distinct !DISubprogram(name: "quote_n", scope: !786, file: !786, line: 1061, type: !4315, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4317)
!4315 = !DISubroutineType(types: !4316)
!4316 = !{!115, !77, !115}
!4317 = !{!4318, !4319}
!4318 = !DILocalVariable(name: "n", arg: 1, scope: !4314, file: !786, line: 1061, type: !77)
!4319 = !DILocalVariable(name: "arg", arg: 2, scope: !4314, file: !786, line: 1061, type: !115)
!4320 = !DILocation(line: 0, scope: !4314)
!4321 = !DILocation(line: 0, scope: !4293, inlinedAt: !4322)
!4322 = distinct !DILocation(line: 1063, column: 10, scope: !4314)
!4323 = !DILocation(line: 1051, column: 10, scope: !4293, inlinedAt: !4322)
!4324 = !DILocation(line: 1063, column: 3, scope: !4314)
!4325 = distinct !DISubprogram(name: "quote", scope: !786, file: !786, line: 1067, type: !4326, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !810, retainedNodes: !4328)
!4326 = !DISubroutineType(types: !4327)
!4327 = !{!115, !115}
!4328 = !{!4329}
!4329 = !DILocalVariable(name: "arg", arg: 1, scope: !4325, file: !786, line: 1067, type: !115)
!4330 = !DILocation(line: 0, scope: !4325)
!4331 = !DILocation(line: 0, scope: !4314, inlinedAt: !4332)
!4332 = distinct !DILocation(line: 1069, column: 10, scope: !4325)
!4333 = !DILocation(line: 0, scope: !4293, inlinedAt: !4334)
!4334 = distinct !DILocation(line: 1063, column: 10, scope: !4314, inlinedAt: !4332)
!4335 = !DILocation(line: 1051, column: 10, scope: !4293, inlinedAt: !4334)
!4336 = !DILocation(line: 1069, column: 3, scope: !4325)
!4337 = distinct !DISubprogram(name: "version_etc_arn", scope: !886, file: !886, line: 61, type: !4338, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1014, retainedNodes: !4375)
!4338 = !DISubroutineType(types: !4339)
!4339 = !{null, !4340, !115, !115, !115, !4374, !113}
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 7, baseType: !4342)
!4342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !4343)
!4343 = !{!4344, !4345, !4346, !4347, !4348, !4349, !4350, !4351, !4352, !4353, !4354, !4355, !4356, !4357, !4359, !4360, !4361, !4362, !4363, !4364, !4365, !4366, !4367, !4368, !4369, !4370, !4371, !4372, !4373}
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4342, file: !172, line: 51, baseType: !77, size: 32)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4342, file: !172, line: 54, baseType: !107, size: 64, offset: 64)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4342, file: !172, line: 55, baseType: !107, size: 64, offset: 128)
!4347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4342, file: !172, line: 56, baseType: !107, size: 64, offset: 192)
!4348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4342, file: !172, line: 57, baseType: !107, size: 64, offset: 256)
!4349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4342, file: !172, line: 58, baseType: !107, size: 64, offset: 320)
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4342, file: !172, line: 59, baseType: !107, size: 64, offset: 384)
!4351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4342, file: !172, line: 60, baseType: !107, size: 64, offset: 448)
!4352 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4342, file: !172, line: 61, baseType: !107, size: 64, offset: 512)
!4353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4342, file: !172, line: 64, baseType: !107, size: 64, offset: 576)
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4342, file: !172, line: 65, baseType: !107, size: 64, offset: 640)
!4355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4342, file: !172, line: 66, baseType: !107, size: 64, offset: 704)
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4342, file: !172, line: 68, baseType: !187, size: 64, offset: 768)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4342, file: !172, line: 70, baseType: !4358, size: 64, offset: 832)
!4358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4342, size: 64)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4342, file: !172, line: 72, baseType: !77, size: 32, offset: 896)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4342, file: !172, line: 73, baseType: !77, size: 32, offset: 928)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4342, file: !172, line: 74, baseType: !194, size: 64, offset: 960)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4342, file: !172, line: 77, baseType: !112, size: 16, offset: 1024)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4342, file: !172, line: 78, baseType: !198, size: 8, offset: 1040)
!4364 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4342, file: !172, line: 79, baseType: !49, size: 8, offset: 1048)
!4365 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4342, file: !172, line: 81, baseType: !201, size: 64, offset: 1088)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4342, file: !172, line: 89, baseType: !204, size: 64, offset: 1152)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4342, file: !172, line: 91, baseType: !206, size: 64, offset: 1216)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4342, file: !172, line: 92, baseType: !209, size: 64, offset: 1280)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4342, file: !172, line: 93, baseType: !4358, size: 64, offset: 1344)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4342, file: !172, line: 94, baseType: !108, size: 64, offset: 1408)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4342, file: !172, line: 95, baseType: !113, size: 64, offset: 1472)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4342, file: !172, line: 96, baseType: !77, size: 32, offset: 1536)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4342, file: !172, line: 98, baseType: !216, size: 160, offset: 1568)
!4374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!4375 = !{!4376, !4377, !4378, !4379, !4380, !4381}
!4376 = !DILocalVariable(name: "stream", arg: 1, scope: !4337, file: !886, line: 61, type: !4340)
!4377 = !DILocalVariable(name: "command_name", arg: 2, scope: !4337, file: !886, line: 62, type: !115)
!4378 = !DILocalVariable(name: "package", arg: 3, scope: !4337, file: !886, line: 62, type: !115)
!4379 = !DILocalVariable(name: "version", arg: 4, scope: !4337, file: !886, line: 63, type: !115)
!4380 = !DILocalVariable(name: "authors", arg: 5, scope: !4337, file: !886, line: 64, type: !4374)
!4381 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4337, file: !886, line: 64, type: !113)
!4382 = !DILocation(line: 0, scope: !4337)
!4383 = !DILocation(line: 66, column: 7, scope: !4384)
!4384 = distinct !DILexicalBlock(scope: !4337, file: !886, line: 66, column: 7)
!4385 = !DILocation(line: 66, column: 7, scope: !4337)
!4386 = !DILocation(line: 67, column: 5, scope: !4384)
!4387 = !DILocation(line: 69, column: 5, scope: !4384)
!4388 = !DILocation(line: 83, column: 3, scope: !4337)
!4389 = !DILocation(line: 85, column: 3, scope: !4337)
!4390 = !DILocation(line: 88, column: 3, scope: !4337)
!4391 = !DILocation(line: 95, column: 3, scope: !4337)
!4392 = !DILocation(line: 97, column: 3, scope: !4337)
!4393 = !DILocation(line: 105, column: 7, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4337, file: !886, line: 98, column: 5)
!4395 = !DILocation(line: 106, column: 7, scope: !4394)
!4396 = !DILocation(line: 109, column: 7, scope: !4394)
!4397 = !DILocation(line: 110, column: 7, scope: !4394)
!4398 = !DILocation(line: 113, column: 7, scope: !4394)
!4399 = !DILocation(line: 115, column: 7, scope: !4394)
!4400 = !DILocation(line: 120, column: 7, scope: !4394)
!4401 = !DILocation(line: 122, column: 7, scope: !4394)
!4402 = !DILocation(line: 127, column: 7, scope: !4394)
!4403 = !DILocation(line: 129, column: 7, scope: !4394)
!4404 = !DILocation(line: 134, column: 7, scope: !4394)
!4405 = !DILocation(line: 137, column: 7, scope: !4394)
!4406 = !DILocation(line: 142, column: 7, scope: !4394)
!4407 = !DILocation(line: 145, column: 7, scope: !4394)
!4408 = !DILocation(line: 150, column: 7, scope: !4394)
!4409 = !DILocation(line: 154, column: 7, scope: !4394)
!4410 = !DILocation(line: 159, column: 7, scope: !4394)
!4411 = !DILocation(line: 163, column: 7, scope: !4394)
!4412 = !DILocation(line: 170, column: 7, scope: !4394)
!4413 = !DILocation(line: 174, column: 7, scope: !4394)
!4414 = !DILocation(line: 176, column: 1, scope: !4337)
!4415 = distinct !DISubprogram(name: "version_etc_ar", scope: !886, file: !886, line: 183, type: !4416, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1014, retainedNodes: !4418)
!4416 = !DISubroutineType(types: !4417)
!4417 = !{null, !4340, !115, !115, !115, !4374}
!4418 = !{!4419, !4420, !4421, !4422, !4423, !4424}
!4419 = !DILocalVariable(name: "stream", arg: 1, scope: !4415, file: !886, line: 183, type: !4340)
!4420 = !DILocalVariable(name: "command_name", arg: 2, scope: !4415, file: !886, line: 184, type: !115)
!4421 = !DILocalVariable(name: "package", arg: 3, scope: !4415, file: !886, line: 184, type: !115)
!4422 = !DILocalVariable(name: "version", arg: 4, scope: !4415, file: !886, line: 185, type: !115)
!4423 = !DILocalVariable(name: "authors", arg: 5, scope: !4415, file: !886, line: 185, type: !4374)
!4424 = !DILocalVariable(name: "n_authors", scope: !4415, file: !886, line: 187, type: !113)
!4425 = !DILocation(line: 0, scope: !4415)
!4426 = !DILocation(line: 189, column: 8, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4415, file: !886, line: 189, column: 3)
!4428 = !DILocation(line: 189, scope: !4427)
!4429 = !DILocation(line: 189, column: 23, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4427, file: !886, line: 189, column: 3)
!4431 = !DILocation(line: 189, column: 3, scope: !4427)
!4432 = !DILocation(line: 189, column: 52, scope: !4430)
!4433 = distinct !{!4433, !4431, !4434, !1204}
!4434 = !DILocation(line: 190, column: 5, scope: !4427)
!4435 = !DILocation(line: 191, column: 3, scope: !4415)
!4436 = !DILocation(line: 192, column: 1, scope: !4415)
!4437 = distinct !DISubprogram(name: "version_etc_va", scope: !886, file: !886, line: 199, type: !4438, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1014, retainedNodes: !4448)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{null, !4340, !115, !115, !115, !4440}
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4441, size: 64)
!4441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4442)
!4442 = !{!4443, !4445, !4446, !4447}
!4443 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4441, file: !4444, line: 192, baseType: !72, size: 32)
!4444 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4441, file: !4444, line: 192, baseType: !72, size: 32, offset: 32)
!4446 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4441, file: !4444, line: 192, baseType: !108, size: 64, offset: 64)
!4447 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4441, file: !4444, line: 192, baseType: !108, size: 64, offset: 128)
!4448 = !{!4449, !4450, !4451, !4452, !4453, !4454, !4455}
!4449 = !DILocalVariable(name: "stream", arg: 1, scope: !4437, file: !886, line: 199, type: !4340)
!4450 = !DILocalVariable(name: "command_name", arg: 2, scope: !4437, file: !886, line: 200, type: !115)
!4451 = !DILocalVariable(name: "package", arg: 3, scope: !4437, file: !886, line: 200, type: !115)
!4452 = !DILocalVariable(name: "version", arg: 4, scope: !4437, file: !886, line: 201, type: !115)
!4453 = !DILocalVariable(name: "authors", arg: 5, scope: !4437, file: !886, line: 201, type: !4440)
!4454 = !DILocalVariable(name: "n_authors", scope: !4437, file: !886, line: 203, type: !113)
!4455 = !DILocalVariable(name: "authtab", scope: !4437, file: !886, line: 204, type: !4456)
!4456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 640, elements: !55)
!4457 = !DILocation(line: 0, scope: !4437)
!4458 = !DILocation(line: 204, column: 3, scope: !4437)
!4459 = !DILocation(line: 204, column: 15, scope: !4437)
!4460 = !DILocation(line: 208, column: 35, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4462, file: !886, line: 206, column: 3)
!4462 = distinct !DILexicalBlock(scope: !4437, file: !886, line: 206, column: 3)
!4463 = !DILocation(line: 208, column: 33, scope: !4461)
!4464 = !DILocation(line: 208, column: 67, scope: !4461)
!4465 = !DILocation(line: 206, column: 3, scope: !4462)
!4466 = !DILocation(line: 208, column: 14, scope: !4461)
!4467 = !DILocation(line: 0, scope: !4462)
!4468 = !DILocation(line: 211, column: 3, scope: !4437)
!4469 = !DILocation(line: 213, column: 1, scope: !4437)
!4470 = distinct !DISubprogram(name: "version_etc", scope: !886, file: !886, line: 230, type: !4471, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1014, retainedNodes: !4473)
!4471 = !DISubroutineType(types: !4472)
!4472 = !{null, !4340, !115, !115, !115, null}
!4473 = !{!4474, !4475, !4476, !4477, !4478}
!4474 = !DILocalVariable(name: "stream", arg: 1, scope: !4470, file: !886, line: 230, type: !4340)
!4475 = !DILocalVariable(name: "command_name", arg: 2, scope: !4470, file: !886, line: 231, type: !115)
!4476 = !DILocalVariable(name: "package", arg: 3, scope: !4470, file: !886, line: 231, type: !115)
!4477 = !DILocalVariable(name: "version", arg: 4, scope: !4470, file: !886, line: 232, type: !115)
!4478 = !DILocalVariable(name: "authors", scope: !4470, file: !886, line: 234, type: !4479)
!4479 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1152, line: 52, baseType: !4480)
!4480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2582, line: 14, baseType: !4481)
!4481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4444, baseType: !4482)
!4482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4441, size: 192, elements: !50)
!4483 = !DILocation(line: 0, scope: !4470)
!4484 = !DILocation(line: 234, column: 3, scope: !4470)
!4485 = !DILocation(line: 234, column: 11, scope: !4470)
!4486 = !DILocation(line: 235, column: 3, scope: !4470)
!4487 = !DILocation(line: 236, column: 3, scope: !4470)
!4488 = !DILocation(line: 237, column: 3, scope: !4470)
!4489 = !DILocation(line: 238, column: 1, scope: !4470)
!4490 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !886, file: !886, line: 241, type: !356, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1014, retainedNodes: !1095)
!4491 = !DILocation(line: 243, column: 3, scope: !4490)
!4492 = !DILocation(line: 248, column: 3, scope: !4490)
!4493 = !DILocation(line: 254, column: 3, scope: !4490)
!4494 = !DILocation(line: 259, column: 3, scope: !4490)
!4495 = !DILocation(line: 261, column: 1, scope: !4490)
!4496 = distinct !DISubprogram(name: "xnrealloc", scope: !4497, file: !4497, line: 147, type: !4498, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4500)
!4497 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4498 = !DISubroutineType(types: !4499)
!4499 = !{!108, !108, !113, !113}
!4500 = !{!4501, !4502, !4503}
!4501 = !DILocalVariable(name: "p", arg: 1, scope: !4496, file: !4497, line: 147, type: !108)
!4502 = !DILocalVariable(name: "n", arg: 2, scope: !4496, file: !4497, line: 147, type: !113)
!4503 = !DILocalVariable(name: "s", arg: 3, scope: !4496, file: !4497, line: 147, type: !113)
!4504 = !DILocation(line: 0, scope: !4496)
!4505 = !DILocalVariable(name: "p", arg: 1, scope: !4506, file: !1021, line: 83, type: !108)
!4506 = distinct !DISubprogram(name: "xreallocarray", scope: !1021, file: !1021, line: 83, type: !4498, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4507)
!4507 = !{!4505, !4508, !4509}
!4508 = !DILocalVariable(name: "n", arg: 2, scope: !4506, file: !1021, line: 83, type: !113)
!4509 = !DILocalVariable(name: "s", arg: 3, scope: !4506, file: !1021, line: 83, type: !113)
!4510 = !DILocation(line: 0, scope: !4506, inlinedAt: !4511)
!4511 = distinct !DILocation(line: 149, column: 10, scope: !4496)
!4512 = !DILocation(line: 85, column: 25, scope: !4506, inlinedAt: !4511)
!4513 = !DILocalVariable(name: "p", arg: 1, scope: !4514, file: !1021, line: 37, type: !108)
!4514 = distinct !DISubprogram(name: "check_nonnull", scope: !1021, file: !1021, line: 37, type: !4515, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4517)
!4515 = !DISubroutineType(types: !4516)
!4516 = !{!108, !108}
!4517 = !{!4513}
!4518 = !DILocation(line: 0, scope: !4514, inlinedAt: !4519)
!4519 = distinct !DILocation(line: 85, column: 10, scope: !4506, inlinedAt: !4511)
!4520 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4519)
!4521 = distinct !DILexicalBlock(scope: !4514, file: !1021, line: 39, column: 7)
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
!4533 = distinct !DISubprogram(name: "xmalloc", scope: !1021, file: !1021, line: 47, type: !4534, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4536)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!108, !113}
!4536 = !{!4537}
!4537 = !DILocalVariable(name: "s", arg: 1, scope: !4533, file: !1021, line: 47, type: !113)
!4538 = !DILocation(line: 0, scope: !4533)
!4539 = !DILocation(line: 49, column: 25, scope: !4533)
!4540 = !DILocation(line: 0, scope: !4514, inlinedAt: !4541)
!4541 = distinct !DILocation(line: 49, column: 10, scope: !4533)
!4542 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4541)
!4543 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4541)
!4544 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4541)
!4545 = !DILocation(line: 49, column: 3, scope: !4533)
!4546 = !DISubprogram(name: "malloc", scope: !1282, file: !1282, line: 540, type: !4534, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!4547 = distinct !DISubprogram(name: "ximalloc", scope: !1021, file: !1021, line: 53, type: !4548, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4550)
!4548 = !DISubroutineType(types: !4549)
!4549 = !{!108, !369}
!4550 = !{!4551}
!4551 = !DILocalVariable(name: "s", arg: 1, scope: !4547, file: !1021, line: 53, type: !369)
!4552 = !DILocation(line: 0, scope: !4547)
!4553 = !DILocalVariable(name: "s", arg: 1, scope: !4554, file: !4555, line: 55, type: !369)
!4554 = distinct !DISubprogram(name: "imalloc", scope: !4555, file: !4555, line: 55, type: !4548, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4556)
!4555 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
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
!4566 = distinct !DISubprogram(name: "xcharalloc", scope: !1021, file: !1021, line: 59, type: !4567, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4569)
!4567 = !DISubroutineType(types: !4568)
!4568 = !{!107, !113}
!4569 = !{!4570}
!4570 = !DILocalVariable(name: "n", arg: 1, scope: !4566, file: !1021, line: 59, type: !113)
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
!4581 = distinct !DISubprogram(name: "xrealloc", scope: !1021, file: !1021, line: 68, type: !4582, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4584)
!4582 = !DISubroutineType(types: !4583)
!4583 = !{!108, !108, !113}
!4584 = !{!4585, !4586}
!4585 = !DILocalVariable(name: "p", arg: 1, scope: !4581, file: !1021, line: 68, type: !108)
!4586 = !DILocalVariable(name: "s", arg: 2, scope: !4581, file: !1021, line: 68, type: !113)
!4587 = !DILocation(line: 0, scope: !4581)
!4588 = !DILocalVariable(name: "ptr", arg: 1, scope: !4589, file: !4590, line: 2057, type: !108)
!4589 = distinct !DISubprogram(name: "rpl_realloc", scope: !4590, file: !4590, line: 2057, type: !4582, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4591)
!4590 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4591 = !{!4588, !4592}
!4592 = !DILocalVariable(name: "size", arg: 2, scope: !4589, file: !4590, line: 2057, type: !113)
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
!4603 = !DISubprogram(name: "realloc", scope: !1282, file: !1282, line: 551, type: !4582, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!4604 = distinct !DISubprogram(name: "xirealloc", scope: !1021, file: !1021, line: 74, type: !4605, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4607)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!108, !108, !369}
!4607 = !{!4608, !4609}
!4608 = !DILocalVariable(name: "p", arg: 1, scope: !4604, file: !1021, line: 74, type: !108)
!4609 = !DILocalVariable(name: "s", arg: 2, scope: !4604, file: !1021, line: 74, type: !369)
!4610 = !DILocation(line: 0, scope: !4604)
!4611 = !DILocalVariable(name: "p", arg: 1, scope: !4612, file: !4555, line: 66, type: !108)
!4612 = distinct !DISubprogram(name: "irealloc", scope: !4555, file: !4555, line: 66, type: !4605, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4613)
!4613 = !{!4611, !4614}
!4614 = !DILocalVariable(name: "s", arg: 2, scope: !4612, file: !4555, line: 66, type: !369)
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
!4627 = distinct !DISubprogram(name: "xireallocarray", scope: !1021, file: !1021, line: 89, type: !4628, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4630)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!108, !108, !369, !369}
!4630 = !{!4631, !4632, !4633}
!4631 = !DILocalVariable(name: "p", arg: 1, scope: !4627, file: !1021, line: 89, type: !108)
!4632 = !DILocalVariable(name: "n", arg: 2, scope: !4627, file: !1021, line: 89, type: !369)
!4633 = !DILocalVariable(name: "s", arg: 3, scope: !4627, file: !1021, line: 89, type: !369)
!4634 = !DILocation(line: 0, scope: !4627)
!4635 = !DILocalVariable(name: "p", arg: 1, scope: !4636, file: !4555, line: 98, type: !108)
!4636 = distinct !DISubprogram(name: "ireallocarray", scope: !4555, file: !4555, line: 98, type: !4628, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4637)
!4637 = !{!4635, !4638, !4639}
!4638 = !DILocalVariable(name: "n", arg: 2, scope: !4636, file: !4555, line: 98, type: !369)
!4639 = !DILocalVariable(name: "s", arg: 3, scope: !4636, file: !4555, line: 98, type: !369)
!4640 = !DILocation(line: 0, scope: !4636, inlinedAt: !4641)
!4641 = distinct !DILocation(line: 91, column: 25, scope: !4627)
!4642 = !DILocation(line: 101, column: 13, scope: !4636, inlinedAt: !4641)
!4643 = !DILocation(line: 0, scope: !4514, inlinedAt: !4644)
!4644 = distinct !DILocation(line: 91, column: 10, scope: !4627)
!4645 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4644)
!4646 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4644)
!4647 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4644)
!4648 = !DILocation(line: 91, column: 3, scope: !4627)
!4649 = distinct !DISubprogram(name: "xnmalloc", scope: !1021, file: !1021, line: 98, type: !4650, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4652)
!4650 = !DISubroutineType(types: !4651)
!4651 = !{!108, !113, !113}
!4652 = !{!4653, !4654}
!4653 = !DILocalVariable(name: "n", arg: 1, scope: !4649, file: !1021, line: 98, type: !113)
!4654 = !DILocalVariable(name: "s", arg: 2, scope: !4649, file: !1021, line: 98, type: !113)
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
!4665 = distinct !DISubprogram(name: "xinmalloc", scope: !1021, file: !1021, line: 104, type: !4666, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4668)
!4666 = !DISubroutineType(types: !4667)
!4667 = !{!108, !369, !369}
!4668 = !{!4669, !4670}
!4669 = !DILocalVariable(name: "n", arg: 1, scope: !4665, file: !1021, line: 104, type: !369)
!4670 = !DILocalVariable(name: "s", arg: 2, scope: !4665, file: !1021, line: 104, type: !369)
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
!4683 = distinct !DISubprogram(name: "x2realloc", scope: !1021, file: !1021, line: 116, type: !4684, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4686)
!4684 = !DISubroutineType(types: !4685)
!4685 = !{!108, !108, !1027}
!4686 = !{!4687, !4688}
!4687 = !DILocalVariable(name: "p", arg: 1, scope: !4683, file: !1021, line: 116, type: !108)
!4688 = !DILocalVariable(name: "ps", arg: 2, scope: !4683, file: !1021, line: 116, type: !1027)
!4689 = !DILocation(line: 0, scope: !4683)
!4690 = !DILocation(line: 0, scope: !1024, inlinedAt: !4691)
!4691 = distinct !DILocation(line: 118, column: 10, scope: !4683)
!4692 = !DILocation(line: 178, column: 14, scope: !1024, inlinedAt: !4691)
!4693 = !DILocation(line: 180, column: 9, scope: !4694, inlinedAt: !4691)
!4694 = distinct !DILexicalBlock(scope: !1024, file: !1021, line: 180, column: 7)
!4695 = !DILocation(line: 180, column: 7, scope: !1024, inlinedAt: !4691)
!4696 = !DILocation(line: 182, column: 13, scope: !4697, inlinedAt: !4691)
!4697 = distinct !DILexicalBlock(scope: !4698, file: !1021, line: 182, column: 11)
!4698 = distinct !DILexicalBlock(scope: !4694, file: !1021, line: 181, column: 5)
!4699 = !DILocation(line: 182, column: 11, scope: !4698, inlinedAt: !4691)
!4700 = !DILocation(line: 197, column: 11, scope: !4701, inlinedAt: !4691)
!4701 = distinct !DILexicalBlock(scope: !4702, file: !1021, line: 197, column: 11)
!4702 = distinct !DILexicalBlock(scope: !4694, file: !1021, line: 195, column: 5)
!4703 = !DILocation(line: 197, column: 11, scope: !4702, inlinedAt: !4691)
!4704 = !DILocation(line: 198, column: 9, scope: !4701, inlinedAt: !4691)
!4705 = !DILocation(line: 0, scope: !4506, inlinedAt: !4706)
!4706 = distinct !DILocation(line: 201, column: 7, scope: !1024, inlinedAt: !4691)
!4707 = !DILocation(line: 85, column: 25, scope: !4506, inlinedAt: !4706)
!4708 = !DILocation(line: 0, scope: !4514, inlinedAt: !4709)
!4709 = distinct !DILocation(line: 85, column: 10, scope: !4506, inlinedAt: !4706)
!4710 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4709)
!4711 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4709)
!4712 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4709)
!4713 = !DILocation(line: 202, column: 7, scope: !1024, inlinedAt: !4691)
!4714 = !DILocation(line: 118, column: 3, scope: !4683)
!4715 = !DILocation(line: 0, scope: !1024)
!4716 = !DILocation(line: 178, column: 14, scope: !1024)
!4717 = !DILocation(line: 180, column: 9, scope: !4694)
!4718 = !DILocation(line: 180, column: 7, scope: !1024)
!4719 = !DILocation(line: 182, column: 13, scope: !4697)
!4720 = !DILocation(line: 182, column: 11, scope: !4698)
!4721 = !DILocation(line: 190, column: 30, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4697, file: !1021, line: 183, column: 9)
!4723 = !DILocation(line: 191, column: 16, scope: !4722)
!4724 = !DILocation(line: 191, column: 13, scope: !4722)
!4725 = !DILocation(line: 192, column: 9, scope: !4722)
!4726 = !DILocation(line: 197, column: 11, scope: !4701)
!4727 = !DILocation(line: 197, column: 11, scope: !4702)
!4728 = !DILocation(line: 198, column: 9, scope: !4701)
!4729 = !DILocation(line: 0, scope: !4506, inlinedAt: !4730)
!4730 = distinct !DILocation(line: 201, column: 7, scope: !1024)
!4731 = !DILocation(line: 85, column: 25, scope: !4506, inlinedAt: !4730)
!4732 = !DILocation(line: 0, scope: !4514, inlinedAt: !4733)
!4733 = distinct !DILocation(line: 85, column: 10, scope: !4506, inlinedAt: !4730)
!4734 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4733)
!4735 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4733)
!4736 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4733)
!4737 = !DILocation(line: 202, column: 7, scope: !1024)
!4738 = !DILocation(line: 203, column: 3, scope: !1024)
!4739 = !DILocation(line: 0, scope: !1036)
!4740 = !DILocation(line: 230, column: 14, scope: !1036)
!4741 = !DILocation(line: 238, column: 7, scope: !4742)
!4742 = distinct !DILexicalBlock(scope: !1036, file: !1021, line: 238, column: 7)
!4743 = !DILocation(line: 238, column: 7, scope: !1036)
!4744 = !DILocation(line: 240, column: 9, scope: !4745)
!4745 = distinct !DILexicalBlock(scope: !1036, file: !1021, line: 240, column: 7)
!4746 = !DILocation(line: 240, column: 18, scope: !4745)
!4747 = !DILocation(line: 253, column: 8, scope: !1036)
!4748 = !DILocation(line: 258, column: 27, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4750, file: !1021, line: 257, column: 5)
!4750 = distinct !DILexicalBlock(scope: !1036, file: !1021, line: 256, column: 7)
!4751 = !DILocation(line: 259, column: 50, scope: !4749)
!4752 = !DILocation(line: 259, column: 32, scope: !4749)
!4753 = !DILocation(line: 260, column: 5, scope: !4749)
!4754 = !DILocation(line: 262, column: 9, scope: !4755)
!4755 = distinct !DILexicalBlock(scope: !1036, file: !1021, line: 262, column: 7)
!4756 = !DILocation(line: 262, column: 7, scope: !1036)
!4757 = !DILocation(line: 263, column: 9, scope: !4755)
!4758 = !DILocation(line: 263, column: 5, scope: !4755)
!4759 = !DILocation(line: 264, column: 9, scope: !4760)
!4760 = distinct !DILexicalBlock(scope: !1036, file: !1021, line: 264, column: 7)
!4761 = !DILocation(line: 264, column: 14, scope: !4760)
!4762 = !DILocation(line: 265, column: 7, scope: !4760)
!4763 = !DILocation(line: 265, column: 11, scope: !4760)
!4764 = !DILocation(line: 266, column: 11, scope: !4760)
!4765 = !DILocation(line: 267, column: 14, scope: !4760)
!4766 = !DILocation(line: 264, column: 7, scope: !1036)
!4767 = !DILocation(line: 268, column: 5, scope: !4760)
!4768 = !DILocation(line: 0, scope: !4581, inlinedAt: !4769)
!4769 = distinct !DILocation(line: 269, column: 8, scope: !1036)
!4770 = !DILocation(line: 0, scope: !4589, inlinedAt: !4771)
!4771 = distinct !DILocation(line: 70, column: 25, scope: !4581, inlinedAt: !4769)
!4772 = !DILocation(line: 2059, column: 24, scope: !4589, inlinedAt: !4771)
!4773 = !DILocation(line: 2059, column: 10, scope: !4589, inlinedAt: !4771)
!4774 = !DILocation(line: 0, scope: !4514, inlinedAt: !4775)
!4775 = distinct !DILocation(line: 70, column: 10, scope: !4581, inlinedAt: !4769)
!4776 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4775)
!4777 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4775)
!4778 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4775)
!4779 = !DILocation(line: 270, column: 7, scope: !1036)
!4780 = !DILocation(line: 271, column: 3, scope: !1036)
!4781 = distinct !DISubprogram(name: "xzalloc", scope: !1021, file: !1021, line: 279, type: !4534, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4782)
!4782 = !{!4783}
!4783 = !DILocalVariable(name: "s", arg: 1, scope: !4781, file: !1021, line: 279, type: !113)
!4784 = !DILocation(line: 0, scope: !4781)
!4785 = !DILocalVariable(name: "n", arg: 1, scope: !4786, file: !1021, line: 294, type: !113)
!4786 = distinct !DISubprogram(name: "xcalloc", scope: !1021, file: !1021, line: 294, type: !4650, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4787)
!4787 = !{!4785, !4788}
!4788 = !DILocalVariable(name: "s", arg: 2, scope: !4786, file: !1021, line: 294, type: !113)
!4789 = !DILocation(line: 0, scope: !4786, inlinedAt: !4790)
!4790 = distinct !DILocation(line: 281, column: 10, scope: !4781)
!4791 = !DILocation(line: 296, column: 25, scope: !4786, inlinedAt: !4790)
!4792 = !DILocation(line: 0, scope: !4514, inlinedAt: !4793)
!4793 = distinct !DILocation(line: 296, column: 10, scope: !4786, inlinedAt: !4790)
!4794 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4793)
!4795 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4793)
!4796 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4793)
!4797 = !DILocation(line: 281, column: 3, scope: !4781)
!4798 = !DISubprogram(name: "calloc", scope: !1282, file: !1282, line: 543, type: !4650, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!4799 = !DILocation(line: 0, scope: !4786)
!4800 = !DILocation(line: 296, column: 25, scope: !4786)
!4801 = !DILocation(line: 0, scope: !4514, inlinedAt: !4802)
!4802 = distinct !DILocation(line: 296, column: 10, scope: !4786)
!4803 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4802)
!4804 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4802)
!4805 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4802)
!4806 = !DILocation(line: 296, column: 3, scope: !4786)
!4807 = distinct !DISubprogram(name: "xizalloc", scope: !1021, file: !1021, line: 285, type: !4548, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4808)
!4808 = !{!4809}
!4809 = !DILocalVariable(name: "s", arg: 1, scope: !4807, file: !1021, line: 285, type: !369)
!4810 = !DILocation(line: 0, scope: !4807)
!4811 = !DILocalVariable(name: "n", arg: 1, scope: !4812, file: !1021, line: 300, type: !369)
!4812 = distinct !DISubprogram(name: "xicalloc", scope: !1021, file: !1021, line: 300, type: !4666, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4813)
!4813 = !{!4811, !4814}
!4814 = !DILocalVariable(name: "s", arg: 2, scope: !4812, file: !1021, line: 300, type: !369)
!4815 = !DILocation(line: 0, scope: !4812, inlinedAt: !4816)
!4816 = distinct !DILocation(line: 287, column: 10, scope: !4807)
!4817 = !DILocalVariable(name: "n", arg: 1, scope: !4818, file: !4555, line: 77, type: !369)
!4818 = distinct !DISubprogram(name: "icalloc", scope: !4555, file: !4555, line: 77, type: !4666, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4819)
!4819 = !{!4817, !4820}
!4820 = !DILocalVariable(name: "s", arg: 2, scope: !4818, file: !4555, line: 77, type: !369)
!4821 = !DILocation(line: 0, scope: !4818, inlinedAt: !4822)
!4822 = distinct !DILocation(line: 302, column: 25, scope: !4812, inlinedAt: !4816)
!4823 = !DILocation(line: 91, column: 10, scope: !4818, inlinedAt: !4822)
!4824 = !DILocation(line: 0, scope: !4514, inlinedAt: !4825)
!4825 = distinct !DILocation(line: 302, column: 10, scope: !4812, inlinedAt: !4816)
!4826 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4825)
!4827 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4825)
!4828 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4825)
!4829 = !DILocation(line: 287, column: 3, scope: !4807)
!4830 = !DILocation(line: 0, scope: !4812)
!4831 = !DILocation(line: 0, scope: !4818, inlinedAt: !4832)
!4832 = distinct !DILocation(line: 302, column: 25, scope: !4812)
!4833 = !DILocation(line: 91, column: 10, scope: !4818, inlinedAt: !4832)
!4834 = !DILocation(line: 0, scope: !4514, inlinedAt: !4835)
!4835 = distinct !DILocation(line: 302, column: 10, scope: !4812)
!4836 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4835)
!4837 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4835)
!4838 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4835)
!4839 = !DILocation(line: 302, column: 3, scope: !4812)
!4840 = distinct !DISubprogram(name: "xmemdup", scope: !1021, file: !1021, line: 310, type: !4841, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4843)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!108, !1306, !113}
!4843 = !{!4844, !4845}
!4844 = !DILocalVariable(name: "p", arg: 1, scope: !4840, file: !1021, line: 310, type: !1306)
!4845 = !DILocalVariable(name: "s", arg: 2, scope: !4840, file: !1021, line: 310, type: !113)
!4846 = !DILocation(line: 0, scope: !4840)
!4847 = !DILocation(line: 0, scope: !4533, inlinedAt: !4848)
!4848 = distinct !DILocation(line: 312, column: 18, scope: !4840)
!4849 = !DILocation(line: 49, column: 25, scope: !4533, inlinedAt: !4848)
!4850 = !DILocation(line: 0, scope: !4514, inlinedAt: !4851)
!4851 = distinct !DILocation(line: 49, column: 10, scope: !4533, inlinedAt: !4848)
!4852 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4851)
!4853 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4851)
!4854 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4851)
!4855 = !DILocalVariable(name: "__dest", arg: 1, scope: !4856, file: !1430, line: 26, type: !1689)
!4856 = distinct !DISubprogram(name: "memcpy", scope: !1430, file: !1430, line: 26, type: !1687, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4857)
!4857 = !{!4855, !4858, !4859}
!4858 = !DILocalVariable(name: "__src", arg: 2, scope: !4856, file: !1430, line: 26, type: !1305)
!4859 = !DILocalVariable(name: "__len", arg: 3, scope: !4856, file: !1430, line: 26, type: !113)
!4860 = !DILocation(line: 0, scope: !4856, inlinedAt: !4861)
!4861 = distinct !DILocation(line: 312, column: 10, scope: !4840)
!4862 = !DILocation(line: 29, column: 10, scope: !4856, inlinedAt: !4861)
!4863 = !DILocation(line: 312, column: 3, scope: !4840)
!4864 = distinct !DISubprogram(name: "ximemdup", scope: !1021, file: !1021, line: 316, type: !4865, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4867)
!4865 = !DISubroutineType(types: !4866)
!4866 = !{!108, !1306, !369}
!4867 = !{!4868, !4869}
!4868 = !DILocalVariable(name: "p", arg: 1, scope: !4864, file: !1021, line: 316, type: !1306)
!4869 = !DILocalVariable(name: "s", arg: 2, scope: !4864, file: !1021, line: 316, type: !369)
!4870 = !DILocation(line: 0, scope: !4864)
!4871 = !DILocation(line: 0, scope: !4547, inlinedAt: !4872)
!4872 = distinct !DILocation(line: 318, column: 18, scope: !4864)
!4873 = !DILocation(line: 0, scope: !4554, inlinedAt: !4874)
!4874 = distinct !DILocation(line: 55, column: 25, scope: !4547, inlinedAt: !4872)
!4875 = !DILocation(line: 57, column: 26, scope: !4554, inlinedAt: !4874)
!4876 = !DILocation(line: 0, scope: !4514, inlinedAt: !4877)
!4877 = distinct !DILocation(line: 55, column: 10, scope: !4547, inlinedAt: !4872)
!4878 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4877)
!4879 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4877)
!4880 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4877)
!4881 = !DILocation(line: 0, scope: !4856, inlinedAt: !4882)
!4882 = distinct !DILocation(line: 318, column: 10, scope: !4864)
!4883 = !DILocation(line: 29, column: 10, scope: !4856, inlinedAt: !4882)
!4884 = !DILocation(line: 318, column: 3, scope: !4864)
!4885 = distinct !DISubprogram(name: "ximemdup0", scope: !1021, file: !1021, line: 325, type: !4886, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4888)
!4886 = !DISubroutineType(types: !4887)
!4887 = !{!107, !1306, !369}
!4888 = !{!4889, !4890, !4891}
!4889 = !DILocalVariable(name: "p", arg: 1, scope: !4885, file: !1021, line: 325, type: !1306)
!4890 = !DILocalVariable(name: "s", arg: 2, scope: !4885, file: !1021, line: 325, type: !369)
!4891 = !DILocalVariable(name: "result", scope: !4885, file: !1021, line: 327, type: !107)
!4892 = !DILocation(line: 0, scope: !4885)
!4893 = !DILocation(line: 327, column: 30, scope: !4885)
!4894 = !DILocation(line: 0, scope: !4547, inlinedAt: !4895)
!4895 = distinct !DILocation(line: 327, column: 18, scope: !4885)
!4896 = !DILocation(line: 0, scope: !4554, inlinedAt: !4897)
!4897 = distinct !DILocation(line: 55, column: 25, scope: !4547, inlinedAt: !4895)
!4898 = !DILocation(line: 57, column: 26, scope: !4554, inlinedAt: !4897)
!4899 = !DILocation(line: 0, scope: !4514, inlinedAt: !4900)
!4900 = distinct !DILocation(line: 55, column: 10, scope: !4547, inlinedAt: !4895)
!4901 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4900)
!4902 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4900)
!4903 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4900)
!4904 = !DILocation(line: 328, column: 3, scope: !4885)
!4905 = !DILocation(line: 328, column: 13, scope: !4885)
!4906 = !DILocation(line: 0, scope: !4856, inlinedAt: !4907)
!4907 = distinct !DILocation(line: 329, column: 10, scope: !4885)
!4908 = !DILocation(line: 29, column: 10, scope: !4856, inlinedAt: !4907)
!4909 = !DILocation(line: 329, column: 3, scope: !4885)
!4910 = distinct !DISubprogram(name: "xstrdup", scope: !1021, file: !1021, line: 335, type: !1284, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1020, retainedNodes: !4911)
!4911 = !{!4912}
!4912 = !DILocalVariable(name: "string", arg: 1, scope: !4910, file: !1021, line: 335, type: !115)
!4913 = !DILocation(line: 0, scope: !4910)
!4914 = !DILocation(line: 337, column: 27, scope: !4910)
!4915 = !DILocation(line: 337, column: 43, scope: !4910)
!4916 = !DILocation(line: 0, scope: !4840, inlinedAt: !4917)
!4917 = distinct !DILocation(line: 337, column: 10, scope: !4910)
!4918 = !DILocation(line: 0, scope: !4533, inlinedAt: !4919)
!4919 = distinct !DILocation(line: 312, column: 18, scope: !4840, inlinedAt: !4917)
!4920 = !DILocation(line: 49, column: 25, scope: !4533, inlinedAt: !4919)
!4921 = !DILocation(line: 0, scope: !4514, inlinedAt: !4922)
!4922 = distinct !DILocation(line: 49, column: 10, scope: !4533, inlinedAt: !4919)
!4923 = !DILocation(line: 39, column: 8, scope: !4521, inlinedAt: !4922)
!4924 = !DILocation(line: 39, column: 7, scope: !4514, inlinedAt: !4922)
!4925 = !DILocation(line: 40, column: 5, scope: !4521, inlinedAt: !4922)
!4926 = !DILocation(line: 0, scope: !4856, inlinedAt: !4927)
!4927 = distinct !DILocation(line: 312, column: 10, scope: !4840, inlinedAt: !4917)
!4928 = !DILocation(line: 29, column: 10, scope: !4856, inlinedAt: !4927)
!4929 = !DILocation(line: 337, column: 3, scope: !4910)
!4930 = distinct !DISubprogram(name: "xalloc_die", scope: !974, file: !974, line: 32, type: !356, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1051, retainedNodes: !4931)
!4931 = !{!4932}
!4932 = !DILocalVariable(name: "__errstatus", scope: !4933, file: !974, line: 34, type: !4934)
!4933 = distinct !DILexicalBlock(scope: !4930, file: !974, line: 34, column: 3)
!4934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!4935 = !DILocation(line: 34, column: 3, scope: !4933)
!4936 = !DILocation(line: 0, scope: !4933)
!4937 = !DILocation(line: 40, column: 3, scope: !4930)
!4938 = distinct !DISubprogram(name: "rpl_fopen", scope: !1054, file: !1054, line: 46, type: !4939, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1053, retainedNodes: !4975)
!4939 = !DISubroutineType(types: !4940)
!4940 = !{!4941, !115, !115}
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 7, baseType: !4943)
!4943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !4944)
!4944 = !{!4945, !4946, !4947, !4948, !4949, !4950, !4951, !4952, !4953, !4954, !4955, !4956, !4957, !4958, !4960, !4961, !4962, !4963, !4964, !4965, !4966, !4967, !4968, !4969, !4970, !4971, !4972, !4973, !4974}
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4943, file: !172, line: 51, baseType: !77, size: 32)
!4946 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4943, file: !172, line: 54, baseType: !107, size: 64, offset: 64)
!4947 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4943, file: !172, line: 55, baseType: !107, size: 64, offset: 128)
!4948 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4943, file: !172, line: 56, baseType: !107, size: 64, offset: 192)
!4949 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4943, file: !172, line: 57, baseType: !107, size: 64, offset: 256)
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4943, file: !172, line: 58, baseType: !107, size: 64, offset: 320)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4943, file: !172, line: 59, baseType: !107, size: 64, offset: 384)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4943, file: !172, line: 60, baseType: !107, size: 64, offset: 448)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4943, file: !172, line: 61, baseType: !107, size: 64, offset: 512)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4943, file: !172, line: 64, baseType: !107, size: 64, offset: 576)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4943, file: !172, line: 65, baseType: !107, size: 64, offset: 640)
!4956 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4943, file: !172, line: 66, baseType: !107, size: 64, offset: 704)
!4957 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4943, file: !172, line: 68, baseType: !187, size: 64, offset: 768)
!4958 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4943, file: !172, line: 70, baseType: !4959, size: 64, offset: 832)
!4959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4943, size: 64)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4943, file: !172, line: 72, baseType: !77, size: 32, offset: 896)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4943, file: !172, line: 73, baseType: !77, size: 32, offset: 928)
!4962 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4943, file: !172, line: 74, baseType: !194, size: 64, offset: 960)
!4963 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4943, file: !172, line: 77, baseType: !112, size: 16, offset: 1024)
!4964 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4943, file: !172, line: 78, baseType: !198, size: 8, offset: 1040)
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4943, file: !172, line: 79, baseType: !49, size: 8, offset: 1048)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4943, file: !172, line: 81, baseType: !201, size: 64, offset: 1088)
!4967 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4943, file: !172, line: 89, baseType: !204, size: 64, offset: 1152)
!4968 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4943, file: !172, line: 91, baseType: !206, size: 64, offset: 1216)
!4969 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4943, file: !172, line: 92, baseType: !209, size: 64, offset: 1280)
!4970 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4943, file: !172, line: 93, baseType: !4959, size: 64, offset: 1344)
!4971 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4943, file: !172, line: 94, baseType: !108, size: 64, offset: 1408)
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4943, file: !172, line: 95, baseType: !113, size: 64, offset: 1472)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4943, file: !172, line: 96, baseType: !77, size: 32, offset: 1536)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4943, file: !172, line: 98, baseType: !216, size: 160, offset: 1568)
!4975 = !{!4976, !4977, !4978, !4979, !4980, !4981, !4985, !4987, !4988, !4993, !4996, !4997}
!4976 = !DILocalVariable(name: "filename", arg: 1, scope: !4938, file: !1054, line: 46, type: !115)
!4977 = !DILocalVariable(name: "mode", arg: 2, scope: !4938, file: !1054, line: 46, type: !115)
!4978 = !DILocalVariable(name: "open_direction", scope: !4938, file: !1054, line: 54, type: !77)
!4979 = !DILocalVariable(name: "open_flags", scope: !4938, file: !1054, line: 55, type: !77)
!4980 = !DILocalVariable(name: "open_flags_gnu", scope: !4938, file: !1054, line: 57, type: !109)
!4981 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4938, file: !1054, line: 59, type: !4982)
!4982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4983)
!4983 = !{!4984}
!4984 = !DISubrange(count: 81)
!4985 = !DILocalVariable(name: "p", scope: !4986, file: !1054, line: 62, type: !115)
!4986 = distinct !DILexicalBlock(scope: !4938, file: !1054, line: 61, column: 3)
!4987 = !DILocalVariable(name: "q", scope: !4986, file: !1054, line: 64, type: !107)
!4988 = !DILocalVariable(name: "len", scope: !4989, file: !1054, line: 128, type: !113)
!4989 = distinct !DILexicalBlock(scope: !4990, file: !1054, line: 127, column: 9)
!4990 = distinct !DILexicalBlock(scope: !4991, file: !1054, line: 68, column: 7)
!4991 = distinct !DILexicalBlock(scope: !4992, file: !1054, line: 67, column: 5)
!4992 = distinct !DILexicalBlock(scope: !4986, file: !1054, line: 67, column: 5)
!4993 = !DILocalVariable(name: "fd", scope: !4994, file: !1054, line: 199, type: !77)
!4994 = distinct !DILexicalBlock(scope: !4995, file: !1054, line: 198, column: 5)
!4995 = distinct !DILexicalBlock(scope: !4938, file: !1054, line: 197, column: 7)
!4996 = !DILocalVariable(name: "fp", scope: !4994, file: !1054, line: 204, type: !4941)
!4997 = !DILocalVariable(name: "saved_errno", scope: !4998, file: !1054, line: 207, type: !77)
!4998 = distinct !DILexicalBlock(scope: !4999, file: !1054, line: 206, column: 9)
!4999 = distinct !DILexicalBlock(scope: !4994, file: !1054, line: 205, column: 11)
!5000 = !DILocation(line: 0, scope: !4938)
!5001 = !DILocation(line: 59, column: 3, scope: !4938)
!5002 = !DILocation(line: 59, column: 8, scope: !4938)
!5003 = !DILocation(line: 0, scope: !4986)
!5004 = !DILocation(line: 67, column: 12, scope: !4991)
!5005 = !DILocation(line: 67, column: 15, scope: !4991)
!5006 = !DILocation(line: 67, column: 5, scope: !4992)
!5007 = !DILocation(line: 138, column: 8, scope: !4986)
!5008 = !DILocation(line: 197, column: 7, scope: !4938)
!5009 = !DILocation(line: 69, column: 9, scope: !4990)
!5010 = !DILocation(line: 74, column: 19, scope: !5011)
!5011 = distinct !DILexicalBlock(scope: !5012, file: !1054, line: 74, column: 17)
!5012 = distinct !DILexicalBlock(scope: !4990, file: !1054, line: 70, column: 11)
!5013 = !DILocation(line: 74, column: 17, scope: !5012)
!5014 = !DILocation(line: 75, column: 17, scope: !5011)
!5015 = !DILocation(line: 75, column: 20, scope: !5011)
!5016 = !DILocation(line: 75, column: 15, scope: !5011)
!5017 = !DILocation(line: 80, column: 24, scope: !5012)
!5018 = !DILocation(line: 82, column: 19, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !5012, file: !1054, line: 82, column: 17)
!5020 = !DILocation(line: 82, column: 17, scope: !5012)
!5021 = !DILocation(line: 83, column: 17, scope: !5019)
!5022 = !DILocation(line: 83, column: 20, scope: !5019)
!5023 = !DILocation(line: 83, column: 15, scope: !5019)
!5024 = !DILocation(line: 88, column: 24, scope: !5012)
!5025 = !DILocation(line: 90, column: 19, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5012, file: !1054, line: 90, column: 17)
!5027 = !DILocation(line: 90, column: 17, scope: !5012)
!5028 = !DILocation(line: 91, column: 17, scope: !5026)
!5029 = !DILocation(line: 91, column: 20, scope: !5026)
!5030 = !DILocation(line: 91, column: 15, scope: !5026)
!5031 = !DILocation(line: 100, column: 19, scope: !5032)
!5032 = distinct !DILexicalBlock(scope: !5012, file: !1054, line: 100, column: 17)
!5033 = !DILocation(line: 100, column: 17, scope: !5012)
!5034 = !DILocation(line: 101, column: 17, scope: !5032)
!5035 = !DILocation(line: 101, column: 20, scope: !5032)
!5036 = !DILocation(line: 101, column: 15, scope: !5032)
!5037 = !DILocation(line: 107, column: 19, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !5012, file: !1054, line: 107, column: 17)
!5039 = !DILocation(line: 107, column: 17, scope: !5012)
!5040 = !DILocation(line: 108, column: 17, scope: !5038)
!5041 = !DILocation(line: 108, column: 20, scope: !5038)
!5042 = !DILocation(line: 108, column: 15, scope: !5038)
!5043 = !DILocation(line: 113, column: 24, scope: !5012)
!5044 = !DILocation(line: 115, column: 13, scope: !5012)
!5045 = !DILocation(line: 117, column: 24, scope: !5012)
!5046 = !DILocation(line: 119, column: 13, scope: !5012)
!5047 = !DILocation(line: 128, column: 24, scope: !4989)
!5048 = !DILocation(line: 0, scope: !4989)
!5049 = !DILocation(line: 129, column: 48, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !4989, file: !1054, line: 129, column: 15)
!5051 = !DILocation(line: 129, column: 15, scope: !4989)
!5052 = !DILocalVariable(name: "__dest", arg: 1, scope: !5053, file: !1430, line: 26, type: !1689)
!5053 = distinct !DISubprogram(name: "memcpy", scope: !1430, file: !1430, line: 26, type: !1687, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1053, retainedNodes: !5054)
!5054 = !{!5052, !5055, !5056}
!5055 = !DILocalVariable(name: "__src", arg: 2, scope: !5053, file: !1430, line: 26, type: !1305)
!5056 = !DILocalVariable(name: "__len", arg: 3, scope: !5053, file: !1430, line: 26, type: !113)
!5057 = !DILocation(line: 0, scope: !5053, inlinedAt: !5058)
!5058 = distinct !DILocation(line: 131, column: 11, scope: !4989)
!5059 = !DILocation(line: 29, column: 10, scope: !5053, inlinedAt: !5058)
!5060 = !DILocation(line: 132, column: 13, scope: !4989)
!5061 = !DILocation(line: 135, column: 9, scope: !4990)
!5062 = !DILocation(line: 67, column: 25, scope: !4991)
!5063 = distinct !{!5063, !5006, !5064, !1204}
!5064 = !DILocation(line: 136, column: 7, scope: !4992)
!5065 = !DILocation(line: 197, column: 7, scope: !4995)
!5066 = !DILocation(line: 199, column: 47, scope: !4994)
!5067 = !DILocation(line: 199, column: 16, scope: !4994)
!5068 = !DILocation(line: 0, scope: !4994)
!5069 = !DILocation(line: 201, column: 14, scope: !5070)
!5070 = distinct !DILexicalBlock(scope: !4994, file: !1054, line: 201, column: 11)
!5071 = !DILocation(line: 201, column: 11, scope: !4994)
!5072 = !DILocation(line: 204, column: 18, scope: !4994)
!5073 = !DILocation(line: 205, column: 14, scope: !4999)
!5074 = !DILocation(line: 205, column: 11, scope: !4994)
!5075 = !DILocation(line: 207, column: 29, scope: !4998)
!5076 = !DILocation(line: 0, scope: !4998)
!5077 = !DILocation(line: 208, column: 11, scope: !4998)
!5078 = !DILocation(line: 209, column: 17, scope: !4998)
!5079 = !DILocation(line: 210, column: 9, scope: !4998)
!5080 = !DILocalVariable(name: "filename", arg: 1, scope: !5081, file: !1054, line: 30, type: !115)
!5081 = distinct !DISubprogram(name: "orig_fopen", scope: !1054, file: !1054, line: 30, type: !4939, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1053, retainedNodes: !5082)
!5082 = !{!5080, !5083}
!5083 = !DILocalVariable(name: "mode", arg: 2, scope: !5081, file: !1054, line: 30, type: !115)
!5084 = !DILocation(line: 0, scope: !5081, inlinedAt: !5085)
!5085 = distinct !DILocation(line: 219, column: 10, scope: !4938)
!5086 = !DILocation(line: 32, column: 10, scope: !5081, inlinedAt: !5085)
!5087 = !DILocation(line: 219, column: 3, scope: !4938)
!5088 = !DILocation(line: 220, column: 1, scope: !4938)
!5089 = !DISubprogram(name: "open", scope: !2569, file: !2569, line: 181, type: !5090, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!5090 = !DISubroutineType(types: !5091)
!5091 = !{!77, !115, !77, null}
!5092 = !DISubprogram(name: "fdopen", scope: !1152, file: !1152, line: 293, type: !5093, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!5093 = !DISubroutineType(types: !5094)
!5094 = !{!4941, !77, !115}
!5095 = !DISubprogram(name: "close", scope: !2432, file: !2432, line: 358, type: !2457, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!5096 = !DISubprogram(name: "fopen", scope: !1152, file: !1152, line: 258, type: !5097, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!5097 = !DISubroutineType(types: !5098)
!5098 = !{!4941, !1147, !1147}
!5099 = distinct !DISubprogram(name: "close_stream", scope: !1056, file: !1056, line: 55, type: !5100, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1055, retainedNodes: !5136)
!5100 = !DISubroutineType(types: !5101)
!5101 = !{!77, !5102}
!5102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5103, size: 64)
!5103 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 7, baseType: !5104)
!5104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !5105)
!5105 = !{!5106, !5107, !5108, !5109, !5110, !5111, !5112, !5113, !5114, !5115, !5116, !5117, !5118, !5119, !5121, !5122, !5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131, !5132, !5133, !5134, !5135}
!5106 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5104, file: !172, line: 51, baseType: !77, size: 32)
!5107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5104, file: !172, line: 54, baseType: !107, size: 64, offset: 64)
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5104, file: !172, line: 55, baseType: !107, size: 64, offset: 128)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5104, file: !172, line: 56, baseType: !107, size: 64, offset: 192)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5104, file: !172, line: 57, baseType: !107, size: 64, offset: 256)
!5111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5104, file: !172, line: 58, baseType: !107, size: 64, offset: 320)
!5112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5104, file: !172, line: 59, baseType: !107, size: 64, offset: 384)
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5104, file: !172, line: 60, baseType: !107, size: 64, offset: 448)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5104, file: !172, line: 61, baseType: !107, size: 64, offset: 512)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5104, file: !172, line: 64, baseType: !107, size: 64, offset: 576)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5104, file: !172, line: 65, baseType: !107, size: 64, offset: 640)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5104, file: !172, line: 66, baseType: !107, size: 64, offset: 704)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5104, file: !172, line: 68, baseType: !187, size: 64, offset: 768)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5104, file: !172, line: 70, baseType: !5120, size: 64, offset: 832)
!5120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5104, size: 64)
!5121 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5104, file: !172, line: 72, baseType: !77, size: 32, offset: 896)
!5122 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5104, file: !172, line: 73, baseType: !77, size: 32, offset: 928)
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5104, file: !172, line: 74, baseType: !194, size: 64, offset: 960)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5104, file: !172, line: 77, baseType: !112, size: 16, offset: 1024)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5104, file: !172, line: 78, baseType: !198, size: 8, offset: 1040)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5104, file: !172, line: 79, baseType: !49, size: 8, offset: 1048)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5104, file: !172, line: 81, baseType: !201, size: 64, offset: 1088)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5104, file: !172, line: 89, baseType: !204, size: 64, offset: 1152)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5104, file: !172, line: 91, baseType: !206, size: 64, offset: 1216)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5104, file: !172, line: 92, baseType: !209, size: 64, offset: 1280)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5104, file: !172, line: 93, baseType: !5120, size: 64, offset: 1344)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5104, file: !172, line: 94, baseType: !108, size: 64, offset: 1408)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5104, file: !172, line: 95, baseType: !113, size: 64, offset: 1472)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5104, file: !172, line: 96, baseType: !77, size: 32, offset: 1536)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5104, file: !172, line: 98, baseType: !216, size: 160, offset: 1568)
!5136 = !{!5137, !5138, !5140, !5141}
!5137 = !DILocalVariable(name: "stream", arg: 1, scope: !5099, file: !1056, line: 55, type: !5102)
!5138 = !DILocalVariable(name: "some_pending", scope: !5099, file: !1056, line: 57, type: !5139)
!5139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!5140 = !DILocalVariable(name: "prev_fail", scope: !5099, file: !1056, line: 58, type: !5139)
!5141 = !DILocalVariable(name: "fclose_fail", scope: !5099, file: !1056, line: 59, type: !5139)
!5142 = !DILocation(line: 0, scope: !5099)
!5143 = !DILocation(line: 57, column: 30, scope: !5099)
!5144 = !DILocalVariable(name: "__stream", arg: 1, scope: !5145, file: !1412, line: 135, type: !5102)
!5145 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1412, file: !1412, line: 135, type: !5100, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1055, retainedNodes: !5146)
!5146 = !{!5144}
!5147 = !DILocation(line: 0, scope: !5145, inlinedAt: !5148)
!5148 = distinct !DILocation(line: 58, column: 27, scope: !5099)
!5149 = !DILocation(line: 137, column: 10, scope: !5145, inlinedAt: !5148)
!5150 = !DILocation(line: 58, column: 43, scope: !5099)
!5151 = !DILocation(line: 59, column: 29, scope: !5099)
!5152 = !DILocation(line: 59, column: 45, scope: !5099)
!5153 = !DILocation(line: 69, column: 17, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5099, file: !1056, line: 69, column: 7)
!5155 = !DILocation(line: 57, column: 50, scope: !5099)
!5156 = !DILocation(line: 69, column: 33, scope: !5154)
!5157 = !DILocation(line: 69, column: 53, scope: !5154)
!5158 = !DILocation(line: 69, column: 59, scope: !5154)
!5159 = !DILocation(line: 69, column: 7, scope: !5099)
!5160 = !DILocation(line: 71, column: 11, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5154, file: !1056, line: 70, column: 5)
!5162 = !DILocation(line: 72, column: 9, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5161, file: !1056, line: 71, column: 11)
!5164 = !DILocation(line: 72, column: 15, scope: !5163)
!5165 = !DILocation(line: 77, column: 1, scope: !5099)
!5166 = !DISubprogram(name: "__fpending", scope: !2777, file: !2777, line: 75, type: !5167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!5167 = !DISubroutineType(types: !5168)
!5168 = !{!113, !5102}
!5169 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !981, file: !981, line: 100, type: !5170, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !984, retainedNodes: !5173)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!113, !1759, !115, !113, !5172}
!5172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!5173 = !{!5174, !5175, !5176, !5177, !5178}
!5174 = !DILocalVariable(name: "pwc", arg: 1, scope: !5169, file: !981, line: 100, type: !1759)
!5175 = !DILocalVariable(name: "s", arg: 2, scope: !5169, file: !981, line: 100, type: !115)
!5176 = !DILocalVariable(name: "n", arg: 3, scope: !5169, file: !981, line: 100, type: !113)
!5177 = !DILocalVariable(name: "ps", arg: 4, scope: !5169, file: !981, line: 100, type: !5172)
!5178 = !DILocalVariable(name: "ret", scope: !5169, file: !981, line: 130, type: !113)
!5179 = !DILocation(line: 0, scope: !5169)
!5180 = !DILocation(line: 105, column: 9, scope: !5181)
!5181 = distinct !DILexicalBlock(scope: !5169, file: !981, line: 105, column: 7)
!5182 = !DILocation(line: 105, column: 7, scope: !5169)
!5183 = !DILocation(line: 117, column: 10, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5169, file: !981, line: 117, column: 7)
!5185 = !DILocation(line: 117, column: 7, scope: !5169)
!5186 = !DILocation(line: 130, column: 16, scope: !5169)
!5187 = !DILocation(line: 135, column: 11, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5169, file: !981, line: 135, column: 7)
!5189 = !DILocation(line: 135, column: 25, scope: !5188)
!5190 = !DILocation(line: 135, column: 30, scope: !5188)
!5191 = !DILocation(line: 135, column: 7, scope: !5169)
!5192 = !DILocalVariable(name: "ps", arg: 1, scope: !5193, file: !3016, line: 1135, type: !5172)
!5193 = distinct !DISubprogram(name: "mbszero", scope: !3016, file: !3016, line: 1135, type: !5194, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !984, retainedNodes: !5196)
!5194 = !DISubroutineType(types: !5195)
!5195 = !{null, !5172}
!5196 = !{!5192}
!5197 = !DILocation(line: 0, scope: !5193, inlinedAt: !5198)
!5198 = distinct !DILocation(line: 137, column: 5, scope: !5188)
!5199 = !DILocalVariable(name: "__dest", arg: 1, scope: !5200, file: !1430, line: 57, type: !108)
!5200 = distinct !DISubprogram(name: "memset", scope: !1430, file: !1430, line: 57, type: !3025, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !984, retainedNodes: !5201)
!5201 = !{!5199, !5202, !5203}
!5202 = !DILocalVariable(name: "__ch", arg: 2, scope: !5200, file: !1430, line: 57, type: !77)
!5203 = !DILocalVariable(name: "__len", arg: 3, scope: !5200, file: !1430, line: 57, type: !113)
!5204 = !DILocation(line: 0, scope: !5200, inlinedAt: !5205)
!5205 = distinct !DILocation(line: 1137, column: 3, scope: !5193, inlinedAt: !5198)
!5206 = !DILocation(line: 59, column: 10, scope: !5200, inlinedAt: !5205)
!5207 = !DILocation(line: 137, column: 5, scope: !5188)
!5208 = !DILocation(line: 138, column: 11, scope: !5209)
!5209 = distinct !DILexicalBlock(scope: !5169, file: !981, line: 138, column: 7)
!5210 = !DILocation(line: 138, column: 7, scope: !5169)
!5211 = !DILocation(line: 139, column: 5, scope: !5209)
!5212 = !DILocation(line: 143, column: 26, scope: !5213)
!5213 = distinct !DILexicalBlock(scope: !5169, file: !981, line: 143, column: 7)
!5214 = !DILocation(line: 143, column: 41, scope: !5213)
!5215 = !DILocation(line: 143, column: 7, scope: !5169)
!5216 = !DILocation(line: 145, column: 15, scope: !5217)
!5217 = distinct !DILexicalBlock(scope: !5218, file: !981, line: 145, column: 11)
!5218 = distinct !DILexicalBlock(scope: !5213, file: !981, line: 144, column: 5)
!5219 = !DILocation(line: 145, column: 11, scope: !5218)
!5220 = !DILocation(line: 146, column: 32, scope: !5217)
!5221 = !DILocation(line: 146, column: 16, scope: !5217)
!5222 = !DILocation(line: 146, column: 14, scope: !5217)
!5223 = !DILocation(line: 146, column: 9, scope: !5217)
!5224 = !DILocation(line: 286, column: 1, scope: !5169)
!5225 = !DISubprogram(name: "mbsinit", scope: !1765, file: !1765, line: 293, type: !5226, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1095)
!5226 = !DISubroutineType(types: !5227)
!5227 = !{!77, !5228}
!5228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5229, size: 64)
!5229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !987)
!5230 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1058, file: !1058, line: 27, type: !4498, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1057, retainedNodes: !5231)
!5231 = !{!5232, !5233, !5234, !5235}
!5232 = !DILocalVariable(name: "ptr", arg: 1, scope: !5230, file: !1058, line: 27, type: !108)
!5233 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5230, file: !1058, line: 27, type: !113)
!5234 = !DILocalVariable(name: "size", arg: 3, scope: !5230, file: !1058, line: 27, type: !113)
!5235 = !DILocalVariable(name: "nbytes", scope: !5230, file: !1058, line: 29, type: !113)
!5236 = !DILocation(line: 0, scope: !5230)
!5237 = !DILocation(line: 30, column: 7, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5230, file: !1058, line: 30, column: 7)
!5239 = !DILocalVariable(name: "ptr", arg: 1, scope: !5240, file: !4590, line: 2057, type: !108)
!5240 = distinct !DISubprogram(name: "rpl_realloc", scope: !4590, file: !4590, line: 2057, type: !4582, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1057, retainedNodes: !5241)
!5241 = !{!5239, !5242}
!5242 = !DILocalVariable(name: "size", arg: 2, scope: !5240, file: !4590, line: 2057, type: !113)
!5243 = !DILocation(line: 0, scope: !5240, inlinedAt: !5244)
!5244 = distinct !DILocation(line: 37, column: 10, scope: !5230)
!5245 = !DILocation(line: 2059, column: 24, scope: !5240, inlinedAt: !5244)
!5246 = !DILocation(line: 2059, column: 10, scope: !5240, inlinedAt: !5244)
!5247 = !DILocation(line: 37, column: 3, scope: !5230)
!5248 = !DILocation(line: 32, column: 7, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5238, file: !1058, line: 31, column: 5)
!5250 = !DILocation(line: 32, column: 13, scope: !5249)
!5251 = !DILocation(line: 33, column: 7, scope: !5249)
!5252 = !DILocation(line: 38, column: 1, scope: !5230)
!5253 = distinct !DISubprogram(name: "hard_locale", scope: !999, file: !999, line: 28, type: !1949, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1060, retainedNodes: !5254)
!5254 = !{!5255, !5256}
!5255 = !DILocalVariable(name: "category", arg: 1, scope: !5253, file: !999, line: 28, type: !77)
!5256 = !DILocalVariable(name: "locale", scope: !5253, file: !999, line: 30, type: !5257)
!5257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5258)
!5258 = !{!5259}
!5259 = !DISubrange(count: 257)
!5260 = !DILocation(line: 0, scope: !5253)
!5261 = !DILocation(line: 30, column: 3, scope: !5253)
!5262 = !DILocation(line: 30, column: 8, scope: !5253)
!5263 = !DILocation(line: 32, column: 7, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5253, file: !999, line: 32, column: 7)
!5265 = !DILocation(line: 32, column: 7, scope: !5253)
!5266 = !DILocalVariable(name: "__s1", arg: 1, scope: !5267, file: !1170, line: 1359, type: !115)
!5267 = distinct !DISubprogram(name: "streq", scope: !1170, file: !1170, line: 1359, type: !1171, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1060, retainedNodes: !5268)
!5268 = !{!5266, !5269}
!5269 = !DILocalVariable(name: "__s2", arg: 2, scope: !5267, file: !1170, line: 1359, type: !115)
!5270 = !DILocation(line: 0, scope: !5267, inlinedAt: !5271)
!5271 = distinct !DILocation(line: 35, column: 9, scope: !5272)
!5272 = distinct !DILexicalBlock(scope: !5253, file: !999, line: 35, column: 7)
!5273 = !DILocation(line: 1361, column: 11, scope: !5267, inlinedAt: !5271)
!5274 = !DILocation(line: 35, column: 29, scope: !5272)
!5275 = !DILocation(line: 0, scope: !5267, inlinedAt: !5276)
!5276 = distinct !DILocation(line: 35, column: 32, scope: !5272)
!5277 = !DILocation(line: 1361, column: 11, scope: !5267, inlinedAt: !5276)
!5278 = !DILocation(line: 1361, column: 10, scope: !5267, inlinedAt: !5276)
!5279 = !DILocation(line: 35, column: 7, scope: !5253)
!5280 = !DILocation(line: 46, column: 3, scope: !5253)
!5281 = !DILocation(line: 47, column: 1, scope: !5253)
!5282 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1065, file: !1065, line: 154, type: !5283, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1064, retainedNodes: !5285)
!5283 = !DISubroutineType(types: !5284)
!5284 = !{!77, !77, !107, !113}
!5285 = !{!5286, !5287, !5288}
!5286 = !DILocalVariable(name: "category", arg: 1, scope: !5282, file: !1065, line: 154, type: !77)
!5287 = !DILocalVariable(name: "buf", arg: 2, scope: !5282, file: !1065, line: 154, type: !107)
!5288 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5282, file: !1065, line: 154, type: !113)
!5289 = !DILocation(line: 0, scope: !5282)
!5290 = !DILocation(line: 159, column: 10, scope: !5282)
!5291 = !DILocation(line: 159, column: 3, scope: !5282)
!5292 = distinct !DISubprogram(name: "setlocale_null", scope: !1065, file: !1065, line: 186, type: !5293, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1064, retainedNodes: !5295)
!5293 = !DISubroutineType(types: !5294)
!5294 = !{!115, !77}
!5295 = !{!5296}
!5296 = !DILocalVariable(name: "category", arg: 1, scope: !5292, file: !1065, line: 186, type: !77)
!5297 = !DILocation(line: 0, scope: !5292)
!5298 = !DILocation(line: 189, column: 10, scope: !5292)
!5299 = !DILocation(line: 189, column: 3, scope: !5292)
!5300 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1067, file: !1067, line: 35, type: !5293, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1066, retainedNodes: !5301)
!5301 = !{!5302, !5303}
!5302 = !DILocalVariable(name: "category", arg: 1, scope: !5300, file: !1067, line: 35, type: !77)
!5303 = !DILocalVariable(name: "result", scope: !5300, file: !1067, line: 37, type: !115)
!5304 = !DILocation(line: 0, scope: !5300)
!5305 = !DILocation(line: 37, column: 24, scope: !5300)
!5306 = !DILocation(line: 62, column: 3, scope: !5300)
!5307 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1067, file: !1067, line: 66, type: !5283, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1066, retainedNodes: !5308)
!5308 = !{!5309, !5310, !5311, !5312, !5313}
!5309 = !DILocalVariable(name: "category", arg: 1, scope: !5307, file: !1067, line: 66, type: !77)
!5310 = !DILocalVariable(name: "buf", arg: 2, scope: !5307, file: !1067, line: 66, type: !107)
!5311 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5307, file: !1067, line: 66, type: !113)
!5312 = !DILocalVariable(name: "result", scope: !5307, file: !1067, line: 111, type: !115)
!5313 = !DILocalVariable(name: "length", scope: !5314, file: !1067, line: 125, type: !113)
!5314 = distinct !DILexicalBlock(scope: !5315, file: !1067, line: 124, column: 5)
!5315 = distinct !DILexicalBlock(scope: !5307, file: !1067, line: 113, column: 7)
!5316 = !DILocation(line: 0, scope: !5307)
!5317 = !DILocation(line: 0, scope: !5300, inlinedAt: !5318)
!5318 = distinct !DILocation(line: 111, column: 24, scope: !5307)
!5319 = !DILocation(line: 37, column: 24, scope: !5300, inlinedAt: !5318)
!5320 = !DILocation(line: 113, column: 14, scope: !5315)
!5321 = !DILocation(line: 113, column: 7, scope: !5307)
!5322 = !DILocation(line: 116, column: 19, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5324, file: !1067, line: 116, column: 11)
!5324 = distinct !DILexicalBlock(scope: !5315, file: !1067, line: 114, column: 5)
!5325 = !DILocation(line: 116, column: 11, scope: !5324)
!5326 = !DILocation(line: 120, column: 16, scope: !5323)
!5327 = !DILocation(line: 120, column: 9, scope: !5323)
!5328 = !DILocation(line: 125, column: 23, scope: !5314)
!5329 = !DILocation(line: 0, scope: !5314)
!5330 = !DILocation(line: 126, column: 18, scope: !5331)
!5331 = distinct !DILexicalBlock(scope: !5314, file: !1067, line: 126, column: 11)
!5332 = !DILocation(line: 126, column: 11, scope: !5314)
!5333 = !DILocation(line: 128, column: 39, scope: !5334)
!5334 = distinct !DILexicalBlock(scope: !5331, file: !1067, line: 127, column: 9)
!5335 = !DILocalVariable(name: "__dest", arg: 1, scope: !5336, file: !1430, line: 26, type: !1689)
!5336 = distinct !DISubprogram(name: "memcpy", scope: !1430, file: !1430, line: 26, type: !1687, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1066, retainedNodes: !5337)
!5337 = !{!5335, !5338, !5339}
!5338 = !DILocalVariable(name: "__src", arg: 2, scope: !5336, file: !1430, line: 26, type: !1305)
!5339 = !DILocalVariable(name: "__len", arg: 3, scope: !5336, file: !1430, line: 26, type: !113)
!5340 = !DILocation(line: 0, scope: !5336, inlinedAt: !5341)
!5341 = distinct !DILocation(line: 128, column: 11, scope: !5334)
!5342 = !DILocation(line: 29, column: 10, scope: !5336, inlinedAt: !5341)
!5343 = !DILocation(line: 129, column: 11, scope: !5334)
!5344 = !DILocation(line: 133, column: 23, scope: !5345)
!5345 = distinct !DILexicalBlock(scope: !5346, file: !1067, line: 133, column: 15)
!5346 = distinct !DILexicalBlock(scope: !5331, file: !1067, line: 132, column: 9)
!5347 = !DILocation(line: 133, column: 15, scope: !5346)
!5348 = !DILocation(line: 138, column: 44, scope: !5349)
!5349 = distinct !DILexicalBlock(scope: !5345, file: !1067, line: 134, column: 13)
!5350 = !DILocation(line: 0, scope: !5336, inlinedAt: !5351)
!5351 = distinct !DILocation(line: 138, column: 15, scope: !5349)
!5352 = !DILocation(line: 29, column: 10, scope: !5336, inlinedAt: !5351)
!5353 = !DILocation(line: 139, column: 15, scope: !5349)
!5354 = !DILocation(line: 139, column: 32, scope: !5349)
!5355 = !DILocation(line: 140, column: 13, scope: !5349)
!5356 = !DILocation(line: 0, scope: !5315)
!5357 = !DILocation(line: 145, column: 1, scope: !5307)
