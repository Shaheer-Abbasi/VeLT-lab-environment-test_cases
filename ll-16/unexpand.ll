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
@unexpand.line_in = internal global [262144 x i8] zeroinitializer, align 4, !dbg !353
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
@stdin_argv = internal global [2 x ptr] [ptr @.str.6.37, ptr null], align 8, !dbg !588
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
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !698
@.str.69 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !690
@.str.1.70 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !692
@.str.2.71 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !694
@.str.3.72 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !696
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !700
@stderr = external local_unnamed_addr global ptr, align 8
@.str.73 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !706
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !743
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !708
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
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !824
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !838
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !876
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !883
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !840
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !885
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !828
@.str.10.116 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !845
@.str.11.114 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !847
@.str.12.117 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !849
@.str.13.115 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !851
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !853
@.str.124 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !889
@.str.1.125 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !892
@.str.2.126 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !894
@.str.3.127 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !896
@.str.4.128 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !898
@.str.5.129 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !900
@.str.6.130 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !905
@.str.7.131 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !910
@.str.8.132 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !912
@.str.9.133 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !914
@.str.10.134 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !916
@.str.11.135 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !921
@.str.12.136 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !926
@.str.13.137 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !928
@.str.14.138 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !933
@.str.15.139 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !938
@.str.16.140 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !943
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.145 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !948
@.str.18.146 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !950
@.str.19.147 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !952
@.str.20.148 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !954
@.str.21.149 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !956
@.str.22.150 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !958
@.str.23.151 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !960
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !965
@exit_failure = dso_local global i32 1, align 4, !dbg !971
@.str.168 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !977
@.str.1.166 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !980
@.str.2.167 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !982
@.str.175 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !984
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !987
@.str.180 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !1002
@.str.1.181 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !1005

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1081 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1085, metadata !DIExpression()), !dbg !1086
  %2 = icmp eq i32 %0, 0, !dbg !1087
  br i1 %2, label %8, label %3, !dbg !1089

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1090, !tbaa !1092
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #37, !dbg !1090
  %6 = load ptr, ptr @program_name, align 8, !dbg !1090, !tbaa !1092
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #37, !dbg !1090
  br label %40, !dbg !1090

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #37, !dbg !1096
  %10 = load ptr, ptr @program_name, align 8, !dbg !1096, !tbaa !1092
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #37, !dbg !1096
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #37, !dbg !1098
  %13 = load ptr, ptr @stdout, align 8, !dbg !1098, !tbaa !1092
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1098
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16, i32 noundef 5) #37, !dbg !1099
  %16 = load ptr, ptr @stdout, align 8, !dbg !1099, !tbaa !1092
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1099
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.17, i32 noundef 5) #37, !dbg !1103
  %19 = load ptr, ptr @stdout, align 8, !dbg !1103, !tbaa !1092
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !1103
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #37, !dbg !1106
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1106
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #37, !dbg !1107
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1107
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #37, !dbg !1108
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1108
  tail call void @emit_tab_list_info(ptr noundef nonnull @.str.3) #37, !dbg !1109
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #37, !dbg !1110
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1110
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 5) #37, !dbg !1111
  tail call fastcc void @oputs_(ptr noundef %25), !dbg !1111
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1112, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1124, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata ptr poison, metadata !1124, metadata !DIExpression()), !dbg !1129
  tail call void @emit_bug_reporting_address() #37, !dbg !1131
  %26 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #37, !dbg !1132
  call void @llvm.dbg.value(metadata ptr %26, metadata !1127, metadata !DIExpression()), !dbg !1129
  %27 = icmp eq ptr %26, null, !dbg !1133
  br i1 %27, label %35, label %28, !dbg !1135

28:                                               ; preds = %8
  %29 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(4) @.str.48, i64 noundef 3) #38, !dbg !1136
  %30 = icmp eq i32 %29, 0, !dbg !1136
  br i1 %30, label %35, label %31, !dbg !1137

31:                                               ; preds = %28
  %32 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.49, i32 noundef 5) #37, !dbg !1138
  %33 = load ptr, ptr @stdout, align 8, !dbg !1138, !tbaa !1092
  %34 = tail call i32 @fputs_unlocked(ptr noundef %32, ptr noundef %33), !dbg !1138
  br label %35, !dbg !1140

35:                                               ; preds = %8, %28, %31
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1124, metadata !DIExpression()), !dbg !1129
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1128, metadata !DIExpression()), !dbg !1129
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #37, !dbg !1141
  %37 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %36, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3) #37, !dbg !1141
  %38 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #37, !dbg !1142
  %39 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.52) #37, !dbg !1142
  br label %40

40:                                               ; preds = %35, %3
  tail call void @exit(i32 noundef %0) #39, !dbg !1143
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
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !146 {
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !150, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata ptr %0, metadata !151, metadata !DIExpression()), !dbg !1160
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1161, !tbaa !1162
  %3 = icmp eq i32 %2, -1, !dbg !1164
  br i1 %3, label %4, label %16, !dbg !1165

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.18) #37, !dbg !1166
  call void @llvm.dbg.value(metadata ptr %5, metadata !152, metadata !DIExpression()), !dbg !1167
  %6 = icmp eq ptr %5, null, !dbg !1168
  br i1 %6, label %14, label %7, !dbg !1169

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1170, !tbaa !1171
  %9 = icmp eq i8 %8, 0, !dbg !1170
  br i1 %9, label %14, label %10, !dbg !1172

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1173, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata ptr @.str.19, metadata !1179, metadata !DIExpression()), !dbg !1180
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.19) #38, !dbg !1182
  %12 = icmp eq i32 %11, 0, !dbg !1183
  %13 = zext i1 %12 to i32, !dbg !1172
  br label %14, !dbg !1172

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1184, !tbaa !1162
  br label %16, !dbg !1185

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1186
  %18 = icmp eq i32 %17, 0, !dbg !1186
  br i1 %18, label %22, label %19, !dbg !1188

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1189, !tbaa !1092
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1189
  br label %122, !dbg !1191

22:                                               ; preds = %16
  call void @llvm.dbg.value(metadata i8 1, metadata !155, metadata !DIExpression()), !dbg !1160
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.20) #38, !dbg !1192
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1193
  call void @llvm.dbg.value(metadata ptr %24, metadata !156, metadata !DIExpression()), !dbg !1160
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #38, !dbg !1194
  call void @llvm.dbg.value(metadata ptr %25, metadata !157, metadata !DIExpression()), !dbg !1160
  %26 = icmp eq ptr %25, null, !dbg !1195
  br i1 %26, label %54, label %27, !dbg !1196

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1197
  br i1 %28, label %54, label %29, !dbg !1198

29:                                               ; preds = %27
  call void @llvm.dbg.value(metadata ptr %24, metadata !158, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i64 0, metadata !162, metadata !DIExpression()), !dbg !1199
  %30 = icmp ult ptr %24, %25, !dbg !1200
  br i1 %30, label %31, label %52, !dbg !1201

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #40, !dbg !1160
  %33 = load ptr, ptr %32, align 8, !tbaa !1092
  br label %34, !dbg !1201

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  call void @llvm.dbg.value(metadata ptr %35, metadata !158, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i64 %36, metadata !162, metadata !DIExpression()), !dbg !1199
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1202
  call void @llvm.dbg.value(metadata ptr %37, metadata !158, metadata !DIExpression()), !dbg !1199
  %38 = load i8, ptr %35, align 1, !dbg !1202, !tbaa !1171
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1202
  %41 = load i16, ptr %40, align 2, !dbg !1202, !tbaa !1203
  %42 = freeze i16 %41, !dbg !1205
  %43 = lshr i16 %42, 13, !dbg !1205
  %44 = and i16 %43, 1, !dbg !1205
  %45 = zext i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1206
  call void @llvm.dbg.value(metadata i64 %46, metadata !162, metadata !DIExpression()), !dbg !1199
  %47 = icmp ult ptr %37, %25, !dbg !1200
  %48 = icmp ult i64 %46, 2, !dbg !1207
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1207
  br i1 %49, label %34, label %50, !dbg !1201, !llvm.loop !1208

50:                                               ; preds = %34
  %51 = icmp ne i64 %46, 2, !dbg !1210
  br i1 %51, label %52, label %54, !dbg !1212

52:                                               ; preds = %29, %50
  %53 = phi i1 [ %51, %50 ], [ true, %29 ]
  br label %54, !dbg !1212

54:                                               ; preds = %52, %50, %22, %27
  %55 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %52 ], [ %24, %50 ], !dbg !1160
  %56 = phi i1 [ true, %27 ], [ false, %22 ], [ %53, %52 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !155, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata ptr %55, metadata !157, metadata !DIExpression()), !dbg !1160
  %57 = tail call i64 @strcspn(ptr noundef %55, ptr noundef nonnull @.str.21) #38, !dbg !1213
  call void @llvm.dbg.value(metadata i64 %57, metadata !163, metadata !DIExpression()), !dbg !1160
  %58 = getelementptr inbounds i8, ptr %55, i64 %57, !dbg !1214
  call void @llvm.dbg.value(metadata ptr %58, metadata !164, metadata !DIExpression()), !dbg !1160
  br label %59, !dbg !1215

59:                                               ; preds = %90, %54
  %60 = phi ptr [ %58, %54 ], [ %91, %90 ], !dbg !1160
  %61 = phi i1 [ %56, %54 ], [ %69, %90 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !155, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata ptr %60, metadata !164, metadata !DIExpression()), !dbg !1160
  %62 = load i8, ptr %60, align 1, !dbg !1216, !tbaa !1171
  switch i8 %62, label %68 [
    i8 0, label %92
    i8 10, label %92
    i8 45, label %63
  ], !dbg !1217

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1218
  %65 = load i8, ptr %64, align 1, !dbg !1221, !tbaa !1171
  %66 = icmp ne i8 %65, 45, !dbg !1222
  %67 = select i1 %66, i1 %61, i1 false, !dbg !1223
  br label %68, !dbg !1223

68:                                               ; preds = %63, %59
  %69 = phi i1 [ %61, %59 ], [ %67, %63 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !155, metadata !DIExpression()), !dbg !1160
  %70 = tail call ptr @__ctype_b_loc() #40, !dbg !1224
  %71 = load ptr, ptr %70, align 8, !dbg !1224, !tbaa !1092
  %72 = zext i8 %62 to i64
  %73 = getelementptr inbounds i16, ptr %71, i64 %72, !dbg !1224
  %74 = load i16, ptr %73, align 2, !dbg !1224, !tbaa !1203
  %75 = and i16 %74, 8192, !dbg !1224
  %76 = icmp eq i16 %75, 0, !dbg !1224
  br i1 %76, label %90, label %77, !dbg !1226

77:                                               ; preds = %68
  %78 = icmp eq i8 %62, 9, !dbg !1227
  br i1 %78, label %92, label %79, !dbg !1230

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1231
  %81 = load i8, ptr %80, align 1, !dbg !1231, !tbaa !1171
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, ptr %71, i64 %82, !dbg !1231
  %84 = load i16, ptr %83, align 2, !dbg !1231, !tbaa !1203
  %85 = and i16 %84, 8192, !dbg !1231
  %86 = icmp eq i16 %85, 0, !dbg !1231
  %87 = icmp eq i8 %81, 45
  %88 = select i1 %69, i1 true, i1 %87
  %89 = select i1 %86, i1 %88, i1 false, !dbg !1232
  br i1 %89, label %90, label %92, !dbg !1232

90:                                               ; preds = %79, %68
  %91 = getelementptr inbounds i8, ptr %60, i64 1, !dbg !1233
  call void @llvm.dbg.value(metadata ptr %91, metadata !164, metadata !DIExpression()), !dbg !1160
  br label %59, !dbg !1215, !llvm.loop !1234

92:                                               ; preds = %59, %59, %77, %79
  %93 = ptrtoint ptr %24 to i64, !dbg !1236
  %94 = load ptr, ptr @stdout, align 8, !dbg !1236, !tbaa !1092
  %95 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %94), !dbg !1236
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1173, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1173, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1173, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1173, metadata !DIExpression()), !dbg !1243
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1173, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1173, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1173, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1173, metadata !DIExpression()), !dbg !1251
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1173, metadata !DIExpression()), !dbg !1253
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1173, metadata !DIExpression()), !dbg !1255
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !220, metadata !DIExpression()), !dbg !1160
  %96 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(7) @.str.35, i64 noundef 6) #38, !dbg !1257
  %97 = icmp eq i32 %96, 0, !dbg !1257
  br i1 %97, label %101, label %98, !dbg !1259

98:                                               ; preds = %92
  %99 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %55, ptr noundef nonnull dereferenceable(10) @.str.36, i64 noundef 9) #38, !dbg !1260
  %100 = icmp eq i32 %99, 0, !dbg !1260
  br i1 %100, label %101, label %104, !dbg !1261

101:                                              ; preds = %98, %92
  %102 = trunc i64 %57 to i32, !dbg !1262
  %103 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %102, ptr noundef %55) #37, !dbg !1262
  br label %107, !dbg !1264

104:                                              ; preds = %98
  %105 = trunc i64 %57 to i32, !dbg !1265
  %106 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3, i32 noundef %105, ptr noundef %55) #37, !dbg !1265
  br label %107

107:                                              ; preds = %104, %101
  %108 = load ptr, ptr @stdout, align 8, !dbg !1267, !tbaa !1092
  %109 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %108), !dbg !1267
  %110 = load ptr, ptr @stdout, align 8, !dbg !1268, !tbaa !1092
  %111 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %110), !dbg !1268
  %112 = ptrtoint ptr %60 to i64, !dbg !1269
  %113 = sub i64 %112, %93, !dbg !1269
  %114 = load ptr, ptr @stdout, align 8, !dbg !1269, !tbaa !1092
  %115 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %113, ptr noundef %114), !dbg !1269
  %116 = load ptr, ptr @stdout, align 8, !dbg !1270, !tbaa !1092
  %117 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %116), !dbg !1270
  %118 = load ptr, ptr @stdout, align 8, !dbg !1271, !tbaa !1092
  %119 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.44, ptr noundef %118), !dbg !1271
  %120 = load ptr, ptr @stdout, align 8, !dbg !1272, !tbaa !1092
  %121 = tail call i32 @fputs_unlocked(ptr noundef nonnull %60, ptr noundef %120), !dbg !1272
  br label %122, !dbg !1273

122:                                              ; preds = %107, %19
  ret void, !dbg !1273
}

; Function Attrs: nounwind
declare !dbg !1274 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1278 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1282 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1284 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1287 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1290 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1293 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1296 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1302 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1303 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1309 {
  %3 = alloca %struct.__mbstate_t, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 4
  call void @llvm.dbg.value(metadata i32 %0, metadata !1313, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata ptr %1, metadata !1314, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i8 0, metadata !1315, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i8 0, metadata !1318, metadata !DIExpression()), !dbg !1319
  %7 = load ptr, ptr %1, align 8, !dbg !1320, !tbaa !1092
  tail call void @set_program_name(ptr noundef %7) #37, !dbg !1321
  %8 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.9) #37, !dbg !1322
  %9 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #37, !dbg !1323
  %10 = tail call ptr @textdomain(ptr noundef nonnull @.str.10) #37, !dbg !1324
  %11 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #37, !dbg !1325
  br label %12, !dbg !1326

12:                                               ; preds = %43, %2
  %13 = phi i64 [ %49, %43 ], [ undef, %2 ]
  %14 = phi i1 [ true, %43 ], [ false, %2 ]
  %15 = phi i1 [ %20, %43 ], [ false, %2 ]
  br label %16, !dbg !1326

16:                                               ; preds = %30, %12
  %17 = phi i1 [ %14, %12 ], [ false, %30 ]
  %18 = phi i1 [ %15, %12 ], [ %20, %30 ]
  br label %19, !dbg !1326

19:                                               ; preds = %21, %16
  %20 = phi i1 [ %18, %16 ], [ true, %21 ]
  br label %21, !dbg !1326

21:                                               ; preds = %27, %19
  call void @llvm.dbg.value(metadata i8 poison, metadata !1318, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i8 poison, metadata !1315, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i64 %13, metadata !1316, metadata !DIExpression()), !dbg !1319
  %22 = tail call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.12, ptr noundef nonnull @longopts, ptr noundef null) #37, !dbg !1327
  call void @llvm.dbg.value(metadata i32 %22, metadata !1317, metadata !DIExpression()), !dbg !1319
  switch i32 %22, label %36 [
    i32 -1, label %52
    i32 63, label %23
    i32 97, label %24
    i32 116, label %25
    i32 256, label %19
    i32 44, label %28
    i32 -2, label %31
    i32 -3, label %32
  ], !dbg !1326, !llvm.loop !1328

23:                                               ; preds = %21
  tail call void @usage(i32 noundef 1) #41, !dbg !1330
  unreachable, !dbg !1330

24:                                               ; preds = %21
  store i8 1, ptr @convert_entire_line, align 1, !dbg !1333, !tbaa !1334
  br label %27, !dbg !1336

25:                                               ; preds = %21
  store i8 1, ptr @convert_entire_line, align 1, !dbg !1337, !tbaa !1334
  %26 = load ptr, ptr @optarg, align 8, !dbg !1338, !tbaa !1092
  tail call void @parse_tab_stops(ptr noundef %26) #37, !dbg !1339
  br label %27, !dbg !1340

27:                                               ; preds = %25, %24
  br label %21, !dbg !1319, !llvm.loop !1328

28:                                               ; preds = %21
  br i1 %17, label %29, label %30, !dbg !1341

29:                                               ; preds = %28
  tail call void @add_tab_stop(i64 noundef %13) #37, !dbg !1342
  br label %30, !dbg !1342

30:                                               ; preds = %29, %28
  br label %16, !dbg !1326, !llvm.loop !1328

31:                                               ; preds = %21
  tail call void @usage(i32 noundef 0) #41, !dbg !1344
  unreachable, !dbg !1344

32:                                               ; preds = %21
  %33 = load ptr, ptr @stdout, align 8, !dbg !1345, !tbaa !1092
  %34 = load ptr, ptr @Version, align 8, !dbg !1345, !tbaa !1092
  %35 = tail call ptr @proper_name_lite(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.14) #37, !dbg !1345
  tail call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %33, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.13, ptr noundef %34, ptr noundef %35, ptr noundef null) #37, !dbg !1345
  tail call void @exit(i32 noundef 0) #39, !dbg !1345
  unreachable, !dbg !1345

36:                                               ; preds = %21
  %37 = select i1 %17, i64 %13, i64 0, !dbg !1346
  call void @llvm.dbg.value(metadata i8 poison, metadata !1315, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.value(metadata i64 %37, metadata !1316, metadata !DIExpression()), !dbg !1319
  %38 = icmp slt i64 %37, 0, !dbg !1347
  br i1 %38, label %39, label %41, !dbg !1347

39:                                               ; preds = %36
  %40 = icmp ult i64 %37, -922337203685477580, !dbg !1347
  br i1 %40, label %50, label %43, !dbg !1347

41:                                               ; preds = %36
  %42 = icmp ugt i64 %37, 922337203685477580, !dbg !1347
  br i1 %42, label %50, label %43, !dbg !1347

43:                                               ; preds = %39, %41
  call void @llvm.dbg.value(metadata i64 %37, metadata !1316, metadata !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value)), !dbg !1319
  call void @llvm.dbg.value(metadata i64 %37, metadata !1316, metadata !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value)), !dbg !1319
  %44 = mul nsw i64 %37, 10, !dbg !1347
  call void @llvm.dbg.value(metadata i64 %44, metadata !1316, metadata !DIExpression()), !dbg !1319
  %45 = add nsw i32 %22, -48, !dbg !1347
  %46 = sext i32 %45 to i64, !dbg !1347
  %47 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %44, i64 %46), !dbg !1347
  %48 = extractvalue { i64, i1 } %47, 1, !dbg !1347
  %49 = extractvalue { i64, i1 } %47, 0, !dbg !1347
  call void @llvm.dbg.value(metadata i64 %49, metadata !1316, metadata !DIExpression()), !dbg !1319
  br i1 %48, label %50, label %12, !dbg !1349, !llvm.loop !1328

50:                                               ; preds = %39, %41, %43
  %51 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #37, !dbg !1350
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %51) #37, !dbg !1350
  unreachable, !dbg !1350

52:                                               ; preds = %21
  br i1 %20, label %53, label %54, !dbg !1351

53:                                               ; preds = %52
  store i8 0, ptr @convert_entire_line, align 1, !dbg !1352, !tbaa !1334
  br label %54, !dbg !1354

54:                                               ; preds = %53, %52
  br i1 %17, label %55, label %56, !dbg !1355

55:                                               ; preds = %54
  tail call void @add_tab_stop(i64 noundef %13) #37, !dbg !1356
  br label %56, !dbg !1356

56:                                               ; preds = %55, %54
  tail call void @finalize_tab_stops() #37, !dbg !1358
  %57 = load i32, ptr @optind, align 4, !dbg !1359, !tbaa !1162
  %58 = icmp slt i32 %57, %0, !dbg !1360
  %59 = sext i32 %57 to i64, !dbg !1361
  %60 = getelementptr inbounds ptr, ptr %1, i64 %59, !dbg !1361
  %61 = select i1 %58, ptr %60, ptr null, !dbg !1361
  tail call void @set_file_list(ptr noundef %61) #37, !dbg !1362
  %62 = tail call ptr @next_file(ptr noundef null) #37, !dbg !1363
  call void @llvm.dbg.value(metadata ptr %62, metadata !359, metadata !DIExpression()), !dbg !1365
  %63 = icmp eq ptr %62, null, !dbg !1366
  br i1 %63, label %358, label %64, !dbg !1368

64:                                               ; preds = %56
  call void @llvm.dbg.value(metadata ptr undef, metadata !1369, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !1375, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata i64 262144, metadata !1376, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata ptr %62, metadata !1377, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata ptr %62, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 262144, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1365
  %65 = load i64, ptr @max_column_width, align 8, !dbg !1380, !tbaa !1381
  %66 = shl i64 %65, 4, !dbg !1383
  %67 = tail call noalias nonnull ptr @ximalloc(i64 noundef %66) #42, !dbg !1384
  call void @llvm.dbg.value(metadata ptr %67, metadata !360, metadata !DIExpression()), !dbg !1365
  br label %68, !dbg !1385

68:                                               ; preds = %357, %64
  %69 = phi i64 [ 0, %64 ], [ %210, %357 ], !dbg !1365
  %70 = phi i64 [ 0, %64 ], [ %211, %357 ], !dbg !1365
  %71 = phi ptr [ %62, %64 ], [ %215, %357 ], !dbg !1386
  %72 = phi ptr [ %62, %64 ], [ %216, %357 ], !dbg !1365
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata ptr %71, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 262144, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %70, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %69, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata ptr %72, metadata !359, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 1, metadata !386, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 0, metadata !387, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 0, metadata !393, metadata !DIExpression()), !dbg !1387
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !1388
  call void @llvm.dbg.value(metadata i64 0, metadata !394, metadata !DIExpression()), !dbg !1387
  store i64 0, ptr %5, align 8, !dbg !1389, !tbaa !1381
  call void @llvm.dbg.value(metadata i8 0, metadata !395, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 1, metadata !396, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 0, metadata !397, metadata !DIExpression()), !dbg !1387
  br label %73, !dbg !1390

73:                                               ; preds = %350, %68
  %74 = phi i64 [ %69, %68 ], [ %210, %350 ], !dbg !1365
  %75 = phi i64 [ %70, %68 ], [ %211, %350 ], !dbg !1365
  %76 = phi ptr [ %71, %68 ], [ %215, %350 ], !dbg !1386
  %77 = phi i64 [ 0, %68 ], [ %351, %350 ], !dbg !1387
  %78 = phi i1 [ true, %68 ], [ %352, %350 ]
  %79 = phi i1 [ false, %68 ], [ %353, %350 ]
  %80 = phi i64 [ 0, %68 ], [ %354, %350 ], !dbg !1387
  %81 = phi i1 [ true, %68 ], [ %355, %350 ]
  %82 = phi ptr [ %72, %68 ], [ %216, %350 ], !dbg !1365
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata ptr %76, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 262144, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %75, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %74, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata ptr %82, metadata !359, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata i8 poison, metadata !386, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %80, metadata !387, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 poison, metadata !395, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 poison, metadata !396, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %77, metadata !397, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata ptr %76, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 262144, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %75, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %74, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata ptr %82, metadata !359, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata ptr undef, metadata !1391, metadata !DIExpression()), !dbg !1401
  %83 = sub nsw i64 %74, %75, !dbg !1403
  call void @llvm.dbg.value(metadata i64 %83, metadata !1396, metadata !DIExpression()), !dbg !1401
  %84 = icmp slt i64 %83, 4, !dbg !1404
  br i1 %84, label %85, label %105, !dbg !1405

85:                                               ; preds = %73
  call void @llvm.dbg.value(metadata ptr %76, metadata !1406, metadata !DIExpression()), !dbg !1412
  %86 = load i32, ptr %76, align 8, !dbg !1414, !tbaa !1415
  %87 = and i32 %86, 16, !dbg !1417
  %88 = icmp eq i32 %87, 0, !dbg !1417
  br i1 %88, label %89, label %100, !dbg !1418

89:                                               ; preds = %85
  %90 = icmp sgt i64 %83, 0, !dbg !1419
  br i1 %90, label %91, label %94, !dbg !1421

91:                                               ; preds = %89
  %92 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %75, !dbg !1422
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !1424, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata ptr %92, metadata !1430, metadata !DIExpression()), !dbg !1432
  call void @llvm.dbg.value(metadata i64 %83, metadata !1431, metadata !DIExpression()), !dbg !1432
  %93 = call ptr @__memmove_chk(ptr noundef nonnull @unexpand.line_in, ptr noundef nonnull %92, i64 noundef %83, i64 noundef 262144) #37, !dbg !1434
  call void @llvm.dbg.value(metadata i64 %83, metadata !1397, metadata !DIExpression()), !dbg !1435
  br label %94

94:                                               ; preds = %91, %89
  %95 = phi i64 [ %83, %91 ], [ 0, %89 ], !dbg !1436
  call void @llvm.dbg.value(metadata i64 %95, metadata !1397, metadata !DIExpression()), !dbg !1435
  %96 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %95, !dbg !1437
  %97 = sub nuw nsw i64 262144, %95, !dbg !1437
  %98 = call i64 @fread_unlocked(ptr noundef nonnull %96, i64 noundef 1, i64 noundef %97, ptr noundef nonnull %76), !dbg !1437
  %99 = add i64 %98, %95, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %99, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %99, metadata !1396, metadata !DIExpression()), !dbg !1401
  br label %100, !dbg !1439

100:                                              ; preds = %94, %85
  %101 = phi i64 [ %99, %94 ], [ %74, %85 ], !dbg !1365
  %102 = phi i64 [ 0, %94 ], [ %75, %85 ], !dbg !1365
  %103 = phi i64 [ %99, %94 ], [ %83, %85 ], !dbg !1401
  call void @llvm.dbg.value(metadata i64 %102, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %101, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %103, metadata !1396, metadata !DIExpression()), !dbg !1401
  %104 = icmp slt i64 %103, 1, !dbg !1440
  br i1 %104, label %151, label %105, !dbg !1442

105:                                              ; preds = %100, %73
  %106 = phi i64 [ %101, %100 ], [ %74, %73 ], !dbg !1365
  %107 = phi i64 [ %102, %100 ], [ %75, %73 ], !dbg !1365
  call void @llvm.dbg.value(metadata i64 %107, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %106, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1365
  %108 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %107, !dbg !1443
  call void @llvm.dbg.value(metadata ptr %108, metadata !1444, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1449, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1464
  %109 = load i8, ptr %108, align 1, !dbg !1466, !tbaa !1171
  call void @llvm.dbg.value(metadata i8 %109, metadata !1450, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i8 %109, metadata !1467, metadata !DIExpression()), !dbg !1472
  %110 = icmp sgt i8 %109, -1, !dbg !1475
  br i1 %110, label %132, label %111, !dbg !1476

111:                                              ; preds = %105
  call void @llvm.dbg.value(metadata !DIArgList(ptr @unexpand.line_in, i64 %106), metadata !1449, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1464
  %112 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %106, !dbg !1477
  call void @llvm.dbg.value(metadata ptr %112, metadata !1449, metadata !DIExpression()), !dbg !1464
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #37, !dbg !1478
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1451, metadata !DIExpression()), !dbg !1479
  store i32 0, ptr %3, align 4, !dbg !1480, !tbaa !1481
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #37, !dbg !1483
  %113 = ptrtoint ptr %112 to i64, !dbg !1484
  %114 = ptrtoint ptr %108 to i64, !dbg !1484
  %115 = sub i64 %113, %114, !dbg !1484
  call void @llvm.dbg.value(metadata ptr %4, metadata !1462, metadata !DIExpression(DW_OP_deref)), !dbg !1464
  %116 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %108, i64 noundef %115, ptr noundef nonnull %3) #37, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %116, metadata !1463, metadata !DIExpression()), !dbg !1464
  %117 = icmp slt i64 %116, 0, !dbg !1486
  br i1 %117, label %126, label %118, !dbg !1488, !prof !1489

118:                                              ; preds = %111
  %119 = load i32, ptr %4, align 4, !dbg !1490, !tbaa !1162
  call void @llvm.dbg.value(metadata i32 %119, metadata !1462, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i32 %119, metadata !1491, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %116, metadata !1496, metadata !DIExpression()), !dbg !1497
  %120 = icmp ne i64 %116, 0, !dbg !1499
  call void @llvm.assume(i1 %120), !dbg !1499
  %121 = icmp ult i64 %116, 5, !dbg !1500
  call void @llvm.assume(i1 %121), !dbg !1500
  %122 = icmp ult i32 %119, 1114112, !dbg !1501
  call void @llvm.assume(i1 %122), !dbg !1501
  %123 = shl nuw nsw i64 %116, 40, !dbg !1502
  %124 = zext i32 %119 to i64, !dbg !1502
  %125 = or i64 %123, %124, !dbg !1502
  br label %130, !dbg !1503

126:                                              ; preds = %111
  call void @llvm.dbg.value(metadata i8 %109, metadata !1504, metadata !DIExpression()), !dbg !1509
  %127 = zext i8 %109 to i64, !dbg !1511
  %128 = shl nuw nsw i64 %127, 32, !dbg !1511
  %129 = or i64 %128, 1099511627776, !dbg !1511
  br label %130, !dbg !1512

130:                                              ; preds = %126, %118
  %131 = phi i64 [ %129, %126 ], [ %125, %118 ], !dbg !1464
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #37, !dbg !1513
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #37, !dbg !1513
  br label %135

132:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i64 1, metadata !1496, metadata !DIExpression()), !dbg !1514
  %133 = zext i8 %109 to i64, !dbg !1516
  call void @llvm.dbg.value(metadata i64 %133, metadata !1491, metadata !DIExpression()), !dbg !1514
  %134 = or i64 %133, 1099511627776, !dbg !1516
  br label %135, !dbg !1517

135:                                              ; preds = %132, %130
  %136 = phi i64 [ %134, %132 ], [ %131, %130 ], !dbg !1464
  call void @llvm.dbg.value(metadata i64 %136, metadata !1400, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %136, metadata !1400, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %136, metadata !1400, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %136, metadata !1400, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1401
  %137 = and i64 %136, 1095216660480, !dbg !1518
  %138 = icmp eq i64 %137, 0, !dbg !1518
  br i1 %138, label %142, label %139, !dbg !1520

139:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 %107, metadata !361, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1365
  %140 = load i8, ptr %108, align 1, !dbg !1521, !tbaa !1171
  %141 = zext i8 %140 to i64, !dbg !1523
  call void @llvm.dbg.value(metadata i8 %140, metadata !1400, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1401
  br label %144

142:                                              ; preds = %135
  %143 = lshr i64 %136, 40, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %143, metadata !1400, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %136, metadata !1400, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1401
  call void @llvm.dbg.value(metadata !DIArgList(i64 %107, i64 %143), metadata !361, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1365
  br label %144, !dbg !1525

144:                                              ; preds = %142, %139
  %145 = phi i64 [ %143, %142 ], [ 1, %139 ]
  %146 = phi i64 [ %136, %142 ], [ %141, %139 ], !dbg !1401
  %147 = add nsw i64 %145, %107, !dbg !1526
  call void @llvm.dbg.value(metadata i64 %147, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i32 poison, metadata !1400, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1401
  %148 = and i64 %136, -4294967296, !dbg !1527
  call void @llvm.dbg.value(metadata i64 %106, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i16 poison, metadata !1400, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1401
  call void @llvm.dbg.value(metadata i32 poison, metadata !1400, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1400, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1400, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %146, metadata !374, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %148, metadata !374, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %148, metadata !374, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1387
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !374, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1387
  %149 = and i64 %146, 4294967295, !dbg !1528
  %150 = icmp eq i64 %149, 4294967295, !dbg !1528
  br i1 %150, label %151, label %209, !dbg !1529

151:                                              ; preds = %144, %100
  %152 = phi i64 [ %148, %144 ], [ 0, %100 ]
  %153 = phi i64 [ %146, %144 ], [ 4294967295, %100 ]
  %154 = phi i64 [ %147, %144 ], [ %102, %100 ]
  %155 = phi i64 [ %106, %144 ], [ %101, %100 ]
  %156 = call ptr @next_file(ptr noundef %82) #37, !dbg !1530
  call void @llvm.dbg.value(metadata ptr %156, metadata !359, metadata !DIExpression()), !dbg !1365
  %157 = icmp eq ptr %156, null, !dbg !1529
  br i1 %157, label %209, label %158, !dbg !1531

158:                                              ; preds = %151, %202
  %159 = phi ptr [ %207, %202 ], [ %156, %151 ], !dbg !1365
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata ptr %159, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 262144, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata ptr %159, metadata !359, metadata !DIExpression()), !dbg !1365
  call void @llvm.dbg.value(metadata ptr undef, metadata !1391, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata i64 0, metadata !1396, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.value(metadata ptr %159, metadata !1406, metadata !DIExpression()), !dbg !1412
  %160 = load i32, ptr %159, align 8, !dbg !1414, !tbaa !1415
  %161 = and i32 %160, 16, !dbg !1417
  %162 = icmp eq i32 %161, 0, !dbg !1417
  br i1 %162, label %163, label %202, !dbg !1418

163:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i64 0, metadata !1397, metadata !DIExpression()), !dbg !1435
  %164 = call i64 @fread_unlocked(ptr noundef nonnull @unexpand.line_in, i64 noundef 1, i64 noundef 262144, ptr noundef nonnull %159), !dbg !1437
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %164, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %164, metadata !1396, metadata !DIExpression()), !dbg !1401
  %165 = icmp slt i64 %164, 1, !dbg !1440
  br i1 %165, label %202, label %166, !dbg !1442

166:                                              ; preds = %163
  call void @llvm.dbg.value(metadata i64 0, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i64 %164, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata ptr @unexpand.line_in, metadata !1444, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1449, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1464
  %167 = load i8, ptr @unexpand.line_in, align 4, !dbg !1466, !tbaa !1171
  call void @llvm.dbg.value(metadata i8 %167, metadata !1450, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i8 %167, metadata !1467, metadata !DIExpression()), !dbg !1472
  %168 = icmp sgt i8 %167, -1, !dbg !1475
  br i1 %168, label %169, label %172, !dbg !1476

169:                                              ; preds = %166
  call void @llvm.dbg.value(metadata i64 1, metadata !1496, metadata !DIExpression()), !dbg !1514
  %170 = zext i8 %167 to i64, !dbg !1516
  call void @llvm.dbg.value(metadata i64 %170, metadata !1491, metadata !DIExpression()), !dbg !1514
  %171 = or i64 %170, 1099511627776, !dbg !1516
  br label %191, !dbg !1517

172:                                              ; preds = %166
  call void @llvm.dbg.value(metadata !DIArgList(ptr @unexpand.line_in, i64 %164), metadata !1449, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1464
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #37, !dbg !1478
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1451, metadata !DIExpression()), !dbg !1479
  store i32 0, ptr %3, align 4, !dbg !1480, !tbaa !1481
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #37, !dbg !1483
  call void @llvm.dbg.value(metadata ptr %4, metadata !1462, metadata !DIExpression(DW_OP_deref)), !dbg !1464
  %173 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull @unexpand.line_in, i64 noundef %164, ptr noundef nonnull %3) #37, !dbg !1485
  call void @llvm.dbg.value(metadata i64 %173, metadata !1463, metadata !DIExpression()), !dbg !1464
  %174 = icmp slt i64 %173, 0, !dbg !1486
  br i1 %174, label %175, label %179, !dbg !1488, !prof !1489

175:                                              ; preds = %172
  call void @llvm.dbg.value(metadata i8 %167, metadata !1504, metadata !DIExpression()), !dbg !1509
  %176 = zext i8 %167 to i64, !dbg !1511
  %177 = shl nuw nsw i64 %176, 32, !dbg !1511
  %178 = or i64 %177, 1099511627776, !dbg !1511
  br label %187, !dbg !1512

179:                                              ; preds = %172
  %180 = load i32, ptr %4, align 4, !dbg !1490, !tbaa !1162
  call void @llvm.dbg.value(metadata i32 %180, metadata !1462, metadata !DIExpression()), !dbg !1464
  call void @llvm.dbg.value(metadata i32 %180, metadata !1491, metadata !DIExpression()), !dbg !1497
  call void @llvm.dbg.value(metadata i64 %173, metadata !1496, metadata !DIExpression()), !dbg !1497
  %181 = icmp ne i64 %173, 0, !dbg !1499
  call void @llvm.assume(i1 %181), !dbg !1499
  %182 = icmp ult i64 %173, 5, !dbg !1500
  call void @llvm.assume(i1 %182), !dbg !1500
  %183 = icmp ult i32 %180, 1114112, !dbg !1501
  call void @llvm.assume(i1 %183), !dbg !1501
  %184 = shl nuw nsw i64 %173, 40, !dbg !1502
  %185 = zext i32 %180 to i64, !dbg !1502
  %186 = or i64 %184, %185, !dbg !1502
  br label %187, !dbg !1503

187:                                              ; preds = %179, %175
  %188 = phi i64 [ %178, %175 ], [ %186, %179 ], !dbg !1464
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #37, !dbg !1513
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #37, !dbg !1513
  %189 = load i8, ptr @unexpand.line_in, align 4, !dbg !1520
  %190 = zext i8 %189 to i64, !dbg !1520
  br label %191

191:                                              ; preds = %187, %169
  %192 = phi i64 [ %190, %187 ], [ %170, %169 ], !dbg !1520
  %193 = phi i64 [ %188, %187 ], [ %171, %169 ], !dbg !1464
  call void @llvm.dbg.value(metadata i64 %193, metadata !1400, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %193, metadata !1400, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %193, metadata !1400, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %193, metadata !1400, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1401
  %194 = and i64 %193, 1095216660480, !dbg !1518
  %195 = icmp eq i64 %194, 0, !dbg !1518
  %196 = lshr i64 %193, 40, !dbg !1520
  %197 = select i1 %195, i64 %196, i64 1, !dbg !1520
  %198 = select i1 %195, i64 %193, i64 %192, !dbg !1520
  call void @llvm.dbg.value(metadata i64 %197, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i32 poison, metadata !1400, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1401
  %199 = and i64 %193, -4294967296, !dbg !1527
  call void @llvm.dbg.value(metadata i64 %164, metadata !361, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1365
  call void @llvm.dbg.value(metadata i16 poison, metadata !1400, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1401
  call void @llvm.dbg.value(metadata i32 poison, metadata !1400, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1400, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1401
  call void @llvm.dbg.value(metadata i8 poison, metadata !1400, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1401
  call void @llvm.dbg.value(metadata i64 %198, metadata !374, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %199, metadata !374, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %199, metadata !374, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1387
  call void @llvm.dbg.value(metadata !DIArgList(i64 poison, i64 poison), metadata !374, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1387
  %200 = and i64 %198, 4294967295, !dbg !1528
  %201 = icmp eq i64 %200, 4294967295, !dbg !1528
  br i1 %201, label %202, label %209, !dbg !1529

202:                                              ; preds = %191, %163, %158
  %203 = phi i64 [ %199, %191 ], [ 0, %163 ], [ 0, %158 ]
  %204 = phi i64 [ %198, %191 ], [ 4294967295, %163 ], [ 4294967295, %158 ]
  %205 = phi i64 [ %197, %191 ], [ 0, %163 ], [ 0, %158 ]
  %206 = phi i64 [ %164, %191 ], [ %164, %163 ], [ 0, %158 ]
  %207 = call ptr @next_file(ptr noundef nonnull %159) #37, !dbg !1530
  call void @llvm.dbg.value(metadata ptr %207, metadata !359, metadata !DIExpression()), !dbg !1365
  %208 = icmp eq ptr %207, null, !dbg !1529
  br i1 %208, label %209, label %158, !dbg !1531, !llvm.loop !1532

209:                                              ; preds = %202, %191, %151, %144
  %210 = phi i64 [ %106, %144 ], [ %155, %151 ], [ %164, %191 ], [ %206, %202 ], !dbg !1535
  %211 = phi i64 [ %147, %144 ], [ %154, %151 ], [ %197, %191 ], [ %205, %202 ], !dbg !1401
  %212 = phi i64 [ %146, %144 ], [ %153, %151 ], [ %198, %191 ], [ %204, %202 ], !dbg !1401
  %213 = phi i64 [ %148, %144 ], [ %152, %151 ], [ %199, %191 ], [ %203, %202 ], !dbg !1536
  %214 = phi i1 [ false, %144 ], [ true, %151 ], [ false, %191 ], [ true, %202 ], !dbg !1528
  %215 = phi ptr [ %76, %144 ], [ %76, %151 ], [ %159, %191 ], [ %159, %202 ], !dbg !1365
  %216 = phi ptr [ %82, %144 ], [ null, %151 ], [ %159, %191 ], [ null, %202 ], !dbg !1365
  %217 = trunc i64 %212 to i32, !dbg !1537
  %218 = lshr i64 %213, 40, !dbg !1537
  call void @llvm.dbg.value(metadata ptr %216, metadata !359, metadata !DIExpression()), !dbg !1365
  br i1 %81, label %219, label %323, !dbg !1538

219:                                              ; preds = %209
  call void @llvm.dbg.value(metadata i32 %217, metadata !1539, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i32 %217, metadata !1546, metadata !DIExpression()), !dbg !1554
  %220 = call i32 @iswblank(i32 noundef %217) #37, !dbg !1556
  %221 = icmp ne i32 %220, 0, !dbg !1557
  call void @llvm.dbg.value(metadata i1 %221, metadata !398, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1558
  br i1 %221, label %222, label %266, !dbg !1559

222:                                              ; preds = %219
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #37, !dbg !1560
  call void @llvm.dbg.value(metadata ptr %5, metadata !394, metadata !DIExpression(DW_OP_deref)), !dbg !1387
  call void @llvm.dbg.value(metadata ptr %6, metadata !402, metadata !DIExpression(DW_OP_deref)), !dbg !1561
  %223 = call i64 @get_next_tab_column(i64 noundef %80, ptr noundef nonnull %5, ptr noundef nonnull %6) #37, !dbg !1562
  call void @llvm.dbg.value(metadata i64 %223, metadata !393, metadata !DIExpression()), !dbg !1387
  %224 = load i8, ptr %6, align 4, !dbg !1563, !tbaa !1334, !range !1565, !noundef !1101
  call void @llvm.dbg.value(metadata i8 %224, metadata !402, metadata !DIExpression()), !dbg !1561
  %225 = icmp eq i8 %224, 0, !dbg !1563
  call void @llvm.dbg.value(metadata i8 poison, metadata !386, metadata !DIExpression()), !dbg !1387
  br i1 %225, label %226, label %262, !dbg !1566

226:                                              ; preds = %222
  %227 = icmp eq i32 %217, 9, !dbg !1567
  br i1 %227, label %228, label %230, !dbg !1571

228:                                              ; preds = %226
  call void @llvm.dbg.value(metadata i64 %223, metadata !387, metadata !DIExpression()), !dbg !1387
  %229 = icmp eq i64 %77, 0, !dbg !1572
  br i1 %229, label %259, label %257, !dbg !1575

230:                                              ; preds = %226
  call void @llvm.dbg.value(metadata i32 %217, metadata !1576, metadata !DIExpression()), !dbg !1581
  %231 = call i32 @wcwidth(i32 noundef %217) #37, !dbg !1584
  %232 = sext i32 %231 to i64, !dbg !1585
  %233 = add nsw i64 %80, %232, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %233, metadata !387, metadata !DIExpression()), !dbg !1387
  %234 = icmp eq i64 %233, %223
  %235 = select i1 %78, i1 %234, i1 false, !dbg !1587
  br i1 %235, label %236, label %316, !dbg !1587

236:                                              ; preds = %230
  call void @llvm.dbg.value(metadata i8 0, metadata !374, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1387
  %237 = load ptr, ptr @stdout, align 8, !dbg !1589, !tbaa !1092
  call void @llvm.dbg.value(metadata i32 9, metadata !1591, metadata !DIExpression()), !dbg !1597
  call void @llvm.dbg.value(metadata ptr %237, metadata !1596, metadata !DIExpression()), !dbg !1597
  %238 = getelementptr inbounds %struct._IO_FILE, ptr %237, i64 0, i32 5, !dbg !1599
  %239 = load ptr, ptr %238, align 8, !dbg !1599, !tbaa !1600
  %240 = getelementptr inbounds %struct._IO_FILE, ptr %237, i64 0, i32 6, !dbg !1599
  %241 = load ptr, ptr %240, align 8, !dbg !1599, !tbaa !1601
  %242 = icmp ult ptr %239, %241, !dbg !1599
  br i1 %242, label %243, label %245, !dbg !1599, !prof !1602

243:                                              ; preds = %236
  %244 = getelementptr inbounds i8, ptr %239, i64 1, !dbg !1599
  store ptr %244, ptr %238, align 8, !dbg !1599, !tbaa !1600
  store i8 9, ptr %239, align 1, !dbg !1599, !tbaa !1171
  br label %257, !dbg !1603

245:                                              ; preds = %236
  %246 = call i32 @__overflow(ptr noundef nonnull %237, i32 noundef 9) #37, !dbg !1599
  %247 = icmp slt i32 %246, 0, !dbg !1604
  br i1 %247, label %248, label %257, !dbg !1603

248:                                              ; preds = %245
  %249 = tail call ptr @__errno_location() #40, !dbg !1605
  %250 = load i32, ptr %249, align 4, !dbg !1605, !tbaa !1162
  call void @llvm.dbg.value(metadata i32 %250, metadata !1608, metadata !DIExpression()), !dbg !1610
  %251 = load ptr, ptr @stdout, align 8, !dbg !1611, !tbaa !1092
  %252 = call i32 @fflush_unlocked(ptr noundef %251) #37, !dbg !1611
  %253 = load ptr, ptr @stdout, align 8, !dbg !1612, !tbaa !1092
  %254 = call i32 @fpurge(ptr noundef %253) #37, !dbg !1613
  %255 = load ptr, ptr @stdout, align 8, !dbg !1614, !tbaa !1092
  call void @clearerr_unlocked(ptr noundef %255) #37, !dbg !1614
  %256 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #37, !dbg !1615
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %250, ptr noundef %256) #37, !dbg !1615
  unreachable, !dbg !1615

257:                                              ; preds = %245, %243, %228
  %258 = phi i64 [ %218, %228 ], [ 0, %243 ], [ 0, %245 ]
  store i8 9, ptr %67, align 1, !dbg !1616, !tbaa !1171
  br label %259, !dbg !1617

259:                                              ; preds = %257, %228
  %260 = phi i64 [ %218, %228 ], [ %258, %257 ], !dbg !1618
  call void @llvm.dbg.value(metadata i8 poison, metadata !374, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %223, metadata !387, metadata !DIExpression()), !dbg !1387
  %261 = zext i1 %79 to i64, !dbg !1617
  call void @llvm.dbg.value(metadata i64 %261, metadata !397, metadata !DIExpression()), !dbg !1387
  br label %262, !dbg !1619

262:                                              ; preds = %259, %222
  %263 = phi i64 [ %77, %222 ], [ %261, %259 ]
  %264 = phi i64 [ %80, %222 ], [ %223, %259 ]
  %265 = phi i64 [ %218, %222 ], [ %260, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !374, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %264, metadata !387, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 poison, metadata !395, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 poison, metadata !396, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %263, metadata !397, metadata !DIExpression()), !dbg !1387
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #37, !dbg !1620
  br label %287

266:                                              ; preds = %219
  %267 = icmp eq i32 %217, 8, !dbg !1621
  br i1 %267, label %268, label %276, !dbg !1622

268:                                              ; preds = %266
  %269 = icmp ne i64 %80, 0, !dbg !1623
  %270 = sext i1 %269 to i64
  %271 = add i64 %80, %270, !dbg !1625
  call void @llvm.dbg.value(metadata i64 %271, metadata !387, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %271, metadata !393, metadata !DIExpression()), !dbg !1387
  %272 = load i64, ptr %5, align 8, !dbg !1626, !tbaa !1381
  call void @llvm.dbg.value(metadata i64 %272, metadata !394, metadata !DIExpression()), !dbg !1387
  %273 = icmp ne i64 %272, 0, !dbg !1627
  %274 = sext i1 %273 to i64
  %275 = add i64 %272, %274, !dbg !1628
  call void @llvm.dbg.value(metadata i64 %275, metadata !394, metadata !DIExpression()), !dbg !1387
  store i64 %275, ptr %5, align 8, !dbg !1628, !tbaa !1381
  br label %287, !dbg !1629

276:                                              ; preds = %266
  call void @llvm.dbg.value(metadata i32 %217, metadata !1576, metadata !DIExpression()), !dbg !1630
  %277 = call i32 @wcwidth(i32 noundef %217) #37, !dbg !1632
  call void @llvm.dbg.value(metadata i32 %277, metadata !405, metadata !DIExpression()), !dbg !1633
  %278 = icmp slt i32 %277, 0, !dbg !1634
  %279 = select i1 %278, i32 1, i32 %277, !dbg !1634
  %280 = zext i32 %279 to i64, !dbg !1634
  %281 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %80, i64 %280), !dbg !1634
  %282 = extractvalue { i64, i1 } %281, 1, !dbg !1634
  call void @llvm.dbg.value(metadata i64 poison, metadata !387, metadata !DIExpression()), !dbg !1387
  br i1 %282, label %283, label %285, !dbg !1636

283:                                              ; preds = %276
  %284 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.58, i32 noundef 5) #37, !dbg !1637
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %284) #37, !dbg !1637
  unreachable, !dbg !1637

285:                                              ; preds = %276
  %286 = extractvalue { i64, i1 } %281, 0, !dbg !1634
  call void @llvm.dbg.value(metadata i64 %286, metadata !387, metadata !DIExpression()), !dbg !1387
  br label %287

287:                                              ; preds = %285, %268, %262
  %288 = phi i64 [ %77, %268 ], [ %77, %285 ], [ %263, %262 ], !dbg !1387
  %289 = phi i64 [ %271, %268 ], [ %286, %285 ], [ %264, %262 ], !dbg !1638
  %290 = phi i1 [ true, %268 ], [ true, %285 ], [ %225, %262 ]
  %291 = phi i64 [ %218, %268 ], [ %218, %285 ], [ %265, %262 ], !dbg !1537
  call void @llvm.dbg.value(metadata i8 poison, metadata !374, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1387
  call void @llvm.dbg.value(metadata i8 poison, metadata !386, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %289, metadata !387, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 poison, metadata !395, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %288, metadata !397, metadata !DIExpression()), !dbg !1387
  %292 = icmp eq i64 %288, 0, !dbg !1639
  br i1 %292, label %310, label %293, !dbg !1640

293:                                              ; preds = %287
  %294 = icmp sgt i64 %288, 1, !dbg !1641
  %295 = select i1 %294, i1 %79, i1 false, !dbg !1643
  br i1 %295, label %296, label %297, !dbg !1643

296:                                              ; preds = %293
  store i8 9, ptr %67, align 1, !dbg !1644, !tbaa !1171
  br label %297, !dbg !1645

297:                                              ; preds = %293, %296
  %298 = load ptr, ptr @stdout, align 8, !dbg !1646, !tbaa !1092
  %299 = call i64 @fwrite_unlocked(ptr noundef nonnull %67, i64 noundef 1, i64 noundef %288, ptr noundef %298), !dbg !1646
  %300 = icmp eq i64 %299, %288, !dbg !1647
  br i1 %300, label %310, label %301, !dbg !1648

301:                                              ; preds = %297
  %302 = tail call ptr @__errno_location() #40, !dbg !1649
  %303 = load i32, ptr %302, align 4, !dbg !1649, !tbaa !1162
  call void @llvm.dbg.value(metadata i32 %303, metadata !1608, metadata !DIExpression()), !dbg !1651
  %304 = load ptr, ptr @stdout, align 8, !dbg !1652, !tbaa !1092
  %305 = call i32 @fflush_unlocked(ptr noundef %304) #37, !dbg !1652
  %306 = load ptr, ptr @stdout, align 8, !dbg !1653, !tbaa !1092
  %307 = call i32 @fpurge(ptr noundef %306) #37, !dbg !1654
  %308 = load ptr, ptr @stdout, align 8, !dbg !1655, !tbaa !1092
  call void @clearerr_unlocked(ptr noundef %308) #37, !dbg !1655
  %309 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #37, !dbg !1656
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %303, ptr noundef %309) #37, !dbg !1656
  unreachable, !dbg !1656

310:                                              ; preds = %297, %287
  %311 = phi i1 [ %79, %287 ], [ false, %297 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !395, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 0, metadata !397, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i1 %221, metadata !396, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1387
  %312 = load i8, ptr @convert_entire_line, align 1, !dbg !1657, !tbaa !1334, !range !1565, !noundef !1101
  %313 = icmp ne i8 %312, 0, !dbg !1657
  %314 = or i1 %221, %313, !dbg !1658
  %315 = and i1 %290, %314, !dbg !1659
  call void @llvm.dbg.value(metadata i8 poison, metadata !374, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1387
  call void @llvm.dbg.value(metadata i8 poison, metadata !386, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %289, metadata !387, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 poison, metadata !396, metadata !DIExpression()), !dbg !1387
  br label %323

316:                                              ; preds = %230
  %317 = select i1 %234, i1 true, i1 %79, !dbg !1660
  call void @llvm.dbg.value(metadata i8 poison, metadata !395, metadata !DIExpression()), !dbg !1387
  %318 = getelementptr inbounds i8, ptr %67, i64 %77, !dbg !1662
  call void @llvm.dbg.value(metadata !DIArgList(i64 %213, i64 0), metadata !1663, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1669
  call void @llvm.dbg.value(metadata i64 %218, metadata !1663, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1669
  call void @llvm.dbg.value(metadata !DIArgList(i64 %213, i64 0), metadata !1663, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1669
  call void @llvm.dbg.value(metadata ptr undef, metadata !1668, metadata !DIExpression()), !dbg !1669
  %319 = icmp sge i64 %211, %218, !dbg !1671
  call void @llvm.assume(i1 %319), !dbg !1673
  %320 = sub nsw i64 %211, %218, !dbg !1674
  %321 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %320, !dbg !1675
  call void @llvm.dbg.value(metadata ptr %318, metadata !1676, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata ptr %321, metadata !1682, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i64 %218, metadata !1683, metadata !DIExpression()), !dbg !1684
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %318, ptr noundef nonnull align 1 %321, i64 noundef %218, i1 noundef false) #37, !dbg !1686
  %322 = add nsw i64 %218, %77, !dbg !1687
  call void @llvm.dbg.value(metadata i64 %218, metadata !374, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %233, metadata !387, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 poison, metadata !396, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %322, metadata !397, metadata !DIExpression()), !dbg !1387
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #37, !dbg !1620
  call void @llvm.dbg.value(metadata i8 poison, metadata !386, metadata !DIExpression()), !dbg !1387
  br label %350

323:                                              ; preds = %310, %209
  %324 = phi i64 [ %77, %209 ], [ 0, %310 ], !dbg !1387
  %325 = phi i1 [ %78, %209 ], [ %221, %310 ]
  %326 = phi i1 [ %79, %209 ], [ %311, %310 ]
  %327 = phi i64 [ %80, %209 ], [ %289, %310 ], !dbg !1387
  %328 = phi i1 [ false, %209 ], [ %315, %310 ]
  %329 = phi i64 [ %218, %209 ], [ %291, %310 ], !dbg !1537
  call void @llvm.dbg.value(metadata i8 poison, metadata !374, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1387
  call void @llvm.dbg.value(metadata i8 poison, metadata !386, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %327, metadata !387, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 poison, metadata !395, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 poison, metadata !396, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %324, metadata !397, metadata !DIExpression()), !dbg !1387
  br i1 %214, label %330, label %331, !dbg !1688

330:                                              ; preds = %323
  call void @free(ptr noundef nonnull %67) #37, !dbg !1689
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !1692
  br label %358

331:                                              ; preds = %323
  %332 = and i64 %329, 255, !dbg !1693
  call void @llvm.dbg.value(metadata !DIArgList(i32 0, i64 %332), metadata !1663, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 0, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %332, metadata !1663, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1694
  call void @llvm.dbg.value(metadata !DIArgList(i32 0, i64 %332), metadata !1663, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 8, DW_OP_shl, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_constu, 0, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1694
  call void @llvm.dbg.value(metadata ptr undef, metadata !1668, metadata !DIExpression()), !dbg !1694
  %333 = icmp sge i64 %211, %332, !dbg !1696
  call void @llvm.assume(i1 %333), !dbg !1697
  %334 = sub nsw i64 %211, %332, !dbg !1698
  %335 = getelementptr inbounds i8, ptr @unexpand.line_in, i64 %334, !dbg !1699
  %336 = load ptr, ptr @stdout, align 8, !dbg !1693, !tbaa !1092
  %337 = call i64 @fwrite_unlocked(ptr noundef nonnull %335, i64 noundef 1, i64 noundef %332, ptr noundef %336), !dbg !1693
  %338 = load ptr, ptr @stdout, align 8, !dbg !1700, !tbaa !1092
  call void @llvm.dbg.value(metadata ptr %338, metadata !1702, metadata !DIExpression()), !dbg !1705
  %339 = load i32, ptr %338, align 8, !dbg !1707, !tbaa !1415
  %340 = and i32 %339, 32, !dbg !1700
  %341 = icmp eq i32 %340, 0, !dbg !1700
  br i1 %341, label %350, label %342, !dbg !1708

342:                                              ; preds = %331
  %343 = tail call ptr @__errno_location() #40, !dbg !1709
  %344 = load i32, ptr %343, align 4, !dbg !1709, !tbaa !1162
  call void @llvm.dbg.value(metadata i32 %344, metadata !1608, metadata !DIExpression()), !dbg !1711
  %345 = call i32 @fflush_unlocked(ptr noundef nonnull %338) #37, !dbg !1712
  %346 = load ptr, ptr @stdout, align 8, !dbg !1713, !tbaa !1092
  %347 = call i32 @fpurge(ptr noundef %346) #37, !dbg !1714
  %348 = load ptr, ptr @stdout, align 8, !dbg !1715, !tbaa !1092
  call void @clearerr_unlocked(ptr noundef %348) #37, !dbg !1715
  %349 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.59, i32 noundef 5) #37, !dbg !1716
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %344, ptr noundef %349) #37, !dbg !1716
  unreachable, !dbg !1716

350:                                              ; preds = %331, %316
  %351 = phi i64 [ %322, %316 ], [ %324, %331 ], !dbg !1717
  %352 = phi i1 [ true, %316 ], [ %325, %331 ]
  %353 = phi i1 [ %317, %316 ], [ %326, %331 ]
  %354 = phi i64 [ %233, %316 ], [ %327, %331 ], !dbg !1718
  %355 = phi i1 [ true, %316 ], [ %328, %331 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !386, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %354, metadata !387, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 poison, metadata !395, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i8 poison, metadata !396, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i64 %351, metadata !397, metadata !DIExpression()), !dbg !1387
  %356 = icmp eq i32 %217, 10, !dbg !1719
  br i1 %356, label %357, label %73, !dbg !1720, !llvm.loop !1721

357:                                              ; preds = %350
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !1692
  br label %68, !llvm.loop !1723

358:                                              ; preds = %56, %330
  call void @cleanup_file_list_stdin() #37, !dbg !1724
  %359 = load i32, ptr @exit_status, align 4, !dbg !1725, !tbaa !1162
  ret i32 %359, !dbg !1726
}

; Function Attrs: nounwind
declare !dbg !1727 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1730 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1731 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1734 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1740 ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1744 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nounwind
declare !dbg !1751 i32 @iswblank(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1753 i32 @wcwidth(i32 noundef) local_unnamed_addr #2

declare !dbg !1758 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1761 ptr @__errno_location() local_unnamed_addr #9

declare !dbg !1765 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1766 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1769 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local void @add_tab_stop(i64 noundef %0) local_unnamed_addr #10 !dbg !1772 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1776, metadata !DIExpression()), !dbg !1779
  %2 = load i64, ptr @first_free_tab, align 8, !dbg !1780, !tbaa !1381
  %3 = icmp eq i64 %2, 0, !dbg !1780
  br i1 %3, label %9, label %4, !dbg !1780

4:                                                ; preds = %1
  %5 = load ptr, ptr @tab_list, align 8, !dbg !1781, !tbaa !1092
  %6 = add nsw i64 %2, -1, !dbg !1782
  %7 = getelementptr inbounds i64, ptr %5, i64 %6, !dbg !1781
  %8 = load i64, ptr %7, align 8, !dbg !1781, !tbaa !1381
  br label %9, !dbg !1780

9:                                                ; preds = %1, %4
  %10 = phi i64 [ %8, %4 ], [ 0, %1 ], !dbg !1780
  call void @llvm.dbg.value(metadata i64 %10, metadata !1777, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i64 poison, metadata !1778, metadata !DIExpression()), !dbg !1779
  %11 = load i64, ptr @n_tabs_allocated, align 8, !dbg !1783, !tbaa !1381
  %12 = icmp eq i64 %2, %11, !dbg !1785
  %13 = load ptr, ptr @tab_list, align 8, !dbg !1779, !tbaa !1092
  br i1 %12, label %14, label %17, !dbg !1786

14:                                               ; preds = %9
  %15 = tail call nonnull ptr @xpalloc(ptr noundef %13, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #37, !dbg !1787
  store ptr %15, ptr @tab_list, align 8, !dbg !1788, !tbaa !1092
  %16 = load i64, ptr @first_free_tab, align 8, !dbg !1789, !tbaa !1381
  br label %17, !dbg !1790

17:                                               ; preds = %9, %14
  %18 = phi i64 [ %16, %14 ], [ %2, %9 ], !dbg !1789
  %19 = phi ptr [ %15, %14 ], [ %13, %9 ], !dbg !1791
  %20 = icmp sgt i64 %10, %0, !dbg !1792
  %21 = sub nsw i64 %0, %10, !dbg !1793
  %22 = select i1 %20, i64 0, i64 %21, !dbg !1793
  call void @llvm.dbg.value(metadata i64 %22, metadata !1778, metadata !DIExpression()), !dbg !1779
  %23 = add nsw i64 %18, 1, !dbg !1789
  store i64 %23, ptr @first_free_tab, align 8, !dbg !1789, !tbaa !1381
  %24 = getelementptr inbounds i64, ptr %19, i64 %18, !dbg !1791
  store i64 %0, ptr %24, align 8, !dbg !1794, !tbaa !1381
  call void @llvm.dbg.value(metadata i64 %22, metadata !1795, metadata !DIExpression()), !dbg !1798
  %25 = load i64, ptr @max_column_width, align 8, !dbg !1800, !tbaa !1381
  %26 = icmp slt i64 %25, %22, !dbg !1802
  br i1 %26, label %27, label %28, !dbg !1803

27:                                               ; preds = %17
  store i64 %22, ptr @max_column_width, align 8, !dbg !1804
  br label %28

28:                                               ; preds = %17, %27
  ret void, !dbg !1807
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_tab_stops(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !1808 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1810, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 0, metadata !1811, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i64 0, metadata !1812, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 0, metadata !1813, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 0, metadata !1814, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata ptr null, metadata !1815, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 1, metadata !1816, metadata !DIExpression()), !dbg !1829
  br label %2, !dbg !1830

2:                                                ; preds = %108, %1
  %3 = phi i64 [ 0, %1 ], [ %109, %108 ], !dbg !1831
  %4 = phi i1 [ false, %1 ], [ %110, %108 ]
  %5 = phi i1 [ false, %1 ], [ %111, %108 ]
  %6 = phi ptr [ null, %1 ], [ %112, %108 ], !dbg !1832
  %7 = phi i1 [ true, %1 ], [ %113, %108 ]
  %8 = phi i1 [ false, %1 ], [ %114, %108 ]
  %9 = phi ptr [ %0, %1 ], [ %116, %108 ]
  call void @llvm.dbg.value(metadata ptr %9, metadata !1810, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 poison, metadata !1811, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 poison, metadata !1816, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata ptr %6, metadata !1815, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 poison, metadata !1814, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 poison, metadata !1813, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i64 %3, metadata !1812, metadata !DIExpression()), !dbg !1829
  %10 = load i8, ptr %9, align 1, !dbg !1833, !tbaa !1171
  switch i8 %10, label %11 [
    i8 0, label %117
    i8 44, label %19
  ], !dbg !1834

11:                                               ; preds = %2
  %12 = tail call ptr @__ctype_b_loc() #40, !dbg !1835
  %13 = load ptr, ptr %12, align 8, !dbg !1835, !tbaa !1092
  %14 = zext i8 %10 to i64
  %15 = getelementptr inbounds i16, ptr %13, i64 %14, !dbg !1835
  %16 = load i16, ptr %15, align 2, !dbg !1835, !tbaa !1203
  %17 = and i16 %16, 1, !dbg !1835
  %18 = icmp eq i16 %17, 0, !dbg !1835
  br i1 %18, label %68, label %19, !dbg !1836

19:                                               ; preds = %2, %11
  br i1 %8, label %20, label %108, !dbg !1837

20:                                               ; preds = %19
  br i1 %4, label %21, label %31, !dbg !1839

21:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 %3, metadata !1842, metadata !DIExpression()), !dbg !1848
  call void @llvm.dbg.value(metadata i8 1, metadata !1847, metadata !DIExpression()), !dbg !1848
  %22 = load i64, ptr @extend_size, align 8, !dbg !1853, !tbaa !1381
  %23 = icmp eq i64 %22, 0, !dbg !1853
  br i1 %23, label %26, label %24, !dbg !1855

24:                                               ; preds = %21
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12.11, i32 noundef 5) #37, !dbg !1856
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %25) #37, !dbg !1856
  call void @llvm.dbg.value(metadata i8 0, metadata !1847, metadata !DIExpression()), !dbg !1848
  br label %26, !dbg !1858

26:                                               ; preds = %24, %21
  call void @llvm.dbg.value(metadata i8 poison, metadata !1847, metadata !DIExpression()), !dbg !1848
  store i64 %3, ptr @extend_size, align 8, !dbg !1859, !tbaa !1381
  call void @llvm.dbg.value(metadata i64 %3, metadata !1795, metadata !DIExpression()), !dbg !1860
  %27 = load i64, ptr @max_column_width, align 8, !dbg !1862, !tbaa !1381
  %28 = icmp slt i64 %27, %3, !dbg !1863
  br i1 %28, label %29, label %30, !dbg !1864

29:                                               ; preds = %26
  store i64 %3, ptr @max_column_width, align 8, !dbg !1865
  br label %30

30:                                               ; preds = %26, %29
  br i1 %23, label %108, label %169, !dbg !1866

31:                                               ; preds = %20
  br i1 %5, label %32, label %42, !dbg !1867

32:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %3, metadata !1868, metadata !DIExpression()), !dbg !1872
  call void @llvm.dbg.value(metadata i8 1, metadata !1871, metadata !DIExpression()), !dbg !1872
  %33 = load i64, ptr @increment_size, align 8, !dbg !1877, !tbaa !1381
  %34 = icmp eq i64 %33, 0, !dbg !1877
  br i1 %34, label %37, label %35, !dbg !1879

35:                                               ; preds = %32
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13.12, i32 noundef 5) #37, !dbg !1880
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %36) #37, !dbg !1880
  call void @llvm.dbg.value(metadata i8 0, metadata !1871, metadata !DIExpression()), !dbg !1872
  br label %37, !dbg !1882

37:                                               ; preds = %35, %32
  call void @llvm.dbg.value(metadata i8 poison, metadata !1871, metadata !DIExpression()), !dbg !1872
  store i64 %3, ptr @increment_size, align 8, !dbg !1883, !tbaa !1381
  call void @llvm.dbg.value(metadata i64 %3, metadata !1795, metadata !DIExpression()), !dbg !1884
  %38 = load i64, ptr @max_column_width, align 8, !dbg !1886, !tbaa !1381
  %39 = icmp slt i64 %38, %3, !dbg !1887
  br i1 %39, label %40, label %41, !dbg !1888

40:                                               ; preds = %37
  store i64 %3, ptr @max_column_width, align 8, !dbg !1889
  br label %41

41:                                               ; preds = %37, %40
  br i1 %34, label %108, label %169, !dbg !1890

42:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %3, metadata !1776, metadata !DIExpression()), !dbg !1891
  %43 = load i64, ptr @first_free_tab, align 8, !dbg !1893, !tbaa !1381
  %44 = icmp eq i64 %43, 0, !dbg !1893
  %45 = load ptr, ptr @tab_list, align 8, !dbg !1891, !tbaa !1092
  br i1 %44, label %50, label %46, !dbg !1893

46:                                               ; preds = %42
  %47 = add nsw i64 %43, -1, !dbg !1894
  %48 = getelementptr inbounds i64, ptr %45, i64 %47, !dbg !1895
  %49 = load i64, ptr %48, align 8, !dbg !1895, !tbaa !1381
  br label %50, !dbg !1893

50:                                               ; preds = %42, %46
  %51 = phi i64 [ %49, %46 ], [ 0, %42 ], !dbg !1893
  call void @llvm.dbg.value(metadata i64 %51, metadata !1777, metadata !DIExpression()), !dbg !1891
  call void @llvm.dbg.value(metadata i64 poison, metadata !1778, metadata !DIExpression()), !dbg !1891
  %52 = load i64, ptr @n_tabs_allocated, align 8, !dbg !1896, !tbaa !1381
  %53 = icmp eq i64 %43, %52, !dbg !1897
  br i1 %53, label %54, label %57, !dbg !1898

54:                                               ; preds = %50
  %55 = tail call nonnull ptr @xpalloc(ptr noundef %45, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #37, !dbg !1899
  store ptr %55, ptr @tab_list, align 8, !dbg !1900, !tbaa !1092
  %56 = load i64, ptr @first_free_tab, align 8, !dbg !1901, !tbaa !1381
  br label %57, !dbg !1902

57:                                               ; preds = %54, %50
  %58 = phi i64 [ %56, %54 ], [ %43, %50 ], !dbg !1901
  %59 = phi ptr [ %55, %54 ], [ %45, %50 ], !dbg !1903
  %60 = icmp slt i64 %3, %51, !dbg !1904
  %61 = sub nsw i64 %3, %51, !dbg !1905
  %62 = select i1 %60, i64 0, i64 %61, !dbg !1905
  call void @llvm.dbg.value(metadata i64 %62, metadata !1778, metadata !DIExpression()), !dbg !1891
  %63 = add nsw i64 %58, 1, !dbg !1901
  store i64 %63, ptr @first_free_tab, align 8, !dbg !1901, !tbaa !1381
  %64 = getelementptr inbounds i64, ptr %59, i64 %58, !dbg !1903
  store i64 %3, ptr %64, align 8, !dbg !1906, !tbaa !1381
  call void @llvm.dbg.value(metadata i64 %62, metadata !1795, metadata !DIExpression()), !dbg !1907
  %65 = load i64, ptr @max_column_width, align 8, !dbg !1909, !tbaa !1381
  %66 = icmp slt i64 %65, %62, !dbg !1910
  br i1 %66, label %67, label %108, !dbg !1911

67:                                               ; preds = %57
  store i64 %62, ptr @max_column_width, align 8, !dbg !1912
  br label %108

68:                                               ; preds = %11
  switch i8 %10, label %77 [
    i8 47, label %69
    i8 43, label %73
  ], !dbg !1913

69:                                               ; preds = %68
  br i1 %8, label %70, label %108, !dbg !1914

70:                                               ; preds = %69
  %71 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.22, i32 noundef 5) #37, !dbg !1916
  %72 = tail call ptr @quote(ptr noundef nonnull %9) #37, !dbg !1916
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %71, ptr noundef %72) #37, !dbg !1916
  call void @llvm.dbg.value(metadata i8 0, metadata !1816, metadata !DIExpression()), !dbg !1829
  br label %108, !dbg !1919

73:                                               ; preds = %68
  br i1 %8, label %74, label %108, !dbg !1920

74:                                               ; preds = %73
  %75 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.23, i32 noundef 5) #37, !dbg !1922
  %76 = tail call ptr @quote(ptr noundef nonnull %9) #37, !dbg !1922
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %75, ptr noundef %76) #37, !dbg !1922
  call void @llvm.dbg.value(metadata i8 0, metadata !1816, metadata !DIExpression()), !dbg !1829
  br label %108, !dbg !1925

77:                                               ; preds = %68
  %78 = zext i8 %10 to i32, !dbg !1926
  call void @llvm.dbg.value(metadata i32 %78, metadata !1927, metadata !DIExpression()), !dbg !1933
  %79 = add nsw i32 %78, -48, !dbg !1935
  %80 = icmp ult i32 %79, 10, !dbg !1935
  br i1 %80, label %81, label %105, !dbg !1936

81:                                               ; preds = %77
  %82 = select i1 %8, i64 %3, i64 0, !dbg !1937
  %83 = select i1 %8, ptr %6, ptr %9, !dbg !1937
  call void @llvm.dbg.value(metadata i8 poison, metadata !1811, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata ptr %83, metadata !1815, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i64 %82, metadata !1812, metadata !DIExpression()), !dbg !1829
  %84 = icmp slt i64 %82, 0, !dbg !1938
  br i1 %84, label %85, label %87, !dbg !1938

85:                                               ; preds = %81
  %86 = icmp ult i64 %82, -922337203685477580, !dbg !1938
  br i1 %86, label %89, label %91, !dbg !1938

87:                                               ; preds = %81
  %88 = icmp ugt i64 %82, 922337203685477580, !dbg !1938
  br i1 %88, label %89, label %91, !dbg !1938

89:                                               ; preds = %85, %87
  %90 = mul i64 %82, 10, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %90, metadata !1812, metadata !DIExpression()), !dbg !1829
  br label %97, !dbg !1938

91:                                               ; preds = %85, %87
  call void @llvm.dbg.value(metadata i64 %82, metadata !1812, metadata !DIExpression(DW_OP_constu, 10, DW_OP_mul, DW_OP_stack_value)), !dbg !1829
  %92 = mul nsw i64 %82, 10, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %92, metadata !1812, metadata !DIExpression()), !dbg !1829
  %93 = add nsw i64 %14, -48, !dbg !1938
  %94 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %92, i64 %93), !dbg !1938
  %95 = extractvalue { i64, i1 } %94, 1, !dbg !1938
  %96 = extractvalue { i64, i1 } %94, 0, !dbg !1938
  call void @llvm.dbg.value(metadata i64 %96, metadata !1812, metadata !DIExpression()), !dbg !1829
  br i1 %95, label %97, label %108, !dbg !1939

97:                                               ; preds = %89, %91
  %98 = phi i64 [ %96, %91 ], [ %90, %89 ], !dbg !1938
  call void @llvm.dbg.value(metadata i64 %98, metadata !1812, metadata !DIExpression()), !dbg !1829
  %99 = tail call i64 @strspn(ptr noundef %83, ptr noundef nonnull @.str.2.24) #38, !dbg !1940
  call void @llvm.dbg.value(metadata i64 %99, metadata !1817, metadata !DIExpression()), !dbg !1941
  %100 = tail call noalias nonnull ptr @ximemdup0(ptr noundef %83, i64 noundef %99) #37, !dbg !1942
  call void @llvm.dbg.value(metadata ptr %100, metadata !1828, metadata !DIExpression()), !dbg !1941
  %101 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3.25, i32 noundef 5) #37, !dbg !1943
  %102 = tail call ptr @quote(ptr noundef nonnull %100) #37, !dbg !1943
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %101, ptr noundef %102) #37, !dbg !1943
  tail call void @free(ptr noundef nonnull %100) #37, !dbg !1944
  call void @llvm.dbg.value(metadata i8 0, metadata !1816, metadata !DIExpression()), !dbg !1829
  %103 = getelementptr i8, ptr %83, i64 -1, !dbg !1945
  %104 = getelementptr i8, ptr %103, i64 %99, !dbg !1946
  call void @llvm.dbg.value(metadata ptr %104, metadata !1810, metadata !DIExpression()), !dbg !1829
  br label %108, !dbg !1947

105:                                              ; preds = %77
  %106 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4.26, i32 noundef 5) #37, !dbg !1948
  %107 = tail call ptr @quote(ptr noundef nonnull %9) #37, !dbg !1948
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %106, ptr noundef %107) #37, !dbg !1948
  call void @llvm.dbg.value(metadata i8 0, metadata !1816, metadata !DIExpression()), !dbg !1829
  br label %169, !dbg !1950

108:                                              ; preds = %67, %57, %73, %74, %69, %70, %19, %41, %30, %91, %97
  %109 = phi i64 [ %98, %97 ], [ %96, %91 ], [ %3, %30 ], [ %3, %41 ], [ %3, %19 ], [ %3, %70 ], [ %3, %69 ], [ %3, %74 ], [ %3, %73 ], [ %3, %57 ], [ %3, %67 ], !dbg !1829
  %110 = phi i1 [ %4, %97 ], [ %4, %91 ], [ true, %30 ], [ false, %41 ], [ %4, %19 ], [ true, %70 ], [ true, %69 ], [ false, %74 ], [ false, %73 ], [ false, %57 ], [ false, %67 ]
  %111 = phi i1 [ %5, %97 ], [ %5, %91 ], [ %5, %30 ], [ true, %41 ], [ %5, %19 ], [ false, %70 ], [ false, %69 ], [ true, %74 ], [ true, %73 ], [ false, %57 ], [ false, %67 ]
  %112 = phi ptr [ %83, %97 ], [ %83, %91 ], [ %6, %30 ], [ %6, %41 ], [ %6, %19 ], [ %6, %70 ], [ %6, %69 ], [ %6, %74 ], [ %6, %73 ], [ %6, %57 ], [ %6, %67 ], !dbg !1832
  %113 = phi i1 [ false, %97 ], [ %7, %91 ], [ %7, %30 ], [ %7, %41 ], [ %7, %19 ], [ false, %70 ], [ %7, %69 ], [ false, %74 ], [ %7, %73 ], [ %7, %57 ], [ %7, %67 ]
  %114 = phi i1 [ true, %97 ], [ true, %91 ], [ false, %30 ], [ false, %41 ], [ false, %19 ], [ true, %70 ], [ false, %69 ], [ true, %74 ], [ false, %73 ], [ false, %57 ], [ false, %67 ]
  %115 = phi ptr [ %104, %97 ], [ %9, %91 ], [ %9, %30 ], [ %9, %41 ], [ %9, %19 ], [ %9, %70 ], [ %9, %69 ], [ %9, %74 ], [ %9, %73 ], [ %9, %57 ], [ %9, %67 ]
  call void @llvm.dbg.value(metadata ptr %115, metadata !1810, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 poison, metadata !1811, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 poison, metadata !1816, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata ptr %112, metadata !1815, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 poison, metadata !1814, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i8 poison, metadata !1813, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.value(metadata i64 %109, metadata !1812, metadata !DIExpression()), !dbg !1829
  %116 = getelementptr inbounds i8, ptr %115, i64 1, !dbg !1951
  call void @llvm.dbg.value(metadata ptr %116, metadata !1810, metadata !DIExpression()), !dbg !1829
  br label %2, !dbg !1952, !llvm.loop !1953

117:                                              ; preds = %2
  call void @llvm.dbg.value(metadata i8 poison, metadata !1816, metadata !DIExpression()), !dbg !1829
  %118 = and i1 %7, %8, !dbg !1955
  br i1 %118, label %119, label %168, !dbg !1955

119:                                              ; preds = %117
  br i1 %4, label %120, label %131, !dbg !1957

120:                                              ; preds = %119
  call void @llvm.dbg.value(metadata i64 %3, metadata !1842, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i8 1, metadata !1847, metadata !DIExpression()), !dbg !1959
  %121 = load i64, ptr @extend_size, align 8, !dbg !1962, !tbaa !1381
  %122 = icmp eq i64 %121, 0, !dbg !1962
  br i1 %122, label %123, label %126, !dbg !1963

123:                                              ; preds = %120
  call void @llvm.dbg.value(metadata i8 poison, metadata !1847, metadata !DIExpression()), !dbg !1959
  store i64 %3, ptr @extend_size, align 8, !dbg !1964, !tbaa !1381
  call void @llvm.dbg.value(metadata i64 %3, metadata !1795, metadata !DIExpression()), !dbg !1965
  %124 = load i64, ptr @max_column_width, align 8, !dbg !1967, !tbaa !1381
  %125 = icmp slt i64 %124, %3, !dbg !1968
  br i1 %125, label %170, label %172, !dbg !1969

126:                                              ; preds = %120
  %127 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12.11, i32 noundef 5) #37, !dbg !1970
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %127) #37, !dbg !1970
  call void @llvm.dbg.value(metadata i8 poison, metadata !1847, metadata !DIExpression()), !dbg !1959
  store i64 %3, ptr @extend_size, align 8, !dbg !1964, !tbaa !1381
  call void @llvm.dbg.value(metadata i64 %3, metadata !1795, metadata !DIExpression()), !dbg !1965
  %128 = load i64, ptr @max_column_width, align 8, !dbg !1967, !tbaa !1381
  %129 = icmp slt i64 %128, %3, !dbg !1968
  br i1 %129, label %130, label %169, !dbg !1969

130:                                              ; preds = %126
  store i64 %3, ptr @max_column_width, align 8, !dbg !1971
  call void @llvm.dbg.value(metadata i8 poison, metadata !1816, metadata !DIExpression()), !dbg !1829
  br label %169, !dbg !1972

131:                                              ; preds = %119
  br i1 %5, label %132, label %143, !dbg !1973

132:                                              ; preds = %131
  call void @llvm.dbg.value(metadata i64 %3, metadata !1868, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8 1, metadata !1871, metadata !DIExpression()), !dbg !1974
  %133 = load i64, ptr @increment_size, align 8, !dbg !1977, !tbaa !1381
  %134 = icmp eq i64 %133, 0, !dbg !1977
  br i1 %134, label %135, label %138, !dbg !1978

135:                                              ; preds = %132
  call void @llvm.dbg.value(metadata i8 poison, metadata !1871, metadata !DIExpression()), !dbg !1974
  store i64 %3, ptr @increment_size, align 8, !dbg !1979, !tbaa !1381
  call void @llvm.dbg.value(metadata i64 %3, metadata !1795, metadata !DIExpression()), !dbg !1980
  %136 = load i64, ptr @max_column_width, align 8, !dbg !1982, !tbaa !1381
  %137 = icmp slt i64 %136, %3, !dbg !1983
  br i1 %137, label %170, label %172, !dbg !1984

138:                                              ; preds = %132
  %139 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13.12, i32 noundef 5) #37, !dbg !1985
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %139) #37, !dbg !1985
  call void @llvm.dbg.value(metadata i8 poison, metadata !1871, metadata !DIExpression()), !dbg !1974
  store i64 %3, ptr @increment_size, align 8, !dbg !1979, !tbaa !1381
  call void @llvm.dbg.value(metadata i64 %3, metadata !1795, metadata !DIExpression()), !dbg !1980
  %140 = load i64, ptr @max_column_width, align 8, !dbg !1982, !tbaa !1381
  %141 = icmp slt i64 %140, %3, !dbg !1983
  br i1 %141, label %142, label %169, !dbg !1984

142:                                              ; preds = %138
  store i64 %3, ptr @max_column_width, align 8, !dbg !1986
  call void @llvm.dbg.value(metadata i8 poison, metadata !1816, metadata !DIExpression()), !dbg !1829
  br label %169, !dbg !1972

143:                                              ; preds = %131
  call void @llvm.dbg.value(metadata i64 %3, metadata !1776, metadata !DIExpression()), !dbg !1987
  %144 = load i64, ptr @first_free_tab, align 8, !dbg !1989, !tbaa !1381
  %145 = icmp eq i64 %144, 0, !dbg !1989
  %146 = load ptr, ptr @tab_list, align 8, !dbg !1987, !tbaa !1092
  br i1 %145, label %151, label %147, !dbg !1989

147:                                              ; preds = %143
  %148 = add nsw i64 %144, -1, !dbg !1990
  %149 = getelementptr inbounds i64, ptr %146, i64 %148, !dbg !1991
  %150 = load i64, ptr %149, align 8, !dbg !1991, !tbaa !1381
  br label %151, !dbg !1989

151:                                              ; preds = %143, %147
  %152 = phi i64 [ %150, %147 ], [ 0, %143 ], !dbg !1989
  call void @llvm.dbg.value(metadata i64 %152, metadata !1777, metadata !DIExpression()), !dbg !1987
  call void @llvm.dbg.value(metadata i64 poison, metadata !1778, metadata !DIExpression()), !dbg !1987
  %153 = load i64, ptr @n_tabs_allocated, align 8, !dbg !1992, !tbaa !1381
  %154 = icmp eq i64 %144, %153, !dbg !1993
  br i1 %154, label %155, label %158, !dbg !1994

155:                                              ; preds = %151
  %156 = tail call nonnull ptr @xpalloc(ptr noundef %146, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #37, !dbg !1995
  store ptr %156, ptr @tab_list, align 8, !dbg !1996, !tbaa !1092
  %157 = load i64, ptr @first_free_tab, align 8, !dbg !1997, !tbaa !1381
  br label %158, !dbg !1998

158:                                              ; preds = %155, %151
  %159 = phi i64 [ %157, %155 ], [ %144, %151 ], !dbg !1997
  %160 = phi ptr [ %156, %155 ], [ %146, %151 ], !dbg !1999
  %161 = icmp slt i64 %3, %152, !dbg !2000
  %162 = sub nsw i64 %3, %152, !dbg !2001
  %163 = select i1 %161, i64 0, i64 %162, !dbg !2001
  call void @llvm.dbg.value(metadata i64 %163, metadata !1778, metadata !DIExpression()), !dbg !1987
  %164 = add nsw i64 %159, 1, !dbg !1997
  store i64 %164, ptr @first_free_tab, align 8, !dbg !1997, !tbaa !1381
  %165 = getelementptr inbounds i64, ptr %160, i64 %159, !dbg !1999
  store i64 %3, ptr %165, align 8, !dbg !2002, !tbaa !1381
  call void @llvm.dbg.value(metadata i64 %163, metadata !1795, metadata !DIExpression()), !dbg !2003
  %166 = load i64, ptr @max_column_width, align 8, !dbg !2005, !tbaa !1381
  %167 = icmp slt i64 %166, %163, !dbg !2006
  br i1 %167, label %170, label %172, !dbg !2007

168:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i8 poison, metadata !1816, metadata !DIExpression()), !dbg !1829
  br i1 %7, label %172, label %169, !dbg !1972

169:                                              ; preds = %30, %41, %138, %126, %142, %130, %105, %168
  tail call void @exit(i32 noundef 1) #39, !dbg !2008
  unreachable, !dbg !2008

170:                                              ; preds = %158, %135, %123
  %171 = phi i64 [ %3, %123 ], [ %3, %135 ], [ %163, %158 ]
  store i64 %171, ptr @max_column_width, align 8, !dbg !2010
  br label %172, !dbg !2011

172:                                              ; preds = %170, %158, %135, %123, %168
  ret void, !dbg !2011
}

; Function Attrs: nounwind uwtable
define dso_local void @finalize_tab_stops() local_unnamed_addr #10 !dbg !2012 {
  %1 = load ptr, ptr @tab_list, align 8, !dbg !2013, !tbaa !1092
  %2 = load i64, ptr @first_free_tab, align 8, !dbg !2014, !tbaa !1381
  call void @llvm.dbg.value(metadata ptr %1, metadata !2015, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i64 %2, metadata !2022, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i64 0, metadata !2023, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i64 0, metadata !2024, metadata !DIExpression()), !dbg !2028
  %3 = icmp sgt i64 %2, 0, !dbg !2029
  br i1 %3, label %13, label %7, !dbg !2031

4:                                                ; preds = %21
  %5 = add nuw nsw i64 %14, 1, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %5, metadata !2024, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i64 %14, metadata !2024, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2028
  call void @llvm.dbg.value(metadata i64 %17, metadata !2023, metadata !DIExpression()), !dbg !2026
  %6 = icmp eq i64 %5, %2, !dbg !2029
  br i1 %6, label %7, label %13, !dbg !2031, !llvm.loop !2033

7:                                                ; preds = %4, %0
  %8 = load i64, ptr @increment_size, align 8, !dbg !2035, !tbaa !1381
  %9 = icmp ne i64 %8, 0, !dbg !2035
  %10 = load i64, ptr @extend_size, align 8
  %11 = icmp ne i64 %10, 0
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2037
  br i1 %12, label %25, label %27, !dbg !2037

13:                                               ; preds = %0, %4
  %14 = phi i64 [ %5, %4 ], [ 0, %0 ]
  %15 = phi i64 [ %17, %4 ], [ 0, %0 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !2024, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.value(metadata i64 %15, metadata !2023, metadata !DIExpression()), !dbg !2026
  %16 = getelementptr inbounds i64, ptr %1, i64 %14, !dbg !2038
  %17 = load i64, ptr %16, align 8, !dbg !2038, !tbaa !1381
  %18 = icmp eq i64 %17, 0, !dbg !2041
  br i1 %18, label %19, label %21, !dbg !2042

19:                                               ; preds = %13
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14.29, i32 noundef 5) #37, !dbg !2043
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %20) #37, !dbg !2043
  unreachable, !dbg !2043

21:                                               ; preds = %13
  %22 = icmp sgt i64 %17, %15, !dbg !2044
  call void @llvm.dbg.value(metadata i64 %17, metadata !2023, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i64 %14, metadata !2024, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2028
  br i1 %22, label %4, label %23, !dbg !2046

23:                                               ; preds = %21
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15.30, i32 noundef 5) #37, !dbg !2047
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %24) #37, !dbg !2047
  unreachable, !dbg !2047

25:                                               ; preds = %7
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16.31, i32 noundef 5) #37, !dbg !2048
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %26) #37, !dbg !2048
  unreachable, !dbg !2048

27:                                               ; preds = %7
  %28 = icmp eq i64 %2, 0, !dbg !2049
  br i1 %28, label %29, label %34, !dbg !2051

29:                                               ; preds = %27
  %30 = icmp eq i64 %10, 0, !dbg !2052
  %31 = icmp eq i64 %8, 0, !dbg !2052
  %32 = select i1 %31, i64 8, i64 %8, !dbg !2052
  %33 = select i1 %30, i64 %32, i64 %10, !dbg !2052
  store i64 %33, ptr @max_column_width, align 8, !dbg !2053, !tbaa !1381
  br label %40, !dbg !2054

34:                                               ; preds = %27
  %35 = icmp ne i64 %2, 1, !dbg !2055
  %36 = select i1 %35, i1 true, i1 %11, !dbg !2057
  %37 = select i1 %36, i1 true, i1 %9, !dbg !2057
  br i1 %37, label %40, label %38, !dbg !2057

38:                                               ; preds = %34
  %39 = load i64, ptr %1, align 8, !dbg !2058, !tbaa !1381
  br label %40, !dbg !2059

40:                                               ; preds = %34, %38, %29
  %41 = phi i64 [ %39, %38 ], [ %33, %29 ], [ 0, %34 ]
  store i64 %41, ptr @tab_size, align 8, !dbg !2060, !tbaa !1381
  ret void, !dbg !2061
}

; Function Attrs: nounwind uwtable
define dso_local i64 @get_next_tab_column(i64 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef nonnull writeonly %2) local_unnamed_addr #10 !dbg !2062 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2067, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr %1, metadata !2068, metadata !DIExpression()), !dbg !2082
  call void @llvm.dbg.value(metadata ptr %2, metadata !2069, metadata !DIExpression()), !dbg !2082
  store i8 0, ptr %2, align 1, !dbg !2083, !tbaa !1334
  %4 = load i64, ptr @tab_size, align 8, !dbg !2084, !tbaa !1381
  %5 = icmp eq i64 %4, 0, !dbg !2084
  br i1 %5, label %6, label %12, !dbg !2085

6:                                                ; preds = %3
  %7 = load i64, ptr @first_free_tab, align 8, !tbaa !1381
  %8 = load i64, ptr %1, align 8, !tbaa !1381
  %9 = icmp slt i64 %8, %7, !dbg !2086
  br i1 %9, label %10, label %23, !dbg !2087

10:                                               ; preds = %6
  %11 = load ptr, ptr @tab_list, align 8, !tbaa !1092
  br label %15, !dbg !2087

12:                                               ; preds = %3
  %13 = srem i64 %0, %4, !dbg !2088
  %14 = sub nsw i64 %4, %13, !dbg !2089
  call void @llvm.dbg.value(metadata i64 %14, metadata !2070, metadata !DIExpression()), !dbg !2082
  br label %41, !dbg !2090

15:                                               ; preds = %10, %20
  %16 = phi i64 [ %8, %10 ], [ %21, %20 ]
  %17 = getelementptr inbounds i64, ptr %11, i64 %16, !dbg !2091
  %18 = load i64, ptr %17, align 8, !dbg !2091, !tbaa !1381
  call void @llvm.dbg.value(metadata i64 %18, metadata !2071, metadata !DIExpression()), !dbg !2092
  %19 = icmp sgt i64 %18, %0, !dbg !2093
  br i1 %19, label %49, label %20

20:                                               ; preds = %15
  %21 = add i64 %16, 1, !dbg !2095
  store i64 %21, ptr %1, align 8, !dbg !2095, !tbaa !1381
  %22 = icmp eq i64 %21, %7, !dbg !2086
  br i1 %22, label %23, label %15, !dbg !2087, !llvm.loop !2096

23:                                               ; preds = %20, %6
  %24 = load i64, ptr @extend_size, align 8, !dbg !2098, !tbaa !1381
  %25 = icmp eq i64 %24, 0, !dbg !2098
  br i1 %25, label %29, label %26, !dbg !2099

26:                                               ; preds = %23
  %27 = srem i64 %0, %24, !dbg !2100
  %28 = sub nsw i64 %24, %27, !dbg !2101
  call void @llvm.dbg.value(metadata i64 %28, metadata !2070, metadata !DIExpression()), !dbg !2082
  br label %41, !dbg !2102

29:                                               ; preds = %23
  %30 = load i64, ptr @increment_size, align 8, !dbg !2103, !tbaa !1381
  %31 = icmp eq i64 %30, 0, !dbg !2103
  br i1 %31, label %40, label %32, !dbg !2104

32:                                               ; preds = %29
  %33 = load ptr, ptr @tab_list, align 8, !dbg !2105, !tbaa !1092
  %34 = add nsw i64 %7, -1, !dbg !2106
  %35 = getelementptr inbounds i64, ptr %33, i64 %34, !dbg !2105
  %36 = load i64, ptr %35, align 8, !dbg !2105, !tbaa !1381
  call void @llvm.dbg.value(metadata i64 %36, metadata !2077, metadata !DIExpression()), !dbg !2107
  %37 = sub nsw i64 %0, %36, !dbg !2108
  %38 = srem i64 %37, %30, !dbg !2109
  %39 = sub nsw i64 %30, %38, !dbg !2110
  call void @llvm.dbg.value(metadata i64 %39, metadata !2070, metadata !DIExpression()), !dbg !2082
  br label %41, !dbg !2111

40:                                               ; preds = %29
  store i8 1, ptr %2, align 1, !dbg !2112, !tbaa !1334
  call void @llvm.dbg.value(metadata i64 1, metadata !2070, metadata !DIExpression()), !dbg !2082
  br label %41

41:                                               ; preds = %26, %40, %32, %12
  %42 = phi i64 [ %14, %12 ], [ %28, %26 ], [ %39, %32 ], [ 1, %40 ], !dbg !2114
  call void @llvm.dbg.value(metadata i64 %42, metadata !2070, metadata !DIExpression()), !dbg !2082
  %43 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 %42), !dbg !2115
  %44 = extractvalue { i64, i1 } %43, 1, !dbg !2115
  call void @llvm.dbg.value(metadata i64 poison, metadata !2081, metadata !DIExpression()), !dbg !2082
  br i1 %44, label %45, label %47, !dbg !2117

45:                                               ; preds = %41
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5.34, i32 noundef 5) #37, !dbg !2118
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %46) #37, !dbg !2118
  unreachable, !dbg !2118

47:                                               ; preds = %41
  %48 = extractvalue { i64, i1 } %43, 0, !dbg !2115
  call void @llvm.dbg.value(metadata i64 %48, metadata !2081, metadata !DIExpression()), !dbg !2082
  br label %49

49:                                               ; preds = %15, %47
  %50 = phi i64 [ %48, %47 ], [ %18, %15 ], !dbg !2082
  ret i64 %50, !dbg !2119
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_file_list(ptr noundef %0) local_unnamed_addr #15 !dbg !2120 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2124, metadata !DIExpression()), !dbg !2125
  store i1 false, ptr @have_read_stdin, align 1, !dbg !2126
  %2 = icmp eq ptr %0, null, !dbg !2127
  %3 = select i1 %2, ptr @stdin_argv, ptr %0
  store ptr %3, ptr @file_list, align 8, !dbg !2129, !tbaa !1092
  ret void, !dbg !2130
}

; Function Attrs: nounwind uwtable
define dso_local ptr @next_file(ptr noundef %0) local_unnamed_addr #10 !dbg !494 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !532, metadata !DIExpression()), !dbg !2131
  %2 = icmp eq ptr %0, null, !dbg !2132
  br i1 %2, label %25, label %3, !dbg !2133

3:                                                ; preds = %1
  %4 = tail call ptr @__errno_location() #40, !dbg !2134
  %5 = load i32, ptr %4, align 4, !dbg !2134, !tbaa !1162
  call void @llvm.dbg.value(metadata i32 %5, metadata !534, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata ptr %0, metadata !2136, metadata !DIExpression()), !dbg !2141
  %6 = load i32, ptr %0, align 8, !dbg !2144, !tbaa !1415
  %7 = and i32 %6, 32, !dbg !2145
  %8 = icmp eq i32 %7, 0, !dbg !2145
  %9 = select i1 %8, i32 0, i32 %5, !dbg !2146
  call void @llvm.dbg.value(metadata i32 %9, metadata !534, metadata !DIExpression()), !dbg !2135
  %10 = load ptr, ptr @next_file.prev_file, align 8, !dbg !2147, !tbaa !1092
  call void @llvm.dbg.value(metadata ptr %10, metadata !2149, metadata !DIExpression()), !dbg !2153
  call void @llvm.dbg.value(metadata ptr @.str.6.37, metadata !2152, metadata !DIExpression()), !dbg !2153
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.6.37) #38, !dbg !2155
  %12 = icmp eq i32 %11, 0, !dbg !2156
  br i1 %12, label %13, label %14, !dbg !2157

13:                                               ; preds = %3
  tail call void @clearerr_unlocked(ptr noundef nonnull %0) #37, !dbg !2158
  br label %19, !dbg !2158

14:                                               ; preds = %3
  %15 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !2159
  %16 = icmp eq i32 %15, 0, !dbg !2161
  br i1 %16, label %19, label %17, !dbg !2162

17:                                               ; preds = %14
  %18 = load i32, ptr %4, align 4, !dbg !2163, !tbaa !1162
  call void @llvm.dbg.value(metadata i32 %18, metadata !534, metadata !DIExpression()), !dbg !2135
  br label %19, !dbg !2164

19:                                               ; preds = %14, %17, %13
  %20 = phi i32 [ %9, %13 ], [ %18, %17 ], [ %9, %14 ], !dbg !2135
  call void @llvm.dbg.value(metadata i32 %20, metadata !534, metadata !DIExpression()), !dbg !2135
  %21 = icmp eq i32 %20, 0, !dbg !2165
  br i1 %21, label %25, label %22, !dbg !2167

22:                                               ; preds = %19
  %23 = load ptr, ptr @next_file.prev_file, align 8, !dbg !2168, !tbaa !1092
  %24 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %23) #37, !dbg !2168
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %20, ptr noundef nonnull @.str.7.40, ptr noundef %24) #37, !dbg !2168
  store i32 1, ptr @exit_status, align 4, !dbg !2170, !tbaa !1162
  br label %25, !dbg !2171

25:                                               ; preds = %19, %22, %1
  %26 = load ptr, ptr @file_list, align 8, !dbg !2172, !tbaa !1092
  %27 = getelementptr inbounds ptr, ptr %26, i64 1, !dbg !2172
  store ptr %27, ptr @file_list, align 8, !dbg !2172, !tbaa !1092
  %28 = load ptr, ptr %26, align 8, !dbg !2173, !tbaa !1092
  call void @llvm.dbg.value(metadata ptr %28, metadata !533, metadata !DIExpression()), !dbg !2131
  %29 = icmp eq ptr %28, null, !dbg !2174
  br i1 %29, label %50, label %30, !dbg !2175

30:                                               ; preds = %25, %42
  %31 = phi ptr [ %48, %42 ], [ %28, %25 ]
  call void @llvm.dbg.value(metadata ptr %31, metadata !2149, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata ptr @.str.6.37, metadata !2152, metadata !DIExpression()), !dbg !2176
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(2) @.str.6.37) #38, !dbg !2180
  %33 = icmp eq i32 %32, 0, !dbg !2181
  br i1 %33, label %34, label %36, !dbg !2182

34:                                               ; preds = %30
  store i1 true, ptr @have_read_stdin, align 1, !dbg !2183
  %35 = load ptr, ptr @stdin, align 8, !dbg !2185, !tbaa !1092
  call void @llvm.dbg.value(metadata ptr %35, metadata !532, metadata !DIExpression()), !dbg !2131
  br label %38, !dbg !2186

36:                                               ; preds = %30
  %37 = tail call noalias ptr @rpl_fopen(ptr noundef nonnull %31, ptr noundef nonnull @.str.8.41) #37, !dbg !2187
  call void @llvm.dbg.value(metadata ptr %37, metadata !532, metadata !DIExpression()), !dbg !2131
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %35, %34 ], [ %37, %36 ], !dbg !2188
  call void @llvm.dbg.value(metadata ptr %39, metadata !532, metadata !DIExpression()), !dbg !2131
  %40 = icmp eq ptr %39, null, !dbg !2189
  br i1 %40, label %42, label %41, !dbg !2191

41:                                               ; preds = %38
  store ptr %31, ptr @next_file.prev_file, align 8, !dbg !2192, !tbaa !1092
  tail call void @fadvise(ptr noundef nonnull %39, i32 noundef 2) #37, !dbg !2194
  br label %50, !dbg !2195

42:                                               ; preds = %38
  %43 = tail call ptr @__errno_location() #40, !dbg !2196
  %44 = load i32, ptr %43, align 4, !dbg !2196, !tbaa !1162
  %45 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef nonnull %31) #37, !dbg !2196
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %44, ptr noundef nonnull @.str.7.40, ptr noundef %45) #37, !dbg !2196
  store i32 1, ptr @exit_status, align 4, !dbg !2197, !tbaa !1162
  %46 = load ptr, ptr @file_list, align 8, !dbg !2172, !tbaa !1092
  %47 = getelementptr inbounds ptr, ptr %46, i64 1, !dbg !2172
  store ptr %47, ptr @file_list, align 8, !dbg !2172, !tbaa !1092
  %48 = load ptr, ptr %46, align 8, !dbg !2173, !tbaa !1092
  call void @llvm.dbg.value(metadata ptr %48, metadata !533, metadata !DIExpression()), !dbg !2131
  %49 = icmp eq ptr %48, null, !dbg !2174
  br i1 %49, label %50, label %30, !dbg !2175, !llvm.loop !2198

50:                                               ; preds = %42, %25, %41
  %51 = phi ptr [ %39, %41 ], [ null, %25 ], [ null, %42 ], !dbg !2131
  ret ptr %51, !dbg !2200
}

; Function Attrs: nounwind uwtable
define dso_local void @cleanup_file_list_stdin() local_unnamed_addr #10 !dbg !2201 {
  %1 = load i1, ptr @have_read_stdin, align 1, !dbg !2202
  br i1 %1, label %2, label %9, !dbg !2204

2:                                                ; preds = %0
  %3 = load ptr, ptr @stdin, align 8, !dbg !2205, !tbaa !1092
  %4 = tail call i32 @rpl_fclose(ptr noundef %3) #37, !dbg !2206
  %5 = icmp eq i32 %4, 0, !dbg !2207
  br i1 %5, label %9, label %6, !dbg !2208

6:                                                ; preds = %2
  %7 = tail call ptr @__errno_location() #40, !dbg !2209
  %8 = load i32, ptr %7, align 4, !dbg !2209, !tbaa !1162
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %8, ptr noundef nonnull @.str.6.37) #37, !dbg !2209
  unreachable, !dbg !2209

9:                                                ; preds = %2, %0
  ret void, !dbg !2210
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_tab_list_info(ptr noundef %0) local_unnamed_addr #10 !dbg !2211 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2213, metadata !DIExpression()), !dbg !2214
  %2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9.46, i32 noundef 5) #37, !dbg !2215
  call void @llvm.dbg.value(metadata ptr %0, metadata !599, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata ptr %2, metadata !600, metadata !DIExpression()), !dbg !2216
  %3 = load i32, ptr @oputs_.help_no_sgr.47, align 4, !dbg !2218, !tbaa !1162
  %4 = icmp eq i32 %3, -1, !dbg !2219
  br i1 %4, label %5, label %17, !dbg !2220

5:                                                ; preds = %1
  %6 = tail call ptr @getenv(ptr noundef nonnull @.str.17.48) #37, !dbg !2221
  call void @llvm.dbg.value(metadata ptr %6, metadata !601, metadata !DIExpression()), !dbg !2222
  %7 = icmp eq ptr %6, null, !dbg !2223
  br i1 %7, label %15, label %8, !dbg !2224

8:                                                ; preds = %5
  %9 = load i8, ptr %6, align 1, !dbg !2225, !tbaa !1171
  %10 = icmp eq i8 %9, 0, !dbg !2225
  br i1 %10, label %15, label %11, !dbg !2226

11:                                               ; preds = %8
  call void @llvm.dbg.value(metadata ptr %6, metadata !2149, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata ptr @.str.18.49, metadata !2152, metadata !DIExpression()), !dbg !2227
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(5) @.str.18.49) #38, !dbg !2229
  %13 = icmp eq i32 %12, 0, !dbg !2230
  %14 = zext i1 %13 to i32, !dbg !2226
  br label %15, !dbg !2226

15:                                               ; preds = %11, %8, %5
  %16 = phi i32 [ 1, %8 ], [ 1, %5 ], [ %14, %11 ]
  store i32 %16, ptr @oputs_.help_no_sgr.47, align 4, !dbg !2231, !tbaa !1162
  br label %17, !dbg !2232

17:                                               ; preds = %15, %1
  %18 = phi i32 [ %16, %15 ], [ %3, %1 ], !dbg !2233
  %19 = icmp eq i32 %18, 0, !dbg !2233
  br i1 %19, label %23, label %20, !dbg !2235

20:                                               ; preds = %17
  %21 = load ptr, ptr @stdout, align 8, !dbg !2236, !tbaa !1092
  %22 = tail call i32 @fputs_unlocked(ptr noundef %2, ptr noundef %21), !dbg !2236
  br label %155, !dbg !2238

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 1, metadata !604, metadata !DIExpression()), !dbg !2216
  %24 = tail call i64 @strspn(ptr noundef %2, ptr noundef nonnull @.str.19.50) #38, !dbg !2239
  %25 = getelementptr inbounds i8, ptr %2, i64 %24, !dbg !2240
  call void @llvm.dbg.value(metadata ptr %25, metadata !605, metadata !DIExpression()), !dbg !2216
  %26 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 45) #38, !dbg !2241
  call void @llvm.dbg.value(metadata ptr %26, metadata !606, metadata !DIExpression()), !dbg !2216
  %27 = icmp eq ptr %26, null, !dbg !2242
  br i1 %27, label %55, label %28, !dbg !2243

28:                                               ; preds = %23
  %29 = icmp eq ptr %26, %25, !dbg !2244
  br i1 %29, label %55, label %30, !dbg !2245

30:                                               ; preds = %28
  call void @llvm.dbg.value(metadata ptr %25, metadata !607, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i64 0, metadata !611, metadata !DIExpression()), !dbg !2246
  %31 = icmp ult ptr %25, %26, !dbg !2247
  br i1 %31, label %32, label %52, !dbg !2248

32:                                               ; preds = %30
  %33 = tail call ptr @__ctype_b_loc() #40, !dbg !2216
  %34 = load ptr, ptr %33, align 8, !tbaa !1092
  br label %35, !dbg !2248

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %25, %32 ], [ %38, %35 ]
  %37 = phi i64 [ 0, %32 ], [ %46, %35 ]
  call void @llvm.dbg.value(metadata ptr %36, metadata !607, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i64 %37, metadata !611, metadata !DIExpression()), !dbg !2246
  %38 = getelementptr inbounds i8, ptr %36, i64 1, !dbg !2249
  call void @llvm.dbg.value(metadata ptr %38, metadata !607, metadata !DIExpression()), !dbg !2246
  %39 = load i8, ptr %36, align 1, !dbg !2249, !tbaa !1171
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i16, ptr %34, i64 %40, !dbg !2249
  %42 = load i16, ptr %41, align 2, !dbg !2249, !tbaa !1203
  %43 = lshr i16 %42, 13, !dbg !2250
  %44 = and i16 %43, 1, !dbg !2250
  %45 = zext i16 %44 to i64
  %46 = add nuw nsw i64 %37, %45, !dbg !2251
  call void @llvm.dbg.value(metadata i64 %46, metadata !611, metadata !DIExpression()), !dbg !2246
  %47 = icmp ult ptr %38, %26, !dbg !2247
  %48 = icmp ult i64 %46, 2, !dbg !2252
  %49 = select i1 %47, i1 %48, i1 false, !dbg !2252
  br i1 %49, label %35, label %50, !dbg !2248, !llvm.loop !2253

50:                                               ; preds = %35
  %51 = icmp ne i64 %46, 2, !dbg !2254
  br label %52, !dbg !2254

52:                                               ; preds = %50, %30
  %53 = phi i1 [ true, %30 ], [ %51, %50 ]
  %54 = select i1 %53, ptr %26, ptr %25, !dbg !2256
  call void @llvm.dbg.value(metadata i8 poison, metadata !604, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata ptr %54, metadata !606, metadata !DIExpression()), !dbg !2216
  br label %55, !dbg !2257

55:                                               ; preds = %52, %28, %23
  %56 = phi ptr [ %54, %52 ], [ %25, %28 ], [ %25, %23 ], !dbg !2216
  %57 = phi i1 [ %53, %52 ], [ true, %28 ], [ false, %23 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !604, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata ptr %56, metadata !606, metadata !DIExpression()), !dbg !2216
  %58 = tail call i64 @strcspn(ptr noundef %56, ptr noundef nonnull @.str.20.51) #38, !dbg !2258
  call void @llvm.dbg.value(metadata i64 %58, metadata !612, metadata !DIExpression()), !dbg !2216
  %59 = getelementptr inbounds i8, ptr %56, i64 %58, !dbg !2259
  call void @llvm.dbg.value(metadata ptr %59, metadata !613, metadata !DIExpression()), !dbg !2216
  br label %60, !dbg !2260

60:                                               ; preds = %91, %55
  %61 = phi ptr [ %59, %55 ], [ %92, %91 ], !dbg !2216
  %62 = phi i1 [ %57, %55 ], [ %70, %91 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !604, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata ptr %61, metadata !613, metadata !DIExpression()), !dbg !2216
  %63 = load i8, ptr %61, align 1, !dbg !2261, !tbaa !1171
  switch i8 %63, label %69 [
    i8 0, label %93
    i8 10, label %93
    i8 45, label %64
  ], !dbg !2262

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !2263
  %66 = load i8, ptr %65, align 1, !dbg !2266, !tbaa !1171
  %67 = icmp ne i8 %66, 45, !dbg !2267
  %68 = select i1 %67, i1 %62, i1 false, !dbg !2268
  br label %69, !dbg !2268

69:                                               ; preds = %64, %60
  %70 = phi i1 [ %62, %60 ], [ %68, %64 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !604, metadata !DIExpression()), !dbg !2216
  %71 = tail call ptr @__ctype_b_loc() #40, !dbg !2269
  %72 = load ptr, ptr %71, align 8, !dbg !2269, !tbaa !1092
  %73 = zext i8 %63 to i64
  %74 = getelementptr inbounds i16, ptr %72, i64 %73, !dbg !2269
  %75 = load i16, ptr %74, align 2, !dbg !2269, !tbaa !1203
  %76 = and i16 %75, 8192, !dbg !2269
  %77 = icmp eq i16 %76, 0, !dbg !2269
  br i1 %77, label %91, label %78, !dbg !2271

78:                                               ; preds = %69
  %79 = icmp eq i8 %63, 9, !dbg !2272
  br i1 %79, label %93, label %80, !dbg !2275

80:                                               ; preds = %78
  %81 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !2276
  %82 = load i8, ptr %81, align 1, !dbg !2276, !tbaa !1171
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds i16, ptr %72, i64 %83, !dbg !2276
  %85 = load i16, ptr %84, align 2, !dbg !2276, !tbaa !1203
  %86 = and i16 %85, 8192, !dbg !2276
  %87 = icmp eq i16 %86, 0, !dbg !2276
  %88 = icmp eq i8 %82, 45
  %89 = select i1 %70, i1 true, i1 %88
  %90 = select i1 %87, i1 %89, i1 false, !dbg !2277
  br i1 %90, label %91, label %93, !dbg !2277

91:                                               ; preds = %80, %69
  %92 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !2278
  call void @llvm.dbg.value(metadata ptr %92, metadata !613, metadata !DIExpression()), !dbg !2216
  br label %60, !dbg !2260, !llvm.loop !2279

93:                                               ; preds = %80, %78, %60, %60
  %94 = ptrtoint ptr %25 to i64, !dbg !2281
  %95 = load ptr, ptr @stdout, align 8, !dbg !2281, !tbaa !1092
  %96 = tail call i64 @fwrite_unlocked(ptr noundef %2, i64 noundef 1, i64 noundef %24, ptr noundef %95), !dbg !2281
  call void @llvm.dbg.value(metadata ptr %0, metadata !2149, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata ptr @.str.21.52, metadata !2152, metadata !DIExpression()), !dbg !2282
  %97 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.21.52) #38, !dbg !2284
  %98 = icmp eq i32 %97, 0, !dbg !2285
  br i1 %98, label %127, label %99, !dbg !2286

99:                                               ; preds = %93
  call void @llvm.dbg.value(metadata ptr %0, metadata !2149, metadata !DIExpression()), !dbg !2287
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !2152, metadata !DIExpression()), !dbg !2287
  %100 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.23) #38, !dbg !2289
  %101 = icmp eq i32 %100, 0, !dbg !2290
  br i1 %101, label %127, label %102, !dbg !2291

102:                                              ; preds = %99
  call void @llvm.dbg.value(metadata ptr %0, metadata !2149, metadata !DIExpression()), !dbg !2292
  call void @llvm.dbg.value(metadata ptr @.str.25, metadata !2152, metadata !DIExpression()), !dbg !2292
  %103 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.25) #38, !dbg !2294
  %104 = icmp eq i32 %103, 0, !dbg !2295
  br i1 %104, label %127, label %105, !dbg !2296

105:                                              ; preds = %102
  call void @llvm.dbg.value(metadata ptr %0, metadata !2149, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata ptr @.str.26, metadata !2152, metadata !DIExpression()), !dbg !2297
  %106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.26) #38, !dbg !2299
  %107 = icmp eq i32 %106, 0, !dbg !2300
  br i1 %107, label %127, label %108, !dbg !2301

108:                                              ; preds = %105
  call void @llvm.dbg.value(metadata ptr %0, metadata !2149, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !2152, metadata !DIExpression()), !dbg !2302
  %109 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.28) #38, !dbg !2304
  %110 = icmp eq i32 %109, 0, !dbg !2305
  br i1 %110, label %127, label %111, !dbg !2306

111:                                              ; preds = %108
  call void @llvm.dbg.value(metadata ptr %0, metadata !2149, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata ptr @.str.29, metadata !2152, metadata !DIExpression()), !dbg !2307
  %112 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.29) #38, !dbg !2309
  %113 = icmp eq i32 %112, 0, !dbg !2310
  br i1 %113, label %127, label %114, !dbg !2311

114:                                              ; preds = %111
  call void @llvm.dbg.value(metadata ptr %0, metadata !2149, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !2152, metadata !DIExpression()), !dbg !2312
  %115 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.30) #38, !dbg !2314
  %116 = icmp eq i32 %115, 0, !dbg !2315
  br i1 %116, label %127, label %117, !dbg !2316

117:                                              ; preds = %114
  call void @llvm.dbg.value(metadata ptr %0, metadata !2149, metadata !DIExpression()), !dbg !2317
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !2152, metadata !DIExpression()), !dbg !2317
  %118 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.31) #38, !dbg !2319
  %119 = icmp eq i32 %118, 0, !dbg !2320
  br i1 %119, label %127, label %120, !dbg !2321

120:                                              ; preds = %117
  call void @llvm.dbg.value(metadata ptr %0, metadata !2149, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.value(metadata ptr @.str.32, metadata !2152, metadata !DIExpression()), !dbg !2322
  %121 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.32) #38, !dbg !2324
  %122 = icmp eq i32 %121, 0, !dbg !2325
  br i1 %122, label %127, label %123, !dbg !2326

123:                                              ; preds = %120
  call void @llvm.dbg.value(metadata ptr %0, metadata !2149, metadata !DIExpression()), !dbg !2327
  call void @llvm.dbg.value(metadata ptr @.str.33, metadata !2152, metadata !DIExpression()), !dbg !2327
  %124 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.33) #38, !dbg !2329
  %125 = icmp eq i32 %124, 0, !dbg !2330
  %126 = select i1 %125, ptr @.str.27, ptr %0, !dbg !2331
  br label %127, !dbg !2326

127:                                              ; preds = %123, %120, %117, %114, %111, %108, %105, %102, %99, %93
  %128 = phi ptr [ @.str.22.53, %93 ], [ @.str.24, %99 ], [ @.str.24, %102 ], [ @.str.27, %105 ], [ @.str.27, %108 ], [ @.str.27, %111 ], [ @.str.27, %114 ], [ @.str.27, %117 ], [ %126, %123 ], [ @.str.27, %120 ], !dbg !2286
  call void @llvm.dbg.value(metadata ptr %128, metadata !618, metadata !DIExpression()), !dbg !2216
  %129 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(7) @.str.34, i64 noundef 6) #38, !dbg !2332
  %130 = icmp eq i32 %129, 0, !dbg !2332
  br i1 %130, label %134, label %131, !dbg !2334

131:                                              ; preds = %127
  %132 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(10) @.str.35.54, i64 noundef 9) #38, !dbg !2335
  %133 = icmp eq i32 %132, 0, !dbg !2335
  br i1 %133, label %134, label %137, !dbg !2336

134:                                              ; preds = %131, %127
  %135 = trunc i64 %58 to i32, !dbg !2337
  %136 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36.55, ptr noundef nonnull @.str.37.56, ptr noundef %128, ptr noundef %128, i32 noundef %135, ptr noundef %56) #37, !dbg !2337
  br label %140, !dbg !2339

137:                                              ; preds = %131
  %138 = trunc i64 %58 to i32, !dbg !2340
  %139 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38.57, ptr noundef nonnull @.str.39.58, ptr noundef %128, i32 noundef %138, ptr noundef %56) #37, !dbg !2340
  br label %140

140:                                              ; preds = %137, %134
  %141 = load ptr, ptr @stdout, align 8, !dbg !2342, !tbaa !1092
  %142 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40.59, ptr noundef %141), !dbg !2342
  %143 = load ptr, ptr @stdout, align 8, !dbg !2343, !tbaa !1092
  %144 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41.60, ptr noundef %143), !dbg !2343
  %145 = ptrtoint ptr %61 to i64, !dbg !2344
  %146 = sub i64 %145, %94, !dbg !2344
  %147 = load ptr, ptr @stdout, align 8, !dbg !2344, !tbaa !1092
  %148 = tail call i64 @fwrite_unlocked(ptr noundef %25, i64 noundef 1, i64 noundef %146, ptr noundef %147), !dbg !2344
  %149 = load ptr, ptr @stdout, align 8, !dbg !2345, !tbaa !1092
  %150 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42.61, ptr noundef %149), !dbg !2345
  %151 = load ptr, ptr @stdout, align 8, !dbg !2346, !tbaa !1092
  %152 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43.62, ptr noundef %151), !dbg !2346
  %153 = load ptr, ptr @stdout, align 8, !dbg !2347, !tbaa !1092
  %154 = tail call i32 @fputs_unlocked(ptr noundef nonnull %61, ptr noundef %153), !dbg !2347
  br label %155, !dbg !2348

155:                                              ; preds = %20, %140
  %156 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10.63, i32 noundef 5) #37, !dbg !2349
  %157 = load ptr, ptr @stdout, align 8, !dbg !2349, !tbaa !1092
  %158 = tail call i32 @fputs_unlocked(ptr noundef %156, ptr noundef %157), !dbg !2349
  ret void, !dbg !2350
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #15 !dbg !2351 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2353, metadata !DIExpression()), !dbg !2354
  store ptr %0, ptr @file_name, align 8, !dbg !2355, !tbaa !1092
  ret void, !dbg !2356
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #15 !dbg !2357 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i8 %2, metadata !2361, metadata !DIExpression()), !dbg !2362
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !2363, !tbaa !1334
  ret void, !dbg !2364
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2365 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2370, !tbaa !1092
  %2 = tail call i32 @close_stream(ptr noundef %1) #37, !dbg !2371
  %3 = icmp eq i32 %2, 0, !dbg !2372
  br i1 %3, label %22, label %4, !dbg !2373

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !2374, !tbaa !1334, !range !1565, !noundef !1101
  %6 = icmp eq i8 %5, 0, !dbg !2374
  br i1 %6, label %11, label %7, !dbg !2375

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #40, !dbg !2376
  %9 = load i32, ptr %8, align 4, !dbg !2376, !tbaa !1162
  %10 = icmp eq i32 %9, 32, !dbg !2377
  br i1 %10, label %22, label %11, !dbg !2378

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.1.70, i32 noundef 5) #37, !dbg !2379
  call void @llvm.dbg.value(metadata ptr %12, metadata !2367, metadata !DIExpression()), !dbg !2380
  %13 = load ptr, ptr @file_name, align 8, !dbg !2381, !tbaa !1092
  %14 = icmp eq ptr %13, null, !dbg !2381
  %15 = tail call ptr @__errno_location() #40, !dbg !2383
  %16 = load i32, ptr %15, align 4, !dbg !2383, !tbaa !1162
  br i1 %14, label %19, label %17, !dbg !2384

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #37, !dbg !2385
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.71, ptr noundef %18, ptr noundef %12) #37, !dbg !2385
  br label %20, !dbg !2385

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.72, ptr noundef %12) #37, !dbg !2386
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2387, !tbaa !1162
  tail call void @_exit(i32 noundef %21) #39, !dbg !2388
  unreachable, !dbg !2388

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2389, !tbaa !1092
  %24 = tail call i32 @close_stream(ptr noundef %23) #37, !dbg !2391
  %25 = icmp eq i32 %24, 0, !dbg !2392
  br i1 %25, label %28, label %26, !dbg !2393

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2394, !tbaa !1162
  tail call void @_exit(i32 noundef %27) #39, !dbg !2395
  unreachable, !dbg !2395

28:                                               ; preds = %22
  ret void, !dbg !2396
}

; Function Attrs: noreturn
declare !dbg !2397 void @_exit(i32 noundef) local_unnamed_addr #16

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #17 !dbg !2399 {
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2403, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i32 %1, metadata !2404, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata ptr %2, metadata !2405, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2406, metadata !DIExpression()), !dbg !2408
  tail call fastcc void @flush_stdout(), !dbg !2409
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2410, !tbaa !1092
  %7 = icmp eq ptr %6, null, !dbg !2410
  br i1 %7, label %9, label %8, !dbg !2412

8:                                                ; preds = %4
  tail call void %6() #37, !dbg !2413
  br label %13, !dbg !2413

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2414, !tbaa !1092
  %11 = tail call ptr @getprogname() #38, !dbg !2414
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.73, ptr noundef %11) #37, !dbg !2414
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !2416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2416, !tbaa.struct !2417
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2416
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !2416
  ret void, !dbg !2418
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2419 {
  call void @llvm.dbg.value(metadata i32 1, metadata !2421, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i32 1, metadata !2423, metadata !DIExpression()), !dbg !2428
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #37, !dbg !2431
  %2 = icmp slt i32 %1, 0, !dbg !2432
  br i1 %2, label %6, label %3, !dbg !2433

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2434, !tbaa !1092
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #37, !dbg !2434
  br label %6, !dbg !2434

6:                                                ; preds = %3, %0
  ret void, !dbg !2435
}

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2436 {
  %5 = alloca [1024 x i8], align 1
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2438, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata i32 %1, metadata !2439, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.value(metadata ptr %2, metadata !2440, metadata !DIExpression()), !dbg !2442
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2441, metadata !DIExpression()), !dbg !2443
  %7 = load ptr, ptr @stderr, align 8, !dbg !2444, !tbaa !1092
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !2445, !noalias !2489
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2493
  call void @llvm.dbg.value(metadata ptr %7, metadata !2485, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata ptr %2, metadata !2486, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.declare(metadata ptr poison, metadata !2487, metadata !DIExpression()), !dbg !2495
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #37, !dbg !2445
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !2445, !noalias !2489
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2496, !tbaa !1162
  %10 = add i32 %9, 1, !dbg !2496
  store i32 %10, ptr @error_message_count, align 4, !dbg !2496, !tbaa !1162
  %11 = icmp eq i32 %1, 0, !dbg !2497
  br i1 %11, label %21, label %12, !dbg !2499

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %1, metadata !2500, metadata !DIExpression()), !dbg !2508
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #37, !dbg !2510
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2504, metadata !DIExpression()), !dbg !2511
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #37, !dbg !2512
  call void @llvm.dbg.value(metadata ptr %13, metadata !2503, metadata !DIExpression()), !dbg !2508
  %14 = icmp eq ptr %13, null, !dbg !2513
  br i1 %14, label %15, label %17, !dbg !2515

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.74, ptr noundef nonnull @.str.5.75, i32 noundef 5) #37, !dbg !2516
  call void @llvm.dbg.value(metadata ptr %16, metadata !2503, metadata !DIExpression()), !dbg !2508
  br label %17, !dbg !2517

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2508
  call void @llvm.dbg.value(metadata ptr %18, metadata !2503, metadata !DIExpression()), !dbg !2508
  %19 = load ptr, ptr @stderr, align 8, !dbg !2518, !tbaa !1092
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.76, ptr noundef %18) #37, !dbg !2518
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #37, !dbg !2519
  br label %21, !dbg !2520

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2521, !tbaa !1092
  call void @llvm.dbg.value(metadata i32 10, metadata !2522, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata ptr %22, metadata !2527, metadata !DIExpression()), !dbg !2528
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2530
  %24 = load ptr, ptr %23, align 8, !dbg !2530, !tbaa !1600
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2530
  %26 = load ptr, ptr %25, align 8, !dbg !2530, !tbaa !1601
  %27 = icmp ult ptr %24, %26, !dbg !2530
  br i1 %27, label %30, label %28, !dbg !2530, !prof !1602

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #37, !dbg !2530
  br label %32, !dbg !2530

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2530
  store ptr %31, ptr %23, align 8, !dbg !2530, !tbaa !1600
  store i8 10, ptr %24, align 1, !dbg !2530, !tbaa !1171
  br label %32, !dbg !2530

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2531, !tbaa !1092
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #37, !dbg !2531
  %35 = icmp eq i32 %0, 0, !dbg !2532
  br i1 %35, label %37, label %36, !dbg !2534

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #39, !dbg !2535
  unreachable, !dbg !2535

37:                                               ; preds = %32
  ret void, !dbg !2536
}

declare !dbg !2537 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2540 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2543 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2547 {
  %4 = alloca %struct.__va_list, align 8
  %5 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2551, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata i32 %1, metadata !2552, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.value(metadata ptr %2, metadata !2553, metadata !DIExpression()), !dbg !2555
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #37, !dbg !2556
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2554, metadata !DIExpression()), !dbg !2557
  call void @llvm.va_start(ptr nonnull %4), !dbg !2558
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !2559
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2559, !tbaa.struct !2417
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #43, !dbg !2559
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !2559
  call void @llvm.va_end(ptr nonnull %4), !dbg !2560
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #37, !dbg !2561
  ret void, !dbg !2561
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #17 !dbg !710 {
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !727, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 %1, metadata !728, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata ptr %2, metadata !729, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 %3, metadata !730, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata ptr %4, metadata !731, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.declare(metadata ptr %5, metadata !732, metadata !DIExpression()), !dbg !2563
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2564, !tbaa !1162
  %9 = icmp eq i32 %8, 0, !dbg !2564
  br i1 %9, label %24, label %10, !dbg !2566

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2567, !tbaa !1162
  %12 = icmp eq i32 %11, %3, !dbg !2570
  br i1 %12, label %13, label %23, !dbg !2571

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2572, !tbaa !1092
  %15 = icmp eq ptr %14, %2, !dbg !2573
  br i1 %15, label %37, label %16, !dbg !2574

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2575
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2576
  br i1 %19, label %20, label %23, !dbg !2576

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !2577
  %22 = icmp eq i32 %21, 0, !dbg !2578
  br i1 %22, label %37, label %23, !dbg !2579

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2580, !tbaa !1092
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2581, !tbaa !1162
  br label %24, !dbg !2582

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2583
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2584, !tbaa !1092
  %26 = icmp eq ptr %25, null, !dbg !2584
  br i1 %26, label %28, label %27, !dbg !2586

27:                                               ; preds = %24
  tail call void %25() #37, !dbg !2587
  br label %32, !dbg !2587

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2588, !tbaa !1092
  %30 = tail call ptr @getprogname() #38, !dbg !2588
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.79, ptr noundef %30) #37, !dbg !2588
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2590, !tbaa !1092
  %34 = icmp eq ptr %2, null, !dbg !2590
  %35 = select i1 %34, ptr @.str.3.80, ptr @.str.2.81, !dbg !2590
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #37, !dbg !2590
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !2591
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2591, !tbaa.struct !2417
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2591
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !2591
  br label %37, !dbg !2592

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2592
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2593 {
  %6 = alloca %struct.__va_list, align 8
  %7 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2597, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 %1, metadata !2598, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata ptr %2, metadata !2599, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata i32 %3, metadata !2600, metadata !DIExpression()), !dbg !2603
  call void @llvm.dbg.value(metadata ptr %4, metadata !2601, metadata !DIExpression()), !dbg !2603
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !2604
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2602, metadata !DIExpression()), !dbg !2605
  call void @llvm.va_start(ptr nonnull %6), !dbg !2606
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #37, !dbg !2607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2607, !tbaa.struct !2417
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #43, !dbg !2607
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #37, !dbg !2607
  call void @llvm.va_end(ptr nonnull %6), !dbg !2608
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !2609
  ret void, !dbg !2609
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2610 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2616, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i64 %1, metadata !2617, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i64 %2, metadata !2618, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.value(metadata i32 %3, metadata !2619, metadata !DIExpression()), !dbg !2620
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #37, !dbg !2621
  ret void, !dbg !2622
}

; Function Attrs: nounwind
declare !dbg !2623 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2626 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2664, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i32 %1, metadata !2665, metadata !DIExpression()), !dbg !2666
  %3 = icmp eq ptr %0, null, !dbg !2667
  br i1 %3, label %7, label %4, !dbg !2669

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2670
  call void @llvm.dbg.value(metadata i32 %5, metadata !2616, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i64 0, metadata !2617, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i64 0, metadata !2618, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i32 %1, metadata !2619, metadata !DIExpression()), !dbg !2671
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #37, !dbg !2673
  br label %7, !dbg !2674

7:                                                ; preds = %4, %2
  ret void, !dbg !2675
}

; Function Attrs: nofree nounwind
declare !dbg !2676 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2679 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2717, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i32 0, metadata !2718, metadata !DIExpression()), !dbg !2721
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2722
  call void @llvm.dbg.value(metadata i32 %2, metadata !2719, metadata !DIExpression()), !dbg !2721
  %3 = icmp slt i32 %2, 0, !dbg !2723
  br i1 %3, label %4, label %6, !dbg !2725

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2726
  br label %24, !dbg !2727

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !2728
  %8 = icmp eq i32 %7, 0, !dbg !2728
  br i1 %8, label %13, label %9, !dbg !2730

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2731
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #37, !dbg !2732
  %12 = icmp eq i64 %11, -1, !dbg !2733
  br i1 %12, label %16, label %13, !dbg !2734

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #37, !dbg !2735
  %15 = icmp eq i32 %14, 0, !dbg !2735
  br i1 %15, label %16, label %18, !dbg !2736

16:                                               ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 0, metadata !2718, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i32 0, metadata !2720, metadata !DIExpression()), !dbg !2721
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2737
  call void @llvm.dbg.value(metadata i32 %17, metadata !2720, metadata !DIExpression()), !dbg !2721
  br label %24, !dbg !2738

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #40, !dbg !2739
  %20 = load i32, ptr %19, align 4, !dbg !2739, !tbaa !1162
  call void @llvm.dbg.value(metadata i32 %20, metadata !2718, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i32 0, metadata !2720, metadata !DIExpression()), !dbg !2721
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2737
  call void @llvm.dbg.value(metadata i32 %21, metadata !2720, metadata !DIExpression()), !dbg !2721
  %22 = icmp eq i32 %20, 0, !dbg !2740
  br i1 %22, label %24, label %23, !dbg !2738

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2742, !tbaa !1162
  call void @llvm.dbg.value(metadata i32 -1, metadata !2720, metadata !DIExpression()), !dbg !2721
  br label %24, !dbg !2744

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2721
  ret i32 %25, !dbg !2745
}

; Function Attrs: nofree nounwind
declare !dbg !2746 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2747 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2749 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2752 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2790, metadata !DIExpression()), !dbg !2791
  %2 = icmp eq ptr %0, null, !dbg !2792
  br i1 %2, label %6, label %3, !dbg !2794

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #37, !dbg !2795
  %5 = icmp eq i32 %4, 0, !dbg !2795
  br i1 %5, label %6, label %8, !dbg !2796

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2797
  br label %16, !dbg !2798

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2799, metadata !DIExpression()), !dbg !2804
  %9 = load i32, ptr %0, align 8, !dbg !2806, !tbaa !1415
  %10 = and i32 %9, 256, !dbg !2808
  %11 = icmp eq i32 %10, 0, !dbg !2808
  br i1 %11, label %14, label %12, !dbg !2809

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #37, !dbg !2810
  br label %14, !dbg !2810

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2811
  br label %16, !dbg !2812

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2791
  ret i32 %17, !dbg !2813
}

; Function Attrs: nofree nounwind
declare !dbg !2814 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2815 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2853, metadata !DIExpression()), !dbg !2854
  tail call void @__fpurge(ptr noundef nonnull %0) #37, !dbg !2855
  ret i32 0, !dbg !2856
}

; Function Attrs: nounwind
declare !dbg !2857 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2860 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2898, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i64 %1, metadata !2899, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i32 %2, metadata !2900, metadata !DIExpression()), !dbg !2904
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2905
  %5 = load ptr, ptr %4, align 8, !dbg !2905, !tbaa !2906
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2907
  %7 = load ptr, ptr %6, align 8, !dbg !2907, !tbaa !2908
  %8 = icmp eq ptr %5, %7, !dbg !2909
  br i1 %8, label %9, label %27, !dbg !2910

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2911
  %11 = load ptr, ptr %10, align 8, !dbg !2911, !tbaa !1600
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2912
  %13 = load ptr, ptr %12, align 8, !dbg !2912, !tbaa !2913
  %14 = icmp eq ptr %11, %13, !dbg !2914
  br i1 %14, label %15, label %27, !dbg !2915

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2916
  %17 = load ptr, ptr %16, align 8, !dbg !2916, !tbaa !2917
  %18 = icmp eq ptr %17, null, !dbg !2918
  br i1 %18, label %19, label %27, !dbg !2919

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #37, !dbg !2920
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #37, !dbg !2921
  call void @llvm.dbg.value(metadata i64 %21, metadata !2901, metadata !DIExpression()), !dbg !2922
  %22 = icmp eq i64 %21, -1, !dbg !2923
  br i1 %22, label %29, label %23, !dbg !2925

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2926, !tbaa !1415
  %25 = and i32 %24, -17, !dbg !2926
  store i32 %25, ptr %0, align 8, !dbg !2926, !tbaa !1415
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2927
  store i64 %21, ptr %26, align 8, !dbg !2928, !tbaa !2929
  br label %29, !dbg !2930

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2931
  br label %29, !dbg !2932

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2904
  ret i32 %30, !dbg !2933
}

; Function Attrs: nofree nounwind
declare !dbg !2934 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !2937 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2940, !tbaa !1092
  ret ptr %1, !dbg !2941
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !2942 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !2944, metadata !DIExpression()), !dbg !2947
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #38, !dbg !2948
  call void @llvm.dbg.value(metadata ptr %2, metadata !2945, metadata !DIExpression()), !dbg !2947
  %3 = icmp eq ptr %2, null, !dbg !2949
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2949
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2949
  call void @llvm.dbg.value(metadata ptr %5, metadata !2946, metadata !DIExpression()), !dbg !2947
  %6 = ptrtoint ptr %5 to i64, !dbg !2950
  %7 = ptrtoint ptr %0 to i64, !dbg !2950
  %8 = sub i64 %6, %7, !dbg !2950
  %9 = icmp sgt i64 %8, 6, !dbg !2952
  br i1 %9, label %10, label %19, !dbg !2953

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2954
  call void @llvm.dbg.value(metadata ptr %11, metadata !2955, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata ptr @.str.100, metadata !2960, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.value(metadata i64 7, metadata !2961, metadata !DIExpression()), !dbg !2962
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.100, i64 7), !dbg !2964
  %13 = icmp eq i32 %12, 0, !dbg !2965
  br i1 %13, label %14, label %19, !dbg !2966

14:                                               ; preds = %10
  call void @llvm.dbg.value(metadata ptr %5, metadata !2944, metadata !DIExpression()), !dbg !2947
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.101, i64 noundef 3) #38, !dbg !2967
  %16 = icmp eq i32 %15, 0, !dbg !2970
  %17 = select i1 %16, i64 3, i64 0, !dbg !2971
  %18 = getelementptr i8, ptr %5, i64 %17, !dbg !2971
  br label %19, !dbg !2971

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2947
  call void @llvm.dbg.value(metadata ptr %21, metadata !2946, metadata !DIExpression()), !dbg !2947
  call void @llvm.dbg.value(metadata ptr %20, metadata !2944, metadata !DIExpression()), !dbg !2947
  store ptr %20, ptr @program_name, align 8, !dbg !2972, !tbaa !1092
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2973, !tbaa !1092
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2974, !tbaa !1092
  ret void, !dbg !2975
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2976 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !764 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.__mbstate_t, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !771, metadata !DIExpression()), !dbg !2977
  call void @llvm.dbg.value(metadata ptr %1, metadata !772, metadata !DIExpression()), !dbg !2977
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #37, !dbg !2978
  call void @llvm.dbg.value(metadata ptr %5, metadata !773, metadata !DIExpression()), !dbg !2977
  %6 = icmp eq ptr %5, %0, !dbg !2979
  br i1 %6, label %7, label %14, !dbg !2981

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #37, !dbg !2982
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #37, !dbg !2983
  call void @llvm.dbg.declare(metadata ptr %4, metadata !775, metadata !DIExpression()), !dbg !2984
  call void @llvm.dbg.value(metadata ptr %4, metadata !2985, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.value(metadata ptr %4, metadata !2994, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i32 0, metadata !2999, metadata !DIExpression()), !dbg !3001
  call void @llvm.dbg.value(metadata i64 8, metadata !3000, metadata !DIExpression()), !dbg !3001
  store i64 0, ptr %4, align 8, !dbg !3003
  call void @llvm.dbg.value(metadata ptr %3, metadata !774, metadata !DIExpression(DW_OP_deref)), !dbg !2977
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #37, !dbg !3004
  %9 = icmp eq i64 %8, 2, !dbg !3006
  %10 = load i32, ptr %3, align 4
  call void @llvm.dbg.value(metadata i32 %10, metadata !774, metadata !DIExpression()), !dbg !2977
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !3007
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2977
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #37, !dbg !3008
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #37, !dbg !3008
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2977
  ret ptr %15, !dbg !3008
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !3009 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3014, metadata !DIExpression()), !dbg !3017
  %2 = tail call ptr @__errno_location() #40, !dbg !3018
  %3 = load i32, ptr %2, align 4, !dbg !3018, !tbaa !1162
  call void @llvm.dbg.value(metadata i32 %3, metadata !3015, metadata !DIExpression()), !dbg !3017
  %4 = icmp eq ptr %0, null, !dbg !3019
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3019
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef %5, i64 noundef 56) #44, !dbg !3020
  call void @llvm.dbg.value(metadata ptr %6, metadata !3016, metadata !DIExpression()), !dbg !3017
  store i32 %3, ptr %2, align 4, !dbg !3021, !tbaa !1162
  ret ptr %6, !dbg !3022
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !3023 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3029, metadata !DIExpression()), !dbg !3030
  %2 = icmp eq ptr %0, null, !dbg !3031
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !3031
  %4 = load i32, ptr %3, align 8, !dbg !3032, !tbaa !3033
  ret i32 %4, !dbg !3035
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !3036 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3040, metadata !DIExpression()), !dbg !3042
  call void @llvm.dbg.value(metadata i32 %1, metadata !3041, metadata !DIExpression()), !dbg !3042
  %3 = icmp eq ptr %0, null, !dbg !3043
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3043
  store i32 %1, ptr %4, align 8, !dbg !3044, !tbaa !3033
  ret void, !dbg !3045
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !3046 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3050, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i8 %1, metadata !3051, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i32 %2, metadata !3052, metadata !DIExpression()), !dbg !3058
  call void @llvm.dbg.value(metadata i8 %1, metadata !3053, metadata !DIExpression()), !dbg !3058
  %4 = icmp eq ptr %0, null, !dbg !3059
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3059
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3060
  %7 = lshr i8 %1, 5, !dbg !3061
  %8 = zext i8 %7 to i64, !dbg !3061
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !3062
  call void @llvm.dbg.value(metadata ptr %9, metadata !3054, metadata !DIExpression()), !dbg !3058
  %10 = and i8 %1, 31, !dbg !3063
  %11 = zext i8 %10 to i32, !dbg !3063
  call void @llvm.dbg.value(metadata i32 %11, metadata !3056, metadata !DIExpression()), !dbg !3058
  %12 = load i32, ptr %9, align 4, !dbg !3064, !tbaa !1162
  %13 = lshr i32 %12, %11, !dbg !3065
  %14 = and i32 %13, 1, !dbg !3066
  call void @llvm.dbg.value(metadata i32 %14, metadata !3057, metadata !DIExpression()), !dbg !3058
  %15 = xor i32 %13, %2, !dbg !3067
  %16 = and i32 %15, 1, !dbg !3067
  %17 = shl nuw i32 %16, %11, !dbg !3068
  %18 = xor i32 %17, %12, !dbg !3069
  store i32 %18, ptr %9, align 4, !dbg !3069, !tbaa !1162
  ret i32 %14, !dbg !3070
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !3071 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3075, metadata !DIExpression()), !dbg !3078
  call void @llvm.dbg.value(metadata i32 %1, metadata !3076, metadata !DIExpression()), !dbg !3078
  %3 = icmp eq ptr %0, null, !dbg !3079
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !3081
  call void @llvm.dbg.value(metadata ptr %4, metadata !3075, metadata !DIExpression()), !dbg !3078
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !3082
  %6 = load i32, ptr %5, align 4, !dbg !3082, !tbaa !3083
  call void @llvm.dbg.value(metadata i32 %6, metadata !3077, metadata !DIExpression()), !dbg !3078
  store i32 %1, ptr %5, align 4, !dbg !3084, !tbaa !3083
  ret i32 %6, !dbg !3085
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3086 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3090, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata ptr %1, metadata !3091, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.value(metadata ptr %2, metadata !3092, metadata !DIExpression()), !dbg !3093
  %4 = icmp eq ptr %0, null, !dbg !3094
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3096
  call void @llvm.dbg.value(metadata ptr %5, metadata !3090, metadata !DIExpression()), !dbg !3093
  store i32 10, ptr %5, align 8, !dbg !3097, !tbaa !3033
  %6 = icmp ne ptr %1, null, !dbg !3098
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3100
  br i1 %8, label %10, label %9, !dbg !3100

9:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3101
  unreachable, !dbg !3101

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3102
  store ptr %1, ptr %11, align 8, !dbg !3103, !tbaa !3104
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3105
  store ptr %2, ptr %12, align 8, !dbg !3106, !tbaa !3107
  ret void, !dbg !3108
}

; Function Attrs: noreturn nounwind
declare !dbg !3109 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3110 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3114, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %1, metadata !3115, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %2, metadata !3116, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %3, metadata !3117, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata ptr %4, metadata !3118, metadata !DIExpression()), !dbg !3122
  %6 = icmp eq ptr %4, null, !dbg !3123
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !3123
  call void @llvm.dbg.value(metadata ptr %7, metadata !3119, metadata !DIExpression()), !dbg !3122
  %8 = tail call ptr @__errno_location() #40, !dbg !3124
  %9 = load i32, ptr %8, align 4, !dbg !3124, !tbaa !1162
  call void @llvm.dbg.value(metadata i32 %9, metadata !3120, metadata !DIExpression()), !dbg !3122
  %10 = load i32, ptr %7, align 8, !dbg !3125, !tbaa !3033
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !3126
  %12 = load i32, ptr %11, align 4, !dbg !3126, !tbaa !3083
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !3127
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !3128
  %15 = load ptr, ptr %14, align 8, !dbg !3128, !tbaa !3104
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !3129
  %17 = load ptr, ptr %16, align 8, !dbg !3129, !tbaa !3107
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !3130
  call void @llvm.dbg.value(metadata i64 %18, metadata !3121, metadata !DIExpression()), !dbg !3122
  store i32 %9, ptr %8, align 4, !dbg !3131, !tbaa !1162
  ret i64 %18, !dbg !3132
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !3133 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.__mbstate_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.__mbstate_t, align 8
  %14 = alloca %struct.__mbstate_t, align 8
  %15 = alloca i32, align 4
  call void @llvm.dbg.value(metadata ptr %0, metadata !3139, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %1, metadata !3140, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %2, metadata !3141, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %3, metadata !3142, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 %4, metadata !3143, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 %5, metadata !3144, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %6, metadata !3145, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %7, metadata !3146, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %8, metadata !3147, metadata !DIExpression()), !dbg !3201
  %16 = tail call i64 @__ctype_get_mb_cur_max() #37, !dbg !3202
  %17 = icmp eq i64 %16, 1, !dbg !3203
  call void @llvm.dbg.value(metadata i1 %17, metadata !3148, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3201
  call void @llvm.dbg.value(metadata i64 0, metadata !3149, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 0, metadata !3150, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr null, metadata !3151, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 0, metadata !3152, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 0, metadata !3153, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 %5, metadata !3154, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3201
  call void @llvm.dbg.value(metadata i8 0, metadata !3155, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 1, metadata !3156, metadata !DIExpression()), !dbg !3201
  %18 = and i32 %5, 2, !dbg !3204
  %19 = icmp ne i32 %18, 0, !dbg !3204
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !3204

27:                                               ; preds = %591, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %591 ]
  %29 = phi ptr [ %7, %9 ], [ %104, %591 ]
  %30 = phi ptr [ %8, %9 ], [ %105, %591 ]
  %31 = phi i64 [ %3, %9 ], [ %123, %591 ]
  %32 = phi i64 [ 0, %9 ], [ %125, %591 ], !dbg !3205
  %33 = phi ptr [ null, %9 ], [ %107, %591 ], !dbg !3206
  %34 = phi i64 [ 0, %9 ], [ %108, %591 ], !dbg !3207
  %35 = phi i1 [ false, %9 ], [ %109, %591 ]
  %36 = phi i1 [ %19, %9 ], [ false, %591 ]
  %37 = phi i1 [ false, %9 ], [ %126, %591 ]
  %38 = phi i1 [ true, %9 ], [ false, %591 ]
  %39 = phi i64 [ %1, %9 ], [ %125, %591 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !3140, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3156, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3155, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3154, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3153, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %34, metadata !3152, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %33, metadata !3151, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %32, metadata !3150, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 0, metadata !3149, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %31, metadata !3142, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %30, metadata !3147, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %29, metadata !3146, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 %28, metadata !3143, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.label(metadata !3194), !dbg !3208
  call void @llvm.dbg.value(metadata i8 0, metadata !3157, metadata !DIExpression()), !dbg !3201
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
  ], !dbg !3209

40:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3154, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 5, metadata !3143, metadata !DIExpression()), !dbg !3201
  br label %102, !dbg !3210

41:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3154, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 5, metadata !3143, metadata !DIExpression()), !dbg !3201
  br i1 %36, label %102, label %42, !dbg !3210

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !3211
  br i1 %43, label %102, label %44, !dbg !3215

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !3211, !tbaa !1171
  br label %102, !dbg !3211

45:                                               ; preds = %27, %27
  call void @llvm.dbg.value(metadata ptr @.str.11.114, metadata !859, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 %28, metadata !860, metadata !DIExpression()), !dbg !3216
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.115, ptr noundef nonnull @.str.11.114, i32 noundef 5) #37, !dbg !3220
  call void @llvm.dbg.value(metadata ptr %46, metadata !861, metadata !DIExpression()), !dbg !3216
  %47 = icmp eq ptr %46, @.str.11.114, !dbg !3221
  br i1 %47, label %48, label %57, !dbg !3223

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #37, !dbg !3224
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #37, !dbg !3225
  call void @llvm.dbg.declare(metadata ptr %13, metadata !863, metadata !DIExpression()), !dbg !3226
  call void @llvm.dbg.value(metadata ptr %13, metadata !3227, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.value(metadata ptr %13, metadata !3235, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i32 0, metadata !3238, metadata !DIExpression()), !dbg !3240
  call void @llvm.dbg.value(metadata i64 8, metadata !3239, metadata !DIExpression()), !dbg !3240
  store i64 0, ptr %13, align 8, !dbg !3242
  call void @llvm.dbg.value(metadata ptr %12, metadata !862, metadata !DIExpression(DW_OP_deref)), !dbg !3216
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #37, !dbg !3243
  %50 = icmp eq i64 %49, 3, !dbg !3245
  %51 = load i32, ptr %12, align 4
  call void @llvm.dbg.value(metadata i32 %51, metadata !862, metadata !DIExpression()), !dbg !3216
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !3246
  %54 = icmp eq i32 %28, 9, !dbg !3246
  %55 = select i1 %54, ptr @.str.10.116, ptr @.str.12.117, !dbg !3246
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !3246
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #37, !dbg !3247
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #37, !dbg !3247
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !3216
  call void @llvm.dbg.value(metadata ptr %58, metadata !3146, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr @.str.12.117, metadata !859, metadata !DIExpression()), !dbg !3248
  call void @llvm.dbg.value(metadata i32 %28, metadata !860, metadata !DIExpression()), !dbg !3248
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.115, ptr noundef nonnull @.str.12.117, i32 noundef 5) #37, !dbg !3250
  call void @llvm.dbg.value(metadata ptr %59, metadata !861, metadata !DIExpression()), !dbg !3248
  %60 = icmp eq ptr %59, @.str.12.117, !dbg !3251
  br i1 %60, label %61, label %70, !dbg !3252

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #37, !dbg !3253
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #37, !dbg !3254
  call void @llvm.dbg.declare(metadata ptr %11, metadata !863, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata ptr %11, metadata !3227, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata ptr %11, metadata !3235, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 0, metadata !3238, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i64 8, metadata !3239, metadata !DIExpression()), !dbg !3258
  store i64 0, ptr %11, align 8, !dbg !3260
  call void @llvm.dbg.value(metadata ptr %10, metadata !862, metadata !DIExpression(DW_OP_deref)), !dbg !3248
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #37, !dbg !3261
  %63 = icmp eq i64 %62, 3, !dbg !3262
  %64 = load i32, ptr %10, align 4
  call void @llvm.dbg.value(metadata i32 %64, metadata !862, metadata !DIExpression()), !dbg !3248
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !3263
  %67 = icmp eq i32 %28, 9, !dbg !3263
  %68 = select i1 %67, ptr @.str.10.116, ptr @.str.12.117, !dbg !3263
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !3263
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #37, !dbg !3264
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #37, !dbg !3264
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  call void @llvm.dbg.value(metadata ptr %72, metadata !3147, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %71, metadata !3146, metadata !DIExpression()), !dbg !3201
  br i1 %36, label %88, label %73, !dbg !3265

73:                                               ; preds = %70
  call void @llvm.dbg.value(metadata ptr %71, metadata !3158, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 0, metadata !3149, metadata !DIExpression()), !dbg !3201
  %74 = load i8, ptr %71, align 1, !dbg !3267, !tbaa !1171
  %75 = icmp eq i8 %74, 0, !dbg !3269
  br i1 %75, label %88, label %76, !dbg !3269

76:                                               ; preds = %73, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %73 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %73 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %73 ]
  call void @llvm.dbg.value(metadata ptr %78, metadata !3158, metadata !DIExpression()), !dbg !3266
  call void @llvm.dbg.value(metadata i64 %79, metadata !3149, metadata !DIExpression()), !dbg !3201
  %80 = icmp ult i64 %79, %39, !dbg !3270
  br i1 %80, label %81, label %83, !dbg !3273

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !3270
  store i8 %77, ptr %82, align 1, !dbg !3270, !tbaa !1171
  br label %83, !dbg !3270

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !3273
  call void @llvm.dbg.value(metadata i64 %84, metadata !3149, metadata !DIExpression()), !dbg !3201
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !3274
  call void @llvm.dbg.value(metadata ptr %85, metadata !3158, metadata !DIExpression()), !dbg !3266
  %86 = load i8, ptr %85, align 1, !dbg !3267, !tbaa !1171
  %87 = icmp eq i8 %86, 0, !dbg !3269
  br i1 %87, label %88, label %76, !dbg !3269, !llvm.loop !3275

88:                                               ; preds = %83, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %84, %83 ], !dbg !3277
  call void @llvm.dbg.value(metadata i64 %89, metadata !3149, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 1, metadata !3153, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %72, metadata !3151, metadata !DIExpression()), !dbg !3201
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #38, !dbg !3278
  call void @llvm.dbg.value(metadata i64 %90, metadata !3152, metadata !DIExpression()), !dbg !3201
  br label %102, !dbg !3279

91:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !3153, metadata !DIExpression()), !dbg !3201
  br label %93, !dbg !3280

92:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3154, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3153, metadata !DIExpression()), !dbg !3201
  br i1 %36, label %102, label %96, !dbg !3281

93:                                               ; preds = %91, %27
  %94 = phi i1 [ true, %91 ], [ %35, %27 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3154, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3153, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 2, metadata !3143, metadata !DIExpression()), !dbg !3201
  br label %102, !dbg !3282

95:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i8 poison, metadata !3154, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3153, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 2, metadata !3143, metadata !DIExpression()), !dbg !3201
  br i1 %36, label %102, label %96, !dbg !3282

96:                                               ; preds = %92, %95
  %97 = phi i1 [ %35, %95 ], [ true, %92 ]
  %98 = icmp eq i64 %39, 0, !dbg !3283
  br i1 %98, label %102, label %99, !dbg !3287

99:                                               ; preds = %96
  store i8 39, ptr %0, align 1, !dbg !3283, !tbaa !1171
  br label %102, !dbg !3283

100:                                              ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !3154, metadata !DIExpression()), !dbg !3201
  br label %102, !dbg !3288

101:                                              ; preds = %27
  call void @abort() #39, !dbg !3289
  unreachable, !dbg !3289

102:                                              ; preds = %92, %93, %40, %95, %99, %96, %27, %41, %44, %42, %100, %88
  %103 = phi i32 [ 0, %100 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %96 ], [ 2, %99 ], [ 2, %95 ], [ 5, %40 ], [ 2, %93 ], [ 2, %92 ]
  %104 = phi ptr [ %29, %100 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %96 ], [ %29, %99 ], [ %29, %95 ], [ %29, %40 ], [ %29, %93 ], [ %29, %92 ]
  %105 = phi ptr [ %30, %100 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %96 ], [ %30, %99 ], [ %30, %95 ], [ %30, %40 ], [ %30, %93 ], [ %30, %92 ]
  %106 = phi i64 [ 0, %100 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %96 ], [ 1, %99 ], [ 0, %95 ], [ 0, %40 ], [ 0, %93 ], [ 0, %92 ], !dbg !3277
  %107 = phi ptr [ %33, %100 ], [ %72, %88 ], [ @.str.10.116, %42 ], [ @.str.10.116, %44 ], [ @.str.10.116, %41 ], [ %33, %27 ], [ @.str.12.117, %96 ], [ @.str.12.117, %99 ], [ @.str.12.117, %95 ], [ @.str.10.116, %40 ], [ @.str.12.117, %93 ], [ @.str.12.117, %92 ], !dbg !3201
  %108 = phi i64 [ %34, %100 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %96 ], [ 1, %99 ], [ 1, %95 ], [ 1, %40 ], [ 1, %93 ], [ 1, %92 ], !dbg !3201
  %109 = phi i1 [ %35, %100 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %97, %96 ], [ %97, %99 ], [ %35, %95 ], [ true, %40 ], [ %94, %93 ], [ %35, %92 ]
  %110 = phi i1 [ false, %100 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %96 ], [ false, %99 ], [ true, %95 ], [ true, %40 ], [ true, %93 ], [ true, %92 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3154, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3153, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %108, metadata !3152, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %107, metadata !3151, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %106, metadata !3149, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %105, metadata !3147, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata ptr %104, metadata !3146, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i32 %103, metadata !3143, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 0, metadata !3163, metadata !DIExpression()), !dbg !3290
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
  br label %122, !dbg !3291

122:                                              ; preds = %569, %102
  %123 = phi i64 [ %31, %102 ], [ %570, %569 ]
  %124 = phi i64 [ %106, %102 ], [ %571, %569 ], !dbg !3277
  %125 = phi i64 [ %32, %102 ], [ %572, %569 ], !dbg !3205
  %126 = phi i1 [ %37, %102 ], [ %573, %569 ]
  %127 = phi i1 [ %38, %102 ], [ %574, %569 ]
  %128 = phi i1 [ false, %102 ], [ %575, %569 ]
  %129 = phi i64 [ 0, %102 ], [ %578, %569 ], !dbg !3292
  %130 = phi i64 [ %39, %102 ], [ %577, %569 ]
  call void @llvm.dbg.value(metadata i64 %130, metadata !3140, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %129, metadata !3163, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8 poison, metadata !3157, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3156, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3155, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %125, metadata !3150, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %124, metadata !3149, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %123, metadata !3142, metadata !DIExpression()), !dbg !3201
  %131 = icmp eq i64 %123, -1, !dbg !3293
  br i1 %131, label %132, label %136, !dbg !3294

132:                                              ; preds = %122
  %133 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3295
  %134 = load i8, ptr %133, align 1, !dbg !3295, !tbaa !1171
  %135 = icmp eq i8 %134, 0, !dbg !3296
  br i1 %135, label %579, label %138, !dbg !3297

136:                                              ; preds = %122
  %137 = icmp eq i64 %129, %123, !dbg !3298
  br i1 %137, label %579, label %138, !dbg !3297

138:                                              ; preds = %132, %136
  call void @llvm.dbg.value(metadata i8 0, metadata !3165, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 0, metadata !3168, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 0, metadata !3169, metadata !DIExpression()), !dbg !3299
  br i1 %114, label %139, label %152, !dbg !3300

139:                                              ; preds = %138
  %140 = add i64 %129, %108, !dbg !3302
  %141 = select i1 %131, i1 %115, i1 false, !dbg !3303
  br i1 %141, label %142, label %144, !dbg !3303

142:                                              ; preds = %139
  %143 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !3304
  call void @llvm.dbg.value(metadata i64 %143, metadata !3142, metadata !DIExpression()), !dbg !3201
  br label %144, !dbg !3305

144:                                              ; preds = %139, %142
  %145 = phi i64 [ %143, %142 ], [ %123, %139 ], !dbg !3305
  call void @llvm.dbg.value(metadata i64 %145, metadata !3142, metadata !DIExpression()), !dbg !3201
  %146 = icmp ugt i64 %140, %145, !dbg !3306
  br i1 %146, label %152, label %147, !dbg !3307

147:                                              ; preds = %144
  %148 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3308
  call void @llvm.dbg.value(metadata ptr %148, metadata !3309, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata ptr %107, metadata !3312, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i64 %108, metadata !3313, metadata !DIExpression()), !dbg !3314
  %149 = call i32 @bcmp(ptr %148, ptr %107, i64 %108), !dbg !3316
  %150 = icmp eq i32 %149, 0, !dbg !3317
  %151 = and i1 %150, %110, !dbg !3318
  br i1 %151, label %630, label %152, !dbg !3318

152:                                              ; preds = %147, %144, %138
  %153 = phi i64 [ %145, %147 ], [ %145, %144 ], [ %123, %138 ]
  %154 = phi i1 [ %150, %147 ], [ false, %144 ], [ false, %138 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3165, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %153, metadata !3142, metadata !DIExpression()), !dbg !3201
  %155 = getelementptr inbounds i8, ptr %2, i64 %129, !dbg !3319
  %156 = load i8, ptr %155, align 1, !dbg !3319, !tbaa !1171
  call void @llvm.dbg.value(metadata i8 %156, metadata !3170, metadata !DIExpression()), !dbg !3299
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
  ], !dbg !3320

157:                                              ; preds = %152
  br i1 %109, label %158, label %204, !dbg !3321

158:                                              ; preds = %157
  br i1 %110, label %619, label %159, !dbg !3322

159:                                              ; preds = %158
  call void @llvm.dbg.value(metadata i8 1, metadata !3168, metadata !DIExpression()), !dbg !3299
  %160 = select i1 %111, i1 true, i1 %128, !dbg !3326
  br i1 %160, label %177, label %161, !dbg !3326

161:                                              ; preds = %159
  %162 = icmp ult i64 %124, %130, !dbg !3328
  br i1 %162, label %163, label %165, !dbg !3332

163:                                              ; preds = %161
  %164 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3328
  store i8 39, ptr %164, align 1, !dbg !3328, !tbaa !1171
  br label %165, !dbg !3328

165:                                              ; preds = %163, %161
  %166 = add i64 %124, 1, !dbg !3332
  call void @llvm.dbg.value(metadata i64 %166, metadata !3149, metadata !DIExpression()), !dbg !3201
  %167 = icmp ult i64 %166, %130, !dbg !3333
  br i1 %167, label %168, label %170, !dbg !3336

168:                                              ; preds = %165
  %169 = getelementptr inbounds i8, ptr %0, i64 %166, !dbg !3333
  store i8 36, ptr %169, align 1, !dbg !3333, !tbaa !1171
  br label %170, !dbg !3333

170:                                              ; preds = %168, %165
  %171 = add i64 %124, 2, !dbg !3336
  call void @llvm.dbg.value(metadata i64 %171, metadata !3149, metadata !DIExpression()), !dbg !3201
  %172 = icmp ult i64 %171, %130, !dbg !3337
  br i1 %172, label %173, label %175, !dbg !3340

173:                                              ; preds = %170
  %174 = getelementptr inbounds i8, ptr %0, i64 %171, !dbg !3337
  store i8 39, ptr %174, align 1, !dbg !3337, !tbaa !1171
  br label %175, !dbg !3337

175:                                              ; preds = %173, %170
  %176 = add i64 %124, 3, !dbg !3340
  call void @llvm.dbg.value(metadata i64 %176, metadata !3149, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 1, metadata !3157, metadata !DIExpression()), !dbg !3201
  br label %177, !dbg !3341

177:                                              ; preds = %159, %175
  %178 = phi i64 [ %176, %175 ], [ %124, %159 ], !dbg !3201
  %179 = phi i1 [ true, %175 ], [ %128, %159 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3157, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %178, metadata !3149, metadata !DIExpression()), !dbg !3201
  %180 = icmp ult i64 %178, %130, !dbg !3342
  br i1 %180, label %181, label %183, !dbg !3345

181:                                              ; preds = %177
  %182 = getelementptr inbounds i8, ptr %0, i64 %178, !dbg !3342
  store i8 92, ptr %182, align 1, !dbg !3342, !tbaa !1171
  br label %183, !dbg !3342

183:                                              ; preds = %181, %177
  %184 = add i64 %178, 1, !dbg !3345
  call void @llvm.dbg.value(metadata i64 %184, metadata !3149, metadata !DIExpression()), !dbg !3201
  br i1 %111, label %185, label %482, !dbg !3346

185:                                              ; preds = %183
  %186 = add i64 %129, 1, !dbg !3348
  %187 = icmp ult i64 %186, %153, !dbg !3349
  br i1 %187, label %188, label %439, !dbg !3350

188:                                              ; preds = %185
  %189 = getelementptr inbounds i8, ptr %2, i64 %186, !dbg !3351
  %190 = load i8, ptr %189, align 1, !dbg !3351, !tbaa !1171
  %191 = add i8 %190, -48, !dbg !3352
  %192 = icmp ult i8 %191, 10, !dbg !3352
  br i1 %192, label %193, label %439, !dbg !3352

193:                                              ; preds = %188
  %194 = icmp ult i64 %184, %130, !dbg !3353
  br i1 %194, label %195, label %197, !dbg !3357

195:                                              ; preds = %193
  %196 = getelementptr inbounds i8, ptr %0, i64 %184, !dbg !3353
  store i8 48, ptr %196, align 1, !dbg !3353, !tbaa !1171
  br label %197, !dbg !3353

197:                                              ; preds = %195, %193
  %198 = add i64 %178, 2, !dbg !3357
  call void @llvm.dbg.value(metadata i64 %198, metadata !3149, metadata !DIExpression()), !dbg !3201
  %199 = icmp ult i64 %198, %130, !dbg !3358
  br i1 %199, label %200, label %202, !dbg !3361

200:                                              ; preds = %197
  %201 = getelementptr inbounds i8, ptr %0, i64 %198, !dbg !3358
  store i8 48, ptr %201, align 1, !dbg !3358, !tbaa !1171
  br label %202, !dbg !3358

202:                                              ; preds = %200, %197
  %203 = add i64 %178, 3, !dbg !3361
  call void @llvm.dbg.value(metadata i64 %203, metadata !3149, metadata !DIExpression()), !dbg !3201
  br label %439, !dbg !3362

204:                                              ; preds = %157
  br i1 %24, label %450, label %569, !dbg !3363

205:                                              ; preds = %152
  switch i32 %103, label %439 [
    i32 2, label %206
    i32 5, label %207
  ], !dbg !3364

206:                                              ; preds = %205
  br i1 %110, label %621, label %439, !dbg !3365

207:                                              ; preds = %205
  br i1 %22, label %439, label %208, !dbg !3367

208:                                              ; preds = %207
  %209 = add i64 %129, 2, !dbg !3369
  %210 = icmp ult i64 %209, %153, !dbg !3370
  br i1 %210, label %211, label %439, !dbg !3371

211:                                              ; preds = %208
  %212 = add i64 %129, 1, !dbg !3372
  %213 = getelementptr inbounds i8, ptr %2, i64 %212, !dbg !3373
  %214 = load i8, ptr %213, align 1, !dbg !3373, !tbaa !1171
  %215 = icmp eq i8 %214, 63, !dbg !3374
  br i1 %215, label %216, label %439, !dbg !3375

216:                                              ; preds = %211
  %217 = getelementptr inbounds i8, ptr %2, i64 %209, !dbg !3376
  %218 = load i8, ptr %217, align 1, !dbg !3376, !tbaa !1171
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
  ], !dbg !3377

219:                                              ; preds = %216, %216, %216, %216, %216, %216, %216, %216, %216
  br i1 %110, label %621, label %220, !dbg !3378

220:                                              ; preds = %219
  call void @llvm.dbg.value(metadata i8 %218, metadata !3170, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %209, metadata !3163, metadata !DIExpression()), !dbg !3290
  %221 = icmp ult i64 %124, %130, !dbg !3380
  br i1 %221, label %222, label %224, !dbg !3383

222:                                              ; preds = %220
  %223 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3380
  store i8 63, ptr %223, align 1, !dbg !3380, !tbaa !1171
  br label %224, !dbg !3380

224:                                              ; preds = %222, %220
  %225 = add i64 %124, 1, !dbg !3383
  call void @llvm.dbg.value(metadata i64 %225, metadata !3149, metadata !DIExpression()), !dbg !3201
  %226 = icmp ult i64 %225, %130, !dbg !3384
  br i1 %226, label %227, label %229, !dbg !3387

227:                                              ; preds = %224
  %228 = getelementptr inbounds i8, ptr %0, i64 %225, !dbg !3384
  store i8 34, ptr %228, align 1, !dbg !3384, !tbaa !1171
  br label %229, !dbg !3384

229:                                              ; preds = %227, %224
  %230 = add i64 %124, 2, !dbg !3387
  call void @llvm.dbg.value(metadata i64 %230, metadata !3149, metadata !DIExpression()), !dbg !3201
  %231 = icmp ult i64 %230, %130, !dbg !3388
  br i1 %231, label %232, label %234, !dbg !3391

232:                                              ; preds = %229
  %233 = getelementptr inbounds i8, ptr %0, i64 %230, !dbg !3388
  store i8 34, ptr %233, align 1, !dbg !3388, !tbaa !1171
  br label %234, !dbg !3388

234:                                              ; preds = %232, %229
  %235 = add i64 %124, 3, !dbg !3391
  call void @llvm.dbg.value(metadata i64 %235, metadata !3149, metadata !DIExpression()), !dbg !3201
  %236 = icmp ult i64 %235, %130, !dbg !3392
  br i1 %236, label %237, label %239, !dbg !3395

237:                                              ; preds = %234
  %238 = getelementptr inbounds i8, ptr %0, i64 %235, !dbg !3392
  store i8 63, ptr %238, align 1, !dbg !3392, !tbaa !1171
  br label %239, !dbg !3392

239:                                              ; preds = %237, %234
  %240 = add i64 %124, 4, !dbg !3395
  call void @llvm.dbg.value(metadata i64 %240, metadata !3149, metadata !DIExpression()), !dbg !3201
  br label %439, !dbg !3396

241:                                              ; preds = %152
  br label %251, !dbg !3397

242:                                              ; preds = %152
  br label %251, !dbg !3398

243:                                              ; preds = %152
  br label %249, !dbg !3399

244:                                              ; preds = %152
  br label %249, !dbg !3400

245:                                              ; preds = %152
  br label %251, !dbg !3401

246:                                              ; preds = %152
  br i1 %116, label %247, label %248, !dbg !3402

247:                                              ; preds = %246
  br i1 %110, label %621, label %529, !dbg !3403

248:                                              ; preds = %246
  br i1 %118, label %529, label %251, !dbg !3406

249:                                              ; preds = %152, %244, %243
  %250 = phi i8 [ 116, %244 ], [ 114, %243 ], [ 110, %152 ], !dbg !3408
  call void @llvm.dbg.label(metadata !3195), !dbg !3409
  br i1 %119, label %621, label %251, !dbg !3410

251:                                              ; preds = %248, %249, %152, %245, %242, %241
  %252 = phi i8 [ %250, %249 ], [ 118, %245 ], [ 102, %242 ], [ 98, %241 ], [ 97, %152 ], [ 92, %248 ], !dbg !3408
  call void @llvm.dbg.label(metadata !3197), !dbg !3412
  br i1 %109, label %493, label %450, !dbg !3413

253:                                              ; preds = %152, %152
  switch i64 %153, label %439 [
    i64 -1, label %254
    i64 1, label %257
  ], !dbg !3414

254:                                              ; preds = %253
  %255 = load i8, ptr %20, align 1, !dbg !3415, !tbaa !1171
  %256 = icmp eq i8 %255, 0, !dbg !3417
  br i1 %256, label %257, label %439, !dbg !3418

257:                                              ; preds = %253, %254, %152, %152
  %258 = icmp eq i64 %129, 0, !dbg !3419
  br i1 %258, label %259, label %439, !dbg !3421

259:                                              ; preds = %257, %152
  call void @llvm.dbg.value(metadata i8 1, metadata !3169, metadata !DIExpression()), !dbg !3299
  br label %260, !dbg !3422

260:                                              ; preds = %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %259
  %261 = phi i1 [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ true, %259 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3169, metadata !DIExpression()), !dbg !3299
  br i1 %116, label %262, label %439, !dbg !3423

262:                                              ; preds = %260
  br i1 %110, label %621, label %439, !dbg !3425

263:                                              ; preds = %152
  call void @llvm.dbg.value(metadata i8 1, metadata !3155, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 1, metadata !3169, metadata !DIExpression()), !dbg !3299
  br i1 %116, label %264, label %439, !dbg !3426

264:                                              ; preds = %263
  br i1 %110, label %621, label %265, !dbg !3427

265:                                              ; preds = %264
  %266 = icmp eq i64 %130, 0, !dbg !3430
  %267 = icmp ne i64 %125, 0
  %268 = select i1 %266, i1 true, i1 %267, !dbg !3432
  %269 = select i1 %268, i64 %125, i64 %130, !dbg !3432
  %270 = select i1 %268, i64 %130, i64 0, !dbg !3432
  call void @llvm.dbg.value(metadata i64 %270, metadata !3140, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %269, metadata !3150, metadata !DIExpression()), !dbg !3201
  %271 = icmp ult i64 %124, %270, !dbg !3433
  br i1 %271, label %272, label %274, !dbg !3436

272:                                              ; preds = %265
  %273 = getelementptr inbounds i8, ptr %0, i64 %124, !dbg !3433
  store i8 39, ptr %273, align 1, !dbg !3433, !tbaa !1171
  br label %274, !dbg !3433

274:                                              ; preds = %272, %265
  %275 = add i64 %124, 1, !dbg !3436
  call void @llvm.dbg.value(metadata i64 %275, metadata !3149, metadata !DIExpression()), !dbg !3201
  %276 = icmp ult i64 %275, %270, !dbg !3437
  br i1 %276, label %277, label %279, !dbg !3440

277:                                              ; preds = %274
  %278 = getelementptr inbounds i8, ptr %0, i64 %275, !dbg !3437
  store i8 92, ptr %278, align 1, !dbg !3437, !tbaa !1171
  br label %279, !dbg !3437

279:                                              ; preds = %277, %274
  %280 = add i64 %124, 2, !dbg !3440
  call void @llvm.dbg.value(metadata i64 %280, metadata !3149, metadata !DIExpression()), !dbg !3201
  %281 = icmp ult i64 %280, %270, !dbg !3441
  br i1 %281, label %282, label %284, !dbg !3444

282:                                              ; preds = %279
  %283 = getelementptr inbounds i8, ptr %0, i64 %280, !dbg !3441
  store i8 39, ptr %283, align 1, !dbg !3441, !tbaa !1171
  br label %284, !dbg !3441

284:                                              ; preds = %282, %279
  %285 = add i64 %124, 3, !dbg !3444
  call void @llvm.dbg.value(metadata i64 %285, metadata !3149, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 0, metadata !3157, metadata !DIExpression()), !dbg !3201
  br label %439, !dbg !3445

286:                                              ; preds = %152
  br i1 %17, label %287, label %295, !dbg !3446

287:                                              ; preds = %286
  call void @llvm.dbg.value(metadata i64 1, metadata !3171, metadata !DIExpression()), !dbg !3447
  %288 = tail call ptr @__ctype_b_loc() #40, !dbg !3448
  %289 = load ptr, ptr %288, align 8, !dbg !3448, !tbaa !1092
  %290 = zext i8 %156 to i64
  %291 = getelementptr inbounds i16, ptr %289, i64 %290, !dbg !3448
  %292 = load i16, ptr %291, align 2, !dbg !3448, !tbaa !1203
  %293 = and i16 %292, 16384, !dbg !3448
  %294 = icmp ne i16 %293, 0, !dbg !3450
  call void @llvm.dbg.value(metadata i1 %294, metadata !3174, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3447
  br label %337, !dbg !3451

295:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #37, !dbg !3452
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3175, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.value(metadata ptr %14, metadata !3227, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata ptr %14, metadata !3235, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i32 0, metadata !3238, metadata !DIExpression()), !dbg !3456
  call void @llvm.dbg.value(metadata i64 8, metadata !3239, metadata !DIExpression()), !dbg !3456
  store i64 0, ptr %14, align 8, !dbg !3458
  call void @llvm.dbg.value(metadata i64 0, metadata !3171, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i8 1, metadata !3174, metadata !DIExpression()), !dbg !3447
  %296 = icmp eq i64 %153, -1, !dbg !3459
  br i1 %296, label %297, label %299, !dbg !3461

297:                                              ; preds = %295
  %298 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #38, !dbg !3462
  call void @llvm.dbg.value(metadata i64 %298, metadata !3142, metadata !DIExpression()), !dbg !3201
  br label %299, !dbg !3463

299:                                              ; preds = %295, %297
  %300 = phi i64 [ %298, %297 ], [ %153, %295 ], !dbg !3299
  call void @llvm.dbg.value(metadata i64 %300, metadata !3142, metadata !DIExpression()), !dbg !3201
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #37, !dbg !3464
  %301 = sub i64 %300, %129, !dbg !3465
  call void @llvm.dbg.value(metadata ptr %15, metadata !3178, metadata !DIExpression(DW_OP_deref)), !dbg !3466
  %302 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %155, i64 noundef %301, ptr noundef nonnull %14) #37, !dbg !3467
  call void @llvm.dbg.value(metadata i64 %302, metadata !3182, metadata !DIExpression()), !dbg !3466
  switch i64 %302, label %316 [
    i64 0, label %332
    i64 -1, label %305
    i64 -2, label %303
  ], !dbg !3468

303:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i64 0, metadata !3171, metadata !DIExpression()), !dbg !3447
  %304 = icmp ugt i64 %300, %129, !dbg !3469
  br i1 %304, label %306, label %332, !dbg !3471

305:                                              ; preds = %299
  call void @llvm.dbg.value(metadata i8 0, metadata !3174, metadata !DIExpression()), !dbg !3447
  br label %332, !dbg !3472

306:                                              ; preds = %303, %312
  %307 = phi i64 [ %314, %312 ], [ %129, %303 ]
  %308 = phi i64 [ %313, %312 ], [ 0, %303 ]
  call void @llvm.dbg.value(metadata i64 %308, metadata !3171, metadata !DIExpression()), !dbg !3447
  %309 = getelementptr inbounds i8, ptr %2, i64 %307, !dbg !3474
  %310 = load i8, ptr %309, align 1, !dbg !3474, !tbaa !1171
  %311 = icmp eq i8 %310, 0, !dbg !3471
  br i1 %311, label %332, label %312, !dbg !3475

312:                                              ; preds = %306
  %313 = add i64 %308, 1, !dbg !3476
  call void @llvm.dbg.value(metadata i64 %313, metadata !3171, metadata !DIExpression()), !dbg !3447
  %314 = add i64 %313, %129, !dbg !3477
  %315 = icmp eq i64 %313, %301, !dbg !3469
  br i1 %315, label %332, label %306, !dbg !3471, !llvm.loop !3478

316:                                              ; preds = %299
  %317 = icmp ugt i64 %302, 1
  %318 = and i1 %116, %317, !dbg !3479
  %319 = and i1 %318, %110, !dbg !3479
  call void @llvm.dbg.value(metadata i64 1, metadata !3183, metadata !DIExpression()), !dbg !3480
  br i1 %319, label %320, label %328, !dbg !3479

320:                                              ; preds = %316, %325
  %321 = phi i64 [ %326, %325 ], [ 1, %316 ]
  call void @llvm.dbg.value(metadata i64 %321, metadata !3183, metadata !DIExpression()), !dbg !3480
  %322 = add i64 %321, %129, !dbg !3481
  %323 = getelementptr inbounds i8, ptr %2, i64 %322, !dbg !3483
  %324 = load i8, ptr %323, align 1, !dbg !3483, !tbaa !1171
  switch i8 %324, label %325 [
    i8 91, label %335
    i8 92, label %335
    i8 94, label %335
    i8 96, label %335
    i8 124, label %335
  ], !dbg !3484

325:                                              ; preds = %320
  %326 = add nuw i64 %321, 1, !dbg !3485
  call void @llvm.dbg.value(metadata i64 %326, metadata !3183, metadata !DIExpression()), !dbg !3480
  %327 = icmp eq i64 %326, %302, !dbg !3486
  br i1 %327, label %328, label %320, !dbg !3487, !llvm.loop !3488

328:                                              ; preds = %325, %316
  %329 = load i32, ptr %15, align 4, !dbg !3490, !tbaa !1162
  call void @llvm.dbg.value(metadata i32 %329, metadata !3178, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.value(metadata i32 %329, metadata !3492, metadata !DIExpression()), !dbg !3495
  %330 = call i32 @iswprint(i32 noundef %329) #37, !dbg !3497
  %331 = icmp ne i32 %330, 0, !dbg !3498
  call void @llvm.dbg.value(metadata i8 poison, metadata !3174, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i64 %302, metadata !3171, metadata !DIExpression()), !dbg !3447
  br label %332, !dbg !3499

332:                                              ; preds = %306, %312, %303, %305, %328, %299
  %333 = phi i64 [ %302, %299 ], [ %302, %328 ], [ 0, %305 ], [ 0, %303 ], [ %308, %306 ], [ %301, %312 ]
  %334 = phi i1 [ true, %299 ], [ %331, %328 ], [ false, %305 ], [ false, %303 ], [ false, %312 ], [ false, %306 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3174, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i64 %333, metadata !3171, metadata !DIExpression()), !dbg !3447
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !3500
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !3501
  br label %337

335:                                              ; preds = %320, %320, %320, %320, %320
  call void @llvm.dbg.value(metadata i8 poison, metadata !3174, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i64 0, metadata !3171, metadata !DIExpression()), !dbg !3447
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #37, !dbg !3500
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #37, !dbg !3501
  call void @llvm.dbg.label(metadata !3200), !dbg !3502
  %336 = select i1 %109, i32 4, i32 2, !dbg !3503
  br label %626, !dbg !3503

337:                                              ; preds = %332, %287
  %338 = phi i64 [ %153, %287 ], [ %300, %332 ], !dbg !3299
  %339 = phi i64 [ 1, %287 ], [ %333, %332 ], !dbg !3505
  %340 = phi i1 [ %294, %287 ], [ %334, %332 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3174, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i64 %339, metadata !3171, metadata !DIExpression()), !dbg !3447
  call void @llvm.dbg.value(metadata i64 %338, metadata !3142, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i1 %340, metadata !3169, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3299
  %341 = icmp ult i64 %339, 2, !dbg !3506
  %342 = select i1 %120, i1 true, i1 %340
  %343 = select i1 %341, i1 %342, i1 false, !dbg !3507
  br i1 %343, label %439, label %344, !dbg !3507

344:                                              ; preds = %337
  %345 = add i64 %339, %129, !dbg !3508
  call void @llvm.dbg.value(metadata i64 %345, metadata !3191, metadata !DIExpression()), !dbg !3509
  br label %346, !dbg !3510

346:                                              ; preds = %433, %344
  %347 = phi i64 [ %124, %344 ], [ %434, %433 ], !dbg !3201
  %348 = phi i1 [ %128, %344 ], [ %429, %433 ]
  %349 = phi i64 [ %129, %344 ], [ %410, %433 ], !dbg !3290
  %350 = phi i1 [ %154, %344 ], [ %407, %433 ]
  %351 = phi i8 [ 0, %344 ], [ %408, %433 ], !dbg !3511
  %352 = phi i8 [ %156, %344 ], [ %436, %433 ], !dbg !3299
  call void @llvm.dbg.value(metadata i8 %352, metadata !3170, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 %351, metadata !3168, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 poison, metadata !3165, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %349, metadata !3163, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8 poison, metadata !3157, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %347, metadata !3149, metadata !DIExpression()), !dbg !3201
  br i1 %342, label %397, label %353, !dbg !3512

353:                                              ; preds = %346
  br i1 %110, label %621, label %354, !dbg !3517

354:                                              ; preds = %353
  call void @llvm.dbg.value(metadata i8 1, metadata !3168, metadata !DIExpression()), !dbg !3299
  %355 = select i1 %111, i1 true, i1 %348, !dbg !3520
  br i1 %355, label %372, label %356, !dbg !3520

356:                                              ; preds = %354
  %357 = icmp ult i64 %347, %130, !dbg !3522
  br i1 %357, label %358, label %360, !dbg !3526

358:                                              ; preds = %356
  %359 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3522
  store i8 39, ptr %359, align 1, !dbg !3522, !tbaa !1171
  br label %360, !dbg !3522

360:                                              ; preds = %358, %356
  %361 = add i64 %347, 1, !dbg !3526
  call void @llvm.dbg.value(metadata i64 %361, metadata !3149, metadata !DIExpression()), !dbg !3201
  %362 = icmp ult i64 %361, %130, !dbg !3527
  br i1 %362, label %363, label %365, !dbg !3530

363:                                              ; preds = %360
  %364 = getelementptr inbounds i8, ptr %0, i64 %361, !dbg !3527
  store i8 36, ptr %364, align 1, !dbg !3527, !tbaa !1171
  br label %365, !dbg !3527

365:                                              ; preds = %363, %360
  %366 = add i64 %347, 2, !dbg !3530
  call void @llvm.dbg.value(metadata i64 %366, metadata !3149, metadata !DIExpression()), !dbg !3201
  %367 = icmp ult i64 %366, %130, !dbg !3531
  br i1 %367, label %368, label %370, !dbg !3534

368:                                              ; preds = %365
  %369 = getelementptr inbounds i8, ptr %0, i64 %366, !dbg !3531
  store i8 39, ptr %369, align 1, !dbg !3531, !tbaa !1171
  br label %370, !dbg !3531

370:                                              ; preds = %368, %365
  %371 = add i64 %347, 3, !dbg !3534
  call void @llvm.dbg.value(metadata i64 %371, metadata !3149, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 1, metadata !3157, metadata !DIExpression()), !dbg !3201
  br label %372, !dbg !3535

372:                                              ; preds = %354, %370
  %373 = phi i64 [ %371, %370 ], [ %347, %354 ], !dbg !3201
  %374 = phi i1 [ true, %370 ], [ %348, %354 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3157, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %373, metadata !3149, metadata !DIExpression()), !dbg !3201
  %375 = icmp ult i64 %373, %130, !dbg !3536
  br i1 %375, label %376, label %378, !dbg !3539

376:                                              ; preds = %372
  %377 = getelementptr inbounds i8, ptr %0, i64 %373, !dbg !3536
  store i8 92, ptr %377, align 1, !dbg !3536, !tbaa !1171
  br label %378, !dbg !3536

378:                                              ; preds = %376, %372
  %379 = add i64 %373, 1, !dbg !3539
  call void @llvm.dbg.value(metadata i64 %379, metadata !3149, metadata !DIExpression()), !dbg !3201
  %380 = icmp ult i64 %379, %130, !dbg !3540
  br i1 %380, label %381, label %385, !dbg !3543

381:                                              ; preds = %378
  %382 = lshr i8 %352, 6
  %383 = or i8 %382, 48, !dbg !3540
  %384 = getelementptr inbounds i8, ptr %0, i64 %379, !dbg !3540
  store i8 %383, ptr %384, align 1, !dbg !3540, !tbaa !1171
  br label %385, !dbg !3540

385:                                              ; preds = %381, %378
  %386 = add i64 %373, 2, !dbg !3543
  call void @llvm.dbg.value(metadata i64 %386, metadata !3149, metadata !DIExpression()), !dbg !3201
  %387 = icmp ult i64 %386, %130, !dbg !3544
  br i1 %387, label %388, label %393, !dbg !3547

388:                                              ; preds = %385
  %389 = lshr i8 %352, 3
  %390 = and i8 %389, 7, !dbg !3544
  %391 = or i8 %390, 48, !dbg !3544
  %392 = getelementptr inbounds i8, ptr %0, i64 %386, !dbg !3544
  store i8 %391, ptr %392, align 1, !dbg !3544, !tbaa !1171
  br label %393, !dbg !3544

393:                                              ; preds = %388, %385
  %394 = add i64 %373, 3, !dbg !3547
  call void @llvm.dbg.value(metadata i64 %394, metadata !3149, metadata !DIExpression()), !dbg !3201
  %395 = and i8 %352, 7, !dbg !3548
  %396 = or i8 %395, 48, !dbg !3549
  call void @llvm.dbg.value(metadata i8 %396, metadata !3170, metadata !DIExpression()), !dbg !3299
  br label %404, !dbg !3550

397:                                              ; preds = %346
  br i1 %350, label %398, label %404, !dbg !3551

398:                                              ; preds = %397
  %399 = icmp ult i64 %347, %130, !dbg !3552
  br i1 %399, label %400, label %402, !dbg !3557

400:                                              ; preds = %398
  %401 = getelementptr inbounds i8, ptr %0, i64 %347, !dbg !3552
  store i8 92, ptr %401, align 1, !dbg !3552, !tbaa !1171
  br label %402, !dbg !3552

402:                                              ; preds = %400, %398
  %403 = add i64 %347, 1, !dbg !3557
  call void @llvm.dbg.value(metadata i64 %403, metadata !3149, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 0, metadata !3165, metadata !DIExpression()), !dbg !3299
  br label %404, !dbg !3558

404:                                              ; preds = %397, %402, %393
  %405 = phi i64 [ %403, %402 ], [ %347, %397 ], [ %394, %393 ], !dbg !3201
  %406 = phi i1 [ %348, %402 ], [ %348, %397 ], [ %374, %393 ]
  %407 = phi i1 [ false, %402 ], [ false, %397 ], [ %350, %393 ]
  %408 = phi i8 [ %351, %402 ], [ %351, %397 ], [ 1, %393 ], !dbg !3299
  %409 = phi i8 [ %352, %402 ], [ %352, %397 ], [ %396, %393 ], !dbg !3299
  call void @llvm.dbg.value(metadata i8 %409, metadata !3170, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 %408, metadata !3168, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 poison, metadata !3165, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 poison, metadata !3157, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %405, metadata !3149, metadata !DIExpression()), !dbg !3201
  %410 = add i64 %349, 1, !dbg !3559
  %411 = icmp ugt i64 %345, %410, !dbg !3561
  %412 = and i8 %408, 1
  br i1 %411, label %413, label %437, !dbg !3562

413:                                              ; preds = %404
  %414 = icmp eq i8 %412, 0, !dbg !3563
  %415 = select i1 %406, i1 %414, i1 false, !dbg !3563
  br i1 %415, label %416, label %427, !dbg !3563

416:                                              ; preds = %413
  %417 = icmp ult i64 %405, %130, !dbg !3566
  br i1 %417, label %418, label %420, !dbg !3570

418:                                              ; preds = %416
  %419 = getelementptr inbounds i8, ptr %0, i64 %405, !dbg !3566
  store i8 39, ptr %419, align 1, !dbg !3566, !tbaa !1171
  br label %420, !dbg !3566

420:                                              ; preds = %418, %416
  %421 = add i64 %405, 1, !dbg !3570
  call void @llvm.dbg.value(metadata i64 %421, metadata !3149, metadata !DIExpression()), !dbg !3201
  %422 = icmp ult i64 %421, %130, !dbg !3571
  br i1 %422, label %423, label %425, !dbg !3574

423:                                              ; preds = %420
  %424 = getelementptr inbounds i8, ptr %0, i64 %421, !dbg !3571
  store i8 39, ptr %424, align 1, !dbg !3571, !tbaa !1171
  br label %425, !dbg !3571

425:                                              ; preds = %423, %420
  %426 = add i64 %405, 2, !dbg !3574
  call void @llvm.dbg.value(metadata i64 %426, metadata !3149, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 0, metadata !3157, metadata !DIExpression()), !dbg !3201
  br label %427, !dbg !3575

427:                                              ; preds = %413, %425
  %428 = phi i64 [ %426, %425 ], [ %405, %413 ], !dbg !3576
  %429 = phi i1 [ false, %425 ], [ %406, %413 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3157, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %428, metadata !3149, metadata !DIExpression()), !dbg !3201
  %430 = icmp ult i64 %428, %130, !dbg !3577
  br i1 %430, label %431, label %433, !dbg !3580

431:                                              ; preds = %427
  %432 = getelementptr inbounds i8, ptr %0, i64 %428, !dbg !3577
  store i8 %409, ptr %432, align 1, !dbg !3577, !tbaa !1171
  br label %433, !dbg !3577

433:                                              ; preds = %431, %427
  %434 = add i64 %428, 1, !dbg !3580
  call void @llvm.dbg.value(metadata i64 %434, metadata !3149, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %410, metadata !3163, metadata !DIExpression()), !dbg !3290
  %435 = getelementptr inbounds i8, ptr %2, i64 %410, !dbg !3581
  %436 = load i8, ptr %435, align 1, !dbg !3581, !tbaa !1171
  call void @llvm.dbg.value(metadata i8 %436, metadata !3170, metadata !DIExpression()), !dbg !3299
  br label %346, !dbg !3582, !llvm.loop !3583

437:                                              ; preds = %404
  call void @llvm.dbg.value(metadata i8 %409, metadata !3170, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i1 %340, metadata !3169, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3299
  call void @llvm.dbg.value(metadata i8 %408, metadata !3168, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 poison, metadata !3165, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %349, metadata !3163, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8 poison, metadata !3157, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %405, metadata !3149, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %338, metadata !3142, metadata !DIExpression()), !dbg !3201
  %438 = icmp ne i8 %412, 0
  br label %529

439:                                              ; preds = %337, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %152, %253, %185, %188, %202, %263, %284, %260, %262, %257, %254, %205, %206, %239, %216, %211, %208, %207
  %440 = phi i64 [ %153, %284 ], [ %153, %263 ], [ %153, %262 ], [ %153, %260 ], [ %153, %257 ], [ -1, %254 ], [ %153, %205 ], [ %153, %216 ], [ %153, %239 ], [ %153, %211 ], [ %153, %208 ], [ %153, %207 ], [ %153, %206 ], [ %153, %202 ], [ %153, %188 ], [ %153, %185 ], [ %153, %253 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %153, %152 ], [ %338, %337 ], !dbg !3586
  %441 = phi i64 [ %285, %284 ], [ %124, %263 ], [ %124, %262 ], [ %124, %260 ], [ %124, %257 ], [ %124, %254 ], [ %124, %205 ], [ %124, %216 ], [ %240, %239 ], [ %124, %211 ], [ %124, %208 ], [ %124, %207 ], [ %124, %206 ], [ %203, %202 ], [ %184, %188 ], [ %184, %185 ], [ %124, %253 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %152 ], [ %124, %337 ], !dbg !3201
  %442 = phi i64 [ %269, %284 ], [ %125, %263 ], [ %125, %262 ], [ %125, %260 ], [ %125, %257 ], [ %125, %254 ], [ %125, %205 ], [ %125, %216 ], [ %125, %239 ], [ %125, %211 ], [ %125, %208 ], [ %125, %207 ], [ %125, %206 ], [ %125, %202 ], [ %125, %188 ], [ %125, %185 ], [ %125, %253 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %152 ], [ %125, %337 ], !dbg !3205
  %443 = phi i1 [ true, %284 ], [ true, %263 ], [ %126, %262 ], [ %126, %260 ], [ %126, %257 ], [ %126, %254 ], [ %126, %205 ], [ %126, %216 ], [ %126, %239 ], [ %126, %211 ], [ %126, %208 ], [ %126, %207 ], [ %126, %206 ], [ %126, %202 ], [ %126, %188 ], [ %126, %185 ], [ %126, %253 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %152 ], [ %126, %337 ]
  %444 = phi i1 [ false, %284 ], [ %128, %263 ], [ %128, %262 ], [ %128, %260 ], [ %128, %257 ], [ %128, %254 ], [ %128, %205 ], [ %128, %216 ], [ %128, %239 ], [ %128, %211 ], [ %128, %208 ], [ %128, %207 ], [ %128, %206 ], [ %179, %202 ], [ %179, %188 ], [ %179, %185 ], [ %128, %253 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %152 ], [ %128, %337 ]
  %445 = phi i64 [ %129, %284 ], [ %129, %263 ], [ %129, %262 ], [ %129, %260 ], [ %129, %257 ], [ %129, %254 ], [ %129, %205 ], [ %129, %216 ], [ %209, %239 ], [ %129, %211 ], [ %129, %208 ], [ %129, %207 ], [ %129, %206 ], [ %129, %202 ], [ %129, %188 ], [ %129, %185 ], [ %129, %253 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %152 ], [ %129, %337 ], !dbg !3290
  %446 = phi i1 [ false, %284 ], [ false, %263 ], [ false, %262 ], [ false, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ true, %202 ], [ true, %188 ], [ true, %185 ], [ false, %253 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %152 ], [ false, %337 ]
  %447 = phi i1 [ true, %284 ], [ true, %263 ], [ %261, %262 ], [ %261, %260 ], [ false, %257 ], [ false, %254 ], [ false, %205 ], [ false, %216 ], [ false, %239 ], [ false, %211 ], [ false, %208 ], [ false, %207 ], [ false, %206 ], [ false, %202 ], [ false, %188 ], [ false, %185 ], [ false, %253 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ true, %152 ], [ %340, %337 ]
  %448 = phi i8 [ 39, %284 ], [ 39, %263 ], [ %156, %262 ], [ %156, %260 ], [ %156, %257 ], [ %156, %254 ], [ 63, %205 ], [ 63, %216 ], [ %218, %239 ], [ 63, %211 ], [ 63, %208 ], [ 63, %207 ], [ 63, %206 ], [ 48, %202 ], [ 48, %188 ], [ 48, %185 ], [ %156, %253 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %152 ], [ %156, %337 ], !dbg !3299
  %449 = phi i64 [ %270, %284 ], [ %130, %263 ], [ %130, %262 ], [ %130, %260 ], [ %130, %257 ], [ %130, %254 ], [ %130, %205 ], [ %130, %216 ], [ %130, %239 ], [ %130, %211 ], [ %130, %208 ], [ %130, %207 ], [ %130, %206 ], [ %130, %202 ], [ %130, %188 ], [ %130, %185 ], [ %130, %253 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %152 ], [ %130, %337 ]
  call void @llvm.dbg.value(metadata i64 %449, metadata !3140, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 %448, metadata !3170, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 poison, metadata !3169, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 poison, metadata !3168, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 poison, metadata !3165, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %445, metadata !3163, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8 poison, metadata !3157, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3155, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %442, metadata !3150, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %441, metadata !3149, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %440, metadata !3142, metadata !DIExpression()), !dbg !3201
  br i1 %112, label %461, label %450, !dbg !3587

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
  br i1 %121, label %462, label %482, !dbg !3589

461:                                              ; preds = %439
  br i1 %26, label %482, label %462, !dbg !3590

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
  %473 = lshr i8 %464, 5, !dbg !3591
  %474 = zext i8 %473 to i64, !dbg !3591
  %475 = getelementptr inbounds i32, ptr %6, i64 %474, !dbg !3592
  %476 = load i32, ptr %475, align 4, !dbg !3592, !tbaa !1162
  %477 = and i8 %464, 31, !dbg !3593
  %478 = zext i8 %477 to i32, !dbg !3593
  %479 = shl nuw i32 1, %478, !dbg !3594
  %480 = and i32 %476, %479, !dbg !3594
  %481 = icmp eq i32 %480, 0, !dbg !3594
  br i1 %481, label %482, label %493, !dbg !3595

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
  br i1 %154, label %493, label %529, !dbg !3596

493:                                              ; preds = %251, %482, %462
  %494 = phi i64 [ %472, %462 ], [ %492, %482 ], [ %153, %251 ], !dbg !3586
  %495 = phi i64 [ %471, %462 ], [ %491, %482 ], [ %124, %251 ], !dbg !3201
  %496 = phi i64 [ %470, %462 ], [ %490, %482 ], [ %125, %251 ], !dbg !3205
  %497 = phi i1 [ %469, %462 ], [ %489, %482 ], [ %126, %251 ]
  %498 = phi i1 [ %468, %462 ], [ %488, %482 ], [ %128, %251 ]
  %499 = phi i64 [ %467, %462 ], [ %487, %482 ], [ %129, %251 ], !dbg !3597
  %500 = phi i1 [ %465, %462 ], [ %485, %482 ], [ false, %251 ]
  %501 = phi i8 [ %464, %462 ], [ %484, %482 ], [ %252, %251 ], !dbg !3299
  %502 = phi i64 [ %463, %462 ], [ %483, %482 ], [ %130, %251 ]
  call void @llvm.dbg.value(metadata i64 %502, metadata !3140, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 %501, metadata !3170, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 poison, metadata !3169, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %499, metadata !3163, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8 poison, metadata !3157, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3155, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %496, metadata !3150, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %495, metadata !3149, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %494, metadata !3142, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.label(metadata !3198), !dbg !3598
  br i1 %110, label %621, label %503, !dbg !3599

503:                                              ; preds = %493
  call void @llvm.dbg.value(metadata i8 1, metadata !3168, metadata !DIExpression()), !dbg !3299
  %504 = select i1 %111, i1 true, i1 %498, !dbg !3601
  br i1 %504, label %521, label %505, !dbg !3601

505:                                              ; preds = %503
  %506 = icmp ult i64 %495, %502, !dbg !3603
  br i1 %506, label %507, label %509, !dbg !3607

507:                                              ; preds = %505
  %508 = getelementptr inbounds i8, ptr %0, i64 %495, !dbg !3603
  store i8 39, ptr %508, align 1, !dbg !3603, !tbaa !1171
  br label %509, !dbg !3603

509:                                              ; preds = %507, %505
  %510 = add i64 %495, 1, !dbg !3607
  call void @llvm.dbg.value(metadata i64 %510, metadata !3149, metadata !DIExpression()), !dbg !3201
  %511 = icmp ult i64 %510, %502, !dbg !3608
  br i1 %511, label %512, label %514, !dbg !3611

512:                                              ; preds = %509
  %513 = getelementptr inbounds i8, ptr %0, i64 %510, !dbg !3608
  store i8 36, ptr %513, align 1, !dbg !3608, !tbaa !1171
  br label %514, !dbg !3608

514:                                              ; preds = %512, %509
  %515 = add i64 %495, 2, !dbg !3611
  call void @llvm.dbg.value(metadata i64 %515, metadata !3149, metadata !DIExpression()), !dbg !3201
  %516 = icmp ult i64 %515, %502, !dbg !3612
  br i1 %516, label %517, label %519, !dbg !3615

517:                                              ; preds = %514
  %518 = getelementptr inbounds i8, ptr %0, i64 %515, !dbg !3612
  store i8 39, ptr %518, align 1, !dbg !3612, !tbaa !1171
  br label %519, !dbg !3612

519:                                              ; preds = %517, %514
  %520 = add i64 %495, 3, !dbg !3615
  call void @llvm.dbg.value(metadata i64 %520, metadata !3149, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 1, metadata !3157, metadata !DIExpression()), !dbg !3201
  br label %521, !dbg !3616

521:                                              ; preds = %503, %519
  %522 = phi i64 [ %520, %519 ], [ %495, %503 ], !dbg !3299
  %523 = phi i1 [ true, %519 ], [ %498, %503 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3157, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %522, metadata !3149, metadata !DIExpression()), !dbg !3201
  %524 = icmp ult i64 %522, %502, !dbg !3617
  br i1 %524, label %525, label %527, !dbg !3620

525:                                              ; preds = %521
  %526 = getelementptr inbounds i8, ptr %0, i64 %522, !dbg !3617
  store i8 92, ptr %526, align 1, !dbg !3617, !tbaa !1171
  br label %527, !dbg !3617

527:                                              ; preds = %521, %525
  %528 = add i64 %522, 1, !dbg !3620
  call void @llvm.dbg.value(metadata i64 %502, metadata !3140, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 %501, metadata !3170, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 poison, metadata !3169, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 poison, metadata !3168, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %499, metadata !3163, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8 poison, metadata !3157, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3155, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %496, metadata !3150, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %528, metadata !3149, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %494, metadata !3142, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.label(metadata !3199), !dbg !3621
  br label %553, !dbg !3622

529:                                              ; preds = %437, %248, %247, %482
  %530 = phi i64 [ %338, %437 ], [ %492, %482 ], [ %153, %247 ], [ %153, %248 ], !dbg !3586
  %531 = phi i64 [ %405, %437 ], [ %491, %482 ], [ %124, %247 ], [ %124, %248 ], !dbg !3201
  %532 = phi i64 [ %125, %437 ], [ %490, %482 ], [ %125, %247 ], [ %125, %248 ], !dbg !3205
  %533 = phi i1 [ %126, %437 ], [ %489, %482 ], [ %126, %247 ], [ %126, %248 ]
  %534 = phi i1 [ %406, %437 ], [ %488, %482 ], [ %128, %247 ], [ %128, %248 ]
  %535 = phi i64 [ %349, %437 ], [ %487, %482 ], [ %129, %247 ], [ %129, %248 ], !dbg !3597
  %536 = phi i1 [ %438, %437 ], [ %486, %482 ], [ false, %247 ], [ false, %248 ]
  %537 = phi i1 [ %340, %437 ], [ %485, %482 ], [ false, %247 ], [ false, %248 ]
  %538 = phi i8 [ %409, %437 ], [ %484, %482 ], [ 92, %247 ], [ 92, %248 ], !dbg !3625
  %539 = phi i64 [ %130, %437 ], [ %483, %482 ], [ %130, %247 ], [ %130, %248 ]
  call void @llvm.dbg.value(metadata i64 %539, metadata !3140, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 %538, metadata !3170, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 poison, metadata !3169, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i8 poison, metadata !3168, metadata !DIExpression()), !dbg !3299
  call void @llvm.dbg.value(metadata i64 %535, metadata !3163, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8 poison, metadata !3157, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3155, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %532, metadata !3150, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %531, metadata !3149, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %530, metadata !3142, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.label(metadata !3199), !dbg !3621
  %540 = xor i1 %534, true, !dbg !3622
  %541 = select i1 %540, i1 true, i1 %536, !dbg !3622
  br i1 %541, label %553, label %542, !dbg !3622

542:                                              ; preds = %529
  %543 = icmp ult i64 %531, %539, !dbg !3626
  br i1 %543, label %544, label %546, !dbg !3630

544:                                              ; preds = %542
  %545 = getelementptr inbounds i8, ptr %0, i64 %531, !dbg !3626
  store i8 39, ptr %545, align 1, !dbg !3626, !tbaa !1171
  br label %546, !dbg !3626

546:                                              ; preds = %544, %542
  %547 = add i64 %531, 1, !dbg !3630
  call void @llvm.dbg.value(metadata i64 %547, metadata !3149, metadata !DIExpression()), !dbg !3201
  %548 = icmp ult i64 %547, %539, !dbg !3631
  br i1 %548, label %549, label %551, !dbg !3634

549:                                              ; preds = %546
  %550 = getelementptr inbounds i8, ptr %0, i64 %547, !dbg !3631
  store i8 39, ptr %550, align 1, !dbg !3631, !tbaa !1171
  br label %551, !dbg !3631

551:                                              ; preds = %549, %546
  %552 = add i64 %531, 2, !dbg !3634
  call void @llvm.dbg.value(metadata i64 %552, metadata !3149, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 0, metadata !3157, metadata !DIExpression()), !dbg !3201
  br label %553, !dbg !3635

553:                                              ; preds = %527, %529, %551
  %554 = phi i64 [ %539, %551 ], [ %539, %529 ], [ %502, %527 ]
  %555 = phi i8 [ %538, %551 ], [ %538, %529 ], [ %501, %527 ]
  %556 = phi i1 [ %537, %551 ], [ %537, %529 ], [ %500, %527 ]
  %557 = phi i64 [ %535, %551 ], [ %535, %529 ], [ %499, %527 ]
  %558 = phi i1 [ %533, %551 ], [ %533, %529 ], [ %497, %527 ]
  %559 = phi i64 [ %532, %551 ], [ %532, %529 ], [ %496, %527 ]
  %560 = phi i64 [ %530, %551 ], [ %530, %529 ], [ %494, %527 ]
  %561 = phi i64 [ %552, %551 ], [ %531, %529 ], [ %528, %527 ], !dbg !3299
  %562 = phi i1 [ false, %551 ], [ %534, %529 ], [ %523, %527 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !3157, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %561, metadata !3149, metadata !DIExpression()), !dbg !3201
  %563 = icmp ult i64 %561, %554, !dbg !3636
  br i1 %563, label %564, label %566, !dbg !3639

564:                                              ; preds = %553
  %565 = getelementptr inbounds i8, ptr %0, i64 %561, !dbg !3636
  store i8 %555, ptr %565, align 1, !dbg !3636, !tbaa !1171
  br label %566, !dbg !3636

566:                                              ; preds = %564, %553
  %567 = add i64 %561, 1, !dbg !3639
  call void @llvm.dbg.value(metadata i64 %567, metadata !3149, metadata !DIExpression()), !dbg !3201
  %568 = select i1 %556, i1 %127, i1 false, !dbg !3640
  call void @llvm.dbg.value(metadata i8 poison, metadata !3156, metadata !DIExpression()), !dbg !3201
  br label %569, !dbg !3641

569:                                              ; preds = %204, %566
  %570 = phi i64 [ %560, %566 ], [ %153, %204 ], !dbg !3586
  %571 = phi i64 [ %567, %566 ], [ %124, %204 ], !dbg !3201
  %572 = phi i64 [ %559, %566 ], [ %125, %204 ], !dbg !3205
  %573 = phi i1 [ %558, %566 ], [ %126, %204 ]
  %574 = phi i1 [ %568, %566 ], [ %127, %204 ]
  %575 = phi i1 [ %562, %566 ], [ %128, %204 ]
  %576 = phi i64 [ %557, %566 ], [ %129, %204 ], !dbg !3597
  %577 = phi i64 [ %554, %566 ], [ %130, %204 ]
  call void @llvm.dbg.value(metadata i64 %577, metadata !3140, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %576, metadata !3163, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8 poison, metadata !3157, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3156, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3155, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %572, metadata !3150, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %571, metadata !3149, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %570, metadata !3142, metadata !DIExpression()), !dbg !3201
  %578 = add i64 %576, 1, !dbg !3642
  call void @llvm.dbg.value(metadata i64 %578, metadata !3163, metadata !DIExpression()), !dbg !3290
  br label %122, !dbg !3643, !llvm.loop !3644

579:                                              ; preds = %136, %132
  call void @llvm.dbg.value(metadata i64 %130, metadata !3140, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3156, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i8 poison, metadata !3155, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %125, metadata !3150, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %124, metadata !3149, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %123, metadata !3142, metadata !DIExpression()), !dbg !3201
  %580 = icmp ne i64 %124, 0, !dbg !3646
  %581 = xor i1 %110, true, !dbg !3648
  %582 = or i1 %580, %581, !dbg !3648
  %583 = or i1 %582, %111, !dbg !3648
  br i1 %583, label %584, label %621, !dbg !3648

584:                                              ; preds = %579
  %585 = or i1 %111, %110, !dbg !3649
  %586 = xor i1 %126, true, !dbg !3649
  %587 = select i1 %585, i1 true, i1 %586, !dbg !3649
  br i1 %587, label %595, label %588, !dbg !3649

588:                                              ; preds = %584
  br i1 %127, label %589, label %591, !dbg !3651

589:                                              ; preds = %588
  %590 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %125, ptr noundef %2, i64 noundef %123, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %104, ptr noundef %105), !dbg !3653
  br label %636, !dbg !3655

591:                                              ; preds = %588
  %592 = icmp eq i64 %130, 0, !dbg !3656
  %593 = icmp ne i64 %125, 0
  %594 = select i1 %592, i1 %593, i1 false, !dbg !3658
  br i1 %594, label %27, label %595, !dbg !3658

595:                                              ; preds = %584, %591
  %596 = phi i1 [ %110, %584 ], [ false, %591 ]
  %597 = icmp eq ptr %107, null, !dbg !3659
  %598 = or i1 %597, %596, !dbg !3661
  br i1 %598, label %614, label %599, !dbg !3661

599:                                              ; preds = %595
  call void @llvm.dbg.value(metadata ptr %107, metadata !3151, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %124, metadata !3149, metadata !DIExpression()), !dbg !3201
  %600 = load i8, ptr %107, align 1, !dbg !3662, !tbaa !1171
  %601 = icmp eq i8 %600, 0, !dbg !3665
  br i1 %601, label %614, label %602, !dbg !3665

602:                                              ; preds = %599, %609
  %603 = phi i8 [ %612, %609 ], [ %600, %599 ]
  %604 = phi ptr [ %611, %609 ], [ %107, %599 ]
  %605 = phi i64 [ %610, %609 ], [ %124, %599 ]
  call void @llvm.dbg.value(metadata ptr %604, metadata !3151, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.value(metadata i64 %605, metadata !3149, metadata !DIExpression()), !dbg !3201
  %606 = icmp ult i64 %605, %130, !dbg !3666
  br i1 %606, label %607, label %609, !dbg !3669

607:                                              ; preds = %602
  %608 = getelementptr inbounds i8, ptr %0, i64 %605, !dbg !3666
  store i8 %603, ptr %608, align 1, !dbg !3666, !tbaa !1171
  br label %609, !dbg !3666

609:                                              ; preds = %607, %602
  %610 = add i64 %605, 1, !dbg !3669
  call void @llvm.dbg.value(metadata i64 %610, metadata !3149, metadata !DIExpression()), !dbg !3201
  %611 = getelementptr inbounds i8, ptr %604, i64 1, !dbg !3670
  call void @llvm.dbg.value(metadata ptr %611, metadata !3151, metadata !DIExpression()), !dbg !3201
  %612 = load i8, ptr %611, align 1, !dbg !3662, !tbaa !1171
  %613 = icmp eq i8 %612, 0, !dbg !3665
  br i1 %613, label %614, label %602, !dbg !3665, !llvm.loop !3671

614:                                              ; preds = %609, %599, %595
  %615 = phi i64 [ %124, %595 ], [ %124, %599 ], [ %610, %609 ], !dbg !3277
  call void @llvm.dbg.value(metadata i64 %615, metadata !3149, metadata !DIExpression()), !dbg !3201
  %616 = icmp ult i64 %615, %130, !dbg !3673
  br i1 %616, label %617, label %636, !dbg !3675

617:                                              ; preds = %614
  %618 = getelementptr inbounds i8, ptr %0, i64 %615, !dbg !3676
  store i8 0, ptr %618, align 1, !dbg !3677, !tbaa !1171
  br label %636, !dbg !3676

619:                                              ; preds = %158
  call void @llvm.dbg.label(metadata !3200), !dbg !3502
  %620 = icmp eq i32 %103, 2, !dbg !3678
  br i1 %620, label %626, label %630, !dbg !3503

621:                                              ; preds = %579, %493, %264, %262, %249, %247, %219, %206, %353
  %622 = phi i64 [ %130, %353 ], [ %502, %493 ], [ %130, %264 ], [ %130, %262 ], [ %130, %249 ], [ %130, %247 ], [ %130, %219 ], [ %130, %206 ], [ %130, %579 ]
  %623 = phi i64 [ %338, %353 ], [ %494, %493 ], [ %153, %264 ], [ %153, %262 ], [ %153, %249 ], [ %153, %247 ], [ %153, %219 ], [ %153, %206 ], [ %123, %579 ]
  call void @llvm.dbg.label(metadata !3200), !dbg !3502
  %624 = icmp eq i32 %103, 2, !dbg !3678
  %625 = select i1 %109, i32 4, i32 2, !dbg !3503
  br i1 %624, label %626, label %630, !dbg !3503

626:                                              ; preds = %335, %621, %619
  %627 = phi i32 [ 4, %619 ], [ %336, %335 ], [ %625, %621 ]
  %628 = phi i64 [ %130, %619 ], [ %130, %335 ], [ %622, %621 ]
  %629 = phi i64 [ %153, %619 ], [ %300, %335 ], [ %623, %621 ]
  br label %630, !dbg !3503

630:                                              ; preds = %147, %621, %619, %626
  %631 = phi i64 [ %628, %626 ], [ %130, %619 ], [ %622, %621 ], [ %130, %147 ]
  %632 = phi i64 [ %629, %626 ], [ %153, %619 ], [ %623, %621 ], [ %145, %147 ]
  %633 = phi i32 [ %627, %626 ], [ %103, %619 ], [ %103, %621 ], [ %103, %147 ]
  call void @llvm.dbg.value(metadata i32 %633, metadata !3143, metadata !DIExpression()), !dbg !3201
  %634 = and i32 %5, -3, !dbg !3679
  %635 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %631, ptr noundef %2, i64 noundef %632, i32 noundef %633, i32 noundef %634, ptr noundef null, ptr noundef %104, ptr noundef %105), !dbg !3680
  br label %636, !dbg !3681

636:                                              ; preds = %614, %617, %630, %589
  %637 = phi i64 [ %635, %630 ], [ %590, %589 ], [ %615, %617 ], [ %615, %614 ]
  ret i64 %637, !dbg !3682
}

; Function Attrs: nounwind
declare !dbg !3683 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3686 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3689 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3690 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3694, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata i64 %1, metadata !3695, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata ptr %2, metadata !3696, metadata !DIExpression()), !dbg !3697
  call void @llvm.dbg.value(metadata ptr %0, metadata !3698, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata i64 %1, metadata !3703, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata ptr null, metadata !3704, metadata !DIExpression()), !dbg !3711
  call void @llvm.dbg.value(metadata ptr %2, metadata !3705, metadata !DIExpression()), !dbg !3711
  %4 = icmp eq ptr %2, null, !dbg !3713
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3713
  call void @llvm.dbg.value(metadata ptr %5, metadata !3706, metadata !DIExpression()), !dbg !3711
  %6 = tail call ptr @__errno_location() #40, !dbg !3714
  %7 = load i32, ptr %6, align 4, !dbg !3714, !tbaa !1162
  call void @llvm.dbg.value(metadata i32 %7, metadata !3707, metadata !DIExpression()), !dbg !3711
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3715
  %9 = load i32, ptr %8, align 4, !dbg !3715, !tbaa !3083
  %10 = or i32 %9, 1, !dbg !3716
  call void @llvm.dbg.value(metadata i32 %10, metadata !3708, metadata !DIExpression()), !dbg !3711
  %11 = load i32, ptr %5, align 8, !dbg !3717, !tbaa !3033
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3718
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3719
  %14 = load ptr, ptr %13, align 8, !dbg !3719, !tbaa !3104
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3720
  %16 = load ptr, ptr %15, align 8, !dbg !3720, !tbaa !3107
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3721
  %18 = add i64 %17, 1, !dbg !3722
  call void @llvm.dbg.value(metadata i64 %18, metadata !3709, metadata !DIExpression()), !dbg !3711
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #42, !dbg !3723
  call void @llvm.dbg.value(metadata ptr %19, metadata !3710, metadata !DIExpression()), !dbg !3711
  %20 = load i32, ptr %5, align 8, !dbg !3724, !tbaa !3033
  %21 = load ptr, ptr %13, align 8, !dbg !3725, !tbaa !3104
  %22 = load ptr, ptr %15, align 8, !dbg !3726, !tbaa !3107
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3727
  store i32 %7, ptr %6, align 4, !dbg !3728, !tbaa !1162
  ret ptr %19, !dbg !3729
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3699 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3698, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i64 %1, metadata !3703, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %2, metadata !3704, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata ptr %3, metadata !3705, metadata !DIExpression()), !dbg !3730
  %5 = icmp eq ptr %3, null, !dbg !3731
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3731
  call void @llvm.dbg.value(metadata ptr %6, metadata !3706, metadata !DIExpression()), !dbg !3730
  %7 = tail call ptr @__errno_location() #40, !dbg !3732
  %8 = load i32, ptr %7, align 4, !dbg !3732, !tbaa !1162
  call void @llvm.dbg.value(metadata i32 %8, metadata !3707, metadata !DIExpression()), !dbg !3730
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3733
  %10 = load i32, ptr %9, align 4, !dbg !3733, !tbaa !3083
  %11 = icmp eq ptr %2, null, !dbg !3734
  %12 = zext i1 %11 to i32, !dbg !3734
  %13 = or i32 %10, %12, !dbg !3735
  call void @llvm.dbg.value(metadata i32 %13, metadata !3708, metadata !DIExpression()), !dbg !3730
  %14 = load i32, ptr %6, align 8, !dbg !3736, !tbaa !3033
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3737
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3738
  %17 = load ptr, ptr %16, align 8, !dbg !3738, !tbaa !3104
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3739
  %19 = load ptr, ptr %18, align 8, !dbg !3739, !tbaa !3107
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3740
  %21 = add i64 %20, 1, !dbg !3741
  call void @llvm.dbg.value(metadata i64 %21, metadata !3709, metadata !DIExpression()), !dbg !3730
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #42, !dbg !3742
  call void @llvm.dbg.value(metadata ptr %22, metadata !3710, metadata !DIExpression()), !dbg !3730
  %23 = load i32, ptr %6, align 8, !dbg !3743, !tbaa !3033
  %24 = load ptr, ptr %16, align 8, !dbg !3744, !tbaa !3104
  %25 = load ptr, ptr %18, align 8, !dbg !3745, !tbaa !3107
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3746
  store i32 %8, ptr %7, align 4, !dbg !3747, !tbaa !1162
  br i1 %11, label %28, label %27, !dbg !3748

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3749, !tbaa !1381
  br label %28, !dbg !3751

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3752
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3753 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3758, !tbaa !1092
  call void @llvm.dbg.value(metadata ptr %1, metadata !3755, metadata !DIExpression()), !dbg !3759
  call void @llvm.dbg.value(metadata i32 1, metadata !3756, metadata !DIExpression()), !dbg !3760
  %2 = load i32, ptr @nslots, align 4, !tbaa !1162
  call void @llvm.dbg.value(metadata i32 1, metadata !3756, metadata !DIExpression()), !dbg !3760
  %3 = icmp sgt i32 %2, 1, !dbg !3761
  br i1 %3, label %4, label %6, !dbg !3763

4:                                                ; preds = %0
  %5 = zext i32 %2 to i64, !dbg !3761
  br label %10, !dbg !3763

6:                                                ; preds = %10, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3764
  %8 = load ptr, ptr %7, align 8, !dbg !3764, !tbaa !3766
  %9 = icmp eq ptr %8, @slot0, !dbg !3768
  br i1 %9, label %17, label %16, !dbg !3769

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  call void @llvm.dbg.value(metadata i64 %11, metadata !3756, metadata !DIExpression()), !dbg !3760
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3770
  %13 = load ptr, ptr %12, align 8, !dbg !3770, !tbaa !3766
  tail call void @free(ptr noundef %13) #37, !dbg !3771
  %14 = add nuw nsw i64 %11, 1, !dbg !3772
  call void @llvm.dbg.value(metadata i64 %14, metadata !3756, metadata !DIExpression()), !dbg !3760
  %15 = icmp eq i64 %14, %5, !dbg !3761
  br i1 %15, label %6, label %10, !dbg !3763, !llvm.loop !3773

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #37, !dbg !3775
  store i64 256, ptr @slotvec0, align 8, !dbg !3777, !tbaa !3778
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3779, !tbaa !3766
  br label %17, !dbg !3780

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3781
  br i1 %18, label %20, label %19, !dbg !3783

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #37, !dbg !3784
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3786, !tbaa !1092
  br label %20, !dbg !3787

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3788, !tbaa !1162
  ret void, !dbg !3789
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3790 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3792, metadata !DIExpression()), !dbg !3794
  call void @llvm.dbg.value(metadata ptr %1, metadata !3793, metadata !DIExpression()), !dbg !3794
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3795
  ret ptr %3, !dbg !3796
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3797 {
  %5 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3801, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata ptr %1, metadata !3802, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i64 %2, metadata !3803, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata ptr %3, metadata !3804, metadata !DIExpression()), !dbg !3817
  %6 = tail call ptr @__errno_location() #40, !dbg !3818
  %7 = load i32, ptr %6, align 4, !dbg !3818, !tbaa !1162
  call void @llvm.dbg.value(metadata i32 %7, metadata !3805, metadata !DIExpression()), !dbg !3817
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3819, !tbaa !1092
  call void @llvm.dbg.value(metadata ptr %8, metadata !3806, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.value(metadata i32 2147483647, metadata !3807, metadata !DIExpression()), !dbg !3817
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3820
  br i1 %9, label %10, label %11, !dbg !3820

10:                                               ; preds = %4
  tail call void @abort() #39, !dbg !3822
  unreachable, !dbg !3822

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3823, !tbaa !1162
  %13 = icmp sgt i32 %12, %0, !dbg !3824
  br i1 %13, label %32, label %14, !dbg !3825

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3826
  call void @llvm.dbg.value(metadata i1 %15, metadata !3808, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3827
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #37, !dbg !3828
  %16 = sext i32 %12 to i64, !dbg !3829
  call void @llvm.dbg.value(metadata i64 %16, metadata !3811, metadata !DIExpression()), !dbg !3827
  store i64 %16, ptr %5, align 8, !dbg !3830, !tbaa !1381
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3831
  %18 = add nuw nsw i32 %0, 1, !dbg !3832
  %19 = sub i32 %18, %12, !dbg !3833
  %20 = sext i32 %19 to i64, !dbg !3834
  call void @llvm.dbg.value(metadata ptr %5, metadata !3811, metadata !DIExpression(DW_OP_deref)), !dbg !3827
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #37, !dbg !3835
  call void @llvm.dbg.value(metadata ptr %21, metadata !3806, metadata !DIExpression()), !dbg !3817
  store ptr %21, ptr @slotvec, align 8, !dbg !3836, !tbaa !1092
  br i1 %15, label %22, label %23, !dbg !3837

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3838, !tbaa.struct !3840
  br label %23, !dbg !3841

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3842, !tbaa !1162
  %25 = sext i32 %24 to i64, !dbg !3843
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3843
  %27 = load i64, ptr %5, align 8, !dbg !3844, !tbaa !1381
  call void @llvm.dbg.value(metadata i64 %27, metadata !3811, metadata !DIExpression()), !dbg !3827
  %28 = sub nsw i64 %27, %25, !dbg !3845
  %29 = shl i64 %28, 4, !dbg !3846
  call void @llvm.dbg.value(metadata ptr %26, metadata !3235, metadata !DIExpression()), !dbg !3847
  call void @llvm.dbg.value(metadata i32 0, metadata !3238, metadata !DIExpression()), !dbg !3847
  call void @llvm.dbg.value(metadata i64 %29, metadata !3239, metadata !DIExpression()), !dbg !3847
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #37, !dbg !3849
  %30 = load i64, ptr %5, align 8, !dbg !3850, !tbaa !1381
  call void @llvm.dbg.value(metadata i64 %30, metadata !3811, metadata !DIExpression()), !dbg !3827
  %31 = trunc i64 %30 to i32, !dbg !3850
  store i32 %31, ptr @nslots, align 4, !dbg !3851, !tbaa !1162
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #37, !dbg !3852
  br label %32, !dbg !3853

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3817
  call void @llvm.dbg.value(metadata ptr %33, metadata !3806, metadata !DIExpression()), !dbg !3817
  %34 = zext i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3854
  %36 = load i64, ptr %35, align 8, !dbg !3855, !tbaa !3778
  call void @llvm.dbg.value(metadata i64 %36, metadata !3812, metadata !DIExpression()), !dbg !3856
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3857
  %38 = load ptr, ptr %37, align 8, !dbg !3857, !tbaa !3766
  call void @llvm.dbg.value(metadata ptr %38, metadata !3814, metadata !DIExpression()), !dbg !3856
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3858
  %40 = load i32, ptr %39, align 4, !dbg !3858, !tbaa !3083
  %41 = or i32 %40, 1, !dbg !3859
  call void @llvm.dbg.value(metadata i32 %41, metadata !3815, metadata !DIExpression()), !dbg !3856
  %42 = load i32, ptr %3, align 8, !dbg !3860, !tbaa !3033
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3861
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3862
  %45 = load ptr, ptr %44, align 8, !dbg !3862, !tbaa !3104
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3863
  %47 = load ptr, ptr %46, align 8, !dbg !3863, !tbaa !3107
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3864
  call void @llvm.dbg.value(metadata i64 %48, metadata !3816, metadata !DIExpression()), !dbg !3856
  %49 = icmp ugt i64 %36, %48, !dbg !3865
  br i1 %49, label %60, label %50, !dbg !3867

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3868
  call void @llvm.dbg.value(metadata i64 %51, metadata !3812, metadata !DIExpression()), !dbg !3856
  store i64 %51, ptr %35, align 8, !dbg !3870, !tbaa !3778
  %52 = icmp eq ptr %38, @slot0, !dbg !3871
  br i1 %52, label %54, label %53, !dbg !3873

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #37, !dbg !3874
  br label %54, !dbg !3874

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #42, !dbg !3875
  call void @llvm.dbg.value(metadata ptr %55, metadata !3814, metadata !DIExpression()), !dbg !3856
  store ptr %55, ptr %37, align 8, !dbg !3876, !tbaa !3766
  %56 = load i32, ptr %3, align 8, !dbg !3877, !tbaa !3033
  %57 = load ptr, ptr %44, align 8, !dbg !3878, !tbaa !3104
  %58 = load ptr, ptr %46, align 8, !dbg !3879, !tbaa !3107
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3880
  br label %60, !dbg !3881

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3856
  call void @llvm.dbg.value(metadata ptr %61, metadata !3814, metadata !DIExpression()), !dbg !3856
  store i32 %7, ptr %6, align 4, !dbg !3882, !tbaa !1162
  ret ptr %61, !dbg !3883
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3884 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3888, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata ptr %1, metadata !3889, metadata !DIExpression()), !dbg !3891
  call void @llvm.dbg.value(metadata i64 %2, metadata !3890, metadata !DIExpression()), !dbg !3891
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3892
  ret ptr %4, !dbg !3893
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3894 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3896, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i32 0, metadata !3792, metadata !DIExpression()), !dbg !3898
  call void @llvm.dbg.value(metadata ptr %0, metadata !3793, metadata !DIExpression()), !dbg !3898
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3900
  ret ptr %2, !dbg !3901
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3902 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !3906, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata i64 %1, metadata !3907, metadata !DIExpression()), !dbg !3908
  call void @llvm.dbg.value(metadata i32 0, metadata !3888, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata ptr %0, metadata !3889, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.value(metadata i64 %1, metadata !3890, metadata !DIExpression()), !dbg !3909
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3911
  ret ptr %3, !dbg !3912
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3913 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3917, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata i32 %1, metadata !3918, metadata !DIExpression()), !dbg !3921
  call void @llvm.dbg.value(metadata ptr %2, metadata !3919, metadata !DIExpression()), !dbg !3921
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !3922
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3920, metadata !DIExpression()), !dbg !3923
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3924), !dbg !3927
  call void @llvm.dbg.value(metadata i32 %1, metadata !3928, metadata !DIExpression()), !dbg !3934
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3933, metadata !DIExpression()), !dbg !3936
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3936, !alias.scope !3924
  %5 = icmp eq i32 %1, 10, !dbg !3937
  br i1 %5, label %6, label %7, !dbg !3939

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !3940, !noalias !3924
  unreachable, !dbg !3940

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3941, !tbaa !3033, !alias.scope !3924
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3942
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !3943
  ret ptr %8, !dbg !3944
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3945 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3949, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i32 %1, metadata !3950, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata ptr %2, metadata !3951, metadata !DIExpression()), !dbg !3954
  call void @llvm.dbg.value(metadata i64 %3, metadata !3952, metadata !DIExpression()), !dbg !3954
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !3955
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3953, metadata !DIExpression()), !dbg !3956
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3957), !dbg !3960
  call void @llvm.dbg.value(metadata i32 %1, metadata !3928, metadata !DIExpression()), !dbg !3961
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3933, metadata !DIExpression()), !dbg !3963
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3963, !alias.scope !3957
  %6 = icmp eq i32 %1, 10, !dbg !3964
  br i1 %6, label %7, label %8, !dbg !3965

7:                                                ; preds = %4
  tail call void @abort() #39, !dbg !3966, !noalias !3957
  unreachable, !dbg !3966

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3967, !tbaa !3033, !alias.scope !3957
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3968
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !3969
  ret ptr %9, !dbg !3970
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3971 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !3975, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata ptr %1, metadata !3976, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.value(metadata i32 0, metadata !3917, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata i32 %0, metadata !3918, metadata !DIExpression()), !dbg !3978
  call void @llvm.dbg.value(metadata ptr %1, metadata !3919, metadata !DIExpression()), !dbg !3978
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !3980
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3920, metadata !DIExpression()), !dbg !3981
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3982), !dbg !3985
  call void @llvm.dbg.value(metadata i32 %0, metadata !3928, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3933, metadata !DIExpression()), !dbg !3988
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3988, !alias.scope !3982
  %4 = icmp eq i32 %0, 10, !dbg !3989
  br i1 %4, label %5, label %6, !dbg !3990

5:                                                ; preds = %2
  tail call void @abort() #39, !dbg !3991, !noalias !3982
  unreachable, !dbg !3991

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3992, !tbaa !3033, !alias.scope !3982
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3993
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !3994
  ret ptr %7, !dbg !3995
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3996 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4000, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata ptr %1, metadata !4001, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i64 %2, metadata !4002, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.value(metadata i32 0, metadata !3949, metadata !DIExpression()), !dbg !4004
  call void @llvm.dbg.value(metadata i32 %0, metadata !3950, metadata !DIExpression()), !dbg !4004
  call void @llvm.dbg.value(metadata ptr %1, metadata !3951, metadata !DIExpression()), !dbg !4004
  call void @llvm.dbg.value(metadata i64 %2, metadata !3952, metadata !DIExpression()), !dbg !4004
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !4006
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3953, metadata !DIExpression()), !dbg !4007
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4008), !dbg !4011
  call void @llvm.dbg.value(metadata i32 %0, metadata !3928, metadata !DIExpression()), !dbg !4012
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3933, metadata !DIExpression()), !dbg !4014
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !4014, !alias.scope !4008
  %5 = icmp eq i32 %0, 10, !dbg !4015
  br i1 %5, label %6, label %7, !dbg !4016

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !4017, !noalias !4008
  unreachable, !dbg !4017

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !4018, !tbaa !3033, !alias.scope !4008
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !4019
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !4020
  ret ptr %8, !dbg !4021
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !4022 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4026, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i64 %1, metadata !4027, metadata !DIExpression()), !dbg !4030
  call void @llvm.dbg.value(metadata i8 %2, metadata !4028, metadata !DIExpression()), !dbg !4030
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !4031
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4029, metadata !DIExpression()), !dbg !4032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4033, !tbaa.struct !4034
  call void @llvm.dbg.value(metadata ptr %4, metadata !3050, metadata !DIExpression()), !dbg !4035
  call void @llvm.dbg.value(metadata i8 %2, metadata !3051, metadata !DIExpression()), !dbg !4035
  call void @llvm.dbg.value(metadata i32 1, metadata !3052, metadata !DIExpression()), !dbg !4035
  call void @llvm.dbg.value(metadata i8 %2, metadata !3053, metadata !DIExpression()), !dbg !4035
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !4037
  %6 = lshr i8 %2, 5, !dbg !4038
  %7 = zext i8 %6 to i64, !dbg !4038
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !4039
  call void @llvm.dbg.value(metadata ptr %8, metadata !3054, metadata !DIExpression()), !dbg !4035
  %9 = and i8 %2, 31, !dbg !4040
  %10 = zext i8 %9 to i32, !dbg !4040
  call void @llvm.dbg.value(metadata i32 %10, metadata !3056, metadata !DIExpression()), !dbg !4035
  %11 = load i32, ptr %8, align 4, !dbg !4041, !tbaa !1162
  %12 = lshr i32 %11, %10, !dbg !4042
  call void @llvm.dbg.value(metadata i32 %12, metadata !3057, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4035
  %13 = and i32 %12, 1, !dbg !4043
  %14 = xor i32 %13, 1, !dbg !4043
  %15 = shl nuw i32 %14, %10, !dbg !4044
  %16 = xor i32 %15, %11, !dbg !4045
  store i32 %16, ptr %8, align 4, !dbg !4045, !tbaa !1162
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !4046
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !4047
  ret ptr %17, !dbg !4048
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !4049 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4053, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.value(metadata i8 %1, metadata !4054, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.value(metadata ptr %0, metadata !4026, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i64 -1, metadata !4027, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.value(metadata i8 %1, metadata !4028, metadata !DIExpression()), !dbg !4056
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !4058
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4029, metadata !DIExpression()), !dbg !4059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4060, !tbaa.struct !4034
  call void @llvm.dbg.value(metadata ptr %3, metadata !3050, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i8 %1, metadata !3051, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i32 1, metadata !3052, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.value(metadata i8 %1, metadata !3053, metadata !DIExpression()), !dbg !4061
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !4063
  %5 = lshr i8 %1, 5, !dbg !4064
  %6 = zext i8 %5 to i64, !dbg !4064
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !4065
  call void @llvm.dbg.value(metadata ptr %7, metadata !3054, metadata !DIExpression()), !dbg !4061
  %8 = and i8 %1, 31, !dbg !4066
  %9 = zext i8 %8 to i32, !dbg !4066
  call void @llvm.dbg.value(metadata i32 %9, metadata !3056, metadata !DIExpression()), !dbg !4061
  %10 = load i32, ptr %7, align 4, !dbg !4067, !tbaa !1162
  %11 = lshr i32 %10, %9, !dbg !4068
  call void @llvm.dbg.value(metadata i32 %11, metadata !3057, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4061
  %12 = and i32 %11, 1, !dbg !4069
  %13 = xor i32 %12, 1, !dbg !4069
  %14 = shl nuw i32 %13, %9, !dbg !4070
  %15 = xor i32 %14, %10, !dbg !4071
  store i32 %15, ptr %7, align 4, !dbg !4071, !tbaa !1162
  %16 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !4072
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !4073
  ret ptr %16, !dbg !4074
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !4075 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4077, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata ptr %0, metadata !4053, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata i8 58, metadata !4054, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.value(metadata ptr %0, metadata !4026, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i64 -1, metadata !4027, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.value(metadata i8 58, metadata !4028, metadata !DIExpression()), !dbg !4081
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #37, !dbg !4083
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4029, metadata !DIExpression()), !dbg !4084
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4085, !tbaa.struct !4034
  call void @llvm.dbg.value(metadata ptr %2, metadata !3050, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata i8 58, metadata !3051, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata i32 1, metadata !3052, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata i8 58, metadata !3053, metadata !DIExpression()), !dbg !4086
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !4088
  call void @llvm.dbg.value(metadata ptr %3, metadata !3054, metadata !DIExpression()), !dbg !4086
  call void @llvm.dbg.value(metadata i32 26, metadata !3056, metadata !DIExpression()), !dbg !4086
  %4 = load i32, ptr %3, align 4, !dbg !4089, !tbaa !1162
  call void @llvm.dbg.value(metadata i32 %4, metadata !3057, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4086
  %5 = or i32 %4, 67108864, !dbg !4090
  store i32 %5, ptr %3, align 4, !dbg !4090, !tbaa !1162
  %6 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !4091
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #37, !dbg !4092
  ret ptr %6, !dbg !4093
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4094 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4096, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata i64 %1, metadata !4097, metadata !DIExpression()), !dbg !4098
  call void @llvm.dbg.value(metadata ptr %0, metadata !4026, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata i64 %1, metadata !4027, metadata !DIExpression()), !dbg !4099
  call void @llvm.dbg.value(metadata i8 58, metadata !4028, metadata !DIExpression()), !dbg !4099
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #37, !dbg !4101
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4029, metadata !DIExpression()), !dbg !4102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4103, !tbaa.struct !4034
  call void @llvm.dbg.value(metadata ptr %3, metadata !3050, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i8 58, metadata !3051, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i32 1, metadata !3052, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i8 58, metadata !3053, metadata !DIExpression()), !dbg !4104
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !4106
  call void @llvm.dbg.value(metadata ptr %4, metadata !3054, metadata !DIExpression()), !dbg !4104
  call void @llvm.dbg.value(metadata i32 26, metadata !3056, metadata !DIExpression()), !dbg !4104
  %5 = load i32, ptr %4, align 4, !dbg !4107, !tbaa !1162
  call void @llvm.dbg.value(metadata i32 %5, metadata !3057, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4104
  %6 = or i32 %5, 67108864, !dbg !4108
  store i32 %6, ptr %4, align 4, !dbg !4108, !tbaa !1162
  %7 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !4109
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #37, !dbg !4110
  ret ptr %7, !dbg !4111
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4112 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3933, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4118
  call void @llvm.dbg.value(metadata i32 %0, metadata !4114, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata i32 %1, metadata !4115, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata ptr %2, metadata !4116, metadata !DIExpression()), !dbg !4120
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !4121
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4117, metadata !DIExpression()), !dbg !4122
  call void @llvm.dbg.value(metadata i32 %1, metadata !3928, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata i32 0, metadata !3933, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4123
  %5 = icmp eq i32 %1, 10, !dbg !4124
  br i1 %5, label %6, label %7, !dbg !4125

6:                                                ; preds = %3
  tail call void @abort() #39, !dbg !4126, !noalias !4127
  unreachable, !dbg !4126

7:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !3933, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4123
  store i32 %1, ptr %4, align 8, !dbg !4130, !tbaa.struct !4034
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4130
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4130
  call void @llvm.dbg.value(metadata ptr %4, metadata !3050, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i8 58, metadata !3051, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 1, metadata !3052, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i8 58, metadata !3053, metadata !DIExpression()), !dbg !4131
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4133
  call void @llvm.dbg.value(metadata ptr %9, metadata !3054, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata i32 26, metadata !3056, metadata !DIExpression()), !dbg !4131
  %10 = load i32, ptr %9, align 4, !dbg !4134, !tbaa !1162
  call void @llvm.dbg.value(metadata i32 %10, metadata !3057, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4131
  %11 = or i32 %10, 67108864, !dbg !4135
  store i32 %11, ptr %9, align 4, !dbg !4135, !tbaa !1162
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4136
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !4137
  ret ptr %12, !dbg !4138
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4139 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4143, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata ptr %1, metadata !4144, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata ptr %2, metadata !4145, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata ptr %3, metadata !4146, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i32 %0, metadata !4148, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata ptr %1, metadata !4153, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata ptr %2, metadata !4154, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata ptr %3, metadata !4155, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.value(metadata i64 -1, metadata !4156, metadata !DIExpression()), !dbg !4158
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !4160
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4157, metadata !DIExpression()), !dbg !4161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4162, !tbaa.struct !4034
  call void @llvm.dbg.value(metadata ptr %5, metadata !3090, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %1, metadata !3091, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %2, metadata !3092, metadata !DIExpression()), !dbg !4163
  call void @llvm.dbg.value(metadata ptr %5, metadata !3090, metadata !DIExpression()), !dbg !4163
  store i32 10, ptr %5, align 8, !dbg !4165, !tbaa !3033
  %6 = icmp ne ptr %1, null, !dbg !4166
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4167
  br i1 %8, label %10, label %9, !dbg !4167

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !4168
  unreachable, !dbg !4168

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4169
  store ptr %1, ptr %11, align 8, !dbg !4170, !tbaa !3104
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4171
  store ptr %2, ptr %12, align 8, !dbg !4172, !tbaa !3107
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4173
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !4174
  ret ptr %13, !dbg !4175
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4149 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !4148, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata ptr %1, metadata !4153, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata ptr %2, metadata !4154, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata ptr %3, metadata !4155, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i64 %4, metadata !4156, metadata !DIExpression()), !dbg !4176
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #37, !dbg !4177
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4157, metadata !DIExpression()), !dbg !4178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4179, !tbaa.struct !4034
  call void @llvm.dbg.value(metadata ptr %6, metadata !3090, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata ptr %1, metadata !3091, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata ptr %2, metadata !3092, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.value(metadata ptr %6, metadata !3090, metadata !DIExpression()), !dbg !4180
  store i32 10, ptr %6, align 8, !dbg !4182, !tbaa !3033
  %7 = icmp ne ptr %1, null, !dbg !4183
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4184
  br i1 %9, label %11, label %10, !dbg !4184

10:                                               ; preds = %5
  tail call void @abort() #39, !dbg !4185
  unreachable, !dbg !4185

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4186
  store ptr %1, ptr %12, align 8, !dbg !4187, !tbaa !3104
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4188
  store ptr %2, ptr %13, align 8, !dbg !4189, !tbaa !3107
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4190
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #37, !dbg !4191
  ret ptr %14, !dbg !4192
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4193 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4197, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata ptr %1, metadata !4198, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata ptr %2, metadata !4199, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.value(metadata i32 0, metadata !4143, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata ptr %0, metadata !4144, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata ptr %1, metadata !4145, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata ptr %2, metadata !4146, metadata !DIExpression()), !dbg !4201
  call void @llvm.dbg.value(metadata i32 0, metadata !4148, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata ptr %0, metadata !4153, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata ptr %1, metadata !4154, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata ptr %2, metadata !4155, metadata !DIExpression()), !dbg !4203
  call void @llvm.dbg.value(metadata i64 -1, metadata !4156, metadata !DIExpression()), !dbg !4203
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #37, !dbg !4205
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4157, metadata !DIExpression()), !dbg !4206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4207, !tbaa.struct !4034
  call void @llvm.dbg.value(metadata ptr %4, metadata !3090, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata ptr %0, metadata !3091, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata ptr %1, metadata !3092, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.value(metadata ptr %4, metadata !3090, metadata !DIExpression()), !dbg !4208
  store i32 10, ptr %4, align 8, !dbg !4210, !tbaa !3033
  %5 = icmp ne ptr %0, null, !dbg !4211
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4212
  br i1 %7, label %9, label %8, !dbg !4212

8:                                                ; preds = %3
  tail call void @abort() #39, !dbg !4213
  unreachable, !dbg !4213

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4214
  store ptr %0, ptr %10, align 8, !dbg !4215, !tbaa !3104
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4216
  store ptr %1, ptr %11, align 8, !dbg !4217, !tbaa !3107
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4218
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #37, !dbg !4219
  ret ptr %12, !dbg !4220
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4221 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4225, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata ptr %1, metadata !4226, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata ptr %2, metadata !4227, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata i64 %3, metadata !4228, metadata !DIExpression()), !dbg !4229
  call void @llvm.dbg.value(metadata i32 0, metadata !4148, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata ptr %0, metadata !4153, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata ptr %1, metadata !4154, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata ptr %2, metadata !4155, metadata !DIExpression()), !dbg !4230
  call void @llvm.dbg.value(metadata i64 %3, metadata !4156, metadata !DIExpression()), !dbg !4230
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #37, !dbg !4232
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4157, metadata !DIExpression()), !dbg !4233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4234, !tbaa.struct !4034
  call void @llvm.dbg.value(metadata ptr %5, metadata !3090, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata ptr %0, metadata !3091, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata ptr %1, metadata !3092, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.value(metadata ptr %5, metadata !3090, metadata !DIExpression()), !dbg !4235
  store i32 10, ptr %5, align 8, !dbg !4237, !tbaa !3033
  %6 = icmp ne ptr %0, null, !dbg !4238
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4239
  br i1 %8, label %10, label %9, !dbg !4239

9:                                                ; preds = %4
  tail call void @abort() #39, !dbg !4240
  unreachable, !dbg !4240

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4241
  store ptr %0, ptr %11, align 8, !dbg !4242, !tbaa !3104
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4243
  store ptr %1, ptr %12, align 8, !dbg !4244, !tbaa !3107
  %13 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4245
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #37, !dbg !4246
  ret ptr %13, !dbg !4247
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4248 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4252, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata ptr %1, metadata !4253, metadata !DIExpression()), !dbg !4255
  call void @llvm.dbg.value(metadata i64 %2, metadata !4254, metadata !DIExpression()), !dbg !4255
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4256
  ret ptr %4, !dbg !4257
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4258 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4262, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata i64 %1, metadata !4263, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.value(metadata i32 0, metadata !4252, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata ptr %0, metadata !4253, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i64 %1, metadata !4254, metadata !DIExpression()), !dbg !4265
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4267
  ret ptr %3, !dbg !4268
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4269 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !4273, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata ptr %1, metadata !4274, metadata !DIExpression()), !dbg !4275
  call void @llvm.dbg.value(metadata i32 %0, metadata !4252, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata ptr %1, metadata !4253, metadata !DIExpression()), !dbg !4276
  call void @llvm.dbg.value(metadata i64 -1, metadata !4254, metadata !DIExpression()), !dbg !4276
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4278
  ret ptr %3, !dbg !4279
}

; Function Attrs: nounwind uwtable
define dso_local ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4280 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4284, metadata !DIExpression()), !dbg !4285
  call void @llvm.dbg.value(metadata i32 0, metadata !4273, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata ptr %0, metadata !4274, metadata !DIExpression()), !dbg !4286
  call void @llvm.dbg.value(metadata i32 0, metadata !4252, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata ptr %0, metadata !4253, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.value(metadata i64 -1, metadata !4254, metadata !DIExpression()), !dbg !4288
  %2 = tail call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4290
  ret ptr %2, !dbg !4291
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4292 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4331, metadata !DIExpression()), !dbg !4337
  call void @llvm.dbg.value(metadata ptr %1, metadata !4332, metadata !DIExpression()), !dbg !4337
  call void @llvm.dbg.value(metadata ptr %2, metadata !4333, metadata !DIExpression()), !dbg !4337
  call void @llvm.dbg.value(metadata ptr %3, metadata !4334, metadata !DIExpression()), !dbg !4337
  call void @llvm.dbg.value(metadata ptr %4, metadata !4335, metadata !DIExpression()), !dbg !4337
  call void @llvm.dbg.value(metadata i64 %5, metadata !4336, metadata !DIExpression()), !dbg !4337
  %7 = icmp eq ptr %1, null, !dbg !4338
  br i1 %7, label %10, label %8, !dbg !4340

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.124, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #37, !dbg !4341
  br label %12, !dbg !4341

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.125, ptr noundef %2, ptr noundef %3) #37, !dbg !4342
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.3.127, i32 noundef 5) #37, !dbg !4343
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #37, !dbg !4343
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.128, ptr noundef %0), !dbg !4344
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.5.129, i32 noundef 5) #37, !dbg !4345
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.130) #37, !dbg !4345
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.128, ptr noundef %0), !dbg !4346
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
  ], !dbg !4347

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.7.131, i32 noundef 5) #37, !dbg !4348
  %21 = load ptr, ptr %4, align 8, !dbg !4348, !tbaa !1092
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #37, !dbg !4348
  br label %147, !dbg !4350

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.8.132, i32 noundef 5) #37, !dbg !4351
  %25 = load ptr, ptr %4, align 8, !dbg !4351, !tbaa !1092
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4351
  %27 = load ptr, ptr %26, align 8, !dbg !4351, !tbaa !1092
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #37, !dbg !4351
  br label %147, !dbg !4352

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.9.133, i32 noundef 5) #37, !dbg !4353
  %31 = load ptr, ptr %4, align 8, !dbg !4353, !tbaa !1092
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4353
  %33 = load ptr, ptr %32, align 8, !dbg !4353, !tbaa !1092
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4353
  %35 = load ptr, ptr %34, align 8, !dbg !4353, !tbaa !1092
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #37, !dbg !4353
  br label %147, !dbg !4354

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.10.134, i32 noundef 5) #37, !dbg !4355
  %39 = load ptr, ptr %4, align 8, !dbg !4355, !tbaa !1092
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4355
  %41 = load ptr, ptr %40, align 8, !dbg !4355, !tbaa !1092
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4355
  %43 = load ptr, ptr %42, align 8, !dbg !4355, !tbaa !1092
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4355
  %45 = load ptr, ptr %44, align 8, !dbg !4355, !tbaa !1092
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #37, !dbg !4355
  br label %147, !dbg !4356

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.11.135, i32 noundef 5) #37, !dbg !4357
  %49 = load ptr, ptr %4, align 8, !dbg !4357, !tbaa !1092
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4357
  %51 = load ptr, ptr %50, align 8, !dbg !4357, !tbaa !1092
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4357
  %53 = load ptr, ptr %52, align 8, !dbg !4357, !tbaa !1092
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4357
  %55 = load ptr, ptr %54, align 8, !dbg !4357, !tbaa !1092
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4357
  %57 = load ptr, ptr %56, align 8, !dbg !4357, !tbaa !1092
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #37, !dbg !4357
  br label %147, !dbg !4358

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.12.136, i32 noundef 5) #37, !dbg !4359
  %61 = load ptr, ptr %4, align 8, !dbg !4359, !tbaa !1092
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4359
  %63 = load ptr, ptr %62, align 8, !dbg !4359, !tbaa !1092
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4359
  %65 = load ptr, ptr %64, align 8, !dbg !4359, !tbaa !1092
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4359
  %67 = load ptr, ptr %66, align 8, !dbg !4359, !tbaa !1092
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4359
  %69 = load ptr, ptr %68, align 8, !dbg !4359, !tbaa !1092
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4359
  %71 = load ptr, ptr %70, align 8, !dbg !4359, !tbaa !1092
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #37, !dbg !4359
  br label %147, !dbg !4360

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.13.137, i32 noundef 5) #37, !dbg !4361
  %75 = load ptr, ptr %4, align 8, !dbg !4361, !tbaa !1092
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4361
  %77 = load ptr, ptr %76, align 8, !dbg !4361, !tbaa !1092
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4361
  %79 = load ptr, ptr %78, align 8, !dbg !4361, !tbaa !1092
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4361
  %81 = load ptr, ptr %80, align 8, !dbg !4361, !tbaa !1092
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4361
  %83 = load ptr, ptr %82, align 8, !dbg !4361, !tbaa !1092
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4361
  %85 = load ptr, ptr %84, align 8, !dbg !4361, !tbaa !1092
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4361
  %87 = load ptr, ptr %86, align 8, !dbg !4361, !tbaa !1092
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #37, !dbg !4361
  br label %147, !dbg !4362

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.14.138, i32 noundef 5) #37, !dbg !4363
  %91 = load ptr, ptr %4, align 8, !dbg !4363, !tbaa !1092
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4363
  %93 = load ptr, ptr %92, align 8, !dbg !4363, !tbaa !1092
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4363
  %95 = load ptr, ptr %94, align 8, !dbg !4363, !tbaa !1092
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4363
  %97 = load ptr, ptr %96, align 8, !dbg !4363, !tbaa !1092
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4363
  %99 = load ptr, ptr %98, align 8, !dbg !4363, !tbaa !1092
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4363
  %101 = load ptr, ptr %100, align 8, !dbg !4363, !tbaa !1092
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4363
  %103 = load ptr, ptr %102, align 8, !dbg !4363, !tbaa !1092
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4363
  %105 = load ptr, ptr %104, align 8, !dbg !4363, !tbaa !1092
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #37, !dbg !4363
  br label %147, !dbg !4364

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.15.139, i32 noundef 5) #37, !dbg !4365
  %109 = load ptr, ptr %4, align 8, !dbg !4365, !tbaa !1092
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4365
  %111 = load ptr, ptr %110, align 8, !dbg !4365, !tbaa !1092
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4365
  %113 = load ptr, ptr %112, align 8, !dbg !4365, !tbaa !1092
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4365
  %115 = load ptr, ptr %114, align 8, !dbg !4365, !tbaa !1092
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4365
  %117 = load ptr, ptr %116, align 8, !dbg !4365, !tbaa !1092
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4365
  %119 = load ptr, ptr %118, align 8, !dbg !4365, !tbaa !1092
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4365
  %121 = load ptr, ptr %120, align 8, !dbg !4365, !tbaa !1092
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4365
  %123 = load ptr, ptr %122, align 8, !dbg !4365, !tbaa !1092
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4365
  %125 = load ptr, ptr %124, align 8, !dbg !4365, !tbaa !1092
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #37, !dbg !4365
  br label %147, !dbg !4366

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.16.140, i32 noundef 5) #37, !dbg !4367
  %129 = load ptr, ptr %4, align 8, !dbg !4367, !tbaa !1092
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4367
  %131 = load ptr, ptr %130, align 8, !dbg !4367, !tbaa !1092
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4367
  %133 = load ptr, ptr %132, align 8, !dbg !4367, !tbaa !1092
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4367
  %135 = load ptr, ptr %134, align 8, !dbg !4367, !tbaa !1092
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4367
  %137 = load ptr, ptr %136, align 8, !dbg !4367, !tbaa !1092
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4367
  %139 = load ptr, ptr %138, align 8, !dbg !4367, !tbaa !1092
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4367
  %141 = load ptr, ptr %140, align 8, !dbg !4367, !tbaa !1092
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4367
  %143 = load ptr, ptr %142, align 8, !dbg !4367, !tbaa !1092
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4367
  %145 = load ptr, ptr %144, align 8, !dbg !4367, !tbaa !1092
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #37, !dbg !4367
  br label %147, !dbg !4368

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4369
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4370 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4374, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata ptr %1, metadata !4375, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata ptr %2, metadata !4376, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata ptr %3, metadata !4377, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata ptr %4, metadata !4378, metadata !DIExpression()), !dbg !4380
  call void @llvm.dbg.value(metadata i64 0, metadata !4379, metadata !DIExpression()), !dbg !4380
  br label %6, !dbg !4381

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4383
  call void @llvm.dbg.value(metadata i64 %7, metadata !4379, metadata !DIExpression()), !dbg !4380
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4384
  %9 = load ptr, ptr %8, align 8, !dbg !4384, !tbaa !1092
  %10 = icmp eq ptr %9, null, !dbg !4386
  %11 = add i64 %7, 1, !dbg !4387
  call void @llvm.dbg.value(metadata i64 %11, metadata !4379, metadata !DIExpression()), !dbg !4380
  br i1 %10, label %12, label %6, !dbg !4386, !llvm.loop !4388

12:                                               ; preds = %6
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %7), !dbg !4390
  ret void, !dbg !4391
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4392 {
  %6 = alloca [10 x ptr], align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4407, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata ptr %1, metadata !4408, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata ptr %2, metadata !4409, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata ptr %3, metadata !4410, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4411, metadata !DIExpression()), !dbg !4416
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #37, !dbg !4417
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4413, metadata !DIExpression()), !dbg !4418
  call void @llvm.dbg.value(metadata i64 0, metadata !4412, metadata !DIExpression()), !dbg !4415
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  call void @llvm.dbg.value(metadata i64 0, metadata !4412, metadata !DIExpression()), !dbg !4415
  %10 = icmp sgt i32 %9, -1, !dbg !4419
  br i1 %10, label %18, label %11, !dbg !4419

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4419
  store i32 %12, ptr %7, align 8, !dbg !4419
  %13 = icmp ult i32 %9, -7, !dbg !4419
  br i1 %13, label %14, label %18, !dbg !4419

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4419
  %16 = sext i32 %9 to i64, !dbg !4419
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4419
  br label %22, !dbg !4419

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4419
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4419
  store ptr %21, ptr %4, align 8, !dbg !4419
  br label %22, !dbg !4419

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4419
  %25 = load ptr, ptr %24, align 8, !dbg !4419
  store ptr %25, ptr %6, align 8, !dbg !4422, !tbaa !1092
  %26 = icmp eq ptr %25, null, !dbg !4423
  br i1 %26, label %197, label %27, !dbg !4424

27:                                               ; preds = %22
  call void @llvm.dbg.value(metadata i64 1, metadata !4412, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata i64 1, metadata !4412, metadata !DIExpression()), !dbg !4415
  %28 = icmp sgt i32 %23, -1, !dbg !4419
  br i1 %28, label %36, label %29, !dbg !4419

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4419
  store i32 %30, ptr %7, align 8, !dbg !4419
  %31 = icmp ult i32 %23, -7, !dbg !4419
  br i1 %31, label %32, label %36, !dbg !4419

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4419
  %34 = sext i32 %23 to i64, !dbg !4419
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4419
  br label %40, !dbg !4419

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4419
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4419
  store ptr %39, ptr %4, align 8, !dbg !4419
  br label %40, !dbg !4419

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4419
  %43 = load ptr, ptr %42, align 8, !dbg !4419
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4425
  store ptr %43, ptr %44, align 8, !dbg !4422, !tbaa !1092
  %45 = icmp eq ptr %43, null, !dbg !4423
  br i1 %45, label %197, label %46, !dbg !4424

46:                                               ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !4412, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata i64 2, metadata !4412, metadata !DIExpression()), !dbg !4415
  %47 = icmp sgt i32 %41, -1, !dbg !4419
  br i1 %47, label %55, label %48, !dbg !4419

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4419
  store i32 %49, ptr %7, align 8, !dbg !4419
  %50 = icmp ult i32 %41, -7, !dbg !4419
  br i1 %50, label %51, label %55, !dbg !4419

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4419
  %53 = sext i32 %41 to i64, !dbg !4419
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4419
  br label %59, !dbg !4419

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4419
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4419
  store ptr %58, ptr %4, align 8, !dbg !4419
  br label %59, !dbg !4419

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4419
  %62 = load ptr, ptr %61, align 8, !dbg !4419
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4425
  store ptr %62, ptr %63, align 8, !dbg !4422, !tbaa !1092
  %64 = icmp eq ptr %62, null, !dbg !4423
  br i1 %64, label %197, label %65, !dbg !4424

65:                                               ; preds = %59
  call void @llvm.dbg.value(metadata i64 3, metadata !4412, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata i64 3, metadata !4412, metadata !DIExpression()), !dbg !4415
  %66 = icmp sgt i32 %60, -1, !dbg !4419
  br i1 %66, label %74, label %67, !dbg !4419

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4419
  store i32 %68, ptr %7, align 8, !dbg !4419
  %69 = icmp ult i32 %60, -7, !dbg !4419
  br i1 %69, label %70, label %74, !dbg !4419

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4419
  %72 = sext i32 %60 to i64, !dbg !4419
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4419
  br label %78, !dbg !4419

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4419
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4419
  store ptr %77, ptr %4, align 8, !dbg !4419
  br label %78, !dbg !4419

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4419
  %81 = load ptr, ptr %80, align 8, !dbg !4419
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4425
  store ptr %81, ptr %82, align 8, !dbg !4422, !tbaa !1092
  %83 = icmp eq ptr %81, null, !dbg !4423
  br i1 %83, label %197, label %84, !dbg !4424

84:                                               ; preds = %78
  call void @llvm.dbg.value(metadata i64 4, metadata !4412, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata i64 4, metadata !4412, metadata !DIExpression()), !dbg !4415
  %85 = icmp sgt i32 %79, -1, !dbg !4419
  br i1 %85, label %93, label %86, !dbg !4419

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4419
  store i32 %87, ptr %7, align 8, !dbg !4419
  %88 = icmp ult i32 %79, -7, !dbg !4419
  br i1 %88, label %89, label %93, !dbg !4419

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4419
  %91 = sext i32 %79 to i64, !dbg !4419
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4419
  br label %97, !dbg !4419

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4419
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4419
  store ptr %96, ptr %4, align 8, !dbg !4419
  br label %97, !dbg !4419

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4419
  %100 = load ptr, ptr %99, align 8, !dbg !4419
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4425
  store ptr %100, ptr %101, align 8, !dbg !4422, !tbaa !1092
  %102 = icmp eq ptr %100, null, !dbg !4423
  br i1 %102, label %197, label %103, !dbg !4424

103:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 5, metadata !4412, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata i64 5, metadata !4412, metadata !DIExpression()), !dbg !4415
  %104 = icmp sgt i32 %98, -1, !dbg !4419
  br i1 %104, label %112, label %105, !dbg !4419

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4419
  store i32 %106, ptr %7, align 8, !dbg !4419
  %107 = icmp ult i32 %98, -7, !dbg !4419
  br i1 %107, label %108, label %112, !dbg !4419

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4419
  %110 = sext i32 %98 to i64, !dbg !4419
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4419
  br label %116, !dbg !4419

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4419
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4419
  store ptr %115, ptr %4, align 8, !dbg !4419
  br label %116, !dbg !4419

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4419
  %119 = load ptr, ptr %118, align 8, !dbg !4419
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4425
  store ptr %119, ptr %120, align 8, !dbg !4422, !tbaa !1092
  %121 = icmp eq ptr %119, null, !dbg !4423
  br i1 %121, label %197, label %122, !dbg !4424

122:                                              ; preds = %116
  call void @llvm.dbg.value(metadata i64 6, metadata !4412, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata i64 6, metadata !4412, metadata !DIExpression()), !dbg !4415
  %123 = icmp sgt i32 %117, -1, !dbg !4419
  br i1 %123, label %131, label %124, !dbg !4419

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4419
  store i32 %125, ptr %7, align 8, !dbg !4419
  %126 = icmp ult i32 %117, -7, !dbg !4419
  br i1 %126, label %127, label %131, !dbg !4419

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4419
  %129 = sext i32 %117 to i64, !dbg !4419
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4419
  br label %135, !dbg !4419

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4419
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4419
  store ptr %134, ptr %4, align 8, !dbg !4419
  br label %135, !dbg !4419

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4419
  %138 = load ptr, ptr %137, align 8, !dbg !4419
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4425
  store ptr %138, ptr %139, align 8, !dbg !4422, !tbaa !1092
  %140 = icmp eq ptr %138, null, !dbg !4423
  br i1 %140, label %197, label %141, !dbg !4424

141:                                              ; preds = %135
  call void @llvm.dbg.value(metadata i64 7, metadata !4412, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata i64 7, metadata !4412, metadata !DIExpression()), !dbg !4415
  %142 = icmp sgt i32 %136, -1, !dbg !4419
  br i1 %142, label %150, label %143, !dbg !4419

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4419
  store i32 %144, ptr %7, align 8, !dbg !4419
  %145 = icmp ult i32 %136, -7, !dbg !4419
  br i1 %145, label %146, label %150, !dbg !4419

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4419
  %148 = sext i32 %136 to i64, !dbg !4419
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4419
  br label %154, !dbg !4419

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4419
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4419
  store ptr %153, ptr %4, align 8, !dbg !4419
  br label %154, !dbg !4419

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4419
  %157 = load ptr, ptr %156, align 8, !dbg !4419
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4425
  store ptr %157, ptr %158, align 8, !dbg !4422, !tbaa !1092
  %159 = icmp eq ptr %157, null, !dbg !4423
  br i1 %159, label %197, label %160, !dbg !4424

160:                                              ; preds = %154
  call void @llvm.dbg.value(metadata i64 8, metadata !4412, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata i64 8, metadata !4412, metadata !DIExpression()), !dbg !4415
  %161 = icmp sgt i32 %155, -1, !dbg !4419
  br i1 %161, label %169, label %162, !dbg !4419

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4419
  store i32 %163, ptr %7, align 8, !dbg !4419
  %164 = icmp ult i32 %155, -7, !dbg !4419
  br i1 %164, label %165, label %169, !dbg !4419

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4419
  %167 = sext i32 %155 to i64, !dbg !4419
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4419
  br label %173, !dbg !4419

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4419
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4419
  store ptr %172, ptr %4, align 8, !dbg !4419
  br label %173, !dbg !4419

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4419
  %176 = load ptr, ptr %175, align 8, !dbg !4419
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4425
  store ptr %176, ptr %177, align 8, !dbg !4422, !tbaa !1092
  %178 = icmp eq ptr %176, null, !dbg !4423
  br i1 %178, label %197, label %179, !dbg !4424

179:                                              ; preds = %173
  call void @llvm.dbg.value(metadata i64 9, metadata !4412, metadata !DIExpression()), !dbg !4415
  call void @llvm.dbg.value(metadata i64 9, metadata !4412, metadata !DIExpression()), !dbg !4415
  %180 = icmp sgt i32 %174, -1, !dbg !4419
  br i1 %180, label %188, label %181, !dbg !4419

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4419
  store i32 %182, ptr %7, align 8, !dbg !4419
  %183 = icmp ult i32 %174, -7, !dbg !4419
  br i1 %183, label %184, label %188, !dbg !4419

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4419
  %186 = sext i32 %174 to i64, !dbg !4419
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4419
  br label %191, !dbg !4419

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4419
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4419
  store ptr %190, ptr %4, align 8, !dbg !4419
  br label %191, !dbg !4419

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4419
  %193 = load ptr, ptr %192, align 8, !dbg !4419
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4425
  store ptr %193, ptr %194, align 8, !dbg !4422, !tbaa !1092
  %195 = icmp eq ptr %193, null, !dbg !4423
  %196 = select i1 %195, i64 9, i64 10, !dbg !4424
  br label %197, !dbg !4424

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4426
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4427
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #37, !dbg !4428
  ret void, !dbg !4428
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4429 {
  %5 = alloca %struct.__va_list, align 8
  %6 = alloca %struct.__va_list, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !4433, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata ptr %1, metadata !4434, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata ptr %2, metadata !4435, metadata !DIExpression()), !dbg !4438
  call void @llvm.dbg.value(metadata ptr %3, metadata !4436, metadata !DIExpression()), !dbg !4438
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #37, !dbg !4439
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4437, metadata !DIExpression()), !dbg !4440
  call void @llvm.va_start(ptr nonnull %5), !dbg !4441
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #37, !dbg !4442
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4442, !tbaa.struct !2417
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4442
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #37, !dbg !4442
  call void @llvm.va_end(ptr nonnull %5), !dbg !4443
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #37, !dbg !4444
  ret void, !dbg !4444
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4445 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4446, !tbaa !1092
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.128, ptr noundef %1), !dbg !4446
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.17.145, i32 noundef 5) #37, !dbg !4447
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.146) #37, !dbg !4447
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.19.147, i32 noundef 5) #37, !dbg !4448
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.148, ptr noundef nonnull @.str.21.149) #37, !dbg !4448
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.126, ptr noundef nonnull @.str.22.150, i32 noundef 5) #37, !dbg !4449
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.151) #37, !dbg !4449
  ret void, !dbg !4450
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #26 !dbg !4451 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4456, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i64 %1, metadata !4457, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata i64 %2, metadata !4458, metadata !DIExpression()), !dbg !4459
  call void @llvm.dbg.value(metadata ptr %0, metadata !4460, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata i64 %1, metadata !4463, metadata !DIExpression()), !dbg !4465
  call void @llvm.dbg.value(metadata i64 %2, metadata !4464, metadata !DIExpression()), !dbg !4465
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !4467
  call void @llvm.dbg.value(metadata ptr %4, metadata !4468, metadata !DIExpression()), !dbg !4473
  %5 = icmp eq ptr %4, null, !dbg !4475
  br i1 %5, label %6, label %7, !dbg !4477

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !4478
  unreachable, !dbg !4478

7:                                                ; preds = %3
  ret ptr %4, !dbg !4479
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4461 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4460, metadata !DIExpression()), !dbg !4480
  call void @llvm.dbg.value(metadata i64 %1, metadata !4463, metadata !DIExpression()), !dbg !4480
  call void @llvm.dbg.value(metadata i64 %2, metadata !4464, metadata !DIExpression()), !dbg !4480
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !4481
  call void @llvm.dbg.value(metadata ptr %4, metadata !4468, metadata !DIExpression()), !dbg !4482
  %5 = icmp eq ptr %4, null, !dbg !4484
  br i1 %5, label %6, label %7, !dbg !4485

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !4486
  unreachable, !dbg !4486

7:                                                ; preds = %3
  ret ptr %4, !dbg !4487
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4488 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4492, metadata !DIExpression()), !dbg !4493
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !4494
  call void @llvm.dbg.value(metadata ptr %2, metadata !4468, metadata !DIExpression()), !dbg !4495
  %3 = icmp eq ptr %2, null, !dbg !4497
  br i1 %3, label %4, label %5, !dbg !4498

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4499
  unreachable, !dbg !4499

5:                                                ; preds = %1
  ret ptr %2, !dbg !4500
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4501 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4502 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4506, metadata !DIExpression()), !dbg !4507
  call void @llvm.dbg.value(metadata i64 %0, metadata !4508, metadata !DIExpression()), !dbg !4512
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !4514
  call void @llvm.dbg.value(metadata ptr %2, metadata !4468, metadata !DIExpression()), !dbg !4515
  %3 = icmp eq ptr %2, null, !dbg !4517
  br i1 %3, label %4, label %5, !dbg !4518

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4519
  unreachable, !dbg !4519

5:                                                ; preds = %1
  ret ptr %2, !dbg !4520
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4521 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4525, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i64 %0, metadata !4492, metadata !DIExpression()), !dbg !4527
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #42, !dbg !4529
  call void @llvm.dbg.value(metadata ptr %2, metadata !4468, metadata !DIExpression()), !dbg !4530
  %3 = icmp eq ptr %2, null, !dbg !4532
  br i1 %3, label %4, label %5, !dbg !4533

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4534
  unreachable, !dbg !4534

5:                                                ; preds = %1
  ret ptr %2, !dbg !4535
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4536 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4540, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata i64 %1, metadata !4541, metadata !DIExpression()), !dbg !4542
  call void @llvm.dbg.value(metadata ptr %0, metadata !4543, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.value(metadata i64 %1, metadata !4547, metadata !DIExpression()), !dbg !4548
  %3 = icmp eq i64 %1, 0, !dbg !4550
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4550
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !4551
  call void @llvm.dbg.value(metadata ptr %5, metadata !4468, metadata !DIExpression()), !dbg !4552
  %6 = icmp eq ptr %5, null, !dbg !4554
  br i1 %6, label %7, label %8, !dbg !4555

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4556
  unreachable, !dbg !4556

8:                                                ; preds = %2
  ret ptr %5, !dbg !4557
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4558 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #31

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4559 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4563, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %1, metadata !4564, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata ptr %0, metadata !4566, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata i64 %1, metadata !4569, metadata !DIExpression()), !dbg !4570
  call void @llvm.dbg.value(metadata ptr %0, metadata !4543, metadata !DIExpression()), !dbg !4572
  call void @llvm.dbg.value(metadata i64 %1, metadata !4547, metadata !DIExpression()), !dbg !4572
  %3 = icmp eq i64 %1, 0, !dbg !4574
  %4 = select i1 %3, i64 1, i64 %1, !dbg !4574
  %5 = tail call ptr @realloc(ptr noundef %0, i64 noundef %4) #44, !dbg !4575
  call void @llvm.dbg.value(metadata ptr %5, metadata !4468, metadata !DIExpression()), !dbg !4576
  %6 = icmp eq ptr %5, null, !dbg !4578
  br i1 %6, label %7, label %8, !dbg !4579

7:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4580
  unreachable, !dbg !4580

8:                                                ; preds = %2
  ret ptr %5, !dbg !4581
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4582 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4586, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i64 %1, metadata !4587, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata i64 %2, metadata !4588, metadata !DIExpression()), !dbg !4589
  call void @llvm.dbg.value(metadata ptr %0, metadata !4590, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i64 %1, metadata !4593, metadata !DIExpression()), !dbg !4595
  call void @llvm.dbg.value(metadata i64 %2, metadata !4594, metadata !DIExpression()), !dbg !4595
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #37, !dbg !4597
  call void @llvm.dbg.value(metadata ptr %4, metadata !4468, metadata !DIExpression()), !dbg !4598
  %5 = icmp eq ptr %4, null, !dbg !4600
  br i1 %5, label %6, label %7, !dbg !4601

6:                                                ; preds = %3
  tail call void @xalloc_die() #39, !dbg !4602
  unreachable, !dbg !4602

7:                                                ; preds = %3
  ret ptr %4, !dbg !4603
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4604 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4608, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata i64 %1, metadata !4609, metadata !DIExpression()), !dbg !4610
  call void @llvm.dbg.value(metadata ptr null, metadata !4460, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata i64 %0, metadata !4463, metadata !DIExpression()), !dbg !4611
  call void @llvm.dbg.value(metadata i64 %1, metadata !4464, metadata !DIExpression()), !dbg !4611
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !4613
  call void @llvm.dbg.value(metadata ptr %3, metadata !4468, metadata !DIExpression()), !dbg !4614
  %4 = icmp eq ptr %3, null, !dbg !4616
  br i1 %4, label %5, label %6, !dbg !4617

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4618
  unreachable, !dbg !4618

6:                                                ; preds = %2
  ret ptr %3, !dbg !4619
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4620 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4624, metadata !DIExpression()), !dbg !4626
  call void @llvm.dbg.value(metadata i64 %1, metadata !4625, metadata !DIExpression()), !dbg !4626
  call void @llvm.dbg.value(metadata ptr null, metadata !4586, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata i64 %0, metadata !4587, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata i64 %1, metadata !4588, metadata !DIExpression()), !dbg !4627
  call void @llvm.dbg.value(metadata ptr null, metadata !4590, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i64 %0, metadata !4593, metadata !DIExpression()), !dbg !4629
  call void @llvm.dbg.value(metadata i64 %1, metadata !4594, metadata !DIExpression()), !dbg !4629
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #37, !dbg !4631
  call void @llvm.dbg.value(metadata ptr %3, metadata !4468, metadata !DIExpression()), !dbg !4632
  %4 = icmp eq ptr %3, null, !dbg !4634
  br i1 %4, label %5, label %6, !dbg !4635

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4636
  unreachable, !dbg !4636

6:                                                ; preds = %2
  ret ptr %3, !dbg !4637
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4638 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4642, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata ptr %1, metadata !4643, metadata !DIExpression()), !dbg !4644
  call void @llvm.dbg.value(metadata ptr %0, metadata !1036, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.value(metadata ptr %1, metadata !1037, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.value(metadata i64 1, metadata !1038, metadata !DIExpression()), !dbg !4645
  %3 = load i64, ptr %1, align 8, !dbg !4647, !tbaa !1381
  call void @llvm.dbg.value(metadata i64 %3, metadata !1039, metadata !DIExpression()), !dbg !4645
  %4 = icmp eq ptr %0, null, !dbg !4648
  br i1 %4, label %5, label %8, !dbg !4650

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4651
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4654
  br label %15, !dbg !4654

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4655
  %10 = add nuw i64 %9, 1, !dbg !4655
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4655
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4655
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4655
  call void @llvm.dbg.value(metadata i64 %13, metadata !1039, metadata !DIExpression()), !dbg !4645
  br i1 %12, label %14, label %15, !dbg !4658

14:                                               ; preds = %8
  tail call void @xalloc_die() #39, !dbg !4659
  unreachable, !dbg !4659

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4645
  call void @llvm.dbg.value(metadata i64 %16, metadata !1039, metadata !DIExpression()), !dbg !4645
  call void @llvm.dbg.value(metadata ptr %0, metadata !4460, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.value(metadata i64 %16, metadata !4463, metadata !DIExpression()), !dbg !4660
  call void @llvm.dbg.value(metadata i64 1, metadata !4464, metadata !DIExpression()), !dbg !4660
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #37, !dbg !4662
  call void @llvm.dbg.value(metadata ptr %17, metadata !4468, metadata !DIExpression()), !dbg !4663
  %18 = icmp eq ptr %17, null, !dbg !4665
  br i1 %18, label %19, label %20, !dbg !4666

19:                                               ; preds = %15
  tail call void @xalloc_die() #39, !dbg !4667
  unreachable, !dbg !4667

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !1036, metadata !DIExpression()), !dbg !4645
  store i64 %16, ptr %1, align 8, !dbg !4668, !tbaa !1381
  ret ptr %17, !dbg !4669
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1031 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1036, metadata !DIExpression()), !dbg !4670
  call void @llvm.dbg.value(metadata ptr %1, metadata !1037, metadata !DIExpression()), !dbg !4670
  call void @llvm.dbg.value(metadata i64 %2, metadata !1038, metadata !DIExpression()), !dbg !4670
  %4 = load i64, ptr %1, align 8, !dbg !4671, !tbaa !1381
  call void @llvm.dbg.value(metadata i64 %4, metadata !1039, metadata !DIExpression()), !dbg !4670
  %5 = icmp eq ptr %0, null, !dbg !4672
  br i1 %5, label %6, label %13, !dbg !4673

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4674
  br i1 %7, label %8, label %20, !dbg !4675

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4676
  call void @llvm.dbg.value(metadata i64 %9, metadata !1039, metadata !DIExpression()), !dbg !4670
  %10 = icmp ugt i64 %2, 128, !dbg !4678
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4679
  call void @llvm.dbg.value(metadata i64 %12, metadata !1039, metadata !DIExpression()), !dbg !4670
  br label %20, !dbg !4680

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4681
  %15 = add nuw i64 %14, 1, !dbg !4681
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4681
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4681
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4681
  call void @llvm.dbg.value(metadata i64 %18, metadata !1039, metadata !DIExpression()), !dbg !4670
  br i1 %17, label %19, label %20, !dbg !4682

19:                                               ; preds = %13
  tail call void @xalloc_die() #39, !dbg !4683
  unreachable, !dbg !4683

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4670
  call void @llvm.dbg.value(metadata i64 %21, metadata !1039, metadata !DIExpression()), !dbg !4670
  call void @llvm.dbg.value(metadata ptr %0, metadata !4460, metadata !DIExpression()), !dbg !4684
  call void @llvm.dbg.value(metadata i64 %21, metadata !4463, metadata !DIExpression()), !dbg !4684
  call void @llvm.dbg.value(metadata i64 %2, metadata !4464, metadata !DIExpression()), !dbg !4684
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #37, !dbg !4686
  call void @llvm.dbg.value(metadata ptr %22, metadata !4468, metadata !DIExpression()), !dbg !4687
  %23 = icmp eq ptr %22, null, !dbg !4689
  br i1 %23, label %24, label %25, !dbg !4690

24:                                               ; preds = %20
  tail call void @xalloc_die() #39, !dbg !4691
  unreachable, !dbg !4691

25:                                               ; preds = %20
  call void @llvm.dbg.value(metadata ptr %22, metadata !1036, metadata !DIExpression()), !dbg !4670
  store i64 %21, ptr %1, align 8, !dbg !4692, !tbaa !1381
  ret ptr %22, !dbg !4693
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !1043 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1048, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata ptr %1, metadata !1049, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata i64 %2, metadata !1050, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata i64 %3, metadata !1051, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata i64 %4, metadata !1052, metadata !DIExpression()), !dbg !4694
  %6 = load i64, ptr %1, align 8, !dbg !4695, !tbaa !1381
  call void @llvm.dbg.value(metadata i64 %6, metadata !1053, metadata !DIExpression()), !dbg !4694
  %7 = ashr i64 %6, 1, !dbg !4696
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4696
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4696
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4696
  call void @llvm.dbg.value(metadata i64 %10, metadata !1054, metadata !DIExpression()), !dbg !4694
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4698
  call void @llvm.dbg.value(metadata i64 %11, metadata !1054, metadata !DIExpression()), !dbg !4694
  %12 = icmp sgt i64 %3, -1, !dbg !4699
  %13 = icmp sgt i64 %11, %3
  %14 = select i1 %12, i1 %13, i1 false, !dbg !4701
  %15 = select i1 %14, i64 %3, i64 %11, !dbg !4701
  call void @llvm.dbg.value(metadata i64 %15, metadata !1054, metadata !DIExpression()), !dbg !4694
  %16 = icmp slt i64 %4, 0, !dbg !4702
  br i1 %16, label %17, label %30, !dbg !4702

17:                                               ; preds = %5
  %18 = icmp slt i64 %15, 0, !dbg !4702
  br i1 %18, label %19, label %24, !dbg !4702

19:                                               ; preds = %17
  %20 = sub i64 0, %4, !dbg !4702
  %21 = udiv i64 9223372036854775807, %20, !dbg !4702
  %22 = sub nsw i64 0, %21
  %23 = icmp slt i64 %15, %22, !dbg !4702
  br i1 %23, label %46, label %43, !dbg !4702

24:                                               ; preds = %17
  %25 = icmp eq i64 %4, -1, !dbg !4702
  br i1 %25, label %43, label %26, !dbg !4702

26:                                               ; preds = %24
  %27 = sub i64 0, %4, !dbg !4702
  %28 = udiv i64 -9223372036854775808, %27, !dbg !4702
  %29 = icmp ult i64 %28, %15, !dbg !4702
  br i1 %29, label %46, label %43, !dbg !4702

30:                                               ; preds = %5
  %31 = icmp eq i64 %4, 0, !dbg !4702
  br i1 %31, label %43, label %32, !dbg !4702

32:                                               ; preds = %30
  %33 = icmp slt i64 %15, 0, !dbg !4702
  br i1 %33, label %34, label %40, !dbg !4702

34:                                               ; preds = %32
  %35 = icmp eq i64 %15, -1, !dbg !4702
  br i1 %35, label %43, label %36, !dbg !4702

36:                                               ; preds = %34
  %37 = sub i64 0, %15, !dbg !4702
  %38 = udiv i64 -9223372036854775808, %37, !dbg !4702
  %39 = icmp ult i64 %38, %4, !dbg !4702
  br i1 %39, label %46, label %43, !dbg !4702

40:                                               ; preds = %32
  %41 = udiv i64 9223372036854775807, %4
  %42 = icmp ult i64 %41, %15, !dbg !4702
  br i1 %42, label %46, label %43, !dbg !4702

43:                                               ; preds = %34, %24, %30, %40, %36, %26, %19
  call void @llvm.dbg.value(metadata !DIArgList(i64 %15, i64 %4), metadata !1055, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4694
  %44 = mul i64 %15, %4, !dbg !4702
  call void @llvm.dbg.value(metadata i64 %44, metadata !1055, metadata !DIExpression()), !dbg !4694
  %45 = icmp slt i64 %44, 128, !dbg !4702
  br i1 %45, label %46, label %52, !dbg !4702

46:                                               ; preds = %43, %19, %26, %36, %40
  %47 = phi i64 [ 9223372036854775807, %40 ], [ 9223372036854775807, %36 ], [ 9223372036854775807, %26 ], [ 9223372036854775807, %19 ], [ 128, %43 ]
  call void @llvm.dbg.value(metadata i64 %47, metadata !1056, metadata !DIExpression()), !dbg !4694
  %48 = sdiv i64 %47, %4, !dbg !4703
  call void @llvm.dbg.value(metadata i64 %48, metadata !1054, metadata !DIExpression()), !dbg !4694
  %49 = mul i64 %48, %4
  %50 = sub i64 %47, %49
  %51 = sub nsw i64 %47, %50, !dbg !4706
  call void @llvm.dbg.value(metadata i64 %51, metadata !1055, metadata !DIExpression()), !dbg !4694
  br label %52, !dbg !4707

52:                                               ; preds = %43, %46
  %53 = phi i64 [ %48, %46 ], [ %15, %43 ], !dbg !4694
  %54 = phi i64 [ %51, %46 ], [ %44, %43 ], !dbg !4694
  call void @llvm.dbg.value(metadata i64 %54, metadata !1055, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata i64 %53, metadata !1054, metadata !DIExpression()), !dbg !4694
  %55 = icmp eq ptr %0, null, !dbg !4708
  br i1 %55, label %56, label %57, !dbg !4710

56:                                               ; preds = %52
  store i64 0, ptr %1, align 8, !dbg !4711, !tbaa !1381
  br label %57, !dbg !4712

57:                                               ; preds = %56, %52
  %58 = sub nsw i64 %53, %6, !dbg !4713
  %59 = icmp slt i64 %58, %2, !dbg !4715
  br i1 %59, label %60, label %97, !dbg !4716

60:                                               ; preds = %57
  %61 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4717
  %62 = extractvalue { i64, i1 } %61, 1, !dbg !4717
  %63 = extractvalue { i64, i1 } %61, 0, !dbg !4717
  call void @llvm.dbg.value(metadata i64 %63, metadata !1054, metadata !DIExpression()), !dbg !4694
  %64 = icmp sgt i64 %63, %3
  %65 = select i1 %12, i1 %64, i1 false
  %66 = or i1 %62, %65, !dbg !4718
  br i1 %66, label %96, label %67, !dbg !4718

67:                                               ; preds = %60
  br i1 %16, label %68, label %81, !dbg !4719

68:                                               ; preds = %67
  %69 = icmp slt i64 %63, 0, !dbg !4719
  br i1 %69, label %70, label %75, !dbg !4719

70:                                               ; preds = %68
  %71 = sub i64 0, %4, !dbg !4719
  %72 = udiv i64 9223372036854775807, %71, !dbg !4719
  %73 = sub nsw i64 0, %72
  %74 = icmp slt i64 %63, %73, !dbg !4719
  br i1 %74, label %96, label %94, !dbg !4719

75:                                               ; preds = %68
  %76 = icmp eq i64 %4, -1, !dbg !4719
  br i1 %76, label %94, label %77, !dbg !4719

77:                                               ; preds = %75
  %78 = sub i64 0, %4, !dbg !4719
  %79 = udiv i64 -9223372036854775808, %78, !dbg !4719
  %80 = icmp ult i64 %79, %63, !dbg !4719
  br i1 %80, label %96, label %94, !dbg !4719

81:                                               ; preds = %67
  %82 = icmp eq i64 %4, 0, !dbg !4719
  br i1 %82, label %94, label %83, !dbg !4719

83:                                               ; preds = %81
  %84 = icmp slt i64 %63, 0, !dbg !4719
  br i1 %84, label %85, label %91, !dbg !4719

85:                                               ; preds = %83
  %86 = icmp eq i64 %63, -1, !dbg !4719
  br i1 %86, label %94, label %87, !dbg !4719

87:                                               ; preds = %85
  %88 = sub i64 0, %63, !dbg !4719
  %89 = udiv i64 -9223372036854775808, %88, !dbg !4719
  %90 = icmp ult i64 %89, %4, !dbg !4719
  br i1 %90, label %96, label %94, !dbg !4719

91:                                               ; preds = %83
  %92 = udiv i64 9223372036854775807, %4
  %93 = icmp ult i64 %92, %63, !dbg !4719
  br i1 %93, label %96, label %94, !dbg !4719

94:                                               ; preds = %70, %77, %87, %91, %81, %75, %85
  call void @llvm.dbg.value(metadata !DIArgList(i64 %63, i64 %4), metadata !1055, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !4694
  %95 = mul i64 %63, %4, !dbg !4719
  call void @llvm.dbg.value(metadata i64 %95, metadata !1055, metadata !DIExpression()), !dbg !4694
  br label %97, !dbg !4720

96:                                               ; preds = %70, %77, %87, %91, %60
  tail call void @xalloc_die() #39, !dbg !4721
  unreachable, !dbg !4721

97:                                               ; preds = %94, %57
  %98 = phi i64 [ %63, %94 ], [ %53, %57 ], !dbg !4694
  %99 = phi i64 [ %95, %94 ], [ %54, %57 ], !dbg !4694
  call void @llvm.dbg.value(metadata i64 %99, metadata !1055, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata i64 %98, metadata !1054, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata ptr %0, metadata !4540, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata i64 %99, metadata !4541, metadata !DIExpression()), !dbg !4722
  call void @llvm.dbg.value(metadata ptr %0, metadata !4543, metadata !DIExpression()), !dbg !4724
  call void @llvm.dbg.value(metadata i64 %99, metadata !4547, metadata !DIExpression()), !dbg !4724
  %100 = icmp eq i64 %99, 0, !dbg !4726
  %101 = select i1 %100, i64 1, i64 %99, !dbg !4726
  %102 = tail call ptr @realloc(ptr noundef %0, i64 noundef %101) #44, !dbg !4727
  call void @llvm.dbg.value(metadata ptr %102, metadata !4468, metadata !DIExpression()), !dbg !4728
  %103 = icmp eq ptr %102, null, !dbg !4730
  br i1 %103, label %104, label %105, !dbg !4731

104:                                              ; preds = %97
  tail call void @xalloc_die() #39, !dbg !4732
  unreachable, !dbg !4732

105:                                              ; preds = %97
  call void @llvm.dbg.value(metadata ptr %102, metadata !1048, metadata !DIExpression()), !dbg !4694
  store i64 %98, ptr %1, align 8, !dbg !4733, !tbaa !1381
  ret ptr %102, !dbg !4734
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4735 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4737, metadata !DIExpression()), !dbg !4738
  call void @llvm.dbg.value(metadata i64 %0, metadata !4739, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.value(metadata i64 1, metadata !4742, metadata !DIExpression()), !dbg !4743
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !4745
  call void @llvm.dbg.value(metadata ptr %2, metadata !4468, metadata !DIExpression()), !dbg !4746
  %3 = icmp eq ptr %2, null, !dbg !4748
  br i1 %3, label %4, label %5, !dbg !4749

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4750
  unreachable, !dbg !4750

5:                                                ; preds = %1
  ret ptr %2, !dbg !4751
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4752 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #33

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4740 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4739, metadata !DIExpression()), !dbg !4753
  call void @llvm.dbg.value(metadata i64 %1, metadata !4742, metadata !DIExpression()), !dbg !4753
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !4754
  call void @llvm.dbg.value(metadata ptr %3, metadata !4468, metadata !DIExpression()), !dbg !4755
  %4 = icmp eq ptr %3, null, !dbg !4757
  br i1 %4, label %5, label %6, !dbg !4758

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4759
  unreachable, !dbg !4759

6:                                                ; preds = %2
  ret ptr %3, !dbg !4760
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #28 !dbg !4761 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4763, metadata !DIExpression()), !dbg !4764
  call void @llvm.dbg.value(metadata i64 %0, metadata !4765, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.value(metadata i64 1, metadata !4768, metadata !DIExpression()), !dbg !4769
  call void @llvm.dbg.value(metadata i64 %0, metadata !4771, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata i64 1, metadata !4774, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata i64 %0, metadata !4771, metadata !DIExpression()), !dbg !4775
  call void @llvm.dbg.value(metadata i64 1, metadata !4774, metadata !DIExpression()), !dbg !4775
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #45, !dbg !4777
  call void @llvm.dbg.value(metadata ptr %2, metadata !4468, metadata !DIExpression()), !dbg !4778
  %3 = icmp eq ptr %2, null, !dbg !4780
  br i1 %3, label %4, label %5, !dbg !4781

4:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4782
  unreachable, !dbg !4782

5:                                                ; preds = %1
  ret ptr %2, !dbg !4783
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #32 !dbg !4766 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !4765, metadata !DIExpression()), !dbg !4784
  call void @llvm.dbg.value(metadata i64 %1, metadata !4768, metadata !DIExpression()), !dbg !4784
  call void @llvm.dbg.value(metadata i64 %0, metadata !4771, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata i64 %1, metadata !4774, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata i64 %0, metadata !4771, metadata !DIExpression()), !dbg !4785
  call void @llvm.dbg.value(metadata i64 %1, metadata !4774, metadata !DIExpression()), !dbg !4785
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #45, !dbg !4787
  call void @llvm.dbg.value(metadata ptr %3, metadata !4468, metadata !DIExpression()), !dbg !4788
  %4 = icmp eq ptr %3, null, !dbg !4790
  br i1 %4, label %5, label %6, !dbg !4791

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4792
  unreachable, !dbg !4792

6:                                                ; preds = %2
  ret ptr %3, !dbg !4793
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4794 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4798, metadata !DIExpression()), !dbg !4800
  call void @llvm.dbg.value(metadata i64 %1, metadata !4799, metadata !DIExpression()), !dbg !4800
  call void @llvm.dbg.value(metadata i64 %1, metadata !4492, metadata !DIExpression()), !dbg !4801
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #42, !dbg !4803
  call void @llvm.dbg.value(metadata ptr %3, metadata !4468, metadata !DIExpression()), !dbg !4804
  %4 = icmp eq ptr %3, null, !dbg !4806
  br i1 %4, label %5, label %6, !dbg !4807

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4808
  unreachable, !dbg !4808

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4809, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata ptr %0, metadata !4812, metadata !DIExpression()), !dbg !4814
  call void @llvm.dbg.value(metadata i64 %1, metadata !4813, metadata !DIExpression()), !dbg !4814
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4816
  ret ptr %3, !dbg !4817
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #30 !dbg !4818 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4822, metadata !DIExpression()), !dbg !4824
  call void @llvm.dbg.value(metadata i64 %1, metadata !4823, metadata !DIExpression()), !dbg !4824
  call void @llvm.dbg.value(metadata i64 %1, metadata !4506, metadata !DIExpression()), !dbg !4825
  call void @llvm.dbg.value(metadata i64 %1, metadata !4508, metadata !DIExpression()), !dbg !4827
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #42, !dbg !4829
  call void @llvm.dbg.value(metadata ptr %3, metadata !4468, metadata !DIExpression()), !dbg !4830
  %4 = icmp eq ptr %3, null, !dbg !4832
  br i1 %4, label %5, label %6, !dbg !4833

5:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4834
  unreachable, !dbg !4834

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4809, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata ptr %0, metadata !4812, metadata !DIExpression()), !dbg !4835
  call void @llvm.dbg.value(metadata i64 %1, metadata !4813, metadata !DIExpression()), !dbg !4835
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4837
  ret ptr %3, !dbg !4838
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4839 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4843, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.value(metadata i64 %1, metadata !4844, metadata !DIExpression()), !dbg !4846
  %3 = add nsw i64 %1, 1, !dbg !4847
  call void @llvm.dbg.value(metadata i64 %3, metadata !4506, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.value(metadata i64 %3, metadata !4508, metadata !DIExpression()), !dbg !4850
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #42, !dbg !4852
  call void @llvm.dbg.value(metadata ptr %4, metadata !4468, metadata !DIExpression()), !dbg !4853
  %5 = icmp eq ptr %4, null, !dbg !4855
  br i1 %5, label %6, label %7, !dbg !4856

6:                                                ; preds = %2
  tail call void @xalloc_die() #39, !dbg !4857
  unreachable, !dbg !4857

7:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %4, metadata !4845, metadata !DIExpression()), !dbg !4846
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4858
  store i8 0, ptr %8, align 1, !dbg !4859, !tbaa !1171
  call void @llvm.dbg.value(metadata ptr %4, metadata !4809, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.value(metadata ptr %0, metadata !4812, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.value(metadata i64 %1, metadata !4813, metadata !DIExpression()), !dbg !4860
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #37, !dbg !4862
  ret ptr %4, !dbg !4863
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4864 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !4866, metadata !DIExpression()), !dbg !4867
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #38, !dbg !4868
  %3 = add i64 %2, 1, !dbg !4869
  call void @llvm.dbg.value(metadata ptr %0, metadata !4798, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata i64 %3, metadata !4799, metadata !DIExpression()), !dbg !4870
  call void @llvm.dbg.value(metadata i64 %3, metadata !4492, metadata !DIExpression()), !dbg !4872
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #42, !dbg !4874
  call void @llvm.dbg.value(metadata ptr %4, metadata !4468, metadata !DIExpression()), !dbg !4875
  %5 = icmp eq ptr %4, null, !dbg !4877
  br i1 %5, label %6, label %7, !dbg !4878

6:                                                ; preds = %1
  tail call void @xalloc_die() #39, !dbg !4879
  unreachable, !dbg !4879

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4809, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata ptr %0, metadata !4812, metadata !DIExpression()), !dbg !4880
  call void @llvm.dbg.value(metadata i64 %3, metadata !4813, metadata !DIExpression()), !dbg !4880
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #37, !dbg !4882
  ret ptr %4, !dbg !4883
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4884 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4889, !tbaa !1162
  call void @llvm.dbg.value(metadata i32 %1, metadata !4886, metadata !DIExpression()), !dbg !4890
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.166, ptr noundef nonnull @.str.2.167, i32 noundef 5) #37, !dbg !4889
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.168, ptr noundef %2) #37, !dbg !4889
  %3 = icmp eq i32 %1, 0, !dbg !4889
  tail call void @llvm.assume(i1 %3), !dbg !4889
  tail call void @abort() #39, !dbg !4891
  unreachable, !dbg !4891
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4892 {
  %3 = alloca [81 x i8], align 1
  call void @llvm.dbg.value(metadata ptr %0, metadata !4930, metadata !DIExpression()), !dbg !4954
  call void @llvm.dbg.value(metadata ptr %1, metadata !4931, metadata !DIExpression()), !dbg !4954
  call void @llvm.dbg.value(metadata i32 0, metadata !4932, metadata !DIExpression()), !dbg !4954
  call void @llvm.dbg.value(metadata i32 0, metadata !4933, metadata !DIExpression()), !dbg !4954
  call void @llvm.dbg.value(metadata i8 0, metadata !4934, metadata !DIExpression()), !dbg !4954
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #37, !dbg !4955
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4935, metadata !DIExpression()), !dbg !4956
  call void @llvm.dbg.value(metadata ptr %1, metadata !4939, metadata !DIExpression()), !dbg !4957
  call void @llvm.dbg.value(metadata ptr %3, metadata !4941, metadata !DIExpression()), !dbg !4957
  br label %4, !dbg !4958

4:                                                ; preds = %43, %2
  %5 = phi i1 [ false, %2 ], [ %44, %43 ]
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4957
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4954
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4959
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4954
  call void @llvm.dbg.value(metadata i32 %9, metadata !4932, metadata !DIExpression()), !dbg !4954
  call void @llvm.dbg.value(metadata i32 %8, metadata !4933, metadata !DIExpression()), !dbg !4954
  call void @llvm.dbg.value(metadata ptr %10, metadata !4941, metadata !DIExpression()), !dbg !4957
  call void @llvm.dbg.value(metadata ptr %6, metadata !4939, metadata !DIExpression()), !dbg !4957
  call void @llvm.dbg.value(metadata i8 poison, metadata !4934, metadata !DIExpression()), !dbg !4954
  %11 = load i8, ptr %6, align 1, !dbg !4960, !tbaa !1171
  switch i8 %11, label %38 [
    i8 0, label %49
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4961

12:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 0, metadata !4932, metadata !DIExpression()), !dbg !4954
  %13 = icmp slt i64 %7, 80, !dbg !4962
  br i1 %13, label %14, label %43, !dbg !4965

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4966
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4941, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4957
  store i8 114, ptr %10, align 1, !dbg !4967, !tbaa !1171
  br label %43, !dbg !4968

16:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !4932, metadata !DIExpression()), !dbg !4954
  %17 = or i32 %8, 576, !dbg !4969
  call void @llvm.dbg.value(metadata i32 %17, metadata !4933, metadata !DIExpression()), !dbg !4954
  %18 = icmp slt i64 %7, 80, !dbg !4970
  br i1 %18, label %19, label %43, !dbg !4972

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4973
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4941, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4957
  store i8 119, ptr %10, align 1, !dbg !4974, !tbaa !1171
  br label %43, !dbg !4975

21:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 1, metadata !4932, metadata !DIExpression()), !dbg !4954
  %22 = or i32 %8, 1088, !dbg !4976
  call void @llvm.dbg.value(metadata i32 %22, metadata !4933, metadata !DIExpression()), !dbg !4954
  %23 = icmp slt i64 %7, 80, !dbg !4977
  br i1 %23, label %24, label %43, !dbg !4979

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4980
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4941, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4957
  store i8 97, ptr %10, align 1, !dbg !4981, !tbaa !1171
  br label %43, !dbg !4982

26:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 %8, metadata !4933, metadata !DIExpression()), !dbg !4954
  %27 = icmp slt i64 %7, 80, !dbg !4983
  br i1 %27, label %28, label %43, !dbg !4985

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !4986
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4941, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4957
  store i8 98, ptr %10, align 1, !dbg !4987, !tbaa !1171
  br label %43, !dbg !4988

30:                                               ; preds = %4
  call void @llvm.dbg.value(metadata i32 2, metadata !4932, metadata !DIExpression()), !dbg !4954
  %31 = icmp slt i64 %7, 80, !dbg !4989
  br i1 %31, label %32, label %43, !dbg !4991

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !4992
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4941, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4957
  store i8 43, ptr %10, align 1, !dbg !4993, !tbaa !1171
  br label %43, !dbg !4994

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !4995
  call void @llvm.dbg.value(metadata i32 %35, metadata !4933, metadata !DIExpression()), !dbg !4954
  call void @llvm.dbg.value(metadata i8 1, metadata !4934, metadata !DIExpression()), !dbg !4954
  br label %43, !dbg !4996

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !4997
  call void @llvm.dbg.value(metadata i32 %37, metadata !4933, metadata !DIExpression()), !dbg !4954
  call void @llvm.dbg.value(metadata i8 1, metadata !4934, metadata !DIExpression()), !dbg !4954
  br label %43, !dbg !4998

38:                                               ; preds = %4
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %6) #38, !dbg !4999
  call void @llvm.dbg.value(metadata i64 %39, metadata !4942, metadata !DIExpression()), !dbg !5000
  %40 = sub nsw i64 80, %7, !dbg !5001
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !5003
  call void @llvm.dbg.value(metadata i64 %41, metadata !4942, metadata !DIExpression()), !dbg !5000
  call void @llvm.dbg.value(metadata ptr %10, metadata !5004, metadata !DIExpression()), !dbg !5009
  call void @llvm.dbg.value(metadata ptr %6, metadata !5007, metadata !DIExpression()), !dbg !5009
  call void @llvm.dbg.value(metadata i64 %41, metadata !5008, metadata !DIExpression()), !dbg !5009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %10, ptr noundef nonnull align 1 %6, i64 noundef %41, i1 noundef false) #37, !dbg !5011
  %42 = getelementptr inbounds i8, ptr %10, i64 %41, !dbg !5012
  call void @llvm.dbg.value(metadata ptr %42, metadata !4941, metadata !DIExpression()), !dbg !4957
  br label %49, !dbg !5013

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i1 [ true, %36 ], [ true, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ]
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4954
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4954
  call void @llvm.dbg.value(metadata i32 %47, metadata !4932, metadata !DIExpression()), !dbg !4954
  call void @llvm.dbg.value(metadata i32 %46, metadata !4933, metadata !DIExpression()), !dbg !4954
  call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4941, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4957
  call void @llvm.dbg.value(metadata i8 poison, metadata !4934, metadata !DIExpression()), !dbg !4954
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !5014
  call void @llvm.dbg.value(metadata ptr %48, metadata !4939, metadata !DIExpression()), !dbg !4957
  br label %4, !dbg !5015, !llvm.loop !5016

49:                                               ; preds = %4, %38
  %50 = phi ptr [ %42, %38 ], [ %10, %4 ], !dbg !4957
  call void @llvm.dbg.value(metadata ptr %50, metadata !4941, metadata !DIExpression()), !dbg !4957
  store i8 0, ptr %50, align 1, !dbg !5018, !tbaa !1171
  br i1 %5, label %51, label %62, !dbg !5019

51:                                               ; preds = %49
  %52 = or i32 %9, %8, !dbg !5020
  %53 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %52, i32 noundef 438) #37, !dbg !5021
  call void @llvm.dbg.value(metadata i32 %53, metadata !4947, metadata !DIExpression()), !dbg !5022
  %54 = icmp slt i32 %53, 0, !dbg !5023
  br i1 %54, label %64, label %55, !dbg !5025

55:                                               ; preds = %51
  %56 = call noalias ptr @fdopen(i32 noundef %53, ptr noundef nonnull %3) #37, !dbg !5026
  call void @llvm.dbg.value(metadata ptr %56, metadata !4950, metadata !DIExpression()), !dbg !5022
  %57 = icmp eq ptr %56, null, !dbg !5027
  br i1 %57, label %58, label %64, !dbg !5028

58:                                               ; preds = %55
  %59 = tail call ptr @__errno_location() #40, !dbg !5029
  %60 = load i32, ptr %59, align 4, !dbg !5029, !tbaa !1162
  call void @llvm.dbg.value(metadata i32 %60, metadata !4951, metadata !DIExpression()), !dbg !5030
  %61 = tail call i32 @close(i32 noundef %53) #37, !dbg !5031
  store i32 %60, ptr %59, align 4, !dbg !5032, !tbaa !1162
  br label %64, !dbg !5033

62:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !5034, metadata !DIExpression()), !dbg !5038
  call void @llvm.dbg.value(metadata ptr %1, metadata !5037, metadata !DIExpression()), !dbg !5038
  %63 = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !5040
  br label %64, !dbg !5041

64:                                               ; preds = %51, %58, %55, %62
  %65 = phi ptr [ %63, %62 ], [ null, %51 ], [ null, %58 ], [ %56, %55 ], !dbg !4954
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #37, !dbg !5042
  ret ptr %65, !dbg !5042
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !5043 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #34

; Function Attrs: nofree nounwind
declare !dbg !5046 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !5049 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !5050 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !5053 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5091, metadata !DIExpression()), !dbg !5096
  %2 = tail call i64 @__fpending(ptr noundef %0) #37, !dbg !5097
  call void @llvm.dbg.value(metadata i1 poison, metadata !5092, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5096
  call void @llvm.dbg.value(metadata ptr %0, metadata !5098, metadata !DIExpression()), !dbg !5101
  %3 = load i32, ptr %0, align 8, !dbg !5103, !tbaa !1415
  %4 = and i32 %3, 32, !dbg !5104
  %5 = icmp eq i32 %4, 0, !dbg !5104
  call void @llvm.dbg.value(metadata i1 %5, metadata !5094, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5096
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #37, !dbg !5105
  %7 = icmp eq i32 %6, 0, !dbg !5106
  call void @llvm.dbg.value(metadata i1 %7, metadata !5095, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5096
  br i1 %5, label %8, label %18, !dbg !5107

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5109
  call void @llvm.dbg.value(metadata i1 %9, metadata !5092, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5096
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5110
  %11 = xor i1 %7, true, !dbg !5110
  %12 = sext i1 %11 to i32, !dbg !5110
  br i1 %10, label %21, label %13, !dbg !5110

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #40, !dbg !5111
  %15 = load i32, ptr %14, align 4, !dbg !5111, !tbaa !1162
  %16 = icmp ne i32 %15, 9, !dbg !5112
  %17 = sext i1 %16 to i32, !dbg !5113
  br label %21, !dbg !5113

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5114

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #40, !dbg !5116
  store i32 0, ptr %20, align 4, !dbg !5118, !tbaa !1162
  br label %21, !dbg !5116

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5096
  ret i32 %22, !dbg !5119
}

; Function Attrs: nounwind
declare !dbg !5120 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5123 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5128, metadata !DIExpression()), !dbg !5133
  call void @llvm.dbg.value(metadata ptr %1, metadata !5129, metadata !DIExpression()), !dbg !5133
  call void @llvm.dbg.value(metadata i64 %2, metadata !5130, metadata !DIExpression()), !dbg !5133
  call void @llvm.dbg.value(metadata ptr %3, metadata !5131, metadata !DIExpression()), !dbg !5133
  %5 = icmp eq ptr %1, null, !dbg !5134
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5136
  %7 = select i1 %5, ptr @.str.175, ptr %1, !dbg !5136
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5136
  call void @llvm.dbg.value(metadata i64 %8, metadata !5130, metadata !DIExpression()), !dbg !5133
  call void @llvm.dbg.value(metadata ptr %7, metadata !5129, metadata !DIExpression()), !dbg !5133
  call void @llvm.dbg.value(metadata ptr %6, metadata !5128, metadata !DIExpression()), !dbg !5133
  %9 = icmp eq ptr %3, null, !dbg !5137
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5139
  call void @llvm.dbg.value(metadata ptr %10, metadata !5131, metadata !DIExpression()), !dbg !5133
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %10) #37, !dbg !5140
  call void @llvm.dbg.value(metadata i64 %11, metadata !5132, metadata !DIExpression()), !dbg !5133
  %12 = icmp ult i64 %11, -3, !dbg !5141
  br i1 %12, label %13, label %17, !dbg !5143

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef %10) #38, !dbg !5144
  %15 = icmp eq i32 %14, 0, !dbg !5144
  br i1 %15, label %16, label %29, !dbg !5145

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5146, metadata !DIExpression()), !dbg !5151
  call void @llvm.dbg.value(metadata ptr %10, metadata !5153, metadata !DIExpression()), !dbg !5158
  call void @llvm.dbg.value(metadata i32 0, metadata !5156, metadata !DIExpression()), !dbg !5158
  call void @llvm.dbg.value(metadata i64 8, metadata !5157, metadata !DIExpression()), !dbg !5158
  store i64 0, ptr %10, align 1, !dbg !5160
  br label %29, !dbg !5161

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5162
  br i1 %18, label %19, label %20, !dbg !5164

19:                                               ; preds = %17
  tail call void @abort() #39, !dbg !5165
  unreachable, !dbg !5165

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5166

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #37, !dbg !5168
  br i1 %23, label %29, label %24, !dbg !5169

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5170
  br i1 %25, label %29, label %26, !dbg !5173

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5174, !tbaa !1171
  %28 = zext i8 %27 to i32, !dbg !5175
  store i32 %28, ptr %6, align 4, !dbg !5176, !tbaa !1162
  br label %29, !dbg !5177

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5133
  ret i64 %30, !dbg !5178
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5179 i32 @mbsinit(ptr noundef) local_unnamed_addr #35

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #36 !dbg !5184 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !5186, metadata !DIExpression()), !dbg !5190
  call void @llvm.dbg.value(metadata i64 %1, metadata !5187, metadata !DIExpression()), !dbg !5190
  call void @llvm.dbg.value(metadata i64 %2, metadata !5188, metadata !DIExpression()), !dbg !5190
  %4 = icmp eq i64 %2, 0, !dbg !5191
  br i1 %4, label %8, label %5, !dbg !5191

5:                                                ; preds = %3
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %1), !dbg !5191
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !5191
  br i1 %7, label %13, label %8, !dbg !5191

8:                                                ; preds = %3, %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5189, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5190
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5189, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5190
  %9 = mul i64 %2, %1, !dbg !5191
  call void @llvm.dbg.value(metadata i64 %9, metadata !5189, metadata !DIExpression()), !dbg !5190
  call void @llvm.dbg.value(metadata ptr %0, metadata !5193, metadata !DIExpression()), !dbg !5197
  call void @llvm.dbg.value(metadata i64 %9, metadata !5196, metadata !DIExpression()), !dbg !5197
  %10 = icmp eq i64 %9, 0, !dbg !5199
  %11 = select i1 %10, i64 1, i64 %9, !dbg !5199
  %12 = tail call ptr @realloc(ptr noundef %0, i64 noundef %11) #44, !dbg !5200
  br label %15, !dbg !5201

13:                                               ; preds = %5
  call void @llvm.dbg.value(metadata !DIArgList(i64 %1, i64 %2), metadata !5189, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_mul, DW_OP_stack_value)), !dbg !5190
  %14 = tail call ptr @__errno_location() #40, !dbg !5202
  store i32 12, ptr %14, align 4, !dbg !5204, !tbaa !1162
  br label %15, !dbg !5205

15:                                               ; preds = %8, %13
  %16 = phi ptr [ null, %13 ], [ %12, %8 ], !dbg !5190
  ret ptr %16, !dbg !5206
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5207 {
  %2 = alloca [257 x i8], align 1
  call void @llvm.dbg.value(metadata i32 %0, metadata !5209, metadata !DIExpression()), !dbg !5214
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #37, !dbg !5215
  call void @llvm.dbg.declare(metadata ptr %2, metadata !5210, metadata !DIExpression()), !dbg !5216
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #37, !dbg !5217
  %4 = icmp eq i32 %3, 0, !dbg !5217
  br i1 %4, label %5, label %12, !dbg !5219

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5220, metadata !DIExpression()), !dbg !5224
  call void @llvm.dbg.value(metadata ptr @.str.180, metadata !5223, metadata !DIExpression()), !dbg !5224
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.180, i64 2), !dbg !5227
  %7 = icmp eq i32 %6, 0, !dbg !5228
  br i1 %7, label %11, label %8, !dbg !5229

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5220, metadata !DIExpression()), !dbg !5230
  call void @llvm.dbg.value(metadata ptr @.str.1.181, metadata !5223, metadata !DIExpression()), !dbg !5230
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.181, i64 6), !dbg !5232
  %10 = icmp eq i32 %9, 0, !dbg !5233
  br i1 %10, label %11, label %12, !dbg !5234

11:                                               ; preds = %8, %5
  br label %12, !dbg !5235

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5214
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #37, !dbg !5236
  ret i1 %13, !dbg !5236
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5237 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5241, metadata !DIExpression()), !dbg !5244
  call void @llvm.dbg.value(metadata ptr %1, metadata !5242, metadata !DIExpression()), !dbg !5244
  call void @llvm.dbg.value(metadata i64 %2, metadata !5243, metadata !DIExpression()), !dbg !5244
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #37, !dbg !5245
  ret i32 %4, !dbg !5246
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5247 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5251, metadata !DIExpression()), !dbg !5252
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #37, !dbg !5253
  ret ptr %2, !dbg !5254
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5255 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5257, metadata !DIExpression()), !dbg !5259
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !5260
  call void @llvm.dbg.value(metadata ptr %2, metadata !5258, metadata !DIExpression()), !dbg !5259
  ret ptr %2, !dbg !5261
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5262 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !5264, metadata !DIExpression()), !dbg !5271
  call void @llvm.dbg.value(metadata ptr %1, metadata !5265, metadata !DIExpression()), !dbg !5271
  call void @llvm.dbg.value(metadata i64 %2, metadata !5266, metadata !DIExpression()), !dbg !5271
  call void @llvm.dbg.value(metadata i32 %0, metadata !5257, metadata !DIExpression()), !dbg !5272
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #37, !dbg !5274
  call void @llvm.dbg.value(metadata ptr %4, metadata !5258, metadata !DIExpression()), !dbg !5272
  call void @llvm.dbg.value(metadata ptr %4, metadata !5267, metadata !DIExpression()), !dbg !5271
  %5 = icmp eq ptr %4, null, !dbg !5275
  br i1 %5, label %6, label %9, !dbg !5276

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5277
  br i1 %7, label %19, label %8, !dbg !5280

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5281, !tbaa !1171
  br label %19, !dbg !5282

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #38, !dbg !5283
  call void @llvm.dbg.value(metadata i64 %10, metadata !5268, metadata !DIExpression()), !dbg !5284
  %11 = icmp ult i64 %10, %2, !dbg !5285
  br i1 %11, label %12, label %14, !dbg !5287

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5288
  call void @llvm.dbg.value(metadata ptr %1, metadata !5290, metadata !DIExpression()), !dbg !5295
  call void @llvm.dbg.value(metadata ptr %4, metadata !5293, metadata !DIExpression()), !dbg !5295
  call void @llvm.dbg.value(metadata i64 %13, metadata !5294, metadata !DIExpression()), !dbg !5295
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %13, i1 noundef false) #37, !dbg !5297
  br label %19, !dbg !5298

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5299
  br i1 %15, label %19, label %16, !dbg !5302

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5303
  call void @llvm.dbg.value(metadata ptr %1, metadata !5290, metadata !DIExpression()), !dbg !5305
  call void @llvm.dbg.value(metadata ptr %4, metadata !5293, metadata !DIExpression()), !dbg !5305
  call void @llvm.dbg.value(metadata i64 %17, metadata !5294, metadata !DIExpression()), !dbg !5305
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #37, !dbg !5307
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5308
  store i8 0, ptr %18, align 1, !dbg !5309, !tbaa !1171
  br label %19, !dbg !5310

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5311
  ret i32 %20, !dbg !5312
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
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
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
attributes #26 = { inlinehint nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #27 = { nounwind allocsize(1,2) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #28 = { nounwind allocsize(0) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #29 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #30 = { nounwind allocsize(1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #31 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #32 = { nounwind allocsize(0,1) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #33 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #34 = { nofree "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #35 = { mustprogress nofree nounwind willreturn memory(read) "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #36 = { mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #37 = { nounwind }
attributes #38 = { nounwind willreturn memory(read) }
attributes #39 = { noreturn nounwind }
attributes #40 = { nounwind willreturn memory(none) }
attributes #41 = { noreturn }
attributes #42 = { nounwind allocsize(0) }
attributes #43 = { cold }
attributes #44 = { nounwind allocsize(1) }
attributes #45 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!69, !441, !683, !687, !702, !973, !1007, !1010, !1012, !1015, !1017, !1019, !754, !768, !815, !1021, !967, !1027, !1058, !1060, !1062, !989, !1064, !1067, !1069, !1071}
!llvm.ident = !{!1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073, !1073}
!llvm.module.flags = !{!1074, !1075, !1076, !1077, !1078, !1079, !1080}

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
!68 = distinct !DIGlobalVariable(name: "longopts", scope: !69, file: !2, line: 62, type: !429, isLocal: true, isDefinition: true)
!69 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !70, retainedTypes: !106, globals: !118, splitDebugInlining: false, nameTableKind: None)
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
!170 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !173)
!172 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
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
!195 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
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
!432 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
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
!701 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !702, file: !703, line: 66, type: !751, isLocal: false, isDefinition: true)
!702 = distinct !DICompileUnit(language: DW_LANG_C11, file: !703, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !704, globals: !705, splitDebugInlining: false, nameTableKind: None)
!703 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!704 = !{!108, !117}
!705 = !{!706, !708, !733, !735, !737, !739, !700, !741, !743, !745, !747, !749}
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(scope: null, file: !703, line: 272, type: !227, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(name: "old_file_name", scope: !710, file: !703, line: 304, type: !115, isLocal: true, isDefinition: true)
!710 = distinct !DISubprogram(name: "verror_at_line", scope: !703, file: !703, line: 298, type: !711, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !726)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !77, !77, !115, !72, !115, !713}
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !714, line: 52, baseType: !715)
!714 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!715 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !716, line: 14, baseType: !717)
!716 = !DIFile(filename: "/usr/lib/llvm-16/lib/clang/16/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !718, baseType: !719)
!718 = !DIFile(filename: "lib/error.c", directory: "/src")
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !720)
!720 = !{!721, !722, !723, !724, !725}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !719, file: !718, baseType: !108, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !719, file: !718, baseType: !108, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !719, file: !718, baseType: !108, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !719, file: !718, baseType: !77, size: 32, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !719, file: !718, baseType: !77, size: 32, offset: 224)
!726 = !{!727, !728, !729, !730, !731, !732}
!727 = !DILocalVariable(name: "status", arg: 1, scope: !710, file: !703, line: 298, type: !77)
!728 = !DILocalVariable(name: "errnum", arg: 2, scope: !710, file: !703, line: 298, type: !77)
!729 = !DILocalVariable(name: "file_name", arg: 3, scope: !710, file: !703, line: 298, type: !115)
!730 = !DILocalVariable(name: "line_number", arg: 4, scope: !710, file: !703, line: 298, type: !72)
!731 = !DILocalVariable(name: "message", arg: 5, scope: !710, file: !703, line: 298, type: !115)
!732 = !DILocalVariable(name: "args", arg: 6, scope: !710, file: !703, line: 298, type: !713)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(name: "old_line_number", scope: !710, file: !703, line: 305, type: !72, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !703, line: 338, type: !234, isLocal: true, isDefinition: true)
!737 = !DIGlobalVariableExpression(var: !738, expr: !DIExpression())
!738 = distinct !DIGlobalVariable(scope: null, file: !703, line: 346, type: !269, isLocal: true, isDefinition: true)
!739 = !DIGlobalVariableExpression(var: !740, expr: !DIExpression())
!740 = distinct !DIGlobalVariable(scope: null, file: !703, line: 346, type: !244, isLocal: true, isDefinition: true)
!741 = !DIGlobalVariableExpression(var: !742, expr: !DIExpression())
!742 = distinct !DIGlobalVariable(name: "error_message_count", scope: !702, file: !703, line: 69, type: !72, isLocal: false, isDefinition: true)
!743 = !DIGlobalVariableExpression(var: !744, expr: !DIExpression())
!744 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !702, file: !703, line: 295, type: !77, isLocal: false, isDefinition: true)
!745 = !DIGlobalVariableExpression(var: !746, expr: !DIExpression())
!746 = distinct !DIGlobalVariable(scope: null, file: !703, line: 208, type: !264, isLocal: true, isDefinition: true)
!747 = !DIGlobalVariableExpression(var: !748, expr: !DIExpression())
!748 = distinct !DIGlobalVariable(scope: null, file: !703, line: 208, type: !570, isLocal: true, isDefinition: true)
!749 = !DIGlobalVariableExpression(var: !750, expr: !DIExpression())
!750 = distinct !DIGlobalVariable(scope: null, file: !703, line: 214, type: !227, isLocal: true, isDefinition: true)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(name: "program_name", scope: !754, file: !755, line: 31, type: !115, isLocal: false, isDefinition: true)
!754 = distinct !DICompileUnit(language: DW_LANG_C11, file: !755, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !756, globals: !757, splitDebugInlining: false, nameTableKind: None)
!755 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!756 = !{!107}
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
!767 = !{!115, !115, !115}
!768 = distinct !DICompileUnit(language: DW_LANG_C11, file: !765, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !769, splitDebugInlining: false, nameTableKind: None)
!769 = !{!762}
!770 = !{!771, !772, !773, !774, !775}
!771 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !764, file: !765, line: 38, type: !115)
!772 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !764, file: !765, line: 38, type: !115)
!773 = !DILocalVariable(name: "translation", scope: !764, file: !765, line: 40, type: !115)
!774 = !DILocalVariable(name: "w", scope: !764, file: !765, line: 47, type: !380)
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
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 16, elements: !245)
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
!814 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !815, file: !791, line: 76, type: !887, isLocal: false, isDefinition: true)
!815 = distinct !DICompileUnit(language: DW_LANG_C11, file: !791, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !816, retainedTypes: !822, globals: !823, splitDebugInlining: false, nameTableKind: None)
!816 = !{!444, !817, !81}
!817 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !445, line: 254, baseType: !72, size: 32, elements: !818)
!818 = !{!819, !820, !821}
!819 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!820 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!821 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!822 = !{!77, !112, !113}
!823 = !{!789, !792, !794, !799, !801, !803, !805, !807, !809, !811, !813, !824, !828, !838, !840, !845, !847, !849, !851, !853, !876, !883, !885}
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !815, file: !791, line: 92, type: !826, isLocal: false, isDefinition: true)
!826 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 320, elements: !55)
!827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !444)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !815, file: !791, line: 1040, type: !830, isLocal: false, isDefinition: true)
!830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !791, line: 56, size: 448, elements: !831)
!831 = !{!832, !833, !834, !836, !837}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !830, file: !791, line: 59, baseType: !444, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !830, file: !791, line: 62, baseType: !77, size: 32, offset: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !830, file: !791, line: 66, baseType: !835, size: 256, offset: 64)
!835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 256, elements: !270)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !830, file: !791, line: 69, baseType: !115, size: 64, offset: 320)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !830, file: !791, line: 72, baseType: !115, size: 64, offset: 384)
!838 = !DIGlobalVariableExpression(var: !839, expr: !DIExpression())
!839 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !815, file: !791, line: 107, type: !830, isLocal: true, isDefinition: true)
!840 = !DIGlobalVariableExpression(var: !841, expr: !DIExpression())
!841 = distinct !DIGlobalVariable(name: "slot0", scope: !815, file: !791, line: 831, type: !842, isLocal: true, isDefinition: true)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !843)
!843 = !{!844}
!844 = !DISubrange(count: 256)
!845 = !DIGlobalVariableExpression(var: !846, expr: !DIExpression())
!846 = distinct !DIGlobalVariable(scope: null, file: !791, line: 321, type: !244, isLocal: true, isDefinition: true)
!847 = !DIGlobalVariableExpression(var: !848, expr: !DIExpression())
!848 = distinct !DIGlobalVariable(scope: null, file: !791, line: 357, type: !244, isLocal: true, isDefinition: true)
!849 = !DIGlobalVariableExpression(var: !850, expr: !DIExpression())
!850 = distinct !DIGlobalVariable(scope: null, file: !791, line: 358, type: !244, isLocal: true, isDefinition: true)
!851 = !DIGlobalVariableExpression(var: !852, expr: !DIExpression())
!852 = distinct !DIGlobalVariable(scope: null, file: !791, line: 199, type: !264, isLocal: true, isDefinition: true)
!853 = !DIGlobalVariableExpression(var: !854, expr: !DIExpression())
!854 = distinct !DIGlobalVariable(name: "quote", scope: !855, file: !791, line: 228, type: !874, isLocal: true, isDefinition: true)
!855 = distinct !DISubprogram(name: "gettext_quote", scope: !791, file: !791, line: 197, type: !856, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !858)
!856 = !DISubroutineType(types: !857)
!857 = !{!115, !115, !444}
!858 = !{!859, !860, !861, !862, !863}
!859 = !DILocalVariable(name: "msgid", arg: 1, scope: !855, file: !791, line: 197, type: !115)
!860 = !DILocalVariable(name: "s", arg: 2, scope: !855, file: !791, line: 197, type: !444)
!861 = !DILocalVariable(name: "translation", scope: !855, file: !791, line: 199, type: !115)
!862 = !DILocalVariable(name: "w", scope: !855, file: !791, line: 229, type: !380)
!863 = !DILocalVariable(name: "mbs", scope: !855, file: !791, line: 230, type: !864)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !777, line: 6, baseType: !865)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !779, line: 21, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !779, line: 13, size: 64, elements: !867)
!867 = !{!868, !869}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !866, file: !779, line: 15, baseType: !77, size: 32)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !866, file: !779, line: 20, baseType: !870, size: 32, offset: 32)
!870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !866, file: !779, line: 16, size: 32, elements: !871)
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !870, file: !779, line: 18, baseType: !72, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !870, file: !779, line: 19, baseType: !234, size: 32)
!874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 64, elements: !875)
!875 = !{!246, !236}
!876 = !DIGlobalVariableExpression(var: !877, expr: !DIExpression())
!877 = distinct !DIGlobalVariable(name: "slotvec", scope: !815, file: !791, line: 834, type: !878, isLocal: true, isDefinition: true)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !791, line: 823, size: 128, elements: !880)
!880 = !{!881, !882}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !879, file: !791, line: 825, baseType: !113, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !879, file: !791, line: 826, baseType: !107, size: 64, offset: 64)
!883 = !DIGlobalVariableExpression(var: !884, expr: !DIExpression())
!884 = distinct !DIGlobalVariable(name: "nslots", scope: !815, file: !791, line: 832, type: !77, isLocal: true, isDefinition: true)
!885 = !DIGlobalVariableExpression(var: !886, expr: !DIExpression())
!886 = distinct !DIGlobalVariable(name: "slotvec0", scope: !815, file: !791, line: 833, type: !879, isLocal: true, isDefinition: true)
!887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !888, size: 704, elements: !347)
!888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!889 = !DIGlobalVariableExpression(var: !890, expr: !DIExpression())
!890 = distinct !DIGlobalVariable(scope: null, file: !891, line: 67, type: !337, isLocal: true, isDefinition: true)
!891 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!892 = !DIGlobalVariableExpression(var: !893, expr: !DIExpression())
!893 = distinct !DIGlobalVariable(scope: null, file: !891, line: 69, type: !264, isLocal: true, isDefinition: true)
!894 = !DIGlobalVariableExpression(var: !895, expr: !DIExpression())
!895 = distinct !DIGlobalVariable(scope: null, file: !891, line: 83, type: !264, isLocal: true, isDefinition: true)
!896 = !DIGlobalVariableExpression(var: !897, expr: !DIExpression())
!897 = distinct !DIGlobalVariable(scope: null, file: !891, line: 83, type: !234, isLocal: true, isDefinition: true)
!898 = !DIGlobalVariableExpression(var: !899, expr: !DIExpression())
!899 = distinct !DIGlobalVariable(scope: null, file: !891, line: 85, type: !244, isLocal: true, isDefinition: true)
!900 = !DIGlobalVariableExpression(var: !901, expr: !DIExpression())
!901 = distinct !DIGlobalVariable(scope: null, file: !891, line: 88, type: !902, isLocal: true, isDefinition: true)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !903)
!903 = !{!904}
!904 = !DISubrange(count: 171)
!905 = !DIGlobalVariableExpression(var: !906, expr: !DIExpression())
!906 = distinct !DIGlobalVariable(scope: null, file: !891, line: 88, type: !907, isLocal: true, isDefinition: true)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !908)
!908 = !{!909}
!909 = !DISubrange(count: 34)
!910 = !DIGlobalVariableExpression(var: !911, expr: !DIExpression())
!911 = distinct !DIGlobalVariable(scope: null, file: !891, line: 105, type: !126, isLocal: true, isDefinition: true)
!912 = !DIGlobalVariableExpression(var: !913, expr: !DIExpression())
!913 = distinct !DIGlobalVariable(scope: null, file: !891, line: 109, type: !424, isLocal: true, isDefinition: true)
!914 = !DIGlobalVariableExpression(var: !915, expr: !DIExpression())
!915 = distinct !DIGlobalVariable(scope: null, file: !891, line: 113, type: !131, isLocal: true, isDefinition: true)
!916 = !DIGlobalVariableExpression(var: !917, expr: !DIExpression())
!917 = distinct !DIGlobalVariable(scope: null, file: !891, line: 120, type: !918, isLocal: true, isDefinition: true)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !919)
!919 = !{!920}
!920 = !DISubrange(count: 32)
!921 = !DIGlobalVariableExpression(var: !922, expr: !DIExpression())
!922 = distinct !DIGlobalVariable(scope: null, file: !891, line: 127, type: !923, isLocal: true, isDefinition: true)
!923 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !924)
!924 = !{!925}
!925 = !DISubrange(count: 36)
!926 = !DIGlobalVariableExpression(var: !927, expr: !DIExpression())
!927 = distinct !DIGlobalVariable(scope: null, file: !891, line: 134, type: !291, isLocal: true, isDefinition: true)
!928 = !DIGlobalVariableExpression(var: !929, expr: !DIExpression())
!929 = distinct !DIGlobalVariable(scope: null, file: !891, line: 142, type: !930, isLocal: true, isDefinition: true)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !931)
!931 = !{!932}
!932 = !DISubrange(count: 44)
!933 = !DIGlobalVariableExpression(var: !934, expr: !DIExpression())
!934 = distinct !DIGlobalVariable(scope: null, file: !891, line: 150, type: !935, isLocal: true, isDefinition: true)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !936)
!936 = !{!937}
!937 = !DISubrange(count: 48)
!938 = !DIGlobalVariableExpression(var: !939, expr: !DIExpression())
!939 = distinct !DIGlobalVariable(scope: null, file: !891, line: 159, type: !940, isLocal: true, isDefinition: true)
!940 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !941)
!941 = !{!942}
!942 = !DISubrange(count: 52)
!943 = !DIGlobalVariableExpression(var: !944, expr: !DIExpression())
!944 = distinct !DIGlobalVariable(scope: null, file: !891, line: 170, type: !945, isLocal: true, isDefinition: true)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !946)
!946 = !{!947}
!947 = !DISubrange(count: 60)
!948 = !DIGlobalVariableExpression(var: !949, expr: !DIExpression())
!949 = distinct !DIGlobalVariable(scope: null, file: !891, line: 248, type: !216, isLocal: true, isDefinition: true)
!950 = !DIGlobalVariableExpression(var: !951, expr: !DIExpression())
!951 = distinct !DIGlobalVariable(scope: null, file: !891, line: 248, type: !313, isLocal: true, isDefinition: true)
!952 = !DIGlobalVariableExpression(var: !953, expr: !DIExpression())
!953 = distinct !DIGlobalVariable(scope: null, file: !891, line: 254, type: !216, isLocal: true, isDefinition: true)
!954 = !DIGlobalVariableExpression(var: !955, expr: !DIExpression())
!955 = distinct !DIGlobalVariable(scope: null, file: !891, line: 254, type: !121, isLocal: true, isDefinition: true)
!956 = !DIGlobalVariableExpression(var: !957, expr: !DIExpression())
!957 = distinct !DIGlobalVariable(scope: null, file: !891, line: 254, type: !291, isLocal: true, isDefinition: true)
!958 = !DIGlobalVariableExpression(var: !959, expr: !DIExpression())
!959 = distinct !DIGlobalVariable(scope: null, file: !891, line: 259, type: !3, isLocal: true, isDefinition: true)
!960 = !DIGlobalVariableExpression(var: !961, expr: !DIExpression())
!961 = distinct !DIGlobalVariable(scope: null, file: !891, line: 259, type: !962, isLocal: true, isDefinition: true)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !963)
!963 = !{!964}
!964 = !DISubrange(count: 29)
!965 = !DIGlobalVariableExpression(var: !966, expr: !DIExpression())
!966 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !967, file: !968, line: 26, type: !970, isLocal: false, isDefinition: true)
!967 = distinct !DICompileUnit(language: DW_LANG_C11, file: !968, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !969, splitDebugInlining: false, nameTableKind: None)
!968 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!969 = !{!965}
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 376, elements: !564)
!971 = !DIGlobalVariableExpression(var: !972, expr: !DIExpression())
!972 = distinct !DIGlobalVariable(name: "exit_failure", scope: !973, file: !974, line: 24, type: !976, isLocal: false, isDefinition: true)
!973 = distinct !DICompileUnit(language: DW_LANG_C11, file: !974, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !975, splitDebugInlining: false, nameTableKind: None)
!974 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!975 = !{!971}
!976 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !77)
!977 = !DIGlobalVariableExpression(var: !978, expr: !DIExpression())
!978 = distinct !DIGlobalVariable(scope: null, file: !979, line: 34, type: !253, isLocal: true, isDefinition: true)
!979 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!980 = !DIGlobalVariableExpression(var: !981, expr: !DIExpression())
!981 = distinct !DIGlobalVariable(scope: null, file: !979, line: 34, type: !264, isLocal: true, isDefinition: true)
!982 = !DIGlobalVariableExpression(var: !983, expr: !DIExpression())
!983 = distinct !DIGlobalVariable(scope: null, file: !979, line: 34, type: !286, isLocal: true, isDefinition: true)
!984 = !DIGlobalVariableExpression(var: !985, expr: !DIExpression())
!985 = distinct !DIGlobalVariable(scope: null, file: !986, line: 108, type: !49, isLocal: true, isDefinition: true)
!986 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!987 = !DIGlobalVariableExpression(var: !988, expr: !DIExpression())
!988 = distinct !DIGlobalVariable(name: "internal_state", scope: !989, file: !986, line: 97, type: !992, isLocal: true, isDefinition: true)
!989 = distinct !DICompileUnit(language: DW_LANG_C11, file: !986, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !990, globals: !991, splitDebugInlining: false, nameTableKind: None)
!990 = !{!108, !113, !117}
!991 = !{!984, !987}
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !777, line: 6, baseType: !993)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !779, line: 21, baseType: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !779, line: 13, size: 64, elements: !995)
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !994, file: !779, line: 15, baseType: !77, size: 32)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !994, file: !779, line: 20, baseType: !998, size: 32, offset: 32)
!998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !994, file: !779, line: 16, size: 32, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !998, file: !779, line: 18, baseType: !72, size: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !998, file: !779, line: 19, baseType: !234, size: 32)
!1002 = !DIGlobalVariableExpression(var: !1003, expr: !DIExpression())
!1003 = distinct !DIGlobalVariable(scope: null, file: !1004, line: 35, type: !244, isLocal: true, isDefinition: true)
!1004 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!1005 = !DIGlobalVariableExpression(var: !1006, expr: !DIExpression())
!1006 = distinct !DIGlobalVariable(scope: null, file: !1004, line: 35, type: !239, isLocal: true, isDefinition: true)
!1007 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1008, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1009, splitDebugInlining: false, nameTableKind: None)
!1008 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!1009 = !{!458}
!1010 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1011, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1011 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!1012 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1013, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1014, splitDebugInlining: false, nameTableKind: None)
!1013 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!1014 = !{!108}
!1015 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1016, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1016 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!1017 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1018, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1014, splitDebugInlining: false, nameTableKind: None)
!1018 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!1019 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1020, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1020 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!1021 = distinct !DICompileUnit(language: DW_LANG_C11, file: !891, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1022, retainedTypes: !1014, globals: !1026, splitDebugInlining: false, nameTableKind: None)
!1022 = !{!1023}
!1023 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !891, line: 40, baseType: !72, size: 32, elements: !1024)
!1024 = !{!1025}
!1025 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!1026 = !{!889, !892, !894, !896, !898, !900, !905, !910, !912, !914, !916, !921, !926, !928, !933, !938, !943, !948, !950, !952, !954, !956, !958, !960}
!1027 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1028, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !1029, retainedTypes: !1057, splitDebugInlining: false, nameTableKind: None)
!1028 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!1029 = !{!1030, !1042}
!1030 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1031, file: !1028, line: 188, baseType: !72, size: 32, elements: !1040)
!1031 = distinct !DISubprogram(name: "x2nrealloc", scope: !1028, file: !1028, line: 176, type: !1032, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !1035)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!108, !108, !1034, !113}
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1035 = !{!1036, !1037, !1038, !1039}
!1036 = !DILocalVariable(name: "p", arg: 1, scope: !1031, file: !1028, line: 176, type: !108)
!1037 = !DILocalVariable(name: "pn", arg: 2, scope: !1031, file: !1028, line: 176, type: !1034)
!1038 = !DILocalVariable(name: "s", arg: 3, scope: !1031, file: !1028, line: 176, type: !113)
!1039 = !DILocalVariable(name: "n", scope: !1031, file: !1028, line: 178, type: !113)
!1040 = !{!1041}
!1041 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!1042 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1043, file: !1028, line: 228, baseType: !72, size: 32, elements: !1040)
!1043 = distinct !DISubprogram(name: "xpalloc", scope: !1028, file: !1028, line: 223, type: !1044, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !1047)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!108, !108, !1046, !369, !371, !369}
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!1047 = !{!1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056}
!1048 = !DILocalVariable(name: "pa", arg: 1, scope: !1043, file: !1028, line: 223, type: !108)
!1049 = !DILocalVariable(name: "pn", arg: 2, scope: !1043, file: !1028, line: 223, type: !1046)
!1050 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !1043, file: !1028, line: 223, type: !369)
!1051 = !DILocalVariable(name: "n_max", arg: 4, scope: !1043, file: !1028, line: 223, type: !371)
!1052 = !DILocalVariable(name: "s", arg: 5, scope: !1043, file: !1028, line: 223, type: !369)
!1053 = !DILocalVariable(name: "n0", scope: !1043, file: !1028, line: 230, type: !369)
!1054 = !DILocalVariable(name: "n", scope: !1043, file: !1028, line: 237, type: !369)
!1055 = !DILocalVariable(name: "nbytes", scope: !1043, file: !1028, line: 248, type: !369)
!1056 = !DILocalVariable(name: "adjusted_nbytes", scope: !1043, file: !1028, line: 252, type: !369)
!1057 = !{!107, !108, !109, !110, !111}
!1058 = distinct !DICompileUnit(language: DW_LANG_C11, file: !979, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1059, splitDebugInlining: false, nameTableKind: None)
!1059 = !{!977, !980, !982}
!1060 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1061, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1014, splitDebugInlining: false, nameTableKind: None)
!1061 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!1062 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1063, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1063 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1064 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1065, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1066, splitDebugInlining: false, nameTableKind: None)
!1065 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1066 = !{!109, !111, !108}
!1067 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1004, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, globals: !1068, splitDebugInlining: false, nameTableKind: None)
!1068 = !{!1002, !1005}
!1069 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1070, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1070 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1071 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1072, producer: "Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !1014, splitDebugInlining: false, nameTableKind: None)
!1072 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1073 = !{!"Ubuntu clang version 16.0.6 (++20231112100510+7cbf1a259152-1~exp1~20231112100554.106)"}
!1074 = !{i32 7, !"Dwarf Version", i32 5}
!1075 = !{i32 2, !"Debug Info Version", i32 3}
!1076 = !{i32 1, !"wchar_size", i32 4}
!1077 = !{i32 8, !"PIC Level", i32 2}
!1078 = !{i32 7, !"PIE Level", i32 2}
!1079 = !{i32 7, !"uwtable", i32 2}
!1080 = !{i32 7, !"frame-pointer", i32 1}
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
!1099 = !DILocation(line: 729, column: 3, scope: !1100, inlinedAt: !1102)
!1100 = distinct !DISubprogram(name: "emit_stdin_note", scope: !76, file: !76, line: 727, type: !356, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1101)
!1101 = !{}
!1102 = distinct !DILocation(line: 87, column: 7, scope: !1097)
!1103 = !DILocation(line: 736, column: 3, scope: !1104, inlinedAt: !1105)
!1104 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !76, file: !76, line: 734, type: !356, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1101)
!1105 = distinct !DILocation(line: 88, column: 7, scope: !1097)
!1106 = !DILocation(line: 90, column: 7, scope: !1097)
!1107 = !DILocation(line: 94, column: 7, scope: !1097)
!1108 = !DILocation(line: 98, column: 7, scope: !1097)
!1109 = !DILocation(line: 102, column: 7, scope: !1097)
!1110 = !DILocation(line: 103, column: 7, scope: !1097)
!1111 = !DILocation(line: 104, column: 7, scope: !1097)
!1112 = !DILocalVariable(name: "program", arg: 1, scope: !1113, file: !76, line: 836, type: !115)
!1113 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !76, file: !76, line: 836, type: !1114, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1116)
!1114 = !DISubroutineType(types: !1115)
!1115 = !{null, !115}
!1116 = !{!1112, !1117, !1124, !1125, !1127, !1128}
!1117 = !DILocalVariable(name: "infomap", scope: !1113, file: !76, line: 838, type: !1118)
!1118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1119, size: 896, elements: !265)
!1119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1120)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1113, file: !76, line: 838, size: 128, elements: !1121)
!1121 = !{!1122, !1123}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1120, file: !76, line: 838, baseType: !115, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1120, file: !76, line: 838, baseType: !115, size: 64, offset: 64)
!1124 = !DILocalVariable(name: "node", scope: !1113, file: !76, line: 848, type: !115)
!1125 = !DILocalVariable(name: "map_prog", scope: !1113, file: !76, line: 849, type: !1126)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1127 = !DILocalVariable(name: "lc_messages", scope: !1113, file: !76, line: 861, type: !115)
!1128 = !DILocalVariable(name: "url_program", scope: !1113, file: !76, line: 874, type: !115)
!1129 = !DILocation(line: 0, scope: !1113, inlinedAt: !1130)
!1130 = distinct !DILocation(line: 105, column: 7, scope: !1097)
!1131 = !DILocation(line: 857, column: 3, scope: !1113, inlinedAt: !1130)
!1132 = !DILocation(line: 861, column: 29, scope: !1113, inlinedAt: !1130)
!1133 = !DILocation(line: 862, column: 7, scope: !1134, inlinedAt: !1130)
!1134 = distinct !DILexicalBlock(scope: !1113, file: !76, line: 862, column: 7)
!1135 = !DILocation(line: 862, column: 19, scope: !1134, inlinedAt: !1130)
!1136 = !DILocation(line: 862, column: 22, scope: !1134, inlinedAt: !1130)
!1137 = !DILocation(line: 862, column: 7, scope: !1113, inlinedAt: !1130)
!1138 = !DILocation(line: 868, column: 7, scope: !1139, inlinedAt: !1130)
!1139 = distinct !DILexicalBlock(scope: !1134, file: !76, line: 863, column: 5)
!1140 = !DILocation(line: 870, column: 5, scope: !1139, inlinedAt: !1130)
!1141 = !DILocation(line: 875, column: 3, scope: !1113, inlinedAt: !1130)
!1142 = !DILocation(line: 877, column: 3, scope: !1113, inlinedAt: !1130)
!1143 = !DILocation(line: 107, column: 3, scope: !1081)
!1144 = !DISubprogram(name: "dcgettext", scope: !1145, file: !1145, line: 51, type: !1146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1145 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!107, !115, !115, !77}
!1148 = !DISubprogram(name: "__fprintf_chk", scope: !1149, file: !1149, line: 93, type: !1150, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1149 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1150 = !DISubroutineType(types: !1151)
!1151 = !{!77, !1152, !77, !1153, null}
!1152 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !168)
!1153 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !115)
!1154 = !DISubprogram(name: "__printf_chk", scope: !1149, file: !1149, line: 95, type: !1155, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!77, !77, !1153, null}
!1157 = !DISubprogram(name: "fputs_unlocked", scope: !714, file: !714, line: 691, type: !1158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1158 = !DISubroutineType(types: !1159)
!1159 = !{!77, !1153, !1152}
!1160 = !DILocation(line: 0, scope: !146)
!1161 = !DILocation(line: 581, column: 7, scope: !154)
!1162 = !{!1163, !1163, i64 0}
!1163 = !{!"int", !1094, i64 0}
!1164 = !DILocation(line: 581, column: 19, scope: !154)
!1165 = !DILocation(line: 581, column: 7, scope: !146)
!1166 = !DILocation(line: 585, column: 26, scope: !153)
!1167 = !DILocation(line: 0, scope: !153)
!1168 = !DILocation(line: 586, column: 23, scope: !153)
!1169 = !DILocation(line: 586, column: 28, scope: !153)
!1170 = !DILocation(line: 586, column: 32, scope: !153)
!1171 = !{!1094, !1094, i64 0}
!1172 = !DILocation(line: 586, column: 38, scope: !153)
!1173 = !DILocalVariable(name: "__s1", arg: 1, scope: !1174, file: !1175, line: 1359, type: !115)
!1174 = distinct !DISubprogram(name: "streq", scope: !1175, file: !1175, line: 1359, type: !1176, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1178)
!1175 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1176 = !DISubroutineType(types: !1177)
!1177 = !{!109, !115, !115}
!1178 = !{!1173, !1179}
!1179 = !DILocalVariable(name: "__s2", arg: 2, scope: !1174, file: !1175, line: 1359, type: !115)
!1180 = !DILocation(line: 0, scope: !1174, inlinedAt: !1181)
!1181 = distinct !DILocation(line: 586, column: 41, scope: !153)
!1182 = !DILocation(line: 1361, column: 11, scope: !1174, inlinedAt: !1181)
!1183 = !DILocation(line: 1361, column: 10, scope: !1174, inlinedAt: !1181)
!1184 = !DILocation(line: 586, column: 19, scope: !153)
!1185 = !DILocation(line: 587, column: 5, scope: !153)
!1186 = !DILocation(line: 588, column: 7, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !146, file: !76, line: 588, column: 7)
!1188 = !DILocation(line: 588, column: 7, scope: !146)
!1189 = !DILocation(line: 590, column: 7, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1187, file: !76, line: 589, column: 5)
!1191 = !DILocation(line: 591, column: 7, scope: !1190)
!1192 = !DILocation(line: 595, column: 37, scope: !146)
!1193 = !DILocation(line: 595, column: 35, scope: !146)
!1194 = !DILocation(line: 596, column: 29, scope: !146)
!1195 = !DILocation(line: 597, column: 8, scope: !161)
!1196 = !DILocation(line: 597, column: 7, scope: !146)
!1197 = !DILocation(line: 604, column: 24, scope: !160)
!1198 = !DILocation(line: 604, column: 12, scope: !161)
!1199 = !DILocation(line: 0, scope: !159)
!1200 = !DILocation(line: 610, column: 16, scope: !159)
!1201 = !DILocation(line: 610, column: 7, scope: !159)
!1202 = !DILocation(line: 611, column: 21, scope: !159)
!1203 = !{!1204, !1204, i64 0}
!1204 = !{!"short", !1094, i64 0}
!1205 = !DILocation(line: 611, column: 19, scope: !159)
!1206 = !DILocation(line: 611, column: 16, scope: !159)
!1207 = !DILocation(line: 610, column: 30, scope: !159)
!1208 = distinct !{!1208, !1201, !1202, !1209}
!1209 = !{!"llvm.loop.mustprogress"}
!1210 = !DILocation(line: 612, column: 18, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !159, file: !76, line: 612, column: 11)
!1212 = !DILocation(line: 612, column: 11, scope: !159)
!1213 = !DILocation(line: 620, column: 23, scope: !146)
!1214 = !DILocation(line: 625, column: 39, scope: !146)
!1215 = !DILocation(line: 626, column: 3, scope: !146)
!1216 = !DILocation(line: 626, column: 10, scope: !146)
!1217 = !DILocation(line: 626, column: 21, scope: !146)
!1218 = !DILocation(line: 628, column: 44, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !76, line: 628, column: 11)
!1220 = distinct !DILexicalBlock(scope: !146, file: !76, line: 627, column: 5)
!1221 = !DILocation(line: 628, column: 32, scope: !1219)
!1222 = !DILocation(line: 628, column: 49, scope: !1219)
!1223 = !DILocation(line: 628, column: 11, scope: !1220)
!1224 = !DILocation(line: 630, column: 11, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !76, line: 630, column: 11)
!1226 = !DILocation(line: 630, column: 11, scope: !1220)
!1227 = !DILocation(line: 632, column: 26, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !76, line: 632, column: 15)
!1229 = distinct !DILexicalBlock(scope: !1225, file: !76, line: 631, column: 9)
!1230 = !DILocation(line: 632, column: 34, scope: !1228)
!1231 = !DILocation(line: 632, column: 37, scope: !1228)
!1232 = !DILocation(line: 632, column: 15, scope: !1229)
!1233 = !DILocation(line: 640, column: 16, scope: !1220)
!1234 = distinct !{!1234, !1215, !1235, !1209}
!1235 = !DILocation(line: 641, column: 5, scope: !146)
!1236 = !DILocation(line: 644, column: 3, scope: !146)
!1237 = !DILocation(line: 0, scope: !1174, inlinedAt: !1238)
!1238 = distinct !DILocation(line: 648, column: 31, scope: !146)
!1239 = !DILocation(line: 0, scope: !1174, inlinedAt: !1240)
!1240 = distinct !DILocation(line: 649, column: 31, scope: !146)
!1241 = !DILocation(line: 0, scope: !1174, inlinedAt: !1242)
!1242 = distinct !DILocation(line: 650, column: 31, scope: !146)
!1243 = !DILocation(line: 0, scope: !1174, inlinedAt: !1244)
!1244 = distinct !DILocation(line: 651, column: 31, scope: !146)
!1245 = !DILocation(line: 0, scope: !1174, inlinedAt: !1246)
!1246 = distinct !DILocation(line: 652, column: 31, scope: !146)
!1247 = !DILocation(line: 0, scope: !1174, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 653, column: 31, scope: !146)
!1249 = !DILocation(line: 0, scope: !1174, inlinedAt: !1250)
!1250 = distinct !DILocation(line: 654, column: 31, scope: !146)
!1251 = !DILocation(line: 0, scope: !1174, inlinedAt: !1252)
!1252 = distinct !DILocation(line: 655, column: 31, scope: !146)
!1253 = !DILocation(line: 0, scope: !1174, inlinedAt: !1254)
!1254 = distinct !DILocation(line: 656, column: 31, scope: !146)
!1255 = !DILocation(line: 0, scope: !1174, inlinedAt: !1256)
!1256 = distinct !DILocation(line: 657, column: 31, scope: !146)
!1257 = !DILocation(line: 663, column: 7, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !146, file: !76, line: 663, column: 7)
!1259 = !DILocation(line: 664, column: 7, scope: !1258)
!1260 = !DILocation(line: 664, column: 10, scope: !1258)
!1261 = !DILocation(line: 663, column: 7, scope: !146)
!1262 = !DILocation(line: 669, column: 7, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1258, file: !76, line: 665, column: 5)
!1264 = !DILocation(line: 671, column: 5, scope: !1263)
!1265 = !DILocation(line: 676, column: 7, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1258, file: !76, line: 673, column: 5)
!1267 = !DILocation(line: 679, column: 3, scope: !146)
!1268 = !DILocation(line: 683, column: 3, scope: !146)
!1269 = !DILocation(line: 686, column: 3, scope: !146)
!1270 = !DILocation(line: 688, column: 3, scope: !146)
!1271 = !DILocation(line: 691, column: 3, scope: !146)
!1272 = !DILocation(line: 695, column: 3, scope: !146)
!1273 = !DILocation(line: 696, column: 1, scope: !146)
!1274 = !DISubprogram(name: "setlocale", scope: !1275, file: !1275, line: 122, type: !1276, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1275 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!107, !77, !115}
!1278 = !DISubprogram(name: "strncmp", scope: !1279, file: !1279, line: 159, type: !1280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1279 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!77, !115, !115, !113}
!1282 = !DISubprogram(name: "exit", scope: !1283, file: !1283, line: 624, type: !1082, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1283 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1284 = !DISubprogram(name: "getenv", scope: !1283, file: !1283, line: 641, type: !1285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1285 = !DISubroutineType(types: !1286)
!1286 = !{!107, !115}
!1287 = !DISubprogram(name: "strcmp", scope: !1279, file: !1279, line: 156, type: !1288, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!77, !115, !115}
!1290 = !DISubprogram(name: "strspn", scope: !1279, file: !1279, line: 297, type: !1291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1291 = !DISubroutineType(types: !1292)
!1292 = !{!111, !115, !115}
!1293 = !DISubprogram(name: "strchr", scope: !1279, file: !1279, line: 246, type: !1294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{!107, !115, !77}
!1296 = !DISubprogram(name: "__ctype_b_loc", scope: !82, file: !82, line: 79, type: !1297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1297 = !DISubroutineType(types: !1298)
!1298 = !{!1299}
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!1302 = !DISubprogram(name: "strcspn", scope: !1279, file: !1279, line: 293, type: !1291, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1303 = !DISubprogram(name: "fwrite_unlocked", scope: !714, file: !714, line: 704, type: !1304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1304 = !DISubroutineType(types: !1305)
!1305 = !{!113, !1306, !113, !113, !1152}
!1306 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1309 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 273, type: !1310, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1312)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!77, !77, !593}
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1318}
!1313 = !DILocalVariable(name: "argc", arg: 1, scope: !1309, file: !2, line: 273, type: !77)
!1314 = !DILocalVariable(name: "argv", arg: 2, scope: !1309, file: !2, line: 273, type: !593)
!1315 = !DILocalVariable(name: "have_tabval", scope: !1309, file: !2, line: 275, type: !109)
!1316 = !DILocalVariable(name: "tabval", scope: !1309, file: !2, line: 276, type: !388)
!1317 = !DILocalVariable(name: "c", scope: !1309, file: !2, line: 277, type: !77)
!1318 = !DILocalVariable(name: "convert_first_only", scope: !1309, file: !2, line: 281, type: !109)
!1319 = !DILocation(line: 0, scope: !1309)
!1320 = !DILocation(line: 284, column: 21, scope: !1309)
!1321 = !DILocation(line: 284, column: 3, scope: !1309)
!1322 = !DILocation(line: 285, column: 3, scope: !1309)
!1323 = !DILocation(line: 286, column: 3, scope: !1309)
!1324 = !DILocation(line: 287, column: 3, scope: !1309)
!1325 = !DILocation(line: 289, column: 3, scope: !1309)
!1326 = !DILocation(line: 291, column: 3, scope: !1309)
!1327 = !DILocation(line: 291, column: 15, scope: !1309)
!1328 = distinct !{!1328, !1326, !1329, !1209}
!1329 = !DILocation(line: 325, column: 5, scope: !1309)
!1330 = !DILocation(line: 297, column: 11, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !2, line: 295, column: 9)
!1332 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 293, column: 5)
!1333 = !DILocation(line: 299, column: 31, scope: !1331)
!1334 = !{!1335, !1335, i64 0}
!1335 = !{!"_Bool", !1094, i64 0}
!1336 = !DILocation(line: 300, column: 11, scope: !1331)
!1337 = !DILocation(line: 302, column: 31, scope: !1331)
!1338 = !DILocation(line: 303, column: 28, scope: !1331)
!1339 = !DILocation(line: 303, column: 11, scope: !1331)
!1340 = !DILocation(line: 304, column: 11, scope: !1331)
!1341 = !DILocation(line: 309, column: 15, scope: !1331)
!1342 = !DILocation(line: 310, column: 13, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 309, column: 15)
!1344 = !DILocation(line: 313, column: 9, scope: !1331)
!1345 = !DILocation(line: 314, column: 9, scope: !1331)
!1346 = !DILocation(line: 316, column: 15, scope: !1331)
!1347 = !DILocation(line: 321, column: 16, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1331, file: !2, line: 321, column: 15)
!1349 = !DILocation(line: 321, column: 15, scope: !1331)
!1350 = !DILocation(line: 322, column: 13, scope: !1348)
!1351 = !DILocation(line: 327, column: 7, scope: !1309)
!1352 = !DILocation(line: 328, column: 25, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 327, column: 7)
!1354 = !DILocation(line: 328, column: 5, scope: !1353)
!1355 = !DILocation(line: 330, column: 7, scope: !1309)
!1356 = !DILocation(line: 331, column: 5, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 330, column: 7)
!1358 = !DILocation(line: 333, column: 3, scope: !1309)
!1359 = !DILocation(line: 335, column: 19, scope: !1309)
!1360 = !DILocation(line: 335, column: 26, scope: !1309)
!1361 = !DILocation(line: 335, column: 18, scope: !1309)
!1362 = !DILocation(line: 335, column: 3, scope: !1309)
!1363 = !DILocation(line: 117, column: 14, scope: !355, inlinedAt: !1364)
!1364 = distinct !DILocation(line: 337, column: 3, scope: !1309)
!1365 = !DILocation(line: 0, scope: !355, inlinedAt: !1364)
!1366 = !DILocation(line: 124, column: 8, scope: !1367, inlinedAt: !1364)
!1367 = distinct !DILexicalBlock(scope: !355, file: !2, line: 124, column: 7)
!1368 = !DILocation(line: 124, column: 7, scope: !355, inlinedAt: !1364)
!1369 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1370, file: !363, line: 56, type: !1373)
!1370 = distinct !DISubprogram(name: "mbbuf_init", scope: !363, file: !363, line: 56, type: !1371, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1374)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{null, !1373, !107, !369, !168}
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!1374 = !{!1369, !1375, !1376, !1377}
!1375 = !DILocalVariable(name: "buffer", arg: 2, scope: !1370, file: !363, line: 56, type: !107)
!1376 = !DILocalVariable(name: "size", arg: 3, scope: !1370, file: !363, line: 56, type: !369)
!1377 = !DILocalVariable(name: "fp", arg: 4, scope: !1370, file: !363, line: 56, type: !168)
!1378 = !DILocation(line: 0, scope: !1370, inlinedAt: !1379)
!1379 = distinct !DILocation(line: 129, column: 3, scope: !355, inlinedAt: !1364)
!1380 = !DILocation(line: 134, column: 29, scope: !355, inlinedAt: !1364)
!1381 = !{!1382, !1382, i64 0}
!1382 = !{!"long", !1094, i64 0}
!1383 = !DILocation(line: 134, column: 62, scope: !355, inlinedAt: !1364)
!1384 = !DILocation(line: 134, column: 19, scope: !355, inlinedAt: !1364)
!1385 = !DILocation(line: 136, column: 3, scope: !355, inlinedAt: !1364)
!1386 = !DILocation(line: 61, column: 13, scope: !1370, inlinedAt: !1379)
!1387 = !DILocation(line: 0, scope: !375, inlinedAt: !1364)
!1388 = !DILocation(line: 155, column: 7, scope: !375, inlinedAt: !1364)
!1389 = !DILocation(line: 155, column: 13, scope: !375, inlinedAt: !1364)
!1390 = !DILocation(line: 171, column: 7, scope: !375, inlinedAt: !1364)
!1391 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1392, file: !363, line: 71, type: !1373)
!1392 = distinct !DISubprogram(name: "mbbuf_get_char", scope: !363, file: !363, line: 71, type: !1393, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1395)
!1393 = !DISubroutineType(types: !1394)
!1394 = !{!376, !1373}
!1395 = !{!1391, !1396, !1397, !1400}
!1396 = !DILocalVariable(name: "available", scope: !1392, file: !363, line: 73, type: !369)
!1397 = !DILocalVariable(name: "start", scope: !1398, file: !363, line: 77, type: !369)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !363, line: 76, column: 5)
!1399 = distinct !DILexicalBlock(scope: !1392, file: !363, line: 75, column: 7)
!1400 = !DILocalVariable(name: "g", scope: !1392, file: !363, line: 92, type: !376)
!1401 = !DILocation(line: 0, scope: !1392, inlinedAt: !1402)
!1402 = distinct !DILocation(line: 173, column: 23, scope: !401, inlinedAt: !1364)
!1403 = !DILocation(line: 73, column: 35, scope: !1392, inlinedAt: !1402)
!1404 = !DILocation(line: 75, column: 17, scope: !1399, inlinedAt: !1402)
!1405 = !DILocation(line: 75, column: 32, scope: !1399, inlinedAt: !1402)
!1406 = !DILocalVariable(name: "__stream", arg: 1, scope: !1407, file: !1408, line: 128, type: !168)
!1407 = distinct !DISubprogram(name: "feof_unlocked", scope: !1408, file: !1408, line: 128, type: !1409, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1411)
!1408 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!77, !168}
!1411 = !{!1406}
!1412 = !DILocation(line: 0, scope: !1407, inlinedAt: !1413)
!1413 = distinct !DILocation(line: 75, column: 37, scope: !1399, inlinedAt: !1402)
!1414 = !DILocation(line: 130, column: 10, scope: !1407, inlinedAt: !1413)
!1415 = !{!1416, !1163, i64 0}
!1416 = !{!"_IO_FILE", !1163, i64 0, !1093, i64 8, !1093, i64 16, !1093, i64 24, !1093, i64 32, !1093, i64 40, !1093, i64 48, !1093, i64 56, !1093, i64 64, !1093, i64 72, !1093, i64 80, !1093, i64 88, !1093, i64 96, !1093, i64 104, !1163, i64 112, !1163, i64 116, !1382, i64 120, !1204, i64 128, !1094, i64 130, !1094, i64 131, !1093, i64 136, !1382, i64 144, !1093, i64 152, !1093, i64 160, !1093, i64 168, !1093, i64 176, !1382, i64 184, !1163, i64 192, !1094, i64 196}
!1417 = !DILocation(line: 75, column: 37, scope: !1399, inlinedAt: !1402)
!1418 = !DILocation(line: 75, column: 7, scope: !1392, inlinedAt: !1402)
!1419 = !DILocation(line: 78, column: 15, scope: !1420, inlinedAt: !1402)
!1420 = distinct !DILexicalBlock(scope: !1398, file: !363, line: 78, column: 11)
!1421 = !DILocation(line: 78, column: 11, scope: !1398, inlinedAt: !1402)
!1422 = !DILocation(line: 82, column: 49, scope: !1423, inlinedAt: !1402)
!1423 = distinct !DILexicalBlock(scope: !1420, file: !363, line: 81, column: 9)
!1424 = !DILocalVariable(name: "__dest", arg: 1, scope: !1425, file: !1426, line: 34, type: !108)
!1425 = distinct !DISubprogram(name: "memmove", scope: !1426, file: !1426, line: 34, type: !1427, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1429)
!1426 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!108, !108, !1307, !113}
!1429 = !{!1424, !1430, !1431}
!1430 = !DILocalVariable(name: "__src", arg: 2, scope: !1425, file: !1426, line: 34, type: !1307)
!1431 = !DILocalVariable(name: "__len", arg: 3, scope: !1425, file: !1426, line: 34, type: !113)
!1432 = !DILocation(line: 0, scope: !1425, inlinedAt: !1433)
!1433 = distinct !DILocation(line: 82, column: 11, scope: !1423, inlinedAt: !1402)
!1434 = !DILocation(line: 36, column: 10, scope: !1425, inlinedAt: !1433)
!1435 = !DILocation(line: 0, scope: !1398, inlinedAt: !1402)
!1436 = !DILocation(line: 0, scope: !1420, inlinedAt: !1402)
!1437 = !DILocation(line: 85, column: 23, scope: !1398, inlinedAt: !1402)
!1438 = !DILocation(line: 86, column: 41, scope: !1398, inlinedAt: !1402)
!1439 = !DILocation(line: 89, column: 5, scope: !1398, inlinedAt: !1402)
!1440 = !DILocation(line: 90, column: 17, scope: !1441, inlinedAt: !1402)
!1441 = distinct !DILexicalBlock(scope: !1392, file: !363, line: 90, column: 7)
!1442 = !DILocation(line: 90, column: 7, scope: !1392, inlinedAt: !1402)
!1443 = !DILocation(line: 92, column: 39, scope: !1392, inlinedAt: !1402)
!1444 = !DILocalVariable(name: "p", arg: 1, scope: !1445, file: !97, line: 230, type: !115)
!1445 = distinct !DISubprogram(name: "mcel_scan", scope: !97, file: !97, line: 230, type: !1446, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1448)
!1446 = !DISubroutineType(types: !1447)
!1447 = !{!376, !115, !115}
!1448 = !{!1444, !1449, !1450, !1451, !1462, !1463}
!1449 = !DILocalVariable(name: "lim", arg: 2, scope: !1445, file: !97, line: 230, type: !115)
!1450 = !DILocalVariable(name: "c", scope: !1445, file: !97, line: 235, type: !4)
!1451 = !DILocalVariable(name: "mbs", scope: !1445, file: !97, line: 244, type: !1452)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !777, line: 6, baseType: !1453)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !779, line: 21, baseType: !1454)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !779, line: 13, size: 64, elements: !1455)
!1455 = !{!1456, !1457}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1454, file: !779, line: 15, baseType: !77, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1454, file: !779, line: 20, baseType: !1458, size: 32, offset: 32)
!1458 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1454, file: !779, line: 16, size: 32, elements: !1459)
!1459 = !{!1460, !1461}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1458, file: !779, line: 18, baseType: !72, size: 32)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1458, file: !779, line: 19, baseType: !234, size: 32)
!1462 = !DILocalVariable(name: "ch", scope: !1445, file: !97, line: 267, type: !380)
!1463 = !DILocalVariable(name: "len", scope: !1445, file: !97, line: 268, type: !113)
!1464 = !DILocation(line: 0, scope: !1445, inlinedAt: !1465)
!1465 = distinct !DILocation(line: 92, column: 14, scope: !1392, inlinedAt: !1402)
!1466 = !DILocation(line: 235, column: 12, scope: !1445, inlinedAt: !1465)
!1467 = !DILocalVariable(name: "c", arg: 1, scope: !1468, file: !97, line: 215, type: !4)
!1468 = distinct !DISubprogram(name: "mcel_isbasic", scope: !97, file: !97, line: 215, type: !1469, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1471)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!109, !4}
!1471 = !{!1467}
!1472 = !DILocation(line: 0, scope: !1468, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 236, column: 7, scope: !1474, inlinedAt: !1465)
!1474 = distinct !DILexicalBlock(scope: !1445, file: !97, line: 236, column: 7)
!1475 = !DILocation(line: 217, column: 10, scope: !1468, inlinedAt: !1473)
!1476 = !DILocation(line: 236, column: 7, scope: !1445, inlinedAt: !1465)
!1477 = !DILocation(line: 93, column: 39, scope: !1392, inlinedAt: !1402)
!1478 = !DILocation(line: 244, column: 3, scope: !1445, inlinedAt: !1465)
!1479 = !DILocation(line: 244, column: 13, scope: !1445, inlinedAt: !1465)
!1480 = !DILocation(line: 244, column: 30, scope: !1445, inlinedAt: !1465)
!1481 = !{!1482, !1163, i64 0}
!1482 = !{!"", !1163, i64 0, !1094, i64 4}
!1483 = !DILocation(line: 267, column: 3, scope: !1445, inlinedAt: !1465)
!1484 = !DILocation(line: 268, column: 38, scope: !1445, inlinedAt: !1465)
!1485 = !DILocation(line: 268, column: 16, scope: !1445, inlinedAt: !1465)
!1486 = !DILocation(line: 274, column: 7, scope: !1487, inlinedAt: !1465)
!1487 = distinct !DILexicalBlock(scope: !1445, file: !97, line: 274, column: 7)
!1488 = !DILocation(line: 274, column: 7, scope: !1445, inlinedAt: !1465)
!1489 = !{!"branch_weights", i32 1, i32 2000}
!1490 = !DILocation(line: 279, column: 19, scope: !1445, inlinedAt: !1465)
!1491 = !DILocalVariable(name: "ch", arg: 1, scope: !1492, file: !97, line: 167, type: !380)
!1492 = distinct !DISubprogram(name: "mcel_ch", scope: !97, file: !97, line: 167, type: !1493, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1495)
!1493 = !DISubroutineType(types: !1494)
!1494 = !{!376, !380, !113}
!1495 = !{!1491, !1496}
!1496 = !DILocalVariable(name: "len", arg: 2, scope: !1492, file: !97, line: 167, type: !113)
!1497 = !DILocation(line: 0, scope: !1492, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 279, column: 10, scope: !1445, inlinedAt: !1465)
!1499 = !DILocation(line: 169, column: 3, scope: !1492, inlinedAt: !1498)
!1500 = !DILocation(line: 170, column: 3, scope: !1492, inlinedAt: !1498)
!1501 = !DILocation(line: 171, column: 3, scope: !1492, inlinedAt: !1498)
!1502 = !DILocation(line: 172, column: 3, scope: !1492, inlinedAt: !1498)
!1503 = !DILocation(line: 279, column: 3, scope: !1445, inlinedAt: !1465)
!1504 = !DILocalVariable(name: "err", arg: 1, scope: !1505, file: !97, line: 175, type: !117)
!1505 = distinct !DISubprogram(name: "mcel_err", scope: !97, file: !97, line: 175, type: !1506, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1508)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!376, !117}
!1508 = !{!1504}
!1509 = !DILocation(line: 0, scope: !1505, inlinedAt: !1510)
!1510 = distinct !DILocation(line: 275, column: 12, scope: !1487, inlinedAt: !1465)
!1511 = !DILocation(line: 178, column: 3, scope: !1505, inlinedAt: !1510)
!1512 = !DILocation(line: 275, column: 5, scope: !1487, inlinedAt: !1465)
!1513 = !DILocation(line: 280, column: 1, scope: !1445, inlinedAt: !1465)
!1514 = !DILocation(line: 0, scope: !1492, inlinedAt: !1515)
!1515 = distinct !DILocation(line: 237, column: 12, scope: !1474, inlinedAt: !1465)
!1516 = !DILocation(line: 172, column: 3, scope: !1492, inlinedAt: !1515)
!1517 = !DILocation(line: 237, column: 5, scope: !1474, inlinedAt: !1465)
!1518 = !DILocation(line: 94, column: 9, scope: !1519, inlinedAt: !1402)
!1519 = distinct !DILexicalBlock(scope: !1392, file: !363, line: 94, column: 7)
!1520 = !DILocation(line: 94, column: 7, scope: !1392, inlinedAt: !1402)
!1521 = !DILocation(line: 99, column: 30, scope: !1522, inlinedAt: !1402)
!1522 = distinct !DILexicalBlock(scope: !1519, file: !363, line: 97, column: 5)
!1523 = !DILocation(line: 99, column: 14, scope: !1522, inlinedAt: !1402)
!1524 = !DILocation(line: 92, column: 14, scope: !1392, inlinedAt: !1402)
!1525 = !DILocation(line: 95, column: 5, scope: !1519, inlinedAt: !1402)
!1526 = !DILocation(line: 0, scope: !1519, inlinedAt: !1402)
!1527 = !DILocation(line: 101, column: 3, scope: !1392, inlinedAt: !1402)
!1528 = !DILocation(line: 173, column: 51, scope: !401, inlinedAt: !1364)
!1529 = !DILocation(line: 174, column: 18, scope: !401, inlinedAt: !1364)
!1530 = !DILocation(line: 174, column: 27, scope: !401, inlinedAt: !1364)
!1531 = !DILocation(line: 173, column: 11, scope: !401, inlinedAt: !1364)
!1532 = distinct !{!1532, !1531, !1533, !1209, !1534}
!1533 = !DILocation(line: 175, column: 60, scope: !401, inlinedAt: !1364)
!1534 = !{!"llvm.loop.peeled.count", i32 1}
!1535 = !DILocation(line: 85, column: 21, scope: !1398, inlinedAt: !1402)
!1536 = !DILocation(line: 102, column: 1, scope: !1392, inlinedAt: !1402)
!1537 = !DILocation(line: 173, column: 23, scope: !401, inlinedAt: !1364)
!1538 = !DILocation(line: 177, column: 15, scope: !401, inlinedAt: !1364)
!1539 = !DILocalVariable(name: "wc", arg: 1, scope: !1540, file: !76, line: 178, type: !380)
!1540 = distinct !DISubprogram(name: "c32issep", scope: !76, file: !76, line: 178, type: !1541, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1543)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!109, !380}
!1543 = !{!1539}
!1544 = !DILocation(line: 0, scope: !1540, inlinedAt: !1545)
!1545 = distinct !DILocation(line: 179, column: 28, scope: !399, inlinedAt: !1364)
!1546 = !DILocalVariable(name: "wc", arg: 1, scope: !1547, file: !1548, line: 770, type: !1551)
!1547 = distinct !DISubprogram(name: "c32isblank", scope: !1548, file: !1548, line: 770, type: !1549, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1553)
!1548 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!77, !1551}
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1552, line: 20, baseType: !72)
!1552 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1553 = !{!1546}
!1554 = !DILocation(line: 0, scope: !1547, inlinedAt: !1555)
!1555 = distinct !DILocation(line: 181, column: 13, scope: !1540, inlinedAt: !1545)
!1556 = !DILocation(line: 776, column: 10, scope: !1547, inlinedAt: !1555)
!1557 = !DILocation(line: 181, column: 11, scope: !1540, inlinedAt: !1545)
!1558 = !DILocation(line: 0, scope: !399, inlinedAt: !1364)
!1559 = !DILocation(line: 181, column: 19, scope: !399, inlinedAt: !1364)
!1560 = !DILocation(line: 183, column: 19, scope: !403, inlinedAt: !1364)
!1561 = !DILocation(line: 0, scope: !403, inlinedAt: !1364)
!1562 = !DILocation(line: 185, column: 37, scope: !403, inlinedAt: !1364)
!1563 = !DILocation(line: 188, column: 23, scope: !1564, inlinedAt: !1364)
!1564 = distinct !DILexicalBlock(scope: !403, file: !2, line: 188, column: 23)
!1565 = !{i8 0, i8 2}
!1566 = !DILocation(line: 191, column: 23, scope: !403, inlinedAt: !1364)
!1567 = !DILocation(line: 193, column: 32, scope: !1568, inlinedAt: !1364)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !2, line: 193, column: 27)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !2, line: 192, column: 21)
!1570 = distinct !DILexicalBlock(scope: !403, file: !2, line: 191, column: 23)
!1571 = !DILocation(line: 193, column: 27, scope: !1569, inlinedAt: !1364)
!1572 = !DILocation(line: 197, column: 31, scope: !1573, inlinedAt: !1364)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !2, line: 197, column: 31)
!1574 = distinct !DILexicalBlock(scope: !1568, file: !2, line: 194, column: 25)
!1575 = !DILocation(line: 197, column: 31, scope: !1574, inlinedAt: !1364)
!1576 = !DILocalVariable(name: "wc", arg: 1, scope: !1577, file: !1548, line: 1004, type: !380)
!1577 = distinct !DISubprogram(name: "c32width", scope: !1548, file: !1548, line: 1004, type: !1578, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1580)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!77, !380}
!1580 = !{!1576}
!1581 = !DILocation(line: 0, scope: !1577, inlinedAt: !1582)
!1582 = distinct !DILocation(line: 202, column: 37, scope: !1583, inlinedAt: !1364)
!1583 = distinct !DILexicalBlock(scope: !1568, file: !2, line: 201, column: 25)
!1584 = !DILocation(line: 1010, column: 10, scope: !1577, inlinedAt: !1582)
!1585 = !DILocation(line: 202, column: 37, scope: !1583, inlinedAt: !1364)
!1586 = !DILocation(line: 202, column: 34, scope: !1583, inlinedAt: !1364)
!1587 = !DILocation(line: 204, column: 45, scope: !1588, inlinedAt: !1364)
!1588 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 204, column: 31)
!1589 = !DILocation(line: 219, column: 31, scope: !1590, inlinedAt: !1364)
!1590 = distinct !DILexicalBlock(scope: !1583, file: !2, line: 219, column: 31)
!1591 = !DILocalVariable(name: "__c", arg: 1, scope: !1592, file: !1408, line: 101, type: !77)
!1592 = distinct !DISubprogram(name: "putc_unlocked", scope: !1408, file: !1408, line: 101, type: !1593, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1595)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!77, !77, !168}
!1595 = !{!1591, !1596}
!1596 = !DILocalVariable(name: "__stream", arg: 2, scope: !1592, file: !1408, line: 101, type: !168)
!1597 = !DILocation(line: 0, scope: !1592, inlinedAt: !1598)
!1598 = distinct !DILocation(line: 219, column: 31, scope: !1590, inlinedAt: !1364)
!1599 = !DILocation(line: 103, column: 10, scope: !1592, inlinedAt: !1598)
!1600 = !{!1416, !1093, i64 40}
!1601 = !{!1416, !1093, i64 48}
!1602 = !{!"branch_weights", i32 2000, i32 1}
!1603 = !DILocation(line: 219, column: 31, scope: !1583, inlinedAt: !1364)
!1604 = !DILocation(line: 219, column: 51, scope: !1590, inlinedAt: !1364)
!1605 = !DILocation(line: 948, column: 21, scope: !1606, inlinedAt: !1609)
!1606 = distinct !DISubprogram(name: "write_error", scope: !76, file: !76, line: 946, type: !356, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1607)
!1607 = !{!1608}
!1608 = !DILocalVariable(name: "saved_errno", scope: !1606, file: !76, line: 948, type: !77)
!1609 = distinct !DILocation(line: 220, column: 29, scope: !1590, inlinedAt: !1364)
!1610 = !DILocation(line: 0, scope: !1606, inlinedAt: !1609)
!1611 = !DILocation(line: 949, column: 3, scope: !1606, inlinedAt: !1609)
!1612 = !DILocation(line: 950, column: 11, scope: !1606, inlinedAt: !1609)
!1613 = !DILocation(line: 950, column: 3, scope: !1606, inlinedAt: !1609)
!1614 = !DILocation(line: 951, column: 3, scope: !1606, inlinedAt: !1609)
!1615 = !DILocation(line: 952, column: 3, scope: !1606, inlinedAt: !1609)
!1616 = !DILocation(line: 0, scope: !1568, inlinedAt: !1364)
!1617 = !DILocation(line: 226, column: 33, scope: !1569, inlinedAt: !1364)
!1618 = !DILocation(line: 0, scope: !401, inlinedAt: !1364)
!1619 = !DILocation(line: 227, column: 21, scope: !1569, inlinedAt: !1364)
!1620 = !DILocation(line: 228, column: 17, scope: !404, inlinedAt: !1364)
!1621 = !DILocation(line: 229, column: 29, scope: !407, inlinedAt: !1364)
!1622 = !DILocation(line: 229, column: 24, scope: !404, inlinedAt: !1364)
!1623 = !DILocation(line: 233, column: 30, scope: !1624, inlinedAt: !1364)
!1624 = distinct !DILexicalBlock(scope: !407, file: !2, line: 230, column: 17)
!1625 = !DILocation(line: 233, column: 26, scope: !1624, inlinedAt: !1364)
!1626 = !DILocation(line: 235, column: 34, scope: !1624, inlinedAt: !1364)
!1627 = !DILocation(line: 235, column: 33, scope: !1624, inlinedAt: !1364)
!1628 = !DILocation(line: 235, column: 29, scope: !1624, inlinedAt: !1364)
!1629 = !DILocation(line: 236, column: 17, scope: !1624, inlinedAt: !1364)
!1630 = !DILocation(line: 0, scope: !1577, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 239, column: 31, scope: !406, inlinedAt: !1364)
!1632 = !DILocation(line: 1010, column: 10, scope: !1577, inlinedAt: !1631)
!1633 = !DILocation(line: 0, scope: !406, inlinedAt: !1364)
!1634 = !DILocation(line: 240, column: 23, scope: !1635, inlinedAt: !1364)
!1635 = distinct !DILexicalBlock(scope: !406, file: !2, line: 240, column: 23)
!1636 = !DILocation(line: 240, column: 23, scope: !406, inlinedAt: !1364)
!1637 = !DILocation(line: 241, column: 21, scope: !1635, inlinedAt: !1364)
!1638 = !DILocation(line: 0, scope: !404, inlinedAt: !1364)
!1639 = !DILocation(line: 244, column: 19, scope: !412, inlinedAt: !1364)
!1640 = !DILocation(line: 244, column: 19, scope: !399, inlinedAt: !1364)
!1641 = !DILocation(line: 246, column: 31, scope: !1642, inlinedAt: !1364)
!1642 = distinct !DILexicalBlock(scope: !411, file: !2, line: 246, column: 23)
!1643 = !DILocation(line: 246, column: 35, scope: !1642, inlinedAt: !1364)
!1644 = !DILocation(line: 247, column: 38, scope: !1642, inlinedAt: !1364)
!1645 = !DILocation(line: 247, column: 21, scope: !1642, inlinedAt: !1364)
!1646 = !DILocation(line: 248, column: 23, scope: !410, inlinedAt: !1364)
!1647 = !DILocation(line: 248, column: 66, scope: !410, inlinedAt: !1364)
!1648 = !DILocation(line: 248, column: 23, scope: !411, inlinedAt: !1364)
!1649 = !DILocation(line: 948, column: 21, scope: !1606, inlinedAt: !1650)
!1650 = distinct !DILocation(line: 249, column: 21, scope: !410, inlinedAt: !1364)
!1651 = !DILocation(line: 0, scope: !1606, inlinedAt: !1650)
!1652 = !DILocation(line: 949, column: 3, scope: !1606, inlinedAt: !1650)
!1653 = !DILocation(line: 950, column: 11, scope: !1606, inlinedAt: !1650)
!1654 = !DILocation(line: 950, column: 3, scope: !1606, inlinedAt: !1650)
!1655 = !DILocation(line: 951, column: 3, scope: !1606, inlinedAt: !1650)
!1656 = !DILocation(line: 952, column: 3, scope: !1606, inlinedAt: !1650)
!1657 = !DILocation(line: 255, column: 26, scope: !399, inlinedAt: !1364)
!1658 = !DILocation(line: 255, column: 46, scope: !399, inlinedAt: !1364)
!1659 = !DILocation(line: 255, column: 23, scope: !399, inlinedAt: !1364)
!1660 = !DILocation(line: 208, column: 35, scope: !1661, inlinedAt: !1364)
!1661 = distinct !DILexicalBlock(scope: !1588, file: !2, line: 205, column: 29)
!1662 = !DILocation(line: 210, column: 53, scope: !1661, inlinedAt: !1364)
!1663 = !DILocalVariable(name: "g", arg: 2, scope: !1664, file: !363, line: 107, type: !376)
!1664 = distinct !DISubprogram(name: "mbbuf_char_offset", scope: !363, file: !363, line: 107, type: !1665, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1667)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!107, !1373, !376}
!1667 = !{!1668, !1663}
!1668 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1664, file: !363, line: 107, type: !1373)
!1669 = !DILocation(line: 0, scope: !1664, inlinedAt: !1670)
!1670 = distinct !DILocation(line: 211, column: 39, scope: !1661, inlinedAt: !1364)
!1671 = !DILocation(line: 109, column: 21, scope: !1672, inlinedAt: !1670)
!1672 = distinct !DILexicalBlock(scope: !1664, file: !363, line: 109, column: 7)
!1673 = !DILocation(line: 109, column: 7, scope: !1664, inlinedAt: !1670)
!1674 = !DILocation(line: 111, column: 41, scope: !1664, inlinedAt: !1670)
!1675 = !DILocation(line: 111, column: 24, scope: !1664, inlinedAt: !1670)
!1676 = !DILocalVariable(name: "__dest", arg: 1, scope: !1677, file: !1426, line: 26, type: !1680)
!1677 = distinct !DISubprogram(name: "memcpy", scope: !1426, file: !1426, line: 26, type: !1678, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1681)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!108, !1680, !1306, !113}
!1680 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !108)
!1681 = !{!1676, !1682, !1683}
!1682 = !DILocalVariable(name: "__src", arg: 2, scope: !1677, file: !1426, line: 26, type: !1306)
!1683 = !DILocalVariable(name: "__len", arg: 3, scope: !1677, file: !1426, line: 26, type: !113)
!1684 = !DILocation(line: 0, scope: !1677, inlinedAt: !1685)
!1685 = distinct !DILocation(line: 210, column: 31, scope: !1661, inlinedAt: !1364)
!1686 = !DILocation(line: 29, column: 10, scope: !1677, inlinedAt: !1685)
!1687 = !DILocation(line: 212, column: 39, scope: !1661, inlinedAt: !1364)
!1688 = !DILocation(line: 258, column: 15, scope: !401, inlinedAt: !1364)
!1689 = !DILocation(line: 260, column: 15, scope: !1690, inlinedAt: !1364)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !2, line: 259, column: 13)
!1691 = distinct !DILexicalBlock(scope: !401, file: !2, line: 258, column: 15)
!1692 = !DILocation(line: 269, column: 5, scope: !355, inlinedAt: !1364)
!1693 = !DILocation(line: 264, column: 11, scope: !401, inlinedAt: !1364)
!1694 = !DILocation(line: 0, scope: !1664, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 264, column: 11, scope: !401, inlinedAt: !1364)
!1696 = !DILocation(line: 109, column: 21, scope: !1672, inlinedAt: !1695)
!1697 = !DILocation(line: 109, column: 7, scope: !1664, inlinedAt: !1695)
!1698 = !DILocation(line: 111, column: 41, scope: !1664, inlinedAt: !1695)
!1699 = !DILocation(line: 111, column: 24, scope: !1664, inlinedAt: !1695)
!1700 = !DILocation(line: 265, column: 15, scope: !1701, inlinedAt: !1364)
!1701 = distinct !DILexicalBlock(scope: !401, file: !2, line: 265, column: 15)
!1702 = !DILocalVariable(name: "__stream", arg: 1, scope: !1703, file: !1408, line: 135, type: !168)
!1703 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1408, file: !1408, line: 135, type: !1409, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !69, retainedNodes: !1704)
!1704 = !{!1702}
!1705 = !DILocation(line: 0, scope: !1703, inlinedAt: !1706)
!1706 = distinct !DILocation(line: 265, column: 15, scope: !1701, inlinedAt: !1364)
!1707 = !DILocation(line: 137, column: 10, scope: !1703, inlinedAt: !1706)
!1708 = !DILocation(line: 265, column: 15, scope: !401, inlinedAt: !1364)
!1709 = !DILocation(line: 948, column: 21, scope: !1606, inlinedAt: !1710)
!1710 = distinct !DILocation(line: 266, column: 13, scope: !1701, inlinedAt: !1364)
!1711 = !DILocation(line: 0, scope: !1606, inlinedAt: !1710)
!1712 = !DILocation(line: 949, column: 3, scope: !1606, inlinedAt: !1710)
!1713 = !DILocation(line: 950, column: 11, scope: !1606, inlinedAt: !1710)
!1714 = !DILocation(line: 950, column: 3, scope: !1606, inlinedAt: !1710)
!1715 = !DILocation(line: 951, column: 3, scope: !1606, inlinedAt: !1710)
!1716 = !DILocation(line: 952, column: 3, scope: !1606, inlinedAt: !1710)
!1717 = !DILocation(line: 250, column: 27, scope: !411, inlinedAt: !1364)
!1718 = !DILocation(line: 195, column: 34, scope: !1574, inlinedAt: !1364)
!1719 = !DILocation(line: 268, column: 19, scope: !375, inlinedAt: !1364)
!1720 = !DILocation(line: 267, column: 9, scope: !401, inlinedAt: !1364)
!1721 = distinct !{!1721, !1390, !1722, !1209}
!1722 = !DILocation(line: 268, column: 26, scope: !375, inlinedAt: !1364)
!1723 = distinct !{!1723, !1385, !1692}
!1724 = !DILocation(line: 339, column: 3, scope: !1309)
!1725 = !DILocation(line: 341, column: 10, scope: !1309)
!1726 = !DILocation(line: 341, column: 3, scope: !1309)
!1727 = !DISubprogram(name: "bindtextdomain", scope: !1145, file: !1145, line: 86, type: !1728, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!107, !115, !115}
!1730 = !DISubprogram(name: "textdomain", scope: !1145, file: !1145, line: 82, type: !1285, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1731 = !DISubprogram(name: "atexit", scope: !1283, file: !1283, line: 602, type: !1732, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1732 = !DISubroutineType(types: !1733)
!1733 = !{!77, !751}
!1734 = !DISubprogram(name: "getopt_long", scope: !432, file: !432, line: 66, type: !1735, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!77, !77, !1737, !115, !1739, !437}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!1740 = !DISubprogram(name: "__builtin___memmove_chk", scope: !1741, file: !1741, line: 25, type: !1742, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1741 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/strings_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "2c53309439f074d781ca95a346401d78")
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!108, !108, !1307, !111, !111}
!1744 = !DISubprogram(name: "mbrtoc32", scope: !381, file: !381, line: 57, type: !1745, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!113, !1747, !1153, !113, !1749}
!1747 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1748)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1750)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1751 = !DISubprogram(name: "iswblank", scope: !1752, file: !1752, line: 146, type: !1549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1752 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1753 = !DISubprogram(name: "wcwidth", scope: !1754, file: !1754, line: 368, type: !1755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1754 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!77, !1757}
!1757 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !114, line: 74, baseType: !72)
!1758 = !DISubprogram(name: "__overflow", scope: !714, file: !714, line: 886, type: !1759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!77, !168, !77}
!1761 = !DISubprogram(name: "__errno_location", scope: !1762, file: !1762, line: 37, type: !1763, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1762 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!437}
!1765 = !DISubprogram(name: "fflush_unlocked", scope: !714, file: !714, line: 239, type: !1409, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1766 = !DISubprogram(name: "clearerr_unlocked", scope: !714, file: !714, line: 794, type: !1767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{null, !168}
!1769 = !DISubprogram(name: "free", scope: !1283, file: !1283, line: 555, type: !1770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{null, !108}
!1772 = distinct !DISubprogram(name: "add_tab_stop", scope: !442, file: !442, line: 84, type: !1773, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1775)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{null, !388}
!1775 = !{!1776, !1777, !1778}
!1776 = !DILocalVariable(name: "tabval", arg: 1, scope: !1772, file: !442, line: 84, type: !388)
!1777 = !DILocalVariable(name: "prev_column", scope: !1772, file: !442, line: 86, type: !388)
!1778 = !DILocalVariable(name: "column_width", scope: !1772, file: !442, line: 87, type: !388)
!1779 = !DILocation(line: 0, scope: !1772)
!1780 = !DILocation(line: 86, column: 23, scope: !1772)
!1781 = !DILocation(line: 86, column: 40, scope: !1772)
!1782 = !DILocation(line: 86, column: 64, scope: !1772)
!1783 = !DILocation(line: 89, column: 25, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1772, file: !442, line: 89, column: 7)
!1785 = !DILocation(line: 89, column: 22, scope: !1784)
!1786 = !DILocation(line: 89, column: 7, scope: !1772)
!1787 = !DILocation(line: 90, column: 16, scope: !1784)
!1788 = !DILocation(line: 90, column: 14, scope: !1784)
!1789 = !DILocation(line: 91, column: 26, scope: !1772)
!1790 = !DILocation(line: 90, column: 5, scope: !1784)
!1791 = !DILocation(line: 91, column: 3, scope: !1772)
!1792 = !DILocation(line: 87, column: 36, scope: !1772)
!1793 = !DILocation(line: 87, column: 24, scope: !1772)
!1794 = !DILocation(line: 91, column: 30, scope: !1772)
!1795 = !DILocalVariable(name: "width", arg: 1, scope: !1796, file: !442, line: 73, type: !388)
!1796 = distinct !DISubprogram(name: "set_max_column_width", scope: !442, file: !442, line: 73, type: !1773, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1797)
!1797 = !{!1795}
!1798 = !DILocation(line: 0, scope: !1796, inlinedAt: !1799)
!1799 = distinct !DILocation(line: 93, column: 3, scope: !1772)
!1800 = !DILocation(line: 75, column: 7, scope: !1801, inlinedAt: !1799)
!1801 = distinct !DILexicalBlock(scope: !1796, file: !442, line: 75, column: 7)
!1802 = !DILocation(line: 75, column: 24, scope: !1801, inlinedAt: !1799)
!1803 = !DILocation(line: 75, column: 7, scope: !1796, inlinedAt: !1799)
!1804 = !DILocation(line: 77, column: 11, scope: !1805, inlinedAt: !1799)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !442, line: 77, column: 11)
!1806 = distinct !DILexicalBlock(scope: !1801, file: !442, line: 76, column: 5)
!1807 = !DILocation(line: 94, column: 1, scope: !1772)
!1808 = distinct !DISubprogram(name: "parse_tab_stops", scope: !442, file: !442, line: 137, type: !1114, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1809)
!1809 = !{!1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1828}
!1810 = !DILocalVariable(name: "stops", arg: 1, scope: !1808, file: !442, line: 137, type: !115)
!1811 = !DILocalVariable(name: "have_tabval", scope: !1808, file: !442, line: 139, type: !109)
!1812 = !DILocalVariable(name: "tabval", scope: !1808, file: !442, line: 140, type: !388)
!1813 = !DILocalVariable(name: "extend_tabval", scope: !1808, file: !442, line: 141, type: !109)
!1814 = !DILocalVariable(name: "increment_tabval", scope: !1808, file: !442, line: 142, type: !109)
!1815 = !DILocalVariable(name: "num_start", scope: !1808, file: !442, line: 143, type: !115)
!1816 = !DILocalVariable(name: "ok", scope: !1808, file: !442, line: 144, type: !109)
!1817 = !DILocalVariable(name: "len", scope: !1818, file: !442, line: 207, type: !369)
!1818 = distinct !DILexicalBlock(scope: !1819, file: !442, line: 206, column: 13)
!1819 = distinct !DILexicalBlock(scope: !1820, file: !442, line: 205, column: 15)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !442, line: 196, column: 9)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !442, line: 195, column: 16)
!1822 = distinct !DILexicalBlock(scope: !1823, file: !442, line: 184, column: 16)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !442, line: 173, column: 16)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !442, line: 148, column: 11)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !442, line: 147, column: 5)
!1826 = distinct !DILexicalBlock(scope: !1827, file: !442, line: 146, column: 3)
!1827 = distinct !DILexicalBlock(scope: !1808, file: !442, line: 146, column: 3)
!1828 = !DILocalVariable(name: "bad_num", scope: !1818, file: !442, line: 208, type: !107)
!1829 = !DILocation(line: 0, scope: !1808)
!1830 = !DILocation(line: 146, column: 3, scope: !1808)
!1831 = !DILocation(line: 140, column: 9, scope: !1808)
!1832 = !DILocation(line: 143, column: 15, scope: !1808)
!1833 = !DILocation(line: 146, column: 10, scope: !1826)
!1834 = !DILocation(line: 146, column: 3, scope: !1827)
!1835 = !DILocation(line: 148, column: 28, scope: !1824)
!1836 = !DILocation(line: 148, column: 11, scope: !1825)
!1837 = !DILocation(line: 150, column: 15, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1824, file: !442, line: 149, column: 9)
!1839 = !DILocation(line: 152, column: 19, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !442, line: 151, column: 13)
!1841 = distinct !DILexicalBlock(scope: !1838, file: !442, line: 150, column: 15)
!1842 = !DILocalVariable(name: "tabval", arg: 1, scope: !1843, file: !442, line: 97, type: !388)
!1843 = distinct !DISubprogram(name: "set_extend_size", scope: !442, file: !442, line: 97, type: !1844, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1846)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{!109, !388}
!1846 = !{!1842, !1847}
!1847 = !DILocalVariable(name: "ok", scope: !1843, file: !442, line: 99, type: !109)
!1848 = !DILocation(line: 0, scope: !1843, inlinedAt: !1849)
!1849 = distinct !DILocation(line: 154, column: 25, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1851, file: !442, line: 154, column: 23)
!1851 = distinct !DILexicalBlock(scope: !1852, file: !442, line: 153, column: 17)
!1852 = distinct !DILexicalBlock(scope: !1840, file: !442, line: 152, column: 19)
!1853 = !DILocation(line: 101, column: 7, scope: !1854, inlinedAt: !1849)
!1854 = distinct !DILexicalBlock(scope: !1843, file: !442, line: 101, column: 7)
!1855 = !DILocation(line: 101, column: 7, scope: !1843, inlinedAt: !1849)
!1856 = !DILocation(line: 103, column: 7, scope: !1857, inlinedAt: !1849)
!1857 = distinct !DILexicalBlock(scope: !1854, file: !442, line: 102, column: 5)
!1858 = !DILocation(line: 107, column: 5, scope: !1857, inlinedAt: !1849)
!1859 = !DILocation(line: 108, column: 15, scope: !1843, inlinedAt: !1849)
!1860 = !DILocation(line: 0, scope: !1796, inlinedAt: !1861)
!1861 = distinct !DILocation(line: 110, column: 3, scope: !1843, inlinedAt: !1849)
!1862 = !DILocation(line: 75, column: 7, scope: !1801, inlinedAt: !1861)
!1863 = !DILocation(line: 75, column: 24, scope: !1801, inlinedAt: !1861)
!1864 = !DILocation(line: 75, column: 7, scope: !1796, inlinedAt: !1861)
!1865 = !DILocation(line: 77, column: 11, scope: !1805, inlinedAt: !1861)
!1866 = !DILocation(line: 154, column: 23, scope: !1851)
!1867 = !DILocation(line: 160, column: 24, scope: !1852)
!1868 = !DILocalVariable(name: "tabval", arg: 1, scope: !1869, file: !442, line: 116, type: !388)
!1869 = distinct !DISubprogram(name: "set_increment_size", scope: !442, file: !442, line: 116, type: !1844, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1870)
!1870 = !{!1868, !1871}
!1871 = !DILocalVariable(name: "ok", scope: !1869, file: !442, line: 118, type: !109)
!1872 = !DILocation(line: 0, scope: !1869, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 162, column: 25, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !442, line: 162, column: 23)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !442, line: 161, column: 17)
!1876 = distinct !DILexicalBlock(scope: !1852, file: !442, line: 160, column: 24)
!1877 = !DILocation(line: 120, column: 7, scope: !1878, inlinedAt: !1873)
!1878 = distinct !DILexicalBlock(scope: !1869, file: !442, line: 120, column: 7)
!1879 = !DILocation(line: 120, column: 7, scope: !1869, inlinedAt: !1873)
!1880 = !DILocation(line: 122, column: 7, scope: !1881, inlinedAt: !1873)
!1881 = distinct !DILexicalBlock(scope: !1878, file: !442, line: 121, column: 5)
!1882 = !DILocation(line: 126, column: 5, scope: !1881, inlinedAt: !1873)
!1883 = !DILocation(line: 127, column: 18, scope: !1869, inlinedAt: !1873)
!1884 = !DILocation(line: 0, scope: !1796, inlinedAt: !1885)
!1885 = distinct !DILocation(line: 129, column: 3, scope: !1869, inlinedAt: !1873)
!1886 = !DILocation(line: 75, column: 7, scope: !1801, inlinedAt: !1885)
!1887 = !DILocation(line: 75, column: 24, scope: !1801, inlinedAt: !1885)
!1888 = !DILocation(line: 75, column: 7, scope: !1796, inlinedAt: !1885)
!1889 = !DILocation(line: 77, column: 11, scope: !1805, inlinedAt: !1885)
!1890 = !DILocation(line: 162, column: 23, scope: !1875)
!1891 = !DILocation(line: 0, scope: !1772, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 169, column: 17, scope: !1876)
!1893 = !DILocation(line: 86, column: 23, scope: !1772, inlinedAt: !1892)
!1894 = !DILocation(line: 86, column: 64, scope: !1772, inlinedAt: !1892)
!1895 = !DILocation(line: 86, column: 40, scope: !1772, inlinedAt: !1892)
!1896 = !DILocation(line: 89, column: 25, scope: !1784, inlinedAt: !1892)
!1897 = !DILocation(line: 89, column: 22, scope: !1784, inlinedAt: !1892)
!1898 = !DILocation(line: 89, column: 7, scope: !1772, inlinedAt: !1892)
!1899 = !DILocation(line: 90, column: 16, scope: !1784, inlinedAt: !1892)
!1900 = !DILocation(line: 90, column: 14, scope: !1784, inlinedAt: !1892)
!1901 = !DILocation(line: 91, column: 26, scope: !1772, inlinedAt: !1892)
!1902 = !DILocation(line: 90, column: 5, scope: !1784, inlinedAt: !1892)
!1903 = !DILocation(line: 91, column: 3, scope: !1772, inlinedAt: !1892)
!1904 = !DILocation(line: 87, column: 36, scope: !1772, inlinedAt: !1892)
!1905 = !DILocation(line: 87, column: 24, scope: !1772, inlinedAt: !1892)
!1906 = !DILocation(line: 91, column: 30, scope: !1772, inlinedAt: !1892)
!1907 = !DILocation(line: 0, scope: !1796, inlinedAt: !1908)
!1908 = distinct !DILocation(line: 93, column: 3, scope: !1772, inlinedAt: !1892)
!1909 = !DILocation(line: 75, column: 7, scope: !1801, inlinedAt: !1908)
!1910 = !DILocation(line: 75, column: 24, scope: !1801, inlinedAt: !1908)
!1911 = !DILocation(line: 75, column: 7, scope: !1796, inlinedAt: !1908)
!1912 = !DILocation(line: 77, column: 11, scope: !1805, inlinedAt: !1908)
!1913 = !DILocation(line: 173, column: 16, scope: !1824)
!1914 = !DILocation(line: 175, column: 15, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1823, file: !442, line: 174, column: 9)
!1916 = !DILocation(line: 177, column: 15, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !442, line: 176, column: 13)
!1918 = distinct !DILexicalBlock(scope: !1915, file: !442, line: 175, column: 15)
!1919 = !DILocation(line: 180, column: 13, scope: !1917)
!1920 = !DILocation(line: 186, column: 15, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1822, file: !442, line: 185, column: 9)
!1922 = !DILocation(line: 188, column: 15, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !442, line: 187, column: 13)
!1924 = distinct !DILexicalBlock(scope: !1921, file: !442, line: 186, column: 15)
!1925 = !DILocation(line: 191, column: 13, scope: !1923)
!1926 = !DILocation(line: 173, column: 16, scope: !1823)
!1927 = !DILocalVariable(name: "c", arg: 1, scope: !1928, file: !1929, line: 233, type: !77)
!1928 = distinct !DISubprogram(name: "c_isdigit", scope: !1929, file: !1929, line: 233, type: !1930, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1932)
!1929 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!109, !77}
!1932 = !{!1927}
!1933 = !DILocation(line: 0, scope: !1928, inlinedAt: !1934)
!1934 = distinct !DILocation(line: 195, column: 16, scope: !1821)
!1935 = !DILocation(line: 235, column: 3, scope: !1928, inlinedAt: !1934)
!1936 = !DILocation(line: 195, column: 16, scope: !1822)
!1937 = !DILocation(line: 197, column: 15, scope: !1820)
!1938 = !DILocation(line: 205, column: 16, scope: !1819)
!1939 = !DILocation(line: 205, column: 15, scope: !1820)
!1940 = !DILocation(line: 207, column: 27, scope: !1818)
!1941 = !DILocation(line: 0, scope: !1818)
!1942 = !DILocation(line: 208, column: 31, scope: !1818)
!1943 = !DILocation(line: 209, column: 15, scope: !1818)
!1944 = !DILocation(line: 210, column: 15, scope: !1818)
!1945 = !DILocation(line: 212, column: 33, scope: !1818)
!1946 = !DILocation(line: 212, column: 39, scope: !1818)
!1947 = !DILocation(line: 213, column: 13, scope: !1818)
!1948 = !DILocation(line: 217, column: 11, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1821, file: !442, line: 216, column: 9)
!1950 = !DILocation(line: 220, column: 11, scope: !1949)
!1951 = !DILocation(line: 146, column: 23, scope: !1826)
!1952 = !DILocation(line: 146, column: 3, scope: !1826)
!1953 = distinct !{!1953, !1834, !1954, !1209}
!1954 = !DILocation(line: 222, column: 5, scope: !1827)
!1955 = !DILocation(line: 224, column: 10, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1808, file: !442, line: 224, column: 7)
!1957 = !DILocation(line: 226, column: 11, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1956, file: !442, line: 225, column: 5)
!1959 = !DILocation(line: 0, scope: !1843, inlinedAt: !1960)
!1960 = distinct !DILocation(line: 227, column: 15, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1958, file: !442, line: 226, column: 11)
!1962 = !DILocation(line: 101, column: 7, scope: !1854, inlinedAt: !1960)
!1963 = !DILocation(line: 101, column: 7, scope: !1843, inlinedAt: !1960)
!1964 = !DILocation(line: 108, column: 15, scope: !1843, inlinedAt: !1960)
!1965 = !DILocation(line: 0, scope: !1796, inlinedAt: !1966)
!1966 = distinct !DILocation(line: 110, column: 3, scope: !1843, inlinedAt: !1960)
!1967 = !DILocation(line: 75, column: 7, scope: !1801, inlinedAt: !1966)
!1968 = !DILocation(line: 75, column: 24, scope: !1801, inlinedAt: !1966)
!1969 = !DILocation(line: 75, column: 7, scope: !1796, inlinedAt: !1966)
!1970 = !DILocation(line: 103, column: 7, scope: !1857, inlinedAt: !1960)
!1971 = !DILocation(line: 77, column: 11, scope: !1805, inlinedAt: !1966)
!1972 = !DILocation(line: 234, column: 7, scope: !1808)
!1973 = !DILocation(line: 228, column: 16, scope: !1961)
!1974 = !DILocation(line: 0, scope: !1869, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 229, column: 15, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1961, file: !442, line: 228, column: 16)
!1977 = !DILocation(line: 120, column: 7, scope: !1878, inlinedAt: !1975)
!1978 = !DILocation(line: 120, column: 7, scope: !1869, inlinedAt: !1975)
!1979 = !DILocation(line: 127, column: 18, scope: !1869, inlinedAt: !1975)
!1980 = !DILocation(line: 0, scope: !1796, inlinedAt: !1981)
!1981 = distinct !DILocation(line: 129, column: 3, scope: !1869, inlinedAt: !1975)
!1982 = !DILocation(line: 75, column: 7, scope: !1801, inlinedAt: !1981)
!1983 = !DILocation(line: 75, column: 24, scope: !1801, inlinedAt: !1981)
!1984 = !DILocation(line: 75, column: 7, scope: !1796, inlinedAt: !1981)
!1985 = !DILocation(line: 122, column: 7, scope: !1881, inlinedAt: !1975)
!1986 = !DILocation(line: 77, column: 11, scope: !1805, inlinedAt: !1981)
!1987 = !DILocation(line: 0, scope: !1772, inlinedAt: !1988)
!1988 = distinct !DILocation(line: 231, column: 9, scope: !1976)
!1989 = !DILocation(line: 86, column: 23, scope: !1772, inlinedAt: !1988)
!1990 = !DILocation(line: 86, column: 64, scope: !1772, inlinedAt: !1988)
!1991 = !DILocation(line: 86, column: 40, scope: !1772, inlinedAt: !1988)
!1992 = !DILocation(line: 89, column: 25, scope: !1784, inlinedAt: !1988)
!1993 = !DILocation(line: 89, column: 22, scope: !1784, inlinedAt: !1988)
!1994 = !DILocation(line: 89, column: 7, scope: !1772, inlinedAt: !1988)
!1995 = !DILocation(line: 90, column: 16, scope: !1784, inlinedAt: !1988)
!1996 = !DILocation(line: 90, column: 14, scope: !1784, inlinedAt: !1988)
!1997 = !DILocation(line: 91, column: 26, scope: !1772, inlinedAt: !1988)
!1998 = !DILocation(line: 90, column: 5, scope: !1784, inlinedAt: !1988)
!1999 = !DILocation(line: 91, column: 3, scope: !1772, inlinedAt: !1988)
!2000 = !DILocation(line: 87, column: 36, scope: !1772, inlinedAt: !1988)
!2001 = !DILocation(line: 87, column: 24, scope: !1772, inlinedAt: !1988)
!2002 = !DILocation(line: 91, column: 30, scope: !1772, inlinedAt: !1988)
!2003 = !DILocation(line: 0, scope: !1796, inlinedAt: !2004)
!2004 = distinct !DILocation(line: 93, column: 3, scope: !1772, inlinedAt: !1988)
!2005 = !DILocation(line: 75, column: 7, scope: !1801, inlinedAt: !2004)
!2006 = !DILocation(line: 75, column: 24, scope: !1801, inlinedAt: !2004)
!2007 = !DILocation(line: 75, column: 7, scope: !1796, inlinedAt: !2004)
!2008 = !DILocation(line: 235, column: 5, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !1808, file: !442, line: 234, column: 7)
!2010 = !DILocation(line: 0, scope: !1961)
!2011 = !DILocation(line: 236, column: 1, scope: !1808)
!2012 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !442, file: !442, line: 268, type: !356, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1101)
!2013 = !DILocation(line: 270, column: 23, scope: !2012)
!2014 = !DILocation(line: 270, column: 33, scope: !2012)
!2015 = !DILocalVariable(name: "tabs", arg: 1, scope: !2016, file: !442, line: 242, type: !2019)
!2016 = distinct !DISubprogram(name: "validate_tab_stops", scope: !442, file: !442, line: 242, type: !2017, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !2021)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{null, !2019, !369}
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!2021 = !{!2015, !2022, !2023, !2024}
!2022 = !DILocalVariable(name: "entries", arg: 2, scope: !2016, file: !442, line: 242, type: !369)
!2023 = !DILocalVariable(name: "prev_tab", scope: !2016, file: !442, line: 244, type: !388)
!2024 = !DILocalVariable(name: "i", scope: !2025, file: !442, line: 246, type: !369)
!2025 = distinct !DILexicalBlock(scope: !2016, file: !442, line: 246, column: 3)
!2026 = !DILocation(line: 0, scope: !2016, inlinedAt: !2027)
!2027 = distinct !DILocation(line: 270, column: 3, scope: !2012)
!2028 = !DILocation(line: 0, scope: !2025, inlinedAt: !2027)
!2029 = !DILocation(line: 246, column: 23, scope: !2030, inlinedAt: !2027)
!2030 = distinct !DILexicalBlock(scope: !2025, file: !442, line: 246, column: 3)
!2031 = !DILocation(line: 246, column: 3, scope: !2025, inlinedAt: !2027)
!2032 = !DILocation(line: 246, column: 35, scope: !2030, inlinedAt: !2027)
!2033 = distinct !{!2033, !2031, !2034, !1209}
!2034 = !DILocation(line: 253, column: 5, scope: !2025, inlinedAt: !2027)
!2035 = !DILocation(line: 255, column: 7, scope: !2036, inlinedAt: !2027)
!2036 = distinct !DILexicalBlock(scope: !2016, file: !442, line: 255, column: 7)
!2037 = !DILocation(line: 255, column: 22, scope: !2036, inlinedAt: !2027)
!2038 = !DILocation(line: 248, column: 11, scope: !2039, inlinedAt: !2027)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !442, line: 248, column: 11)
!2040 = distinct !DILexicalBlock(scope: !2030, file: !442, line: 247, column: 5)
!2041 = !DILocation(line: 248, column: 19, scope: !2039, inlinedAt: !2027)
!2042 = !DILocation(line: 248, column: 11, scope: !2040, inlinedAt: !2027)
!2043 = !DILocation(line: 249, column: 9, scope: !2039, inlinedAt: !2027)
!2044 = !DILocation(line: 250, column: 19, scope: !2045, inlinedAt: !2027)
!2045 = distinct !DILexicalBlock(scope: !2040, file: !442, line: 250, column: 11)
!2046 = !DILocation(line: 250, column: 11, scope: !2040, inlinedAt: !2027)
!2047 = !DILocation(line: 251, column: 9, scope: !2045, inlinedAt: !2027)
!2048 = !DILocation(line: 256, column: 5, scope: !2036, inlinedAt: !2027)
!2049 = !DILocation(line: 272, column: 22, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2012, file: !442, line: 272, column: 7)
!2051 = !DILocation(line: 272, column: 7, scope: !2012)
!2052 = !DILocation(line: 273, column: 35, scope: !2050)
!2053 = !DILocation(line: 273, column: 33, scope: !2050)
!2054 = !DILocation(line: 273, column: 5, scope: !2050)
!2055 = !DILocation(line: 276, column: 27, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2050, file: !442, line: 276, column: 12)
!2057 = !DILocation(line: 276, column: 32, scope: !2056)
!2058 = !DILocation(line: 277, column: 16, scope: !2056)
!2059 = !DILocation(line: 277, column: 5, scope: !2056)
!2060 = !DILocation(line: 0, scope: !2050)
!2061 = !DILocation(line: 280, column: 1, scope: !2012)
!2062 = distinct !DISubprogram(name: "get_next_tab_column", scope: !442, file: !442, line: 288, type: !2063, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !2066)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{!388, !388, !1046, !2065}
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2066 = !{!2067, !2068, !2069, !2070, !2071, !2077, !2081}
!2067 = !DILocalVariable(name: "column", arg: 1, scope: !2062, file: !442, line: 288, type: !388)
!2068 = !DILocalVariable(name: "tab_index", arg: 2, scope: !2062, file: !442, line: 288, type: !1046)
!2069 = !DILocalVariable(name: "last_tab", arg: 3, scope: !2062, file: !442, line: 288, type: !2065)
!2070 = !DILocalVariable(name: "tab_distance", scope: !2062, file: !442, line: 291, type: !388)
!2071 = !DILocalVariable(name: "tab", scope: !2072, file: !442, line: 302, type: !388)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !442, line: 301, column: 9)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !442, line: 300, column: 7)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !442, line: 300, column: 7)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !442, line: 297, column: 5)
!2076 = distinct !DILexicalBlock(scope: !2062, file: !442, line: 294, column: 7)
!2077 = !DILocalVariable(name: "end_tab", scope: !2078, file: !442, line: 314, type: !388)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !442, line: 311, column: 9)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !442, line: 310, column: 16)
!2080 = distinct !DILexicalBlock(scope: !2075, file: !442, line: 308, column: 11)
!2081 = !DILocalVariable(name: "tab_stop", scope: !2062, file: !442, line: 324, type: !388)
!2082 = !DILocation(line: 0, scope: !2062)
!2083 = !DILocation(line: 290, column: 13, scope: !2062)
!2084 = !DILocation(line: 294, column: 7, scope: !2076)
!2085 = !DILocation(line: 294, column: 7, scope: !2062)
!2086 = !DILocation(line: 300, column: 26, scope: !2073)
!2087 = !DILocation(line: 300, column: 7, scope: !2074)
!2088 = !DILocation(line: 295, column: 38, scope: !2076)
!2089 = !DILocation(line: 295, column: 29, scope: !2076)
!2090 = !DILocation(line: 295, column: 5, scope: !2076)
!2091 = !DILocation(line: 302, column: 23, scope: !2072)
!2092 = !DILocation(line: 0, scope: !2072)
!2093 = !DILocation(line: 303, column: 22, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2072, file: !442, line: 303, column: 15)
!2095 = !DILocation(line: 300, column: 57, scope: !2073)
!2096 = distinct !{!2096, !2087, !2097, !1209}
!2097 = !DILocation(line: 305, column: 9, scope: !2074)
!2098 = !DILocation(line: 308, column: 11, scope: !2080)
!2099 = !DILocation(line: 308, column: 11, scope: !2075)
!2100 = !DILocation(line: 309, column: 45, scope: !2080)
!2101 = !DILocation(line: 309, column: 36, scope: !2080)
!2102 = !DILocation(line: 309, column: 9, scope: !2080)
!2103 = !DILocation(line: 310, column: 16, scope: !2079)
!2104 = !DILocation(line: 310, column: 16, scope: !2080)
!2105 = !DILocation(line: 314, column: 27, scope: !2078)
!2106 = !DILocation(line: 314, column: 51, scope: !2078)
!2107 = !DILocation(line: 0, scope: !2078)
!2108 = !DILocation(line: 315, column: 52, scope: !2078)
!2109 = !DILocation(line: 315, column: 63, scope: !2078)
!2110 = !DILocation(line: 315, column: 41, scope: !2078)
!2111 = !DILocation(line: 316, column: 9, scope: !2078)
!2112 = !DILocation(line: 319, column: 21, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2079, file: !442, line: 318, column: 9)
!2114 = !DILocation(line: 0, scope: !2076)
!2115 = !DILocation(line: 325, column: 7, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2062, file: !442, line: 325, column: 7)
!2117 = !DILocation(line: 325, column: 7, scope: !2062)
!2118 = !DILocation(line: 326, column: 5, scope: !2116)
!2119 = !DILocation(line: 328, column: 1, scope: !2062)
!2120 = distinct !DISubprogram(name: "set_file_list", scope: !442, file: !442, line: 333, type: !2121, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !2123)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{null, !593}
!2123 = !{!2124}
!2124 = !DILocalVariable(name: "list", arg: 1, scope: !2120, file: !442, line: 333, type: !593)
!2125 = !DILocation(line: 0, scope: !2120)
!2126 = !DILocation(line: 335, column: 19, scope: !2120)
!2127 = !DILocation(line: 337, column: 8, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2120, file: !442, line: 337, column: 7)
!2129 = !DILocation(line: 0, scope: !2128)
!2130 = !DILocation(line: 341, column: 1, scope: !2120)
!2131 = !DILocation(line: 0, scope: !494)
!2132 = !DILocation(line: 354, column: 7, scope: !536)
!2133 = !DILocation(line: 354, column: 7, scope: !494)
!2134 = !DILocation(line: 356, column: 17, scope: !535)
!2135 = !DILocation(line: 0, scope: !535)
!2136 = !DILocalVariable(name: "__stream", arg: 1, scope: !2137, file: !1408, line: 135, type: !497)
!2137 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1408, file: !1408, line: 135, type: !2138, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !2140)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!77, !497}
!2140 = !{!2136}
!2141 = !DILocation(line: 0, scope: !2137, inlinedAt: !2142)
!2142 = distinct !DILocation(line: 357, column: 12, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !535, file: !442, line: 357, column: 11)
!2144 = !DILocation(line: 137, column: 10, scope: !2137, inlinedAt: !2142)
!2145 = !DILocation(line: 357, column: 12, scope: !2143)
!2146 = !DILocation(line: 357, column: 11, scope: !535)
!2147 = !DILocation(line: 359, column: 18, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !535, file: !442, line: 359, column: 11)
!2149 = !DILocalVariable(name: "__s1", arg: 1, scope: !2150, file: !1175, line: 1359, type: !115)
!2150 = distinct !DISubprogram(name: "streq", scope: !1175, file: !1175, line: 1359, type: !1176, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !2151)
!2151 = !{!2149, !2152}
!2152 = !DILocalVariable(name: "__s2", arg: 2, scope: !2150, file: !1175, line: 1359, type: !115)
!2153 = !DILocation(line: 0, scope: !2150, inlinedAt: !2154)
!2154 = distinct !DILocation(line: 359, column: 11, scope: !2148)
!2155 = !DILocation(line: 1361, column: 11, scope: !2150, inlinedAt: !2154)
!2156 = !DILocation(line: 1361, column: 10, scope: !2150, inlinedAt: !2154)
!2157 = !DILocation(line: 359, column: 11, scope: !535)
!2158 = !DILocation(line: 360, column: 9, scope: !2148)
!2159 = !DILocation(line: 361, column: 16, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2148, file: !442, line: 361, column: 16)
!2161 = !DILocation(line: 361, column: 28, scope: !2160)
!2162 = !DILocation(line: 361, column: 16, scope: !2148)
!2163 = !DILocation(line: 362, column: 15, scope: !2160)
!2164 = !DILocation(line: 362, column: 9, scope: !2160)
!2165 = !DILocation(line: 363, column: 11, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !535, file: !442, line: 363, column: 11)
!2167 = !DILocation(line: 363, column: 11, scope: !535)
!2168 = !DILocation(line: 365, column: 11, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2166, file: !442, line: 364, column: 9)
!2170 = !DILocation(line: 366, column: 23, scope: !2169)
!2171 = !DILocation(line: 367, column: 9, scope: !2169)
!2172 = !DILocation(line: 370, column: 28, scope: !494)
!2173 = !DILocation(line: 370, column: 18, scope: !494)
!2174 = !DILocation(line: 370, column: 32, scope: !494)
!2175 = !DILocation(line: 370, column: 3, scope: !494)
!2176 = !DILocation(line: 0, scope: !2150, inlinedAt: !2177)
!2177 = distinct !DILocation(line: 372, column: 11, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2179, file: !442, line: 372, column: 11)
!2179 = distinct !DILexicalBlock(scope: !494, file: !442, line: 371, column: 5)
!2180 = !DILocation(line: 1361, column: 11, scope: !2150, inlinedAt: !2177)
!2181 = !DILocation(line: 1361, column: 10, scope: !2150, inlinedAt: !2177)
!2182 = !DILocation(line: 372, column: 11, scope: !2179)
!2183 = !DILocation(line: 374, column: 27, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2178, file: !442, line: 373, column: 9)
!2185 = !DILocation(line: 375, column: 16, scope: !2184)
!2186 = !DILocation(line: 376, column: 9, scope: !2184)
!2187 = !DILocation(line: 378, column: 14, scope: !2178)
!2188 = !DILocation(line: 0, scope: !2178)
!2189 = !DILocation(line: 379, column: 11, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !2179, file: !442, line: 379, column: 11)
!2191 = !DILocation(line: 379, column: 11, scope: !2179)
!2192 = !DILocation(line: 381, column: 21, scope: !2193)
!2193 = distinct !DILexicalBlock(scope: !2190, file: !442, line: 380, column: 9)
!2194 = !DILocation(line: 382, column: 11, scope: !2193)
!2195 = !DILocation(line: 383, column: 11, scope: !2193)
!2196 = !DILocation(line: 385, column: 7, scope: !2179)
!2197 = !DILocation(line: 386, column: 19, scope: !2179)
!2198 = distinct !{!2198, !2175, !2199, !1209}
!2199 = !DILocation(line: 387, column: 5, scope: !494)
!2200 = !DILocation(line: 389, column: 1, scope: !494)
!2201 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !442, file: !442, line: 393, type: !356, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !1101)
!2202 = !DILocation(line: 395, column: 9, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2201, file: !442, line: 395, column: 9)
!2204 = !DILocation(line: 395, column: 25, scope: !2203)
!2205 = !DILocation(line: 395, column: 36, scope: !2203)
!2206 = !DILocation(line: 395, column: 28, scope: !2203)
!2207 = !DILocation(line: 395, column: 43, scope: !2203)
!2208 = !DILocation(line: 395, column: 9, scope: !2201)
!2209 = !DILocation(line: 396, column: 7, scope: !2203)
!2210 = !DILocation(line: 397, column: 1, scope: !2201)
!2211 = distinct !DISubprogram(name: "emit_tab_list_info", scope: !442, file: !442, line: 402, type: !1114, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !441, retainedNodes: !2212)
!2212 = !{!2213}
!2213 = !DILocalVariable(name: "program", arg: 1, scope: !2211, file: !442, line: 402, type: !115)
!2214 = !DILocation(line: 0, scope: !2211)
!2215 = !DILocation(line: 405, column: 20, scope: !2211)
!2216 = !DILocation(line: 0, scope: !596, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 405, column: 3, scope: !2211)
!2218 = !DILocation(line: 581, column: 7, scope: !603, inlinedAt: !2217)
!2219 = !DILocation(line: 581, column: 19, scope: !603, inlinedAt: !2217)
!2220 = !DILocation(line: 581, column: 7, scope: !596, inlinedAt: !2217)
!2221 = !DILocation(line: 585, column: 26, scope: !602, inlinedAt: !2217)
!2222 = !DILocation(line: 0, scope: !602, inlinedAt: !2217)
!2223 = !DILocation(line: 586, column: 23, scope: !602, inlinedAt: !2217)
!2224 = !DILocation(line: 586, column: 28, scope: !602, inlinedAt: !2217)
!2225 = !DILocation(line: 586, column: 32, scope: !602, inlinedAt: !2217)
!2226 = !DILocation(line: 586, column: 38, scope: !602, inlinedAt: !2217)
!2227 = !DILocation(line: 0, scope: !2150, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 586, column: 41, scope: !602, inlinedAt: !2217)
!2229 = !DILocation(line: 1361, column: 11, scope: !2150, inlinedAt: !2228)
!2230 = !DILocation(line: 1361, column: 10, scope: !2150, inlinedAt: !2228)
!2231 = !DILocation(line: 586, column: 19, scope: !602, inlinedAt: !2217)
!2232 = !DILocation(line: 587, column: 5, scope: !602, inlinedAt: !2217)
!2233 = !DILocation(line: 588, column: 7, scope: !2234, inlinedAt: !2217)
!2234 = distinct !DILexicalBlock(scope: !596, file: !76, line: 588, column: 7)
!2235 = !DILocation(line: 588, column: 7, scope: !596, inlinedAt: !2217)
!2236 = !DILocation(line: 590, column: 7, scope: !2237, inlinedAt: !2217)
!2237 = distinct !DILexicalBlock(scope: !2234, file: !76, line: 589, column: 5)
!2238 = !DILocation(line: 591, column: 7, scope: !2237, inlinedAt: !2217)
!2239 = !DILocation(line: 595, column: 37, scope: !596, inlinedAt: !2217)
!2240 = !DILocation(line: 595, column: 35, scope: !596, inlinedAt: !2217)
!2241 = !DILocation(line: 596, column: 29, scope: !596, inlinedAt: !2217)
!2242 = !DILocation(line: 597, column: 8, scope: !610, inlinedAt: !2217)
!2243 = !DILocation(line: 597, column: 7, scope: !596, inlinedAt: !2217)
!2244 = !DILocation(line: 604, column: 24, scope: !609, inlinedAt: !2217)
!2245 = !DILocation(line: 604, column: 12, scope: !610, inlinedAt: !2217)
!2246 = !DILocation(line: 0, scope: !608, inlinedAt: !2217)
!2247 = !DILocation(line: 610, column: 16, scope: !608, inlinedAt: !2217)
!2248 = !DILocation(line: 610, column: 7, scope: !608, inlinedAt: !2217)
!2249 = !DILocation(line: 611, column: 21, scope: !608, inlinedAt: !2217)
!2250 = !DILocation(line: 611, column: 19, scope: !608, inlinedAt: !2217)
!2251 = !DILocation(line: 611, column: 16, scope: !608, inlinedAt: !2217)
!2252 = !DILocation(line: 610, column: 30, scope: !608, inlinedAt: !2217)
!2253 = distinct !{!2253, !2248, !2249, !1209}
!2254 = !DILocation(line: 612, column: 18, scope: !2255, inlinedAt: !2217)
!2255 = distinct !DILexicalBlock(scope: !608, file: !76, line: 612, column: 11)
!2256 = !DILocation(line: 612, column: 11, scope: !608, inlinedAt: !2217)
!2257 = !DILocation(line: 618, column: 5, scope: !608, inlinedAt: !2217)
!2258 = !DILocation(line: 620, column: 23, scope: !596, inlinedAt: !2217)
!2259 = !DILocation(line: 625, column: 39, scope: !596, inlinedAt: !2217)
!2260 = !DILocation(line: 626, column: 3, scope: !596, inlinedAt: !2217)
!2261 = !DILocation(line: 626, column: 10, scope: !596, inlinedAt: !2217)
!2262 = !DILocation(line: 626, column: 21, scope: !596, inlinedAt: !2217)
!2263 = !DILocation(line: 628, column: 44, scope: !2264, inlinedAt: !2217)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !76, line: 628, column: 11)
!2265 = distinct !DILexicalBlock(scope: !596, file: !76, line: 627, column: 5)
!2266 = !DILocation(line: 628, column: 32, scope: !2264, inlinedAt: !2217)
!2267 = !DILocation(line: 628, column: 49, scope: !2264, inlinedAt: !2217)
!2268 = !DILocation(line: 628, column: 11, scope: !2265, inlinedAt: !2217)
!2269 = !DILocation(line: 630, column: 11, scope: !2270, inlinedAt: !2217)
!2270 = distinct !DILexicalBlock(scope: !2265, file: !76, line: 630, column: 11)
!2271 = !DILocation(line: 630, column: 11, scope: !2265, inlinedAt: !2217)
!2272 = !DILocation(line: 632, column: 26, scope: !2273, inlinedAt: !2217)
!2273 = distinct !DILexicalBlock(scope: !2274, file: !76, line: 632, column: 15)
!2274 = distinct !DILexicalBlock(scope: !2270, file: !76, line: 631, column: 9)
!2275 = !DILocation(line: 632, column: 34, scope: !2273, inlinedAt: !2217)
!2276 = !DILocation(line: 632, column: 37, scope: !2273, inlinedAt: !2217)
!2277 = !DILocation(line: 632, column: 15, scope: !2274, inlinedAt: !2217)
!2278 = !DILocation(line: 640, column: 16, scope: !2265, inlinedAt: !2217)
!2279 = distinct !{!2279, !2260, !2280, !1209}
!2280 = !DILocation(line: 641, column: 5, scope: !596, inlinedAt: !2217)
!2281 = !DILocation(line: 644, column: 3, scope: !596, inlinedAt: !2217)
!2282 = !DILocation(line: 0, scope: !2150, inlinedAt: !2283)
!2283 = distinct !DILocation(line: 648, column: 31, scope: !596, inlinedAt: !2217)
!2284 = !DILocation(line: 1361, column: 11, scope: !2150, inlinedAt: !2283)
!2285 = !DILocation(line: 1361, column: 10, scope: !2150, inlinedAt: !2283)
!2286 = !DILocation(line: 648, column: 31, scope: !596, inlinedAt: !2217)
!2287 = !DILocation(line: 0, scope: !2150, inlinedAt: !2288)
!2288 = distinct !DILocation(line: 649, column: 31, scope: !596, inlinedAt: !2217)
!2289 = !DILocation(line: 1361, column: 11, scope: !2150, inlinedAt: !2288)
!2290 = !DILocation(line: 1361, column: 10, scope: !2150, inlinedAt: !2288)
!2291 = !DILocation(line: 649, column: 31, scope: !596, inlinedAt: !2217)
!2292 = !DILocation(line: 0, scope: !2150, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 650, column: 31, scope: !596, inlinedAt: !2217)
!2294 = !DILocation(line: 1361, column: 11, scope: !2150, inlinedAt: !2293)
!2295 = !DILocation(line: 1361, column: 10, scope: !2150, inlinedAt: !2293)
!2296 = !DILocation(line: 650, column: 31, scope: !596, inlinedAt: !2217)
!2297 = !DILocation(line: 0, scope: !2150, inlinedAt: !2298)
!2298 = distinct !DILocation(line: 651, column: 31, scope: !596, inlinedAt: !2217)
!2299 = !DILocation(line: 1361, column: 11, scope: !2150, inlinedAt: !2298)
!2300 = !DILocation(line: 1361, column: 10, scope: !2150, inlinedAt: !2298)
!2301 = !DILocation(line: 651, column: 31, scope: !596, inlinedAt: !2217)
!2302 = !DILocation(line: 0, scope: !2150, inlinedAt: !2303)
!2303 = distinct !DILocation(line: 652, column: 31, scope: !596, inlinedAt: !2217)
!2304 = !DILocation(line: 1361, column: 11, scope: !2150, inlinedAt: !2303)
!2305 = !DILocation(line: 1361, column: 10, scope: !2150, inlinedAt: !2303)
!2306 = !DILocation(line: 652, column: 31, scope: !596, inlinedAt: !2217)
!2307 = !DILocation(line: 0, scope: !2150, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 653, column: 31, scope: !596, inlinedAt: !2217)
!2309 = !DILocation(line: 1361, column: 11, scope: !2150, inlinedAt: !2308)
!2310 = !DILocation(line: 1361, column: 10, scope: !2150, inlinedAt: !2308)
!2311 = !DILocation(line: 653, column: 31, scope: !596, inlinedAt: !2217)
!2312 = !DILocation(line: 0, scope: !2150, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 654, column: 31, scope: !596, inlinedAt: !2217)
!2314 = !DILocation(line: 1361, column: 11, scope: !2150, inlinedAt: !2313)
!2315 = !DILocation(line: 1361, column: 10, scope: !2150, inlinedAt: !2313)
!2316 = !DILocation(line: 654, column: 31, scope: !596, inlinedAt: !2217)
!2317 = !DILocation(line: 0, scope: !2150, inlinedAt: !2318)
!2318 = distinct !DILocation(line: 655, column: 31, scope: !596, inlinedAt: !2217)
!2319 = !DILocation(line: 1361, column: 11, scope: !2150, inlinedAt: !2318)
!2320 = !DILocation(line: 1361, column: 10, scope: !2150, inlinedAt: !2318)
!2321 = !DILocation(line: 655, column: 31, scope: !596, inlinedAt: !2217)
!2322 = !DILocation(line: 0, scope: !2150, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 656, column: 31, scope: !596, inlinedAt: !2217)
!2324 = !DILocation(line: 1361, column: 11, scope: !2150, inlinedAt: !2323)
!2325 = !DILocation(line: 1361, column: 10, scope: !2150, inlinedAt: !2323)
!2326 = !DILocation(line: 656, column: 31, scope: !596, inlinedAt: !2217)
!2327 = !DILocation(line: 0, scope: !2150, inlinedAt: !2328)
!2328 = distinct !DILocation(line: 657, column: 31, scope: !596, inlinedAt: !2217)
!2329 = !DILocation(line: 1361, column: 11, scope: !2150, inlinedAt: !2328)
!2330 = !DILocation(line: 1361, column: 10, scope: !2150, inlinedAt: !2328)
!2331 = !DILocation(line: 657, column: 31, scope: !596, inlinedAt: !2217)
!2332 = !DILocation(line: 663, column: 7, scope: !2333, inlinedAt: !2217)
!2333 = distinct !DILexicalBlock(scope: !596, file: !76, line: 663, column: 7)
!2334 = !DILocation(line: 664, column: 7, scope: !2333, inlinedAt: !2217)
!2335 = !DILocation(line: 664, column: 10, scope: !2333, inlinedAt: !2217)
!2336 = !DILocation(line: 663, column: 7, scope: !596, inlinedAt: !2217)
!2337 = !DILocation(line: 669, column: 7, scope: !2338, inlinedAt: !2217)
!2338 = distinct !DILexicalBlock(scope: !2333, file: !76, line: 665, column: 5)
!2339 = !DILocation(line: 671, column: 5, scope: !2338, inlinedAt: !2217)
!2340 = !DILocation(line: 676, column: 7, scope: !2341, inlinedAt: !2217)
!2341 = distinct !DILexicalBlock(scope: !2333, file: !76, line: 673, column: 5)
!2342 = !DILocation(line: 679, column: 3, scope: !596, inlinedAt: !2217)
!2343 = !DILocation(line: 683, column: 3, scope: !596, inlinedAt: !2217)
!2344 = !DILocation(line: 686, column: 3, scope: !596, inlinedAt: !2217)
!2345 = !DILocation(line: 688, column: 3, scope: !596, inlinedAt: !2217)
!2346 = !DILocation(line: 691, column: 3, scope: !596, inlinedAt: !2217)
!2347 = !DILocation(line: 695, column: 3, scope: !596, inlinedAt: !2217)
!2348 = !DILocation(line: 696, column: 1, scope: !596, inlinedAt: !2217)
!2349 = !DILocation(line: 409, column: 3, scope: !2211)
!2350 = !DILocation(line: 416, column: 1, scope: !2211)
!2351 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !688, file: !688, line: 50, type: !1114, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !2352)
!2352 = !{!2353}
!2353 = !DILocalVariable(name: "file", arg: 1, scope: !2351, file: !688, line: 50, type: !115)
!2354 = !DILocation(line: 0, scope: !2351)
!2355 = !DILocation(line: 52, column: 13, scope: !2351)
!2356 = !DILocation(line: 53, column: 1, scope: !2351)
!2357 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !688, file: !688, line: 87, type: !2358, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{null, !109}
!2360 = !{!2361}
!2361 = !DILocalVariable(name: "ignore", arg: 1, scope: !2357, file: !688, line: 87, type: !109)
!2362 = !DILocation(line: 0, scope: !2357)
!2363 = !DILocation(line: 89, column: 16, scope: !2357)
!2364 = !DILocation(line: 90, column: 1, scope: !2357)
!2365 = distinct !DISubprogram(name: "close_stdout", scope: !688, file: !688, line: 116, type: !356, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !687, retainedNodes: !2366)
!2366 = !{!2367}
!2367 = !DILocalVariable(name: "write_error", scope: !2368, file: !688, line: 121, type: !115)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !688, line: 120, column: 5)
!2369 = distinct !DILexicalBlock(scope: !2365, file: !688, line: 118, column: 7)
!2370 = !DILocation(line: 118, column: 21, scope: !2369)
!2371 = !DILocation(line: 118, column: 7, scope: !2369)
!2372 = !DILocation(line: 118, column: 29, scope: !2369)
!2373 = !DILocation(line: 119, column: 7, scope: !2369)
!2374 = !DILocation(line: 119, column: 12, scope: !2369)
!2375 = !DILocation(line: 119, column: 25, scope: !2369)
!2376 = !DILocation(line: 119, column: 28, scope: !2369)
!2377 = !DILocation(line: 119, column: 34, scope: !2369)
!2378 = !DILocation(line: 118, column: 7, scope: !2365)
!2379 = !DILocation(line: 121, column: 33, scope: !2368)
!2380 = !DILocation(line: 0, scope: !2368)
!2381 = !DILocation(line: 122, column: 11, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2368, file: !688, line: 122, column: 11)
!2383 = !DILocation(line: 0, scope: !2382)
!2384 = !DILocation(line: 122, column: 11, scope: !2368)
!2385 = !DILocation(line: 123, column: 9, scope: !2382)
!2386 = !DILocation(line: 126, column: 9, scope: !2382)
!2387 = !DILocation(line: 128, column: 14, scope: !2368)
!2388 = !DILocation(line: 128, column: 7, scope: !2368)
!2389 = !DILocation(line: 133, column: 42, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2365, file: !688, line: 133, column: 7)
!2391 = !DILocation(line: 133, column: 28, scope: !2390)
!2392 = !DILocation(line: 133, column: 50, scope: !2390)
!2393 = !DILocation(line: 133, column: 7, scope: !2365)
!2394 = !DILocation(line: 134, column: 12, scope: !2390)
!2395 = !DILocation(line: 134, column: 5, scope: !2390)
!2396 = !DILocation(line: 135, column: 1, scope: !2365)
!2397 = !DISubprogram(name: "_exit", scope: !2398, file: !2398, line: 624, type: !1082, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2398 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2399 = distinct !DISubprogram(name: "verror", scope: !703, file: !703, line: 251, type: !2400, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{null, !77, !77, !115, !713}
!2402 = !{!2403, !2404, !2405, !2406}
!2403 = !DILocalVariable(name: "status", arg: 1, scope: !2399, file: !703, line: 251, type: !77)
!2404 = !DILocalVariable(name: "errnum", arg: 2, scope: !2399, file: !703, line: 251, type: !77)
!2405 = !DILocalVariable(name: "message", arg: 3, scope: !2399, file: !703, line: 251, type: !115)
!2406 = !DILocalVariable(name: "args", arg: 4, scope: !2399, file: !703, line: 251, type: !713)
!2407 = !DILocation(line: 0, scope: !2399)
!2408 = !DILocation(line: 251, column: 1, scope: !2399)
!2409 = !DILocation(line: 261, column: 3, scope: !2399)
!2410 = !DILocation(line: 265, column: 7, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2399, file: !703, line: 265, column: 7)
!2412 = !DILocation(line: 265, column: 7, scope: !2399)
!2413 = !DILocation(line: 266, column: 5, scope: !2411)
!2414 = !DILocation(line: 272, column: 7, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2411, file: !703, line: 268, column: 5)
!2416 = !DILocation(line: 276, column: 3, scope: !2399)
!2417 = !{i64 0, i64 8, !1092, i64 8, i64 8, !1092, i64 16, i64 8, !1092, i64 24, i64 4, !1162, i64 28, i64 4, !1162}
!2418 = !DILocation(line: 282, column: 1, scope: !2399)
!2419 = distinct !DISubprogram(name: "flush_stdout", scope: !703, file: !703, line: 163, type: !356, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2420)
!2420 = !{!2421}
!2421 = !DILocalVariable(name: "stdout_fd", scope: !2419, file: !703, line: 166, type: !77)
!2422 = !DILocation(line: 0, scope: !2419)
!2423 = !DILocalVariable(name: "fd", arg: 1, scope: !2424, file: !703, line: 145, type: !77)
!2424 = distinct !DISubprogram(name: "is_open", scope: !703, file: !703, line: 145, type: !2425, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2427)
!2425 = !DISubroutineType(types: !2426)
!2426 = !{!77, !77}
!2427 = !{!2423}
!2428 = !DILocation(line: 0, scope: !2424, inlinedAt: !2429)
!2429 = distinct !DILocation(line: 182, column: 25, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2419, file: !703, line: 182, column: 7)
!2431 = !DILocation(line: 157, column: 15, scope: !2424, inlinedAt: !2429)
!2432 = !DILocation(line: 157, column: 12, scope: !2424, inlinedAt: !2429)
!2433 = !DILocation(line: 182, column: 7, scope: !2419)
!2434 = !DILocation(line: 184, column: 5, scope: !2430)
!2435 = !DILocation(line: 185, column: 1, scope: !2419)
!2436 = distinct !DISubprogram(name: "error_tail", scope: !703, file: !703, line: 219, type: !2400, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2437)
!2437 = !{!2438, !2439, !2440, !2441}
!2438 = !DILocalVariable(name: "status", arg: 1, scope: !2436, file: !703, line: 219, type: !77)
!2439 = !DILocalVariable(name: "errnum", arg: 2, scope: !2436, file: !703, line: 219, type: !77)
!2440 = !DILocalVariable(name: "message", arg: 3, scope: !2436, file: !703, line: 219, type: !115)
!2441 = !DILocalVariable(name: "args", arg: 4, scope: !2436, file: !703, line: 219, type: !713)
!2442 = !DILocation(line: 0, scope: !2436)
!2443 = !DILocation(line: 219, column: 1, scope: !2436)
!2444 = !DILocation(line: 229, column: 13, scope: !2436)
!2445 = !DILocation(line: 135, column: 10, scope: !2446, inlinedAt: !2488)
!2446 = distinct !DISubprogram(name: "vfprintf", scope: !1149, file: !1149, line: 132, type: !2447, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2484)
!2447 = !DISubroutineType(types: !2448)
!2448 = !{!77, !2449, !1153, !715}
!2449 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2450)
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2451, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 7, baseType: !2452)
!2452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !2453)
!2453 = !{!2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479, !2480, !2481, !2482, !2483}
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2452, file: !172, line: 51, baseType: !77, size: 32)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2452, file: !172, line: 54, baseType: !107, size: 64, offset: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2452, file: !172, line: 55, baseType: !107, size: 64, offset: 128)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2452, file: !172, line: 56, baseType: !107, size: 64, offset: 192)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2452, file: !172, line: 57, baseType: !107, size: 64, offset: 256)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2452, file: !172, line: 58, baseType: !107, size: 64, offset: 320)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2452, file: !172, line: 59, baseType: !107, size: 64, offset: 384)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2452, file: !172, line: 60, baseType: !107, size: 64, offset: 448)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2452, file: !172, line: 61, baseType: !107, size: 64, offset: 512)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2452, file: !172, line: 64, baseType: !107, size: 64, offset: 576)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2452, file: !172, line: 65, baseType: !107, size: 64, offset: 640)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2452, file: !172, line: 66, baseType: !107, size: 64, offset: 704)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2452, file: !172, line: 68, baseType: !187, size: 64, offset: 768)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2452, file: !172, line: 70, baseType: !2468, size: 64, offset: 832)
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2452, file: !172, line: 72, baseType: !77, size: 32, offset: 896)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2452, file: !172, line: 73, baseType: !77, size: 32, offset: 928)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2452, file: !172, line: 74, baseType: !194, size: 64, offset: 960)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2452, file: !172, line: 77, baseType: !112, size: 16, offset: 1024)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2452, file: !172, line: 78, baseType: !198, size: 8, offset: 1040)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2452, file: !172, line: 79, baseType: !49, size: 8, offset: 1048)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2452, file: !172, line: 81, baseType: !201, size: 64, offset: 1088)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2452, file: !172, line: 89, baseType: !204, size: 64, offset: 1152)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2452, file: !172, line: 91, baseType: !206, size: 64, offset: 1216)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2452, file: !172, line: 92, baseType: !209, size: 64, offset: 1280)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2452, file: !172, line: 93, baseType: !2468, size: 64, offset: 1344)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2452, file: !172, line: 94, baseType: !108, size: 64, offset: 1408)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2452, file: !172, line: 95, baseType: !113, size: 64, offset: 1472)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2452, file: !172, line: 96, baseType: !77, size: 32, offset: 1536)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2452, file: !172, line: 98, baseType: !216, size: 160, offset: 1568)
!2484 = !{!2485, !2486, !2487}
!2485 = !DILocalVariable(name: "__stream", arg: 1, scope: !2446, file: !1149, line: 132, type: !2449)
!2486 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2446, file: !1149, line: 133, type: !1153)
!2487 = !DILocalVariable(name: "__ap", arg: 3, scope: !2446, file: !1149, line: 133, type: !715)
!2488 = distinct !DILocation(line: 229, column: 3, scope: !2436)
!2489 = !{!2490, !2492}
!2490 = distinct !{!2490, !2491, !"vfprintf.inline: argument 0"}
!2491 = distinct !{!2491, !"vfprintf.inline"}
!2492 = distinct !{!2492, !2491, !"vfprintf.inline: argument 1"}
!2493 = !DILocation(line: 229, column: 3, scope: !2436)
!2494 = !DILocation(line: 0, scope: !2446, inlinedAt: !2488)
!2495 = !DILocation(line: 133, column: 49, scope: !2446, inlinedAt: !2488)
!2496 = !DILocation(line: 232, column: 3, scope: !2436)
!2497 = !DILocation(line: 233, column: 7, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2436, file: !703, line: 233, column: 7)
!2499 = !DILocation(line: 233, column: 7, scope: !2436)
!2500 = !DILocalVariable(name: "errnum", arg: 1, scope: !2501, file: !703, line: 188, type: !77)
!2501 = distinct !DISubprogram(name: "print_errno_message", scope: !703, file: !703, line: 188, type: !1082, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2502)
!2502 = !{!2500, !2503, !2504}
!2503 = !DILocalVariable(name: "s", scope: !2501, file: !703, line: 190, type: !115)
!2504 = !DILocalVariable(name: "errbuf", scope: !2501, file: !703, line: 193, type: !2505)
!2505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2506)
!2506 = !{!2507}
!2507 = !DISubrange(count: 1024)
!2508 = !DILocation(line: 0, scope: !2501, inlinedAt: !2509)
!2509 = distinct !DILocation(line: 234, column: 5, scope: !2498)
!2510 = !DILocation(line: 193, column: 3, scope: !2501, inlinedAt: !2509)
!2511 = !DILocation(line: 193, column: 8, scope: !2501, inlinedAt: !2509)
!2512 = !DILocation(line: 195, column: 7, scope: !2501, inlinedAt: !2509)
!2513 = !DILocation(line: 207, column: 9, scope: !2514, inlinedAt: !2509)
!2514 = distinct !DILexicalBlock(scope: !2501, file: !703, line: 207, column: 7)
!2515 = !DILocation(line: 207, column: 7, scope: !2501, inlinedAt: !2509)
!2516 = !DILocation(line: 208, column: 9, scope: !2514, inlinedAt: !2509)
!2517 = !DILocation(line: 208, column: 5, scope: !2514, inlinedAt: !2509)
!2518 = !DILocation(line: 214, column: 3, scope: !2501, inlinedAt: !2509)
!2519 = !DILocation(line: 216, column: 1, scope: !2501, inlinedAt: !2509)
!2520 = !DILocation(line: 234, column: 5, scope: !2498)
!2521 = !DILocation(line: 238, column: 3, scope: !2436)
!2522 = !DILocalVariable(name: "__c", arg: 1, scope: !2523, file: !1408, line: 101, type: !77)
!2523 = distinct !DISubprogram(name: "putc_unlocked", scope: !1408, file: !1408, line: 101, type: !2524, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2526)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{!77, !77, !2450}
!2526 = !{!2522, !2527}
!2527 = !DILocalVariable(name: "__stream", arg: 2, scope: !2523, file: !1408, line: 101, type: !2450)
!2528 = !DILocation(line: 0, scope: !2523, inlinedAt: !2529)
!2529 = distinct !DILocation(line: 238, column: 3, scope: !2436)
!2530 = !DILocation(line: 103, column: 10, scope: !2523, inlinedAt: !2529)
!2531 = !DILocation(line: 240, column: 3, scope: !2436)
!2532 = !DILocation(line: 241, column: 7, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2436, file: !703, line: 241, column: 7)
!2534 = !DILocation(line: 241, column: 7, scope: !2436)
!2535 = !DILocation(line: 242, column: 5, scope: !2533)
!2536 = !DILocation(line: 243, column: 1, scope: !2436)
!2537 = !DISubprogram(name: "__vfprintf_chk", scope: !1149, file: !1149, line: 96, type: !2538, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2538 = !DISubroutineType(types: !2539)
!2539 = !{!77, !2449, !77, !1153, !715}
!2540 = !DISubprogram(name: "strerror_r", scope: !1279, file: !1279, line: 444, type: !2541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!107, !77, !107, !113}
!2543 = !DISubprogram(name: "fcntl", scope: !2544, file: !2544, line: 149, type: !2545, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2544 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!77, !77, !77, null}
!2547 = distinct !DISubprogram(name: "error", scope: !703, file: !703, line: 285, type: !2548, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2550)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{null, !77, !77, !115, null}
!2550 = !{!2551, !2552, !2553, !2554}
!2551 = !DILocalVariable(name: "status", arg: 1, scope: !2547, file: !703, line: 285, type: !77)
!2552 = !DILocalVariable(name: "errnum", arg: 2, scope: !2547, file: !703, line: 285, type: !77)
!2553 = !DILocalVariable(name: "message", arg: 3, scope: !2547, file: !703, line: 285, type: !115)
!2554 = !DILocalVariable(name: "ap", scope: !2547, file: !703, line: 287, type: !713)
!2555 = !DILocation(line: 0, scope: !2547)
!2556 = !DILocation(line: 287, column: 3, scope: !2547)
!2557 = !DILocation(line: 287, column: 11, scope: !2547)
!2558 = !DILocation(line: 288, column: 3, scope: !2547)
!2559 = !DILocation(line: 289, column: 3, scope: !2547)
!2560 = !DILocation(line: 290, column: 3, scope: !2547)
!2561 = !DILocation(line: 291, column: 1, scope: !2547)
!2562 = !DILocation(line: 0, scope: !710)
!2563 = !DILocation(line: 298, column: 1, scope: !710)
!2564 = !DILocation(line: 302, column: 7, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !710, file: !703, line: 302, column: 7)
!2566 = !DILocation(line: 302, column: 7, scope: !710)
!2567 = !DILocation(line: 307, column: 11, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !703, line: 307, column: 11)
!2569 = distinct !DILexicalBlock(scope: !2565, file: !703, line: 303, column: 5)
!2570 = !DILocation(line: 307, column: 27, scope: !2568)
!2571 = !DILocation(line: 308, column: 11, scope: !2568)
!2572 = !DILocation(line: 308, column: 28, scope: !2568)
!2573 = !DILocation(line: 308, column: 25, scope: !2568)
!2574 = !DILocation(line: 309, column: 15, scope: !2568)
!2575 = !DILocation(line: 309, column: 33, scope: !2568)
!2576 = !DILocation(line: 310, column: 19, scope: !2568)
!2577 = !DILocation(line: 311, column: 22, scope: !2568)
!2578 = !DILocation(line: 311, column: 56, scope: !2568)
!2579 = !DILocation(line: 307, column: 11, scope: !2569)
!2580 = !DILocation(line: 316, column: 21, scope: !2569)
!2581 = !DILocation(line: 317, column: 23, scope: !2569)
!2582 = !DILocation(line: 318, column: 5, scope: !2569)
!2583 = !DILocation(line: 327, column: 3, scope: !710)
!2584 = !DILocation(line: 331, column: 7, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !710, file: !703, line: 331, column: 7)
!2586 = !DILocation(line: 331, column: 7, scope: !710)
!2587 = !DILocation(line: 332, column: 5, scope: !2585)
!2588 = !DILocation(line: 338, column: 7, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2585, file: !703, line: 334, column: 5)
!2590 = !DILocation(line: 346, column: 3, scope: !710)
!2591 = !DILocation(line: 350, column: 3, scope: !710)
!2592 = !DILocation(line: 356, column: 1, scope: !710)
!2593 = distinct !DISubprogram(name: "error_at_line", scope: !703, file: !703, line: 359, type: !2594, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !702, retainedNodes: !2596)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{null, !77, !77, !115, !72, !115, null}
!2596 = !{!2597, !2598, !2599, !2600, !2601, !2602}
!2597 = !DILocalVariable(name: "status", arg: 1, scope: !2593, file: !703, line: 359, type: !77)
!2598 = !DILocalVariable(name: "errnum", arg: 2, scope: !2593, file: !703, line: 359, type: !77)
!2599 = !DILocalVariable(name: "file_name", arg: 3, scope: !2593, file: !703, line: 359, type: !115)
!2600 = !DILocalVariable(name: "line_number", arg: 4, scope: !2593, file: !703, line: 360, type: !72)
!2601 = !DILocalVariable(name: "message", arg: 5, scope: !2593, file: !703, line: 360, type: !115)
!2602 = !DILocalVariable(name: "ap", scope: !2593, file: !703, line: 362, type: !713)
!2603 = !DILocation(line: 0, scope: !2593)
!2604 = !DILocation(line: 362, column: 3, scope: !2593)
!2605 = !DILocation(line: 362, column: 11, scope: !2593)
!2606 = !DILocation(line: 363, column: 3, scope: !2593)
!2607 = !DILocation(line: 364, column: 3, scope: !2593)
!2608 = !DILocation(line: 366, column: 3, scope: !2593)
!2609 = !DILocation(line: 367, column: 1, scope: !2593)
!2610 = distinct !DISubprogram(name: "fdadvise", scope: !1008, file: !1008, line: 25, type: !2611, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1007, retainedNodes: !2615)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{null, !77, !2613, !2613, !2614}
!2613 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !714, line: 63, baseType: !194)
!2614 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !459, line: 51, baseType: !458)
!2615 = !{!2616, !2617, !2618, !2619}
!2616 = !DILocalVariable(name: "fd", arg: 1, scope: !2610, file: !1008, line: 25, type: !77)
!2617 = !DILocalVariable(name: "offset", arg: 2, scope: !2610, file: !1008, line: 25, type: !2613)
!2618 = !DILocalVariable(name: "len", arg: 3, scope: !2610, file: !1008, line: 25, type: !2613)
!2619 = !DILocalVariable(name: "advice", arg: 4, scope: !2610, file: !1008, line: 25, type: !2614)
!2620 = !DILocation(line: 0, scope: !2610)
!2621 = !DILocation(line: 28, column: 3, scope: !2610)
!2622 = !DILocation(line: 30, column: 1, scope: !2610)
!2623 = !DISubprogram(name: "posix_fadvise", scope: !2544, file: !2544, line: 273, type: !2624, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2624 = !DISubroutineType(types: !2625)
!2625 = !{!77, !77, !2613, !2613, !77}
!2626 = distinct !DISubprogram(name: "fadvise", scope: !1008, file: !1008, line: 33, type: !2627, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1007, retainedNodes: !2663)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{null, !2629, !2614}
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 7, baseType: !2631)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !2632)
!2632 = !{!2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2631, file: !172, line: 51, baseType: !77, size: 32)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2631, file: !172, line: 54, baseType: !107, size: 64, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2631, file: !172, line: 55, baseType: !107, size: 64, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2631, file: !172, line: 56, baseType: !107, size: 64, offset: 192)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2631, file: !172, line: 57, baseType: !107, size: 64, offset: 256)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2631, file: !172, line: 58, baseType: !107, size: 64, offset: 320)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2631, file: !172, line: 59, baseType: !107, size: 64, offset: 384)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2631, file: !172, line: 60, baseType: !107, size: 64, offset: 448)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2631, file: !172, line: 61, baseType: !107, size: 64, offset: 512)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2631, file: !172, line: 64, baseType: !107, size: 64, offset: 576)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2631, file: !172, line: 65, baseType: !107, size: 64, offset: 640)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2631, file: !172, line: 66, baseType: !107, size: 64, offset: 704)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2631, file: !172, line: 68, baseType: !187, size: 64, offset: 768)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2631, file: !172, line: 70, baseType: !2647, size: 64, offset: 832)
!2647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2631, file: !172, line: 72, baseType: !77, size: 32, offset: 896)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2631, file: !172, line: 73, baseType: !77, size: 32, offset: 928)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2631, file: !172, line: 74, baseType: !194, size: 64, offset: 960)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2631, file: !172, line: 77, baseType: !112, size: 16, offset: 1024)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2631, file: !172, line: 78, baseType: !198, size: 8, offset: 1040)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2631, file: !172, line: 79, baseType: !49, size: 8, offset: 1048)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2631, file: !172, line: 81, baseType: !201, size: 64, offset: 1088)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2631, file: !172, line: 89, baseType: !204, size: 64, offset: 1152)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2631, file: !172, line: 91, baseType: !206, size: 64, offset: 1216)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2631, file: !172, line: 92, baseType: !209, size: 64, offset: 1280)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2631, file: !172, line: 93, baseType: !2647, size: 64, offset: 1344)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2631, file: !172, line: 94, baseType: !108, size: 64, offset: 1408)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2631, file: !172, line: 95, baseType: !113, size: 64, offset: 1472)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2631, file: !172, line: 96, baseType: !77, size: 32, offset: 1536)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2631, file: !172, line: 98, baseType: !216, size: 160, offset: 1568)
!2663 = !{!2664, !2665}
!2664 = !DILocalVariable(name: "fp", arg: 1, scope: !2626, file: !1008, line: 33, type: !2629)
!2665 = !DILocalVariable(name: "advice", arg: 2, scope: !2626, file: !1008, line: 33, type: !2614)
!2666 = !DILocation(line: 0, scope: !2626)
!2667 = !DILocation(line: 35, column: 7, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2626, file: !1008, line: 35, column: 7)
!2669 = !DILocation(line: 35, column: 7, scope: !2626)
!2670 = !DILocation(line: 36, column: 15, scope: !2668)
!2671 = !DILocation(line: 0, scope: !2610, inlinedAt: !2672)
!2672 = distinct !DILocation(line: 36, column: 5, scope: !2668)
!2673 = !DILocation(line: 28, column: 3, scope: !2610, inlinedAt: !2672)
!2674 = !DILocation(line: 36, column: 5, scope: !2668)
!2675 = !DILocation(line: 37, column: 1, scope: !2626)
!2676 = !DISubprogram(name: "fileno", scope: !714, file: !714, line: 809, type: !2677, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!77, !2629}
!2679 = distinct !DISubprogram(name: "rpl_fclose", scope: !1011, file: !1011, line: 58, type: !2680, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1010, retainedNodes: !2716)
!2680 = !DISubroutineType(types: !2681)
!2681 = !{!77, !2682}
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 7, baseType: !2684)
!2684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !2685)
!2685 = !{!2686, !2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715}
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2684, file: !172, line: 51, baseType: !77, size: 32)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2684, file: !172, line: 54, baseType: !107, size: 64, offset: 64)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2684, file: !172, line: 55, baseType: !107, size: 64, offset: 128)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2684, file: !172, line: 56, baseType: !107, size: 64, offset: 192)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2684, file: !172, line: 57, baseType: !107, size: 64, offset: 256)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2684, file: !172, line: 58, baseType: !107, size: 64, offset: 320)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2684, file: !172, line: 59, baseType: !107, size: 64, offset: 384)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2684, file: !172, line: 60, baseType: !107, size: 64, offset: 448)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2684, file: !172, line: 61, baseType: !107, size: 64, offset: 512)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2684, file: !172, line: 64, baseType: !107, size: 64, offset: 576)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2684, file: !172, line: 65, baseType: !107, size: 64, offset: 640)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2684, file: !172, line: 66, baseType: !107, size: 64, offset: 704)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2684, file: !172, line: 68, baseType: !187, size: 64, offset: 768)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2684, file: !172, line: 70, baseType: !2700, size: 64, offset: 832)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2684, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2684, file: !172, line: 72, baseType: !77, size: 32, offset: 896)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2684, file: !172, line: 73, baseType: !77, size: 32, offset: 928)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2684, file: !172, line: 74, baseType: !194, size: 64, offset: 960)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2684, file: !172, line: 77, baseType: !112, size: 16, offset: 1024)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2684, file: !172, line: 78, baseType: !198, size: 8, offset: 1040)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2684, file: !172, line: 79, baseType: !49, size: 8, offset: 1048)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2684, file: !172, line: 81, baseType: !201, size: 64, offset: 1088)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2684, file: !172, line: 89, baseType: !204, size: 64, offset: 1152)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2684, file: !172, line: 91, baseType: !206, size: 64, offset: 1216)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2684, file: !172, line: 92, baseType: !209, size: 64, offset: 1280)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2684, file: !172, line: 93, baseType: !2700, size: 64, offset: 1344)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2684, file: !172, line: 94, baseType: !108, size: 64, offset: 1408)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2684, file: !172, line: 95, baseType: !113, size: 64, offset: 1472)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2684, file: !172, line: 96, baseType: !77, size: 32, offset: 1536)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2684, file: !172, line: 98, baseType: !216, size: 160, offset: 1568)
!2716 = !{!2717, !2718, !2719, !2720}
!2717 = !DILocalVariable(name: "fp", arg: 1, scope: !2679, file: !1011, line: 58, type: !2682)
!2718 = !DILocalVariable(name: "saved_errno", scope: !2679, file: !1011, line: 60, type: !77)
!2719 = !DILocalVariable(name: "fd", scope: !2679, file: !1011, line: 63, type: !77)
!2720 = !DILocalVariable(name: "result", scope: !2679, file: !1011, line: 74, type: !77)
!2721 = !DILocation(line: 0, scope: !2679)
!2722 = !DILocation(line: 63, column: 12, scope: !2679)
!2723 = !DILocation(line: 64, column: 10, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2679, file: !1011, line: 64, column: 7)
!2725 = !DILocation(line: 64, column: 7, scope: !2679)
!2726 = !DILocation(line: 65, column: 12, scope: !2724)
!2727 = !DILocation(line: 65, column: 5, scope: !2724)
!2728 = !DILocation(line: 70, column: 9, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2679, file: !1011, line: 70, column: 7)
!2730 = !DILocation(line: 70, column: 23, scope: !2729)
!2731 = !DILocation(line: 70, column: 33, scope: !2729)
!2732 = !DILocation(line: 70, column: 26, scope: !2729)
!2733 = !DILocation(line: 70, column: 59, scope: !2729)
!2734 = !DILocation(line: 71, column: 7, scope: !2729)
!2735 = !DILocation(line: 71, column: 10, scope: !2729)
!2736 = !DILocation(line: 70, column: 7, scope: !2679)
!2737 = !DILocation(line: 100, column: 12, scope: !2679)
!2738 = !DILocation(line: 105, column: 7, scope: !2679)
!2739 = !DILocation(line: 72, column: 19, scope: !2729)
!2740 = !DILocation(line: 105, column: 19, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2679, file: !1011, line: 105, column: 7)
!2742 = !DILocation(line: 107, column: 13, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2741, file: !1011, line: 106, column: 5)
!2744 = !DILocation(line: 109, column: 5, scope: !2743)
!2745 = !DILocation(line: 112, column: 1, scope: !2679)
!2746 = !DISubprogram(name: "fclose", scope: !714, file: !714, line: 178, type: !2680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2747 = !DISubprogram(name: "__freading", scope: !2748, file: !2748, line: 51, type: !2680, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2748 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2749 = !DISubprogram(name: "lseek", scope: !2398, file: !2398, line: 339, type: !2750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2750 = !DISubroutineType(types: !2751)
!2751 = !{!194, !77, !194, !77}
!2752 = distinct !DISubprogram(name: "rpl_fflush", scope: !1013, file: !1013, line: 130, type: !2753, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1012, retainedNodes: !2789)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!77, !2755}
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 7, baseType: !2757)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !2758)
!2758 = !{!2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2757, file: !172, line: 51, baseType: !77, size: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2757, file: !172, line: 54, baseType: !107, size: 64, offset: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2757, file: !172, line: 55, baseType: !107, size: 64, offset: 128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2757, file: !172, line: 56, baseType: !107, size: 64, offset: 192)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2757, file: !172, line: 57, baseType: !107, size: 64, offset: 256)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2757, file: !172, line: 58, baseType: !107, size: 64, offset: 320)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2757, file: !172, line: 59, baseType: !107, size: 64, offset: 384)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2757, file: !172, line: 60, baseType: !107, size: 64, offset: 448)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2757, file: !172, line: 61, baseType: !107, size: 64, offset: 512)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2757, file: !172, line: 64, baseType: !107, size: 64, offset: 576)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2757, file: !172, line: 65, baseType: !107, size: 64, offset: 640)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2757, file: !172, line: 66, baseType: !107, size: 64, offset: 704)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2757, file: !172, line: 68, baseType: !187, size: 64, offset: 768)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2757, file: !172, line: 70, baseType: !2773, size: 64, offset: 832)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2757, file: !172, line: 72, baseType: !77, size: 32, offset: 896)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2757, file: !172, line: 73, baseType: !77, size: 32, offset: 928)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2757, file: !172, line: 74, baseType: !194, size: 64, offset: 960)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2757, file: !172, line: 77, baseType: !112, size: 16, offset: 1024)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2757, file: !172, line: 78, baseType: !198, size: 8, offset: 1040)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2757, file: !172, line: 79, baseType: !49, size: 8, offset: 1048)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2757, file: !172, line: 81, baseType: !201, size: 64, offset: 1088)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2757, file: !172, line: 89, baseType: !204, size: 64, offset: 1152)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2757, file: !172, line: 91, baseType: !206, size: 64, offset: 1216)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2757, file: !172, line: 92, baseType: !209, size: 64, offset: 1280)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2757, file: !172, line: 93, baseType: !2773, size: 64, offset: 1344)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2757, file: !172, line: 94, baseType: !108, size: 64, offset: 1408)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2757, file: !172, line: 95, baseType: !113, size: 64, offset: 1472)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2757, file: !172, line: 96, baseType: !77, size: 32, offset: 1536)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2757, file: !172, line: 98, baseType: !216, size: 160, offset: 1568)
!2789 = !{!2790}
!2790 = !DILocalVariable(name: "stream", arg: 1, scope: !2752, file: !1013, line: 130, type: !2755)
!2791 = !DILocation(line: 0, scope: !2752)
!2792 = !DILocation(line: 151, column: 14, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2752, file: !1013, line: 151, column: 7)
!2794 = !DILocation(line: 151, column: 22, scope: !2793)
!2795 = !DILocation(line: 151, column: 27, scope: !2793)
!2796 = !DILocation(line: 151, column: 7, scope: !2752)
!2797 = !DILocation(line: 152, column: 12, scope: !2793)
!2798 = !DILocation(line: 152, column: 5, scope: !2793)
!2799 = !DILocalVariable(name: "fp", arg: 1, scope: !2800, file: !1013, line: 42, type: !2755)
!2800 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !1013, file: !1013, line: 42, type: !2801, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1012, retainedNodes: !2803)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{null, !2755}
!2803 = !{!2799}
!2804 = !DILocation(line: 0, scope: !2800, inlinedAt: !2805)
!2805 = distinct !DILocation(line: 157, column: 3, scope: !2752)
!2806 = !DILocation(line: 44, column: 12, scope: !2807, inlinedAt: !2805)
!2807 = distinct !DILexicalBlock(scope: !2800, file: !1013, line: 44, column: 7)
!2808 = !DILocation(line: 44, column: 19, scope: !2807, inlinedAt: !2805)
!2809 = !DILocation(line: 44, column: 7, scope: !2800, inlinedAt: !2805)
!2810 = !DILocation(line: 46, column: 5, scope: !2807, inlinedAt: !2805)
!2811 = !DILocation(line: 159, column: 10, scope: !2752)
!2812 = !DILocation(line: 159, column: 3, scope: !2752)
!2813 = !DILocation(line: 236, column: 1, scope: !2752)
!2814 = !DISubprogram(name: "fflush", scope: !714, file: !714, line: 230, type: !2753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2815 = distinct !DISubprogram(name: "fpurge", scope: !1016, file: !1016, line: 32, type: !2816, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1015, retainedNodes: !2852)
!2816 = !DISubroutineType(types: !2817)
!2817 = !{!77, !2818}
!2818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2819, size: 64)
!2819 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 7, baseType: !2820)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !2821)
!2821 = !{!2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2820, file: !172, line: 51, baseType: !77, size: 32)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2820, file: !172, line: 54, baseType: !107, size: 64, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2820, file: !172, line: 55, baseType: !107, size: 64, offset: 128)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2820, file: !172, line: 56, baseType: !107, size: 64, offset: 192)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2820, file: !172, line: 57, baseType: !107, size: 64, offset: 256)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2820, file: !172, line: 58, baseType: !107, size: 64, offset: 320)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2820, file: !172, line: 59, baseType: !107, size: 64, offset: 384)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2820, file: !172, line: 60, baseType: !107, size: 64, offset: 448)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2820, file: !172, line: 61, baseType: !107, size: 64, offset: 512)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2820, file: !172, line: 64, baseType: !107, size: 64, offset: 576)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2820, file: !172, line: 65, baseType: !107, size: 64, offset: 640)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2820, file: !172, line: 66, baseType: !107, size: 64, offset: 704)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2820, file: !172, line: 68, baseType: !187, size: 64, offset: 768)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2820, file: !172, line: 70, baseType: !2836, size: 64, offset: 832)
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2820, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2820, file: !172, line: 72, baseType: !77, size: 32, offset: 896)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2820, file: !172, line: 73, baseType: !77, size: 32, offset: 928)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2820, file: !172, line: 74, baseType: !194, size: 64, offset: 960)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2820, file: !172, line: 77, baseType: !112, size: 16, offset: 1024)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2820, file: !172, line: 78, baseType: !198, size: 8, offset: 1040)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2820, file: !172, line: 79, baseType: !49, size: 8, offset: 1048)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2820, file: !172, line: 81, baseType: !201, size: 64, offset: 1088)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2820, file: !172, line: 89, baseType: !204, size: 64, offset: 1152)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2820, file: !172, line: 91, baseType: !206, size: 64, offset: 1216)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2820, file: !172, line: 92, baseType: !209, size: 64, offset: 1280)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2820, file: !172, line: 93, baseType: !2836, size: 64, offset: 1344)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2820, file: !172, line: 94, baseType: !108, size: 64, offset: 1408)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2820, file: !172, line: 95, baseType: !113, size: 64, offset: 1472)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2820, file: !172, line: 96, baseType: !77, size: 32, offset: 1536)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2820, file: !172, line: 98, baseType: !216, size: 160, offset: 1568)
!2852 = !{!2853}
!2853 = !DILocalVariable(name: "fp", arg: 1, scope: !2815, file: !1016, line: 32, type: !2818)
!2854 = !DILocation(line: 0, scope: !2815)
!2855 = !DILocation(line: 36, column: 3, scope: !2815)
!2856 = !DILocation(line: 38, column: 3, scope: !2815)
!2857 = !DISubprogram(name: "__fpurge", scope: !2748, file: !2748, line: 72, type: !2858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{null, !2818}
!2860 = distinct !DISubprogram(name: "rpl_fseeko", scope: !1018, file: !1018, line: 28, type: !2861, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1017, retainedNodes: !2897)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!77, !2863, !2613, !77}
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2864, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 7, baseType: !2865)
!2865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !2866)
!2866 = !{!2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2865, file: !172, line: 51, baseType: !77, size: 32)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2865, file: !172, line: 54, baseType: !107, size: 64, offset: 64)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2865, file: !172, line: 55, baseType: !107, size: 64, offset: 128)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2865, file: !172, line: 56, baseType: !107, size: 64, offset: 192)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2865, file: !172, line: 57, baseType: !107, size: 64, offset: 256)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2865, file: !172, line: 58, baseType: !107, size: 64, offset: 320)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2865, file: !172, line: 59, baseType: !107, size: 64, offset: 384)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2865, file: !172, line: 60, baseType: !107, size: 64, offset: 448)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2865, file: !172, line: 61, baseType: !107, size: 64, offset: 512)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2865, file: !172, line: 64, baseType: !107, size: 64, offset: 576)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2865, file: !172, line: 65, baseType: !107, size: 64, offset: 640)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2865, file: !172, line: 66, baseType: !107, size: 64, offset: 704)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2865, file: !172, line: 68, baseType: !187, size: 64, offset: 768)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2865, file: !172, line: 70, baseType: !2881, size: 64, offset: 832)
!2881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2865, file: !172, line: 72, baseType: !77, size: 32, offset: 896)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2865, file: !172, line: 73, baseType: !77, size: 32, offset: 928)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2865, file: !172, line: 74, baseType: !194, size: 64, offset: 960)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2865, file: !172, line: 77, baseType: !112, size: 16, offset: 1024)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2865, file: !172, line: 78, baseType: !198, size: 8, offset: 1040)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2865, file: !172, line: 79, baseType: !49, size: 8, offset: 1048)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2865, file: !172, line: 81, baseType: !201, size: 64, offset: 1088)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2865, file: !172, line: 89, baseType: !204, size: 64, offset: 1152)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2865, file: !172, line: 91, baseType: !206, size: 64, offset: 1216)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2865, file: !172, line: 92, baseType: !209, size: 64, offset: 1280)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2865, file: !172, line: 93, baseType: !2881, size: 64, offset: 1344)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2865, file: !172, line: 94, baseType: !108, size: 64, offset: 1408)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2865, file: !172, line: 95, baseType: !113, size: 64, offset: 1472)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2865, file: !172, line: 96, baseType: !77, size: 32, offset: 1536)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2865, file: !172, line: 98, baseType: !216, size: 160, offset: 1568)
!2897 = !{!2898, !2899, !2900, !2901}
!2898 = !DILocalVariable(name: "fp", arg: 1, scope: !2860, file: !1018, line: 28, type: !2863)
!2899 = !DILocalVariable(name: "offset", arg: 2, scope: !2860, file: !1018, line: 28, type: !2613)
!2900 = !DILocalVariable(name: "whence", arg: 3, scope: !2860, file: !1018, line: 28, type: !77)
!2901 = !DILocalVariable(name: "pos", scope: !2902, file: !1018, line: 123, type: !2613)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !1018, line: 119, column: 5)
!2903 = distinct !DILexicalBlock(scope: !2860, file: !1018, line: 55, column: 7)
!2904 = !DILocation(line: 0, scope: !2860)
!2905 = !DILocation(line: 55, column: 12, scope: !2903)
!2906 = !{!1416, !1093, i64 16}
!2907 = !DILocation(line: 55, column: 33, scope: !2903)
!2908 = !{!1416, !1093, i64 8}
!2909 = !DILocation(line: 55, column: 25, scope: !2903)
!2910 = !DILocation(line: 56, column: 7, scope: !2903)
!2911 = !DILocation(line: 56, column: 15, scope: !2903)
!2912 = !DILocation(line: 56, column: 37, scope: !2903)
!2913 = !{!1416, !1093, i64 32}
!2914 = !DILocation(line: 56, column: 29, scope: !2903)
!2915 = !DILocation(line: 57, column: 7, scope: !2903)
!2916 = !DILocation(line: 57, column: 15, scope: !2903)
!2917 = !{!1416, !1093, i64 72}
!2918 = !DILocation(line: 57, column: 29, scope: !2903)
!2919 = !DILocation(line: 55, column: 7, scope: !2860)
!2920 = !DILocation(line: 123, column: 26, scope: !2902)
!2921 = !DILocation(line: 123, column: 19, scope: !2902)
!2922 = !DILocation(line: 0, scope: !2902)
!2923 = !DILocation(line: 124, column: 15, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2902, file: !1018, line: 124, column: 11)
!2925 = !DILocation(line: 124, column: 11, scope: !2902)
!2926 = !DILocation(line: 135, column: 19, scope: !2902)
!2927 = !DILocation(line: 136, column: 12, scope: !2902)
!2928 = !DILocation(line: 136, column: 20, scope: !2902)
!2929 = !{!1416, !1382, i64 144}
!2930 = !DILocation(line: 167, column: 7, scope: !2902)
!2931 = !DILocation(line: 169, column: 10, scope: !2860)
!2932 = !DILocation(line: 169, column: 3, scope: !2860)
!2933 = !DILocation(line: 170, column: 1, scope: !2860)
!2934 = !DISubprogram(name: "fseeko", scope: !714, file: !714, line: 736, type: !2935, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2935 = !DISubroutineType(types: !2936)
!2936 = !{!77, !2863, !194, !77}
!2937 = distinct !DISubprogram(name: "getprogname", scope: !1020, file: !1020, line: 54, type: !2938, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1019, retainedNodes: !1101)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!115}
!2940 = !DILocation(line: 58, column: 10, scope: !2937)
!2941 = !DILocation(line: 58, column: 3, scope: !2937)
!2942 = distinct !DISubprogram(name: "set_program_name", scope: !755, file: !755, line: 37, type: !1114, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !2943)
!2943 = !{!2944, !2945, !2946}
!2944 = !DILocalVariable(name: "argv0", arg: 1, scope: !2942, file: !755, line: 37, type: !115)
!2945 = !DILocalVariable(name: "slash", scope: !2942, file: !755, line: 44, type: !115)
!2946 = !DILocalVariable(name: "base", scope: !2942, file: !755, line: 45, type: !115)
!2947 = !DILocation(line: 0, scope: !2942)
!2948 = !DILocation(line: 44, column: 23, scope: !2942)
!2949 = !DILocation(line: 45, column: 22, scope: !2942)
!2950 = !DILocation(line: 46, column: 17, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2942, file: !755, line: 46, column: 7)
!2952 = !DILocation(line: 46, column: 9, scope: !2951)
!2953 = !DILocation(line: 46, column: 25, scope: !2951)
!2954 = !DILocation(line: 46, column: 40, scope: !2951)
!2955 = !DILocalVariable(name: "__s1", arg: 1, scope: !2956, file: !1175, line: 974, type: !1307)
!2956 = distinct !DISubprogram(name: "memeq", scope: !1175, file: !1175, line: 974, type: !2957, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !754, retainedNodes: !2959)
!2957 = !DISubroutineType(types: !2958)
!2958 = !{!109, !1307, !1307, !113}
!2959 = !{!2955, !2960, !2961}
!2960 = !DILocalVariable(name: "__s2", arg: 2, scope: !2956, file: !1175, line: 974, type: !1307)
!2961 = !DILocalVariable(name: "__n", arg: 3, scope: !2956, file: !1175, line: 974, type: !113)
!2962 = !DILocation(line: 0, scope: !2956, inlinedAt: !2963)
!2963 = distinct !DILocation(line: 46, column: 28, scope: !2951)
!2964 = !DILocation(line: 976, column: 11, scope: !2956, inlinedAt: !2963)
!2965 = !DILocation(line: 976, column: 10, scope: !2956, inlinedAt: !2963)
!2966 = !DILocation(line: 46, column: 7, scope: !2942)
!2967 = !DILocation(line: 49, column: 11, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2969, file: !755, line: 49, column: 11)
!2969 = distinct !DILexicalBlock(scope: !2951, file: !755, line: 47, column: 5)
!2970 = !DILocation(line: 49, column: 36, scope: !2968)
!2971 = !DILocation(line: 49, column: 11, scope: !2969)
!2972 = !DILocation(line: 65, column: 16, scope: !2942)
!2973 = !DILocation(line: 71, column: 27, scope: !2942)
!2974 = !DILocation(line: 74, column: 33, scope: !2942)
!2975 = !DILocation(line: 76, column: 1, scope: !2942)
!2976 = !DISubprogram(name: "strrchr", scope: !1279, file: !1279, line: 273, type: !1294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!2977 = !DILocation(line: 0, scope: !764)
!2978 = !DILocation(line: 40, column: 29, scope: !764)
!2979 = !DILocation(line: 41, column: 19, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !764, file: !765, line: 41, column: 7)
!2981 = !DILocation(line: 41, column: 7, scope: !764)
!2982 = !DILocation(line: 47, column: 3, scope: !764)
!2983 = !DILocation(line: 48, column: 3, scope: !764)
!2984 = !DILocation(line: 48, column: 13, scope: !764)
!2985 = !DILocalVariable(name: "ps", arg: 1, scope: !2986, file: !2987, line: 1135, type: !2990)
!2986 = distinct !DISubprogram(name: "mbszero", scope: !2987, file: !2987, line: 1135, type: !2988, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !2991)
!2987 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2988 = !DISubroutineType(types: !2989)
!2989 = !{null, !2990}
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!2991 = !{!2985}
!2992 = !DILocation(line: 0, scope: !2986, inlinedAt: !2993)
!2993 = distinct !DILocation(line: 48, column: 18, scope: !764)
!2994 = !DILocalVariable(name: "__dest", arg: 1, scope: !2995, file: !1426, line: 57, type: !108)
!2995 = distinct !DISubprogram(name: "memset", scope: !1426, file: !1426, line: 57, type: !2996, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !768, retainedNodes: !2998)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!108, !108, !77, !113}
!2998 = !{!2994, !2999, !3000}
!2999 = !DILocalVariable(name: "__ch", arg: 2, scope: !2995, file: !1426, line: 57, type: !77)
!3000 = !DILocalVariable(name: "__len", arg: 3, scope: !2995, file: !1426, line: 57, type: !113)
!3001 = !DILocation(line: 0, scope: !2995, inlinedAt: !3002)
!3002 = distinct !DILocation(line: 1137, column: 3, scope: !2986, inlinedAt: !2993)
!3003 = !DILocation(line: 59, column: 10, scope: !2995, inlinedAt: !3002)
!3004 = !DILocation(line: 49, column: 7, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !764, file: !765, line: 49, column: 7)
!3006 = !DILocation(line: 49, column: 39, scope: !3005)
!3007 = !DILocation(line: 49, column: 44, scope: !3005)
!3008 = !DILocation(line: 54, column: 1, scope: !764)
!3009 = distinct !DISubprogram(name: "clone_quoting_options", scope: !791, file: !791, line: 113, type: !3010, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3013)
!3010 = !DISubroutineType(types: !3011)
!3011 = !{!3012, !3012}
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!3013 = !{!3014, !3015, !3016}
!3014 = !DILocalVariable(name: "o", arg: 1, scope: !3009, file: !791, line: 113, type: !3012)
!3015 = !DILocalVariable(name: "saved_errno", scope: !3009, file: !791, line: 115, type: !77)
!3016 = !DILocalVariable(name: "p", scope: !3009, file: !791, line: 116, type: !3012)
!3017 = !DILocation(line: 0, scope: !3009)
!3018 = !DILocation(line: 115, column: 21, scope: !3009)
!3019 = !DILocation(line: 116, column: 40, scope: !3009)
!3020 = !DILocation(line: 116, column: 31, scope: !3009)
!3021 = !DILocation(line: 118, column: 9, scope: !3009)
!3022 = !DILocation(line: 119, column: 3, scope: !3009)
!3023 = distinct !DISubprogram(name: "get_quoting_style", scope: !791, file: !791, line: 124, type: !3024, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3028)
!3024 = !DISubroutineType(types: !3025)
!3025 = !{!444, !3026}
!3026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3027, size: 64)
!3027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !830)
!3028 = !{!3029}
!3029 = !DILocalVariable(name: "o", arg: 1, scope: !3023, file: !791, line: 124, type: !3026)
!3030 = !DILocation(line: 0, scope: !3023)
!3031 = !DILocation(line: 126, column: 11, scope: !3023)
!3032 = !DILocation(line: 126, column: 46, scope: !3023)
!3033 = !{!3034, !1094, i64 0}
!3034 = !{!"quoting_options", !1094, i64 0, !1163, i64 4, !1094, i64 8, !1093, i64 40, !1093, i64 48}
!3035 = !DILocation(line: 126, column: 3, scope: !3023)
!3036 = distinct !DISubprogram(name: "set_quoting_style", scope: !791, file: !791, line: 132, type: !3037, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3039)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{null, !3012, !444}
!3039 = !{!3040, !3041}
!3040 = !DILocalVariable(name: "o", arg: 1, scope: !3036, file: !791, line: 132, type: !3012)
!3041 = !DILocalVariable(name: "s", arg: 2, scope: !3036, file: !791, line: 132, type: !444)
!3042 = !DILocation(line: 0, scope: !3036)
!3043 = !DILocation(line: 134, column: 4, scope: !3036)
!3044 = !DILocation(line: 134, column: 45, scope: !3036)
!3045 = !DILocation(line: 135, column: 1, scope: !3036)
!3046 = distinct !DISubprogram(name: "set_char_quoting", scope: !791, file: !791, line: 143, type: !3047, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3049)
!3047 = !DISubroutineType(types: !3048)
!3048 = !{!77, !3012, !4, !77}
!3049 = !{!3050, !3051, !3052, !3053, !3054, !3056, !3057}
!3050 = !DILocalVariable(name: "o", arg: 1, scope: !3046, file: !791, line: 143, type: !3012)
!3051 = !DILocalVariable(name: "c", arg: 2, scope: !3046, file: !791, line: 143, type: !4)
!3052 = !DILocalVariable(name: "i", arg: 3, scope: !3046, file: !791, line: 143, type: !77)
!3053 = !DILocalVariable(name: "uc", scope: !3046, file: !791, line: 145, type: !117)
!3054 = !DILocalVariable(name: "p", scope: !3046, file: !791, line: 146, type: !3055)
!3055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!3056 = !DILocalVariable(name: "shift", scope: !3046, file: !791, line: 148, type: !77)
!3057 = !DILocalVariable(name: "r", scope: !3046, file: !791, line: 149, type: !72)
!3058 = !DILocation(line: 0, scope: !3046)
!3059 = !DILocation(line: 147, column: 6, scope: !3046)
!3060 = !DILocation(line: 147, column: 41, scope: !3046)
!3061 = !DILocation(line: 147, column: 62, scope: !3046)
!3062 = !DILocation(line: 147, column: 57, scope: !3046)
!3063 = !DILocation(line: 148, column: 15, scope: !3046)
!3064 = !DILocation(line: 149, column: 21, scope: !3046)
!3065 = !DILocation(line: 149, column: 24, scope: !3046)
!3066 = !DILocation(line: 149, column: 34, scope: !3046)
!3067 = !DILocation(line: 150, column: 19, scope: !3046)
!3068 = !DILocation(line: 150, column: 24, scope: !3046)
!3069 = !DILocation(line: 150, column: 6, scope: !3046)
!3070 = !DILocation(line: 151, column: 3, scope: !3046)
!3071 = distinct !DISubprogram(name: "set_quoting_flags", scope: !791, file: !791, line: 159, type: !3072, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3074)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!77, !3012, !77}
!3074 = !{!3075, !3076, !3077}
!3075 = !DILocalVariable(name: "o", arg: 1, scope: !3071, file: !791, line: 159, type: !3012)
!3076 = !DILocalVariable(name: "i", arg: 2, scope: !3071, file: !791, line: 159, type: !77)
!3077 = !DILocalVariable(name: "r", scope: !3071, file: !791, line: 163, type: !77)
!3078 = !DILocation(line: 0, scope: !3071)
!3079 = !DILocation(line: 161, column: 8, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3071, file: !791, line: 161, column: 7)
!3081 = !DILocation(line: 161, column: 7, scope: !3071)
!3082 = !DILocation(line: 163, column: 14, scope: !3071)
!3083 = !{!3034, !1163, i64 4}
!3084 = !DILocation(line: 164, column: 12, scope: !3071)
!3085 = !DILocation(line: 165, column: 3, scope: !3071)
!3086 = distinct !DISubprogram(name: "set_custom_quoting", scope: !791, file: !791, line: 169, type: !3087, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3089)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{null, !3012, !115, !115}
!3089 = !{!3090, !3091, !3092}
!3090 = !DILocalVariable(name: "o", arg: 1, scope: !3086, file: !791, line: 169, type: !3012)
!3091 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3086, file: !791, line: 170, type: !115)
!3092 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3086, file: !791, line: 170, type: !115)
!3093 = !DILocation(line: 0, scope: !3086)
!3094 = !DILocation(line: 172, column: 8, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3086, file: !791, line: 172, column: 7)
!3096 = !DILocation(line: 172, column: 7, scope: !3086)
!3097 = !DILocation(line: 174, column: 12, scope: !3086)
!3098 = !DILocation(line: 175, column: 8, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3086, file: !791, line: 175, column: 7)
!3100 = !DILocation(line: 175, column: 19, scope: !3099)
!3101 = !DILocation(line: 176, column: 5, scope: !3099)
!3102 = !DILocation(line: 177, column: 6, scope: !3086)
!3103 = !DILocation(line: 177, column: 17, scope: !3086)
!3104 = !{!3034, !1093, i64 40}
!3105 = !DILocation(line: 178, column: 6, scope: !3086)
!3106 = !DILocation(line: 178, column: 18, scope: !3086)
!3107 = !{!3034, !1093, i64 48}
!3108 = !DILocation(line: 179, column: 1, scope: !3086)
!3109 = !DISubprogram(name: "abort", scope: !1283, file: !1283, line: 598, type: !356, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!3110 = distinct !DISubprogram(name: "quotearg_buffer", scope: !791, file: !791, line: 774, type: !3111, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3113)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{!113, !107, !113, !115, !113, !3026}
!3113 = !{!3114, !3115, !3116, !3117, !3118, !3119, !3120, !3121}
!3114 = !DILocalVariable(name: "buffer", arg: 1, scope: !3110, file: !791, line: 774, type: !107)
!3115 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3110, file: !791, line: 774, type: !113)
!3116 = !DILocalVariable(name: "arg", arg: 3, scope: !3110, file: !791, line: 775, type: !115)
!3117 = !DILocalVariable(name: "argsize", arg: 4, scope: !3110, file: !791, line: 775, type: !113)
!3118 = !DILocalVariable(name: "o", arg: 5, scope: !3110, file: !791, line: 776, type: !3026)
!3119 = !DILocalVariable(name: "p", scope: !3110, file: !791, line: 778, type: !3026)
!3120 = !DILocalVariable(name: "saved_errno", scope: !3110, file: !791, line: 779, type: !77)
!3121 = !DILocalVariable(name: "r", scope: !3110, file: !791, line: 780, type: !113)
!3122 = !DILocation(line: 0, scope: !3110)
!3123 = !DILocation(line: 778, column: 37, scope: !3110)
!3124 = !DILocation(line: 779, column: 21, scope: !3110)
!3125 = !DILocation(line: 781, column: 43, scope: !3110)
!3126 = !DILocation(line: 781, column: 53, scope: !3110)
!3127 = !DILocation(line: 781, column: 63, scope: !3110)
!3128 = !DILocation(line: 782, column: 43, scope: !3110)
!3129 = !DILocation(line: 782, column: 58, scope: !3110)
!3130 = !DILocation(line: 780, column: 14, scope: !3110)
!3131 = !DILocation(line: 783, column: 9, scope: !3110)
!3132 = !DILocation(line: 784, column: 3, scope: !3110)
!3133 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !791, file: !791, line: 251, type: !3134, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3138)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!113, !107, !113, !115, !113, !444, !77, !3136, !115, !115}
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!3138 = !{!3139, !3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3163, !3165, !3168, !3169, !3170, !3171, !3174, !3175, !3178, !3182, !3183, !3191, !3194, !3195, !3197, !3198, !3199, !3200}
!3139 = !DILocalVariable(name: "buffer", arg: 1, scope: !3133, file: !791, line: 251, type: !107)
!3140 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3133, file: !791, line: 251, type: !113)
!3141 = !DILocalVariable(name: "arg", arg: 3, scope: !3133, file: !791, line: 252, type: !115)
!3142 = !DILocalVariable(name: "argsize", arg: 4, scope: !3133, file: !791, line: 252, type: !113)
!3143 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3133, file: !791, line: 253, type: !444)
!3144 = !DILocalVariable(name: "flags", arg: 6, scope: !3133, file: !791, line: 253, type: !77)
!3145 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3133, file: !791, line: 254, type: !3136)
!3146 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3133, file: !791, line: 255, type: !115)
!3147 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3133, file: !791, line: 256, type: !115)
!3148 = !DILocalVariable(name: "unibyte_locale", scope: !3133, file: !791, line: 258, type: !109)
!3149 = !DILocalVariable(name: "len", scope: !3133, file: !791, line: 260, type: !113)
!3150 = !DILocalVariable(name: "orig_buffersize", scope: !3133, file: !791, line: 261, type: !113)
!3151 = !DILocalVariable(name: "quote_string", scope: !3133, file: !791, line: 262, type: !115)
!3152 = !DILocalVariable(name: "quote_string_len", scope: !3133, file: !791, line: 263, type: !113)
!3153 = !DILocalVariable(name: "backslash_escapes", scope: !3133, file: !791, line: 264, type: !109)
!3154 = !DILocalVariable(name: "elide_outer_quotes", scope: !3133, file: !791, line: 265, type: !109)
!3155 = !DILocalVariable(name: "encountered_single_quote", scope: !3133, file: !791, line: 266, type: !109)
!3156 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3133, file: !791, line: 267, type: !109)
!3157 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3133, file: !791, line: 309, type: !109)
!3158 = !DILocalVariable(name: "lq", scope: !3159, file: !791, line: 361, type: !115)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !791, line: 361, column: 11)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !791, line: 360, column: 13)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !791, line: 333, column: 7)
!3162 = distinct !DILexicalBlock(scope: !3133, file: !791, line: 312, column: 5)
!3163 = !DILocalVariable(name: "i", scope: !3164, file: !791, line: 395, type: !113)
!3164 = distinct !DILexicalBlock(scope: !3133, file: !791, line: 395, column: 3)
!3165 = !DILocalVariable(name: "is_right_quote", scope: !3166, file: !791, line: 397, type: !109)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !791, line: 396, column: 5)
!3167 = distinct !DILexicalBlock(scope: !3164, file: !791, line: 395, column: 3)
!3168 = !DILocalVariable(name: "escaping", scope: !3166, file: !791, line: 398, type: !109)
!3169 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3166, file: !791, line: 399, type: !109)
!3170 = !DILocalVariable(name: "c", scope: !3166, file: !791, line: 417, type: !117)
!3171 = !DILocalVariable(name: "m", scope: !3172, file: !791, line: 598, type: !113)
!3172 = distinct !DILexicalBlock(scope: !3173, file: !791, line: 596, column: 11)
!3173 = distinct !DILexicalBlock(scope: !3166, file: !791, line: 419, column: 9)
!3174 = !DILocalVariable(name: "printable", scope: !3172, file: !791, line: 600, type: !109)
!3175 = !DILocalVariable(name: "mbs", scope: !3176, file: !791, line: 609, type: !864)
!3176 = distinct !DILexicalBlock(scope: !3177, file: !791, line: 608, column: 15)
!3177 = distinct !DILexicalBlock(scope: !3172, file: !791, line: 602, column: 17)
!3178 = !DILocalVariable(name: "w", scope: !3179, file: !791, line: 618, type: !380)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !791, line: 617, column: 19)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !791, line: 616, column: 17)
!3181 = distinct !DILexicalBlock(scope: !3176, file: !791, line: 616, column: 17)
!3182 = !DILocalVariable(name: "bytes", scope: !3179, file: !791, line: 619, type: !113)
!3183 = !DILocalVariable(name: "j", scope: !3184, file: !791, line: 648, type: !113)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !791, line: 648, column: 29)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !791, line: 647, column: 27)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !791, line: 645, column: 29)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !791, line: 636, column: 23)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !791, line: 628, column: 30)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !791, line: 623, column: 30)
!3190 = distinct !DILexicalBlock(scope: !3179, file: !791, line: 621, column: 25)
!3191 = !DILocalVariable(name: "ilim", scope: !3192, file: !791, line: 674, type: !113)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !791, line: 671, column: 15)
!3193 = distinct !DILexicalBlock(scope: !3172, file: !791, line: 670, column: 17)
!3194 = !DILabel(scope: !3133, name: "process_input", file: !791, line: 308)
!3195 = !DILabel(scope: !3196, name: "c_and_shell_escape", file: !791, line: 502)
!3196 = distinct !DILexicalBlock(scope: !3173, file: !791, line: 478, column: 9)
!3197 = !DILabel(scope: !3196, name: "c_escape", file: !791, line: 507)
!3198 = !DILabel(scope: !3166, name: "store_escape", file: !791, line: 709)
!3199 = !DILabel(scope: !3166, name: "store_c", file: !791, line: 712)
!3200 = !DILabel(scope: !3133, name: "force_outer_quoting_style", file: !791, line: 753)
!3201 = !DILocation(line: 0, scope: !3133)
!3202 = !DILocation(line: 258, column: 25, scope: !3133)
!3203 = !DILocation(line: 258, column: 36, scope: !3133)
!3204 = !DILocation(line: 267, column: 3, scope: !3133)
!3205 = !DILocation(line: 261, column: 10, scope: !3133)
!3206 = !DILocation(line: 262, column: 15, scope: !3133)
!3207 = !DILocation(line: 263, column: 10, scope: !3133)
!3208 = !DILocation(line: 308, column: 2, scope: !3133)
!3209 = !DILocation(line: 311, column: 3, scope: !3133)
!3210 = !DILocation(line: 318, column: 11, scope: !3162)
!3211 = !DILocation(line: 319, column: 9, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !791, line: 319, column: 9)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !791, line: 319, column: 9)
!3214 = distinct !DILexicalBlock(scope: !3162, file: !791, line: 318, column: 11)
!3215 = !DILocation(line: 319, column: 9, scope: !3213)
!3216 = !DILocation(line: 0, scope: !855, inlinedAt: !3217)
!3217 = distinct !DILocation(line: 357, column: 26, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !791, line: 335, column: 11)
!3219 = distinct !DILexicalBlock(scope: !3161, file: !791, line: 334, column: 13)
!3220 = !DILocation(line: 199, column: 29, scope: !855, inlinedAt: !3217)
!3221 = !DILocation(line: 201, column: 19, scope: !3222, inlinedAt: !3217)
!3222 = distinct !DILexicalBlock(scope: !855, file: !791, line: 201, column: 7)
!3223 = !DILocation(line: 201, column: 7, scope: !855, inlinedAt: !3217)
!3224 = !DILocation(line: 229, column: 3, scope: !855, inlinedAt: !3217)
!3225 = !DILocation(line: 230, column: 3, scope: !855, inlinedAt: !3217)
!3226 = !DILocation(line: 230, column: 13, scope: !855, inlinedAt: !3217)
!3227 = !DILocalVariable(name: "ps", arg: 1, scope: !3228, file: !2987, line: 1135, type: !3231)
!3228 = distinct !DISubprogram(name: "mbszero", scope: !2987, file: !2987, line: 1135, type: !3229, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3232)
!3229 = !DISubroutineType(types: !3230)
!3230 = !{null, !3231}
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!3232 = !{!3227}
!3233 = !DILocation(line: 0, scope: !3228, inlinedAt: !3234)
!3234 = distinct !DILocation(line: 230, column: 18, scope: !855, inlinedAt: !3217)
!3235 = !DILocalVariable(name: "__dest", arg: 1, scope: !3236, file: !1426, line: 57, type: !108)
!3236 = distinct !DISubprogram(name: "memset", scope: !1426, file: !1426, line: 57, type: !2996, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3237)
!3237 = !{!3235, !3238, !3239}
!3238 = !DILocalVariable(name: "__ch", arg: 2, scope: !3236, file: !1426, line: 57, type: !77)
!3239 = !DILocalVariable(name: "__len", arg: 3, scope: !3236, file: !1426, line: 57, type: !113)
!3240 = !DILocation(line: 0, scope: !3236, inlinedAt: !3241)
!3241 = distinct !DILocation(line: 1137, column: 3, scope: !3228, inlinedAt: !3234)
!3242 = !DILocation(line: 59, column: 10, scope: !3236, inlinedAt: !3241)
!3243 = !DILocation(line: 231, column: 7, scope: !3244, inlinedAt: !3217)
!3244 = distinct !DILexicalBlock(scope: !855, file: !791, line: 231, column: 7)
!3245 = !DILocation(line: 231, column: 40, scope: !3244, inlinedAt: !3217)
!3246 = !DILocation(line: 231, column: 45, scope: !3244, inlinedAt: !3217)
!3247 = !DILocation(line: 235, column: 1, scope: !855, inlinedAt: !3217)
!3248 = !DILocation(line: 0, scope: !855, inlinedAt: !3249)
!3249 = distinct !DILocation(line: 358, column: 27, scope: !3218)
!3250 = !DILocation(line: 199, column: 29, scope: !855, inlinedAt: !3249)
!3251 = !DILocation(line: 201, column: 19, scope: !3222, inlinedAt: !3249)
!3252 = !DILocation(line: 201, column: 7, scope: !855, inlinedAt: !3249)
!3253 = !DILocation(line: 229, column: 3, scope: !855, inlinedAt: !3249)
!3254 = !DILocation(line: 230, column: 3, scope: !855, inlinedAt: !3249)
!3255 = !DILocation(line: 230, column: 13, scope: !855, inlinedAt: !3249)
!3256 = !DILocation(line: 0, scope: !3228, inlinedAt: !3257)
!3257 = distinct !DILocation(line: 230, column: 18, scope: !855, inlinedAt: !3249)
!3258 = !DILocation(line: 0, scope: !3236, inlinedAt: !3259)
!3259 = distinct !DILocation(line: 1137, column: 3, scope: !3228, inlinedAt: !3257)
!3260 = !DILocation(line: 59, column: 10, scope: !3236, inlinedAt: !3259)
!3261 = !DILocation(line: 231, column: 7, scope: !3244, inlinedAt: !3249)
!3262 = !DILocation(line: 231, column: 40, scope: !3244, inlinedAt: !3249)
!3263 = !DILocation(line: 231, column: 45, scope: !3244, inlinedAt: !3249)
!3264 = !DILocation(line: 235, column: 1, scope: !855, inlinedAt: !3249)
!3265 = !DILocation(line: 360, column: 13, scope: !3161)
!3266 = !DILocation(line: 0, scope: !3159)
!3267 = !DILocation(line: 361, column: 45, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3159, file: !791, line: 361, column: 11)
!3269 = !DILocation(line: 361, column: 11, scope: !3159)
!3270 = !DILocation(line: 362, column: 13, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3272, file: !791, line: 362, column: 13)
!3272 = distinct !DILexicalBlock(scope: !3268, file: !791, line: 362, column: 13)
!3273 = !DILocation(line: 362, column: 13, scope: !3272)
!3274 = !DILocation(line: 361, column: 52, scope: !3268)
!3275 = distinct !{!3275, !3269, !3276, !1209}
!3276 = !DILocation(line: 362, column: 13, scope: !3159)
!3277 = !DILocation(line: 260, column: 10, scope: !3133)
!3278 = !DILocation(line: 365, column: 28, scope: !3161)
!3279 = !DILocation(line: 367, column: 7, scope: !3162)
!3280 = !DILocation(line: 370, column: 7, scope: !3162)
!3281 = !DILocation(line: 376, column: 11, scope: !3162)
!3282 = !DILocation(line: 381, column: 11, scope: !3162)
!3283 = !DILocation(line: 382, column: 9, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3285, file: !791, line: 382, column: 9)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !791, line: 382, column: 9)
!3286 = distinct !DILexicalBlock(scope: !3162, file: !791, line: 381, column: 11)
!3287 = !DILocation(line: 382, column: 9, scope: !3285)
!3288 = !DILocation(line: 389, column: 7, scope: !3162)
!3289 = !DILocation(line: 392, column: 7, scope: !3162)
!3290 = !DILocation(line: 0, scope: !3164)
!3291 = !DILocation(line: 395, column: 8, scope: !3164)
!3292 = !DILocation(line: 395, scope: !3164)
!3293 = !DILocation(line: 395, column: 34, scope: !3167)
!3294 = !DILocation(line: 395, column: 26, scope: !3167)
!3295 = !DILocation(line: 395, column: 48, scope: !3167)
!3296 = !DILocation(line: 395, column: 55, scope: !3167)
!3297 = !DILocation(line: 395, column: 3, scope: !3164)
!3298 = !DILocation(line: 395, column: 67, scope: !3167)
!3299 = !DILocation(line: 0, scope: !3166)
!3300 = !DILocation(line: 402, column: 11, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3166, file: !791, line: 401, column: 11)
!3302 = !DILocation(line: 404, column: 17, scope: !3301)
!3303 = !DILocation(line: 405, column: 39, scope: !3301)
!3304 = !DILocation(line: 409, column: 32, scope: !3301)
!3305 = !DILocation(line: 405, column: 19, scope: !3301)
!3306 = !DILocation(line: 405, column: 15, scope: !3301)
!3307 = !DILocation(line: 410, column: 11, scope: !3301)
!3308 = !DILocation(line: 410, column: 25, scope: !3301)
!3309 = !DILocalVariable(name: "__s1", arg: 1, scope: !3310, file: !1175, line: 974, type: !1307)
!3310 = distinct !DISubprogram(name: "memeq", scope: !1175, file: !1175, line: 974, type: !2957, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3311)
!3311 = !{!3309, !3312, !3313}
!3312 = !DILocalVariable(name: "__s2", arg: 2, scope: !3310, file: !1175, line: 974, type: !1307)
!3313 = !DILocalVariable(name: "__n", arg: 3, scope: !3310, file: !1175, line: 974, type: !113)
!3314 = !DILocation(line: 0, scope: !3310, inlinedAt: !3315)
!3315 = distinct !DILocation(line: 410, column: 14, scope: !3301)
!3316 = !DILocation(line: 976, column: 11, scope: !3310, inlinedAt: !3315)
!3317 = !DILocation(line: 976, column: 10, scope: !3310, inlinedAt: !3315)
!3318 = !DILocation(line: 401, column: 11, scope: !3166)
!3319 = !DILocation(line: 417, column: 25, scope: !3166)
!3320 = !DILocation(line: 418, column: 7, scope: !3166)
!3321 = !DILocation(line: 421, column: 15, scope: !3173)
!3322 = !DILocation(line: 423, column: 15, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3324, file: !791, line: 423, column: 15)
!3324 = distinct !DILexicalBlock(scope: !3325, file: !791, line: 422, column: 13)
!3325 = distinct !DILexicalBlock(scope: !3173, file: !791, line: 421, column: 15)
!3326 = !DILocation(line: 423, column: 15, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3323, file: !791, line: 423, column: 15)
!3328 = !DILocation(line: 423, column: 15, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3330, file: !791, line: 423, column: 15)
!3330 = distinct !DILexicalBlock(scope: !3331, file: !791, line: 423, column: 15)
!3331 = distinct !DILexicalBlock(scope: !3327, file: !791, line: 423, column: 15)
!3332 = !DILocation(line: 423, column: 15, scope: !3330)
!3333 = !DILocation(line: 423, column: 15, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !791, line: 423, column: 15)
!3335 = distinct !DILexicalBlock(scope: !3331, file: !791, line: 423, column: 15)
!3336 = !DILocation(line: 423, column: 15, scope: !3335)
!3337 = !DILocation(line: 423, column: 15, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3339, file: !791, line: 423, column: 15)
!3339 = distinct !DILexicalBlock(scope: !3331, file: !791, line: 423, column: 15)
!3340 = !DILocation(line: 423, column: 15, scope: !3339)
!3341 = !DILocation(line: 423, column: 15, scope: !3331)
!3342 = !DILocation(line: 423, column: 15, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3344, file: !791, line: 423, column: 15)
!3344 = distinct !DILexicalBlock(scope: !3323, file: !791, line: 423, column: 15)
!3345 = !DILocation(line: 423, column: 15, scope: !3344)
!3346 = !DILocation(line: 431, column: 19, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3324, file: !791, line: 430, column: 19)
!3348 = !DILocation(line: 431, column: 24, scope: !3347)
!3349 = !DILocation(line: 431, column: 28, scope: !3347)
!3350 = !DILocation(line: 431, column: 38, scope: !3347)
!3351 = !DILocation(line: 431, column: 48, scope: !3347)
!3352 = !DILocation(line: 431, column: 59, scope: !3347)
!3353 = !DILocation(line: 433, column: 19, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3355, file: !791, line: 433, column: 19)
!3355 = distinct !DILexicalBlock(scope: !3356, file: !791, line: 433, column: 19)
!3356 = distinct !DILexicalBlock(scope: !3347, file: !791, line: 432, column: 17)
!3357 = !DILocation(line: 433, column: 19, scope: !3355)
!3358 = !DILocation(line: 434, column: 19, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3360, file: !791, line: 434, column: 19)
!3360 = distinct !DILexicalBlock(scope: !3356, file: !791, line: 434, column: 19)
!3361 = !DILocation(line: 434, column: 19, scope: !3360)
!3362 = !DILocation(line: 435, column: 17, scope: !3356)
!3363 = !DILocation(line: 442, column: 20, scope: !3325)
!3364 = !DILocation(line: 447, column: 11, scope: !3173)
!3365 = !DILocation(line: 450, column: 19, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !3173, file: !791, line: 448, column: 13)
!3367 = !DILocation(line: 456, column: 19, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3366, file: !791, line: 455, column: 19)
!3369 = !DILocation(line: 456, column: 24, scope: !3368)
!3370 = !DILocation(line: 456, column: 28, scope: !3368)
!3371 = !DILocation(line: 456, column: 38, scope: !3368)
!3372 = !DILocation(line: 456, column: 47, scope: !3368)
!3373 = !DILocation(line: 456, column: 41, scope: !3368)
!3374 = !DILocation(line: 456, column: 52, scope: !3368)
!3375 = !DILocation(line: 455, column: 19, scope: !3366)
!3376 = !DILocation(line: 457, column: 25, scope: !3368)
!3377 = !DILocation(line: 457, column: 17, scope: !3368)
!3378 = !DILocation(line: 464, column: 25, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3368, file: !791, line: 458, column: 19)
!3380 = !DILocation(line: 468, column: 21, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !791, line: 468, column: 21)
!3382 = distinct !DILexicalBlock(scope: !3379, file: !791, line: 468, column: 21)
!3383 = !DILocation(line: 468, column: 21, scope: !3382)
!3384 = !DILocation(line: 469, column: 21, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !791, line: 469, column: 21)
!3386 = distinct !DILexicalBlock(scope: !3379, file: !791, line: 469, column: 21)
!3387 = !DILocation(line: 469, column: 21, scope: !3386)
!3388 = !DILocation(line: 470, column: 21, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !791, line: 470, column: 21)
!3390 = distinct !DILexicalBlock(scope: !3379, file: !791, line: 470, column: 21)
!3391 = !DILocation(line: 470, column: 21, scope: !3390)
!3392 = !DILocation(line: 471, column: 21, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3394, file: !791, line: 471, column: 21)
!3394 = distinct !DILexicalBlock(scope: !3379, file: !791, line: 471, column: 21)
!3395 = !DILocation(line: 471, column: 21, scope: !3394)
!3396 = !DILocation(line: 472, column: 21, scope: !3379)
!3397 = !DILocation(line: 482, column: 33, scope: !3196)
!3398 = !DILocation(line: 483, column: 33, scope: !3196)
!3399 = !DILocation(line: 485, column: 33, scope: !3196)
!3400 = !DILocation(line: 486, column: 33, scope: !3196)
!3401 = !DILocation(line: 487, column: 33, scope: !3196)
!3402 = !DILocation(line: 490, column: 17, scope: !3196)
!3403 = !DILocation(line: 492, column: 21, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3405, file: !791, line: 491, column: 15)
!3405 = distinct !DILexicalBlock(scope: !3196, file: !791, line: 490, column: 17)
!3406 = !DILocation(line: 499, column: 35, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3196, file: !791, line: 499, column: 17)
!3408 = !DILocation(line: 0, scope: !3196)
!3409 = !DILocation(line: 502, column: 11, scope: !3196)
!3410 = !DILocation(line: 504, column: 17, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3196, file: !791, line: 503, column: 17)
!3412 = !DILocation(line: 507, column: 11, scope: !3196)
!3413 = !DILocation(line: 508, column: 17, scope: !3196)
!3414 = !DILocation(line: 517, column: 15, scope: !3173)
!3415 = !DILocation(line: 517, column: 40, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3173, file: !791, line: 517, column: 15)
!3417 = !DILocation(line: 517, column: 47, scope: !3416)
!3418 = !DILocation(line: 517, column: 18, scope: !3416)
!3419 = !DILocation(line: 521, column: 17, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3173, file: !791, line: 521, column: 15)
!3421 = !DILocation(line: 521, column: 15, scope: !3173)
!3422 = !DILocation(line: 525, column: 11, scope: !3173)
!3423 = !DILocation(line: 537, column: 15, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3173, file: !791, line: 536, column: 15)
!3425 = !DILocation(line: 536, column: 15, scope: !3173)
!3426 = !DILocation(line: 544, column: 15, scope: !3173)
!3427 = !DILocation(line: 546, column: 19, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !791, line: 545, column: 13)
!3429 = distinct !DILexicalBlock(scope: !3173, file: !791, line: 544, column: 15)
!3430 = !DILocation(line: 549, column: 19, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3428, file: !791, line: 549, column: 19)
!3432 = !DILocation(line: 549, column: 30, scope: !3431)
!3433 = !DILocation(line: 558, column: 15, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !791, line: 558, column: 15)
!3435 = distinct !DILexicalBlock(scope: !3428, file: !791, line: 558, column: 15)
!3436 = !DILocation(line: 558, column: 15, scope: !3435)
!3437 = !DILocation(line: 559, column: 15, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !791, line: 559, column: 15)
!3439 = distinct !DILexicalBlock(scope: !3428, file: !791, line: 559, column: 15)
!3440 = !DILocation(line: 559, column: 15, scope: !3439)
!3441 = !DILocation(line: 560, column: 15, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !791, line: 560, column: 15)
!3443 = distinct !DILexicalBlock(scope: !3428, file: !791, line: 560, column: 15)
!3444 = !DILocation(line: 560, column: 15, scope: !3443)
!3445 = !DILocation(line: 562, column: 13, scope: !3428)
!3446 = !DILocation(line: 602, column: 17, scope: !3172)
!3447 = !DILocation(line: 0, scope: !3172)
!3448 = !DILocation(line: 605, column: 29, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3177, file: !791, line: 603, column: 15)
!3450 = !DILocation(line: 605, column: 41, scope: !3449)
!3451 = !DILocation(line: 606, column: 15, scope: !3449)
!3452 = !DILocation(line: 609, column: 17, scope: !3176)
!3453 = !DILocation(line: 609, column: 27, scope: !3176)
!3454 = !DILocation(line: 0, scope: !3228, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 609, column: 32, scope: !3176)
!3456 = !DILocation(line: 0, scope: !3236, inlinedAt: !3457)
!3457 = distinct !DILocation(line: 1137, column: 3, scope: !3228, inlinedAt: !3455)
!3458 = !DILocation(line: 59, column: 10, scope: !3236, inlinedAt: !3457)
!3459 = !DILocation(line: 613, column: 29, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3176, file: !791, line: 613, column: 21)
!3461 = !DILocation(line: 613, column: 21, scope: !3176)
!3462 = !DILocation(line: 614, column: 29, scope: !3460)
!3463 = !DILocation(line: 614, column: 19, scope: !3460)
!3464 = !DILocation(line: 618, column: 21, scope: !3179)
!3465 = !DILocation(line: 620, column: 54, scope: !3179)
!3466 = !DILocation(line: 0, scope: !3179)
!3467 = !DILocation(line: 619, column: 36, scope: !3179)
!3468 = !DILocation(line: 621, column: 25, scope: !3179)
!3469 = !DILocation(line: 631, column: 38, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3188, file: !791, line: 629, column: 23)
!3471 = !DILocation(line: 631, column: 48, scope: !3470)
!3472 = !DILocation(line: 626, column: 25, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3189, file: !791, line: 624, column: 23)
!3474 = !DILocation(line: 631, column: 51, scope: !3470)
!3475 = !DILocation(line: 631, column: 25, scope: !3470)
!3476 = !DILocation(line: 632, column: 28, scope: !3470)
!3477 = !DILocation(line: 631, column: 34, scope: !3470)
!3478 = distinct !{!3478, !3475, !3476, !1209}
!3479 = !DILocation(line: 646, column: 29, scope: !3186)
!3480 = !DILocation(line: 0, scope: !3184)
!3481 = !DILocation(line: 649, column: 49, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3184, file: !791, line: 648, column: 29)
!3483 = !DILocation(line: 649, column: 39, scope: !3482)
!3484 = !DILocation(line: 649, column: 31, scope: !3482)
!3485 = !DILocation(line: 648, column: 60, scope: !3482)
!3486 = !DILocation(line: 648, column: 50, scope: !3482)
!3487 = !DILocation(line: 648, column: 29, scope: !3184)
!3488 = distinct !{!3488, !3487, !3489, !1209}
!3489 = !DILocation(line: 654, column: 33, scope: !3184)
!3490 = !DILocation(line: 657, column: 43, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3187, file: !791, line: 657, column: 29)
!3492 = !DILocalVariable(name: "wc", arg: 1, scope: !3493, file: !1548, line: 865, type: !1551)
!3493 = distinct !DISubprogram(name: "c32isprint", scope: !1548, file: !1548, line: 865, type: !1549, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3494)
!3494 = !{!3492}
!3495 = !DILocation(line: 0, scope: !3493, inlinedAt: !3496)
!3496 = distinct !DILocation(line: 657, column: 31, scope: !3491)
!3497 = !DILocation(line: 871, column: 10, scope: !3493, inlinedAt: !3496)
!3498 = !DILocation(line: 657, column: 31, scope: !3491)
!3499 = !DILocation(line: 664, column: 23, scope: !3179)
!3500 = !DILocation(line: 665, column: 19, scope: !3180)
!3501 = !DILocation(line: 666, column: 15, scope: !3177)
!3502 = !DILocation(line: 753, column: 2, scope: !3133)
!3503 = !DILocation(line: 756, column: 51, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3133, file: !791, line: 756, column: 7)
!3505 = !DILocation(line: 0, scope: !3177)
!3506 = !DILocation(line: 670, column: 19, scope: !3193)
!3507 = !DILocation(line: 670, column: 23, scope: !3193)
!3508 = !DILocation(line: 674, column: 33, scope: !3192)
!3509 = !DILocation(line: 0, scope: !3192)
!3510 = !DILocation(line: 676, column: 17, scope: !3192)
!3511 = !DILocation(line: 398, column: 12, scope: !3166)
!3512 = !DILocation(line: 678, column: 43, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3514, file: !791, line: 678, column: 25)
!3514 = distinct !DILexicalBlock(scope: !3515, file: !791, line: 677, column: 19)
!3515 = distinct !DILexicalBlock(scope: !3516, file: !791, line: 676, column: 17)
!3516 = distinct !DILexicalBlock(scope: !3192, file: !791, line: 676, column: 17)
!3517 = !DILocation(line: 680, column: 25, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3519, file: !791, line: 680, column: 25)
!3519 = distinct !DILexicalBlock(scope: !3513, file: !791, line: 679, column: 23)
!3520 = !DILocation(line: 680, column: 25, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3518, file: !791, line: 680, column: 25)
!3522 = !DILocation(line: 680, column: 25, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !791, line: 680, column: 25)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !791, line: 680, column: 25)
!3525 = distinct !DILexicalBlock(scope: !3521, file: !791, line: 680, column: 25)
!3526 = !DILocation(line: 680, column: 25, scope: !3524)
!3527 = !DILocation(line: 680, column: 25, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !791, line: 680, column: 25)
!3529 = distinct !DILexicalBlock(scope: !3525, file: !791, line: 680, column: 25)
!3530 = !DILocation(line: 680, column: 25, scope: !3529)
!3531 = !DILocation(line: 680, column: 25, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !791, line: 680, column: 25)
!3533 = distinct !DILexicalBlock(scope: !3525, file: !791, line: 680, column: 25)
!3534 = !DILocation(line: 680, column: 25, scope: !3533)
!3535 = !DILocation(line: 680, column: 25, scope: !3525)
!3536 = !DILocation(line: 680, column: 25, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !791, line: 680, column: 25)
!3538 = distinct !DILexicalBlock(scope: !3518, file: !791, line: 680, column: 25)
!3539 = !DILocation(line: 680, column: 25, scope: !3538)
!3540 = !DILocation(line: 681, column: 25, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3542, file: !791, line: 681, column: 25)
!3542 = distinct !DILexicalBlock(scope: !3519, file: !791, line: 681, column: 25)
!3543 = !DILocation(line: 681, column: 25, scope: !3542)
!3544 = !DILocation(line: 682, column: 25, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !791, line: 682, column: 25)
!3546 = distinct !DILexicalBlock(scope: !3519, file: !791, line: 682, column: 25)
!3547 = !DILocation(line: 682, column: 25, scope: !3546)
!3548 = !DILocation(line: 683, column: 38, scope: !3519)
!3549 = !DILocation(line: 683, column: 33, scope: !3519)
!3550 = !DILocation(line: 684, column: 23, scope: !3519)
!3551 = !DILocation(line: 685, column: 30, scope: !3513)
!3552 = !DILocation(line: 687, column: 25, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3554, file: !791, line: 687, column: 25)
!3554 = distinct !DILexicalBlock(scope: !3555, file: !791, line: 687, column: 25)
!3555 = distinct !DILexicalBlock(scope: !3556, file: !791, line: 686, column: 23)
!3556 = distinct !DILexicalBlock(scope: !3513, file: !791, line: 685, column: 30)
!3557 = !DILocation(line: 687, column: 25, scope: !3554)
!3558 = !DILocation(line: 689, column: 23, scope: !3555)
!3559 = !DILocation(line: 690, column: 35, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3514, file: !791, line: 690, column: 25)
!3561 = !DILocation(line: 690, column: 30, scope: !3560)
!3562 = !DILocation(line: 690, column: 25, scope: !3514)
!3563 = !DILocation(line: 692, column: 21, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !791, line: 692, column: 21)
!3565 = distinct !DILexicalBlock(scope: !3514, file: !791, line: 692, column: 21)
!3566 = !DILocation(line: 692, column: 21, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3568, file: !791, line: 692, column: 21)
!3568 = distinct !DILexicalBlock(scope: !3569, file: !791, line: 692, column: 21)
!3569 = distinct !DILexicalBlock(scope: !3564, file: !791, line: 692, column: 21)
!3570 = !DILocation(line: 692, column: 21, scope: !3568)
!3571 = !DILocation(line: 692, column: 21, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3573, file: !791, line: 692, column: 21)
!3573 = distinct !DILexicalBlock(scope: !3569, file: !791, line: 692, column: 21)
!3574 = !DILocation(line: 692, column: 21, scope: !3573)
!3575 = !DILocation(line: 692, column: 21, scope: !3569)
!3576 = !DILocation(line: 0, scope: !3514)
!3577 = !DILocation(line: 693, column: 21, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3579, file: !791, line: 693, column: 21)
!3579 = distinct !DILexicalBlock(scope: !3514, file: !791, line: 693, column: 21)
!3580 = !DILocation(line: 693, column: 21, scope: !3579)
!3581 = !DILocation(line: 694, column: 25, scope: !3514)
!3582 = !DILocation(line: 676, column: 17, scope: !3515)
!3583 = distinct !{!3583, !3584, !3585}
!3584 = !DILocation(line: 676, column: 17, scope: !3516)
!3585 = !DILocation(line: 695, column: 19, scope: !3516)
!3586 = !DILocation(line: 409, column: 30, scope: !3301)
!3587 = !DILocation(line: 702, column: 34, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3166, file: !791, line: 702, column: 11)
!3589 = !DILocation(line: 704, column: 14, scope: !3588)
!3590 = !DILocation(line: 705, column: 14, scope: !3588)
!3591 = !DILocation(line: 705, column: 35, scope: !3588)
!3592 = !DILocation(line: 705, column: 17, scope: !3588)
!3593 = !DILocation(line: 705, column: 47, scope: !3588)
!3594 = !DILocation(line: 705, column: 65, scope: !3588)
!3595 = !DILocation(line: 706, column: 11, scope: !3588)
!3596 = !DILocation(line: 702, column: 11, scope: !3166)
!3597 = !DILocation(line: 395, column: 15, scope: !3164)
!3598 = !DILocation(line: 709, column: 5, scope: !3166)
!3599 = !DILocation(line: 710, column: 7, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3166, file: !791, line: 710, column: 7)
!3601 = !DILocation(line: 710, column: 7, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3600, file: !791, line: 710, column: 7)
!3603 = !DILocation(line: 710, column: 7, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3605, file: !791, line: 710, column: 7)
!3605 = distinct !DILexicalBlock(scope: !3606, file: !791, line: 710, column: 7)
!3606 = distinct !DILexicalBlock(scope: !3602, file: !791, line: 710, column: 7)
!3607 = !DILocation(line: 710, column: 7, scope: !3605)
!3608 = !DILocation(line: 710, column: 7, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3610, file: !791, line: 710, column: 7)
!3610 = distinct !DILexicalBlock(scope: !3606, file: !791, line: 710, column: 7)
!3611 = !DILocation(line: 710, column: 7, scope: !3610)
!3612 = !DILocation(line: 710, column: 7, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3614, file: !791, line: 710, column: 7)
!3614 = distinct !DILexicalBlock(scope: !3606, file: !791, line: 710, column: 7)
!3615 = !DILocation(line: 710, column: 7, scope: !3614)
!3616 = !DILocation(line: 710, column: 7, scope: !3606)
!3617 = !DILocation(line: 710, column: 7, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !3619, file: !791, line: 710, column: 7)
!3619 = distinct !DILexicalBlock(scope: !3600, file: !791, line: 710, column: 7)
!3620 = !DILocation(line: 710, column: 7, scope: !3619)
!3621 = !DILocation(line: 712, column: 5, scope: !3166)
!3622 = !DILocation(line: 713, column: 7, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !791, line: 713, column: 7)
!3624 = distinct !DILexicalBlock(scope: !3166, file: !791, line: 713, column: 7)
!3625 = !DILocation(line: 417, column: 21, scope: !3166)
!3626 = !DILocation(line: 713, column: 7, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3628, file: !791, line: 713, column: 7)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !791, line: 713, column: 7)
!3629 = distinct !DILexicalBlock(scope: !3623, file: !791, line: 713, column: 7)
!3630 = !DILocation(line: 713, column: 7, scope: !3628)
!3631 = !DILocation(line: 713, column: 7, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3633, file: !791, line: 713, column: 7)
!3633 = distinct !DILexicalBlock(scope: !3629, file: !791, line: 713, column: 7)
!3634 = !DILocation(line: 713, column: 7, scope: !3633)
!3635 = !DILocation(line: 713, column: 7, scope: !3629)
!3636 = !DILocation(line: 714, column: 7, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3638, file: !791, line: 714, column: 7)
!3638 = distinct !DILexicalBlock(scope: !3166, file: !791, line: 714, column: 7)
!3639 = !DILocation(line: 714, column: 7, scope: !3638)
!3640 = !DILocation(line: 716, column: 11, scope: !3166)
!3641 = !DILocation(line: 718, column: 5, scope: !3167)
!3642 = !DILocation(line: 395, column: 82, scope: !3167)
!3643 = !DILocation(line: 395, column: 3, scope: !3167)
!3644 = distinct !{!3644, !3297, !3645, !1209}
!3645 = !DILocation(line: 718, column: 5, scope: !3164)
!3646 = !DILocation(line: 720, column: 11, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3133, file: !791, line: 720, column: 7)
!3648 = !DILocation(line: 720, column: 16, scope: !3647)
!3649 = !DILocation(line: 728, column: 51, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3133, file: !791, line: 728, column: 7)
!3651 = !DILocation(line: 731, column: 11, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3650, file: !791, line: 730, column: 5)
!3653 = !DILocation(line: 732, column: 16, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3652, file: !791, line: 731, column: 11)
!3655 = !DILocation(line: 732, column: 9, scope: !3654)
!3656 = !DILocation(line: 736, column: 18, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3654, file: !791, line: 736, column: 16)
!3658 = !DILocation(line: 736, column: 29, scope: !3657)
!3659 = !DILocation(line: 745, column: 7, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3133, file: !791, line: 745, column: 7)
!3661 = !DILocation(line: 745, column: 20, scope: !3660)
!3662 = !DILocation(line: 746, column: 12, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3664, file: !791, line: 746, column: 5)
!3664 = distinct !DILexicalBlock(scope: !3660, file: !791, line: 746, column: 5)
!3665 = !DILocation(line: 746, column: 5, scope: !3664)
!3666 = !DILocation(line: 747, column: 7, scope: !3667)
!3667 = distinct !DILexicalBlock(scope: !3668, file: !791, line: 747, column: 7)
!3668 = distinct !DILexicalBlock(scope: !3663, file: !791, line: 747, column: 7)
!3669 = !DILocation(line: 747, column: 7, scope: !3668)
!3670 = !DILocation(line: 746, column: 39, scope: !3663)
!3671 = distinct !{!3671, !3665, !3672, !1209}
!3672 = !DILocation(line: 747, column: 7, scope: !3664)
!3673 = !DILocation(line: 749, column: 11, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3133, file: !791, line: 749, column: 7)
!3675 = !DILocation(line: 749, column: 7, scope: !3133)
!3676 = !DILocation(line: 750, column: 5, scope: !3674)
!3677 = !DILocation(line: 750, column: 17, scope: !3674)
!3678 = !DILocation(line: 756, column: 21, scope: !3504)
!3679 = !DILocation(line: 760, column: 42, scope: !3133)
!3680 = !DILocation(line: 758, column: 10, scope: !3133)
!3681 = !DILocation(line: 758, column: 3, scope: !3133)
!3682 = !DILocation(line: 762, column: 1, scope: !3133)
!3683 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1283, file: !1283, line: 98, type: !3684, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!113}
!3686 = !DISubprogram(name: "strlen", scope: !1279, file: !1279, line: 407, type: !3687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!3687 = !DISubroutineType(types: !3688)
!3688 = !{!111, !115}
!3689 = !DISubprogram(name: "iswprint", scope: !1752, file: !1752, line: 120, type: !1549, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!3690 = distinct !DISubprogram(name: "quotearg_alloc", scope: !791, file: !791, line: 788, type: !3691, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3693)
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!107, !115, !113, !3026}
!3693 = !{!3694, !3695, !3696}
!3694 = !DILocalVariable(name: "arg", arg: 1, scope: !3690, file: !791, line: 788, type: !115)
!3695 = !DILocalVariable(name: "argsize", arg: 2, scope: !3690, file: !791, line: 788, type: !113)
!3696 = !DILocalVariable(name: "o", arg: 3, scope: !3690, file: !791, line: 789, type: !3026)
!3697 = !DILocation(line: 0, scope: !3690)
!3698 = !DILocalVariable(name: "arg", arg: 1, scope: !3699, file: !791, line: 801, type: !115)
!3699 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !791, file: !791, line: 801, type: !3700, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3702)
!3700 = !DISubroutineType(types: !3701)
!3701 = !{!107, !115, !113, !1034, !3026}
!3702 = !{!3698, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710}
!3703 = !DILocalVariable(name: "argsize", arg: 2, scope: !3699, file: !791, line: 801, type: !113)
!3704 = !DILocalVariable(name: "size", arg: 3, scope: !3699, file: !791, line: 801, type: !1034)
!3705 = !DILocalVariable(name: "o", arg: 4, scope: !3699, file: !791, line: 802, type: !3026)
!3706 = !DILocalVariable(name: "p", scope: !3699, file: !791, line: 804, type: !3026)
!3707 = !DILocalVariable(name: "saved_errno", scope: !3699, file: !791, line: 805, type: !77)
!3708 = !DILocalVariable(name: "flags", scope: !3699, file: !791, line: 807, type: !77)
!3709 = !DILocalVariable(name: "bufsize", scope: !3699, file: !791, line: 808, type: !113)
!3710 = !DILocalVariable(name: "buf", scope: !3699, file: !791, line: 812, type: !107)
!3711 = !DILocation(line: 0, scope: !3699, inlinedAt: !3712)
!3712 = distinct !DILocation(line: 791, column: 10, scope: !3690)
!3713 = !DILocation(line: 804, column: 37, scope: !3699, inlinedAt: !3712)
!3714 = !DILocation(line: 805, column: 21, scope: !3699, inlinedAt: !3712)
!3715 = !DILocation(line: 807, column: 18, scope: !3699, inlinedAt: !3712)
!3716 = !DILocation(line: 807, column: 24, scope: !3699, inlinedAt: !3712)
!3717 = !DILocation(line: 808, column: 72, scope: !3699, inlinedAt: !3712)
!3718 = !DILocation(line: 809, column: 56, scope: !3699, inlinedAt: !3712)
!3719 = !DILocation(line: 810, column: 49, scope: !3699, inlinedAt: !3712)
!3720 = !DILocation(line: 811, column: 49, scope: !3699, inlinedAt: !3712)
!3721 = !DILocation(line: 808, column: 20, scope: !3699, inlinedAt: !3712)
!3722 = !DILocation(line: 811, column: 62, scope: !3699, inlinedAt: !3712)
!3723 = !DILocation(line: 812, column: 15, scope: !3699, inlinedAt: !3712)
!3724 = !DILocation(line: 813, column: 60, scope: !3699, inlinedAt: !3712)
!3725 = !DILocation(line: 815, column: 32, scope: !3699, inlinedAt: !3712)
!3726 = !DILocation(line: 815, column: 47, scope: !3699, inlinedAt: !3712)
!3727 = !DILocation(line: 813, column: 3, scope: !3699, inlinedAt: !3712)
!3728 = !DILocation(line: 816, column: 9, scope: !3699, inlinedAt: !3712)
!3729 = !DILocation(line: 791, column: 3, scope: !3690)
!3730 = !DILocation(line: 0, scope: !3699)
!3731 = !DILocation(line: 804, column: 37, scope: !3699)
!3732 = !DILocation(line: 805, column: 21, scope: !3699)
!3733 = !DILocation(line: 807, column: 18, scope: !3699)
!3734 = !DILocation(line: 807, column: 27, scope: !3699)
!3735 = !DILocation(line: 807, column: 24, scope: !3699)
!3736 = !DILocation(line: 808, column: 72, scope: !3699)
!3737 = !DILocation(line: 809, column: 56, scope: !3699)
!3738 = !DILocation(line: 810, column: 49, scope: !3699)
!3739 = !DILocation(line: 811, column: 49, scope: !3699)
!3740 = !DILocation(line: 808, column: 20, scope: !3699)
!3741 = !DILocation(line: 811, column: 62, scope: !3699)
!3742 = !DILocation(line: 812, column: 15, scope: !3699)
!3743 = !DILocation(line: 813, column: 60, scope: !3699)
!3744 = !DILocation(line: 815, column: 32, scope: !3699)
!3745 = !DILocation(line: 815, column: 47, scope: !3699)
!3746 = !DILocation(line: 813, column: 3, scope: !3699)
!3747 = !DILocation(line: 816, column: 9, scope: !3699)
!3748 = !DILocation(line: 817, column: 7, scope: !3699)
!3749 = !DILocation(line: 818, column: 11, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3699, file: !791, line: 817, column: 7)
!3751 = !DILocation(line: 818, column: 5, scope: !3750)
!3752 = !DILocation(line: 819, column: 3, scope: !3699)
!3753 = distinct !DISubprogram(name: "quotearg_free", scope: !791, file: !791, line: 837, type: !356, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3754)
!3754 = !{!3755, !3756}
!3755 = !DILocalVariable(name: "sv", scope: !3753, file: !791, line: 839, type: !878)
!3756 = !DILocalVariable(name: "i", scope: !3757, file: !791, line: 840, type: !77)
!3757 = distinct !DILexicalBlock(scope: !3753, file: !791, line: 840, column: 3)
!3758 = !DILocation(line: 839, column: 24, scope: !3753)
!3759 = !DILocation(line: 0, scope: !3753)
!3760 = !DILocation(line: 0, scope: !3757)
!3761 = !DILocation(line: 840, column: 21, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3757, file: !791, line: 840, column: 3)
!3763 = !DILocation(line: 840, column: 3, scope: !3757)
!3764 = !DILocation(line: 842, column: 13, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3753, file: !791, line: 842, column: 7)
!3766 = !{!3767, !1093, i64 8}
!3767 = !{!"slotvec", !1382, i64 0, !1093, i64 8}
!3768 = !DILocation(line: 842, column: 17, scope: !3765)
!3769 = !DILocation(line: 842, column: 7, scope: !3753)
!3770 = !DILocation(line: 841, column: 17, scope: !3762)
!3771 = !DILocation(line: 841, column: 5, scope: !3762)
!3772 = !DILocation(line: 840, column: 32, scope: !3762)
!3773 = distinct !{!3773, !3763, !3774, !1209}
!3774 = !DILocation(line: 841, column: 20, scope: !3757)
!3775 = !DILocation(line: 844, column: 7, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3765, file: !791, line: 843, column: 5)
!3777 = !DILocation(line: 845, column: 21, scope: !3776)
!3778 = !{!3767, !1382, i64 0}
!3779 = !DILocation(line: 846, column: 20, scope: !3776)
!3780 = !DILocation(line: 847, column: 5, scope: !3776)
!3781 = !DILocation(line: 848, column: 10, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3753, file: !791, line: 848, column: 7)
!3783 = !DILocation(line: 848, column: 7, scope: !3753)
!3784 = !DILocation(line: 850, column: 7, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3782, file: !791, line: 849, column: 5)
!3786 = !DILocation(line: 851, column: 15, scope: !3785)
!3787 = !DILocation(line: 852, column: 5, scope: !3785)
!3788 = !DILocation(line: 853, column: 10, scope: !3753)
!3789 = !DILocation(line: 854, column: 1, scope: !3753)
!3790 = distinct !DISubprogram(name: "quotearg_n", scope: !791, file: !791, line: 919, type: !1276, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3791)
!3791 = !{!3792, !3793}
!3792 = !DILocalVariable(name: "n", arg: 1, scope: !3790, file: !791, line: 919, type: !77)
!3793 = !DILocalVariable(name: "arg", arg: 2, scope: !3790, file: !791, line: 919, type: !115)
!3794 = !DILocation(line: 0, scope: !3790)
!3795 = !DILocation(line: 921, column: 10, scope: !3790)
!3796 = !DILocation(line: 921, column: 3, scope: !3790)
!3797 = distinct !DISubprogram(name: "quotearg_n_options", scope: !791, file: !791, line: 866, type: !3798, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3800)
!3798 = !DISubroutineType(types: !3799)
!3799 = !{!107, !77, !115, !113, !3026}
!3800 = !{!3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3811, !3812, !3814, !3815, !3816}
!3801 = !DILocalVariable(name: "n", arg: 1, scope: !3797, file: !791, line: 866, type: !77)
!3802 = !DILocalVariable(name: "arg", arg: 2, scope: !3797, file: !791, line: 866, type: !115)
!3803 = !DILocalVariable(name: "argsize", arg: 3, scope: !3797, file: !791, line: 866, type: !113)
!3804 = !DILocalVariable(name: "options", arg: 4, scope: !3797, file: !791, line: 867, type: !3026)
!3805 = !DILocalVariable(name: "saved_errno", scope: !3797, file: !791, line: 869, type: !77)
!3806 = !DILocalVariable(name: "sv", scope: !3797, file: !791, line: 871, type: !878)
!3807 = !DILocalVariable(name: "nslots_max", scope: !3797, file: !791, line: 873, type: !77)
!3808 = !DILocalVariable(name: "preallocated", scope: !3809, file: !791, line: 879, type: !109)
!3809 = distinct !DILexicalBlock(scope: !3810, file: !791, line: 878, column: 5)
!3810 = distinct !DILexicalBlock(scope: !3797, file: !791, line: 877, column: 7)
!3811 = !DILocalVariable(name: "new_nslots", scope: !3809, file: !791, line: 880, type: !369)
!3812 = !DILocalVariable(name: "size", scope: !3813, file: !791, line: 891, type: !113)
!3813 = distinct !DILexicalBlock(scope: !3797, file: !791, line: 890, column: 3)
!3814 = !DILocalVariable(name: "val", scope: !3813, file: !791, line: 892, type: !107)
!3815 = !DILocalVariable(name: "flags", scope: !3813, file: !791, line: 894, type: !77)
!3816 = !DILocalVariable(name: "qsize", scope: !3813, file: !791, line: 895, type: !113)
!3817 = !DILocation(line: 0, scope: !3797)
!3818 = !DILocation(line: 869, column: 21, scope: !3797)
!3819 = !DILocation(line: 871, column: 24, scope: !3797)
!3820 = !DILocation(line: 874, column: 17, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3797, file: !791, line: 874, column: 7)
!3822 = !DILocation(line: 875, column: 5, scope: !3821)
!3823 = !DILocation(line: 877, column: 7, scope: !3810)
!3824 = !DILocation(line: 877, column: 14, scope: !3810)
!3825 = !DILocation(line: 877, column: 7, scope: !3797)
!3826 = !DILocation(line: 879, column: 31, scope: !3809)
!3827 = !DILocation(line: 0, scope: !3809)
!3828 = !DILocation(line: 880, column: 7, scope: !3809)
!3829 = !DILocation(line: 880, column: 26, scope: !3809)
!3830 = !DILocation(line: 880, column: 13, scope: !3809)
!3831 = !DILocation(line: 882, column: 31, scope: !3809)
!3832 = !DILocation(line: 883, column: 33, scope: !3809)
!3833 = !DILocation(line: 883, column: 42, scope: !3809)
!3834 = !DILocation(line: 883, column: 31, scope: !3809)
!3835 = !DILocation(line: 882, column: 22, scope: !3809)
!3836 = !DILocation(line: 882, column: 15, scope: !3809)
!3837 = !DILocation(line: 884, column: 11, scope: !3809)
!3838 = !DILocation(line: 885, column: 15, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3809, file: !791, line: 884, column: 11)
!3840 = !{i64 0, i64 8, !1381, i64 8, i64 8, !1092}
!3841 = !DILocation(line: 885, column: 9, scope: !3839)
!3842 = !DILocation(line: 886, column: 20, scope: !3809)
!3843 = !DILocation(line: 886, column: 18, scope: !3809)
!3844 = !DILocation(line: 886, column: 32, scope: !3809)
!3845 = !DILocation(line: 886, column: 43, scope: !3809)
!3846 = !DILocation(line: 886, column: 53, scope: !3809)
!3847 = !DILocation(line: 0, scope: !3236, inlinedAt: !3848)
!3848 = distinct !DILocation(line: 886, column: 7, scope: !3809)
!3849 = !DILocation(line: 59, column: 10, scope: !3236, inlinedAt: !3848)
!3850 = !DILocation(line: 887, column: 16, scope: !3809)
!3851 = !DILocation(line: 887, column: 14, scope: !3809)
!3852 = !DILocation(line: 888, column: 5, scope: !3810)
!3853 = !DILocation(line: 888, column: 5, scope: !3809)
!3854 = !DILocation(line: 891, column: 19, scope: !3813)
!3855 = !DILocation(line: 891, column: 25, scope: !3813)
!3856 = !DILocation(line: 0, scope: !3813)
!3857 = !DILocation(line: 892, column: 23, scope: !3813)
!3858 = !DILocation(line: 894, column: 26, scope: !3813)
!3859 = !DILocation(line: 894, column: 32, scope: !3813)
!3860 = !DILocation(line: 896, column: 55, scope: !3813)
!3861 = !DILocation(line: 897, column: 55, scope: !3813)
!3862 = !DILocation(line: 898, column: 55, scope: !3813)
!3863 = !DILocation(line: 899, column: 55, scope: !3813)
!3864 = !DILocation(line: 895, column: 20, scope: !3813)
!3865 = !DILocation(line: 901, column: 14, scope: !3866)
!3866 = distinct !DILexicalBlock(scope: !3813, file: !791, line: 901, column: 9)
!3867 = !DILocation(line: 901, column: 9, scope: !3813)
!3868 = !DILocation(line: 903, column: 35, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3866, file: !791, line: 902, column: 7)
!3870 = !DILocation(line: 903, column: 20, scope: !3869)
!3871 = !DILocation(line: 904, column: 17, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3869, file: !791, line: 904, column: 13)
!3873 = !DILocation(line: 904, column: 13, scope: !3869)
!3874 = !DILocation(line: 905, column: 11, scope: !3872)
!3875 = !DILocation(line: 906, column: 27, scope: !3869)
!3876 = !DILocation(line: 906, column: 19, scope: !3869)
!3877 = !DILocation(line: 907, column: 69, scope: !3869)
!3878 = !DILocation(line: 909, column: 44, scope: !3869)
!3879 = !DILocation(line: 910, column: 44, scope: !3869)
!3880 = !DILocation(line: 907, column: 9, scope: !3869)
!3881 = !DILocation(line: 911, column: 7, scope: !3869)
!3882 = !DILocation(line: 913, column: 11, scope: !3813)
!3883 = !DILocation(line: 914, column: 5, scope: !3813)
!3884 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !791, file: !791, line: 925, type: !3885, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3887)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!107, !77, !115, !113}
!3887 = !{!3888, !3889, !3890}
!3888 = !DILocalVariable(name: "n", arg: 1, scope: !3884, file: !791, line: 925, type: !77)
!3889 = !DILocalVariable(name: "arg", arg: 2, scope: !3884, file: !791, line: 925, type: !115)
!3890 = !DILocalVariable(name: "argsize", arg: 3, scope: !3884, file: !791, line: 925, type: !113)
!3891 = !DILocation(line: 0, scope: !3884)
!3892 = !DILocation(line: 927, column: 10, scope: !3884)
!3893 = !DILocation(line: 927, column: 3, scope: !3884)
!3894 = distinct !DISubprogram(name: "quotearg", scope: !791, file: !791, line: 931, type: !1285, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3895)
!3895 = !{!3896}
!3896 = !DILocalVariable(name: "arg", arg: 1, scope: !3894, file: !791, line: 931, type: !115)
!3897 = !DILocation(line: 0, scope: !3894)
!3898 = !DILocation(line: 0, scope: !3790, inlinedAt: !3899)
!3899 = distinct !DILocation(line: 933, column: 10, scope: !3894)
!3900 = !DILocation(line: 921, column: 10, scope: !3790, inlinedAt: !3899)
!3901 = !DILocation(line: 933, column: 3, scope: !3894)
!3902 = distinct !DISubprogram(name: "quotearg_mem", scope: !791, file: !791, line: 937, type: !3903, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3905)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!107, !115, !113}
!3905 = !{!3906, !3907}
!3906 = !DILocalVariable(name: "arg", arg: 1, scope: !3902, file: !791, line: 937, type: !115)
!3907 = !DILocalVariable(name: "argsize", arg: 2, scope: !3902, file: !791, line: 937, type: !113)
!3908 = !DILocation(line: 0, scope: !3902)
!3909 = !DILocation(line: 0, scope: !3884, inlinedAt: !3910)
!3910 = distinct !DILocation(line: 939, column: 10, scope: !3902)
!3911 = !DILocation(line: 927, column: 10, scope: !3884, inlinedAt: !3910)
!3912 = !DILocation(line: 939, column: 3, scope: !3902)
!3913 = distinct !DISubprogram(name: "quotearg_n_style", scope: !791, file: !791, line: 943, type: !3914, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3916)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!107, !77, !444, !115}
!3916 = !{!3917, !3918, !3919, !3920}
!3917 = !DILocalVariable(name: "n", arg: 1, scope: !3913, file: !791, line: 943, type: !77)
!3918 = !DILocalVariable(name: "s", arg: 2, scope: !3913, file: !791, line: 943, type: !444)
!3919 = !DILocalVariable(name: "arg", arg: 3, scope: !3913, file: !791, line: 943, type: !115)
!3920 = !DILocalVariable(name: "o", scope: !3913, file: !791, line: 945, type: !3027)
!3921 = !DILocation(line: 0, scope: !3913)
!3922 = !DILocation(line: 945, column: 3, scope: !3913)
!3923 = !DILocation(line: 945, column: 32, scope: !3913)
!3924 = !{!3925}
!3925 = distinct !{!3925, !3926, !"quoting_options_from_style: argument 0"}
!3926 = distinct !{!3926, !"quoting_options_from_style"}
!3927 = !DILocation(line: 945, column: 36, scope: !3913)
!3928 = !DILocalVariable(name: "style", arg: 1, scope: !3929, file: !791, line: 183, type: !444)
!3929 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !791, file: !791, line: 183, type: !3930, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3932)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!830, !444}
!3932 = !{!3928, !3933}
!3933 = !DILocalVariable(name: "o", scope: !3929, file: !791, line: 185, type: !830)
!3934 = !DILocation(line: 0, scope: !3929, inlinedAt: !3935)
!3935 = distinct !DILocation(line: 945, column: 36, scope: !3913)
!3936 = !DILocation(line: 185, column: 26, scope: !3929, inlinedAt: !3935)
!3937 = !DILocation(line: 186, column: 13, scope: !3938, inlinedAt: !3935)
!3938 = distinct !DILexicalBlock(scope: !3929, file: !791, line: 186, column: 7)
!3939 = !DILocation(line: 186, column: 7, scope: !3929, inlinedAt: !3935)
!3940 = !DILocation(line: 187, column: 5, scope: !3938, inlinedAt: !3935)
!3941 = !DILocation(line: 188, column: 11, scope: !3929, inlinedAt: !3935)
!3942 = !DILocation(line: 946, column: 10, scope: !3913)
!3943 = !DILocation(line: 947, column: 1, scope: !3913)
!3944 = !DILocation(line: 946, column: 3, scope: !3913)
!3945 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !791, file: !791, line: 950, type: !3946, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3948)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!107, !77, !444, !115, !113}
!3948 = !{!3949, !3950, !3951, !3952, !3953}
!3949 = !DILocalVariable(name: "n", arg: 1, scope: !3945, file: !791, line: 950, type: !77)
!3950 = !DILocalVariable(name: "s", arg: 2, scope: !3945, file: !791, line: 950, type: !444)
!3951 = !DILocalVariable(name: "arg", arg: 3, scope: !3945, file: !791, line: 951, type: !115)
!3952 = !DILocalVariable(name: "argsize", arg: 4, scope: !3945, file: !791, line: 951, type: !113)
!3953 = !DILocalVariable(name: "o", scope: !3945, file: !791, line: 953, type: !3027)
!3954 = !DILocation(line: 0, scope: !3945)
!3955 = !DILocation(line: 953, column: 3, scope: !3945)
!3956 = !DILocation(line: 953, column: 32, scope: !3945)
!3957 = !{!3958}
!3958 = distinct !{!3958, !3959, !"quoting_options_from_style: argument 0"}
!3959 = distinct !{!3959, !"quoting_options_from_style"}
!3960 = !DILocation(line: 953, column: 36, scope: !3945)
!3961 = !DILocation(line: 0, scope: !3929, inlinedAt: !3962)
!3962 = distinct !DILocation(line: 953, column: 36, scope: !3945)
!3963 = !DILocation(line: 185, column: 26, scope: !3929, inlinedAt: !3962)
!3964 = !DILocation(line: 186, column: 13, scope: !3938, inlinedAt: !3962)
!3965 = !DILocation(line: 186, column: 7, scope: !3929, inlinedAt: !3962)
!3966 = !DILocation(line: 187, column: 5, scope: !3938, inlinedAt: !3962)
!3967 = !DILocation(line: 188, column: 11, scope: !3929, inlinedAt: !3962)
!3968 = !DILocation(line: 954, column: 10, scope: !3945)
!3969 = !DILocation(line: 955, column: 1, scope: !3945)
!3970 = !DILocation(line: 954, column: 3, scope: !3945)
!3971 = distinct !DISubprogram(name: "quotearg_style", scope: !791, file: !791, line: 958, type: !3972, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3974)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!107, !444, !115}
!3974 = !{!3975, !3976}
!3975 = !DILocalVariable(name: "s", arg: 1, scope: !3971, file: !791, line: 958, type: !444)
!3976 = !DILocalVariable(name: "arg", arg: 2, scope: !3971, file: !791, line: 958, type: !115)
!3977 = !DILocation(line: 0, scope: !3971)
!3978 = !DILocation(line: 0, scope: !3913, inlinedAt: !3979)
!3979 = distinct !DILocation(line: 960, column: 10, scope: !3971)
!3980 = !DILocation(line: 945, column: 3, scope: !3913, inlinedAt: !3979)
!3981 = !DILocation(line: 945, column: 32, scope: !3913, inlinedAt: !3979)
!3982 = !{!3983}
!3983 = distinct !{!3983, !3984, !"quoting_options_from_style: argument 0"}
!3984 = distinct !{!3984, !"quoting_options_from_style"}
!3985 = !DILocation(line: 945, column: 36, scope: !3913, inlinedAt: !3979)
!3986 = !DILocation(line: 0, scope: !3929, inlinedAt: !3987)
!3987 = distinct !DILocation(line: 945, column: 36, scope: !3913, inlinedAt: !3979)
!3988 = !DILocation(line: 185, column: 26, scope: !3929, inlinedAt: !3987)
!3989 = !DILocation(line: 186, column: 13, scope: !3938, inlinedAt: !3987)
!3990 = !DILocation(line: 186, column: 7, scope: !3929, inlinedAt: !3987)
!3991 = !DILocation(line: 187, column: 5, scope: !3938, inlinedAt: !3987)
!3992 = !DILocation(line: 188, column: 11, scope: !3929, inlinedAt: !3987)
!3993 = !DILocation(line: 946, column: 10, scope: !3913, inlinedAt: !3979)
!3994 = !DILocation(line: 947, column: 1, scope: !3913, inlinedAt: !3979)
!3995 = !DILocation(line: 960, column: 3, scope: !3971)
!3996 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !791, file: !791, line: 964, type: !3997, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !3999)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!107, !444, !115, !113}
!3999 = !{!4000, !4001, !4002}
!4000 = !DILocalVariable(name: "s", arg: 1, scope: !3996, file: !791, line: 964, type: !444)
!4001 = !DILocalVariable(name: "arg", arg: 2, scope: !3996, file: !791, line: 964, type: !115)
!4002 = !DILocalVariable(name: "argsize", arg: 3, scope: !3996, file: !791, line: 964, type: !113)
!4003 = !DILocation(line: 0, scope: !3996)
!4004 = !DILocation(line: 0, scope: !3945, inlinedAt: !4005)
!4005 = distinct !DILocation(line: 966, column: 10, scope: !3996)
!4006 = !DILocation(line: 953, column: 3, scope: !3945, inlinedAt: !4005)
!4007 = !DILocation(line: 953, column: 32, scope: !3945, inlinedAt: !4005)
!4008 = !{!4009}
!4009 = distinct !{!4009, !4010, !"quoting_options_from_style: argument 0"}
!4010 = distinct !{!4010, !"quoting_options_from_style"}
!4011 = !DILocation(line: 953, column: 36, scope: !3945, inlinedAt: !4005)
!4012 = !DILocation(line: 0, scope: !3929, inlinedAt: !4013)
!4013 = distinct !DILocation(line: 953, column: 36, scope: !3945, inlinedAt: !4005)
!4014 = !DILocation(line: 185, column: 26, scope: !3929, inlinedAt: !4013)
!4015 = !DILocation(line: 186, column: 13, scope: !3938, inlinedAt: !4013)
!4016 = !DILocation(line: 186, column: 7, scope: !3929, inlinedAt: !4013)
!4017 = !DILocation(line: 187, column: 5, scope: !3938, inlinedAt: !4013)
!4018 = !DILocation(line: 188, column: 11, scope: !3929, inlinedAt: !4013)
!4019 = !DILocation(line: 954, column: 10, scope: !3945, inlinedAt: !4005)
!4020 = !DILocation(line: 955, column: 1, scope: !3945, inlinedAt: !4005)
!4021 = !DILocation(line: 966, column: 3, scope: !3996)
!4022 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !791, file: !791, line: 970, type: !4023, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4025)
!4023 = !DISubroutineType(types: !4024)
!4024 = !{!107, !115, !113, !4}
!4025 = !{!4026, !4027, !4028, !4029}
!4026 = !DILocalVariable(name: "arg", arg: 1, scope: !4022, file: !791, line: 970, type: !115)
!4027 = !DILocalVariable(name: "argsize", arg: 2, scope: !4022, file: !791, line: 970, type: !113)
!4028 = !DILocalVariable(name: "ch", arg: 3, scope: !4022, file: !791, line: 970, type: !4)
!4029 = !DILocalVariable(name: "options", scope: !4022, file: !791, line: 972, type: !830)
!4030 = !DILocation(line: 0, scope: !4022)
!4031 = !DILocation(line: 972, column: 3, scope: !4022)
!4032 = !DILocation(line: 972, column: 26, scope: !4022)
!4033 = !DILocation(line: 973, column: 13, scope: !4022)
!4034 = !{i64 0, i64 4, !1171, i64 4, i64 4, !1162, i64 8, i64 32, !1171, i64 40, i64 8, !1092, i64 48, i64 8, !1092}
!4035 = !DILocation(line: 0, scope: !3046, inlinedAt: !4036)
!4036 = distinct !DILocation(line: 974, column: 3, scope: !4022)
!4037 = !DILocation(line: 147, column: 41, scope: !3046, inlinedAt: !4036)
!4038 = !DILocation(line: 147, column: 62, scope: !3046, inlinedAt: !4036)
!4039 = !DILocation(line: 147, column: 57, scope: !3046, inlinedAt: !4036)
!4040 = !DILocation(line: 148, column: 15, scope: !3046, inlinedAt: !4036)
!4041 = !DILocation(line: 149, column: 21, scope: !3046, inlinedAt: !4036)
!4042 = !DILocation(line: 149, column: 24, scope: !3046, inlinedAt: !4036)
!4043 = !DILocation(line: 150, column: 19, scope: !3046, inlinedAt: !4036)
!4044 = !DILocation(line: 150, column: 24, scope: !3046, inlinedAt: !4036)
!4045 = !DILocation(line: 150, column: 6, scope: !3046, inlinedAt: !4036)
!4046 = !DILocation(line: 975, column: 10, scope: !4022)
!4047 = !DILocation(line: 976, column: 1, scope: !4022)
!4048 = !DILocation(line: 975, column: 3, scope: !4022)
!4049 = distinct !DISubprogram(name: "quotearg_char", scope: !791, file: !791, line: 979, type: !4050, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4052)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!107, !115, !4}
!4052 = !{!4053, !4054}
!4053 = !DILocalVariable(name: "arg", arg: 1, scope: !4049, file: !791, line: 979, type: !115)
!4054 = !DILocalVariable(name: "ch", arg: 2, scope: !4049, file: !791, line: 979, type: !4)
!4055 = !DILocation(line: 0, scope: !4049)
!4056 = !DILocation(line: 0, scope: !4022, inlinedAt: !4057)
!4057 = distinct !DILocation(line: 981, column: 10, scope: !4049)
!4058 = !DILocation(line: 972, column: 3, scope: !4022, inlinedAt: !4057)
!4059 = !DILocation(line: 972, column: 26, scope: !4022, inlinedAt: !4057)
!4060 = !DILocation(line: 973, column: 13, scope: !4022, inlinedAt: !4057)
!4061 = !DILocation(line: 0, scope: !3046, inlinedAt: !4062)
!4062 = distinct !DILocation(line: 974, column: 3, scope: !4022, inlinedAt: !4057)
!4063 = !DILocation(line: 147, column: 41, scope: !3046, inlinedAt: !4062)
!4064 = !DILocation(line: 147, column: 62, scope: !3046, inlinedAt: !4062)
!4065 = !DILocation(line: 147, column: 57, scope: !3046, inlinedAt: !4062)
!4066 = !DILocation(line: 148, column: 15, scope: !3046, inlinedAt: !4062)
!4067 = !DILocation(line: 149, column: 21, scope: !3046, inlinedAt: !4062)
!4068 = !DILocation(line: 149, column: 24, scope: !3046, inlinedAt: !4062)
!4069 = !DILocation(line: 150, column: 19, scope: !3046, inlinedAt: !4062)
!4070 = !DILocation(line: 150, column: 24, scope: !3046, inlinedAt: !4062)
!4071 = !DILocation(line: 150, column: 6, scope: !3046, inlinedAt: !4062)
!4072 = !DILocation(line: 975, column: 10, scope: !4022, inlinedAt: !4057)
!4073 = !DILocation(line: 976, column: 1, scope: !4022, inlinedAt: !4057)
!4074 = !DILocation(line: 981, column: 3, scope: !4049)
!4075 = distinct !DISubprogram(name: "quotearg_colon", scope: !791, file: !791, line: 985, type: !1285, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4076)
!4076 = !{!4077}
!4077 = !DILocalVariable(name: "arg", arg: 1, scope: !4075, file: !791, line: 985, type: !115)
!4078 = !DILocation(line: 0, scope: !4075)
!4079 = !DILocation(line: 0, scope: !4049, inlinedAt: !4080)
!4080 = distinct !DILocation(line: 987, column: 10, scope: !4075)
!4081 = !DILocation(line: 0, scope: !4022, inlinedAt: !4082)
!4082 = distinct !DILocation(line: 981, column: 10, scope: !4049, inlinedAt: !4080)
!4083 = !DILocation(line: 972, column: 3, scope: !4022, inlinedAt: !4082)
!4084 = !DILocation(line: 972, column: 26, scope: !4022, inlinedAt: !4082)
!4085 = !DILocation(line: 973, column: 13, scope: !4022, inlinedAt: !4082)
!4086 = !DILocation(line: 0, scope: !3046, inlinedAt: !4087)
!4087 = distinct !DILocation(line: 974, column: 3, scope: !4022, inlinedAt: !4082)
!4088 = !DILocation(line: 147, column: 57, scope: !3046, inlinedAt: !4087)
!4089 = !DILocation(line: 149, column: 21, scope: !3046, inlinedAt: !4087)
!4090 = !DILocation(line: 150, column: 6, scope: !3046, inlinedAt: !4087)
!4091 = !DILocation(line: 975, column: 10, scope: !4022, inlinedAt: !4082)
!4092 = !DILocation(line: 976, column: 1, scope: !4022, inlinedAt: !4082)
!4093 = !DILocation(line: 987, column: 3, scope: !4075)
!4094 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !791, file: !791, line: 991, type: !3903, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4095)
!4095 = !{!4096, !4097}
!4096 = !DILocalVariable(name: "arg", arg: 1, scope: !4094, file: !791, line: 991, type: !115)
!4097 = !DILocalVariable(name: "argsize", arg: 2, scope: !4094, file: !791, line: 991, type: !113)
!4098 = !DILocation(line: 0, scope: !4094)
!4099 = !DILocation(line: 0, scope: !4022, inlinedAt: !4100)
!4100 = distinct !DILocation(line: 993, column: 10, scope: !4094)
!4101 = !DILocation(line: 972, column: 3, scope: !4022, inlinedAt: !4100)
!4102 = !DILocation(line: 972, column: 26, scope: !4022, inlinedAt: !4100)
!4103 = !DILocation(line: 973, column: 13, scope: !4022, inlinedAt: !4100)
!4104 = !DILocation(line: 0, scope: !3046, inlinedAt: !4105)
!4105 = distinct !DILocation(line: 974, column: 3, scope: !4022, inlinedAt: !4100)
!4106 = !DILocation(line: 147, column: 57, scope: !3046, inlinedAt: !4105)
!4107 = !DILocation(line: 149, column: 21, scope: !3046, inlinedAt: !4105)
!4108 = !DILocation(line: 150, column: 6, scope: !3046, inlinedAt: !4105)
!4109 = !DILocation(line: 975, column: 10, scope: !4022, inlinedAt: !4100)
!4110 = !DILocation(line: 976, column: 1, scope: !4022, inlinedAt: !4100)
!4111 = !DILocation(line: 993, column: 3, scope: !4094)
!4112 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !791, file: !791, line: 997, type: !3914, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4113)
!4113 = !{!4114, !4115, !4116, !4117}
!4114 = !DILocalVariable(name: "n", arg: 1, scope: !4112, file: !791, line: 997, type: !77)
!4115 = !DILocalVariable(name: "s", arg: 2, scope: !4112, file: !791, line: 997, type: !444)
!4116 = !DILocalVariable(name: "arg", arg: 3, scope: !4112, file: !791, line: 997, type: !115)
!4117 = !DILocalVariable(name: "options", scope: !4112, file: !791, line: 999, type: !830)
!4118 = !DILocation(line: 185, column: 26, scope: !3929, inlinedAt: !4119)
!4119 = distinct !DILocation(line: 1000, column: 13, scope: !4112)
!4120 = !DILocation(line: 0, scope: !4112)
!4121 = !DILocation(line: 999, column: 3, scope: !4112)
!4122 = !DILocation(line: 999, column: 26, scope: !4112)
!4123 = !DILocation(line: 0, scope: !3929, inlinedAt: !4119)
!4124 = !DILocation(line: 186, column: 13, scope: !3938, inlinedAt: !4119)
!4125 = !DILocation(line: 186, column: 7, scope: !3929, inlinedAt: !4119)
!4126 = !DILocation(line: 187, column: 5, scope: !3938, inlinedAt: !4119)
!4127 = !{!4128}
!4128 = distinct !{!4128, !4129, !"quoting_options_from_style: argument 0"}
!4129 = distinct !{!4129, !"quoting_options_from_style"}
!4130 = !DILocation(line: 1000, column: 13, scope: !4112)
!4131 = !DILocation(line: 0, scope: !3046, inlinedAt: !4132)
!4132 = distinct !DILocation(line: 1001, column: 3, scope: !4112)
!4133 = !DILocation(line: 147, column: 57, scope: !3046, inlinedAt: !4132)
!4134 = !DILocation(line: 149, column: 21, scope: !3046, inlinedAt: !4132)
!4135 = !DILocation(line: 150, column: 6, scope: !3046, inlinedAt: !4132)
!4136 = !DILocation(line: 1002, column: 10, scope: !4112)
!4137 = !DILocation(line: 1003, column: 1, scope: !4112)
!4138 = !DILocation(line: 1002, column: 3, scope: !4112)
!4139 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !791, file: !791, line: 1006, type: !4140, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4142)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!107, !77, !115, !115, !115}
!4142 = !{!4143, !4144, !4145, !4146}
!4143 = !DILocalVariable(name: "n", arg: 1, scope: !4139, file: !791, line: 1006, type: !77)
!4144 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4139, file: !791, line: 1006, type: !115)
!4145 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4139, file: !791, line: 1007, type: !115)
!4146 = !DILocalVariable(name: "arg", arg: 4, scope: !4139, file: !791, line: 1007, type: !115)
!4147 = !DILocation(line: 0, scope: !4139)
!4148 = !DILocalVariable(name: "n", arg: 1, scope: !4149, file: !791, line: 1014, type: !77)
!4149 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !791, file: !791, line: 1014, type: !4150, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4152)
!4150 = !DISubroutineType(types: !4151)
!4151 = !{!107, !77, !115, !115, !115, !113}
!4152 = !{!4148, !4153, !4154, !4155, !4156, !4157}
!4153 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4149, file: !791, line: 1014, type: !115)
!4154 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4149, file: !791, line: 1015, type: !115)
!4155 = !DILocalVariable(name: "arg", arg: 4, scope: !4149, file: !791, line: 1016, type: !115)
!4156 = !DILocalVariable(name: "argsize", arg: 5, scope: !4149, file: !791, line: 1016, type: !113)
!4157 = !DILocalVariable(name: "o", scope: !4149, file: !791, line: 1018, type: !830)
!4158 = !DILocation(line: 0, scope: !4149, inlinedAt: !4159)
!4159 = distinct !DILocation(line: 1009, column: 10, scope: !4139)
!4160 = !DILocation(line: 1018, column: 3, scope: !4149, inlinedAt: !4159)
!4161 = !DILocation(line: 1018, column: 26, scope: !4149, inlinedAt: !4159)
!4162 = !DILocation(line: 1018, column: 30, scope: !4149, inlinedAt: !4159)
!4163 = !DILocation(line: 0, scope: !3086, inlinedAt: !4164)
!4164 = distinct !DILocation(line: 1019, column: 3, scope: !4149, inlinedAt: !4159)
!4165 = !DILocation(line: 174, column: 12, scope: !3086, inlinedAt: !4164)
!4166 = !DILocation(line: 175, column: 8, scope: !3099, inlinedAt: !4164)
!4167 = !DILocation(line: 175, column: 19, scope: !3099, inlinedAt: !4164)
!4168 = !DILocation(line: 176, column: 5, scope: !3099, inlinedAt: !4164)
!4169 = !DILocation(line: 177, column: 6, scope: !3086, inlinedAt: !4164)
!4170 = !DILocation(line: 177, column: 17, scope: !3086, inlinedAt: !4164)
!4171 = !DILocation(line: 178, column: 6, scope: !3086, inlinedAt: !4164)
!4172 = !DILocation(line: 178, column: 18, scope: !3086, inlinedAt: !4164)
!4173 = !DILocation(line: 1020, column: 10, scope: !4149, inlinedAt: !4159)
!4174 = !DILocation(line: 1021, column: 1, scope: !4149, inlinedAt: !4159)
!4175 = !DILocation(line: 1009, column: 3, scope: !4139)
!4176 = !DILocation(line: 0, scope: !4149)
!4177 = !DILocation(line: 1018, column: 3, scope: !4149)
!4178 = !DILocation(line: 1018, column: 26, scope: !4149)
!4179 = !DILocation(line: 1018, column: 30, scope: !4149)
!4180 = !DILocation(line: 0, scope: !3086, inlinedAt: !4181)
!4181 = distinct !DILocation(line: 1019, column: 3, scope: !4149)
!4182 = !DILocation(line: 174, column: 12, scope: !3086, inlinedAt: !4181)
!4183 = !DILocation(line: 175, column: 8, scope: !3099, inlinedAt: !4181)
!4184 = !DILocation(line: 175, column: 19, scope: !3099, inlinedAt: !4181)
!4185 = !DILocation(line: 176, column: 5, scope: !3099, inlinedAt: !4181)
!4186 = !DILocation(line: 177, column: 6, scope: !3086, inlinedAt: !4181)
!4187 = !DILocation(line: 177, column: 17, scope: !3086, inlinedAt: !4181)
!4188 = !DILocation(line: 178, column: 6, scope: !3086, inlinedAt: !4181)
!4189 = !DILocation(line: 178, column: 18, scope: !3086, inlinedAt: !4181)
!4190 = !DILocation(line: 1020, column: 10, scope: !4149)
!4191 = !DILocation(line: 1021, column: 1, scope: !4149)
!4192 = !DILocation(line: 1020, column: 3, scope: !4149)
!4193 = distinct !DISubprogram(name: "quotearg_custom", scope: !791, file: !791, line: 1024, type: !4194, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4196)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!107, !115, !115, !115}
!4196 = !{!4197, !4198, !4199}
!4197 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4193, file: !791, line: 1024, type: !115)
!4198 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4193, file: !791, line: 1024, type: !115)
!4199 = !DILocalVariable(name: "arg", arg: 3, scope: !4193, file: !791, line: 1025, type: !115)
!4200 = !DILocation(line: 0, scope: !4193)
!4201 = !DILocation(line: 0, scope: !4139, inlinedAt: !4202)
!4202 = distinct !DILocation(line: 1027, column: 10, scope: !4193)
!4203 = !DILocation(line: 0, scope: !4149, inlinedAt: !4204)
!4204 = distinct !DILocation(line: 1009, column: 10, scope: !4139, inlinedAt: !4202)
!4205 = !DILocation(line: 1018, column: 3, scope: !4149, inlinedAt: !4204)
!4206 = !DILocation(line: 1018, column: 26, scope: !4149, inlinedAt: !4204)
!4207 = !DILocation(line: 1018, column: 30, scope: !4149, inlinedAt: !4204)
!4208 = !DILocation(line: 0, scope: !3086, inlinedAt: !4209)
!4209 = distinct !DILocation(line: 1019, column: 3, scope: !4149, inlinedAt: !4204)
!4210 = !DILocation(line: 174, column: 12, scope: !3086, inlinedAt: !4209)
!4211 = !DILocation(line: 175, column: 8, scope: !3099, inlinedAt: !4209)
!4212 = !DILocation(line: 175, column: 19, scope: !3099, inlinedAt: !4209)
!4213 = !DILocation(line: 176, column: 5, scope: !3099, inlinedAt: !4209)
!4214 = !DILocation(line: 177, column: 6, scope: !3086, inlinedAt: !4209)
!4215 = !DILocation(line: 177, column: 17, scope: !3086, inlinedAt: !4209)
!4216 = !DILocation(line: 178, column: 6, scope: !3086, inlinedAt: !4209)
!4217 = !DILocation(line: 178, column: 18, scope: !3086, inlinedAt: !4209)
!4218 = !DILocation(line: 1020, column: 10, scope: !4149, inlinedAt: !4204)
!4219 = !DILocation(line: 1021, column: 1, scope: !4149, inlinedAt: !4204)
!4220 = !DILocation(line: 1027, column: 3, scope: !4193)
!4221 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !791, file: !791, line: 1031, type: !4222, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4224)
!4222 = !DISubroutineType(types: !4223)
!4223 = !{!107, !115, !115, !115, !113}
!4224 = !{!4225, !4226, !4227, !4228}
!4225 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4221, file: !791, line: 1031, type: !115)
!4226 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4221, file: !791, line: 1031, type: !115)
!4227 = !DILocalVariable(name: "arg", arg: 3, scope: !4221, file: !791, line: 1032, type: !115)
!4228 = !DILocalVariable(name: "argsize", arg: 4, scope: !4221, file: !791, line: 1032, type: !113)
!4229 = !DILocation(line: 0, scope: !4221)
!4230 = !DILocation(line: 0, scope: !4149, inlinedAt: !4231)
!4231 = distinct !DILocation(line: 1034, column: 10, scope: !4221)
!4232 = !DILocation(line: 1018, column: 3, scope: !4149, inlinedAt: !4231)
!4233 = !DILocation(line: 1018, column: 26, scope: !4149, inlinedAt: !4231)
!4234 = !DILocation(line: 1018, column: 30, scope: !4149, inlinedAt: !4231)
!4235 = !DILocation(line: 0, scope: !3086, inlinedAt: !4236)
!4236 = distinct !DILocation(line: 1019, column: 3, scope: !4149, inlinedAt: !4231)
!4237 = !DILocation(line: 174, column: 12, scope: !3086, inlinedAt: !4236)
!4238 = !DILocation(line: 175, column: 8, scope: !3099, inlinedAt: !4236)
!4239 = !DILocation(line: 175, column: 19, scope: !3099, inlinedAt: !4236)
!4240 = !DILocation(line: 176, column: 5, scope: !3099, inlinedAt: !4236)
!4241 = !DILocation(line: 177, column: 6, scope: !3086, inlinedAt: !4236)
!4242 = !DILocation(line: 177, column: 17, scope: !3086, inlinedAt: !4236)
!4243 = !DILocation(line: 178, column: 6, scope: !3086, inlinedAt: !4236)
!4244 = !DILocation(line: 178, column: 18, scope: !3086, inlinedAt: !4236)
!4245 = !DILocation(line: 1020, column: 10, scope: !4149, inlinedAt: !4231)
!4246 = !DILocation(line: 1021, column: 1, scope: !4149, inlinedAt: !4231)
!4247 = !DILocation(line: 1034, column: 3, scope: !4221)
!4248 = distinct !DISubprogram(name: "quote_n_mem", scope: !791, file: !791, line: 1049, type: !4249, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4251)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!115, !77, !115, !113}
!4251 = !{!4252, !4253, !4254}
!4252 = !DILocalVariable(name: "n", arg: 1, scope: !4248, file: !791, line: 1049, type: !77)
!4253 = !DILocalVariable(name: "arg", arg: 2, scope: !4248, file: !791, line: 1049, type: !115)
!4254 = !DILocalVariable(name: "argsize", arg: 3, scope: !4248, file: !791, line: 1049, type: !113)
!4255 = !DILocation(line: 0, scope: !4248)
!4256 = !DILocation(line: 1051, column: 10, scope: !4248)
!4257 = !DILocation(line: 1051, column: 3, scope: !4248)
!4258 = distinct !DISubprogram(name: "quote_mem", scope: !791, file: !791, line: 1055, type: !4259, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4261)
!4259 = !DISubroutineType(types: !4260)
!4260 = !{!115, !115, !113}
!4261 = !{!4262, !4263}
!4262 = !DILocalVariable(name: "arg", arg: 1, scope: !4258, file: !791, line: 1055, type: !115)
!4263 = !DILocalVariable(name: "argsize", arg: 2, scope: !4258, file: !791, line: 1055, type: !113)
!4264 = !DILocation(line: 0, scope: !4258)
!4265 = !DILocation(line: 0, scope: !4248, inlinedAt: !4266)
!4266 = distinct !DILocation(line: 1057, column: 10, scope: !4258)
!4267 = !DILocation(line: 1051, column: 10, scope: !4248, inlinedAt: !4266)
!4268 = !DILocation(line: 1057, column: 3, scope: !4258)
!4269 = distinct !DISubprogram(name: "quote_n", scope: !791, file: !791, line: 1061, type: !4270, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4272)
!4270 = !DISubroutineType(types: !4271)
!4271 = !{!115, !77, !115}
!4272 = !{!4273, !4274}
!4273 = !DILocalVariable(name: "n", arg: 1, scope: !4269, file: !791, line: 1061, type: !77)
!4274 = !DILocalVariable(name: "arg", arg: 2, scope: !4269, file: !791, line: 1061, type: !115)
!4275 = !DILocation(line: 0, scope: !4269)
!4276 = !DILocation(line: 0, scope: !4248, inlinedAt: !4277)
!4277 = distinct !DILocation(line: 1063, column: 10, scope: !4269)
!4278 = !DILocation(line: 1051, column: 10, scope: !4248, inlinedAt: !4277)
!4279 = !DILocation(line: 1063, column: 3, scope: !4269)
!4280 = distinct !DISubprogram(name: "quote", scope: !791, file: !791, line: 1067, type: !4281, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !815, retainedNodes: !4283)
!4281 = !DISubroutineType(types: !4282)
!4282 = !{!115, !115}
!4283 = !{!4284}
!4284 = !DILocalVariable(name: "arg", arg: 1, scope: !4280, file: !791, line: 1067, type: !115)
!4285 = !DILocation(line: 0, scope: !4280)
!4286 = !DILocation(line: 0, scope: !4269, inlinedAt: !4287)
!4287 = distinct !DILocation(line: 1069, column: 10, scope: !4280)
!4288 = !DILocation(line: 0, scope: !4248, inlinedAt: !4289)
!4289 = distinct !DILocation(line: 1063, column: 10, scope: !4269, inlinedAt: !4287)
!4290 = !DILocation(line: 1051, column: 10, scope: !4248, inlinedAt: !4289)
!4291 = !DILocation(line: 1069, column: 3, scope: !4280)
!4292 = distinct !DISubprogram(name: "version_etc_arn", scope: !891, file: !891, line: 61, type: !4293, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1021, retainedNodes: !4330)
!4293 = !DISubroutineType(types: !4294)
!4294 = !{null, !4295, !115, !115, !115, !4329, !113}
!4295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4296, size: 64)
!4296 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 7, baseType: !4297)
!4297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !4298)
!4298 = !{!4299, !4300, !4301, !4302, !4303, !4304, !4305, !4306, !4307, !4308, !4309, !4310, !4311, !4312, !4314, !4315, !4316, !4317, !4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328}
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4297, file: !172, line: 51, baseType: !77, size: 32)
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4297, file: !172, line: 54, baseType: !107, size: 64, offset: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4297, file: !172, line: 55, baseType: !107, size: 64, offset: 128)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4297, file: !172, line: 56, baseType: !107, size: 64, offset: 192)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4297, file: !172, line: 57, baseType: !107, size: 64, offset: 256)
!4304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4297, file: !172, line: 58, baseType: !107, size: 64, offset: 320)
!4305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4297, file: !172, line: 59, baseType: !107, size: 64, offset: 384)
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4297, file: !172, line: 60, baseType: !107, size: 64, offset: 448)
!4307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4297, file: !172, line: 61, baseType: !107, size: 64, offset: 512)
!4308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4297, file: !172, line: 64, baseType: !107, size: 64, offset: 576)
!4309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4297, file: !172, line: 65, baseType: !107, size: 64, offset: 640)
!4310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4297, file: !172, line: 66, baseType: !107, size: 64, offset: 704)
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4297, file: !172, line: 68, baseType: !187, size: 64, offset: 768)
!4312 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4297, file: !172, line: 70, baseType: !4313, size: 64, offset: 832)
!4313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4314 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4297, file: !172, line: 72, baseType: !77, size: 32, offset: 896)
!4315 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4297, file: !172, line: 73, baseType: !77, size: 32, offset: 928)
!4316 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4297, file: !172, line: 74, baseType: !194, size: 64, offset: 960)
!4317 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4297, file: !172, line: 77, baseType: !112, size: 16, offset: 1024)
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4297, file: !172, line: 78, baseType: !198, size: 8, offset: 1040)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4297, file: !172, line: 79, baseType: !49, size: 8, offset: 1048)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4297, file: !172, line: 81, baseType: !201, size: 64, offset: 1088)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4297, file: !172, line: 89, baseType: !204, size: 64, offset: 1152)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4297, file: !172, line: 91, baseType: !206, size: 64, offset: 1216)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4297, file: !172, line: 92, baseType: !209, size: 64, offset: 1280)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4297, file: !172, line: 93, baseType: !4313, size: 64, offset: 1344)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4297, file: !172, line: 94, baseType: !108, size: 64, offset: 1408)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4297, file: !172, line: 95, baseType: !113, size: 64, offset: 1472)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4297, file: !172, line: 96, baseType: !77, size: 32, offset: 1536)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4297, file: !172, line: 98, baseType: !216, size: 160, offset: 1568)
!4329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!4330 = !{!4331, !4332, !4333, !4334, !4335, !4336}
!4331 = !DILocalVariable(name: "stream", arg: 1, scope: !4292, file: !891, line: 61, type: !4295)
!4332 = !DILocalVariable(name: "command_name", arg: 2, scope: !4292, file: !891, line: 62, type: !115)
!4333 = !DILocalVariable(name: "package", arg: 3, scope: !4292, file: !891, line: 62, type: !115)
!4334 = !DILocalVariable(name: "version", arg: 4, scope: !4292, file: !891, line: 63, type: !115)
!4335 = !DILocalVariable(name: "authors", arg: 5, scope: !4292, file: !891, line: 64, type: !4329)
!4336 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4292, file: !891, line: 64, type: !113)
!4337 = !DILocation(line: 0, scope: !4292)
!4338 = !DILocation(line: 66, column: 7, scope: !4339)
!4339 = distinct !DILexicalBlock(scope: !4292, file: !891, line: 66, column: 7)
!4340 = !DILocation(line: 66, column: 7, scope: !4292)
!4341 = !DILocation(line: 67, column: 5, scope: !4339)
!4342 = !DILocation(line: 69, column: 5, scope: !4339)
!4343 = !DILocation(line: 83, column: 3, scope: !4292)
!4344 = !DILocation(line: 85, column: 3, scope: !4292)
!4345 = !DILocation(line: 88, column: 3, scope: !4292)
!4346 = !DILocation(line: 95, column: 3, scope: !4292)
!4347 = !DILocation(line: 97, column: 3, scope: !4292)
!4348 = !DILocation(line: 105, column: 7, scope: !4349)
!4349 = distinct !DILexicalBlock(scope: !4292, file: !891, line: 98, column: 5)
!4350 = !DILocation(line: 106, column: 7, scope: !4349)
!4351 = !DILocation(line: 109, column: 7, scope: !4349)
!4352 = !DILocation(line: 110, column: 7, scope: !4349)
!4353 = !DILocation(line: 113, column: 7, scope: !4349)
!4354 = !DILocation(line: 115, column: 7, scope: !4349)
!4355 = !DILocation(line: 120, column: 7, scope: !4349)
!4356 = !DILocation(line: 122, column: 7, scope: !4349)
!4357 = !DILocation(line: 127, column: 7, scope: !4349)
!4358 = !DILocation(line: 129, column: 7, scope: !4349)
!4359 = !DILocation(line: 134, column: 7, scope: !4349)
!4360 = !DILocation(line: 137, column: 7, scope: !4349)
!4361 = !DILocation(line: 142, column: 7, scope: !4349)
!4362 = !DILocation(line: 145, column: 7, scope: !4349)
!4363 = !DILocation(line: 150, column: 7, scope: !4349)
!4364 = !DILocation(line: 154, column: 7, scope: !4349)
!4365 = !DILocation(line: 159, column: 7, scope: !4349)
!4366 = !DILocation(line: 163, column: 7, scope: !4349)
!4367 = !DILocation(line: 170, column: 7, scope: !4349)
!4368 = !DILocation(line: 174, column: 7, scope: !4349)
!4369 = !DILocation(line: 176, column: 1, scope: !4292)
!4370 = distinct !DISubprogram(name: "version_etc_ar", scope: !891, file: !891, line: 183, type: !4371, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1021, retainedNodes: !4373)
!4371 = !DISubroutineType(types: !4372)
!4372 = !{null, !4295, !115, !115, !115, !4329}
!4373 = !{!4374, !4375, !4376, !4377, !4378, !4379}
!4374 = !DILocalVariable(name: "stream", arg: 1, scope: !4370, file: !891, line: 183, type: !4295)
!4375 = !DILocalVariable(name: "command_name", arg: 2, scope: !4370, file: !891, line: 184, type: !115)
!4376 = !DILocalVariable(name: "package", arg: 3, scope: !4370, file: !891, line: 184, type: !115)
!4377 = !DILocalVariable(name: "version", arg: 4, scope: !4370, file: !891, line: 185, type: !115)
!4378 = !DILocalVariable(name: "authors", arg: 5, scope: !4370, file: !891, line: 185, type: !4329)
!4379 = !DILocalVariable(name: "n_authors", scope: !4370, file: !891, line: 187, type: !113)
!4380 = !DILocation(line: 0, scope: !4370)
!4381 = !DILocation(line: 189, column: 8, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4370, file: !891, line: 189, column: 3)
!4383 = !DILocation(line: 189, scope: !4382)
!4384 = !DILocation(line: 189, column: 23, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4382, file: !891, line: 189, column: 3)
!4386 = !DILocation(line: 189, column: 3, scope: !4382)
!4387 = !DILocation(line: 189, column: 52, scope: !4385)
!4388 = distinct !{!4388, !4386, !4389, !1209}
!4389 = !DILocation(line: 190, column: 5, scope: !4382)
!4390 = !DILocation(line: 191, column: 3, scope: !4370)
!4391 = !DILocation(line: 192, column: 1, scope: !4370)
!4392 = distinct !DISubprogram(name: "version_etc_va", scope: !891, file: !891, line: 199, type: !4393, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1021, retainedNodes: !4406)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{null, !4295, !115, !115, !115, !4395}
!4395 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !714, line: 52, baseType: !4396)
!4396 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !716, line: 14, baseType: !4397)
!4397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !4398, baseType: !4399)
!4398 = !DIFile(filename: "lib/version-etc.c", directory: "/src")
!4399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4400)
!4400 = !{!4401, !4402, !4403, !4404, !4405}
!4401 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4399, file: !4398, line: 192, baseType: !108, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4399, file: !4398, line: 192, baseType: !108, size: 64, offset: 64)
!4403 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4399, file: !4398, line: 192, baseType: !108, size: 64, offset: 128)
!4404 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4399, file: !4398, line: 192, baseType: !77, size: 32, offset: 192)
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4399, file: !4398, line: 192, baseType: !77, size: 32, offset: 224)
!4406 = !{!4407, !4408, !4409, !4410, !4411, !4412, !4413}
!4407 = !DILocalVariable(name: "stream", arg: 1, scope: !4392, file: !891, line: 199, type: !4295)
!4408 = !DILocalVariable(name: "command_name", arg: 2, scope: !4392, file: !891, line: 200, type: !115)
!4409 = !DILocalVariable(name: "package", arg: 3, scope: !4392, file: !891, line: 200, type: !115)
!4410 = !DILocalVariable(name: "version", arg: 4, scope: !4392, file: !891, line: 201, type: !115)
!4411 = !DILocalVariable(name: "authors", arg: 5, scope: !4392, file: !891, line: 201, type: !4395)
!4412 = !DILocalVariable(name: "n_authors", scope: !4392, file: !891, line: 203, type: !113)
!4413 = !DILocalVariable(name: "authtab", scope: !4392, file: !891, line: 204, type: !4414)
!4414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 640, elements: !55)
!4415 = !DILocation(line: 0, scope: !4392)
!4416 = !DILocation(line: 201, column: 46, scope: !4392)
!4417 = !DILocation(line: 204, column: 3, scope: !4392)
!4418 = !DILocation(line: 204, column: 15, scope: !4392)
!4419 = !DILocation(line: 208, column: 35, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4421, file: !891, line: 206, column: 3)
!4421 = distinct !DILexicalBlock(scope: !4392, file: !891, line: 206, column: 3)
!4422 = !DILocation(line: 208, column: 33, scope: !4420)
!4423 = !DILocation(line: 208, column: 67, scope: !4420)
!4424 = !DILocation(line: 206, column: 3, scope: !4421)
!4425 = !DILocation(line: 208, column: 14, scope: !4420)
!4426 = !DILocation(line: 0, scope: !4421)
!4427 = !DILocation(line: 211, column: 3, scope: !4392)
!4428 = !DILocation(line: 213, column: 1, scope: !4392)
!4429 = distinct !DISubprogram(name: "version_etc", scope: !891, file: !891, line: 230, type: !4430, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1021, retainedNodes: !4432)
!4430 = !DISubroutineType(types: !4431)
!4431 = !{null, !4295, !115, !115, !115, null}
!4432 = !{!4433, !4434, !4435, !4436, !4437}
!4433 = !DILocalVariable(name: "stream", arg: 1, scope: !4429, file: !891, line: 230, type: !4295)
!4434 = !DILocalVariable(name: "command_name", arg: 2, scope: !4429, file: !891, line: 231, type: !115)
!4435 = !DILocalVariable(name: "package", arg: 3, scope: !4429, file: !891, line: 231, type: !115)
!4436 = !DILocalVariable(name: "version", arg: 4, scope: !4429, file: !891, line: 232, type: !115)
!4437 = !DILocalVariable(name: "authors", scope: !4429, file: !891, line: 234, type: !4395)
!4438 = !DILocation(line: 0, scope: !4429)
!4439 = !DILocation(line: 234, column: 3, scope: !4429)
!4440 = !DILocation(line: 234, column: 11, scope: !4429)
!4441 = !DILocation(line: 235, column: 3, scope: !4429)
!4442 = !DILocation(line: 236, column: 3, scope: !4429)
!4443 = !DILocation(line: 237, column: 3, scope: !4429)
!4444 = !DILocation(line: 238, column: 1, scope: !4429)
!4445 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !891, file: !891, line: 241, type: !356, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1021, retainedNodes: !1101)
!4446 = !DILocation(line: 243, column: 3, scope: !4445)
!4447 = !DILocation(line: 248, column: 3, scope: !4445)
!4448 = !DILocation(line: 254, column: 3, scope: !4445)
!4449 = !DILocation(line: 259, column: 3, scope: !4445)
!4450 = !DILocation(line: 261, column: 1, scope: !4445)
!4451 = distinct !DISubprogram(name: "xnrealloc", scope: !4452, file: !4452, line: 147, type: !4453, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4455)
!4452 = !DIFile(filename: "./lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4453 = !DISubroutineType(types: !4454)
!4454 = !{!108, !108, !113, !113}
!4455 = !{!4456, !4457, !4458}
!4456 = !DILocalVariable(name: "p", arg: 1, scope: !4451, file: !4452, line: 147, type: !108)
!4457 = !DILocalVariable(name: "n", arg: 2, scope: !4451, file: !4452, line: 147, type: !113)
!4458 = !DILocalVariable(name: "s", arg: 3, scope: !4451, file: !4452, line: 147, type: !113)
!4459 = !DILocation(line: 0, scope: !4451)
!4460 = !DILocalVariable(name: "p", arg: 1, scope: !4461, file: !1028, line: 83, type: !108)
!4461 = distinct !DISubprogram(name: "xreallocarray", scope: !1028, file: !1028, line: 83, type: !4453, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4462)
!4462 = !{!4460, !4463, !4464}
!4463 = !DILocalVariable(name: "n", arg: 2, scope: !4461, file: !1028, line: 83, type: !113)
!4464 = !DILocalVariable(name: "s", arg: 3, scope: !4461, file: !1028, line: 83, type: !113)
!4465 = !DILocation(line: 0, scope: !4461, inlinedAt: !4466)
!4466 = distinct !DILocation(line: 149, column: 10, scope: !4451)
!4467 = !DILocation(line: 85, column: 25, scope: !4461, inlinedAt: !4466)
!4468 = !DILocalVariable(name: "p", arg: 1, scope: !4469, file: !1028, line: 37, type: !108)
!4469 = distinct !DISubprogram(name: "check_nonnull", scope: !1028, file: !1028, line: 37, type: !4470, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4472)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!108, !108}
!4472 = !{!4468}
!4473 = !DILocation(line: 0, scope: !4469, inlinedAt: !4474)
!4474 = distinct !DILocation(line: 85, column: 10, scope: !4461, inlinedAt: !4466)
!4475 = !DILocation(line: 39, column: 8, scope: !4476, inlinedAt: !4474)
!4476 = distinct !DILexicalBlock(scope: !4469, file: !1028, line: 39, column: 7)
!4477 = !DILocation(line: 39, column: 7, scope: !4469, inlinedAt: !4474)
!4478 = !DILocation(line: 40, column: 5, scope: !4476, inlinedAt: !4474)
!4479 = !DILocation(line: 149, column: 3, scope: !4451)
!4480 = !DILocation(line: 0, scope: !4461)
!4481 = !DILocation(line: 85, column: 25, scope: !4461)
!4482 = !DILocation(line: 0, scope: !4469, inlinedAt: !4483)
!4483 = distinct !DILocation(line: 85, column: 10, scope: !4461)
!4484 = !DILocation(line: 39, column: 8, scope: !4476, inlinedAt: !4483)
!4485 = !DILocation(line: 39, column: 7, scope: !4469, inlinedAt: !4483)
!4486 = !DILocation(line: 40, column: 5, scope: !4476, inlinedAt: !4483)
!4487 = !DILocation(line: 85, column: 3, scope: !4461)
!4488 = distinct !DISubprogram(name: "xmalloc", scope: !1028, file: !1028, line: 47, type: !4489, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4491)
!4489 = !DISubroutineType(types: !4490)
!4490 = !{!108, !113}
!4491 = !{!4492}
!4492 = !DILocalVariable(name: "s", arg: 1, scope: !4488, file: !1028, line: 47, type: !113)
!4493 = !DILocation(line: 0, scope: !4488)
!4494 = !DILocation(line: 49, column: 25, scope: !4488)
!4495 = !DILocation(line: 0, scope: !4469, inlinedAt: !4496)
!4496 = distinct !DILocation(line: 49, column: 10, scope: !4488)
!4497 = !DILocation(line: 39, column: 8, scope: !4476, inlinedAt: !4496)
!4498 = !DILocation(line: 39, column: 7, scope: !4469, inlinedAt: !4496)
!4499 = !DILocation(line: 40, column: 5, scope: !4476, inlinedAt: !4496)
!4500 = !DILocation(line: 49, column: 3, scope: !4488)
!4501 = !DISubprogram(name: "malloc", scope: !1283, file: !1283, line: 540, type: !4489, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!4502 = distinct !DISubprogram(name: "ximalloc", scope: !1028, file: !1028, line: 53, type: !4503, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4505)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!108, !369}
!4505 = !{!4506}
!4506 = !DILocalVariable(name: "s", arg: 1, scope: !4502, file: !1028, line: 53, type: !369)
!4507 = !DILocation(line: 0, scope: !4502)
!4508 = !DILocalVariable(name: "s", arg: 1, scope: !4509, file: !4510, line: 55, type: !369)
!4509 = distinct !DISubprogram(name: "imalloc", scope: !4510, file: !4510, line: 55, type: !4503, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4511)
!4510 = !DIFile(filename: "./lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4511 = !{!4508}
!4512 = !DILocation(line: 0, scope: !4509, inlinedAt: !4513)
!4513 = distinct !DILocation(line: 55, column: 25, scope: !4502)
!4514 = !DILocation(line: 57, column: 26, scope: !4509, inlinedAt: !4513)
!4515 = !DILocation(line: 0, scope: !4469, inlinedAt: !4516)
!4516 = distinct !DILocation(line: 55, column: 10, scope: !4502)
!4517 = !DILocation(line: 39, column: 8, scope: !4476, inlinedAt: !4516)
!4518 = !DILocation(line: 39, column: 7, scope: !4469, inlinedAt: !4516)
!4519 = !DILocation(line: 40, column: 5, scope: !4476, inlinedAt: !4516)
!4520 = !DILocation(line: 55, column: 3, scope: !4502)
!4521 = distinct !DISubprogram(name: "xcharalloc", scope: !1028, file: !1028, line: 59, type: !4522, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4524)
!4522 = !DISubroutineType(types: !4523)
!4523 = !{!107, !113}
!4524 = !{!4525}
!4525 = !DILocalVariable(name: "n", arg: 1, scope: !4521, file: !1028, line: 59, type: !113)
!4526 = !DILocation(line: 0, scope: !4521)
!4527 = !DILocation(line: 0, scope: !4488, inlinedAt: !4528)
!4528 = distinct !DILocation(line: 61, column: 10, scope: !4521)
!4529 = !DILocation(line: 49, column: 25, scope: !4488, inlinedAt: !4528)
!4530 = !DILocation(line: 0, scope: !4469, inlinedAt: !4531)
!4531 = distinct !DILocation(line: 49, column: 10, scope: !4488, inlinedAt: !4528)
!4532 = !DILocation(line: 39, column: 8, scope: !4476, inlinedAt: !4531)
!4533 = !DILocation(line: 39, column: 7, scope: !4469, inlinedAt: !4531)
!4534 = !DILocation(line: 40, column: 5, scope: !4476, inlinedAt: !4531)
!4535 = !DILocation(line: 61, column: 3, scope: !4521)
!4536 = distinct !DISubprogram(name: "xrealloc", scope: !1028, file: !1028, line: 68, type: !4537, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4539)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!108, !108, !113}
!4539 = !{!4540, !4541}
!4540 = !DILocalVariable(name: "p", arg: 1, scope: !4536, file: !1028, line: 68, type: !108)
!4541 = !DILocalVariable(name: "s", arg: 2, scope: !4536, file: !1028, line: 68, type: !113)
!4542 = !DILocation(line: 0, scope: !4536)
!4543 = !DILocalVariable(name: "ptr", arg: 1, scope: !4544, file: !4545, line: 2057, type: !108)
!4544 = distinct !DISubprogram(name: "rpl_realloc", scope: !4545, file: !4545, line: 2057, type: !4537, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4546)
!4545 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4546 = !{!4543, !4547}
!4547 = !DILocalVariable(name: "size", arg: 2, scope: !4544, file: !4545, line: 2057, type: !113)
!4548 = !DILocation(line: 0, scope: !4544, inlinedAt: !4549)
!4549 = distinct !DILocation(line: 70, column: 25, scope: !4536)
!4550 = !DILocation(line: 2059, column: 24, scope: !4544, inlinedAt: !4549)
!4551 = !DILocation(line: 2059, column: 10, scope: !4544, inlinedAt: !4549)
!4552 = !DILocation(line: 0, scope: !4469, inlinedAt: !4553)
!4553 = distinct !DILocation(line: 70, column: 10, scope: !4536)
!4554 = !DILocation(line: 39, column: 8, scope: !4476, inlinedAt: !4553)
!4555 = !DILocation(line: 39, column: 7, scope: !4469, inlinedAt: !4553)
!4556 = !DILocation(line: 40, column: 5, scope: !4476, inlinedAt: !4553)
!4557 = !DILocation(line: 70, column: 3, scope: !4536)
!4558 = !DISubprogram(name: "realloc", scope: !1283, file: !1283, line: 551, type: !4537, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!4559 = distinct !DISubprogram(name: "xirealloc", scope: !1028, file: !1028, line: 74, type: !4560, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4562)
!4560 = !DISubroutineType(types: !4561)
!4561 = !{!108, !108, !369}
!4562 = !{!4563, !4564}
!4563 = !DILocalVariable(name: "p", arg: 1, scope: !4559, file: !1028, line: 74, type: !108)
!4564 = !DILocalVariable(name: "s", arg: 2, scope: !4559, file: !1028, line: 74, type: !369)
!4565 = !DILocation(line: 0, scope: !4559)
!4566 = !DILocalVariable(name: "p", arg: 1, scope: !4567, file: !4510, line: 66, type: !108)
!4567 = distinct !DISubprogram(name: "irealloc", scope: !4510, file: !4510, line: 66, type: !4560, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4568)
!4568 = !{!4566, !4569}
!4569 = !DILocalVariable(name: "s", arg: 2, scope: !4567, file: !4510, line: 66, type: !369)
!4570 = !DILocation(line: 0, scope: !4567, inlinedAt: !4571)
!4571 = distinct !DILocation(line: 76, column: 25, scope: !4559)
!4572 = !DILocation(line: 0, scope: !4544, inlinedAt: !4573)
!4573 = distinct !DILocation(line: 68, column: 26, scope: !4567, inlinedAt: !4571)
!4574 = !DILocation(line: 2059, column: 24, scope: !4544, inlinedAt: !4573)
!4575 = !DILocation(line: 2059, column: 10, scope: !4544, inlinedAt: !4573)
!4576 = !DILocation(line: 0, scope: !4469, inlinedAt: !4577)
!4577 = distinct !DILocation(line: 76, column: 10, scope: !4559)
!4578 = !DILocation(line: 39, column: 8, scope: !4476, inlinedAt: !4577)
!4579 = !DILocation(line: 39, column: 7, scope: !4469, inlinedAt: !4577)
!4580 = !DILocation(line: 40, column: 5, scope: !4476, inlinedAt: !4577)
!4581 = !DILocation(line: 76, column: 3, scope: !4559)
!4582 = distinct !DISubprogram(name: "xireallocarray", scope: !1028, file: !1028, line: 89, type: !4583, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4585)
!4583 = !DISubroutineType(types: !4584)
!4584 = !{!108, !108, !369, !369}
!4585 = !{!4586, !4587, !4588}
!4586 = !DILocalVariable(name: "p", arg: 1, scope: !4582, file: !1028, line: 89, type: !108)
!4587 = !DILocalVariable(name: "n", arg: 2, scope: !4582, file: !1028, line: 89, type: !369)
!4588 = !DILocalVariable(name: "s", arg: 3, scope: !4582, file: !1028, line: 89, type: !369)
!4589 = !DILocation(line: 0, scope: !4582)
!4590 = !DILocalVariable(name: "p", arg: 1, scope: !4591, file: !4510, line: 98, type: !108)
!4591 = distinct !DISubprogram(name: "ireallocarray", scope: !4510, file: !4510, line: 98, type: !4583, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4592)
!4592 = !{!4590, !4593, !4594}
!4593 = !DILocalVariable(name: "n", arg: 2, scope: !4591, file: !4510, line: 98, type: !369)
!4594 = !DILocalVariable(name: "s", arg: 3, scope: !4591, file: !4510, line: 98, type: !369)
!4595 = !DILocation(line: 0, scope: !4591, inlinedAt: !4596)
!4596 = distinct !DILocation(line: 91, column: 25, scope: !4582)
!4597 = !DILocation(line: 101, column: 13, scope: !4591, inlinedAt: !4596)
!4598 = !DILocation(line: 0, scope: !4469, inlinedAt: !4599)
!4599 = distinct !DILocation(line: 91, column: 10, scope: !4582)
!4600 = !DILocation(line: 39, column: 8, scope: !4476, inlinedAt: !4599)
!4601 = !DILocation(line: 39, column: 7, scope: !4469, inlinedAt: !4599)
!4602 = !DILocation(line: 40, column: 5, scope: !4476, inlinedAt: !4599)
!4603 = !DILocation(line: 91, column: 3, scope: !4582)
!4604 = distinct !DISubprogram(name: "xnmalloc", scope: !1028, file: !1028, line: 98, type: !4605, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4607)
!4605 = !DISubroutineType(types: !4606)
!4606 = !{!108, !113, !113}
!4607 = !{!4608, !4609}
!4608 = !DILocalVariable(name: "n", arg: 1, scope: !4604, file: !1028, line: 98, type: !113)
!4609 = !DILocalVariable(name: "s", arg: 2, scope: !4604, file: !1028, line: 98, type: !113)
!4610 = !DILocation(line: 0, scope: !4604)
!4611 = !DILocation(line: 0, scope: !4461, inlinedAt: !4612)
!4612 = distinct !DILocation(line: 100, column: 10, scope: !4604)
!4613 = !DILocation(line: 85, column: 25, scope: !4461, inlinedAt: !4612)
!4614 = !DILocation(line: 0, scope: !4469, inlinedAt: !4615)
!4615 = distinct !DILocation(line: 85, column: 10, scope: !4461, inlinedAt: !4612)
!4616 = !DILocation(line: 39, column: 8, scope: !4476, inlinedAt: !4615)
!4617 = !DILocation(line: 39, column: 7, scope: !4469, inlinedAt: !4615)
!4618 = !DILocation(line: 40, column: 5, scope: !4476, inlinedAt: !4615)
!4619 = !DILocation(line: 100, column: 3, scope: !4604)
!4620 = distinct !DISubprogram(name: "xinmalloc", scope: !1028, file: !1028, line: 104, type: !4621, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4623)
!4621 = !DISubroutineType(types: !4622)
!4622 = !{!108, !369, !369}
!4623 = !{!4624, !4625}
!4624 = !DILocalVariable(name: "n", arg: 1, scope: !4620, file: !1028, line: 104, type: !369)
!4625 = !DILocalVariable(name: "s", arg: 2, scope: !4620, file: !1028, line: 104, type: !369)
!4626 = !DILocation(line: 0, scope: !4620)
!4627 = !DILocation(line: 0, scope: !4582, inlinedAt: !4628)
!4628 = distinct !DILocation(line: 106, column: 10, scope: !4620)
!4629 = !DILocation(line: 0, scope: !4591, inlinedAt: !4630)
!4630 = distinct !DILocation(line: 91, column: 25, scope: !4582, inlinedAt: !4628)
!4631 = !DILocation(line: 101, column: 13, scope: !4591, inlinedAt: !4630)
!4632 = !DILocation(line: 0, scope: !4469, inlinedAt: !4633)
!4633 = distinct !DILocation(line: 91, column: 10, scope: !4582, inlinedAt: !4628)
!4634 = !DILocation(line: 39, column: 8, scope: !4476, inlinedAt: !4633)
!4635 = !DILocation(line: 39, column: 7, scope: !4469, inlinedAt: !4633)
!4636 = !DILocation(line: 40, column: 5, scope: !4476, inlinedAt: !4633)
!4637 = !DILocation(line: 106, column: 3, scope: !4620)
!4638 = distinct !DISubprogram(name: "x2realloc", scope: !1028, file: !1028, line: 116, type: !4639, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4641)
!4639 = !DISubroutineType(types: !4640)
!4640 = !{!108, !108, !1034}
!4641 = !{!4642, !4643}
!4642 = !DILocalVariable(name: "p", arg: 1, scope: !4638, file: !1028, line: 116, type: !108)
!4643 = !DILocalVariable(name: "ps", arg: 2, scope: !4638, file: !1028, line: 116, type: !1034)
!4644 = !DILocation(line: 0, scope: !4638)
!4645 = !DILocation(line: 0, scope: !1031, inlinedAt: !4646)
!4646 = distinct !DILocation(line: 118, column: 10, scope: !4638)
!4647 = !DILocation(line: 178, column: 14, scope: !1031, inlinedAt: !4646)
!4648 = !DILocation(line: 180, column: 9, scope: !4649, inlinedAt: !4646)
!4649 = distinct !DILexicalBlock(scope: !1031, file: !1028, line: 180, column: 7)
!4650 = !DILocation(line: 180, column: 7, scope: !1031, inlinedAt: !4646)
!4651 = !DILocation(line: 182, column: 13, scope: !4652, inlinedAt: !4646)
!4652 = distinct !DILexicalBlock(scope: !4653, file: !1028, line: 182, column: 11)
!4653 = distinct !DILexicalBlock(scope: !4649, file: !1028, line: 181, column: 5)
!4654 = !DILocation(line: 182, column: 11, scope: !4653, inlinedAt: !4646)
!4655 = !DILocation(line: 197, column: 11, scope: !4656, inlinedAt: !4646)
!4656 = distinct !DILexicalBlock(scope: !4657, file: !1028, line: 197, column: 11)
!4657 = distinct !DILexicalBlock(scope: !4649, file: !1028, line: 195, column: 5)
!4658 = !DILocation(line: 197, column: 11, scope: !4657, inlinedAt: !4646)
!4659 = !DILocation(line: 198, column: 9, scope: !4656, inlinedAt: !4646)
!4660 = !DILocation(line: 0, scope: !4461, inlinedAt: !4661)
!4661 = distinct !DILocation(line: 201, column: 7, scope: !1031, inlinedAt: !4646)
!4662 = !DILocation(line: 85, column: 25, scope: !4461, inlinedAt: !4661)
!4663 = !DILocation(line: 0, scope: !4469, inlinedAt: !4664)
!4664 = distinct !DILocation(line: 85, column: 10, scope: !4461, inlinedAt: !4661)
!4665 = !DILocation(line: 39, column: 8, scope: !4476, inlinedAt: !4664)
!4666 = !DILocation(line: 39, column: 7, scope: !4469, inlinedAt: !4664)
!4667 = !DILocation(line: 40, column: 5, scope: !4476, inlinedAt: !4664)
!4668 = !DILocation(line: 202, column: 7, scope: !1031, inlinedAt: !4646)
!4669 = !DILocation(line: 118, column: 3, scope: !4638)
!4670 = !DILocation(line: 0, scope: !1031)
!4671 = !DILocation(line: 178, column: 14, scope: !1031)
!4672 = !DILocation(line: 180, column: 9, scope: !4649)
!4673 = !DILocation(line: 180, column: 7, scope: !1031)
!4674 = !DILocation(line: 182, column: 13, scope: !4652)
!4675 = !DILocation(line: 182, column: 11, scope: !4653)
!4676 = !DILocation(line: 190, column: 30, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4652, file: !1028, line: 183, column: 9)
!4678 = !DILocation(line: 191, column: 16, scope: !4677)
!4679 = !DILocation(line: 191, column: 13, scope: !4677)
!4680 = !DILocation(line: 192, column: 9, scope: !4677)
!4681 = !DILocation(line: 197, column: 11, scope: !4656)
!4682 = !DILocation(line: 197, column: 11, scope: !4657)
!4683 = !DILocation(line: 198, column: 9, scope: !4656)
!4684 = !DILocation(line: 0, scope: !4461, inlinedAt: !4685)
!4685 = distinct !DILocation(line: 201, column: 7, scope: !1031)
!4686 = !DILocation(line: 85, column: 25, scope: !4461, inlinedAt: !4685)
!4687 = !DILocation(line: 0, scope: !4469, inlinedAt: !4688)
!4688 = distinct !DILocation(line: 85, column: 10, scope: !4461, inlinedAt: !4685)
!4689 = !DILocation(line: 39, column: 8, scope: !4476, inlinedAt: !4688)
!4690 = !DILocation(line: 39, column: 7, scope: !4469, inlinedAt: !4688)
!4691 = !DILocation(line: 40, column: 5, scope: !4476, inlinedAt: !4688)
!4692 = !DILocation(line: 202, column: 7, scope: !1031)
!4693 = !DILocation(line: 203, column: 3, scope: !1031)
!4694 = !DILocation(line: 0, scope: !1043)
!4695 = !DILocation(line: 230, column: 14, scope: !1043)
!4696 = !DILocation(line: 238, column: 7, scope: !4697)
!4697 = distinct !DILexicalBlock(scope: !1043, file: !1028, line: 238, column: 7)
!4698 = !DILocation(line: 238, column: 7, scope: !1043)
!4699 = !DILocation(line: 240, column: 9, scope: !4700)
!4700 = distinct !DILexicalBlock(scope: !1043, file: !1028, line: 240, column: 7)
!4701 = !DILocation(line: 240, column: 18, scope: !4700)
!4702 = !DILocation(line: 253, column: 8, scope: !1043)
!4703 = !DILocation(line: 258, column: 27, scope: !4704)
!4704 = distinct !DILexicalBlock(scope: !4705, file: !1028, line: 257, column: 5)
!4705 = distinct !DILexicalBlock(scope: !1043, file: !1028, line: 256, column: 7)
!4706 = !DILocation(line: 259, column: 32, scope: !4704)
!4707 = !DILocation(line: 260, column: 5, scope: !4704)
!4708 = !DILocation(line: 262, column: 9, scope: !4709)
!4709 = distinct !DILexicalBlock(scope: !1043, file: !1028, line: 262, column: 7)
!4710 = !DILocation(line: 262, column: 7, scope: !1043)
!4711 = !DILocation(line: 263, column: 9, scope: !4709)
!4712 = !DILocation(line: 263, column: 5, scope: !4709)
!4713 = !DILocation(line: 264, column: 9, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !1043, file: !1028, line: 264, column: 7)
!4715 = !DILocation(line: 264, column: 14, scope: !4714)
!4716 = !DILocation(line: 265, column: 7, scope: !4714)
!4717 = !DILocation(line: 265, column: 11, scope: !4714)
!4718 = !DILocation(line: 266, column: 11, scope: !4714)
!4719 = !DILocation(line: 267, column: 14, scope: !4714)
!4720 = !DILocation(line: 264, column: 7, scope: !1043)
!4721 = !DILocation(line: 268, column: 5, scope: !4714)
!4722 = !DILocation(line: 0, scope: !4536, inlinedAt: !4723)
!4723 = distinct !DILocation(line: 269, column: 8, scope: !1043)
!4724 = !DILocation(line: 0, scope: !4544, inlinedAt: !4725)
!4725 = distinct !DILocation(line: 70, column: 25, scope: !4536, inlinedAt: !4723)
!4726 = !DILocation(line: 2059, column: 24, scope: !4544, inlinedAt: !4725)
!4727 = !DILocation(line: 2059, column: 10, scope: !4544, inlinedAt: !4725)
!4728 = !DILocation(line: 0, scope: !4469, inlinedAt: !4729)
!4729 = distinct !DILocation(line: 70, column: 10, scope: !4536, inlinedAt: !4723)
!4730 = !DILocation(line: 39, column: 8, scope: !4476, inlinedAt: !4729)
!4731 = !DILocation(line: 39, column: 7, scope: !4469, inlinedAt: !4729)
!4732 = !DILocation(line: 40, column: 5, scope: !4476, inlinedAt: !4729)
!4733 = !DILocation(line: 270, column: 7, scope: !1043)
!4734 = !DILocation(line: 271, column: 3, scope: !1043)
!4735 = distinct !DISubprogram(name: "xzalloc", scope: !1028, file: !1028, line: 279, type: !4489, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4736)
!4736 = !{!4737}
!4737 = !DILocalVariable(name: "s", arg: 1, scope: !4735, file: !1028, line: 279, type: !113)
!4738 = !DILocation(line: 0, scope: !4735)
!4739 = !DILocalVariable(name: "n", arg: 1, scope: !4740, file: !1028, line: 294, type: !113)
!4740 = distinct !DISubprogram(name: "xcalloc", scope: !1028, file: !1028, line: 294, type: !4605, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4741)
!4741 = !{!4739, !4742}
!4742 = !DILocalVariable(name: "s", arg: 2, scope: !4740, file: !1028, line: 294, type: !113)
!4743 = !DILocation(line: 0, scope: !4740, inlinedAt: !4744)
!4744 = distinct !DILocation(line: 281, column: 10, scope: !4735)
!4745 = !DILocation(line: 296, column: 25, scope: !4740, inlinedAt: !4744)
!4746 = !DILocation(line: 0, scope: !4469, inlinedAt: !4747)
!4747 = distinct !DILocation(line: 296, column: 10, scope: !4740, inlinedAt: !4744)
!4748 = !DILocation(line: 39, column: 8, scope: !4476, inlinedAt: !4747)
!4749 = !DILocation(line: 39, column: 7, scope: !4469, inlinedAt: !4747)
!4750 = !DILocation(line: 40, column: 5, scope: !4476, inlinedAt: !4747)
!4751 = !DILocation(line: 281, column: 3, scope: !4735)
!4752 = !DISubprogram(name: "calloc", scope: !1283, file: !1283, line: 543, type: !4605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!4753 = !DILocation(line: 0, scope: !4740)
!4754 = !DILocation(line: 296, column: 25, scope: !4740)
!4755 = !DILocation(line: 0, scope: !4469, inlinedAt: !4756)
!4756 = distinct !DILocation(line: 296, column: 10, scope: !4740)
!4757 = !DILocation(line: 39, column: 8, scope: !4476, inlinedAt: !4756)
!4758 = !DILocation(line: 39, column: 7, scope: !4469, inlinedAt: !4756)
!4759 = !DILocation(line: 40, column: 5, scope: !4476, inlinedAt: !4756)
!4760 = !DILocation(line: 296, column: 3, scope: !4740)
!4761 = distinct !DISubprogram(name: "xizalloc", scope: !1028, file: !1028, line: 285, type: !4503, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4762)
!4762 = !{!4763}
!4763 = !DILocalVariable(name: "s", arg: 1, scope: !4761, file: !1028, line: 285, type: !369)
!4764 = !DILocation(line: 0, scope: !4761)
!4765 = !DILocalVariable(name: "n", arg: 1, scope: !4766, file: !1028, line: 300, type: !369)
!4766 = distinct !DISubprogram(name: "xicalloc", scope: !1028, file: !1028, line: 300, type: !4621, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4767)
!4767 = !{!4765, !4768}
!4768 = !DILocalVariable(name: "s", arg: 2, scope: !4766, file: !1028, line: 300, type: !369)
!4769 = !DILocation(line: 0, scope: !4766, inlinedAt: !4770)
!4770 = distinct !DILocation(line: 287, column: 10, scope: !4761)
!4771 = !DILocalVariable(name: "n", arg: 1, scope: !4772, file: !4510, line: 77, type: !369)
!4772 = distinct !DISubprogram(name: "icalloc", scope: !4510, file: !4510, line: 77, type: !4621, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4773)
!4773 = !{!4771, !4774}
!4774 = !DILocalVariable(name: "s", arg: 2, scope: !4772, file: !4510, line: 77, type: !369)
!4775 = !DILocation(line: 0, scope: !4772, inlinedAt: !4776)
!4776 = distinct !DILocation(line: 302, column: 25, scope: !4766, inlinedAt: !4770)
!4777 = !DILocation(line: 91, column: 10, scope: !4772, inlinedAt: !4776)
!4778 = !DILocation(line: 0, scope: !4469, inlinedAt: !4779)
!4779 = distinct !DILocation(line: 302, column: 10, scope: !4766, inlinedAt: !4770)
!4780 = !DILocation(line: 39, column: 8, scope: !4476, inlinedAt: !4779)
!4781 = !DILocation(line: 39, column: 7, scope: !4469, inlinedAt: !4779)
!4782 = !DILocation(line: 40, column: 5, scope: !4476, inlinedAt: !4779)
!4783 = !DILocation(line: 287, column: 3, scope: !4761)
!4784 = !DILocation(line: 0, scope: !4766)
!4785 = !DILocation(line: 0, scope: !4772, inlinedAt: !4786)
!4786 = distinct !DILocation(line: 302, column: 25, scope: !4766)
!4787 = !DILocation(line: 91, column: 10, scope: !4772, inlinedAt: !4786)
!4788 = !DILocation(line: 0, scope: !4469, inlinedAt: !4789)
!4789 = distinct !DILocation(line: 302, column: 10, scope: !4766)
!4790 = !DILocation(line: 39, column: 8, scope: !4476, inlinedAt: !4789)
!4791 = !DILocation(line: 39, column: 7, scope: !4469, inlinedAt: !4789)
!4792 = !DILocation(line: 40, column: 5, scope: !4476, inlinedAt: !4789)
!4793 = !DILocation(line: 302, column: 3, scope: !4766)
!4794 = distinct !DISubprogram(name: "xmemdup", scope: !1028, file: !1028, line: 310, type: !4795, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4797)
!4795 = !DISubroutineType(types: !4796)
!4796 = !{!108, !1307, !113}
!4797 = !{!4798, !4799}
!4798 = !DILocalVariable(name: "p", arg: 1, scope: !4794, file: !1028, line: 310, type: !1307)
!4799 = !DILocalVariable(name: "s", arg: 2, scope: !4794, file: !1028, line: 310, type: !113)
!4800 = !DILocation(line: 0, scope: !4794)
!4801 = !DILocation(line: 0, scope: !4488, inlinedAt: !4802)
!4802 = distinct !DILocation(line: 312, column: 18, scope: !4794)
!4803 = !DILocation(line: 49, column: 25, scope: !4488, inlinedAt: !4802)
!4804 = !DILocation(line: 0, scope: !4469, inlinedAt: !4805)
!4805 = distinct !DILocation(line: 49, column: 10, scope: !4488, inlinedAt: !4802)
!4806 = !DILocation(line: 39, column: 8, scope: !4476, inlinedAt: !4805)
!4807 = !DILocation(line: 39, column: 7, scope: !4469, inlinedAt: !4805)
!4808 = !DILocation(line: 40, column: 5, scope: !4476, inlinedAt: !4805)
!4809 = !DILocalVariable(name: "__dest", arg: 1, scope: !4810, file: !1426, line: 26, type: !1680)
!4810 = distinct !DISubprogram(name: "memcpy", scope: !1426, file: !1426, line: 26, type: !1678, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4811)
!4811 = !{!4809, !4812, !4813}
!4812 = !DILocalVariable(name: "__src", arg: 2, scope: !4810, file: !1426, line: 26, type: !1306)
!4813 = !DILocalVariable(name: "__len", arg: 3, scope: !4810, file: !1426, line: 26, type: !113)
!4814 = !DILocation(line: 0, scope: !4810, inlinedAt: !4815)
!4815 = distinct !DILocation(line: 312, column: 10, scope: !4794)
!4816 = !DILocation(line: 29, column: 10, scope: !4810, inlinedAt: !4815)
!4817 = !DILocation(line: 312, column: 3, scope: !4794)
!4818 = distinct !DISubprogram(name: "ximemdup", scope: !1028, file: !1028, line: 316, type: !4819, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4821)
!4819 = !DISubroutineType(types: !4820)
!4820 = !{!108, !1307, !369}
!4821 = !{!4822, !4823}
!4822 = !DILocalVariable(name: "p", arg: 1, scope: !4818, file: !1028, line: 316, type: !1307)
!4823 = !DILocalVariable(name: "s", arg: 2, scope: !4818, file: !1028, line: 316, type: !369)
!4824 = !DILocation(line: 0, scope: !4818)
!4825 = !DILocation(line: 0, scope: !4502, inlinedAt: !4826)
!4826 = distinct !DILocation(line: 318, column: 18, scope: !4818)
!4827 = !DILocation(line: 0, scope: !4509, inlinedAt: !4828)
!4828 = distinct !DILocation(line: 55, column: 25, scope: !4502, inlinedAt: !4826)
!4829 = !DILocation(line: 57, column: 26, scope: !4509, inlinedAt: !4828)
!4830 = !DILocation(line: 0, scope: !4469, inlinedAt: !4831)
!4831 = distinct !DILocation(line: 55, column: 10, scope: !4502, inlinedAt: !4826)
!4832 = !DILocation(line: 39, column: 8, scope: !4476, inlinedAt: !4831)
!4833 = !DILocation(line: 39, column: 7, scope: !4469, inlinedAt: !4831)
!4834 = !DILocation(line: 40, column: 5, scope: !4476, inlinedAt: !4831)
!4835 = !DILocation(line: 0, scope: !4810, inlinedAt: !4836)
!4836 = distinct !DILocation(line: 318, column: 10, scope: !4818)
!4837 = !DILocation(line: 29, column: 10, scope: !4810, inlinedAt: !4836)
!4838 = !DILocation(line: 318, column: 3, scope: !4818)
!4839 = distinct !DISubprogram(name: "ximemdup0", scope: !1028, file: !1028, line: 325, type: !4840, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4842)
!4840 = !DISubroutineType(types: !4841)
!4841 = !{!107, !1307, !369}
!4842 = !{!4843, !4844, !4845}
!4843 = !DILocalVariable(name: "p", arg: 1, scope: !4839, file: !1028, line: 325, type: !1307)
!4844 = !DILocalVariable(name: "s", arg: 2, scope: !4839, file: !1028, line: 325, type: !369)
!4845 = !DILocalVariable(name: "result", scope: !4839, file: !1028, line: 327, type: !107)
!4846 = !DILocation(line: 0, scope: !4839)
!4847 = !DILocation(line: 327, column: 30, scope: !4839)
!4848 = !DILocation(line: 0, scope: !4502, inlinedAt: !4849)
!4849 = distinct !DILocation(line: 327, column: 18, scope: !4839)
!4850 = !DILocation(line: 0, scope: !4509, inlinedAt: !4851)
!4851 = distinct !DILocation(line: 55, column: 25, scope: !4502, inlinedAt: !4849)
!4852 = !DILocation(line: 57, column: 26, scope: !4509, inlinedAt: !4851)
!4853 = !DILocation(line: 0, scope: !4469, inlinedAt: !4854)
!4854 = distinct !DILocation(line: 55, column: 10, scope: !4502, inlinedAt: !4849)
!4855 = !DILocation(line: 39, column: 8, scope: !4476, inlinedAt: !4854)
!4856 = !DILocation(line: 39, column: 7, scope: !4469, inlinedAt: !4854)
!4857 = !DILocation(line: 40, column: 5, scope: !4476, inlinedAt: !4854)
!4858 = !DILocation(line: 328, column: 3, scope: !4839)
!4859 = !DILocation(line: 328, column: 13, scope: !4839)
!4860 = !DILocation(line: 0, scope: !4810, inlinedAt: !4861)
!4861 = distinct !DILocation(line: 329, column: 10, scope: !4839)
!4862 = !DILocation(line: 29, column: 10, scope: !4810, inlinedAt: !4861)
!4863 = !DILocation(line: 329, column: 3, scope: !4839)
!4864 = distinct !DISubprogram(name: "xstrdup", scope: !1028, file: !1028, line: 335, type: !1285, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1027, retainedNodes: !4865)
!4865 = !{!4866}
!4866 = !DILocalVariable(name: "string", arg: 1, scope: !4864, file: !1028, line: 335, type: !115)
!4867 = !DILocation(line: 0, scope: !4864)
!4868 = !DILocation(line: 337, column: 27, scope: !4864)
!4869 = !DILocation(line: 337, column: 43, scope: !4864)
!4870 = !DILocation(line: 0, scope: !4794, inlinedAt: !4871)
!4871 = distinct !DILocation(line: 337, column: 10, scope: !4864)
!4872 = !DILocation(line: 0, scope: !4488, inlinedAt: !4873)
!4873 = distinct !DILocation(line: 312, column: 18, scope: !4794, inlinedAt: !4871)
!4874 = !DILocation(line: 49, column: 25, scope: !4488, inlinedAt: !4873)
!4875 = !DILocation(line: 0, scope: !4469, inlinedAt: !4876)
!4876 = distinct !DILocation(line: 49, column: 10, scope: !4488, inlinedAt: !4873)
!4877 = !DILocation(line: 39, column: 8, scope: !4476, inlinedAt: !4876)
!4878 = !DILocation(line: 39, column: 7, scope: !4469, inlinedAt: !4876)
!4879 = !DILocation(line: 40, column: 5, scope: !4476, inlinedAt: !4876)
!4880 = !DILocation(line: 0, scope: !4810, inlinedAt: !4881)
!4881 = distinct !DILocation(line: 312, column: 10, scope: !4794, inlinedAt: !4871)
!4882 = !DILocation(line: 29, column: 10, scope: !4810, inlinedAt: !4881)
!4883 = !DILocation(line: 337, column: 3, scope: !4864)
!4884 = distinct !DISubprogram(name: "xalloc_die", scope: !979, file: !979, line: 32, type: !356, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1058, retainedNodes: !4885)
!4885 = !{!4886}
!4886 = !DILocalVariable(name: "__errstatus", scope: !4887, file: !979, line: 34, type: !4888)
!4887 = distinct !DILexicalBlock(scope: !4884, file: !979, line: 34, column: 3)
!4888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!4889 = !DILocation(line: 34, column: 3, scope: !4887)
!4890 = !DILocation(line: 0, scope: !4887)
!4891 = !DILocation(line: 40, column: 3, scope: !4884)
!4892 = distinct !DISubprogram(name: "rpl_fopen", scope: !1061, file: !1061, line: 46, type: !4893, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1060, retainedNodes: !4929)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{!4895, !115, !115}
!4895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4896, size: 64)
!4896 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 7, baseType: !4897)
!4897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !4898)
!4898 = !{!4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4914, !4915, !4916, !4917, !4918, !4919, !4920, !4921, !4922, !4923, !4924, !4925, !4926, !4927, !4928}
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4897, file: !172, line: 51, baseType: !77, size: 32)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4897, file: !172, line: 54, baseType: !107, size: 64, offset: 64)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4897, file: !172, line: 55, baseType: !107, size: 64, offset: 128)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4897, file: !172, line: 56, baseType: !107, size: 64, offset: 192)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4897, file: !172, line: 57, baseType: !107, size: 64, offset: 256)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4897, file: !172, line: 58, baseType: !107, size: 64, offset: 320)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4897, file: !172, line: 59, baseType: !107, size: 64, offset: 384)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4897, file: !172, line: 60, baseType: !107, size: 64, offset: 448)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4897, file: !172, line: 61, baseType: !107, size: 64, offset: 512)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4897, file: !172, line: 64, baseType: !107, size: 64, offset: 576)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4897, file: !172, line: 65, baseType: !107, size: 64, offset: 640)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4897, file: !172, line: 66, baseType: !107, size: 64, offset: 704)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4897, file: !172, line: 68, baseType: !187, size: 64, offset: 768)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4897, file: !172, line: 70, baseType: !4913, size: 64, offset: 832)
!4913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4897, size: 64)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4897, file: !172, line: 72, baseType: !77, size: 32, offset: 896)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4897, file: !172, line: 73, baseType: !77, size: 32, offset: 928)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4897, file: !172, line: 74, baseType: !194, size: 64, offset: 960)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4897, file: !172, line: 77, baseType: !112, size: 16, offset: 1024)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4897, file: !172, line: 78, baseType: !198, size: 8, offset: 1040)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4897, file: !172, line: 79, baseType: !49, size: 8, offset: 1048)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4897, file: !172, line: 81, baseType: !201, size: 64, offset: 1088)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4897, file: !172, line: 89, baseType: !204, size: 64, offset: 1152)
!4922 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4897, file: !172, line: 91, baseType: !206, size: 64, offset: 1216)
!4923 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4897, file: !172, line: 92, baseType: !209, size: 64, offset: 1280)
!4924 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4897, file: !172, line: 93, baseType: !4913, size: 64, offset: 1344)
!4925 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4897, file: !172, line: 94, baseType: !108, size: 64, offset: 1408)
!4926 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4897, file: !172, line: 95, baseType: !113, size: 64, offset: 1472)
!4927 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4897, file: !172, line: 96, baseType: !77, size: 32, offset: 1536)
!4928 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4897, file: !172, line: 98, baseType: !216, size: 160, offset: 1568)
!4929 = !{!4930, !4931, !4932, !4933, !4934, !4935, !4939, !4941, !4942, !4947, !4950, !4951}
!4930 = !DILocalVariable(name: "filename", arg: 1, scope: !4892, file: !1061, line: 46, type: !115)
!4931 = !DILocalVariable(name: "mode", arg: 2, scope: !4892, file: !1061, line: 46, type: !115)
!4932 = !DILocalVariable(name: "open_direction", scope: !4892, file: !1061, line: 54, type: !77)
!4933 = !DILocalVariable(name: "open_flags", scope: !4892, file: !1061, line: 55, type: !77)
!4934 = !DILocalVariable(name: "open_flags_gnu", scope: !4892, file: !1061, line: 57, type: !109)
!4935 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4892, file: !1061, line: 59, type: !4936)
!4936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4937)
!4937 = !{!4938}
!4938 = !DISubrange(count: 81)
!4939 = !DILocalVariable(name: "p", scope: !4940, file: !1061, line: 62, type: !115)
!4940 = distinct !DILexicalBlock(scope: !4892, file: !1061, line: 61, column: 3)
!4941 = !DILocalVariable(name: "q", scope: !4940, file: !1061, line: 64, type: !107)
!4942 = !DILocalVariable(name: "len", scope: !4943, file: !1061, line: 128, type: !113)
!4943 = distinct !DILexicalBlock(scope: !4944, file: !1061, line: 127, column: 9)
!4944 = distinct !DILexicalBlock(scope: !4945, file: !1061, line: 68, column: 7)
!4945 = distinct !DILexicalBlock(scope: !4946, file: !1061, line: 67, column: 5)
!4946 = distinct !DILexicalBlock(scope: !4940, file: !1061, line: 67, column: 5)
!4947 = !DILocalVariable(name: "fd", scope: !4948, file: !1061, line: 199, type: !77)
!4948 = distinct !DILexicalBlock(scope: !4949, file: !1061, line: 198, column: 5)
!4949 = distinct !DILexicalBlock(scope: !4892, file: !1061, line: 197, column: 7)
!4950 = !DILocalVariable(name: "fp", scope: !4948, file: !1061, line: 204, type: !4895)
!4951 = !DILocalVariable(name: "saved_errno", scope: !4952, file: !1061, line: 207, type: !77)
!4952 = distinct !DILexicalBlock(scope: !4953, file: !1061, line: 206, column: 9)
!4953 = distinct !DILexicalBlock(scope: !4948, file: !1061, line: 205, column: 11)
!4954 = !DILocation(line: 0, scope: !4892)
!4955 = !DILocation(line: 59, column: 3, scope: !4892)
!4956 = !DILocation(line: 59, column: 8, scope: !4892)
!4957 = !DILocation(line: 0, scope: !4940)
!4958 = !DILocation(line: 67, column: 5, scope: !4940)
!4959 = !DILocation(line: 54, column: 7, scope: !4892)
!4960 = !DILocation(line: 67, column: 12, scope: !4945)
!4961 = !DILocation(line: 67, column: 5, scope: !4946)
!4962 = !DILocation(line: 74, column: 19, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4964, file: !1061, line: 74, column: 17)
!4964 = distinct !DILexicalBlock(scope: !4944, file: !1061, line: 70, column: 11)
!4965 = !DILocation(line: 74, column: 17, scope: !4964)
!4966 = !DILocation(line: 75, column: 17, scope: !4963)
!4967 = !DILocation(line: 75, column: 20, scope: !4963)
!4968 = !DILocation(line: 75, column: 15, scope: !4963)
!4969 = !DILocation(line: 80, column: 24, scope: !4964)
!4970 = !DILocation(line: 82, column: 19, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4964, file: !1061, line: 82, column: 17)
!4972 = !DILocation(line: 82, column: 17, scope: !4964)
!4973 = !DILocation(line: 83, column: 17, scope: !4971)
!4974 = !DILocation(line: 83, column: 20, scope: !4971)
!4975 = !DILocation(line: 83, column: 15, scope: !4971)
!4976 = !DILocation(line: 88, column: 24, scope: !4964)
!4977 = !DILocation(line: 90, column: 19, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4964, file: !1061, line: 90, column: 17)
!4979 = !DILocation(line: 90, column: 17, scope: !4964)
!4980 = !DILocation(line: 91, column: 17, scope: !4978)
!4981 = !DILocation(line: 91, column: 20, scope: !4978)
!4982 = !DILocation(line: 91, column: 15, scope: !4978)
!4983 = !DILocation(line: 100, column: 19, scope: !4984)
!4984 = distinct !DILexicalBlock(scope: !4964, file: !1061, line: 100, column: 17)
!4985 = !DILocation(line: 100, column: 17, scope: !4964)
!4986 = !DILocation(line: 101, column: 17, scope: !4984)
!4987 = !DILocation(line: 101, column: 20, scope: !4984)
!4988 = !DILocation(line: 101, column: 15, scope: !4984)
!4989 = !DILocation(line: 107, column: 19, scope: !4990)
!4990 = distinct !DILexicalBlock(scope: !4964, file: !1061, line: 107, column: 17)
!4991 = !DILocation(line: 107, column: 17, scope: !4964)
!4992 = !DILocation(line: 108, column: 17, scope: !4990)
!4993 = !DILocation(line: 108, column: 20, scope: !4990)
!4994 = !DILocation(line: 108, column: 15, scope: !4990)
!4995 = !DILocation(line: 113, column: 24, scope: !4964)
!4996 = !DILocation(line: 115, column: 13, scope: !4964)
!4997 = !DILocation(line: 117, column: 24, scope: !4964)
!4998 = !DILocation(line: 119, column: 13, scope: !4964)
!4999 = !DILocation(line: 128, column: 24, scope: !4943)
!5000 = !DILocation(line: 0, scope: !4943)
!5001 = !DILocation(line: 129, column: 48, scope: !5002)
!5002 = distinct !DILexicalBlock(scope: !4943, file: !1061, line: 129, column: 15)
!5003 = !DILocation(line: 129, column: 15, scope: !4943)
!5004 = !DILocalVariable(name: "__dest", arg: 1, scope: !5005, file: !1426, line: 26, type: !1680)
!5005 = distinct !DISubprogram(name: "memcpy", scope: !1426, file: !1426, line: 26, type: !1678, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1060, retainedNodes: !5006)
!5006 = !{!5004, !5007, !5008}
!5007 = !DILocalVariable(name: "__src", arg: 2, scope: !5005, file: !1426, line: 26, type: !1306)
!5008 = !DILocalVariable(name: "__len", arg: 3, scope: !5005, file: !1426, line: 26, type: !113)
!5009 = !DILocation(line: 0, scope: !5005, inlinedAt: !5010)
!5010 = distinct !DILocation(line: 131, column: 11, scope: !4943)
!5011 = !DILocation(line: 29, column: 10, scope: !5005, inlinedAt: !5010)
!5012 = !DILocation(line: 132, column: 13, scope: !4943)
!5013 = !DILocation(line: 135, column: 9, scope: !4944)
!5014 = !DILocation(line: 67, column: 25, scope: !4945)
!5015 = !DILocation(line: 67, column: 5, scope: !4945)
!5016 = distinct !{!5016, !4961, !5017, !1209}
!5017 = !DILocation(line: 136, column: 7, scope: !4946)
!5018 = !DILocation(line: 138, column: 8, scope: !4940)
!5019 = !DILocation(line: 197, column: 7, scope: !4892)
!5020 = !DILocation(line: 199, column: 47, scope: !4948)
!5021 = !DILocation(line: 199, column: 16, scope: !4948)
!5022 = !DILocation(line: 0, scope: !4948)
!5023 = !DILocation(line: 201, column: 14, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !4948, file: !1061, line: 201, column: 11)
!5025 = !DILocation(line: 201, column: 11, scope: !4948)
!5026 = !DILocation(line: 204, column: 18, scope: !4948)
!5027 = !DILocation(line: 205, column: 14, scope: !4953)
!5028 = !DILocation(line: 205, column: 11, scope: !4948)
!5029 = !DILocation(line: 207, column: 29, scope: !4952)
!5030 = !DILocation(line: 0, scope: !4952)
!5031 = !DILocation(line: 208, column: 11, scope: !4952)
!5032 = !DILocation(line: 209, column: 17, scope: !4952)
!5033 = !DILocation(line: 210, column: 9, scope: !4952)
!5034 = !DILocalVariable(name: "filename", arg: 1, scope: !5035, file: !1061, line: 30, type: !115)
!5035 = distinct !DISubprogram(name: "orig_fopen", scope: !1061, file: !1061, line: 30, type: !4893, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1060, retainedNodes: !5036)
!5036 = !{!5034, !5037}
!5037 = !DILocalVariable(name: "mode", arg: 2, scope: !5035, file: !1061, line: 30, type: !115)
!5038 = !DILocation(line: 0, scope: !5035, inlinedAt: !5039)
!5039 = distinct !DILocation(line: 219, column: 10, scope: !4892)
!5040 = !DILocation(line: 32, column: 10, scope: !5035, inlinedAt: !5039)
!5041 = !DILocation(line: 219, column: 3, scope: !4892)
!5042 = !DILocation(line: 220, column: 1, scope: !4892)
!5043 = !DISubprogram(name: "open", scope: !2544, file: !2544, line: 181, type: !5044, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!5044 = !DISubroutineType(types: !5045)
!5045 = !{!77, !115, !77, null}
!5046 = !DISubprogram(name: "fdopen", scope: !714, file: !714, line: 293, type: !5047, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!5047 = !DISubroutineType(types: !5048)
!5048 = !{!4895, !77, !115}
!5049 = !DISubprogram(name: "close", scope: !2398, file: !2398, line: 358, type: !2425, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!5050 = !DISubprogram(name: "fopen", scope: !714, file: !714, line: 258, type: !5051, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!5051 = !DISubroutineType(types: !5052)
!5052 = !{!4895, !1153, !1153}
!5053 = distinct !DISubprogram(name: "close_stream", scope: !1063, file: !1063, line: 55, type: !5054, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1062, retainedNodes: !5090)
!5054 = !DISubroutineType(types: !5055)
!5055 = !{!77, !5056}
!5056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5057, size: 64)
!5057 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !170, line: 7, baseType: !5058)
!5058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !172, line: 49, size: 1728, elements: !5059)
!5059 = !{!5060, !5061, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5075, !5076, !5077, !5078, !5079, !5080, !5081, !5082, !5083, !5084, !5085, !5086, !5087, !5088, !5089}
!5060 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5058, file: !172, line: 51, baseType: !77, size: 32)
!5061 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5058, file: !172, line: 54, baseType: !107, size: 64, offset: 64)
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5058, file: !172, line: 55, baseType: !107, size: 64, offset: 128)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5058, file: !172, line: 56, baseType: !107, size: 64, offset: 192)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5058, file: !172, line: 57, baseType: !107, size: 64, offset: 256)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5058, file: !172, line: 58, baseType: !107, size: 64, offset: 320)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5058, file: !172, line: 59, baseType: !107, size: 64, offset: 384)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5058, file: !172, line: 60, baseType: !107, size: 64, offset: 448)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5058, file: !172, line: 61, baseType: !107, size: 64, offset: 512)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5058, file: !172, line: 64, baseType: !107, size: 64, offset: 576)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5058, file: !172, line: 65, baseType: !107, size: 64, offset: 640)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5058, file: !172, line: 66, baseType: !107, size: 64, offset: 704)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5058, file: !172, line: 68, baseType: !187, size: 64, offset: 768)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5058, file: !172, line: 70, baseType: !5074, size: 64, offset: 832)
!5074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5058, size: 64)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5058, file: !172, line: 72, baseType: !77, size: 32, offset: 896)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5058, file: !172, line: 73, baseType: !77, size: 32, offset: 928)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5058, file: !172, line: 74, baseType: !194, size: 64, offset: 960)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5058, file: !172, line: 77, baseType: !112, size: 16, offset: 1024)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5058, file: !172, line: 78, baseType: !198, size: 8, offset: 1040)
!5080 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5058, file: !172, line: 79, baseType: !49, size: 8, offset: 1048)
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5058, file: !172, line: 81, baseType: !201, size: 64, offset: 1088)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5058, file: !172, line: 89, baseType: !204, size: 64, offset: 1152)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5058, file: !172, line: 91, baseType: !206, size: 64, offset: 1216)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5058, file: !172, line: 92, baseType: !209, size: 64, offset: 1280)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5058, file: !172, line: 93, baseType: !5074, size: 64, offset: 1344)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5058, file: !172, line: 94, baseType: !108, size: 64, offset: 1408)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5058, file: !172, line: 95, baseType: !113, size: 64, offset: 1472)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5058, file: !172, line: 96, baseType: !77, size: 32, offset: 1536)
!5089 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5058, file: !172, line: 98, baseType: !216, size: 160, offset: 1568)
!5090 = !{!5091, !5092, !5094, !5095}
!5091 = !DILocalVariable(name: "stream", arg: 1, scope: !5053, file: !1063, line: 55, type: !5056)
!5092 = !DILocalVariable(name: "some_pending", scope: !5053, file: !1063, line: 57, type: !5093)
!5093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!5094 = !DILocalVariable(name: "prev_fail", scope: !5053, file: !1063, line: 58, type: !5093)
!5095 = !DILocalVariable(name: "fclose_fail", scope: !5053, file: !1063, line: 59, type: !5093)
!5096 = !DILocation(line: 0, scope: !5053)
!5097 = !DILocation(line: 57, column: 30, scope: !5053)
!5098 = !DILocalVariable(name: "__stream", arg: 1, scope: !5099, file: !1408, line: 135, type: !5056)
!5099 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1408, file: !1408, line: 135, type: !5054, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1062, retainedNodes: !5100)
!5100 = !{!5098}
!5101 = !DILocation(line: 0, scope: !5099, inlinedAt: !5102)
!5102 = distinct !DILocation(line: 58, column: 27, scope: !5053)
!5103 = !DILocation(line: 137, column: 10, scope: !5099, inlinedAt: !5102)
!5104 = !DILocation(line: 58, column: 43, scope: !5053)
!5105 = !DILocation(line: 59, column: 29, scope: !5053)
!5106 = !DILocation(line: 59, column: 45, scope: !5053)
!5107 = !DILocation(line: 69, column: 17, scope: !5108)
!5108 = distinct !DILexicalBlock(scope: !5053, file: !1063, line: 69, column: 7)
!5109 = !DILocation(line: 57, column: 50, scope: !5053)
!5110 = !DILocation(line: 69, column: 33, scope: !5108)
!5111 = !DILocation(line: 69, column: 53, scope: !5108)
!5112 = !DILocation(line: 69, column: 59, scope: !5108)
!5113 = !DILocation(line: 69, column: 7, scope: !5053)
!5114 = !DILocation(line: 71, column: 11, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5108, file: !1063, line: 70, column: 5)
!5116 = !DILocation(line: 72, column: 9, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !5115, file: !1063, line: 71, column: 11)
!5118 = !DILocation(line: 72, column: 15, scope: !5117)
!5119 = !DILocation(line: 77, column: 1, scope: !5053)
!5120 = !DISubprogram(name: "__fpending", scope: !2748, file: !2748, line: 75, type: !5121, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!5121 = !DISubroutineType(types: !5122)
!5122 = !{!113, !5056}
!5123 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !986, file: !986, line: 100, type: !5124, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !989, retainedNodes: !5127)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{!113, !1748, !115, !113, !5126}
!5126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!5127 = !{!5128, !5129, !5130, !5131, !5132}
!5128 = !DILocalVariable(name: "pwc", arg: 1, scope: !5123, file: !986, line: 100, type: !1748)
!5129 = !DILocalVariable(name: "s", arg: 2, scope: !5123, file: !986, line: 100, type: !115)
!5130 = !DILocalVariable(name: "n", arg: 3, scope: !5123, file: !986, line: 100, type: !113)
!5131 = !DILocalVariable(name: "ps", arg: 4, scope: !5123, file: !986, line: 100, type: !5126)
!5132 = !DILocalVariable(name: "ret", scope: !5123, file: !986, line: 130, type: !113)
!5133 = !DILocation(line: 0, scope: !5123)
!5134 = !DILocation(line: 105, column: 9, scope: !5135)
!5135 = distinct !DILexicalBlock(scope: !5123, file: !986, line: 105, column: 7)
!5136 = !DILocation(line: 105, column: 7, scope: !5123)
!5137 = !DILocation(line: 117, column: 10, scope: !5138)
!5138 = distinct !DILexicalBlock(scope: !5123, file: !986, line: 117, column: 7)
!5139 = !DILocation(line: 117, column: 7, scope: !5123)
!5140 = !DILocation(line: 130, column: 16, scope: !5123)
!5141 = !DILocation(line: 135, column: 11, scope: !5142)
!5142 = distinct !DILexicalBlock(scope: !5123, file: !986, line: 135, column: 7)
!5143 = !DILocation(line: 135, column: 25, scope: !5142)
!5144 = !DILocation(line: 135, column: 30, scope: !5142)
!5145 = !DILocation(line: 135, column: 7, scope: !5123)
!5146 = !DILocalVariable(name: "ps", arg: 1, scope: !5147, file: !2987, line: 1135, type: !5126)
!5147 = distinct !DISubprogram(name: "mbszero", scope: !2987, file: !2987, line: 1135, type: !5148, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !989, retainedNodes: !5150)
!5148 = !DISubroutineType(types: !5149)
!5149 = !{null, !5126}
!5150 = !{!5146}
!5151 = !DILocation(line: 0, scope: !5147, inlinedAt: !5152)
!5152 = distinct !DILocation(line: 137, column: 5, scope: !5142)
!5153 = !DILocalVariable(name: "__dest", arg: 1, scope: !5154, file: !1426, line: 57, type: !108)
!5154 = distinct !DISubprogram(name: "memset", scope: !1426, file: !1426, line: 57, type: !2996, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !989, retainedNodes: !5155)
!5155 = !{!5153, !5156, !5157}
!5156 = !DILocalVariable(name: "__ch", arg: 2, scope: !5154, file: !1426, line: 57, type: !77)
!5157 = !DILocalVariable(name: "__len", arg: 3, scope: !5154, file: !1426, line: 57, type: !113)
!5158 = !DILocation(line: 0, scope: !5154, inlinedAt: !5159)
!5159 = distinct !DILocation(line: 1137, column: 3, scope: !5147, inlinedAt: !5152)
!5160 = !DILocation(line: 59, column: 10, scope: !5154, inlinedAt: !5159)
!5161 = !DILocation(line: 137, column: 5, scope: !5142)
!5162 = !DILocation(line: 138, column: 11, scope: !5163)
!5163 = distinct !DILexicalBlock(scope: !5123, file: !986, line: 138, column: 7)
!5164 = !DILocation(line: 138, column: 7, scope: !5123)
!5165 = !DILocation(line: 139, column: 5, scope: !5163)
!5166 = !DILocation(line: 143, column: 26, scope: !5167)
!5167 = distinct !DILexicalBlock(scope: !5123, file: !986, line: 143, column: 7)
!5168 = !DILocation(line: 143, column: 41, scope: !5167)
!5169 = !DILocation(line: 143, column: 7, scope: !5123)
!5170 = !DILocation(line: 145, column: 15, scope: !5171)
!5171 = distinct !DILexicalBlock(scope: !5172, file: !986, line: 145, column: 11)
!5172 = distinct !DILexicalBlock(scope: !5167, file: !986, line: 144, column: 5)
!5173 = !DILocation(line: 145, column: 11, scope: !5172)
!5174 = !DILocation(line: 146, column: 32, scope: !5171)
!5175 = !DILocation(line: 146, column: 16, scope: !5171)
!5176 = !DILocation(line: 146, column: 14, scope: !5171)
!5177 = !DILocation(line: 146, column: 9, scope: !5171)
!5178 = !DILocation(line: 286, column: 1, scope: !5123)
!5179 = !DISubprogram(name: "mbsinit", scope: !1754, file: !1754, line: 293, type: !5180, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !1101)
!5180 = !DISubroutineType(types: !5181)
!5181 = !{!77, !5182}
!5182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5183, size: 64)
!5183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !992)
!5184 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1065, file: !1065, line: 27, type: !4453, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1064, retainedNodes: !5185)
!5185 = !{!5186, !5187, !5188, !5189}
!5186 = !DILocalVariable(name: "ptr", arg: 1, scope: !5184, file: !1065, line: 27, type: !108)
!5187 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5184, file: !1065, line: 27, type: !113)
!5188 = !DILocalVariable(name: "size", arg: 3, scope: !5184, file: !1065, line: 27, type: !113)
!5189 = !DILocalVariable(name: "nbytes", scope: !5184, file: !1065, line: 29, type: !113)
!5190 = !DILocation(line: 0, scope: !5184)
!5191 = !DILocation(line: 30, column: 7, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5184, file: !1065, line: 30, column: 7)
!5193 = !DILocalVariable(name: "ptr", arg: 1, scope: !5194, file: !4545, line: 2057, type: !108)
!5194 = distinct !DISubprogram(name: "rpl_realloc", scope: !4545, file: !4545, line: 2057, type: !4537, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1064, retainedNodes: !5195)
!5195 = !{!5193, !5196}
!5196 = !DILocalVariable(name: "size", arg: 2, scope: !5194, file: !4545, line: 2057, type: !113)
!5197 = !DILocation(line: 0, scope: !5194, inlinedAt: !5198)
!5198 = distinct !DILocation(line: 37, column: 10, scope: !5184)
!5199 = !DILocation(line: 2059, column: 24, scope: !5194, inlinedAt: !5198)
!5200 = !DILocation(line: 2059, column: 10, scope: !5194, inlinedAt: !5198)
!5201 = !DILocation(line: 37, column: 3, scope: !5184)
!5202 = !DILocation(line: 32, column: 7, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !5192, file: !1065, line: 31, column: 5)
!5204 = !DILocation(line: 32, column: 13, scope: !5203)
!5205 = !DILocation(line: 33, column: 7, scope: !5203)
!5206 = !DILocation(line: 38, column: 1, scope: !5184)
!5207 = distinct !DISubprogram(name: "hard_locale", scope: !1004, file: !1004, line: 28, type: !1930, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1067, retainedNodes: !5208)
!5208 = !{!5209, !5210}
!5209 = !DILocalVariable(name: "category", arg: 1, scope: !5207, file: !1004, line: 28, type: !77)
!5210 = !DILocalVariable(name: "locale", scope: !5207, file: !1004, line: 30, type: !5211)
!5211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5212)
!5212 = !{!5213}
!5213 = !DISubrange(count: 257)
!5214 = !DILocation(line: 0, scope: !5207)
!5215 = !DILocation(line: 30, column: 3, scope: !5207)
!5216 = !DILocation(line: 30, column: 8, scope: !5207)
!5217 = !DILocation(line: 32, column: 7, scope: !5218)
!5218 = distinct !DILexicalBlock(scope: !5207, file: !1004, line: 32, column: 7)
!5219 = !DILocation(line: 32, column: 7, scope: !5207)
!5220 = !DILocalVariable(name: "__s1", arg: 1, scope: !5221, file: !1175, line: 1359, type: !115)
!5221 = distinct !DISubprogram(name: "streq", scope: !1175, file: !1175, line: 1359, type: !1176, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1067, retainedNodes: !5222)
!5222 = !{!5220, !5223}
!5223 = !DILocalVariable(name: "__s2", arg: 2, scope: !5221, file: !1175, line: 1359, type: !115)
!5224 = !DILocation(line: 0, scope: !5221, inlinedAt: !5225)
!5225 = distinct !DILocation(line: 35, column: 9, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5207, file: !1004, line: 35, column: 7)
!5227 = !DILocation(line: 1361, column: 11, scope: !5221, inlinedAt: !5225)
!5228 = !DILocation(line: 1361, column: 10, scope: !5221, inlinedAt: !5225)
!5229 = !DILocation(line: 35, column: 29, scope: !5226)
!5230 = !DILocation(line: 0, scope: !5221, inlinedAt: !5231)
!5231 = distinct !DILocation(line: 35, column: 32, scope: !5226)
!5232 = !DILocation(line: 1361, column: 11, scope: !5221, inlinedAt: !5231)
!5233 = !DILocation(line: 1361, column: 10, scope: !5221, inlinedAt: !5231)
!5234 = !DILocation(line: 35, column: 7, scope: !5207)
!5235 = !DILocation(line: 46, column: 3, scope: !5207)
!5236 = !DILocation(line: 47, column: 1, scope: !5207)
!5237 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1070, file: !1070, line: 154, type: !5238, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1069, retainedNodes: !5240)
!5238 = !DISubroutineType(types: !5239)
!5239 = !{!77, !77, !107, !113}
!5240 = !{!5241, !5242, !5243}
!5241 = !DILocalVariable(name: "category", arg: 1, scope: !5237, file: !1070, line: 154, type: !77)
!5242 = !DILocalVariable(name: "buf", arg: 2, scope: !5237, file: !1070, line: 154, type: !107)
!5243 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5237, file: !1070, line: 154, type: !113)
!5244 = !DILocation(line: 0, scope: !5237)
!5245 = !DILocation(line: 159, column: 10, scope: !5237)
!5246 = !DILocation(line: 159, column: 3, scope: !5237)
!5247 = distinct !DISubprogram(name: "setlocale_null", scope: !1070, file: !1070, line: 186, type: !5248, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1069, retainedNodes: !5250)
!5248 = !DISubroutineType(types: !5249)
!5249 = !{!115, !77}
!5250 = !{!5251}
!5251 = !DILocalVariable(name: "category", arg: 1, scope: !5247, file: !1070, line: 186, type: !77)
!5252 = !DILocation(line: 0, scope: !5247)
!5253 = !DILocation(line: 189, column: 10, scope: !5247)
!5254 = !DILocation(line: 189, column: 3, scope: !5247)
!5255 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1072, file: !1072, line: 35, type: !5248, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !5256)
!5256 = !{!5257, !5258}
!5257 = !DILocalVariable(name: "category", arg: 1, scope: !5255, file: !1072, line: 35, type: !77)
!5258 = !DILocalVariable(name: "result", scope: !5255, file: !1072, line: 37, type: !115)
!5259 = !DILocation(line: 0, scope: !5255)
!5260 = !DILocation(line: 37, column: 24, scope: !5255)
!5261 = !DILocation(line: 62, column: 3, scope: !5255)
!5262 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1072, file: !1072, line: 66, type: !5238, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !5263)
!5263 = !{!5264, !5265, !5266, !5267, !5268}
!5264 = !DILocalVariable(name: "category", arg: 1, scope: !5262, file: !1072, line: 66, type: !77)
!5265 = !DILocalVariable(name: "buf", arg: 2, scope: !5262, file: !1072, line: 66, type: !107)
!5266 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5262, file: !1072, line: 66, type: !113)
!5267 = !DILocalVariable(name: "result", scope: !5262, file: !1072, line: 111, type: !115)
!5268 = !DILocalVariable(name: "length", scope: !5269, file: !1072, line: 125, type: !113)
!5269 = distinct !DILexicalBlock(scope: !5270, file: !1072, line: 124, column: 5)
!5270 = distinct !DILexicalBlock(scope: !5262, file: !1072, line: 113, column: 7)
!5271 = !DILocation(line: 0, scope: !5262)
!5272 = !DILocation(line: 0, scope: !5255, inlinedAt: !5273)
!5273 = distinct !DILocation(line: 111, column: 24, scope: !5262)
!5274 = !DILocation(line: 37, column: 24, scope: !5255, inlinedAt: !5273)
!5275 = !DILocation(line: 113, column: 14, scope: !5270)
!5276 = !DILocation(line: 113, column: 7, scope: !5262)
!5277 = !DILocation(line: 116, column: 19, scope: !5278)
!5278 = distinct !DILexicalBlock(scope: !5279, file: !1072, line: 116, column: 11)
!5279 = distinct !DILexicalBlock(scope: !5270, file: !1072, line: 114, column: 5)
!5280 = !DILocation(line: 116, column: 11, scope: !5279)
!5281 = !DILocation(line: 120, column: 16, scope: !5278)
!5282 = !DILocation(line: 120, column: 9, scope: !5278)
!5283 = !DILocation(line: 125, column: 23, scope: !5269)
!5284 = !DILocation(line: 0, scope: !5269)
!5285 = !DILocation(line: 126, column: 18, scope: !5286)
!5286 = distinct !DILexicalBlock(scope: !5269, file: !1072, line: 126, column: 11)
!5287 = !DILocation(line: 126, column: 11, scope: !5269)
!5288 = !DILocation(line: 128, column: 39, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5286, file: !1072, line: 127, column: 9)
!5290 = !DILocalVariable(name: "__dest", arg: 1, scope: !5291, file: !1426, line: 26, type: !1680)
!5291 = distinct !DISubprogram(name: "memcpy", scope: !1426, file: !1426, line: 26, type: !1678, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1071, retainedNodes: !5292)
!5292 = !{!5290, !5293, !5294}
!5293 = !DILocalVariable(name: "__src", arg: 2, scope: !5291, file: !1426, line: 26, type: !1306)
!5294 = !DILocalVariable(name: "__len", arg: 3, scope: !5291, file: !1426, line: 26, type: !113)
!5295 = !DILocation(line: 0, scope: !5291, inlinedAt: !5296)
!5296 = distinct !DILocation(line: 128, column: 11, scope: !5289)
!5297 = !DILocation(line: 29, column: 10, scope: !5291, inlinedAt: !5296)
!5298 = !DILocation(line: 129, column: 11, scope: !5289)
!5299 = !DILocation(line: 133, column: 23, scope: !5300)
!5300 = distinct !DILexicalBlock(scope: !5301, file: !1072, line: 133, column: 15)
!5301 = distinct !DILexicalBlock(scope: !5286, file: !1072, line: 132, column: 9)
!5302 = !DILocation(line: 133, column: 15, scope: !5301)
!5303 = !DILocation(line: 138, column: 44, scope: !5304)
!5304 = distinct !DILexicalBlock(scope: !5300, file: !1072, line: 134, column: 13)
!5305 = !DILocation(line: 0, scope: !5291, inlinedAt: !5306)
!5306 = distinct !DILocation(line: 138, column: 15, scope: !5304)
!5307 = !DILocation(line: 29, column: 10, scope: !5291, inlinedAt: !5306)
!5308 = !DILocation(line: 139, column: 15, scope: !5304)
!5309 = !DILocation(line: 139, column: 32, scope: !5304)
!5310 = !DILocation(line: 140, column: 13, scope: !5304)
!5311 = !DILocation(line: 0, scope: !5270)
!5312 = !DILocation(line: 145, column: 1, scope: !5262)
