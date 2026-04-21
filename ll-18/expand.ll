; ModuleID = 'src/expand.bc'
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
@.str.2 = private unnamed_addr constant [66 x i8] c"Convert tabs in each FILE to spaces, writing to standard output.\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [7 x i8] c"expand\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [63 x i8] c"  -i, --initial\0A         do not convert tabs after non blanks\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [61 x i8] c"  -t, --tabs=N\0A         have tabs N characters apart, not 8\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [50 x i8] c"      --help\0A         display this help and exit\0A\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [62 x i8] c"      --version\0A         output version information and exit\0A\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !42
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1, !dbg !47
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1, !dbg !52
@shortopts = internal constant [34 x i8] c"it:0::1::2::3::4::5::6::7::8::9::\00", align 1, !dbg !57
@longopts = internal constant [5 x %struct.option] [%struct.option { ptr @.str.50, i32 1, ptr null, i32 116 }, %struct.option { ptr @.str.51, i32 0, ptr null, i32 105 }, %struct.option { ptr @.str.52, i32 0, ptr null, i32 -2 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 -3 }, %struct.option zeroinitializer], align 8, !dbg !327
@optarg = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !104
@.str.12 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1, !dbg !109
@optind = external local_unnamed_addr global i32, align 4
@.str.13 = private unnamed_addr constant [56 x i8] c"\0AWith no FILE, or when FILE is -, read standard input.\0A\00", align 1, !dbg !114
@.str.14 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1, !dbg !119
@oputs_.help_no_sgr = internal unnamed_addr global i32 -1, align 4, !dbg !124
@.str.15 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !207
@.str.16 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !212
@.str.17 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !214
@.str.18 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !219
@.str.32 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !259
@.str.33 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !261
@.str.34 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !263
@.str.35 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !268
@.str.36 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !273
@.str.37 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !278
@.str.38 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !280
@.str.39 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !282
@.str.40 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !284
@.str.41 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !286
@.str.45 = private unnamed_addr constant [4 x i8] c"en_\00", align 1, !dbg !297
@.str.46 = private unnamed_addr constant [71 x i8] c"Report any translation bugs to <https://translationproject.org/team/>\0A\00", align 1, !dbg !299
@.str.47 = private unnamed_addr constant [27 x i8] c"Full documentation <%s%s>\0A\00", align 1, !dbg !304
@.str.48 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1, !dbg !309
@.str.49 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1, !dbg !314
@.str.50 = private unnamed_addr constant [5 x i8] c"tabs\00", align 1, !dbg !319
@.str.51 = private unnamed_addr constant [8 x i8] c"initial\00", align 1, !dbg !321
@.str.52 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !323
@.str.53 = private unnamed_addr constant [8 x i8] c"version\00", align 1, !dbg !325
@expand.line_in = internal global [262144 x i8] zeroinitializer, align 4, !dbg !339
@.str.54 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1, !dbg !397
@.str.55 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !402
@convert_entire_line = dso_local local_unnamed_addr global i8 0, align 1, !dbg !407
@exit_status = dso_local local_unnamed_addr global i32 0, align 4, !dbg !437
@first_free_tab = internal unnamed_addr global i64 0, align 8, !dbg !523
@tab_list = internal unnamed_addr global ptr null, align 8, !dbg !525
@n_tabs_allocated = internal global i64 0, align 8, !dbg !528
@.str.19 = private unnamed_addr constant [41 x i8] c"'/' specifier not at start of number: %s\00", align 1, !dbg !439
@.str.1.20 = private unnamed_addr constant [41 x i8] c"'+' specifier not at start of number: %s\00", align 1, !dbg !444
@.str.2.21 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1, !dbg !446
@.str.3.22 = private unnamed_addr constant [25 x i8] c"tab stop is too large %s\00", align 1, !dbg !451
@.str.4.23 = private unnamed_addr constant [43 x i8] c"tab size contains invalid character(s): %s\00", align 1, !dbg !456
@extend_size = internal unnamed_addr global i64 0, align 8, !dbg !554
@increment_size = internal unnamed_addr global i64 0, align 8, !dbg !556
@max_column_width = dso_local local_unnamed_addr global i64 0, align 8, !dbg !521
@tab_size = internal unnamed_addr global i64 0, align 8, !dbg !558
@.str.5.31 = private unnamed_addr constant [23 x i8] c"input line is too long\00", align 1, !dbg !461
@have_read_stdin = internal unnamed_addr global i1 false, align 1, !dbg !651
@stdin_argv = internal global [2 x ptr] [ptr @.str.6.34, ptr null], align 8, !dbg !562
@file_list = internal unnamed_addr global ptr null, align 8, !dbg !565
@next_file.prev_file = internal unnamed_addr global ptr null, align 8, !dbg !463
@.str.6.34 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !508
@.str.7.37 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !510
@stdin = external local_unnamed_addr global ptr, align 8
@.str.8.38 = private unnamed_addr constant [2 x i8] c"r\00", align 1, !dbg !512
@.str.9.43 = private unnamed_addr constant [71 x i8] c"  -t, --tabs=LIST\0A         use comma separated list of tab positions.\0A\00", align 1, !dbg !514
@.str.10.58 = private unnamed_addr constant [305 x i8] c"         The last specified position can be prefixed with '/'\0A         to specify a tab size to use after the last\0A         explicitly specified tab stop.  Also a prefix of '+'\0A         can be used to align remaining tab stops relative to\0A         the last specified tab stop instead of the first column\0A\00", align 1, !dbg !516
@.str.12.7 = private unnamed_addr constant [47 x i8] c"'/' specifier only allowed with the last value\00", align 1, !dbg !532
@.str.13.8 = private unnamed_addr constant [47 x i8] c"'+' specifier only allowed with the last value\00", align 1, !dbg !537
@.str.14.26 = private unnamed_addr constant [21 x i8] c"tab size cannot be 0\00", align 1, !dbg !539
@.str.15.27 = private unnamed_addr constant [28 x i8] c"tab sizes must be ascending\00", align 1, !dbg !544
@.str.16.28 = private unnamed_addr constant [45 x i8] c"'/' specifier is mutually exclusive with '+'\00", align 1, !dbg !549
@oputs_.help_no_sgr.44 = internal unnamed_addr global i32 -1, align 4, !dbg !568
@.str.17.45 = private unnamed_addr constant [5 x i8] c"TERM\00", align 1, !dbg !597
@.str.18.46 = private unnamed_addr constant [5 x i8] c"dumb\00", align 1, !dbg !599
@.str.19.47 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1, !dbg !601
@.str.20 = private unnamed_addr constant [6 x i8] c",=[ \0A\00", align 1, !dbg !603
@.str.21 = private unnamed_addr constant [2 x i8] c"[\00", align 1, !dbg !605
@.str.22 = private unnamed_addr constant [5 x i8] c"test\00", align 1, !dbg !607
@.str.23 = private unnamed_addr constant [4 x i8] c"dir\00", align 1, !dbg !609
@.str.24 = private unnamed_addr constant [3 x i8] c"ls\00", align 1, !dbg !611
@.str.25 = private unnamed_addr constant [5 x i8] c"vdir\00", align 1, !dbg !613
@.str.26 = private unnamed_addr constant [6 x i8] c"b2sum\00", align 1, !dbg !615
@.str.27 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1, !dbg !617
@.str.28 = private unnamed_addr constant [7 x i8] c"md5sum\00", align 1, !dbg !619
@.str.29 = private unnamed_addr constant [8 x i8] c"sha1sum\00", align 1, !dbg !621
@.str.30 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1, !dbg !623
@.str.31 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1, !dbg !625
@.str.32.48 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1, !dbg !627
@.str.33.49 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1, !dbg !629
@.str.34.50 = private unnamed_addr constant [7 x i8] c"--help\00", align 1, !dbg !631
@.str.35.51 = private unnamed_addr constant [10 x i8] c"--version\00", align 1, !dbg !633
@.str.36.52 = private unnamed_addr constant [17 x i8] c"\1B]8;;%s%s#%s%.*s\00", align 1, !dbg !635
@.str.37.53 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !637
@.str.38.54 = private unnamed_addr constant [15 x i8] c"\1B]8;;%s#%s%.*s\00", align 1, !dbg !639
@.str.39.55 = private unnamed_addr constant [61 x i8] c"https://www.gnu.org/software/coreutils/manual/coreutils.html\00", align 1, !dbg !641
@.str.40.56 = private unnamed_addr constant [3 x i8] c"\1B\\\00", align 1, !dbg !643
@.str.41.57 = private unnamed_addr constant [5 x i8] c"\1B[1m\00", align 1, !dbg !645
@.str.42 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !647
@.str.43 = private unnamed_addr constant [8 x i8] c"\1B]8;;\1B\\\00", align 1, !dbg !649
@.str.61 = private unnamed_addr constant [15 x i8] c"9.10.150-6a371\00", align 1, !dbg !652
@Version = dso_local local_unnamed_addr global ptr @.str.61, align 8, !dbg !655
@file_name = internal unnamed_addr global ptr null, align 8, !dbg !659
@ignore_EPIPE = internal unnamed_addr global i8 0, align 4, !dbg !672
@.str.64 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !664
@.str.1.65 = private unnamed_addr constant [12 x i8] c"write error\00", align 1, !dbg !666
@.str.2.66 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1, !dbg !668
@.str.3.67 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !670
@error_print_progname = dso_local local_unnamed_addr global ptr null, align 8, !dbg !674
@stderr = external local_unnamed_addr global ptr, align 8
@.str.68 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1, !dbg !680
@error_one_per_line = dso_local local_unnamed_addr global i32 0, align 4, !dbg !716
@verror_at_line.old_file_name = internal unnamed_addr global ptr null, align 8, !dbg !682
@verror_at_line.old_line_number = internal unnamed_addr global i32 0, align 4, !dbg !706
@.str.1.74 = private unnamed_addr constant [4 x i8] c"%s:\00", align 1, !dbg !708
@.str.2.76 = private unnamed_addr constant [8 x i8] c"%s:%u: \00", align 1, !dbg !710
@.str.3.75 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !712
@error_message_count = dso_local local_unnamed_addr global i32 0, align 4, !dbg !714
@.str.4.69 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !718
@.str.5.70 = private unnamed_addr constant [21 x i8] c"Unknown system error\00", align 1, !dbg !720
@.str.6.71 = private unnamed_addr constant [5 x i8] c": %s\00", align 1, !dbg !722
@program_name = dso_local local_unnamed_addr global ptr null, align 8, !dbg !725
@.str.95 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1, !dbg !731
@.str.1.96 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1, !dbg !733
@program_invocation_name = external local_unnamed_addr global ptr, align 8
@program_invocation_short_name = external local_unnamed_addr global ptr, align 8
@proper_name_lite.utf07FF = internal constant [2 x i8] c"\DF\BF", align 1, !dbg !735
@.str.99 = private unnamed_addr constant [8 x i8] c"literal\00", align 1, !dbg !762
@.str.1.100 = private unnamed_addr constant [6 x i8] c"shell\00", align 1, !dbg !765
@.str.2.101 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1, !dbg !767
@.str.3.102 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1, !dbg !772
@.str.4.103 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1, !dbg !774
@.str.5.104 = private unnamed_addr constant [2 x i8] c"c\00", align 1, !dbg !776
@.str.6.105 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1, !dbg !778
@.str.7.106 = private unnamed_addr constant [7 x i8] c"escape\00", align 1, !dbg !780
@.str.8.107 = private unnamed_addr constant [7 x i8] c"locale\00", align 1, !dbg !782
@.str.9.108 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1, !dbg !784
@quoting_style_args = dso_local local_unnamed_addr constant [11 x ptr] [ptr @.str.99, ptr @.str.1.100, ptr @.str.2.101, ptr @.str.3.102, ptr @.str.4.103, ptr @.str.5.104, ptr @.str.6.105, ptr @.str.7.106, ptr @.str.8.107, ptr @.str.9.108, ptr null], align 8, !dbg !786
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 4, !dbg !799
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !813
@slotvec = internal unnamed_addr global ptr @slotvec0, align 8, !dbg !851
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !858
@slot0 = internal global [256 x i8] zeroinitializer, align 1, !dbg !815
@slotvec0 = internal global %struct.slotvec { i64 256, ptr @slot0 }, align 8, !dbg !860
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, ptr null, ptr null }, align 8, !dbg !803
@.str.10.111 = private unnamed_addr constant [2 x i8] c"\22\00", align 1, !dbg !820
@.str.11.109 = private unnamed_addr constant [2 x i8] c"`\00", align 1, !dbg !822
@.str.12.112 = private unnamed_addr constant [2 x i8] c"'\00", align 1, !dbg !824
@.str.13.110 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !826
@gettext_quote.quote = internal constant [2 x [4 x i8]] [[4 x i8] c"\E2\80\98\00", [4 x i8] c"\E2\80\99\00"], align 1, !dbg !828
@.str.119 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1, !dbg !864
@.str.1.120 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1, !dbg !867
@.str.2.121 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !869
@.str.3.122 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1, !dbg !871
@.str.4.123 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !873
@.str.5.124 = private unnamed_addr constant [171 x i8] c"License GPLv3+: GNU GPL version 3 or later <%s>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\00", align 1, !dbg !875
@.str.6.125 = private unnamed_addr constant [34 x i8] c"https://gnu.org/licenses/gpl.html\00", align 1, !dbg !880
@.str.7.126 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1, !dbg !883
@.str.8.127 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1, !dbg !885
@.str.9.128 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1, !dbg !887
@.str.10.129 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !889
@.str.11.130 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !894
@.str.12.131 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1, !dbg !899
@.str.13.132 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1, !dbg !901
@.str.14.133 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1, !dbg !906
@.str.15.134 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1, !dbg !911
@.str.16.135 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1, !dbg !916
@stdout = external local_unnamed_addr global ptr, align 8
@.str.17.140 = private unnamed_addr constant [20 x i8] c"Report bugs to: %s\0A\00", align 1, !dbg !921
@.str.18.141 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1, !dbg !923
@.str.19.142 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1, !dbg !925
@.str.20.143 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1, !dbg !927
@.str.21.144 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1, !dbg !929
@.str.22.145 = private unnamed_addr constant [39 x i8] c"General help using GNU software: <%s>\0A\00", align 1, !dbg !931
@.str.23.146 = private unnamed_addr constant [29 x i8] c"https://www.gnu.org/gethelp/\00", align 1, !dbg !933
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 1, !dbg !938
@exit_failure = dso_local global i32 1, align 4, !dbg !944
@.str.161 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !950
@.str.1.159 = private unnamed_addr constant [7 x i8] c"gnulib\00", align 1, !dbg !953
@.str.2.160 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1, !dbg !955
@.str.168 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !957
@internal_state = internal global %struct.__mbstate_t zeroinitializer, align 4, !dbg !960
@.str.173 = private unnamed_addr constant [2 x i8] c"C\00", align 1, !dbg !975
@.str.1.174 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1, !dbg !978

; Function Attrs: noreturn nounwind uwtable
define dso_local void @usage(i32 noundef %0) local_unnamed_addr #0 !dbg !1058 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1062, metadata !DIExpression()), !dbg !1063
  %2 = icmp eq i32 %0, 0, !dbg !1064
  br i1 %2, label %8, label %3, !dbg !1066

3:                                                ; preds = %1
  %4 = load ptr, ptr @stderr, align 8, !dbg !1067, !tbaa !1069
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 5) #38, !dbg !1067
  %6 = load ptr, ptr @program_name, align 8, !dbg !1067, !tbaa !1069
  %7 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %4, i32 noundef 1, ptr noundef %5, ptr noundef %6) #38, !dbg !1067
  br label %39, !dbg !1067

8:                                                ; preds = %1
  %9 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #38, !dbg !1073
  %10 = load ptr, ptr @program_name, align 8, !dbg !1073, !tbaa !1069
  %11 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %9, ptr noundef %10) #38, !dbg !1073
  %12 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.2, i32 noundef 5) #38, !dbg !1075
  %13 = load ptr, ptr @stdout, align 8, !dbg !1075, !tbaa !1069
  %14 = tail call i32 @fputs_unlocked(ptr noundef %12, ptr noundef %13), !dbg !1075
  %15 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #38, !dbg !1076
  %16 = load ptr, ptr @stdout, align 8, !dbg !1076, !tbaa !1069
  %17 = tail call i32 @fputs_unlocked(ptr noundef %15, ptr noundef %16), !dbg !1076
  %18 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #38, !dbg !1079
  %19 = load ptr, ptr @stdout, align 8, !dbg !1079, !tbaa !1069
  %20 = tail call i32 @fputs_unlocked(ptr noundef %18, ptr noundef %19), !dbg !1079
  %21 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #38, !dbg !1082
  tail call fastcc void @oputs_(ptr noundef %21), !dbg !1082
  %22 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #38, !dbg !1083
  tail call fastcc void @oputs_(ptr noundef %22), !dbg !1083
  tail call void @emit_tab_list_info(ptr noundef nonnull @.str.3) #38, !dbg !1084
  %23 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #38, !dbg !1085
  tail call fastcc void @oputs_(ptr noundef %23), !dbg !1085
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.7, i32 noundef 5) #38, !dbg !1086
  tail call fastcc void @oputs_(ptr noundef %24), !dbg !1086
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1087, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata !1106, metadata !1100, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata ptr poison, metadata !1099, metadata !DIExpression()), !dbg !1104
  tail call void @emit_bug_reporting_address() #38, !dbg !1107
  %25 = tail call ptr @setlocale(i32 noundef 5, ptr noundef null) #38, !dbg !1108
  call void @llvm.dbg.value(metadata ptr %25, metadata !1102, metadata !DIExpression()), !dbg !1104
  %26 = icmp eq ptr %25, null, !dbg !1109
  br i1 %26, label %34, label %27, !dbg !1111

27:                                               ; preds = %8
  %28 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(4) @.str.45, i64 noundef 3) #39, !dbg !1112
  %29 = icmp eq i32 %28, 0, !dbg !1112
  br i1 %29, label %34, label %30, !dbg !1113

30:                                               ; preds = %27
  %31 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.46, i32 noundef 5) #38, !dbg !1114
  %32 = load ptr, ptr @stdout, align 8, !dbg !1114, !tbaa !1069
  %33 = tail call i32 @fputs_unlocked(ptr noundef %31, ptr noundef %32), !dbg !1114
  br label %34, !dbg !1116

34:                                               ; preds = %8, %27, %30
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1099, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1103, metadata !DIExpression()), !dbg !1104
  %35 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.47, i32 noundef 5) #38, !dbg !1117
  %36 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %35, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3) #38, !dbg !1117
  %37 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 5) #38, !dbg !1118
  %38 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %37, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.49) #38, !dbg !1118
  br label %39

39:                                               ; preds = %34, %3
  tail call void @exit(i32 noundef %0) #40, !dbg !1119
  unreachable, !dbg !1119
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1120 ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !1124 i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare !dbg !1130 i32 @__printf_chk(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !1133 noundef i32 @fputs_unlocked(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @oputs_(ptr noundef %0) unnamed_addr #5 !dbg !126 {
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !130, metadata !DIExpression()), !dbg !1136
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !131, metadata !DIExpression()), !dbg !1136
  %2 = load i32, ptr @oputs_.help_no_sgr, align 4, !dbg !1137, !tbaa !1138
  %3 = icmp eq i32 %2, -1, !dbg !1140
  br i1 %3, label %4, label %16, !dbg !1141

4:                                                ; preds = %1
  %5 = tail call ptr @getenv(ptr noundef nonnull @.str.15) #38, !dbg !1142
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !132, metadata !DIExpression()), !dbg !1143
  %6 = icmp eq ptr %5, null, !dbg !1144
  br i1 %6, label %14, label %7, !dbg !1145

7:                                                ; preds = %4
  %8 = load i8, ptr %5, align 1, !dbg !1146, !tbaa !1147
  %9 = icmp eq i8 %8, 0, !dbg !1146
  br i1 %9, label %14, label %10, !dbg !1148

10:                                               ; preds = %7
  call void @llvm.dbg.value(metadata ptr %5, metadata !1149, metadata !DIExpression()), !dbg !1156
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !1155, metadata !DIExpression()), !dbg !1156
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.16) #39, !dbg !1158
  %12 = icmp eq i32 %11, 0, !dbg !1159
  %13 = zext i1 %12 to i32, !dbg !1148
  br label %14, !dbg !1148

14:                                               ; preds = %10, %7, %4
  %15 = phi i32 [ 1, %7 ], [ 1, %4 ], [ %13, %10 ]
  store i32 %15, ptr @oputs_.help_no_sgr, align 4, !dbg !1160, !tbaa !1138
  br label %16, !dbg !1161

16:                                               ; preds = %14, %1
  %17 = phi i32 [ %15, %14 ], [ %2, %1 ], !dbg !1162
  %18 = icmp eq i32 %17, 0, !dbg !1162
  br i1 %18, label %22, label %19, !dbg !1164

19:                                               ; preds = %16
  %20 = load ptr, ptr @stdout, align 8, !dbg !1165, !tbaa !1069
  %21 = tail call i32 @fputs_unlocked(ptr noundef %0, ptr noundef %20), !dbg !1165
  br label %121, !dbg !1167

22:                                               ; preds = %16
  tail call void @llvm.dbg.value(metadata i8 1, metadata !135, metadata !DIExpression()), !dbg !1136
  %23 = tail call i64 @strspn(ptr noundef %0, ptr noundef nonnull @.str.17) #39, !dbg !1168
  %24 = getelementptr inbounds i8, ptr %0, i64 %23, !dbg !1169
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !137, metadata !DIExpression()), !dbg !1136
  %25 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 45) #39, !dbg !1170
  tail call void @llvm.dbg.value(metadata ptr %25, metadata !138, metadata !DIExpression()), !dbg !1136
  %26 = icmp eq ptr %25, null, !dbg !1171
  br i1 %26, label %53, label %27, !dbg !1172

27:                                               ; preds = %22
  %28 = icmp eq ptr %25, %24, !dbg !1173
  br i1 %28, label %53, label %29, !dbg !1174

29:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata ptr %24, metadata !139, metadata !DIExpression()), !dbg !1175
  tail call void @llvm.dbg.value(metadata i64 0, metadata !143, metadata !DIExpression()), !dbg !1175
  %30 = icmp ult ptr %24, %25, !dbg !1176
  br i1 %30, label %31, label %53, !dbg !1177

31:                                               ; preds = %29
  %32 = tail call ptr @__ctype_b_loc() #41, !dbg !1136
  %33 = load ptr, ptr %32, align 8, !tbaa !1069
  br label %34, !dbg !1177

34:                                               ; preds = %31, %34
  %35 = phi ptr [ %24, %31 ], [ %37, %34 ]
  %36 = phi i64 [ 0, %31 ], [ %46, %34 ]
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !139, metadata !DIExpression()), !dbg !1175
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !143, metadata !DIExpression()), !dbg !1175
  %37 = getelementptr inbounds i8, ptr %35, i64 1, !dbg !1178
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !139, metadata !DIExpression()), !dbg !1175
  %38 = load i8, ptr %35, align 1, !dbg !1178, !tbaa !1147
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i16, ptr %33, i64 %39, !dbg !1178
  %41 = load i16, ptr %40, align 2, !dbg !1178, !tbaa !1179
  %42 = freeze i16 %41, !dbg !1181
  %43 = lshr i16 %42, 13, !dbg !1181
  %44 = and i16 %43, 1, !dbg !1181
  %45 = zext nneg i16 %44 to i64
  %46 = add i64 %36, %45, !dbg !1182
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !143, metadata !DIExpression()), !dbg !1175
  %47 = icmp ult ptr %37, %25, !dbg !1176
  %48 = icmp ult i64 %46, 2, !dbg !1183
  %49 = select i1 %47, i1 %48, i1 false, !dbg !1183
  br i1 %49, label %34, label %50, !dbg !1177, !llvm.loop !1184

50:                                               ; preds = %34
  %.lcssa1 = phi i64 [ %46, %34 ], !dbg !1182
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !1186
  %52 = select i1 %51, ptr %25, ptr %24, !dbg !1188
  br label %53, !dbg !1188

53:                                               ; preds = %50, %29, %22, %27
  %54 = phi ptr [ %24, %27 ], [ %24, %22 ], [ %25, %29 ], [ %52, %50 ], !dbg !1136
  %55 = phi i1 [ true, %27 ], [ false, %22 ], [ true, %29 ], [ %51, %50 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !135, metadata !DIExpression()), !dbg !1136
  tail call void @llvm.dbg.value(metadata ptr %54, metadata !138, metadata !DIExpression()), !dbg !1136
  %56 = tail call i64 @strcspn(ptr noundef %54, ptr noundef nonnull @.str.18) #39, !dbg !1189
  tail call void @llvm.dbg.value(metadata i64 %56, metadata !144, metadata !DIExpression()), !dbg !1136
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !1190
  tail call void @llvm.dbg.value(metadata ptr %57, metadata !145, metadata !DIExpression()), !dbg !1136
  br label %58, !dbg !1191

58:                                               ; preds = %89, %53
  %59 = phi ptr [ %57, %53 ], [ %90, %89 ], !dbg !1136
  %60 = phi i1 [ %55, %53 ], [ %68, %89 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !135, metadata !DIExpression()), !dbg !1136
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !145, metadata !DIExpression()), !dbg !1136
  %61 = load i8, ptr %59, align 1, !dbg !1192, !tbaa !1147
  switch i8 %61, label %67 [
    i8 0, label %91
    i8 10, label %91
    i8 45, label %62
  ], !dbg !1193

62:                                               ; preds = %58
  %63 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1194
  %64 = load i8, ptr %63, align 1, !dbg !1197, !tbaa !1147
  %65 = icmp ne i8 %64, 45, !dbg !1198
  %66 = select i1 %65, i1 %60, i1 false, !dbg !1199
  br label %67, !dbg !1199

67:                                               ; preds = %62, %58
  %68 = phi i1 [ %60, %58 ], [ %66, %62 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !135, metadata !DIExpression()), !dbg !1136
  %69 = tail call ptr @__ctype_b_loc() #41, !dbg !1200
  %70 = load ptr, ptr %69, align 8, !dbg !1200, !tbaa !1069
  %71 = zext i8 %61 to i64
  %72 = getelementptr inbounds i16, ptr %70, i64 %71, !dbg !1200
  %73 = load i16, ptr %72, align 2, !dbg !1200, !tbaa !1179
  %74 = and i16 %73, 8192, !dbg !1200
  %75 = icmp eq i16 %74, 0, !dbg !1200
  br i1 %75, label %89, label %76, !dbg !1202

76:                                               ; preds = %67
  %77 = icmp eq i8 %61, 9, !dbg !1203
  br i1 %77, label %91, label %78, !dbg !1206

78:                                               ; preds = %76
  %79 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1207
  %80 = load i8, ptr %79, align 1, !dbg !1207, !tbaa !1147
  %81 = zext i8 %80 to i64
  %82 = getelementptr inbounds i16, ptr %70, i64 %81, !dbg !1207
  %83 = load i16, ptr %82, align 2, !dbg !1207, !tbaa !1179
  %84 = and i16 %83, 8192, !dbg !1207
  %85 = icmp eq i16 %84, 0, !dbg !1207
  %86 = icmp eq i8 %80, 45
  %87 = or i1 %68, %86
  %88 = select i1 %85, i1 %87, i1 false, !dbg !1208
  br i1 %88, label %89, label %91, !dbg !1208

89:                                               ; preds = %78, %67
  %90 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !1209
  tail call void @llvm.dbg.value(metadata ptr %90, metadata !145, metadata !DIExpression()), !dbg !1136
  br label %58, !dbg !1191, !llvm.loop !1210

91:                                               ; preds = %58, %58, %76, %78
  %.lcssa = phi ptr [ %59, %58 ], [ %59, %58 ], [ %59, %76 ], [ %59, %78 ], !dbg !1136
  %92 = ptrtoint ptr %24 to i64, !dbg !1212
  %93 = load ptr, ptr @stdout, align 8, !dbg !1212, !tbaa !1069
  %94 = tail call i64 @fwrite_unlocked(ptr noundef %0, i64 noundef 1, i64 noundef %23, ptr noundef %93), !dbg !1212
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1149, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata !1106, metadata !1155, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1149, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata !1106, metadata !1155, metadata !DIExpression()), !dbg !1215
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1149, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata !1106, metadata !1155, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1149, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata !1106, metadata !1155, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1149, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata !1106, metadata !1155, metadata !DIExpression()), !dbg !1221
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1149, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata !1106, metadata !1155, metadata !DIExpression()), !dbg !1223
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1149, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata !1106, metadata !1155, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1149, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata !1106, metadata !1155, metadata !DIExpression()), !dbg !1227
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1149, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata !1106, metadata !1155, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata ptr @.str.3, metadata !1149, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata !1106, metadata !1155, metadata !DIExpression()), !dbg !1231
  tail call void @llvm.dbg.value(metadata ptr @.str.3, metadata !202, metadata !DIExpression()), !dbg !1136
  %95 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(7) @.str.32, i64 noundef 6) #39, !dbg !1233
  %96 = icmp eq i32 %95, 0, !dbg !1233
  br i1 %96, label %100, label %97, !dbg !1235

97:                                               ; preds = %91
  %98 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %54, ptr noundef nonnull dereferenceable(10) @.str.33, i64 noundef 9) #39, !dbg !1236
  %99 = icmp eq i32 %98, 0, !dbg !1236
  br i1 %99, label %100, label %103, !dbg !1237

100:                                              ; preds = %97, %91
  %101 = trunc i64 %56 to i32, !dbg !1238
  %102 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.3, i32 noundef %101, ptr noundef %54) #38, !dbg !1238
  br label %106, !dbg !1240

103:                                              ; preds = %97
  %104 = trunc i64 %56 to i32, !dbg !1241
  %105 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.3, i32 noundef %104, ptr noundef %54) #38, !dbg !1241
  br label %106

106:                                              ; preds = %103, %100
  %107 = load ptr, ptr @stdout, align 8, !dbg !1243, !tbaa !1069
  %108 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.38, ptr noundef %107), !dbg !1243
  %109 = load ptr, ptr @stdout, align 8, !dbg !1244, !tbaa !1069
  %110 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.39, ptr noundef %109), !dbg !1244
  %111 = ptrtoint ptr %.lcssa to i64, !dbg !1245
  %112 = sub i64 %111, %92, !dbg !1245
  %113 = load ptr, ptr @stdout, align 8, !dbg !1245, !tbaa !1069
  %114 = tail call i64 @fwrite_unlocked(ptr noundef %24, i64 noundef 1, i64 noundef %112, ptr noundef %113), !dbg !1245
  %115 = load ptr, ptr @stdout, align 8, !dbg !1246, !tbaa !1069
  %116 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40, ptr noundef %115), !dbg !1246
  %117 = load ptr, ptr @stdout, align 8, !dbg !1247, !tbaa !1069
  %118 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41, ptr noundef %117), !dbg !1247
  %119 = load ptr, ptr @stdout, align 8, !dbg !1248, !tbaa !1069
  %120 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %119), !dbg !1248
  br label %121, !dbg !1249

121:                                              ; preds = %106, %19
  ret void, !dbg !1249
}

; Function Attrs: nounwind
declare !dbg !1250 ptr @setlocale(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1254 i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn nounwind
declare !dbg !1258 void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind memory(read)
declare !dbg !1260 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1263 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1266 i64 @strspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1269 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1272 ptr @__ctype_b_loc() local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1278 i64 @strcspn(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare !dbg !1279 noundef i64 @fwrite_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !1285 {
  %3 = alloca %struct.__mbstate_t, align 4, !DIAssignID !1297
  %4 = alloca i32, align 4, !DIAssignID !1298
  %5 = alloca i64, align 8, !DIAssignID !1299
  %6 = alloca i8, align 1, !DIAssignID !1300
  %7 = alloca [2 x i8], align 4, !DIAssignID !1301
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1292, metadata !DIExpression(), metadata !1301, metadata ptr %7, metadata !DIExpression()), !dbg !1302
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !1289, metadata !DIExpression()), !dbg !1303
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1290, metadata !DIExpression()), !dbg !1303
  %8 = load ptr, ptr %1, align 8, !dbg !1304, !tbaa !1069
  tail call void @set_program_name(ptr noundef %8) #38, !dbg !1305
  %9 = tail call ptr @setlocale(i32 noundef 6, ptr noundef nonnull @.str.8) #38, !dbg !1306
  %10 = tail call ptr @bindtextdomain(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #38, !dbg !1307
  %11 = tail call ptr @textdomain(ptr noundef nonnull @.str.9) #38, !dbg !1308
  %12 = tail call i32 @atexit(ptr noundef nonnull @close_stdout) #38, !dbg !1309
  store i8 1, ptr @convert_entire_line, align 1, !dbg !1310, !tbaa !1311
  %13 = getelementptr inbounds [2 x i8], ptr %7, i64 0, i64 1
  br label %14, !dbg !1313

14:                                               ; preds = %24, %2
  %15 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @shortopts, ptr noundef nonnull @longopts, ptr noundef null) #38, !dbg !1314
  tail call void @llvm.dbg.value(metadata i32 %15, metadata !1291, metadata !DIExpression()), !dbg !1303
  switch i32 %15, label %32 [
    i32 -1, label %33
    i32 105, label %16
    i32 116, label %17
    i32 48, label %19
    i32 49, label %19
    i32 50, label %19
    i32 51, label %19
    i32 52, label %19
    i32 53, label %19
    i32 54, label %19
    i32 55, label %19
    i32 56, label %19
    i32 57, label %19
    i32 -2, label %27
    i32 -3, label %28
  ], !dbg !1313

16:                                               ; preds = %14
  store i8 0, ptr @convert_entire_line, align 1, !dbg !1315, !tbaa !1311
  br label %24, !dbg !1316

17:                                               ; preds = %14
  %18 = load ptr, ptr @optarg, align 8, !dbg !1317, !tbaa !1069
  call void @parse_tab_stops(ptr noundef %18) #38, !dbg !1318
  br label %24, !dbg !1319

19:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14, %14, %14
  %20 = load ptr, ptr @optarg, align 8, !dbg !1320, !tbaa !1069
  %21 = icmp eq ptr %20, null, !dbg !1320
  br i1 %21, label %25, label %22, !dbg !1321

22:                                               ; preds = %19
  %23 = getelementptr inbounds i8, ptr %20, i64 -1, !dbg !1322
  call void @parse_tab_stops(ptr noundef nonnull %23) #38, !dbg !1323
  br label %24, !dbg !1323

24:                                               ; preds = %22, %25, %17, %16
  br label %14, !dbg !1314, !llvm.loop !1324

25:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #38, !dbg !1326
  %26 = trunc i32 %15 to i8, !dbg !1327
  store i8 %26, ptr %7, align 4, !dbg !1328, !tbaa !1147, !DIAssignID !1329
  call void @llvm.dbg.assign(metadata i8 %26, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 8), metadata !1329, metadata ptr %7, metadata !DIExpression()), !dbg !1302
  store i8 0, ptr %13, align 1, !dbg !1330, !tbaa !1147, !DIAssignID !1331
  call void @llvm.dbg.assign(metadata i8 0, metadata !1292, metadata !DIExpression(DW_OP_LLVM_fragment, 8, 8), metadata !1331, metadata ptr %13, metadata !DIExpression()), !dbg !1302
  call void @parse_tab_stops(ptr noundef nonnull %7) #38, !dbg !1332
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #38, !dbg !1333
  br label %24

27:                                               ; preds = %14
  call void @usage(i32 noundef 0) #42, !dbg !1334
  unreachable, !dbg !1334

28:                                               ; preds = %14
  %29 = load ptr, ptr @stdout, align 8, !dbg !1335, !tbaa !1069
  %30 = load ptr, ptr @Version, align 8, !dbg !1335, !tbaa !1069
  %31 = call ptr @proper_name_lite(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.12) #38, !dbg !1335
  call void (ptr, ptr, ptr, ptr, ...) @version_etc(ptr noundef %29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.11, ptr noundef %30, ptr noundef %31, ptr noundef null) #38, !dbg !1335
  call void @exit(i32 noundef 0) #40, !dbg !1335
  unreachable, !dbg !1335

32:                                               ; preds = %14
  call void @usage(i32 noundef 1) #42, !dbg !1336
  unreachable, !dbg !1336

33:                                               ; preds = %14
  call void @finalize_tab_stops() #38, !dbg !1337
  %34 = load i32, ptr @optind, align 4, !dbg !1338
  %35 = icmp slt i32 %34, %0, !dbg !1339
  %36 = sext i32 %34 to i64, !dbg !1338
  %37 = getelementptr inbounds ptr, ptr %1, i64 %36, !dbg !1338
  %38 = select i1 %35, ptr %37, ptr null, !dbg !1338
  call void @set_file_list(ptr noundef %38) #38, !dbg !1340
  call void @llvm.dbg.assign(metadata i1 undef, metadata !379, metadata !DIExpression(), metadata !1299, metadata ptr %5, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.assign(metadata i1 undef, metadata !380, metadata !DIExpression(), metadata !1300, metadata ptr %6, metadata !DIExpression()), !dbg !1343
  %39 = call ptr @next_file(ptr noundef null) #38, !dbg !1344
  call void @llvm.dbg.value(metadata ptr %39, metadata !345, metadata !DIExpression()), !dbg !1345
  %40 = icmp eq ptr %39, null, !dbg !1346
  br i1 %40, label %302, label %.preheader8, !dbg !1348

.preheader8:                                      ; preds = %33
  br label %41, !dbg !1349

41:                                               ; preds = %.preheader8, %300
  %42 = phi i64 [ %.lcssa33, %300 ], [ 0, %.preheader8 ], !dbg !1345
  %43 = phi i64 [ %.lcssa27, %300 ], [ 0, %.preheader8 ], !dbg !1345
  %44 = phi ptr [ %.lcssa21, %300 ], [ %39, %.preheader8 ], !dbg !1350
  %45 = phi ptr [ %.lcssa15, %300 ], [ %39, %.preheader8 ], !dbg !1345
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata ptr %44, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 262144, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %43, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %42, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata ptr %45, metadata !345, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i8 1, metadata !372, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i64 0, metadata !373, metadata !DIExpression()), !dbg !1341
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !1361
  store i64 0, ptr %5, align 8, !dbg !1362, !tbaa !1363, !DIAssignID !1365
  call void @llvm.dbg.assign(metadata i64 0, metadata !379, metadata !DIExpression(), metadata !1365, metadata ptr %5, metadata !DIExpression()), !dbg !1341
  br label %46, !dbg !1366

46:                                               ; preds = %296, %41
  %47 = phi i64 [ %42, %41 ], [ %182, %296 ], !dbg !1345
  %48 = phi i64 [ %43, %41 ], [ %183, %296 ], !dbg !1345
  %49 = phi ptr [ %44, %41 ], [ %187, %296 ], !dbg !1350
  %50 = phi i64 [ 0, %41 ], [ %297, %296 ], !dbg !1341
  %51 = phi i1 [ true, %41 ], [ %298, %296 ]
  %52 = phi ptr [ %45, %41 ], [ %188, %296 ], !dbg !1345
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata ptr %49, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 262144, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %48, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %47, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata ptr %52, metadata !345, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata i8 poison, metadata !372, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i64 %50, metadata !373, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata ptr %49, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 262144, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %48, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %47, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata ptr %52, metadata !345, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata ptr undef, metadata !1367, metadata !DIExpression()), !dbg !1377
  %53 = sub nsw i64 %47, %48, !dbg !1379
  call void @llvm.dbg.value(metadata i64 %53, metadata !1372, metadata !DIExpression()), !dbg !1377
  %54 = icmp slt i64 %53, 4, !dbg !1380
  br i1 %54, label %55, label %75, !dbg !1381

55:                                               ; preds = %46
  call void @llvm.dbg.value(metadata ptr %49, metadata !1382, metadata !DIExpression()), !dbg !1388
  %56 = load i32, ptr %49, align 8, !dbg !1390, !tbaa !1391
  %57 = and i32 %56, 16, !dbg !1393
  %58 = icmp eq i32 %57, 0, !dbg !1393
  br i1 %58, label %59, label %70, !dbg !1394

59:                                               ; preds = %55
  %60 = icmp sgt i64 %53, 0, !dbg !1395
  br i1 %60, label %61, label %64, !dbg !1397

61:                                               ; preds = %59
  %62 = getelementptr inbounds i8, ptr @expand.line_in, i64 %48, !dbg !1398
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !1400, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata ptr %62, metadata !1406, metadata !DIExpression()), !dbg !1408
  call void @llvm.dbg.value(metadata i64 %53, metadata !1407, metadata !DIExpression()), !dbg !1408
  %63 = call ptr @__memmove_chk(ptr noundef nonnull @expand.line_in, ptr noundef nonnull %62, i64 noundef %53, i64 noundef 262144) #38, !dbg !1410
  call void @llvm.dbg.value(metadata i64 %53, metadata !1373, metadata !DIExpression()), !dbg !1411
  br label %64

64:                                               ; preds = %61, %59
  %65 = phi i64 [ %53, %61 ], [ 0, %59 ], !dbg !1412
  call void @llvm.dbg.value(metadata i64 %65, metadata !1373, metadata !DIExpression()), !dbg !1411
  %66 = getelementptr inbounds i8, ptr @expand.line_in, i64 %65, !dbg !1413
  %67 = sub nuw nsw i64 262144, %65, !dbg !1413
  %68 = call i64 @fread_unlocked(ptr noundef nonnull %66, i64 noundef 1, i64 noundef %67, ptr noundef nonnull %49), !dbg !1413
  %69 = add i64 %68, %65, !dbg !1414
  call void @llvm.dbg.value(metadata i64 %69, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %69, metadata !1372, metadata !DIExpression()), !dbg !1377
  br label %70, !dbg !1415

70:                                               ; preds = %64, %55
  %71 = phi i64 [ %69, %64 ], [ %47, %55 ], !dbg !1345
  %72 = phi i64 [ 0, %64 ], [ %48, %55 ], !dbg !1345
  %73 = phi i64 [ %69, %64 ], [ %53, %55 ], !dbg !1377
  call void @llvm.dbg.value(metadata i64 %72, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %71, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %73, metadata !1372, metadata !DIExpression()), !dbg !1377
  %74 = icmp slt i64 %73, 1, !dbg !1416
  br i1 %74, label %123, label %75, !dbg !1418

75:                                               ; preds = %70, %46
  %76 = phi i64 [ %71, %70 ], [ %47, %46 ], !dbg !1345
  %77 = phi i64 [ %72, %70 ], [ %48, %46 ], !dbg !1345
  call void @llvm.dbg.value(metadata i64 %77, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %76, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1345
  %78 = getelementptr inbounds i8, ptr @expand.line_in, i64 %77, !dbg !1419
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1420, metadata !DIExpression(), metadata !1297, metadata ptr %3, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1428, metadata !DIExpression(), metadata !1298, metadata ptr %4, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata ptr %78, metadata !1425, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1426, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1440
  %79 = load i8, ptr %78, align 1, !dbg !1442, !tbaa !1147
  call void @llvm.dbg.value(metadata i8 %79, metadata !1427, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8 %79, metadata !1443, metadata !DIExpression()), !dbg !1448
  %80 = icmp sgt i8 %79, -1, !dbg !1451
  br i1 %80, label %102, label %81, !dbg !1452

81:                                               ; preds = %75
  call void @llvm.dbg.value(metadata !DIArgList(ptr @expand.line_in, i64 %76), metadata !1426, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1440
  %82 = getelementptr inbounds i8, ptr @expand.line_in, i64 %76, !dbg !1453
  call void @llvm.dbg.value(metadata ptr %82, metadata !1426, metadata !DIExpression()), !dbg !1440
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1454
  store i32 0, ptr %3, align 4, !dbg !1455, !tbaa !1456, !DIAssignID !1458
  call void @llvm.dbg.assign(metadata i32 0, metadata !1420, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1458, metadata ptr %3, metadata !DIExpression()), !dbg !1440
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #38, !dbg !1459
  %83 = ptrtoint ptr %82 to i64, !dbg !1460
  %84 = ptrtoint ptr %78 to i64, !dbg !1460
  %85 = sub i64 %83, %84, !dbg !1460
  %86 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull %78, i64 noundef %85, ptr noundef nonnull %3) #38, !dbg !1461
  call void @llvm.dbg.value(metadata i64 %86, metadata !1429, metadata !DIExpression()), !dbg !1440
  %87 = icmp slt i64 %86, 0, !dbg !1462
  br i1 %87, label %96, label %88, !dbg !1464, !prof !1465

88:                                               ; preds = %81
  %89 = load i32, ptr %4, align 4, !dbg !1466, !tbaa !1138
  call void @llvm.dbg.value(metadata i32 %89, metadata !1467, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %86, metadata !1472, metadata !DIExpression()), !dbg !1473
  %90 = icmp ne i64 %86, 0, !dbg !1475
  call void @llvm.assume(i1 %90), !dbg !1475
  %91 = icmp ult i64 %86, 5, !dbg !1476
  call void @llvm.assume(i1 %91), !dbg !1476
  %92 = icmp ult i32 %89, 1114112, !dbg !1477
  call void @llvm.assume(i1 %92), !dbg !1477
  %93 = shl nuw nsw i64 %86, 40, !dbg !1478
  %94 = zext nneg i32 %89 to i64, !dbg !1478
  %95 = or disjoint i64 %93, %94, !dbg !1478
  br label %100, !dbg !1479

96:                                               ; preds = %81
  call void @llvm.dbg.value(metadata i8 %79, metadata !1480, metadata !DIExpression()), !dbg !1485
  %97 = zext i8 %79 to i64, !dbg !1487
  %98 = shl nuw nsw i64 %97, 32, !dbg !1487
  %99 = or disjoint i64 %98, 1099511627776, !dbg !1487
  br label %100, !dbg !1488

100:                                              ; preds = %96, %88
  %101 = phi i64 [ %99, %96 ], [ %95, %88 ], !dbg !1440
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #38, !dbg !1489
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1489
  br label %105

102:                                              ; preds = %75
  call void @llvm.dbg.value(metadata i64 1, metadata !1472, metadata !DIExpression()), !dbg !1490
  %103 = zext nneg i8 %79 to i64, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %103, metadata !1467, metadata !DIExpression()), !dbg !1490
  %104 = or disjoint i64 %103, 1099511627776, !dbg !1492
  br label %105, !dbg !1493

105:                                              ; preds = %102, %100
  %106 = phi i64 [ %104, %102 ], [ %101, %100 ], !dbg !1440
  call void @llvm.dbg.value(metadata i64 %106, metadata !1376, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %106, metadata !1376, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %106, metadata !1376, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %106, metadata !1376, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1377
  %107 = and i64 %106, 1095216660480, !dbg !1494
  %108 = icmp eq i64 %107, 0, !dbg !1494
  br i1 %108, label %112, label %109, !dbg !1496

109:                                              ; preds = %105
  call void @llvm.dbg.value(metadata i64 %77, metadata !346, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1345
  %110 = load i8, ptr %78, align 1, !dbg !1497, !tbaa !1147
  %111 = zext i8 %110 to i64, !dbg !1499
  call void @llvm.dbg.value(metadata i8 %110, metadata !1376, metadata !DIExpression(DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1377
  br label %114

112:                                              ; preds = %105
  %113 = lshr i64 %106, 40, !dbg !1500
  call void @llvm.dbg.value(metadata i64 %113, metadata !1376, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %106, metadata !1376, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1377
  call void @llvm.dbg.value(metadata !DIArgList(i64 %77, i64 %113), metadata !346, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 256, 64)), !dbg !1345
  br label %114, !dbg !1501

114:                                              ; preds = %112, %109
  %115 = phi i64 [ %113, %112 ], [ 1, %109 ]
  %116 = phi i64 [ %106, %112 ], [ %111, %109 ], !dbg !1377
  %117 = add nsw i64 %115, %77, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %117, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i32 poison, metadata !1376, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1377
  %118 = and i64 %106, -4294967296, !dbg !1503
  %119 = and i64 %116, 4294967295, !dbg !1504
  %120 = or disjoint i64 %119, %118, !dbg !1503
  call void @llvm.dbg.value(metadata i64 %76, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 poison, metadata !1376, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 poison, metadata !1376, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 poison, metadata !1376, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 poison, metadata !1376, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1377
  %121 = trunc i64 %116 to i32, !dbg !1505
  call void @llvm.dbg.value(metadata i32 %121, metadata !360, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1341
  call void @llvm.dbg.value(metadata !DIArgList(i64 %116, i64 %118), metadata !360, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1341
  call void @llvm.dbg.value(metadata !DIArgList(i64 %116, i64 %118), metadata !360, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1341
  call void @llvm.dbg.value(metadata i64 poison, metadata !360, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1341
  %122 = icmp eq i32 %121, -1, !dbg !1506
  br i1 %122, label %123, label %181, !dbg !1507

123:                                              ; preds = %114, %70
  %124 = phi i64 [ %120, %114 ], [ 4294967295, %70 ]
  %125 = phi i64 [ %117, %114 ], [ %72, %70 ]
  %126 = phi i64 [ %76, %114 ], [ %71, %70 ]
  %127 = call ptr @next_file(ptr noundef %52) #38, !dbg !1508
  call void @llvm.dbg.value(metadata ptr %127, metadata !345, metadata !DIExpression()), !dbg !1345
  %128 = icmp eq ptr %127, null, !dbg !1507
  br i1 %128, label %181, label %.preheader1, !dbg !1509

.preheader1:                                      ; preds = %123
  br label %129, !dbg !1509

129:                                              ; preds = %.preheader1, %175
  %130 = phi ptr [ %179, %175 ], [ %127, %.preheader1 ], !dbg !1510
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata ptr %130, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 64, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 262144, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 128, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata ptr %130, metadata !345, metadata !DIExpression()), !dbg !1345
  call void @llvm.dbg.value(metadata ptr undef, metadata !1367, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata i64 0, metadata !1372, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.value(metadata ptr %130, metadata !1382, metadata !DIExpression()), !dbg !1388
  %131 = load i32, ptr %130, align 8, !dbg !1390, !tbaa !1391
  %132 = and i32 %131, 16, !dbg !1393
  %133 = icmp eq i32 %132, 0, !dbg !1393
  br i1 %133, label %134, label %175, !dbg !1394

134:                                              ; preds = %129
  call void @llvm.dbg.value(metadata i64 0, metadata !1373, metadata !DIExpression()), !dbg !1411
  %135 = call i64 @fread_unlocked(ptr noundef nonnull @expand.line_in, i64 noundef 1, i64 noundef 262144, ptr noundef nonnull %130), !dbg !1413
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %135, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %135, metadata !1372, metadata !DIExpression()), !dbg !1377
  %136 = icmp slt i64 %135, 1, !dbg !1416
  br i1 %136, label %175, label %137, !dbg !1418

137:                                              ; preds = %134
  call void @llvm.dbg.value(metadata i64 0, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 %135, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1345
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1420, metadata !DIExpression(), metadata !1297, metadata ptr %3, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.assign(metadata i1 undef, metadata !1428, metadata !DIExpression(), metadata !1298, metadata ptr %4, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata ptr @expand.line_in, metadata !1425, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata !DIArgList(ptr poison, i64 poison), metadata !1426, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1440
  %138 = load i8, ptr @expand.line_in, align 4, !dbg !1442
  call void @llvm.dbg.value(metadata i8 %138, metadata !1427, metadata !DIExpression()), !dbg !1440
  call void @llvm.dbg.value(metadata i8 %138, metadata !1443, metadata !DIExpression()), !dbg !1448
  %139 = icmp sgt i8 %138, -1, !dbg !1451
  br i1 %139, label %140, label %143, !dbg !1452

140:                                              ; preds = %137
  call void @llvm.dbg.value(metadata i64 1, metadata !1472, metadata !DIExpression()), !dbg !1490
  %141 = zext nneg i8 %138 to i64, !dbg !1492
  call void @llvm.dbg.value(metadata i64 %141, metadata !1467, metadata !DIExpression()), !dbg !1490
  %142 = or disjoint i64 %141, 1099511627776, !dbg !1492
  br label %162, !dbg !1493

143:                                              ; preds = %137
  call void @llvm.dbg.value(metadata !DIArgList(ptr @expand.line_in, i64 %135), metadata !1426, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !1440
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #38, !dbg !1454
  store i32 0, ptr %3, align 4, !dbg !1455, !tbaa !1456, !DIAssignID !1458
  call void @llvm.dbg.assign(metadata i32 0, metadata !1420, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !1458, metadata ptr %3, metadata !DIExpression()), !dbg !1440
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #38, !dbg !1459
  %144 = call i64 @mbrtoc32(ptr noundef nonnull %4, ptr noundef nonnull @expand.line_in, i64 noundef %135, ptr noundef nonnull %3) #38, !dbg !1461
  call void @llvm.dbg.value(metadata i64 %144, metadata !1429, metadata !DIExpression()), !dbg !1440
  %145 = icmp slt i64 %144, 0, !dbg !1462
  br i1 %145, label %146, label %150, !dbg !1464, !prof !1465

146:                                              ; preds = %143
  call void @llvm.dbg.value(metadata i8 %138, metadata !1480, metadata !DIExpression()), !dbg !1485
  %147 = zext i8 %138 to i64, !dbg !1487
  %148 = shl nuw nsw i64 %147, 32, !dbg !1487
  %149 = or disjoint i64 %148, 1099511627776, !dbg !1487
  br label %158, !dbg !1488

150:                                              ; preds = %143
  %151 = load i32, ptr %4, align 4, !dbg !1466, !tbaa !1138
  call void @llvm.dbg.value(metadata i32 %151, metadata !1467, metadata !DIExpression()), !dbg !1473
  call void @llvm.dbg.value(metadata i64 %144, metadata !1472, metadata !DIExpression()), !dbg !1473
  %152 = icmp ne i64 %144, 0, !dbg !1475
  call void @llvm.assume(i1 %152), !dbg !1475
  %153 = icmp ult i64 %144, 5, !dbg !1476
  call void @llvm.assume(i1 %153), !dbg !1476
  %154 = icmp ult i32 %151, 1114112, !dbg !1477
  call void @llvm.assume(i1 %154), !dbg !1477
  %155 = shl nuw nsw i64 %144, 40, !dbg !1478
  %156 = zext nneg i32 %151 to i64, !dbg !1478
  %157 = or disjoint i64 %155, %156, !dbg !1478
  br label %158, !dbg !1479

158:                                              ; preds = %150, %146
  %159 = phi i64 [ %149, %146 ], [ %157, %150 ], !dbg !1440
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #38, !dbg !1489
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #38, !dbg !1489
  %160 = load i8, ptr @expand.line_in, align 4, !dbg !1496
  %161 = zext i8 %160 to i64, !dbg !1496
  br label %162

162:                                              ; preds = %158, %140
  %163 = phi i64 [ %161, %158 ], [ %141, %140 ], !dbg !1496
  %164 = phi i64 [ %159, %158 ], [ %142, %140 ], !dbg !1440
  call void @llvm.dbg.value(metadata i64 %164, metadata !1376, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 32)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %164, metadata !1376, metadata !DIExpression(DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %164, metadata !1376, metadata !DIExpression(DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 %164, metadata !1376, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1377
  %165 = and i64 %164, 1095216660480, !dbg !1494
  %166 = icmp eq i64 %165, 0, !dbg !1494
  %167 = lshr i64 %164, 40, !dbg !1496
  %168 = select i1 %166, i64 %167, i64 1, !dbg !1496
  %169 = select i1 %166, i64 %164, i64 %163, !dbg !1496
  call void @llvm.dbg.value(metadata i64 %168, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 256, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i32 poison, metadata !1376, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1377
  %170 = and i64 %164, -4294967296, !dbg !1503
  %171 = and i64 %169, 4294967295, !dbg !1504
  %172 = or disjoint i64 %171, %170, !dbg !1503
  call void @llvm.dbg.value(metadata i64 %135, metadata !346, metadata !DIExpression(DW_OP_LLVM_fragment, 192, 64)), !dbg !1345
  call void @llvm.dbg.value(metadata i64 poison, metadata !1376, metadata !DIExpression(DW_OP_LLVM_fragment, 48, 16)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 poison, metadata !1376, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 poison, metadata !1376, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 8)), !dbg !1377
  call void @llvm.dbg.value(metadata i64 poison, metadata !1376, metadata !DIExpression(DW_OP_LLVM_fragment, 40, 8)), !dbg !1377
  %173 = trunc i64 %169 to i32, !dbg !1505
  call void @llvm.dbg.value(metadata i32 %173, metadata !360, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !1341
  call void @llvm.dbg.value(metadata !DIArgList(i64 %169, i64 %170), metadata !360, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 32, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 32, 8)), !dbg !1341
  call void @llvm.dbg.value(metadata !DIArgList(i64 %169, i64 %170), metadata !360, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_constu, 4294967295, DW_OP_and, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 40, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1341
  call void @llvm.dbg.value(metadata i64 poison, metadata !360, metadata !DIExpression(DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1341
  %174 = icmp eq i32 %173, -1, !dbg !1506
  br i1 %174, label %175, label %.loopexit2, !dbg !1507

175:                                              ; preds = %162, %134, %129
  %176 = phi i64 [ %172, %162 ], [ 4294967295, %134 ], [ 4294967295, %129 ]
  %177 = phi i64 [ %168, %162 ], [ 0, %134 ], [ 0, %129 ]
  %178 = phi i64 [ %135, %162 ], [ %135, %134 ], [ 0, %129 ]
  %179 = call ptr @next_file(ptr noundef nonnull %130) #38, !dbg !1508
  call void @llvm.dbg.value(metadata ptr %179, metadata !345, metadata !DIExpression()), !dbg !1345
  %180 = icmp eq ptr %179, null, !dbg !1507
  br i1 %180, label %.loopexit2, label %129, !dbg !1509, !llvm.loop !1512

.loopexit2:                                       ; preds = %162, %175
  %.lcssa = phi ptr [ %130, %162 ], [ %130, %175 ], !dbg !1510
  %.ph = phi i64 [ %135, %162 ], [ %178, %175 ]
  %.ph3 = phi i64 [ %168, %162 ], [ %177, %175 ]
  %.ph4 = phi i64 [ %172, %162 ], [ %176, %175 ]
  %.ph5 = phi i32 [ %173, %162 ], [ -1, %175 ]
  %.ph6 = phi i1 [ false, %162 ], [ true, %175 ]
  %.ph7 = phi ptr [ %130, %162 ], [ null, %175 ]
  br label %181

181:                                              ; preds = %.loopexit2, %123, %114
  %182 = phi i64 [ %76, %114 ], [ %126, %123 ], [ %.ph, %.loopexit2 ], !dbg !1515
  %183 = phi i64 [ %117, %114 ], [ %125, %123 ], [ %.ph3, %.loopexit2 ], !dbg !1377
  %184 = phi i64 [ %120, %114 ], [ %124, %123 ], [ %.ph4, %.loopexit2 ], !dbg !1504
  %185 = phi i32 [ %121, %114 ], [ -1, %123 ], [ %.ph5, %.loopexit2 ], !dbg !1505
  %186 = phi i1 [ false, %114 ], [ true, %123 ], [ %.ph6, %.loopexit2 ], !dbg !1506
  %187 = phi ptr [ %49, %114 ], [ %49, %123 ], [ %.lcssa, %.loopexit2 ], !dbg !1510
  %188 = phi ptr [ %52, %114 ], [ null, %123 ], [ %.ph7, %.loopexit2 ], !dbg !1345
  %189 = lshr i64 %184, 40
  %190 = lshr i64 %184, 40
  %191 = and i64 %189, 16776960
  %192 = and i64 %190, 255
  %193 = or disjoint i64 %192, %191
  call void @llvm.dbg.value(metadata ptr %188, metadata !345, metadata !DIExpression()), !dbg !1345
  br i1 %51, label %194, label %273, !dbg !1516

194:                                              ; preds = %181
  %195 = load i8, ptr @convert_entire_line, align 1, !dbg !1517, !tbaa !1311, !range !1518, !noundef !1106
  %196 = icmp eq i8 %195, 0, !dbg !1517
  br i1 %196, label %197, label %200, !dbg !1519

197:                                              ; preds = %194
  call void @llvm.dbg.value(metadata i32 %185, metadata !1520, metadata !DIExpression()), !dbg !1525
  call void @llvm.dbg.value(metadata i32 %185, metadata !1527, metadata !DIExpression()), !dbg !1535
  %198 = call i32 @iswblank(i32 noundef %185) #38, !dbg !1537
  %199 = icmp ne i32 %198, 0, !dbg !1538
  br label %200, !dbg !1519

200:                                              ; preds = %197, %194
  %201 = phi i1 [ true, %194 ], [ %199, %197 ]
  call void @llvm.dbg.value(metadata i1 %201, metadata !372, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !1341
  switch i32 %185, label %262 [
    i32 9, label %202
    i32 8, label %254
  ], !dbg !1539

202:                                              ; preds = %200
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #38, !dbg !1540
  %203 = call i64 @get_next_tab_column(i64 noundef %50, ptr noundef nonnull %5, ptr noundef nonnull %6) #38, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %203, metadata !386, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.value(metadata i64 %50, metadata !373, metadata !DIExpression()), !dbg !1341
  %204 = add nsw i64 %50, 1, !dbg !1542
  call void @llvm.dbg.value(metadata i64 %204, metadata !373, metadata !DIExpression()), !dbg !1341
  %205 = icmp slt i64 %204, %203, !dbg !1543
  br i1 %205, label %.preheader, label %231, !dbg !1544

.preheader:                                       ; preds = %202
  br label %206, !dbg !1544

206:                                              ; preds = %.preheader, %228
  %207 = phi i64 [ %229, %228 ], [ %204, %.preheader ]
  call void @llvm.dbg.value(metadata i32 32, metadata !1545, metadata !DIExpression()), !dbg !1550
  %208 = load ptr, ptr @stdout, align 8, !dbg !1553, !tbaa !1069
  %209 = getelementptr inbounds %struct._IO_FILE, ptr %208, i64 0, i32 5, !dbg !1553
  %210 = load ptr, ptr %209, align 8, !dbg !1553, !tbaa !1554
  %211 = getelementptr inbounds %struct._IO_FILE, ptr %208, i64 0, i32 6, !dbg !1553
  %212 = load ptr, ptr %211, align 8, !dbg !1553, !tbaa !1555
  %213 = icmp ult ptr %210, %212, !dbg !1553
  br i1 %213, label %214, label %216, !dbg !1553, !prof !1556

214:                                              ; preds = %206
  %215 = getelementptr inbounds i8, ptr %210, i64 1, !dbg !1553
  store ptr %215, ptr %209, align 8, !dbg !1553, !tbaa !1554
  store i8 32, ptr %210, align 1, !dbg !1553, !tbaa !1147
  br label %228, !dbg !1557

216:                                              ; preds = %206
  %217 = call i32 @__overflow(ptr noundef nonnull %208, i32 noundef 32) #38, !dbg !1553
  %218 = icmp slt i32 %217, 0, !dbg !1558
  br i1 %218, label %219, label %228, !dbg !1557

219:                                              ; preds = %216
  %220 = tail call ptr @__errno_location() #41, !dbg !1559
  %221 = load i32, ptr %220, align 4, !dbg !1559, !tbaa !1138
  call void @llvm.dbg.value(metadata i32 %221, metadata !1562, metadata !DIExpression()), !dbg !1564
  %222 = load ptr, ptr @stdout, align 8, !dbg !1565, !tbaa !1069
  %223 = call i32 @fflush_unlocked(ptr noundef %222) #38, !dbg !1565
  %224 = load ptr, ptr @stdout, align 8, !dbg !1566, !tbaa !1069
  %225 = call i32 @fpurge(ptr noundef %224) #38, !dbg !1567
  %226 = load ptr, ptr @stdout, align 8, !dbg !1568, !tbaa !1069
  call void @clearerr_unlocked(ptr noundef %226) #38, !dbg !1568
  %227 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #38, !dbg !1569
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %221, ptr noundef %227) #38, !dbg !1569
  unreachable, !dbg !1569

228:                                              ; preds = %216, %214
  call void @llvm.dbg.value(metadata i64 %207, metadata !373, metadata !DIExpression()), !dbg !1341
  %229 = add i64 %207, 1, !dbg !1542
  call void @llvm.dbg.value(metadata i64 %229, metadata !373, metadata !DIExpression()), !dbg !1341
  %230 = icmp eq i64 %229, %203, !dbg !1543
  br i1 %230, label %.loopexit, label %206, !dbg !1544, !llvm.loop !1570

.loopexit:                                        ; preds = %228
  br label %231, !dbg !1572

231:                                              ; preds = %.loopexit, %202
  %232 = phi i64 [ %204, %202 ], [ %203, %.loopexit ], !dbg !1542
  call void @llvm.dbg.value(metadata i32 32, metadata !1545, metadata !DIExpression()), !dbg !1575
  %233 = load ptr, ptr @stdout, align 8, !dbg !1572, !tbaa !1069
  %234 = getelementptr inbounds %struct._IO_FILE, ptr %233, i64 0, i32 5, !dbg !1572
  %235 = load ptr, ptr %234, align 8, !dbg !1572, !tbaa !1554
  %236 = getelementptr inbounds %struct._IO_FILE, ptr %233, i64 0, i32 6, !dbg !1572
  %237 = load ptr, ptr %236, align 8, !dbg !1572, !tbaa !1555
  %238 = icmp ult ptr %235, %237, !dbg !1572
  br i1 %238, label %239, label %241, !dbg !1572, !prof !1556

239:                                              ; preds = %231
  %240 = getelementptr inbounds i8, ptr %235, i64 1, !dbg !1572
  store ptr %240, ptr %234, align 8, !dbg !1572, !tbaa !1554
  store i8 32, ptr %235, align 1, !dbg !1572, !tbaa !1147
  br label %253, !dbg !1576

241:                                              ; preds = %231
  %242 = call i32 @__overflow(ptr noundef nonnull %233, i32 noundef 32) #38, !dbg !1572
  %243 = icmp slt i32 %242, 0, !dbg !1577
  br i1 %243, label %244, label %253, !dbg !1576

244:                                              ; preds = %241
  %245 = tail call ptr @__errno_location() #41, !dbg !1578
  %246 = load i32, ptr %245, align 4, !dbg !1578, !tbaa !1138
  call void @llvm.dbg.value(metadata i32 %246, metadata !1562, metadata !DIExpression()), !dbg !1580
  %247 = load ptr, ptr @stdout, align 8, !dbg !1581, !tbaa !1069
  %248 = call i32 @fflush_unlocked(ptr noundef %247) #38, !dbg !1581
  %249 = load ptr, ptr @stdout, align 8, !dbg !1582, !tbaa !1069
  %250 = call i32 @fpurge(ptr noundef %249) #38, !dbg !1583
  %251 = load ptr, ptr @stdout, align 8, !dbg !1584, !tbaa !1069
  call void @clearerr_unlocked(ptr noundef %251) #38, !dbg !1584
  %252 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #38, !dbg !1585
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %246, ptr noundef %252) #38, !dbg !1585
  unreachable, !dbg !1585

253:                                              ; preds = %241, %239
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #38, !dbg !1586
  br label %296

254:                                              ; preds = %200
  %255 = icmp ne i64 %50, 0, !dbg !1587
  %256 = sext i1 %255 to i64
  %257 = add i64 %50, %256, !dbg !1589
  call void @llvm.dbg.value(metadata i64 %257, metadata !373, metadata !DIExpression()), !dbg !1341
  %258 = load i64, ptr %5, align 8, !dbg !1590, !tbaa !1363
  %259 = icmp ne i64 %258, 0, !dbg !1591
  %260 = sext i1 %259 to i64
  %261 = add i64 %258, %260, !dbg !1592
  store i64 %261, ptr %5, align 8, !dbg !1592, !tbaa !1363, !DIAssignID !1593
  call void @llvm.dbg.assign(metadata i64 %261, metadata !379, metadata !DIExpression(), metadata !1593, metadata ptr %5, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i8 poison, metadata !372, metadata !DIExpression()), !dbg !1341
  br label %276, !dbg !1594

262:                                              ; preds = %200
  call void @llvm.dbg.value(metadata i32 %185, metadata !1595, metadata !DIExpression()), !dbg !1600
  %263 = call i32 @wcwidth(i32 noundef %185) #38, !dbg !1602
  call void @llvm.dbg.value(metadata i32 %263, metadata !387, metadata !DIExpression()), !dbg !1603
  %264 = icmp slt i32 %263, 0, !dbg !1604
  %265 = select i1 %264, i32 1, i32 %263, !dbg !1604
  %266 = sext i32 %265 to i64, !dbg !1604
  %267 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %50, i64 %266), !dbg !1604
  %268 = extractvalue { i64, i1 } %267, 1, !dbg !1604
  call void @llvm.dbg.value(metadata i64 poison, metadata !373, metadata !DIExpression()), !dbg !1341
  br i1 %268, label %269, label %271, !dbg !1606

269:                                              ; preds = %262
  %270 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 5) #38, !dbg !1607
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %270) #38, !dbg !1607
  unreachable, !dbg !1607

271:                                              ; preds = %262
  %272 = extractvalue { i64, i1 } %267, 0, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %272, metadata !373, metadata !DIExpression()), !dbg !1341
  br label %273

273:                                              ; preds = %271, %181
  %274 = phi i64 [ %272, %271 ], [ %50, %181 ], !dbg !1341
  %275 = phi i1 [ %201, %271 ], [ false, %181 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !372, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i64 %274, metadata !373, metadata !DIExpression()), !dbg !1341
  br i1 %186, label %301, label %276, !dbg !1594

276:                                              ; preds = %254, %273
  %277 = phi i1 [ %201, %254 ], [ %275, %273 ]
  %278 = phi i64 [ %257, %254 ], [ %274, %273 ]
  call void @llvm.dbg.value(metadata !DIArgList(i64 %190, i64 0, i64 %189), metadata !1608, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 65280, DW_OP_and, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709486080, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1614
  call void @llvm.dbg.value(metadata !DIArgList(i64 %190, i64 0, i64 %189), metadata !1608, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 65280, DW_OP_and, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709486080, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 40, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 40)), !dbg !1616
  call void @llvm.dbg.value(metadata i64 %193, metadata !1608, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1614
  call void @llvm.dbg.value(metadata i64 %193, metadata !1608, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 40, 8)), !dbg !1616
  call void @llvm.dbg.value(metadata !DIArgList(i64 %190, i64 0, i64 %189), metadata !1608, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 65280, DW_OP_and, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709486080, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1614
  call void @llvm.dbg.value(metadata !DIArgList(i64 %190, i64 0, i64 %189), metadata !1608, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 8, DW_OP_shl, DW_OP_constu, 65280, DW_OP_and, DW_OP_LLVM_arg, 2, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_constu, 18446744073709486080, DW_OP_and, DW_OP_or, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_constu, 32, DW_OP_shl, DW_OP_LLVM_arg, 1, DW_OP_or, DW_OP_constu, 48, DW_OP_shr, DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 16, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 48, 16)), !dbg !1616
  call void @llvm.dbg.value(metadata ptr undef, metadata !1613, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata ptr undef, metadata !1613, metadata !DIExpression()), !dbg !1616
  %279 = icmp sge i64 %183, %193, !dbg !1618
  call void @llvm.assume(i1 %279), !dbg !1621
  %280 = sub nsw i64 %183, %193, !dbg !1622
  %281 = getelementptr inbounds i8, ptr @expand.line_in, i64 %280, !dbg !1623
  %282 = load ptr, ptr @stdout, align 8, !dbg !1624, !tbaa !1069
  %283 = call i64 @fwrite_unlocked(ptr noundef nonnull %281, i64 noundef 1, i64 noundef %190, ptr noundef %282), !dbg !1624
  %284 = load ptr, ptr @stdout, align 8, !dbg !1625, !tbaa !1069
  call void @llvm.dbg.value(metadata ptr %284, metadata !1627, metadata !DIExpression()), !dbg !1630
  %285 = load i32, ptr %284, align 8, !dbg !1632, !tbaa !1391
  %286 = and i32 %285, 32, !dbg !1625
  %287 = icmp eq i32 %286, 0, !dbg !1625
  br i1 %287, label %296, label %288, !dbg !1633

288:                                              ; preds = %276
  %.lcssa9 = phi ptr [ %284, %276 ], !dbg !1625
  %289 = tail call ptr @__errno_location() #41, !dbg !1634
  %290 = load i32, ptr %289, align 4, !dbg !1634, !tbaa !1138
  call void @llvm.dbg.value(metadata i32 %290, metadata !1562, metadata !DIExpression()), !dbg !1636
  %291 = call i32 @fflush_unlocked(ptr noundef nonnull %.lcssa9) #38, !dbg !1637
  %292 = load ptr, ptr @stdout, align 8, !dbg !1638, !tbaa !1069
  %293 = call i32 @fpurge(ptr noundef %292) #38, !dbg !1639
  %294 = load ptr, ptr @stdout, align 8, !dbg !1640, !tbaa !1069
  call void @clearerr_unlocked(ptr noundef %294) #38, !dbg !1640
  %295 = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.55, i32 noundef 5) #38, !dbg !1641
  call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %290, ptr noundef %295) #38, !dbg !1641
  unreachable, !dbg !1641

296:                                              ; preds = %276, %253
  %297 = phi i64 [ %232, %253 ], [ %278, %276 ], !dbg !1642
  %298 = phi i1 [ %201, %253 ], [ %277, %276 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !372, metadata !DIExpression()), !dbg !1341
  call void @llvm.dbg.value(metadata i64 %297, metadata !373, metadata !DIExpression()), !dbg !1341
  %299 = icmp eq i32 %185, 10, !dbg !1643
  br i1 %299, label %300, label %46, !dbg !1644, !llvm.loop !1645

300:                                              ; preds = %296
  %.lcssa33 = phi i64 [ %182, %296 ], !dbg !1515
  %.lcssa27 = phi i64 [ %183, %296 ], !dbg !1377
  %.lcssa21 = phi ptr [ %187, %296 ], !dbg !1510
  %.lcssa15 = phi ptr [ %188, %296 ], !dbg !1345
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !1647
  br label %41, !llvm.loop !1648

301:                                              ; preds = %273
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !1647
  br label %302

302:                                              ; preds = %33, %301
  call void @cleanup_file_list_stdin() #38, !dbg !1649
  %303 = load i32, ptr @exit_status, align 4, !dbg !1650, !tbaa !1138
  ret i32 %303, !dbg !1651
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.assign(metadata, metadata, metadata, metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare !dbg !1652 ptr @bindtextdomain(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1655 ptr @textdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1656 i32 @atexit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1659 i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #11

; Function Attrs: nofree nounwind
declare !dbg !1665 ptr @__memmove_chk(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread_unlocked(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !1669 i64 @mbrtoc32(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nounwind
declare !dbg !1676 i32 @iswblank(i32 noundef) local_unnamed_addr #2

declare !dbg !1678 i32 @__overflow(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare !dbg !1681 ptr @__errno_location() local_unnamed_addr #9

declare !dbg !1685 i32 @fflush_unlocked(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !1686 void @clearerr_unlocked(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !1689 i32 @wcwidth(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local void @add_tab_stop(i64 noundef %0) local_unnamed_addr #10 !dbg !1695 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !1699, metadata !DIExpression()), !dbg !1702
  %2 = load i64, ptr @first_free_tab, align 8, !dbg !1703, !tbaa !1363
  %3 = icmp eq i64 %2, 0, !dbg !1703
  %4 = load ptr, ptr @tab_list, align 8, !dbg !1704, !tbaa !1069
  br i1 %3, label %9, label %5, !dbg !1703

5:                                                ; preds = %1
  %6 = getelementptr i64, ptr %4, i64 %2, !dbg !1705
  %7 = getelementptr i64, ptr %6, i64 -1, !dbg !1705
  %8 = load i64, ptr %7, align 8, !dbg !1705, !tbaa !1363
  br label %9, !dbg !1703

9:                                                ; preds = %1, %5
  %10 = phi i64 [ %8, %5 ], [ 0, %1 ], !dbg !1703
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !1700, metadata !DIExpression()), !dbg !1702
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !1701, metadata !DIExpression()), !dbg !1702
  %11 = load i64, ptr @n_tabs_allocated, align 8, !dbg !1706, !tbaa !1363
  %12 = icmp eq i64 %2, %11, !dbg !1708
  br i1 %12, label %13, label %16, !dbg !1709

13:                                               ; preds = %9
  %14 = tail call nonnull ptr @xpalloc(ptr noundef %4, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #38, !dbg !1710
  store ptr %14, ptr @tab_list, align 8, !dbg !1711, !tbaa !1069
  %15 = load i64, ptr @first_free_tab, align 8, !dbg !1712, !tbaa !1363
  br label %16, !dbg !1713

16:                                               ; preds = %13, %9
  %17 = phi i64 [ %15, %13 ], [ %2, %9 ], !dbg !1712
  %18 = phi ptr [ %14, %13 ], [ %4, %9 ], !dbg !1704
  %19 = icmp sgt i64 %10, %0, !dbg !1714
  %20 = sub nsw i64 %0, %10, !dbg !1715
  %21 = select i1 %19, i64 0, i64 %20, !dbg !1715
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !1701, metadata !DIExpression()), !dbg !1702
  %22 = add nsw i64 %17, 1, !dbg !1712
  store i64 %22, ptr @first_free_tab, align 8, !dbg !1712, !tbaa !1363
  %23 = getelementptr inbounds i64, ptr %18, i64 %17, !dbg !1704
  store i64 %0, ptr %23, align 8, !dbg !1716, !tbaa !1363
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !1717, metadata !DIExpression()), !dbg !1720
  %24 = load i64, ptr @max_column_width, align 8, !dbg !1722, !tbaa !1363
  %25 = icmp slt i64 %24, %21, !dbg !1724
  br i1 %25, label %26, label %27, !dbg !1725

26:                                               ; preds = %16
  store i64 %21, ptr @max_column_width, align 8, !dbg !1726
  br label %27

27:                                               ; preds = %16, %26
  ret void, !dbg !1729
}

; Function Attrs: nounwind uwtable
define dso_local void @parse_tab_stops(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !1730 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1732, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1733, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i64 0, metadata !1734, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1735, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1736, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata ptr null, metadata !1737, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 1, metadata !1738, metadata !DIExpression()), !dbg !1751
  br label %2, !dbg !1752

2:                                                ; preds = %103, %1
  %3 = phi i64 [ 0, %1 ], [ %104, %103 ], !dbg !1753
  %4 = phi i1 [ false, %1 ], [ %105, %103 ]
  %5 = phi i1 [ false, %1 ], [ %106, %103 ]
  %6 = phi ptr [ null, %1 ], [ %107, %103 ], !dbg !1754
  %7 = phi i1 [ true, %1 ], [ %108, %103 ]
  %8 = phi i1 [ false, %1 ], [ %109, %103 ]
  %9 = phi ptr [ %0, %1 ], [ %111, %103 ]
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !1732, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1733, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1738, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !1737, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1736, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1735, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1734, metadata !DIExpression()), !dbg !1751
  %10 = load i8, ptr %9, align 1, !dbg !1755, !tbaa !1147
  switch i8 %10, label %11 [
    i8 0, label %112
    i8 44, label %19
  ], !dbg !1756

11:                                               ; preds = %2
  %12 = tail call ptr @__ctype_b_loc() #41, !dbg !1757
  %13 = load ptr, ptr %12, align 8, !dbg !1757, !tbaa !1069
  %14 = zext i8 %10 to i64
  %15 = getelementptr inbounds i16, ptr %13, i64 %14, !dbg !1757
  %16 = load i16, ptr %15, align 2, !dbg !1757, !tbaa !1179
  %17 = and i16 %16, 1, !dbg !1757
  %18 = icmp eq i16 %17, 0, !dbg !1757
  br i1 %18, label %68, label %19, !dbg !1758

19:                                               ; preds = %2, %11
  br i1 %8, label %20, label %103, !dbg !1759

20:                                               ; preds = %19
  br i1 %4, label %21, label %31, !dbg !1761

21:                                               ; preds = %20
  call void @llvm.dbg.value(metadata i64 %3, metadata !1764, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i8 1, metadata !1769, metadata !DIExpression()), !dbg !1770
  %22 = load i64, ptr @extend_size, align 8, !dbg !1775, !tbaa !1363
  %23 = icmp eq i64 %22, 0, !dbg !1775
  br i1 %23, label %26, label %24, !dbg !1777

24:                                               ; preds = %21
  %25 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12.7, i32 noundef 5) #38, !dbg !1778
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %25) #38, !dbg !1778
  call void @llvm.dbg.value(metadata i8 0, metadata !1769, metadata !DIExpression()), !dbg !1770
  br label %26, !dbg !1780

26:                                               ; preds = %24, %21
  call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !1770
  store i64 %3, ptr @extend_size, align 8, !dbg !1781, !tbaa !1363
  call void @llvm.dbg.value(metadata i64 %3, metadata !1717, metadata !DIExpression()), !dbg !1782
  %27 = load i64, ptr @max_column_width, align 8, !dbg !1784, !tbaa !1363
  %28 = icmp slt i64 %27, %3, !dbg !1785
  br i1 %28, label %29, label %30, !dbg !1786

29:                                               ; preds = %26
  store i64 %3, ptr @max_column_width, align 8, !dbg !1787
  br label %30

30:                                               ; preds = %26, %29
  br i1 %23, label %103, label %.loopexit, !dbg !1788

31:                                               ; preds = %20
  br i1 %5, label %32, label %42, !dbg !1789

32:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %3, metadata !1790, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i8 1, metadata !1793, metadata !DIExpression()), !dbg !1794
  %33 = load i64, ptr @increment_size, align 8, !dbg !1799, !tbaa !1363
  %34 = icmp eq i64 %33, 0, !dbg !1799
  br i1 %34, label %37, label %35, !dbg !1801

35:                                               ; preds = %32
  %36 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13.8, i32 noundef 5) #38, !dbg !1802
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %36) #38, !dbg !1802
  call void @llvm.dbg.value(metadata i8 0, metadata !1793, metadata !DIExpression()), !dbg !1794
  br label %37, !dbg !1804

37:                                               ; preds = %35, %32
  call void @llvm.dbg.value(metadata i8 poison, metadata !1793, metadata !DIExpression()), !dbg !1794
  store i64 %3, ptr @increment_size, align 8, !dbg !1805, !tbaa !1363
  call void @llvm.dbg.value(metadata i64 %3, metadata !1717, metadata !DIExpression()), !dbg !1806
  %38 = load i64, ptr @max_column_width, align 8, !dbg !1808, !tbaa !1363
  %39 = icmp slt i64 %38, %3, !dbg !1809
  br i1 %39, label %40, label %41, !dbg !1810

40:                                               ; preds = %37
  store i64 %3, ptr @max_column_width, align 8, !dbg !1811
  br label %41

41:                                               ; preds = %37, %40
  br i1 %34, label %103, label %.loopexit, !dbg !1812

42:                                               ; preds = %31
  call void @llvm.dbg.value(metadata i64 %3, metadata !1699, metadata !DIExpression()), !dbg !1813
  %43 = load i64, ptr @first_free_tab, align 8, !dbg !1815, !tbaa !1363
  %44 = icmp eq i64 %43, 0, !dbg !1815
  %45 = load ptr, ptr @tab_list, align 8, !dbg !1816, !tbaa !1069
  br i1 %44, label %50, label %46, !dbg !1815

46:                                               ; preds = %42
  %47 = getelementptr i64, ptr %45, i64 %43, !dbg !1817
  %48 = getelementptr i64, ptr %47, i64 -1, !dbg !1817
  %49 = load i64, ptr %48, align 8, !dbg !1817, !tbaa !1363
  br label %50, !dbg !1815

50:                                               ; preds = %46, %42
  %51 = phi i64 [ %49, %46 ], [ 0, %42 ], !dbg !1815
  call void @llvm.dbg.value(metadata i64 %51, metadata !1700, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i64 poison, metadata !1701, metadata !DIExpression()), !dbg !1813
  %52 = load i64, ptr @n_tabs_allocated, align 8, !dbg !1818, !tbaa !1363
  %53 = icmp eq i64 %43, %52, !dbg !1819
  br i1 %53, label %54, label %57, !dbg !1820

54:                                               ; preds = %50
  %55 = tail call nonnull ptr @xpalloc(ptr noundef %45, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #38, !dbg !1821
  store ptr %55, ptr @tab_list, align 8, !dbg !1822, !tbaa !1069
  %56 = load i64, ptr @first_free_tab, align 8, !dbg !1823, !tbaa !1363
  br label %57, !dbg !1824

57:                                               ; preds = %54, %50
  %58 = phi i64 [ %56, %54 ], [ %43, %50 ], !dbg !1823
  %59 = phi ptr [ %55, %54 ], [ %45, %50 ], !dbg !1816
  %60 = icmp sgt i64 %51, %3, !dbg !1825
  %61 = sub nsw i64 %3, %51, !dbg !1826
  %62 = select i1 %60, i64 0, i64 %61, !dbg !1826
  call void @llvm.dbg.value(metadata i64 %62, metadata !1701, metadata !DIExpression()), !dbg !1813
  %63 = add nsw i64 %58, 1, !dbg !1823
  store i64 %63, ptr @first_free_tab, align 8, !dbg !1823, !tbaa !1363
  %64 = getelementptr inbounds i64, ptr %59, i64 %58, !dbg !1816
  store i64 %3, ptr %64, align 8, !dbg !1827, !tbaa !1363
  call void @llvm.dbg.value(metadata i64 %62, metadata !1717, metadata !DIExpression()), !dbg !1828
  %65 = load i64, ptr @max_column_width, align 8, !dbg !1830, !tbaa !1363
  %66 = icmp slt i64 %65, %62, !dbg !1831
  br i1 %66, label %67, label %103, !dbg !1832

67:                                               ; preds = %57
  store i64 %62, ptr @max_column_width, align 8, !dbg !1833
  br label %103

68:                                               ; preds = %11
  switch i8 %10, label %77 [
    i8 47, label %69
    i8 43, label %73
  ], !dbg !1834

69:                                               ; preds = %68
  br i1 %8, label %70, label %103, !dbg !1835

70:                                               ; preds = %69
  %71 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #38, !dbg !1837
  %72 = tail call ptr @quote(ptr noundef nonnull %9) #38, !dbg !1837
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %71, ptr noundef %72) #38, !dbg !1837
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1738, metadata !DIExpression()), !dbg !1751
  br label %103, !dbg !1840

73:                                               ; preds = %68
  br i1 %8, label %74, label %103, !dbg !1841

74:                                               ; preds = %73
  %75 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1.20, i32 noundef 5) #38, !dbg !1843
  %76 = tail call ptr @quote(ptr noundef nonnull %9) #38, !dbg !1843
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %75, ptr noundef %76) #38, !dbg !1843
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1738, metadata !DIExpression()), !dbg !1751
  br label %103, !dbg !1846

77:                                               ; preds = %68
  %78 = zext i8 %10 to i32, !dbg !1847
  tail call void @llvm.dbg.value(metadata i32 %78, metadata !1848, metadata !DIExpression()), !dbg !1854
  %79 = add nsw i32 %78, -48, !dbg !1856
  %80 = icmp ult i32 %79, 10, !dbg !1856
  br i1 %80, label %81, label %100, !dbg !1857

81:                                               ; preds = %77
  %82 = select i1 %8, i64 %3, i64 0, !dbg !1858
  %83 = select i1 %8, ptr %6, ptr %9, !dbg !1858
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1733, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata ptr %83, metadata !1737, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i64 %82, metadata !1734, metadata !DIExpression()), !dbg !1751
  %84 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %82, i64 10), !dbg !1859
  %85 = extractvalue { i64, i1 } %84, 1, !dbg !1859
  %86 = extractvalue { i64, i1 } %84, 0, !dbg !1859
  tail call void @llvm.dbg.value(metadata i64 %86, metadata !1734, metadata !DIExpression()), !dbg !1751
  br i1 %85, label %92, label %87, !dbg !1859

87:                                               ; preds = %81
  %88 = add nsw i64 %14, -48, !dbg !1859
  %89 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %86, i64 %88), !dbg !1859
  %90 = extractvalue { i64, i1 } %89, 1, !dbg !1859
  %91 = extractvalue { i64, i1 } %89, 0, !dbg !1859
  tail call void @llvm.dbg.value(metadata i64 %91, metadata !1734, metadata !DIExpression()), !dbg !1751
  br i1 %90, label %92, label %103, !dbg !1860

92:                                               ; preds = %87, %81
  %93 = phi i64 [ %86, %81 ], [ %91, %87 ], !dbg !1859
  tail call void @llvm.dbg.value(metadata i64 %93, metadata !1734, metadata !DIExpression()), !dbg !1751
  %94 = tail call i64 @strspn(ptr noundef %83, ptr noundef nonnull @.str.2.21) #39, !dbg !1861
  tail call void @llvm.dbg.value(metadata i64 %94, metadata !1739, metadata !DIExpression()), !dbg !1862
  %95 = tail call noalias nonnull ptr @ximemdup0(ptr noundef %83, i64 noundef %94) #38, !dbg !1863
  tail call void @llvm.dbg.value(metadata ptr %95, metadata !1750, metadata !DIExpression()), !dbg !1862
  %96 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.3.22, i32 noundef 5) #38, !dbg !1864
  %97 = tail call ptr @quote(ptr noundef nonnull %95) #38, !dbg !1864
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %96, ptr noundef %97) #38, !dbg !1864
  tail call void @free(ptr noundef nonnull %95) #38, !dbg !1865
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1738, metadata !DIExpression()), !dbg !1751
  %98 = getelementptr inbounds i8, ptr %83, i64 %94, !dbg !1866
  %99 = getelementptr inbounds i8, ptr %98, i64 -1, !dbg !1867
  tail call void @llvm.dbg.value(metadata ptr %99, metadata !1732, metadata !DIExpression()), !dbg !1751
  br label %103, !dbg !1868

100:                                              ; preds = %77
  %.lcssa2 = phi ptr [ %9, %77 ]
  %101 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4.23, i32 noundef 5) #38, !dbg !1869
  %102 = tail call ptr @quote(ptr noundef nonnull %.lcssa2) #38, !dbg !1869
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %101, ptr noundef %102) #38, !dbg !1869
  tail call void @llvm.dbg.value(metadata i8 0, metadata !1738, metadata !DIExpression()), !dbg !1751
  br label %164, !dbg !1871

103:                                              ; preds = %67, %57, %73, %74, %69, %70, %19, %41, %30, %87, %92
  %104 = phi i64 [ %93, %92 ], [ %91, %87 ], [ %3, %30 ], [ %3, %41 ], [ %3, %19 ], [ %3, %70 ], [ %3, %69 ], [ %3, %74 ], [ %3, %73 ], [ %3, %57 ], [ %3, %67 ], !dbg !1751
  %105 = phi i1 [ %4, %92 ], [ %4, %87 ], [ true, %30 ], [ false, %41 ], [ %4, %19 ], [ true, %70 ], [ true, %69 ], [ false, %74 ], [ false, %73 ], [ false, %57 ], [ false, %67 ]
  %106 = phi i1 [ %5, %92 ], [ %5, %87 ], [ %5, %30 ], [ true, %41 ], [ %5, %19 ], [ false, %70 ], [ false, %69 ], [ true, %74 ], [ true, %73 ], [ false, %57 ], [ false, %67 ]
  %107 = phi ptr [ %83, %92 ], [ %83, %87 ], [ %6, %30 ], [ %6, %41 ], [ %6, %19 ], [ %6, %70 ], [ %6, %69 ], [ %6, %74 ], [ %6, %73 ], [ %6, %57 ], [ %6, %67 ], !dbg !1754
  %108 = phi i1 [ false, %92 ], [ %7, %87 ], [ %7, %30 ], [ %7, %41 ], [ %7, %19 ], [ false, %70 ], [ %7, %69 ], [ false, %74 ], [ %7, %73 ], [ %7, %57 ], [ %7, %67 ]
  %109 = phi i1 [ true, %92 ], [ true, %87 ], [ false, %30 ], [ false, %41 ], [ false, %19 ], [ true, %70 ], [ false, %69 ], [ true, %74 ], [ false, %73 ], [ false, %57 ], [ false, %67 ]
  %110 = phi ptr [ %99, %92 ], [ %9, %87 ], [ %9, %30 ], [ %9, %41 ], [ %9, %19 ], [ %9, %70 ], [ %9, %69 ], [ %9, %74 ], [ %9, %73 ], [ %9, %57 ], [ %9, %67 ]
  tail call void @llvm.dbg.value(metadata ptr %110, metadata !1732, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1733, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1738, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata ptr %107, metadata !1737, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1736, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1735, metadata !DIExpression()), !dbg !1751
  tail call void @llvm.dbg.value(metadata i64 %104, metadata !1734, metadata !DIExpression()), !dbg !1751
  %111 = getelementptr inbounds i8, ptr %110, i64 1, !dbg !1872
  tail call void @llvm.dbg.value(metadata ptr %111, metadata !1732, metadata !DIExpression()), !dbg !1751
  br label %2, !dbg !1873, !llvm.loop !1874

112:                                              ; preds = %2
  %.lcssa15 = phi i64 [ %3, %2 ], !dbg !1753
  %.lcssa12 = phi i1 [ %4, %2 ]
  %.lcssa9 = phi i1 [ %5, %2 ]
  %.lcssa6 = phi i1 [ %7, %2 ]
  %.lcssa3 = phi i1 [ %8, %2 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1738, metadata !DIExpression()), !dbg !1751
  %113 = and i1 %.lcssa6, %.lcssa3, !dbg !1876
  br i1 %113, label %114, label %163, !dbg !1876

114:                                              ; preds = %112
  br i1 %.lcssa12, label %115, label %126, !dbg !1878

115:                                              ; preds = %114
  call void @llvm.dbg.value(metadata i64 %.lcssa15, metadata !1764, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 1, metadata !1769, metadata !DIExpression()), !dbg !1880
  %116 = load i64, ptr @extend_size, align 8, !dbg !1883, !tbaa !1363
  %117 = icmp eq i64 %116, 0, !dbg !1883
  br i1 %117, label %118, label %121, !dbg !1884

118:                                              ; preds = %115
  call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !1880
  store i64 %.lcssa15, ptr @extend_size, align 8, !dbg !1885, !tbaa !1363
  call void @llvm.dbg.value(metadata i64 %.lcssa15, metadata !1717, metadata !DIExpression()), !dbg !1886
  %119 = load i64, ptr @max_column_width, align 8, !dbg !1888, !tbaa !1363
  %120 = icmp slt i64 %119, %.lcssa15, !dbg !1889
  br i1 %120, label %165, label %167, !dbg !1890

121:                                              ; preds = %115
  %122 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.12.7, i32 noundef 5) #38, !dbg !1891
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %122) #38, !dbg !1891
  call void @llvm.dbg.value(metadata i8 poison, metadata !1769, metadata !DIExpression()), !dbg !1880
  store i64 %.lcssa15, ptr @extend_size, align 8, !dbg !1885, !tbaa !1363
  call void @llvm.dbg.value(metadata i64 %.lcssa15, metadata !1717, metadata !DIExpression()), !dbg !1886
  %123 = load i64, ptr @max_column_width, align 8, !dbg !1888, !tbaa !1363
  %124 = icmp slt i64 %123, %.lcssa15, !dbg !1889
  br i1 %124, label %125, label %164, !dbg !1890

125:                                              ; preds = %121
  store i64 %.lcssa15, ptr @max_column_width, align 8, !dbg !1892
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1738, metadata !DIExpression()), !dbg !1751
  br label %164, !dbg !1893

126:                                              ; preds = %114
  br i1 %.lcssa9, label %127, label %138, !dbg !1894

127:                                              ; preds = %126
  call void @llvm.dbg.value(metadata i64 %.lcssa15, metadata !1790, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 1, metadata !1793, metadata !DIExpression()), !dbg !1895
  %128 = load i64, ptr @increment_size, align 8, !dbg !1898, !tbaa !1363
  %129 = icmp eq i64 %128, 0, !dbg !1898
  br i1 %129, label %130, label %133, !dbg !1899

130:                                              ; preds = %127
  call void @llvm.dbg.value(metadata i8 poison, metadata !1793, metadata !DIExpression()), !dbg !1895
  store i64 %.lcssa15, ptr @increment_size, align 8, !dbg !1900, !tbaa !1363
  call void @llvm.dbg.value(metadata i64 %.lcssa15, metadata !1717, metadata !DIExpression()), !dbg !1901
  %131 = load i64, ptr @max_column_width, align 8, !dbg !1903, !tbaa !1363
  %132 = icmp slt i64 %131, %.lcssa15, !dbg !1904
  br i1 %132, label %165, label %167, !dbg !1905

133:                                              ; preds = %127
  %134 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13.8, i32 noundef 5) #38, !dbg !1906
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef 0, ptr noundef %134) #38, !dbg !1906
  call void @llvm.dbg.value(metadata i8 poison, metadata !1793, metadata !DIExpression()), !dbg !1895
  store i64 %.lcssa15, ptr @increment_size, align 8, !dbg !1900, !tbaa !1363
  call void @llvm.dbg.value(metadata i64 %.lcssa15, metadata !1717, metadata !DIExpression()), !dbg !1901
  %135 = load i64, ptr @max_column_width, align 8, !dbg !1903, !tbaa !1363
  %136 = icmp slt i64 %135, %.lcssa15, !dbg !1904
  br i1 %136, label %137, label %164, !dbg !1905

137:                                              ; preds = %133
  store i64 %.lcssa15, ptr @max_column_width, align 8, !dbg !1907
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1738, metadata !DIExpression()), !dbg !1751
  br label %164, !dbg !1893

138:                                              ; preds = %126
  call void @llvm.dbg.value(metadata i64 %.lcssa15, metadata !1699, metadata !DIExpression()), !dbg !1908
  %139 = load i64, ptr @first_free_tab, align 8, !dbg !1910, !tbaa !1363
  %140 = icmp eq i64 %139, 0, !dbg !1910
  %141 = load ptr, ptr @tab_list, align 8, !dbg !1911, !tbaa !1069
  br i1 %140, label %146, label %142, !dbg !1910

142:                                              ; preds = %138
  %143 = getelementptr i64, ptr %141, i64 %139, !dbg !1912
  %144 = getelementptr i64, ptr %143, i64 -1, !dbg !1912
  %145 = load i64, ptr %144, align 8, !dbg !1912, !tbaa !1363
  br label %146, !dbg !1910

146:                                              ; preds = %142, %138
  %147 = phi i64 [ %145, %142 ], [ 0, %138 ], !dbg !1910
  call void @llvm.dbg.value(metadata i64 %147, metadata !1700, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i64 poison, metadata !1701, metadata !DIExpression()), !dbg !1908
  %148 = load i64, ptr @n_tabs_allocated, align 8, !dbg !1913, !tbaa !1363
  %149 = icmp eq i64 %139, %148, !dbg !1914
  br i1 %149, label %150, label %153, !dbg !1915

150:                                              ; preds = %146
  %151 = tail call nonnull ptr @xpalloc(ptr noundef %141, ptr noundef nonnull @n_tabs_allocated, i64 noundef 1, i64 noundef -1, i64 noundef 8) #38, !dbg !1916
  store ptr %151, ptr @tab_list, align 8, !dbg !1917, !tbaa !1069
  %152 = load i64, ptr @first_free_tab, align 8, !dbg !1918, !tbaa !1363
  br label %153, !dbg !1919

153:                                              ; preds = %150, %146
  %154 = phi i64 [ %152, %150 ], [ %139, %146 ], !dbg !1918
  %155 = phi ptr [ %151, %150 ], [ %141, %146 ], !dbg !1911
  %156 = icmp sgt i64 %147, %.lcssa15, !dbg !1920
  %157 = sub nsw i64 %.lcssa15, %147, !dbg !1921
  %158 = select i1 %156, i64 0, i64 %157, !dbg !1921
  call void @llvm.dbg.value(metadata i64 %158, metadata !1701, metadata !DIExpression()), !dbg !1908
  %159 = add nsw i64 %154, 1, !dbg !1918
  store i64 %159, ptr @first_free_tab, align 8, !dbg !1918, !tbaa !1363
  %160 = getelementptr inbounds i64, ptr %155, i64 %154, !dbg !1911
  store i64 %.lcssa15, ptr %160, align 8, !dbg !1922, !tbaa !1363
  call void @llvm.dbg.value(metadata i64 %158, metadata !1717, metadata !DIExpression()), !dbg !1923
  %161 = load i64, ptr @max_column_width, align 8, !dbg !1925, !tbaa !1363
  %162 = icmp slt i64 %161, %158, !dbg !1926
  br i1 %162, label %165, label %163, !dbg !1927

163:                                              ; preds = %153, %112
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !1738, metadata !DIExpression()), !dbg !1751
  br i1 %.lcssa6, label %167, label %164, !dbg !1893

.loopexit:                                        ; preds = %41, %30
  br label %164, !dbg !1928

164:                                              ; preds = %.loopexit, %133, %121, %137, %125, %100, %163
  tail call void @exit(i32 noundef 1) #40, !dbg !1928
  unreachable, !dbg !1928

165:                                              ; preds = %153, %130, %118
  %166 = phi i64 [ %.lcssa15, %118 ], [ %.lcssa15, %130 ], [ %158, %153 ]
  store i64 %166, ptr @max_column_width, align 8, !dbg !1930
  br label %167, !dbg !1931

167:                                              ; preds = %165, %118, %130, %163
  ret void, !dbg !1931
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1932 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @finalize_tab_stops() local_unnamed_addr #10 !dbg !1935 {
  %1 = load ptr, ptr @tab_list, align 8, !dbg !1936, !tbaa !1069
  %2 = load i64, ptr @first_free_tab, align 8, !dbg !1937, !tbaa !1363
  call void @llvm.dbg.value(metadata ptr %1, metadata !1938, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %2, metadata !1945, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 0, metadata !1946, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 0, metadata !1947, metadata !DIExpression()), !dbg !1951
  %3 = icmp sgt i64 %2, 0, !dbg !1952
  br i1 %3, label %.preheader, label %7, !dbg !1954

.preheader:                                       ; preds = %0
  br label %13, !dbg !1954

4:                                                ; preds = %21
  %5 = add nuw nsw i64 %14, 1, !dbg !1955
  call void @llvm.dbg.value(metadata i64 %5, metadata !1947, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i64 %5, metadata !1947, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i64 %17, metadata !1946, metadata !DIExpression()), !dbg !1949
  %6 = icmp eq i64 %5, %2, !dbg !1952
  br i1 %6, label %.loopexit, label %13, !dbg !1954, !llvm.loop !1956

.loopexit:                                        ; preds = %4
  br label %7, !dbg !1958

7:                                                ; preds = %.loopexit, %0
  %8 = load i64, ptr @increment_size, align 8, !dbg !1958
  %9 = icmp ne i64 %8, 0, !dbg !1958
  %10 = load i64, ptr @extend_size, align 8
  %11 = icmp ne i64 %10, 0
  %12 = select i1 %9, i1 %11, i1 false, !dbg !1960
  br i1 %12, label %25, label %27, !dbg !1960

13:                                               ; preds = %.preheader, %4
  %14 = phi i64 [ %5, %4 ], [ 0, %.preheader ]
  %15 = phi i64 [ %17, %4 ], [ 0, %.preheader ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !1947, metadata !DIExpression()), !dbg !1951
  call void @llvm.dbg.value(metadata i64 %15, metadata !1946, metadata !DIExpression()), !dbg !1949
  %16 = getelementptr inbounds i64, ptr %1, i64 %14, !dbg !1961
  %17 = load i64, ptr %16, align 8, !dbg !1961, !tbaa !1363
  %18 = icmp eq i64 %17, 0, !dbg !1964
  br i1 %18, label %19, label %21, !dbg !1965

19:                                               ; preds = %13
  %20 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14.26, i32 noundef 5) #38, !dbg !1966
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %20) #38, !dbg !1966
  unreachable, !dbg !1966

21:                                               ; preds = %13
  %22 = icmp sgt i64 %17, %15, !dbg !1967
  call void @llvm.dbg.value(metadata i64 %17, metadata !1946, metadata !DIExpression()), !dbg !1949
  call void @llvm.dbg.value(metadata i64 %14, metadata !1947, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1951
  br i1 %22, label %4, label %23, !dbg !1969

23:                                               ; preds = %21
  %24 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15.27, i32 noundef 5) #38, !dbg !1970
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %24) #38, !dbg !1970
  unreachable, !dbg !1970

25:                                               ; preds = %7
  %26 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.16.28, i32 noundef 5) #38, !dbg !1971
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %26) #38, !dbg !1971
  unreachable, !dbg !1971

27:                                               ; preds = %7
  %28 = icmp eq i64 %2, 0, !dbg !1972
  br i1 %28, label %29, label %34, !dbg !1974

29:                                               ; preds = %27
  %30 = icmp eq i64 %10, 0, !dbg !1975
  %31 = icmp eq i64 %8, 0, !dbg !1975
  %32 = select i1 %31, i64 8, i64 %8, !dbg !1975
  %33 = select i1 %30, i64 %32, i64 %10, !dbg !1975
  store i64 %33, ptr @max_column_width, align 8, !dbg !1976, !tbaa !1363
  br label %41, !dbg !1977

34:                                               ; preds = %27
  %35 = icmp ne i64 %2, 1, !dbg !1978
  %36 = or i64 %10, %8, !dbg !1980
  %37 = icmp ne i64 %36, 0, !dbg !1980
  %38 = select i1 %35, i1 true, i1 %37, !dbg !1980
  br i1 %38, label %41, label %39, !dbg !1980

39:                                               ; preds = %34
  %40 = load i64, ptr %1, align 8, !dbg !1981, !tbaa !1363
  br label %41, !dbg !1982

41:                                               ; preds = %34, %39, %29
  %42 = phi i64 [ %40, %39 ], [ %33, %29 ], [ 0, %34 ]
  store i64 %42, ptr @tab_size, align 8, !dbg !1983, !tbaa !1363
  ret void, !dbg !1984
}

; Function Attrs: nounwind uwtable
define dso_local i64 @get_next_tab_column(i64 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef nonnull writeonly %2) local_unnamed_addr #10 !dbg !1985 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !1991, metadata !DIExpression()), !dbg !2006
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1992, metadata !DIExpression()), !dbg !2006
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !1993, metadata !DIExpression()), !dbg !2006
  store i8 0, ptr %2, align 1, !dbg !2007, !tbaa !1311
  %4 = load i64, ptr @tab_size, align 8, !dbg !2008, !tbaa !1363
  %5 = icmp eq i64 %4, 0, !dbg !2008
  br i1 %5, label %6, label %12, !dbg !2009

6:                                                ; preds = %3
  %7 = load i64, ptr @first_free_tab, align 8, !tbaa !1363
  %8 = load i64, ptr %1, align 8, !tbaa !1363
  %9 = icmp slt i64 %8, %7, !dbg !2010
  br i1 %9, label %10, label %23, !dbg !2011

10:                                               ; preds = %6
  %11 = load ptr, ptr @tab_list, align 8, !tbaa !1069
  br label %15, !dbg !2011

12:                                               ; preds = %3
  %13 = srem i64 %0, %4, !dbg !2012
  %14 = sub nsw i64 %4, %13, !dbg !2013
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !1994, metadata !DIExpression()), !dbg !2006
  br label %41, !dbg !2014

15:                                               ; preds = %10, %20
  %16 = phi i64 [ %8, %10 ], [ %21, %20 ]
  %17 = getelementptr inbounds i64, ptr %11, i64 %16, !dbg !2015
  %18 = load i64, ptr %17, align 8, !dbg !2015, !tbaa !1363
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1995, metadata !DIExpression()), !dbg !2016
  %19 = icmp sgt i64 %18, %0, !dbg !2017
  br i1 %19, label %.loopexit, label %20

20:                                               ; preds = %15
  %21 = add i64 %16, 1, !dbg !2019
  store i64 %21, ptr %1, align 8, !dbg !2019, !tbaa !1363
  %22 = icmp eq i64 %21, %7, !dbg !2010
  br i1 %22, label %.loopexit1, label %15, !dbg !2011, !llvm.loop !2020

.loopexit1:                                       ; preds = %20
  br label %23, !dbg !2022

23:                                               ; preds = %.loopexit1, %6
  %24 = load i64, ptr @extend_size, align 8, !dbg !2022, !tbaa !1363
  %25 = icmp eq i64 %24, 0, !dbg !2022
  br i1 %25, label %29, label %26, !dbg !2023

26:                                               ; preds = %23
  %27 = srem i64 %0, %24, !dbg !2024
  %28 = sub nsw i64 %24, %27, !dbg !2025
  tail call void @llvm.dbg.value(metadata i64 %28, metadata !1994, metadata !DIExpression()), !dbg !2006
  br label %41, !dbg !2026

29:                                               ; preds = %23
  %30 = load i64, ptr @increment_size, align 8, !dbg !2027, !tbaa !1363
  %31 = icmp eq i64 %30, 0, !dbg !2027
  br i1 %31, label %40, label %32, !dbg !2028

32:                                               ; preds = %29
  %33 = load ptr, ptr @tab_list, align 8, !dbg !2029, !tbaa !1069
  %34 = getelementptr i64, ptr %33, i64 %7, !dbg !2029
  %35 = getelementptr i64, ptr %34, i64 -1, !dbg !2029
  %36 = load i64, ptr %35, align 8, !dbg !2029, !tbaa !1363
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !2001, metadata !DIExpression()), !dbg !2030
  %37 = sub nsw i64 %0, %36, !dbg !2031
  %38 = srem i64 %37, %30, !dbg !2032
  %39 = sub nsw i64 %30, %38, !dbg !2033
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1994, metadata !DIExpression()), !dbg !2006
  br label %41, !dbg !2034

40:                                               ; preds = %29
  store i8 1, ptr %2, align 1, !dbg !2035, !tbaa !1311
  tail call void @llvm.dbg.value(metadata i64 1, metadata !1994, metadata !DIExpression()), !dbg !2006
  br label %41

41:                                               ; preds = %26, %40, %32, %12
  %42 = phi i64 [ %14, %12 ], [ %28, %26 ], [ %39, %32 ], [ 1, %40 ], !dbg !2037
  tail call void @llvm.dbg.value(metadata i64 %42, metadata !1994, metadata !DIExpression()), !dbg !2006
  %43 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %0, i64 %42), !dbg !2038
  %44 = extractvalue { i64, i1 } %43, 1, !dbg !2038
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !2005, metadata !DIExpression()), !dbg !2006
  br i1 %44, label %45, label %47, !dbg !2040

45:                                               ; preds = %41
  %46 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5.31, i32 noundef 5) #38, !dbg !2041
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef 0, ptr noundef %46) #38, !dbg !2041
  unreachable, !dbg !2041

47:                                               ; preds = %41
  %48 = extractvalue { i64, i1 } %43, 0, !dbg !2038
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !2005, metadata !DIExpression()), !dbg !2006
  br label %49

.loopexit:                                        ; preds = %15
  %.lcssa = phi i64 [ %18, %15 ], !dbg !2015
  br label %49, !dbg !2042

49:                                               ; preds = %.loopexit, %47
  %50 = phi i64 [ %48, %47 ], [ %.lcssa, %.loopexit ], !dbg !2006
  ret i64 %50, !dbg !2042
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @set_file_list(ptr noundef %0) local_unnamed_addr #14 !dbg !2043 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2047, metadata !DIExpression()), !dbg !2048
  store i1 false, ptr @have_read_stdin, align 1, !dbg !2049
  %2 = icmp eq ptr %0, null, !dbg !2050
  %3 = select i1 %2, ptr @stdin_argv, ptr %0
  store ptr %3, ptr @file_list, align 8, !dbg !2052, !tbaa !1069
  ret void, !dbg !2053
}

; Function Attrs: nounwind uwtable
define dso_local ptr @next_file(ptr noundef %0) local_unnamed_addr #10 !dbg !465 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !503, metadata !DIExpression()), !dbg !2054
  %2 = icmp eq ptr %0, null, !dbg !2055
  br i1 %2, label %25, label %3, !dbg !2056

3:                                                ; preds = %1
  %4 = tail call ptr @__errno_location() #41, !dbg !2057
  %5 = load i32, ptr %4, align 4, !dbg !2057, !tbaa !1138
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !505, metadata !DIExpression()), !dbg !2058
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2059, metadata !DIExpression()), !dbg !2064
  %6 = load i32, ptr %0, align 8, !dbg !2067, !tbaa !1391
  %7 = and i32 %6, 32, !dbg !2068
  %8 = icmp eq i32 %7, 0, !dbg !2068
  %9 = select i1 %8, i32 0, i32 %5, !dbg !2069
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !505, metadata !DIExpression()), !dbg !2058
  %10 = load ptr, ptr @next_file.prev_file, align 8, !dbg !2070, !tbaa !1069
  call void @llvm.dbg.value(metadata ptr %10, metadata !2072, metadata !DIExpression()), !dbg !2076
  call void @llvm.dbg.value(metadata ptr @.str.6.34, metadata !2075, metadata !DIExpression()), !dbg !2076
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(2) @.str.6.34) #39, !dbg !2078
  %12 = icmp eq i32 %11, 0, !dbg !2079
  br i1 %12, label %13, label %14, !dbg !2080

13:                                               ; preds = %3
  tail call void @clearerr_unlocked(ptr noundef nonnull %0) #38, !dbg !2081
  br label %19, !dbg !2081

14:                                               ; preds = %3
  %15 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !2082
  %16 = icmp eq i32 %15, 0, !dbg !2084
  br i1 %16, label %19, label %17, !dbg !2085

17:                                               ; preds = %14
  %18 = load i32, ptr %4, align 4, !dbg !2086, !tbaa !1138
  tail call void @llvm.dbg.value(metadata i32 %18, metadata !505, metadata !DIExpression()), !dbg !2058
  br label %19, !dbg !2087

19:                                               ; preds = %14, %17, %13
  %20 = phi i32 [ %9, %13 ], [ %18, %17 ], [ %9, %14 ], !dbg !2058
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !505, metadata !DIExpression()), !dbg !2058
  %21 = icmp eq i32 %20, 0, !dbg !2088
  br i1 %21, label %25, label %22, !dbg !2090

22:                                               ; preds = %19
  %23 = load ptr, ptr @next_file.prev_file, align 8, !dbg !2091, !tbaa !1069
  %24 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef %23) #38, !dbg !2091
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %20, ptr noundef nonnull @.str.7.37, ptr noundef %24) #38, !dbg !2091
  store i32 1, ptr @exit_status, align 4, !dbg !2093, !tbaa !1138
  br label %25, !dbg !2094

25:                                               ; preds = %19, %22, %1
  %26 = load ptr, ptr @file_list, align 8, !dbg !2095, !tbaa !1069
  %27 = getelementptr inbounds ptr, ptr %26, i64 1, !dbg !2095
  store ptr %27, ptr @file_list, align 8, !dbg !2095, !tbaa !1069
  %28 = load ptr, ptr %26, align 8, !dbg !2096, !tbaa !1069
  tail call void @llvm.dbg.value(metadata ptr %28, metadata !504, metadata !DIExpression()), !dbg !2054
  %29 = icmp eq ptr %28, null, !dbg !2097
  br i1 %29, label %50, label %.preheader, !dbg !2098

.preheader:                                       ; preds = %25
  br label %30, !dbg !2098

30:                                               ; preds = %.preheader, %42
  %31 = phi ptr [ %48, %42 ], [ %28, %.preheader ]
  call void @llvm.dbg.value(metadata ptr %31, metadata !2072, metadata !DIExpression()), !dbg !2099
  call void @llvm.dbg.value(metadata ptr @.str.6.34, metadata !2075, metadata !DIExpression()), !dbg !2099
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(2) @.str.6.34) #39, !dbg !2103
  %33 = icmp eq i32 %32, 0, !dbg !2104
  br i1 %33, label %34, label %36, !dbg !2105

34:                                               ; preds = %30
  store i1 true, ptr @have_read_stdin, align 1, !dbg !2106
  %35 = load ptr, ptr @stdin, align 8, !dbg !2108, !tbaa !1069
  tail call void @llvm.dbg.value(metadata ptr %35, metadata !503, metadata !DIExpression()), !dbg !2054
  br label %38, !dbg !2109

36:                                               ; preds = %30
  %37 = tail call noalias ptr @rpl_fopen(ptr noundef nonnull %31, ptr noundef nonnull @.str.8.38) #38, !dbg !2110
  tail call void @llvm.dbg.value(metadata ptr %37, metadata !503, metadata !DIExpression()), !dbg !2054
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi ptr [ %35, %34 ], [ %37, %36 ], !dbg !2111
  tail call void @llvm.dbg.value(metadata ptr %39, metadata !503, metadata !DIExpression()), !dbg !2054
  %40 = icmp eq ptr %39, null, !dbg !2112
  br i1 %40, label %42, label %41, !dbg !2114

41:                                               ; preds = %38
  %.lcssa2 = phi ptr [ %39, %38 ], !dbg !2111
  %.lcssa = phi ptr [ %31, %38 ]
  store ptr %.lcssa, ptr @next_file.prev_file, align 8, !dbg !2115, !tbaa !1069
  tail call void @fadvise(ptr noundef nonnull %.lcssa2, i32 noundef 2) #38, !dbg !2117
  br label %50, !dbg !2118

42:                                               ; preds = %38
  %43 = tail call ptr @__errno_location() #41, !dbg !2119
  %44 = load i32, ptr %43, align 4, !dbg !2119, !tbaa !1138
  %45 = tail call ptr @quotearg_n_style_colon(i32 noundef 0, i32 noundef 3, ptr noundef nonnull %31) #38, !dbg !2119
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %44, ptr noundef nonnull @.str.7.37, ptr noundef %45) #38, !dbg !2119
  store i32 1, ptr @exit_status, align 4, !dbg !2120, !tbaa !1138
  %46 = load ptr, ptr @file_list, align 8, !dbg !2095, !tbaa !1069
  %47 = getelementptr inbounds ptr, ptr %46, i64 1, !dbg !2095
  store ptr %47, ptr @file_list, align 8, !dbg !2095, !tbaa !1069
  %48 = load ptr, ptr %46, align 8, !dbg !2096, !tbaa !1069
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !504, metadata !DIExpression()), !dbg !2054
  %49 = icmp eq ptr %48, null, !dbg !2097
  br i1 %49, label %.loopexit, label %30, !dbg !2098, !llvm.loop !2121

.loopexit:                                        ; preds = %42
  br label %50, !dbg !2123

50:                                               ; preds = %.loopexit, %25, %41
  %51 = phi ptr [ %.lcssa2, %41 ], [ null, %25 ], [ null, %.loopexit ], !dbg !2054
  ret ptr %51, !dbg !2123
}

; Function Attrs: nounwind uwtable
define dso_local void @cleanup_file_list_stdin() local_unnamed_addr #10 !dbg !2124 {
  %1 = load i1, ptr @have_read_stdin, align 1, !dbg !2125
  br i1 %1, label %2, label %9, !dbg !2127

2:                                                ; preds = %0
  %3 = load ptr, ptr @stdin, align 8, !dbg !2128, !tbaa !1069
  %4 = tail call i32 @rpl_fclose(ptr noundef %3) #38, !dbg !2129
  %5 = icmp eq i32 %4, 0, !dbg !2130
  br i1 %5, label %9, label %6, !dbg !2131

6:                                                ; preds = %2
  %7 = tail call ptr @__errno_location() #41, !dbg !2132
  %8 = load i32, ptr %7, align 4, !dbg !2132, !tbaa !1138
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 1, i32 noundef %8, ptr noundef nonnull @.str.6.34) #38, !dbg !2132
  unreachable, !dbg !2132

9:                                                ; preds = %2, %0
  ret void, !dbg !2133
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_tab_list_info(ptr noundef %0) local_unnamed_addr #10 !dbg !2134 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2136, metadata !DIExpression()), !dbg !2137
  %2 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9.43, i32 noundef 5) #38, !dbg !2138
  call void @llvm.dbg.value(metadata ptr %0, metadata !573, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata ptr %2, metadata !574, metadata !DIExpression()), !dbg !2139
  %3 = load i32, ptr @oputs_.help_no_sgr.44, align 4, !dbg !2141, !tbaa !1138
  %4 = icmp eq i32 %3, -1, !dbg !2142
  br i1 %4, label %5, label %17, !dbg !2143

5:                                                ; preds = %1
  %6 = tail call ptr @getenv(ptr noundef nonnull @.str.17.45) #38, !dbg !2144
  call void @llvm.dbg.value(metadata ptr %6, metadata !575, metadata !DIExpression()), !dbg !2145
  %7 = icmp eq ptr %6, null, !dbg !2146
  br i1 %7, label %15, label %8, !dbg !2147

8:                                                ; preds = %5
  %9 = load i8, ptr %6, align 1, !dbg !2148, !tbaa !1147
  %10 = icmp eq i8 %9, 0, !dbg !2148
  br i1 %10, label %15, label %11, !dbg !2149

11:                                               ; preds = %8
  call void @llvm.dbg.value(metadata ptr %6, metadata !2072, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata ptr @.str.18.46, metadata !2075, metadata !DIExpression()), !dbg !2150
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(5) @.str.18.46) #39, !dbg !2152
  %13 = icmp eq i32 %12, 0, !dbg !2153
  %14 = zext i1 %13 to i32, !dbg !2149
  br label %15, !dbg !2149

15:                                               ; preds = %11, %8, %5
  %16 = phi i32 [ 1, %8 ], [ 1, %5 ], [ %14, %11 ]
  store i32 %16, ptr @oputs_.help_no_sgr.44, align 4, !dbg !2154, !tbaa !1138
  br label %17, !dbg !2155

17:                                               ; preds = %15, %1
  %18 = phi i32 [ %16, %15 ], [ %3, %1 ], !dbg !2156
  %19 = icmp eq i32 %18, 0, !dbg !2156
  br i1 %19, label %23, label %20, !dbg !2158

20:                                               ; preds = %17
  %21 = load ptr, ptr @stdout, align 8, !dbg !2159, !tbaa !1069
  %22 = tail call i32 @fputs_unlocked(ptr noundef %2, ptr noundef %21), !dbg !2159
  br label %155, !dbg !2161

23:                                               ; preds = %17
  call void @llvm.dbg.value(metadata i8 1, metadata !578, metadata !DIExpression()), !dbg !2139
  %24 = tail call i64 @strspn(ptr noundef %2, ptr noundef nonnull @.str.19.47) #39, !dbg !2162
  %25 = getelementptr inbounds i8, ptr %2, i64 %24, !dbg !2163
  call void @llvm.dbg.value(metadata ptr %25, metadata !579, metadata !DIExpression()), !dbg !2139
  %26 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef 45) #39, !dbg !2164
  call void @llvm.dbg.value(metadata ptr %26, metadata !580, metadata !DIExpression()), !dbg !2139
  %27 = icmp eq ptr %26, null, !dbg !2165
  br i1 %27, label %55, label %28, !dbg !2166

28:                                               ; preds = %23
  %29 = icmp eq ptr %26, %25, !dbg !2167
  br i1 %29, label %55, label %30, !dbg !2168

30:                                               ; preds = %28
  call void @llvm.dbg.value(metadata ptr %25, metadata !581, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 0, metadata !585, metadata !DIExpression()), !dbg !2169
  %31 = icmp ult ptr %25, %26, !dbg !2170
  br i1 %31, label %32, label %52, !dbg !2171

32:                                               ; preds = %30
  %33 = tail call ptr @__ctype_b_loc() #41, !dbg !2139
  %34 = load ptr, ptr %33, align 8, !tbaa !1069
  br label %35, !dbg !2171

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %25, %32 ], [ %38, %35 ]
  %37 = phi i64 [ 0, %32 ], [ %46, %35 ]
  call void @llvm.dbg.value(metadata ptr %36, metadata !581, metadata !DIExpression()), !dbg !2169
  call void @llvm.dbg.value(metadata i64 %37, metadata !585, metadata !DIExpression()), !dbg !2169
  %38 = getelementptr inbounds i8, ptr %36, i64 1, !dbg !2172
  call void @llvm.dbg.value(metadata ptr %38, metadata !581, metadata !DIExpression()), !dbg !2169
  %39 = load i8, ptr %36, align 1, !dbg !2172, !tbaa !1147
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i16, ptr %34, i64 %40, !dbg !2172
  %42 = load i16, ptr %41, align 2, !dbg !2172, !tbaa !1179
  %43 = lshr i16 %42, 13, !dbg !2173
  %44 = and i16 %43, 1, !dbg !2173
  %45 = zext nneg i16 %44 to i64
  %46 = add nuw nsw i64 %37, %45, !dbg !2174
  call void @llvm.dbg.value(metadata i64 %46, metadata !585, metadata !DIExpression()), !dbg !2169
  %47 = icmp ult ptr %38, %26, !dbg !2170
  %48 = icmp ult i64 %46, 2, !dbg !2175
  %49 = select i1 %47, i1 %48, i1 false, !dbg !2175
  br i1 %49, label %35, label %50, !dbg !2171, !llvm.loop !2176

50:                                               ; preds = %35
  %.lcssa1 = phi i64 [ %46, %35 ], !dbg !2174
  %51 = icmp ne i64 %.lcssa1, 2, !dbg !2177
  br label %52, !dbg !2177

52:                                               ; preds = %50, %30
  %53 = phi i1 [ true, %30 ], [ %51, %50 ], !dbg !2169
  %54 = select i1 %53, ptr %26, ptr %25, !dbg !2179
  call void @llvm.dbg.value(metadata i8 poison, metadata !578, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata ptr %54, metadata !580, metadata !DIExpression()), !dbg !2139
  br label %55, !dbg !2180

55:                                               ; preds = %52, %28, %23
  %56 = phi ptr [ %54, %52 ], [ %25, %28 ], [ %25, %23 ], !dbg !2139
  %57 = phi i1 [ %53, %52 ], [ true, %28 ], [ false, %23 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !578, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata ptr %56, metadata !580, metadata !DIExpression()), !dbg !2139
  %58 = tail call i64 @strcspn(ptr noundef %56, ptr noundef nonnull @.str.20) #39, !dbg !2181
  call void @llvm.dbg.value(metadata i64 %58, metadata !586, metadata !DIExpression()), !dbg !2139
  %59 = getelementptr inbounds i8, ptr %56, i64 %58, !dbg !2182
  call void @llvm.dbg.value(metadata ptr %59, metadata !587, metadata !DIExpression()), !dbg !2139
  br label %60, !dbg !2183

60:                                               ; preds = %91, %55
  %61 = phi ptr [ %59, %55 ], [ %92, %91 ], !dbg !2139
  %62 = phi i1 [ %57, %55 ], [ %70, %91 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !578, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata ptr %61, metadata !587, metadata !DIExpression()), !dbg !2139
  %63 = load i8, ptr %61, align 1, !dbg !2184, !tbaa !1147
  switch i8 %63, label %69 [
    i8 0, label %93
    i8 10, label %93
    i8 45, label %64
  ], !dbg !2185

64:                                               ; preds = %60
  %65 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !2186
  %66 = load i8, ptr %65, align 1, !dbg !2189, !tbaa !1147
  %67 = icmp ne i8 %66, 45, !dbg !2190
  %68 = select i1 %67, i1 %62, i1 false, !dbg !2191
  br label %69, !dbg !2191

69:                                               ; preds = %64, %60
  %70 = phi i1 [ %62, %60 ], [ %68, %64 ]
  call void @llvm.dbg.value(metadata i8 poison, metadata !578, metadata !DIExpression()), !dbg !2139
  %71 = tail call ptr @__ctype_b_loc() #41, !dbg !2192
  %72 = load ptr, ptr %71, align 8, !dbg !2192, !tbaa !1069
  %73 = zext i8 %63 to i64
  %74 = getelementptr inbounds i16, ptr %72, i64 %73, !dbg !2192
  %75 = load i16, ptr %74, align 2, !dbg !2192, !tbaa !1179
  %76 = and i16 %75, 8192, !dbg !2192
  %77 = icmp eq i16 %76, 0, !dbg !2192
  br i1 %77, label %91, label %78, !dbg !2194

78:                                               ; preds = %69
  %79 = icmp eq i8 %63, 9, !dbg !2195
  br i1 %79, label %93, label %80, !dbg !2198

80:                                               ; preds = %78
  %81 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !2199
  %82 = load i8, ptr %81, align 1, !dbg !2199, !tbaa !1147
  %83 = zext i8 %82 to i64
  %84 = getelementptr inbounds i16, ptr %72, i64 %83, !dbg !2199
  %85 = load i16, ptr %84, align 2, !dbg !2199, !tbaa !1179
  %86 = and i16 %85, 8192, !dbg !2199
  %87 = icmp eq i16 %86, 0, !dbg !2199
  %88 = icmp eq i8 %82, 45
  %89 = or i1 %70, %88
  %90 = select i1 %87, i1 %89, i1 false, !dbg !2200
  br i1 %90, label %91, label %93, !dbg !2200

91:                                               ; preds = %80, %69
  %92 = getelementptr inbounds i8, ptr %61, i64 1, !dbg !2201
  call void @llvm.dbg.value(metadata ptr %92, metadata !587, metadata !DIExpression()), !dbg !2139
  br label %60, !dbg !2183, !llvm.loop !2202

93:                                               ; preds = %80, %78, %60, %60
  %.lcssa = phi ptr [ %61, %80 ], [ %61, %78 ], [ %61, %60 ], [ %61, %60 ], !dbg !2139
  %94 = ptrtoint ptr %25 to i64, !dbg !2204
  %95 = load ptr, ptr @stdout, align 8, !dbg !2204, !tbaa !1069
  %96 = tail call i64 @fwrite_unlocked(ptr noundef %2, i64 noundef 1, i64 noundef %24, ptr noundef %95), !dbg !2204
  call void @llvm.dbg.value(metadata ptr %0, metadata !2072, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata ptr @.str.21, metadata !2075, metadata !DIExpression()), !dbg !2205
  %97 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.21) #39, !dbg !2207
  %98 = icmp eq i32 %97, 0, !dbg !2208
  br i1 %98, label %127, label %99, !dbg !2209

99:                                               ; preds = %93
  call void @llvm.dbg.value(metadata ptr %0, metadata !2072, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata ptr @.str.23, metadata !2075, metadata !DIExpression()), !dbg !2210
  %100 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(4) @.str.23) #39, !dbg !2212
  %101 = icmp eq i32 %100, 0, !dbg !2213
  br i1 %101, label %127, label %102, !dbg !2214

102:                                              ; preds = %99
  call void @llvm.dbg.value(metadata ptr %0, metadata !2072, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata ptr @.str.25, metadata !2075, metadata !DIExpression()), !dbg !2215
  %103 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(5) @.str.25) #39, !dbg !2217
  %104 = icmp eq i32 %103, 0, !dbg !2218
  br i1 %104, label %127, label %105, !dbg !2219

105:                                              ; preds = %102
  call void @llvm.dbg.value(metadata ptr %0, metadata !2072, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata ptr @.str.26, metadata !2075, metadata !DIExpression()), !dbg !2220
  %106 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(6) @.str.26) #39, !dbg !2222
  %107 = icmp eq i32 %106, 0, !dbg !2223
  br i1 %107, label %127, label %108, !dbg !2224

108:                                              ; preds = %105
  call void @llvm.dbg.value(metadata ptr %0, metadata !2072, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata ptr @.str.28, metadata !2075, metadata !DIExpression()), !dbg !2225
  %109 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(7) @.str.28) #39, !dbg !2227
  %110 = icmp eq i32 %109, 0, !dbg !2228
  br i1 %110, label %127, label %111, !dbg !2229

111:                                              ; preds = %108
  call void @llvm.dbg.value(metadata ptr %0, metadata !2072, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata ptr @.str.29, metadata !2075, metadata !DIExpression()), !dbg !2230
  %112 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(8) @.str.29) #39, !dbg !2232
  %113 = icmp eq i32 %112, 0, !dbg !2233
  br i1 %113, label %127, label %114, !dbg !2234

114:                                              ; preds = %111
  call void @llvm.dbg.value(metadata ptr %0, metadata !2072, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata ptr @.str.30, metadata !2075, metadata !DIExpression()), !dbg !2235
  %115 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.30) #39, !dbg !2237
  %116 = icmp eq i32 %115, 0, !dbg !2238
  br i1 %116, label %127, label %117, !dbg !2239

117:                                              ; preds = %114
  call void @llvm.dbg.value(metadata ptr %0, metadata !2072, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata ptr @.str.31, metadata !2075, metadata !DIExpression()), !dbg !2240
  %118 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.31) #39, !dbg !2242
  %119 = icmp eq i32 %118, 0, !dbg !2243
  br i1 %119, label %127, label %120, !dbg !2244

120:                                              ; preds = %117
  call void @llvm.dbg.value(metadata ptr %0, metadata !2072, metadata !DIExpression()), !dbg !2245
  call void @llvm.dbg.value(metadata ptr @.str.32.48, metadata !2075, metadata !DIExpression()), !dbg !2245
  %121 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.32.48) #39, !dbg !2247
  %122 = icmp eq i32 %121, 0, !dbg !2248
  br i1 %122, label %127, label %123, !dbg !2249

123:                                              ; preds = %120
  call void @llvm.dbg.value(metadata ptr %0, metadata !2072, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata ptr @.str.33.49, metadata !2075, metadata !DIExpression()), !dbg !2250
  %124 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str.33.49) #39, !dbg !2252
  %125 = icmp eq i32 %124, 0, !dbg !2253
  %126 = select i1 %125, ptr @.str.27, ptr %0, !dbg !2254
  br label %127, !dbg !2249

127:                                              ; preds = %123, %120, %117, %114, %111, %108, %105, %102, %99, %93
  %128 = phi ptr [ @.str.22, %93 ], [ @.str.24, %99 ], [ @.str.24, %102 ], [ @.str.27, %105 ], [ @.str.27, %108 ], [ @.str.27, %111 ], [ @.str.27, %114 ], [ @.str.27, %117 ], [ %126, %123 ], [ @.str.27, %120 ], !dbg !2209
  call void @llvm.dbg.value(metadata ptr %128, metadata !592, metadata !DIExpression()), !dbg !2139
  %129 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(7) @.str.34.50, i64 noundef 6) #39, !dbg !2255
  %130 = icmp eq i32 %129, 0, !dbg !2255
  br i1 %130, label %134, label %131, !dbg !2257

131:                                              ; preds = %127
  %132 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(10) @.str.35.51, i64 noundef 9) #39, !dbg !2258
  %133 = icmp eq i32 %132, 0, !dbg !2258
  br i1 %133, label %134, label %137, !dbg !2259

134:                                              ; preds = %131, %127
  %135 = trunc i64 %58 to i32, !dbg !2260
  %136 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.36.52, ptr noundef nonnull @.str.37.53, ptr noundef %128, ptr noundef %128, i32 noundef %135, ptr noundef %56) #38, !dbg !2260
  br label %140, !dbg !2262

137:                                              ; preds = %131
  %138 = trunc i64 %58 to i32, !dbg !2263
  %139 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef nonnull @.str.38.54, ptr noundef nonnull @.str.39.55, ptr noundef %128, i32 noundef %138, ptr noundef %56) #38, !dbg !2263
  br label %140

140:                                              ; preds = %137, %134
  %141 = load ptr, ptr @stdout, align 8, !dbg !2265, !tbaa !1069
  %142 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.40.56, ptr noundef %141), !dbg !2265
  %143 = load ptr, ptr @stdout, align 8, !dbg !2266, !tbaa !1069
  %144 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.41.57, ptr noundef %143), !dbg !2266
  %145 = ptrtoint ptr %.lcssa to i64, !dbg !2267
  %146 = sub i64 %145, %94, !dbg !2267
  %147 = load ptr, ptr @stdout, align 8, !dbg !2267, !tbaa !1069
  %148 = tail call i64 @fwrite_unlocked(ptr noundef %25, i64 noundef 1, i64 noundef %146, ptr noundef %147), !dbg !2267
  %149 = load ptr, ptr @stdout, align 8, !dbg !2268, !tbaa !1069
  %150 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.42, ptr noundef %149), !dbg !2268
  %151 = load ptr, ptr @stdout, align 8, !dbg !2269, !tbaa !1069
  %152 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.43, ptr noundef %151), !dbg !2269
  %153 = load ptr, ptr @stdout, align 8, !dbg !2270, !tbaa !1069
  %154 = tail call i32 @fputs_unlocked(ptr noundef nonnull %.lcssa, ptr noundef %153), !dbg !2270
  br label %155, !dbg !2271

155:                                              ; preds = %20, %140
  %156 = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.10.58, i32 noundef 5) #38, !dbg !2272
  %157 = load ptr, ptr @stdout, align 8, !dbg !2272, !tbaa !1069
  %158 = tail call i32 @fputs_unlocked(ptr noundef %156, ptr noundef %157), !dbg !2272
  ret void, !dbg !2273
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_file_name(ptr noundef %0) local_unnamed_addr #14 !dbg !2274 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2276, metadata !DIExpression()), !dbg !2277
  store ptr %0, ptr @file_name, align 8, !dbg !2278, !tbaa !1069
  ret void, !dbg !2279
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 noundef %0) local_unnamed_addr #14 !dbg !2280 {
  %2 = zext i1 %0 to i8
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2284, metadata !DIExpression()), !dbg !2285
  store i8 %2, ptr @ignore_EPIPE, align 4, !dbg !2286, !tbaa !1311
  ret void, !dbg !2287
}

; Function Attrs: nounwind uwtable
define dso_local void @close_stdout() #10 !dbg !2288 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !2293, !tbaa !1069
  %2 = tail call i32 @close_stream(ptr noundef %1) #38, !dbg !2294
  %3 = icmp eq i32 %2, 0, !dbg !2295
  br i1 %3, label %22, label %4, !dbg !2296

4:                                                ; preds = %0
  %5 = load i8, ptr @ignore_EPIPE, align 4, !dbg !2297, !tbaa !1311, !range !1518, !noundef !1106
  %6 = icmp eq i8 %5, 0, !dbg !2297
  br i1 %6, label %11, label %7, !dbg !2298

7:                                                ; preds = %4
  %8 = tail call ptr @__errno_location() #41, !dbg !2299
  %9 = load i32, ptr %8, align 4, !dbg !2299, !tbaa !1138
  %10 = icmp eq i32 %9, 32, !dbg !2300
  br i1 %10, label %22, label %11, !dbg !2301

11:                                               ; preds = %7, %4
  %12 = tail call ptr @dcgettext(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.1.65, i32 noundef 5) #38, !dbg !2302
  tail call void @llvm.dbg.value(metadata ptr %12, metadata !2290, metadata !DIExpression()), !dbg !2303
  %13 = load ptr, ptr @file_name, align 8, !dbg !2304, !tbaa !1069
  %14 = icmp eq ptr %13, null, !dbg !2304
  %15 = tail call ptr @__errno_location() #41, !dbg !2306
  %16 = load i32, ptr %15, align 4, !dbg !2306, !tbaa !1138
  br i1 %14, label %19, label %17, !dbg !2307

17:                                               ; preds = %11
  %18 = tail call ptr @quotearg_colon(ptr noundef nonnull %13) #38, !dbg !2308
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.2.66, ptr noundef %18, ptr noundef %12) #38, !dbg !2308
  br label %20, !dbg !2308

19:                                               ; preds = %11
  tail call void (i32, i32, ptr, ...) @error(i32 noundef 0, i32 noundef %16, ptr noundef nonnull @.str.3.67, ptr noundef %12) #38, !dbg !2309
  br label %20

20:                                               ; preds = %19, %17
  %21 = load volatile i32, ptr @exit_failure, align 4, !dbg !2310, !tbaa !1138
  tail call void @_exit(i32 noundef %21) #40, !dbg !2311
  unreachable, !dbg !2311

22:                                               ; preds = %7, %0
  %23 = load ptr, ptr @stderr, align 8, !dbg !2312, !tbaa !1069
  %24 = tail call i32 @close_stream(ptr noundef %23) #38, !dbg !2314
  %25 = icmp eq i32 %24, 0, !dbg !2315
  br i1 %25, label %28, label %26, !dbg !2316

26:                                               ; preds = %22
  %27 = load volatile i32, ptr @exit_failure, align 4, !dbg !2317, !tbaa !1138
  tail call void @_exit(i32 noundef %27) #40, !dbg !2318
  unreachable, !dbg !2318

28:                                               ; preds = %22
  ret void, !dbg !2319
}

; Function Attrs: noreturn
declare !dbg !2320 void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr nocapture noundef readonly %3) local_unnamed_addr #16 !dbg !2322 {
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2326, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2327, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2328, metadata !DIExpression()), !dbg !2330
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2329, metadata !DIExpression(DW_OP_deref)), !dbg !2330
  tail call fastcc void @flush_stdout(), !dbg !2331
  %6 = load ptr, ptr @error_print_progname, align 8, !dbg !2332, !tbaa !1069
  %7 = icmp eq ptr %6, null, !dbg !2332
  br i1 %7, label %9, label %8, !dbg !2334

8:                                                ; preds = %4
  tail call void %6() #38, !dbg !2335
  br label %13, !dbg !2335

9:                                                ; preds = %4
  %10 = load ptr, ptr @stderr, align 8, !dbg !2336, !tbaa !1069
  %11 = tail call ptr @getprogname() #39, !dbg !2336
  %12 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %10, i32 noundef 1, ptr noundef nonnull @.str.68, ptr noundef %11) #38, !dbg !2336
  br label %13

13:                                               ; preds = %9, %8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !2338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2338, !tbaa.struct !2339
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5), !dbg !2338
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !2338
  ret void, !dbg !2340
}

; Function Attrs: nounwind uwtable
define internal fastcc void @flush_stdout() unnamed_addr #10 !dbg !2341 {
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2343, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i32 1, metadata !2345, metadata !DIExpression()), !dbg !2348
  %1 = tail call i32 (i32, i32, ...) @fcntl(i32 noundef 1, i32 noundef 3) #38, !dbg !2351
  %2 = icmp slt i32 %1, 0, !dbg !2352
  br i1 %2, label %6, label %3, !dbg !2353

3:                                                ; preds = %0
  %4 = load ptr, ptr @stdout, align 8, !dbg !2354, !tbaa !1069
  %5 = tail call i32 @fflush_unlocked(ptr noundef %4) #38, !dbg !2354
  br label %6, !dbg !2354

6:                                                ; preds = %3, %0
  ret void, !dbg !2355
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #17

; Function Attrs: nounwind uwtable
define internal fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr nocapture noundef readonly %3) unnamed_addr #10 !dbg !2356 {
  %5 = alloca [1024 x i8], align 1, !DIAssignID !2362
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2358, metadata !DIExpression()), !dbg !2363
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2359, metadata !DIExpression()), !dbg !2363
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2360, metadata !DIExpression()), !dbg !2363
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !2361, metadata !DIExpression(DW_OP_deref)), !dbg !2363
  %7 = load ptr, ptr @stderr, align 8, !dbg !2364, !tbaa !1069
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !2365, !noalias !2409
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false), !dbg !2413
  call void @llvm.dbg.value(metadata ptr %7, metadata !2405, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata ptr %2, metadata !2406, metadata !DIExpression()), !dbg !2414
  call void @llvm.dbg.value(metadata ptr poison, metadata !2407, metadata !DIExpression(DW_OP_deref)), !dbg !2414
  %8 = call i32 @__vfprintf_chk(ptr noundef %7, i32 noundef 1, ptr noundef nonnull %2, ptr noundef nonnull %6) #38, !dbg !2365
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !2365, !noalias !2409
  %9 = load i32, ptr @error_message_count, align 4, !dbg !2415, !tbaa !1138
  %10 = add i32 %9, 1, !dbg !2415
  store i32 %10, ptr @error_message_count, align 4, !dbg !2415, !tbaa !1138
  %11 = icmp eq i32 %1, 0, !dbg !2416
  br i1 %11, label %21, label %12, !dbg !2418

12:                                               ; preds = %4
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2419, metadata !DIExpression(), metadata !2362, metadata ptr %5, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i32 %1, metadata !2422, metadata !DIExpression()), !dbg !2427
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %5) #38, !dbg !2429
  %13 = call ptr @strerror_r(i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1024) #38, !dbg !2430
  call void @llvm.dbg.value(metadata ptr %13, metadata !2423, metadata !DIExpression()), !dbg !2427
  %14 = icmp eq ptr %13, null, !dbg !2431
  br i1 %14, label %15, label %17, !dbg !2433

15:                                               ; preds = %12
  %16 = call ptr @dcgettext(ptr noundef nonnull @.str.4.69, ptr noundef nonnull @.str.5.70, i32 noundef 5) #38, !dbg !2434
  call void @llvm.dbg.value(metadata ptr %16, metadata !2423, metadata !DIExpression()), !dbg !2427
  br label %17, !dbg !2435

17:                                               ; preds = %12, %15
  %18 = phi ptr [ %13, %12 ], [ %16, %15 ], !dbg !2427
  call void @llvm.dbg.value(metadata ptr %18, metadata !2423, metadata !DIExpression()), !dbg !2427
  %19 = load ptr, ptr @stderr, align 8, !dbg !2436, !tbaa !1069
  %20 = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.6.71, ptr noundef %18) #38, !dbg !2436
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %5) #38, !dbg !2437
  br label %21, !dbg !2438

21:                                               ; preds = %17, %4
  %22 = load ptr, ptr @stderr, align 8, !dbg !2439, !tbaa !1069
  call void @llvm.dbg.value(metadata i32 10, metadata !2440, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.value(metadata ptr %22, metadata !2445, metadata !DIExpression()), !dbg !2446
  %23 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 5, !dbg !2448
  %24 = load ptr, ptr %23, align 8, !dbg !2448, !tbaa !1554
  %25 = getelementptr inbounds %struct._IO_FILE, ptr %22, i64 0, i32 6, !dbg !2448
  %26 = load ptr, ptr %25, align 8, !dbg !2448, !tbaa !1555
  %27 = icmp ult ptr %24, %26, !dbg !2448
  br i1 %27, label %30, label %28, !dbg !2448, !prof !1556

28:                                               ; preds = %21
  %29 = call i32 @__overflow(ptr noundef nonnull %22, i32 noundef 10) #38, !dbg !2448
  br label %32, !dbg !2448

30:                                               ; preds = %21
  %31 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !2448
  store ptr %31, ptr %23, align 8, !dbg !2448, !tbaa !1554
  store i8 10, ptr %24, align 1, !dbg !2448, !tbaa !1147
  br label %32, !dbg !2448

32:                                               ; preds = %28, %30
  %33 = load ptr, ptr @stderr, align 8, !dbg !2449, !tbaa !1069
  %34 = call i32 @fflush_unlocked(ptr noundef %33) #38, !dbg !2449
  %35 = icmp eq i32 %0, 0, !dbg !2450
  br i1 %35, label %37, label %36, !dbg !2452

36:                                               ; preds = %32
  call void @exit(i32 noundef %0) #40, !dbg !2453
  unreachable, !dbg !2453

37:                                               ; preds = %32
  ret void, !dbg !2454
}

declare !dbg !2455 i32 @__vfprintf_chk(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !2458 ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare !dbg !2461 i32 @fcntl(i32 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @error(i32 noundef %0, i32 noundef %1, ptr noundef %2, ...) local_unnamed_addr #10 !dbg !2465 {
  %4 = alloca %struct.__va_list, align 8, !DIAssignID !2473
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2472, metadata !DIExpression(), metadata !2473, metadata ptr %4, metadata !DIExpression()), !dbg !2474
  %5 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2469, metadata !DIExpression()), !dbg !2474
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2470, metadata !DIExpression()), !dbg !2474
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2471, metadata !DIExpression()), !dbg !2474
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #38, !dbg !2475
  call void @llvm.va_start(ptr nonnull %4), !dbg !2476
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !2477
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false), !dbg !2477, !tbaa.struct !2339
  call void @verror(i32 noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull %5) #43, !dbg !2477
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !2477
  call void @llvm.va_end(ptr nonnull %4), !dbg !2478
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #38, !dbg !2479
  ret void, !dbg !2479
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #18

; Function Attrs: cold nounwind optsize uwtable
define dso_local void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef readonly %5) local_unnamed_addr #16 !dbg !684 {
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !700, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !701, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !702, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !703, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !704, metadata !DIExpression()), !dbg !2480
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !705, metadata !DIExpression(DW_OP_deref)), !dbg !2480
  %8 = load i32, ptr @error_one_per_line, align 4, !dbg !2481, !tbaa !1138
  %9 = icmp eq i32 %8, 0, !dbg !2481
  br i1 %9, label %24, label %10, !dbg !2483

10:                                               ; preds = %6
  %11 = load i32, ptr @verror_at_line.old_line_number, align 4, !dbg !2484, !tbaa !1138
  %12 = icmp eq i32 %11, %3, !dbg !2487
  br i1 %12, label %13, label %23, !dbg !2488

13:                                               ; preds = %10
  %14 = load ptr, ptr @verror_at_line.old_file_name, align 8, !dbg !2489, !tbaa !1069
  %15 = icmp eq ptr %14, %2, !dbg !2490
  br i1 %15, label %37, label %16, !dbg !2491

16:                                               ; preds = %13
  %17 = icmp ne ptr %14, null, !dbg !2492
  %18 = icmp ne ptr %2, null
  %19 = and i1 %18, %17, !dbg !2493
  br i1 %19, label %20, label %23, !dbg !2493

20:                                               ; preds = %16
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !2494
  %22 = icmp eq i32 %21, 0, !dbg !2495
  br i1 %22, label %37, label %23, !dbg !2496

23:                                               ; preds = %20, %16, %10
  store ptr %2, ptr @verror_at_line.old_file_name, align 8, !dbg !2497, !tbaa !1069
  store i32 %3, ptr @verror_at_line.old_line_number, align 4, !dbg !2498, !tbaa !1138
  br label %24, !dbg !2499

24:                                               ; preds = %23, %6
  tail call fastcc void @flush_stdout(), !dbg !2500
  %25 = load ptr, ptr @error_print_progname, align 8, !dbg !2501, !tbaa !1069
  %26 = icmp eq ptr %25, null, !dbg !2501
  br i1 %26, label %28, label %27, !dbg !2503

27:                                               ; preds = %24
  tail call void %25() #38, !dbg !2504
  br label %32, !dbg !2504

28:                                               ; preds = %24
  %29 = load ptr, ptr @stderr, align 8, !dbg !2505, !tbaa !1069
  %30 = tail call ptr @getprogname() #39, !dbg !2505
  %31 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %29, i32 noundef 1, ptr noundef nonnull @.str.1.74, ptr noundef %30) #38, !dbg !2505
  br label %32

32:                                               ; preds = %28, %27
  %33 = load ptr, ptr @stderr, align 8, !dbg !2507, !tbaa !1069
  %34 = icmp eq ptr %2, null, !dbg !2507
  %35 = select i1 %34, ptr @.str.3.75, ptr @.str.2.76, !dbg !2507
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %33, i32 noundef 1, ptr noundef nonnull %35, ptr noundef %2, i32 noundef %3) #38, !dbg !2507
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !2508
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !2508, !tbaa.struct !2339
  call fastcc void @error_tail(i32 noundef %0, i32 noundef %1, ptr noundef %4, ptr noundef nonnull %7), !dbg !2508
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !2508
  br label %37, !dbg !2509

37:                                               ; preds = %13, %20, %32
  ret void, !dbg !2509
}

; Function Attrs: nounwind uwtable
define dso_local void @error_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ...) local_unnamed_addr #10 !dbg !2510 {
  %6 = alloca %struct.__va_list, align 8, !DIAssignID !2520
  call void @llvm.dbg.assign(metadata i1 undef, metadata !2519, metadata !DIExpression(), metadata !2520, metadata ptr %6, metadata !DIExpression()), !dbg !2521
  %7 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2514, metadata !DIExpression()), !dbg !2521
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2515, metadata !DIExpression()), !dbg !2521
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2516, metadata !DIExpression()), !dbg !2521
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2517, metadata !DIExpression()), !dbg !2521
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2518, metadata !DIExpression()), !dbg !2521
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !2522
  call void @llvm.va_start(ptr nonnull %6), !dbg !2523
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #38, !dbg !2524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !dbg !2524, !tbaa.struct !2339
  call void @verror_at_line(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef nonnull %7) #43, !dbg !2524
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #38, !dbg !2524
  call void @llvm.va_end(ptr nonnull %6), !dbg !2525
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !2526
  ret void, !dbg !2526
}

; Function Attrs: nounwind uwtable
define dso_local void @fdadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #10 !dbg !2527 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !2533, metadata !DIExpression()), !dbg !2537
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2534, metadata !DIExpression()), !dbg !2537
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !2535, metadata !DIExpression()), !dbg !2537
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2536, metadata !DIExpression()), !dbg !2537
  %5 = tail call i32 @posix_fadvise(i32 noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #38, !dbg !2538
  ret void, !dbg !2539
}

; Function Attrs: nounwind
declare !dbg !2540 i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @fadvise(ptr noundef %0, i32 noundef %1) local_unnamed_addr #10 !dbg !2543 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2581, metadata !DIExpression()), !dbg !2583
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2582, metadata !DIExpression()), !dbg !2583
  %3 = icmp eq ptr %0, null, !dbg !2584
  br i1 %3, label %7, label %4, !dbg !2586

4:                                                ; preds = %2
  %5 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2587
  call void @llvm.dbg.value(metadata i32 %5, metadata !2533, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 0, metadata !2534, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i64 0, metadata !2535, metadata !DIExpression()), !dbg !2588
  call void @llvm.dbg.value(metadata i32 %1, metadata !2536, metadata !DIExpression()), !dbg !2588
  %6 = tail call i32 @posix_fadvise(i32 noundef %5, i64 noundef 0, i64 noundef 0, i32 noundef %1) #38, !dbg !2590
  br label %7, !dbg !2591

7:                                                ; preds = %4, %2
  ret void, !dbg !2592
}

; Function Attrs: nofree nounwind
declare !dbg !2593 noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fclose(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2596 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2634, metadata !DIExpression()), !dbg !2638
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2635, metadata !DIExpression()), !dbg !2638
  %2 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2639
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2636, metadata !DIExpression()), !dbg !2638
  %3 = icmp slt i32 %2, 0, !dbg !2640
  br i1 %3, label %4, label %6, !dbg !2642

4:                                                ; preds = %1
  %5 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2643
  br label %24, !dbg !2644

6:                                                ; preds = %1
  %7 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2645
  %8 = icmp eq i32 %7, 0, !dbg !2645
  br i1 %8, label %13, label %9, !dbg !2647

9:                                                ; preds = %6
  %10 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2648
  %11 = tail call i64 @lseek(i32 noundef %10, i64 noundef 0, i32 noundef 1) #38, !dbg !2649
  %12 = icmp eq i64 %11, -1, !dbg !2650
  br i1 %12, label %16, label %13, !dbg !2651

13:                                               ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(ptr noundef nonnull %0) #38, !dbg !2652
  %15 = icmp eq i32 %14, 0, !dbg !2652
  br i1 %15, label %16, label %18, !dbg !2653

16:                                               ; preds = %13, %9
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2635, metadata !DIExpression()), !dbg !2638
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2637, metadata !DIExpression()), !dbg !2638
  %17 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2654
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !2637, metadata !DIExpression()), !dbg !2638
  br label %24, !dbg !2655

18:                                               ; preds = %13
  %19 = tail call ptr @__errno_location() #41, !dbg !2656
  %20 = load i32, ptr %19, align 4, !dbg !2656, !tbaa !1138
  tail call void @llvm.dbg.value(metadata i32 %20, metadata !2635, metadata !DIExpression()), !dbg !2638
  tail call void @llvm.dbg.value(metadata i32 0, metadata !2637, metadata !DIExpression()), !dbg !2638
  %21 = tail call i32 @fclose(ptr noundef nonnull %0), !dbg !2654
  tail call void @llvm.dbg.value(metadata i32 %21, metadata !2637, metadata !DIExpression()), !dbg !2638
  %22 = icmp eq i32 %20, 0, !dbg !2657
  br i1 %22, label %24, label %23, !dbg !2655

23:                                               ; preds = %18
  store i32 %20, ptr %19, align 4, !dbg !2659, !tbaa !1138
  tail call void @llvm.dbg.value(metadata i32 -1, metadata !2637, metadata !DIExpression()), !dbg !2638
  br label %24, !dbg !2661

24:                                               ; preds = %16, %18, %23, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !2638
  ret i32 %25, !dbg !2662
}

; Function Attrs: nofree nounwind
declare !dbg !2663 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare !dbg !2664 i32 @__freading(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !2666 i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fflush(ptr noundef %0) local_unnamed_addr #10 !dbg !2669 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2707, metadata !DIExpression()), !dbg !2708
  %2 = icmp eq ptr %0, null, !dbg !2709
  br i1 %2, label %6, label %3, !dbg !2711

3:                                                ; preds = %1
  %4 = tail call i32 @__freading(ptr noundef nonnull %0) #38, !dbg !2712
  %5 = icmp eq i32 %4, 0, !dbg !2712
  br i1 %5, label %6, label %8, !dbg !2713

6:                                                ; preds = %3, %1
  %7 = tail call i32 @fflush(ptr noundef %0), !dbg !2714
  br label %16, !dbg !2715

8:                                                ; preds = %3
  call void @llvm.dbg.value(metadata ptr %0, metadata !2716, metadata !DIExpression()), !dbg !2721
  %9 = load i32, ptr %0, align 8, !dbg !2723, !tbaa !1391
  %10 = and i32 %9, 256, !dbg !2725
  %11 = icmp eq i32 %10, 0, !dbg !2725
  br i1 %11, label %14, label %12, !dbg !2726

12:                                               ; preds = %8
  %13 = tail call i32 @rpl_fseeko(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 1) #38, !dbg !2727
  br label %14, !dbg !2727

14:                                               ; preds = %8, %12
  %15 = tail call i32 @fflush(ptr noundef nonnull %0), !dbg !2728
  br label %16, !dbg !2729

16:                                               ; preds = %14, %6
  %17 = phi i32 [ %7, %6 ], [ %15, %14 ], !dbg !2708
  ret i32 %17, !dbg !2730
}

; Function Attrs: nofree nounwind
declare !dbg !2731 noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @fpurge(ptr noundef nonnull %0) local_unnamed_addr #10 !dbg !2732 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2770, metadata !DIExpression()), !dbg !2771
  tail call void @__fpurge(ptr noundef nonnull %0) #38, !dbg !2772
  ret i32 0, !dbg !2773
}

; Function Attrs: nounwind
declare !dbg !2774 void @__fpurge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @rpl_fseeko(ptr nocapture noundef nonnull %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #10 !dbg !2777 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2815, metadata !DIExpression()), !dbg !2821
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !2816, metadata !DIExpression()), !dbg !2821
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2817, metadata !DIExpression()), !dbg !2821
  %4 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 2, !dbg !2822
  %5 = load ptr, ptr %4, align 8, !dbg !2822, !tbaa !2823
  %6 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 1, !dbg !2824
  %7 = load ptr, ptr %6, align 8, !dbg !2824, !tbaa !2825
  %8 = icmp eq ptr %5, %7, !dbg !2826
  br i1 %8, label %9, label %27, !dbg !2827

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 5, !dbg !2828
  %11 = load ptr, ptr %10, align 8, !dbg !2828, !tbaa !1554
  %12 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 4, !dbg !2829
  %13 = load ptr, ptr %12, align 8, !dbg !2829, !tbaa !2830
  %14 = icmp eq ptr %11, %13, !dbg !2831
  br i1 %14, label %15, label %27, !dbg !2832

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 9, !dbg !2833
  %17 = load ptr, ptr %16, align 8, !dbg !2833, !tbaa !2834
  %18 = icmp eq ptr %17, null, !dbg !2835
  br i1 %18, label %19, label %27, !dbg !2836

19:                                               ; preds = %15
  %20 = tail call i32 @fileno(ptr noundef nonnull %0) #38, !dbg !2837
  %21 = tail call i64 @lseek(i32 noundef %20, i64 noundef %1, i32 noundef %2) #38, !dbg !2838
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !2818, metadata !DIExpression()), !dbg !2839
  %22 = icmp eq i64 %21, -1, !dbg !2840
  br i1 %22, label %29, label %23, !dbg !2842

23:                                               ; preds = %19
  %24 = load i32, ptr %0, align 8, !dbg !2843, !tbaa !1391
  %25 = and i32 %24, -17, !dbg !2843
  store i32 %25, ptr %0, align 8, !dbg !2843, !tbaa !1391
  %26 = getelementptr inbounds %struct._IO_FILE, ptr %0, i64 0, i32 21, !dbg !2844
  store i64 %21, ptr %26, align 8, !dbg !2845, !tbaa !2846
  br label %29, !dbg !2847

27:                                               ; preds = %15, %9, %3
  %28 = tail call i32 @fseeko(ptr noundef nonnull %0, i64 noundef %1, i32 noundef %2), !dbg !2848
  br label %29, !dbg !2849

29:                                               ; preds = %23, %19, %27
  %30 = phi i32 [ %28, %27 ], [ 0, %23 ], [ -1, %19 ], !dbg !2821
  ret i32 %30, !dbg !2850
}

; Function Attrs: nofree nounwind
declare !dbg !2851 noundef i32 @fseeko(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local ptr @getprogname() local_unnamed_addr #19 !dbg !2854 {
  %1 = load ptr, ptr @program_invocation_short_name, align 8, !dbg !2857, !tbaa !1069
  ret ptr %1, !dbg !2858
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @set_program_name(ptr noundef nonnull %0) local_unnamed_addr #20 !dbg !2859 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2861, metadata !DIExpression()), !dbg !2864
  %2 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #39, !dbg !2865
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !2862, metadata !DIExpression()), !dbg !2864
  %3 = icmp eq ptr %2, null, !dbg !2866
  %4 = getelementptr inbounds i8, ptr %2, i64 1, !dbg !2866
  %5 = select i1 %3, ptr %0, ptr %4, !dbg !2866
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2863, metadata !DIExpression()), !dbg !2864
  %6 = ptrtoint ptr %5 to i64, !dbg !2867
  %7 = ptrtoint ptr %0 to i64, !dbg !2867
  %8 = sub i64 %6, %7, !dbg !2867
  %9 = icmp sgt i64 %8, 6, !dbg !2869
  br i1 %9, label %10, label %19, !dbg !2870

10:                                               ; preds = %1
  %11 = getelementptr inbounds i8, ptr %5, i64 -7, !dbg !2871
  call void @llvm.dbg.value(metadata ptr %11, metadata !2872, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata ptr @.str.95, metadata !2877, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i64 7, metadata !2878, metadata !DIExpression()), !dbg !2879
  %12 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %11, ptr noundef nonnull dereferenceable(7) @.str.95, i64 7), !dbg !2881
  %13 = icmp eq i32 %12, 0, !dbg !2882
  br i1 %13, label %14, label %19, !dbg !2883

14:                                               ; preds = %10
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !2861, metadata !DIExpression()), !dbg !2864
  %15 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(4) @.str.1.96, i64 noundef 3) #39, !dbg !2884
  %16 = icmp eq i32 %15, 0, !dbg !2887
  %17 = select i1 %16, i64 3, i64 0, !dbg !2888
  %18 = getelementptr inbounds i8, ptr %5, i64 %17, !dbg !2888
  br label %19, !dbg !2888

19:                                               ; preds = %14, %10, %1
  %20 = phi ptr [ %0, %10 ], [ %0, %1 ], [ %18, %14 ]
  %21 = phi ptr [ %5, %10 ], [ %5, %1 ], [ %18, %14 ], !dbg !2864
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !2863, metadata !DIExpression()), !dbg !2864
  tail call void @llvm.dbg.value(metadata ptr %20, metadata !2861, metadata !DIExpression()), !dbg !2864
  store ptr %20, ptr @program_name, align 8, !dbg !2889, !tbaa !1069
  store ptr %20, ptr @program_invocation_name, align 8, !dbg !2890, !tbaa !1069
  store ptr %21, ptr @program_invocation_short_name, align 8, !dbg !2891, !tbaa !1069
  ret void, !dbg !2892
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !2893 ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #21

; Function Attrs: nounwind uwtable
define dso_local ptr @proper_name_lite(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #10 !dbg !737 {
  %3 = alloca i32, align 4, !DIAssignID !2894
  call void @llvm.dbg.assign(metadata i1 undef, metadata !747, metadata !DIExpression(), metadata !2894, metadata ptr %3, metadata !DIExpression()), !dbg !2895
  %4 = alloca %struct.__mbstate_t, align 8, !DIAssignID !2896
  call void @llvm.dbg.assign(metadata i1 undef, metadata !748, metadata !DIExpression(), metadata !2896, metadata ptr %4, metadata !DIExpression()), !dbg !2895
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !744, metadata !DIExpression()), !dbg !2895
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !745, metadata !DIExpression()), !dbg !2895
  %5 = tail call ptr @dcgettext(ptr noundef null, ptr noundef %0, i32 noundef 5) #38, !dbg !2897
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !746, metadata !DIExpression()), !dbg !2895
  %6 = icmp eq ptr %5, %0, !dbg !2898
  br i1 %6, label %7, label %14, !dbg !2900

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #38, !dbg !2901
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #38, !dbg !2902
  call void @llvm.dbg.value(metadata ptr %4, metadata !2903, metadata !DIExpression()), !dbg !2910
  call void @llvm.dbg.value(metadata ptr %4, metadata !2912, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i32 0, metadata !2917, metadata !DIExpression()), !dbg !2919
  call void @llvm.dbg.value(metadata i64 8, metadata !2918, metadata !DIExpression()), !dbg !2919
  store i64 0, ptr %4, align 8, !dbg !2921
  %8 = call i64 @mbrtoc32(ptr noundef nonnull %3, ptr noundef nonnull @proper_name_lite.utf07FF, i64 noundef 2, ptr noundef nonnull %4) #38, !dbg !2922
  %9 = icmp eq i64 %8, 2, !dbg !2924
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 2047
  %12 = select i1 %9, i1 %11, i1 false, !dbg !2925
  %13 = select i1 %12, ptr %1, ptr %0, !dbg !2895
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #38, !dbg !2926
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #38, !dbg !2926
  br label %14

14:                                               ; preds = %2, %7
  %15 = phi ptr [ %13, %7 ], [ %5, %2 ], !dbg !2895
  ret ptr %15, !dbg !2926
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @clone_quoting_options(ptr noundef %0) local_unnamed_addr #10 !dbg !2927 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2932, metadata !DIExpression()), !dbg !2935
  %2 = tail call ptr @__errno_location() #41, !dbg !2936
  %3 = load i32, ptr %2, align 4, !dbg !2936, !tbaa !1138
  tail call void @llvm.dbg.value(metadata i32 %3, metadata !2933, metadata !DIExpression()), !dbg !2935
  %4 = icmp eq ptr %0, null, !dbg !2937
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2937
  %6 = tail call noalias nonnull dereferenceable(56) ptr @xmemdup(ptr noundef nonnull %5, i64 noundef 56) #44, !dbg !2938
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !2934, metadata !DIExpression()), !dbg !2935
  store i32 %3, ptr %2, align 4, !dbg !2939, !tbaa !1138
  ret ptr %6, !dbg !2940
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @get_quoting_style(ptr noundef readonly %0) local_unnamed_addr #22 !dbg !2941 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2947, metadata !DIExpression()), !dbg !2948
  %2 = icmp eq ptr %0, null, !dbg !2949
  %3 = select i1 %2, ptr @default_quoting_options, ptr %0, !dbg !2949
  %4 = load i32, ptr %3, align 8, !dbg !2950, !tbaa !2951
  ret i32 %4, !dbg !2953
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) uwtable
define dso_local void @set_quoting_style(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #23 !dbg !2954 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2958, metadata !DIExpression()), !dbg !2960
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2959, metadata !DIExpression()), !dbg !2960
  %3 = icmp eq ptr %0, null, !dbg !2961
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2961
  store i32 %1, ptr %4, align 8, !dbg !2962, !tbaa !2951
  ret void, !dbg !2963
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_char_quoting(ptr noundef %0, i8 noundef %1, i32 noundef %2) local_unnamed_addr #24 !dbg !2964 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2968, metadata !DIExpression()), !dbg !2976
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2969, metadata !DIExpression()), !dbg !2976
  tail call void @llvm.dbg.value(metadata i32 %2, metadata !2970, metadata !DIExpression()), !dbg !2976
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !2971, metadata !DIExpression()), !dbg !2976
  %4 = icmp eq ptr %0, null, !dbg !2977
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !2977
  %6 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !2978
  %7 = lshr i8 %1, 5, !dbg !2979
  %8 = zext nneg i8 %7 to i64, !dbg !2979
  %9 = getelementptr inbounds i32, ptr %6, i64 %8, !dbg !2980
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2972, metadata !DIExpression()), !dbg !2976
  %10 = and i8 %1, 31, !dbg !2981
  %11 = zext nneg i8 %10 to i32, !dbg !2981
  tail call void @llvm.dbg.value(metadata i32 %11, metadata !2974, metadata !DIExpression()), !dbg !2976
  %12 = load i32, ptr %9, align 4, !dbg !2982, !tbaa !1138
  %13 = lshr i32 %12, %11, !dbg !2983
  %14 = and i32 %13, 1, !dbg !2984
  tail call void @llvm.dbg.value(metadata i32 %14, metadata !2975, metadata !DIExpression()), !dbg !2976
  %15 = xor i32 %13, %2, !dbg !2985
  %16 = and i32 %15, 1, !dbg !2985
  %17 = shl nuw i32 %16, %11, !dbg !2986
  %18 = xor i32 %17, %12, !dbg !2987
  store i32 %18, ptr %9, align 4, !dbg !2987, !tbaa !1138
  ret i32 %14, !dbg !2988
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local i32 @set_quoting_flags(ptr noundef %0, i32 noundef %1) local_unnamed_addr #24 !dbg !2989 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !2993, metadata !DIExpression()), !dbg !2996
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !2994, metadata !DIExpression()), !dbg !2996
  %3 = icmp eq ptr %0, null, !dbg !2997
  %4 = select i1 %3, ptr @default_quoting_options, ptr %0, !dbg !2999
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2993, metadata !DIExpression()), !dbg !2996
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 1, !dbg !3000
  %6 = load i32, ptr %5, align 4, !dbg !3000, !tbaa !3001
  tail call void @llvm.dbg.value(metadata i32 %6, metadata !2995, metadata !DIExpression()), !dbg !2996
  store i32 %1, ptr %5, align 4, !dbg !3002, !tbaa !3001
  ret i32 %6, !dbg !3003
}

; Function Attrs: nounwind uwtable
define dso_local void @set_custom_quoting(ptr noundef writeonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3004 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3008, metadata !DIExpression()), !dbg !3011
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3009, metadata !DIExpression()), !dbg !3011
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3010, metadata !DIExpression()), !dbg !3011
  %4 = icmp eq ptr %0, null, !dbg !3012
  %5 = select i1 %4, ptr @default_quoting_options, ptr %0, !dbg !3014
  tail call void @llvm.dbg.value(metadata ptr %5, metadata !3008, metadata !DIExpression()), !dbg !3011
  store i32 10, ptr %5, align 8, !dbg !3015, !tbaa !2951
  %6 = icmp ne ptr %1, null, !dbg !3016
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !3018
  br i1 %8, label %10, label %9, !dbg !3018

9:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3019
  unreachable, !dbg !3019

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3020
  store ptr %1, ptr %11, align 8, !dbg !3021, !tbaa !3022
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3023
  store ptr %2, ptr %12, align 8, !dbg !3024, !tbaa !3025
  ret void, !dbg !3026
}

; Function Attrs: noreturn nounwind
declare !dbg !3027 void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @quotearg_buffer(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #10 !dbg !3028 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3032, metadata !DIExpression()), !dbg !3040
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3033, metadata !DIExpression()), !dbg !3040
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3034, metadata !DIExpression()), !dbg !3040
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3035, metadata !DIExpression()), !dbg !3040
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !3036, metadata !DIExpression()), !dbg !3040
  %6 = icmp eq ptr %4, null, !dbg !3041
  %7 = select i1 %6, ptr @default_quoting_options, ptr %4, !dbg !3041
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3037, metadata !DIExpression()), !dbg !3040
  %8 = tail call ptr @__errno_location() #41, !dbg !3042
  %9 = load i32, ptr %8, align 4, !dbg !3042, !tbaa !1138
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !3038, metadata !DIExpression()), !dbg !3040
  %10 = load i32, ptr %7, align 8, !dbg !3043, !tbaa !2951
  %11 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 1, !dbg !3044
  %12 = load i32, ptr %11, align 4, !dbg !3044, !tbaa !3001
  %13 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 2, !dbg !3045
  %14 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 3, !dbg !3046
  %15 = load ptr, ptr %14, align 8, !dbg !3046, !tbaa !3022
  %16 = getelementptr inbounds %struct.quoting_options, ptr %7, i64 0, i32 4, !dbg !3047
  %17 = load ptr, ptr %16, align 8, !dbg !3047, !tbaa !3025
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %10, i32 noundef %12, ptr noundef nonnull %13, ptr noundef %15, ptr noundef %17), !dbg !3048
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !3039, metadata !DIExpression()), !dbg !3040
  store i32 %9, ptr %8, align 4, !dbg !3049, !tbaa !1138
  ret i64 %18, !dbg !3050
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #10 !dbg !3051 {
  %10 = alloca i32, align 4, !DIAssignID !3119
  %11 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3120
  %12 = alloca i32, align 4, !DIAssignID !3121
  %13 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3122
  %14 = alloca %struct.__mbstate_t, align 8, !DIAssignID !3123
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3097, metadata !DIExpression(), metadata !3123, metadata ptr %14, metadata !DIExpression()), !dbg !3124
  %15 = alloca i32, align 4, !DIAssignID !3125
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3100, metadata !DIExpression(), metadata !3125, metadata ptr %15, metadata !DIExpression()), !dbg !3126
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3057, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3058, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3059, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3060, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i32 %4, metadata !3061, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !3062, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3063, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !3064, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3065, metadata !DIExpression()), !dbg !3127
  %16 = tail call i64 @__ctype_get_mb_cur_max() #38, !dbg !3128
  %17 = icmp eq i64 %16, 1, !dbg !3129
  tail call void @llvm.dbg.value(metadata i1 %17, metadata !3066, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3067, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3068, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata ptr null, metadata !3069, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3070, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3071, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i32 %5, metadata !3072, metadata !DIExpression(DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_constu, 1, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3073, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3074, metadata !DIExpression()), !dbg !3127
  %18 = and i32 %5, 2, !dbg !3130
  %19 = icmp ne i32 %18, 0, !dbg !3130
  %20 = getelementptr inbounds i8, ptr %2, i64 1
  %21 = and i32 %5, 4
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 1
  %24 = icmp eq i32 %23, 0
  %25 = icmp ne ptr %6, null
  %26 = icmp eq ptr %6, null
  br label %27, !dbg !3130

27:                                               ; preds = %585, %9
  %28 = phi i32 [ %4, %9 ], [ 2, %585 ]
  %29 = phi ptr [ %7, %9 ], [ %103, %585 ]
  %30 = phi ptr [ %8, %9 ], [ %104, %585 ]
  %31 = phi i64 [ %3, %9 ], [ %.lcssa60, %585 ]
  %32 = phi i64 [ 0, %9 ], [ %.lcssa44, %585 ], !dbg !3131
  %33 = phi ptr [ null, %9 ], [ %106, %585 ], !dbg !3132
  %34 = phi i64 [ 0, %9 ], [ %107, %585 ], !dbg !3133
  %35 = phi i1 [ false, %9 ], [ %108, %585 ]
  %36 = phi i1 [ %19, %9 ], [ false, %585 ]
  %37 = phi i1 [ false, %9 ], [ %.lcssa38, %585 ]
  %38 = phi i1 [ true, %9 ], [ false, %585 ]
  %39 = phi i64 [ %1, %9 ], [ %.lcssa44, %585 ]
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !3058, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3074, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3073, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3072, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3071, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %34, metadata !3070, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3069, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %32, metadata !3068, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3067, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %31, metadata !3060, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata ptr %30, metadata !3065, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata ptr %29, metadata !3064, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i32 %28, metadata !3061, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.label(metadata !3075), !dbg !3134
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3076, metadata !DIExpression()), !dbg !3127
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
  ], !dbg !3135

40:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3072, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i32 5, metadata !3061, metadata !DIExpression()), !dbg !3127
  br label %101, !dbg !3136

41:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3072, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i32 5, metadata !3061, metadata !DIExpression()), !dbg !3127
  br i1 %36, label %101, label %42, !dbg !3136

42:                                               ; preds = %41
  %43 = icmp eq i64 %39, 0, !dbg !3137
  br i1 %43, label %101, label %44, !dbg !3141

44:                                               ; preds = %42
  store i8 34, ptr %0, align 1, !dbg !3137, !tbaa !1147
  br label %101, !dbg !3137

45:                                               ; preds = %27, %27
  call void @llvm.dbg.assign(metadata i1 undef, metadata !837, metadata !DIExpression(), metadata !3121, metadata ptr %12, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.assign(metadata i1 undef, metadata !838, metadata !DIExpression(), metadata !3122, metadata ptr %13, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata ptr @.str.11.109, metadata !834, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.value(metadata i32 %28, metadata !835, metadata !DIExpression()), !dbg !3142
  %46 = call ptr @dcgettext(ptr noundef nonnull @.str.13.110, ptr noundef nonnull @.str.11.109, i32 noundef 5) #38, !dbg !3146
  call void @llvm.dbg.value(metadata ptr %46, metadata !836, metadata !DIExpression()), !dbg !3142
  %47 = icmp eq ptr %46, @.str.11.109, !dbg !3147
  br i1 %47, label %48, label %57, !dbg !3149

48:                                               ; preds = %45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #38, !dbg !3150
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #38, !dbg !3151
  call void @llvm.dbg.value(metadata ptr %13, metadata !3152, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata ptr %13, metadata !3160, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i32 0, metadata !3163, metadata !DIExpression()), !dbg !3165
  call void @llvm.dbg.value(metadata i64 8, metadata !3164, metadata !DIExpression()), !dbg !3165
  store i64 0, ptr %13, align 8, !dbg !3167
  %49 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %12, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %13) #38, !dbg !3168
  %50 = icmp eq i64 %49, 3, !dbg !3170
  %51 = load i32, ptr %12, align 4
  %52 = icmp eq i32 %51, 8216
  %53 = select i1 %50, i1 %52, i1 false, !dbg !3171
  %54 = icmp eq i32 %28, 9, !dbg !3171
  %55 = select i1 %54, ptr @.str.10.111, ptr @.str.12.112, !dbg !3171
  %56 = select i1 %53, ptr @gettext_quote.quote, ptr %55, !dbg !3171
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #38, !dbg !3172
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #38, !dbg !3172
  br label %57

57:                                               ; preds = %45, %48
  %58 = phi ptr [ %56, %48 ], [ %46, %45 ], !dbg !3142
  tail call void @llvm.dbg.value(metadata ptr %58, metadata !3064, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.assign(metadata i1 undef, metadata !837, metadata !DIExpression(), metadata !3119, metadata ptr %10, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.assign(metadata i1 undef, metadata !838, metadata !DIExpression(), metadata !3120, metadata ptr %11, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata ptr @.str.12.112, metadata !834, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i32 %28, metadata !835, metadata !DIExpression()), !dbg !3173
  %59 = call ptr @dcgettext(ptr noundef nonnull @.str.13.110, ptr noundef nonnull @.str.12.112, i32 noundef 5) #38, !dbg !3175
  call void @llvm.dbg.value(metadata ptr %59, metadata !836, metadata !DIExpression()), !dbg !3173
  %60 = icmp eq ptr %59, @.str.12.112, !dbg !3176
  br i1 %60, label %61, label %70, !dbg !3177

61:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #38, !dbg !3178
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #38, !dbg !3179
  call void @llvm.dbg.value(metadata ptr %11, metadata !3152, metadata !DIExpression()), !dbg !3180
  call void @llvm.dbg.value(metadata ptr %11, metadata !3160, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i32 0, metadata !3163, metadata !DIExpression()), !dbg !3182
  call void @llvm.dbg.value(metadata i64 8, metadata !3164, metadata !DIExpression()), !dbg !3182
  store i64 0, ptr %11, align 8, !dbg !3184
  %62 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %10, ptr noundef nonnull @gettext_quote.quote, i64 noundef 3, ptr noundef nonnull %11) #38, !dbg !3185
  %63 = icmp eq i64 %62, 3, !dbg !3186
  %64 = load i32, ptr %10, align 4
  %65 = icmp eq i32 %64, 8216
  %66 = select i1 %63, i1 %65, i1 false, !dbg !3187
  %67 = icmp eq i32 %28, 9, !dbg !3187
  %68 = select i1 %67, ptr @.str.10.111, ptr @.str.12.112, !dbg !3187
  %69 = select i1 %66, ptr getelementptr inbounds ([2 x [4 x i8]], ptr @gettext_quote.quote, i64 0, i64 1), ptr %68, !dbg !3187
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #38, !dbg !3188
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #38, !dbg !3188
  br label %70

70:                                               ; preds = %61, %57, %27
  %71 = phi ptr [ %29, %27 ], [ %58, %57 ], [ %58, %61 ]
  %72 = phi ptr [ %30, %27 ], [ %59, %57 ], [ %69, %61 ]
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !3065, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !3064, metadata !DIExpression()), !dbg !3127
  br i1 %36, label %88, label %73, !dbg !3189

73:                                               ; preds = %70
  tail call void @llvm.dbg.value(metadata ptr %71, metadata !3077, metadata !DIExpression()), !dbg !3190
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3067, metadata !DIExpression()), !dbg !3127
  %74 = load i8, ptr %71, align 1, !dbg !3191, !tbaa !1147
  %75 = icmp eq i8 %74, 0, !dbg !3193
  br i1 %75, label %88, label %.preheader11, !dbg !3193

.preheader11:                                     ; preds = %73
  br label %76, !dbg !3193

76:                                               ; preds = %.preheader11, %83
  %77 = phi i8 [ %86, %83 ], [ %74, %.preheader11 ]
  %78 = phi ptr [ %85, %83 ], [ %71, %.preheader11 ]
  %79 = phi i64 [ %84, %83 ], [ 0, %.preheader11 ]
  tail call void @llvm.dbg.value(metadata ptr %78, metadata !3077, metadata !DIExpression()), !dbg !3190
  tail call void @llvm.dbg.value(metadata i64 %79, metadata !3067, metadata !DIExpression()), !dbg !3127
  %80 = icmp ult i64 %79, %39, !dbg !3194
  br i1 %80, label %81, label %83, !dbg !3197

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %0, i64 %79, !dbg !3194
  store i8 %77, ptr %82, align 1, !dbg !3194, !tbaa !1147
  br label %83, !dbg !3194

83:                                               ; preds = %81, %76
  %84 = add i64 %79, 1, !dbg !3197
  tail call void @llvm.dbg.value(metadata i64 %84, metadata !3067, metadata !DIExpression()), !dbg !3127
  %85 = getelementptr inbounds i8, ptr %78, i64 1, !dbg !3198
  tail call void @llvm.dbg.value(metadata ptr %85, metadata !3077, metadata !DIExpression()), !dbg !3190
  %86 = load i8, ptr %85, align 1, !dbg !3191, !tbaa !1147
  %87 = icmp eq i8 %86, 0, !dbg !3193
  br i1 %87, label %.loopexit12, label %76, !dbg !3193, !llvm.loop !3199

.loopexit12:                                      ; preds = %83
  %.lcssa14 = phi i64 [ %84, %83 ], !dbg !3197
  br label %88, !dbg !3201

88:                                               ; preds = %.loopexit12, %73, %70
  %89 = phi i64 [ 0, %70 ], [ 0, %73 ], [ %.lcssa14, %.loopexit12 ], !dbg !3202
  tail call void @llvm.dbg.value(metadata i64 %89, metadata !3067, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3071, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata ptr %72, metadata !3069, metadata !DIExpression()), !dbg !3127
  %90 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #39, !dbg !3201
  tail call void @llvm.dbg.value(metadata i64 %90, metadata !3070, metadata !DIExpression()), !dbg !3127
  br label %101, !dbg !3203

91:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3071, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3072, metadata !DIExpression()), !dbg !3127
  br label %101, !dbg !3204

92:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3072, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3071, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i32 2, metadata !3061, metadata !DIExpression()), !dbg !3127
  br label %101, !dbg !3205

93:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3072, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3071, metadata !DIExpression()), !dbg !3127
  br i1 %36, label %101, label %95, !dbg !3206

94:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3072, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3071, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i32 2, metadata !3061, metadata !DIExpression()), !dbg !3127
  br i1 %36, label %101, label %95, !dbg !3205

95:                                               ; preds = %93, %94
  %96 = phi i1 [ %35, %94 ], [ true, %93 ]
  %97 = icmp eq i64 %39, 0, !dbg !3207
  br i1 %97, label %101, label %98, !dbg !3211

98:                                               ; preds = %95
  store i8 39, ptr %0, align 1, !dbg !3207, !tbaa !1147
  br label %101, !dbg !3207

99:                                               ; preds = %27
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3072, metadata !DIExpression()), !dbg !3127
  br label %101, !dbg !3212

100:                                              ; preds = %27
  call void @abort() #40, !dbg !3213
  unreachable, !dbg !3213

101:                                              ; preds = %93, %91, %92, %40, %94, %98, %95, %27, %41, %44, %42, %99, %88
  %102 = phi i32 [ 0, %99 ], [ %28, %88 ], [ 5, %42 ], [ 5, %44 ], [ 5, %41 ], [ %28, %27 ], [ 2, %95 ], [ 2, %98 ], [ 2, %94 ], [ 5, %40 ], [ 2, %91 ], [ 2, %92 ], [ 2, %93 ]
  %103 = phi ptr [ %29, %99 ], [ %71, %88 ], [ %29, %42 ], [ %29, %44 ], [ %29, %41 ], [ %29, %27 ], [ %29, %95 ], [ %29, %98 ], [ %29, %94 ], [ %29, %40 ], [ %29, %91 ], [ %29, %92 ], [ %29, %93 ]
  %104 = phi ptr [ %30, %99 ], [ %72, %88 ], [ %30, %42 ], [ %30, %44 ], [ %30, %41 ], [ %30, %27 ], [ %30, %95 ], [ %30, %98 ], [ %30, %94 ], [ %30, %40 ], [ %30, %91 ], [ %30, %92 ], [ %30, %93 ]
  %105 = phi i64 [ 0, %99 ], [ %89, %88 ], [ 1, %42 ], [ 1, %44 ], [ 0, %41 ], [ 0, %27 ], [ 1, %95 ], [ 1, %98 ], [ 0, %94 ], [ 0, %40 ], [ 0, %91 ], [ 0, %92 ], [ 0, %93 ], !dbg !3202
  %106 = phi ptr [ %33, %99 ], [ %72, %88 ], [ @.str.10.111, %42 ], [ @.str.10.111, %44 ], [ @.str.10.111, %41 ], [ %33, %27 ], [ @.str.12.112, %95 ], [ @.str.12.112, %98 ], [ @.str.12.112, %94 ], [ @.str.10.111, %40 ], [ @.str.12.112, %91 ], [ @.str.12.112, %92 ], [ @.str.12.112, %93 ], !dbg !3127
  %107 = phi i64 [ %34, %99 ], [ %90, %88 ], [ 1, %42 ], [ 1, %44 ], [ 1, %41 ], [ %34, %27 ], [ 1, %95 ], [ 1, %98 ], [ 1, %94 ], [ 1, %40 ], [ 1, %91 ], [ 1, %92 ], [ 1, %93 ], !dbg !3127
  %108 = phi i1 [ %35, %99 ], [ true, %88 ], [ true, %42 ], [ true, %44 ], [ true, %41 ], [ true, %27 ], [ %96, %95 ], [ %96, %98 ], [ %35, %94 ], [ true, %40 ], [ %35, %91 ], [ true, %92 ], [ %35, %93 ]
  %109 = phi i1 [ false, %99 ], [ %36, %88 ], [ false, %42 ], [ false, %44 ], [ true, %41 ], [ false, %27 ], [ false, %95 ], [ false, %98 ], [ true, %94 ], [ true, %40 ], [ true, %91 ], [ true, %92 ], [ true, %93 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3072, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3071, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %107, metadata !3070, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata ptr %106, metadata !3069, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %105, metadata !3067, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata ptr %104, metadata !3065, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata ptr %103, metadata !3064, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i32 %102, metadata !3061, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3082, metadata !DIExpression()), !dbg !3214
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
  br label %121, !dbg !3215

121:                                              ; preds = %563, %101
  %122 = phi i64 [ %31, %101 ], [ %564, %563 ]
  %123 = phi i64 [ %105, %101 ], [ %565, %563 ], !dbg !3202
  %124 = phi i64 [ %32, %101 ], [ %566, %563 ], !dbg !3131
  %125 = phi i1 [ %37, %101 ], [ %567, %563 ]
  %126 = phi i1 [ %38, %101 ], [ %568, %563 ]
  %127 = phi i1 [ false, %101 ], [ %569, %563 ]
  %128 = phi i64 [ 0, %101 ], [ %572, %563 ], !dbg !3216
  %129 = phi i64 [ %39, %101 ], [ %571, %563 ]
  tail call void @llvm.dbg.value(metadata i64 %129, metadata !3058, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %128, metadata !3082, metadata !DIExpression()), !dbg !3214
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3076, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3074, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3073, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %124, metadata !3068, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %123, metadata !3067, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %122, metadata !3060, metadata !DIExpression()), !dbg !3127
  %130 = icmp eq i64 %122, -1, !dbg !3217
  br i1 %130, label %131, label %135, !dbg !3218

131:                                              ; preds = %121
  %132 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !3219
  %133 = load i8, ptr %132, align 1, !dbg !3219, !tbaa !1147
  %134 = icmp eq i8 %133, 0, !dbg !3220
  br i1 %134, label %573, label %137, !dbg !3221

135:                                              ; preds = %121
  %136 = icmp eq i64 %128, %122, !dbg !3222
  br i1 %136, label %573, label %137, !dbg !3221

137:                                              ; preds = %131, %135
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3084, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3087, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3088, metadata !DIExpression()), !dbg !3223
  br i1 %113, label %138, label %151, !dbg !3224

138:                                              ; preds = %137
  %139 = add i64 %128, %107, !dbg !3226
  %140 = select i1 %130, i1 %114, i1 false, !dbg !3227
  br i1 %140, label %141, label %143, !dbg !3227

141:                                              ; preds = %138
  %142 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !3228
  tail call void @llvm.dbg.value(metadata i64 %142, metadata !3060, metadata !DIExpression()), !dbg !3127
  br label %143, !dbg !3229

143:                                              ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %122, %138 ], !dbg !3229
  tail call void @llvm.dbg.value(metadata i64 %144, metadata !3060, metadata !DIExpression()), !dbg !3127
  %145 = icmp ugt i64 %139, %144, !dbg !3230
  br i1 %145, label %151, label %146, !dbg !3231

146:                                              ; preds = %143
  %147 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !3232
  call void @llvm.dbg.value(metadata ptr %147, metadata !3233, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata ptr %106, metadata !3236, metadata !DIExpression()), !dbg !3238
  call void @llvm.dbg.value(metadata i64 %107, metadata !3237, metadata !DIExpression()), !dbg !3238
  %148 = call i32 @bcmp(ptr %147, ptr %106, i64 %107), !dbg !3240
  %149 = icmp eq i32 %148, 0, !dbg !3241
  %150 = and i1 %149, %109, !dbg !3242
  br i1 %150, label %.loopexit7, label %151, !dbg !3242

151:                                              ; preds = %146, %143, %137
  %152 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %122, %137 ]
  %153 = phi i1 [ %149, %146 ], [ false, %143 ], [ false, %137 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3084, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i64 %152, metadata !3060, metadata !DIExpression()), !dbg !3127
  %154 = getelementptr inbounds i8, ptr %2, i64 %128, !dbg !3243
  %155 = load i8, ptr %154, align 1, !dbg !3243, !tbaa !1147
  tail call void @llvm.dbg.value(metadata i8 %155, metadata !3089, metadata !DIExpression()), !dbg !3223
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
  ], !dbg !3244

156:                                              ; preds = %151
  br i1 %108, label %157, label %203, !dbg !3245

157:                                              ; preds = %156
  br i1 %109, label %613, label %158, !dbg !3246

158:                                              ; preds = %157
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3087, metadata !DIExpression()), !dbg !3223
  %159 = select i1 %110, i1 true, i1 %127, !dbg !3250
  br i1 %159, label %176, label %160, !dbg !3250

160:                                              ; preds = %158
  %161 = icmp ult i64 %123, %129, !dbg !3252
  br i1 %161, label %162, label %164, !dbg !3256

162:                                              ; preds = %160
  %163 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3252
  store i8 39, ptr %163, align 1, !dbg !3252, !tbaa !1147
  br label %164, !dbg !3252

164:                                              ; preds = %162, %160
  %165 = add i64 %123, 1, !dbg !3256
  tail call void @llvm.dbg.value(metadata i64 %165, metadata !3067, metadata !DIExpression()), !dbg !3127
  %166 = icmp ult i64 %165, %129, !dbg !3257
  br i1 %166, label %167, label %169, !dbg !3260

167:                                              ; preds = %164
  %168 = getelementptr inbounds i8, ptr %0, i64 %165, !dbg !3257
  store i8 36, ptr %168, align 1, !dbg !3257, !tbaa !1147
  br label %169, !dbg !3257

169:                                              ; preds = %167, %164
  %170 = add i64 %123, 2, !dbg !3260
  tail call void @llvm.dbg.value(metadata i64 %170, metadata !3067, metadata !DIExpression()), !dbg !3127
  %171 = icmp ult i64 %170, %129, !dbg !3261
  br i1 %171, label %172, label %174, !dbg !3264

172:                                              ; preds = %169
  %173 = getelementptr inbounds i8, ptr %0, i64 %170, !dbg !3261
  store i8 39, ptr %173, align 1, !dbg !3261, !tbaa !1147
  br label %174, !dbg !3261

174:                                              ; preds = %172, %169
  %175 = add i64 %123, 3, !dbg !3264
  tail call void @llvm.dbg.value(metadata i64 %175, metadata !3067, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3076, metadata !DIExpression()), !dbg !3127
  br label %176, !dbg !3265

176:                                              ; preds = %158, %174
  %177 = phi i64 [ %175, %174 ], [ %123, %158 ], !dbg !3127
  %178 = phi i1 [ true, %174 ], [ %127, %158 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3076, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %177, metadata !3067, metadata !DIExpression()), !dbg !3127
  %179 = icmp ult i64 %177, %129, !dbg !3266
  br i1 %179, label %180, label %182, !dbg !3269

180:                                              ; preds = %176
  %181 = getelementptr inbounds i8, ptr %0, i64 %177, !dbg !3266
  store i8 92, ptr %181, align 1, !dbg !3266, !tbaa !1147
  br label %182, !dbg !3266

182:                                              ; preds = %180, %176
  %183 = add i64 %177, 1, !dbg !3269
  tail call void @llvm.dbg.value(metadata i64 %183, metadata !3067, metadata !DIExpression()), !dbg !3127
  br i1 %110, label %184, label %476, !dbg !3270

184:                                              ; preds = %182
  %185 = add i64 %128, 1, !dbg !3272
  %186 = icmp ult i64 %185, %152, !dbg !3273
  br i1 %186, label %187, label %433, !dbg !3274

187:                                              ; preds = %184
  %188 = getelementptr inbounds i8, ptr %2, i64 %185, !dbg !3275
  %189 = load i8, ptr %188, align 1, !dbg !3275, !tbaa !1147
  %190 = add i8 %189, -48, !dbg !3276
  %191 = icmp ult i8 %190, 10, !dbg !3276
  br i1 %191, label %192, label %433, !dbg !3276

192:                                              ; preds = %187
  %193 = icmp ult i64 %183, %129, !dbg !3277
  br i1 %193, label %194, label %196, !dbg !3281

194:                                              ; preds = %192
  %195 = getelementptr inbounds i8, ptr %0, i64 %183, !dbg !3277
  store i8 48, ptr %195, align 1, !dbg !3277, !tbaa !1147
  br label %196, !dbg !3277

196:                                              ; preds = %194, %192
  %197 = add i64 %177, 2, !dbg !3281
  tail call void @llvm.dbg.value(metadata i64 %197, metadata !3067, metadata !DIExpression()), !dbg !3127
  %198 = icmp ult i64 %197, %129, !dbg !3282
  br i1 %198, label %199, label %201, !dbg !3285

199:                                              ; preds = %196
  %200 = getelementptr inbounds i8, ptr %0, i64 %197, !dbg !3282
  store i8 48, ptr %200, align 1, !dbg !3282, !tbaa !1147
  br label %201, !dbg !3282

201:                                              ; preds = %199, %196
  %202 = add i64 %177, 3, !dbg !3285
  tail call void @llvm.dbg.value(metadata i64 %202, metadata !3067, metadata !DIExpression()), !dbg !3127
  br label %433, !dbg !3286

203:                                              ; preds = %156
  br i1 %24, label %444, label %563, !dbg !3287

204:                                              ; preds = %151
  switch i32 %102, label %433 [
    i32 2, label %205
    i32 5, label %206
  ], !dbg !3288

205:                                              ; preds = %204
  br i1 %109, label %.loopexit8, label %433, !dbg !3289

206:                                              ; preds = %204
  br i1 %22, label %433, label %207, !dbg !3291

207:                                              ; preds = %206
  %208 = add i64 %128, 2, !dbg !3293
  %209 = icmp ult i64 %208, %152, !dbg !3294
  br i1 %209, label %210, label %433, !dbg !3295

210:                                              ; preds = %207
  %211 = getelementptr i8, ptr %154, i64 1, !dbg !3296
  %212 = load i8, ptr %211, align 1, !dbg !3296, !tbaa !1147
  %213 = icmp eq i8 %212, 63, !dbg !3297
  br i1 %213, label %214, label %433, !dbg !3298

214:                                              ; preds = %210
  %215 = getelementptr inbounds i8, ptr %2, i64 %208, !dbg !3299
  %216 = load i8, ptr %215, align 1, !dbg !3299, !tbaa !1147
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
  ], !dbg !3300

217:                                              ; preds = %214, %214, %214, %214, %214, %214, %214, %214, %214
  br i1 %109, label %.loopexit8, label %218, !dbg !3301

218:                                              ; preds = %217
  tail call void @llvm.dbg.value(metadata i8 %216, metadata !3089, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i64 %208, metadata !3082, metadata !DIExpression()), !dbg !3214
  %219 = icmp ult i64 %123, %129, !dbg !3303
  br i1 %219, label %220, label %222, !dbg !3306

220:                                              ; preds = %218
  %221 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3303
  store i8 63, ptr %221, align 1, !dbg !3303, !tbaa !1147
  br label %222, !dbg !3303

222:                                              ; preds = %220, %218
  %223 = add i64 %123, 1, !dbg !3306
  tail call void @llvm.dbg.value(metadata i64 %223, metadata !3067, metadata !DIExpression()), !dbg !3127
  %224 = icmp ult i64 %223, %129, !dbg !3307
  br i1 %224, label %225, label %227, !dbg !3310

225:                                              ; preds = %222
  %226 = getelementptr inbounds i8, ptr %0, i64 %223, !dbg !3307
  store i8 34, ptr %226, align 1, !dbg !3307, !tbaa !1147
  br label %227, !dbg !3307

227:                                              ; preds = %225, %222
  %228 = add i64 %123, 2, !dbg !3310
  tail call void @llvm.dbg.value(metadata i64 %228, metadata !3067, metadata !DIExpression()), !dbg !3127
  %229 = icmp ult i64 %228, %129, !dbg !3311
  br i1 %229, label %230, label %232, !dbg !3314

230:                                              ; preds = %227
  %231 = getelementptr inbounds i8, ptr %0, i64 %228, !dbg !3311
  store i8 34, ptr %231, align 1, !dbg !3311, !tbaa !1147
  br label %232, !dbg !3311

232:                                              ; preds = %230, %227
  %233 = add i64 %123, 3, !dbg !3314
  tail call void @llvm.dbg.value(metadata i64 %233, metadata !3067, metadata !DIExpression()), !dbg !3127
  %234 = icmp ult i64 %233, %129, !dbg !3315
  br i1 %234, label %235, label %237, !dbg !3318

235:                                              ; preds = %232
  %236 = getelementptr inbounds i8, ptr %0, i64 %233, !dbg !3315
  store i8 63, ptr %236, align 1, !dbg !3315, !tbaa !1147
  br label %237, !dbg !3315

237:                                              ; preds = %235, %232
  %238 = add i64 %123, 4, !dbg !3318
  tail call void @llvm.dbg.value(metadata i64 %238, metadata !3067, metadata !DIExpression()), !dbg !3127
  br label %433, !dbg !3319

239:                                              ; preds = %151
  br label %249, !dbg !3320

240:                                              ; preds = %151
  br label %249, !dbg !3321

241:                                              ; preds = %151
  br label %247, !dbg !3322

242:                                              ; preds = %151
  br label %247, !dbg !3323

243:                                              ; preds = %151
  br label %249, !dbg !3324

244:                                              ; preds = %151
  br i1 %115, label %245, label %246, !dbg !3325

245:                                              ; preds = %244
  br i1 %109, label %.loopexit8, label %523, !dbg !3326

246:                                              ; preds = %244
  br i1 %117, label %523, label %249, !dbg !3329

247:                                              ; preds = %151, %242, %241
  %248 = phi i8 [ 116, %242 ], [ 114, %241 ], [ 110, %151 ], !dbg !3331
  call void @llvm.dbg.label(metadata !3090), !dbg !3332
  br i1 %118, label %.loopexit8, label %249, !dbg !3333

249:                                              ; preds = %246, %247, %151, %243, %240, %239
  %250 = phi i8 [ %248, %247 ], [ 118, %243 ], [ 102, %240 ], [ 98, %239 ], [ 97, %151 ], [ 92, %246 ], !dbg !3331
  call void @llvm.dbg.label(metadata !3093), !dbg !3335
  br i1 %108, label %487, label %444, !dbg !3336

251:                                              ; preds = %151, %151
  switch i64 %152, label %433 [
    i64 -1, label %252
    i64 1, label %255
  ], !dbg !3337

252:                                              ; preds = %251
  %253 = load i8, ptr %20, align 1, !dbg !3338, !tbaa !1147
  %254 = icmp eq i8 %253, 0, !dbg !3340
  br i1 %254, label %255, label %433, !dbg !3341

255:                                              ; preds = %251, %252, %151, %151
  %256 = icmp eq i64 %128, 0, !dbg !3342
  br i1 %256, label %257, label %433, !dbg !3344

257:                                              ; preds = %255, %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3088, metadata !DIExpression()), !dbg !3223
  br label %258, !dbg !3345

258:                                              ; preds = %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %257
  %259 = phi i1 [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ true, %257 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3088, metadata !DIExpression()), !dbg !3223
  br i1 %115, label %260, label %433, !dbg !3346

260:                                              ; preds = %258
  br i1 %109, label %.loopexit8, label %433, !dbg !3348

261:                                              ; preds = %151
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3073, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3088, metadata !DIExpression()), !dbg !3223
  br i1 %115, label %262, label %433, !dbg !3349

262:                                              ; preds = %261
  br i1 %109, label %.loopexit8, label %263, !dbg !3350

263:                                              ; preds = %262
  %264 = icmp eq i64 %129, 0, !dbg !3353
  %265 = icmp ne i64 %124, 0
  %266 = select i1 %264, i1 true, i1 %265, !dbg !3355
  %267 = select i1 %266, i64 %124, i64 %129, !dbg !3355
  %268 = select i1 %266, i64 %129, i64 0, !dbg !3355
  tail call void @llvm.dbg.value(metadata i64 %268, metadata !3058, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %267, metadata !3068, metadata !DIExpression()), !dbg !3127
  %269 = icmp ult i64 %123, %268, !dbg !3356
  br i1 %269, label %270, label %272, !dbg !3359

270:                                              ; preds = %263
  %271 = getelementptr inbounds i8, ptr %0, i64 %123, !dbg !3356
  store i8 39, ptr %271, align 1, !dbg !3356, !tbaa !1147
  br label %272, !dbg !3356

272:                                              ; preds = %270, %263
  %273 = add i64 %123, 1, !dbg !3359
  tail call void @llvm.dbg.value(metadata i64 %273, metadata !3067, metadata !DIExpression()), !dbg !3127
  %274 = icmp ult i64 %273, %268, !dbg !3360
  br i1 %274, label %275, label %277, !dbg !3363

275:                                              ; preds = %272
  %276 = getelementptr inbounds i8, ptr %0, i64 %273, !dbg !3360
  store i8 92, ptr %276, align 1, !dbg !3360, !tbaa !1147
  br label %277, !dbg !3360

277:                                              ; preds = %275, %272
  %278 = add i64 %123, 2, !dbg !3363
  tail call void @llvm.dbg.value(metadata i64 %278, metadata !3067, metadata !DIExpression()), !dbg !3127
  %279 = icmp ult i64 %278, %268, !dbg !3364
  br i1 %279, label %280, label %282, !dbg !3367

280:                                              ; preds = %277
  %281 = getelementptr inbounds i8, ptr %0, i64 %278, !dbg !3364
  store i8 39, ptr %281, align 1, !dbg !3364, !tbaa !1147
  br label %282, !dbg !3364

282:                                              ; preds = %280, %277
  %283 = add i64 %123, 3, !dbg !3367
  tail call void @llvm.dbg.value(metadata i64 %283, metadata !3067, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3076, metadata !DIExpression()), !dbg !3127
  br label %433, !dbg !3368

284:                                              ; preds = %151
  br i1 %17, label %285, label %293, !dbg !3369

285:                                              ; preds = %284
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3094, metadata !DIExpression()), !dbg !3370
  %286 = tail call ptr @__ctype_b_loc() #41, !dbg !3371
  %287 = load ptr, ptr %286, align 8, !dbg !3371, !tbaa !1069
  %288 = zext i8 %155 to i64
  %289 = getelementptr inbounds i16, ptr %287, i64 %288, !dbg !3371
  %290 = load i16, ptr %289, align 2, !dbg !3371, !tbaa !1179
  %291 = and i16 %290, 16384, !dbg !3371
  %292 = icmp ne i16 %291, 0, !dbg !3373
  tail call void @llvm.dbg.value(metadata i1 %292, metadata !3096, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3370
  br label %334, !dbg !3374

293:                                              ; preds = %284
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #38, !dbg !3375
  call void @llvm.dbg.value(metadata ptr %14, metadata !3152, metadata !DIExpression()), !dbg !3376
  call void @llvm.dbg.value(metadata ptr %14, metadata !3160, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i32 0, metadata !3163, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i64 8, metadata !3164, metadata !DIExpression()), !dbg !3378
  store i64 0, ptr %14, align 8, !dbg !3380
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3094, metadata !DIExpression()), !dbg !3370
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3096, metadata !DIExpression()), !dbg !3370
  %294 = icmp eq i64 %152, -1, !dbg !3381
  br i1 %294, label %295, label %297, !dbg !3383

295:                                              ; preds = %293
  %296 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #39, !dbg !3384
  tail call void @llvm.dbg.value(metadata i64 %296, metadata !3060, metadata !DIExpression()), !dbg !3127
  br label %297, !dbg !3385

297:                                              ; preds = %293, %295
  %298 = phi i64 [ %296, %295 ], [ %152, %293 ], !dbg !3223
  tail call void @llvm.dbg.value(metadata i64 %298, metadata !3060, metadata !DIExpression()), !dbg !3127
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15) #38, !dbg !3386
  %299 = sub i64 %298, %128, !dbg !3387
  %300 = call i64 @rpl_mbrtoc32(ptr noundef nonnull %15, ptr noundef nonnull %154, i64 noundef %299, ptr noundef nonnull %14) #38, !dbg !3388
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !3104, metadata !DIExpression()), !dbg !3126
  switch i64 %300, label %314 [
    i64 0, label %329
    i64 -1, label %303
    i64 -2, label %301
  ], !dbg !3389

301:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3094, metadata !DIExpression()), !dbg !3370
  %302 = icmp ult i64 %128, %298, !dbg !3390
  br i1 %302, label %.preheader5, label %329, !dbg !3392

.preheader5:                                      ; preds = %301
  br label %304, !dbg !3393

303:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3096, metadata !DIExpression()), !dbg !3370
  br label %329, !dbg !3394

304:                                              ; preds = %.preheader5, %310
  %305 = phi i64 [ %312, %310 ], [ %128, %.preheader5 ]
  %306 = phi i64 [ %311, %310 ], [ 0, %.preheader5 ]
  tail call void @llvm.dbg.value(metadata i64 %306, metadata !3094, metadata !DIExpression()), !dbg !3370
  %307 = getelementptr inbounds i8, ptr %2, i64 %305, !dbg !3396
  %308 = load i8, ptr %307, align 1, !dbg !3396, !tbaa !1147
  %309 = icmp eq i8 %308, 0, !dbg !3392
  br i1 %309, label %.loopexit6, label %310, !dbg !3393

310:                                              ; preds = %304
  %311 = add i64 %306, 1, !dbg !3397
  tail call void @llvm.dbg.value(metadata i64 %311, metadata !3094, metadata !DIExpression()), !dbg !3370
  %312 = add i64 %311, %128, !dbg !3398
  %313 = icmp eq i64 %311, %299, !dbg !3390
  br i1 %313, label %.loopexit6, label %304, !dbg !3392, !llvm.loop !3399

314:                                              ; preds = %297
  tail call void @llvm.dbg.value(metadata i64 1, metadata !3105, metadata !DIExpression()), !dbg !3400
  %315 = icmp ugt i64 %300, 1
  %316 = and i1 %115, %315, !dbg !3401
  %317 = and i1 %316, %109, !dbg !3401
  br i1 %317, label %.preheader3, label %325, !dbg !3401

.preheader3:                                      ; preds = %314
  br label %318, !dbg !3402

318:                                              ; preds = %.preheader3, %322
  %319 = phi i64 [ %323, %322 ], [ 1, %.preheader3 ]
  tail call void @llvm.dbg.value(metadata i64 %319, metadata !3105, metadata !DIExpression()), !dbg !3400
  %320 = getelementptr i8, ptr %154, i64 %319, !dbg !3403
  %321 = load i8, ptr %320, align 1, !dbg !3403, !tbaa !1147
  switch i8 %321, label %322 [
    i8 91, label %332
    i8 92, label %332
    i8 94, label %332
    i8 96, label %332
    i8 124, label %332
  ], !dbg !3405

322:                                              ; preds = %318
  %323 = add nuw i64 %319, 1, !dbg !3406
  tail call void @llvm.dbg.value(metadata i64 %323, metadata !3105, metadata !DIExpression()), !dbg !3400
  %324 = icmp eq i64 %323, %300, !dbg !3407
  br i1 %324, label %.loopexit4, label %318, !dbg !3402, !llvm.loop !3408

.loopexit4:                                       ; preds = %322
  br label %325, !dbg !3410

325:                                              ; preds = %.loopexit4, %314
  %326 = load i32, ptr %15, align 4, !dbg !3410, !tbaa !1138
  call void @llvm.dbg.value(metadata i32 %326, metadata !3412, metadata !DIExpression()), !dbg !3415
  %327 = call i32 @iswprint(i32 noundef %326) #38, !dbg !3417
  %328 = icmp ne i32 %327, 0, !dbg !3418
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3096, metadata !DIExpression()), !dbg !3370
  tail call void @llvm.dbg.value(metadata i64 %300, metadata !3094, metadata !DIExpression()), !dbg !3370
  br label %329, !dbg !3419

.loopexit6:                                       ; preds = %310, %304
  %.ph = phi i64 [ %299, %310 ], [ %306, %304 ]
  br label %329, !dbg !3420

329:                                              ; preds = %.loopexit6, %301, %303, %325, %297
  %330 = phi i64 [ %300, %297 ], [ %300, %325 ], [ 0, %303 ], [ 0, %301 ], [ %.ph, %.loopexit6 ]
  %331 = phi i1 [ true, %297 ], [ %328, %325 ], [ false, %303 ], [ false, %301 ], [ false, %.loopexit6 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3096, metadata !DIExpression()), !dbg !3370
  tail call void @llvm.dbg.value(metadata i64 %330, metadata !3094, metadata !DIExpression()), !dbg !3370
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3420
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3421
  br label %334

332:                                              ; preds = %318, %318, %318, %318, %318
  %.lcssa99 = phi ptr [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ], [ %103, %318 ]
  %.lcssa91 = phi ptr [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ], [ %104, %318 ]
  %.lcssa75 = phi i1 [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ], [ %108, %318 ]
  %.lcssa28 = phi i64 [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ], [ %129, %318 ]
  %.lcssa22 = phi i64 [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], [ %298, %318 ], !dbg !3223
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3096, metadata !DIExpression()), !dbg !3370
  tail call void @llvm.dbg.value(metadata i64 0, metadata !3094, metadata !DIExpression()), !dbg !3370
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15) #38, !dbg !3420
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #38, !dbg !3421
  call void @llvm.dbg.label(metadata !3118), !dbg !3422
  %333 = select i1 %.lcssa75, i32 4, i32 2, !dbg !3423
  br label %624, !dbg !3423

334:                                              ; preds = %329, %285
  %335 = phi i64 [ %152, %285 ], [ %298, %329 ], !dbg !3223
  %336 = phi i64 [ 1, %285 ], [ %330, %329 ], !dbg !3425
  %337 = phi i1 [ %292, %285 ], [ %331, %329 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3096, metadata !DIExpression()), !dbg !3370
  tail call void @llvm.dbg.value(metadata i64 %336, metadata !3094, metadata !DIExpression()), !dbg !3370
  tail call void @llvm.dbg.value(metadata i64 %335, metadata !3060, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i1 %337, metadata !3088, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3223
  %338 = icmp ult i64 %336, 2, !dbg !3426
  %339 = select i1 %119, i1 true, i1 %337
  %340 = select i1 %338, i1 %339, i1 false, !dbg !3427
  br i1 %340, label %433, label %341, !dbg !3427

341:                                              ; preds = %334
  %342 = add i64 %336, %128, !dbg !3428
  tail call void @llvm.dbg.value(metadata i64 %342, metadata !3113, metadata !DIExpression()), !dbg !3429
  br label %343, !dbg !3430

343:                                              ; preds = %429, %341
  %344 = phi i64 [ %123, %341 ], [ %430, %429 ], !dbg !3127
  %345 = phi i1 [ %127, %341 ], [ %425, %429 ]
  %346 = phi i64 [ %128, %341 ], [ %407, %429 ], !dbg !3214
  %347 = phi i1 [ %153, %341 ], [ %404, %429 ]
  %348 = phi i1 [ false, %341 ], [ %405, %429 ]
  %349 = phi i8 [ %155, %341 ], [ %432, %429 ], !dbg !3223
  tail call void @llvm.dbg.value(metadata i8 %349, metadata !3089, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3087, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3084, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i64 %346, metadata !3082, metadata !DIExpression()), !dbg !3214
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3076, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %344, metadata !3067, metadata !DIExpression()), !dbg !3127
  br i1 %339, label %394, label %350, !dbg !3431

350:                                              ; preds = %343
  br i1 %109, label %.loopexit1, label %351, !dbg !3436

351:                                              ; preds = %350
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3087, metadata !DIExpression()), !dbg !3223
  %352 = select i1 %110, i1 true, i1 %345, !dbg !3439
  br i1 %352, label %369, label %353, !dbg !3439

353:                                              ; preds = %351
  %354 = icmp ult i64 %344, %129, !dbg !3441
  br i1 %354, label %355, label %357, !dbg !3445

355:                                              ; preds = %353
  %356 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3441
  store i8 39, ptr %356, align 1, !dbg !3441, !tbaa !1147
  br label %357, !dbg !3441

357:                                              ; preds = %355, %353
  %358 = add i64 %344, 1, !dbg !3445
  tail call void @llvm.dbg.value(metadata i64 %358, metadata !3067, metadata !DIExpression()), !dbg !3127
  %359 = icmp ult i64 %358, %129, !dbg !3446
  br i1 %359, label %360, label %362, !dbg !3449

360:                                              ; preds = %357
  %361 = getelementptr inbounds i8, ptr %0, i64 %358, !dbg !3446
  store i8 36, ptr %361, align 1, !dbg !3446, !tbaa !1147
  br label %362, !dbg !3446

362:                                              ; preds = %360, %357
  %363 = add i64 %344, 2, !dbg !3449
  tail call void @llvm.dbg.value(metadata i64 %363, metadata !3067, metadata !DIExpression()), !dbg !3127
  %364 = icmp ult i64 %363, %129, !dbg !3450
  br i1 %364, label %365, label %367, !dbg !3453

365:                                              ; preds = %362
  %366 = getelementptr inbounds i8, ptr %0, i64 %363, !dbg !3450
  store i8 39, ptr %366, align 1, !dbg !3450, !tbaa !1147
  br label %367, !dbg !3450

367:                                              ; preds = %365, %362
  %368 = add i64 %344, 3, !dbg !3453
  tail call void @llvm.dbg.value(metadata i64 %368, metadata !3067, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3076, metadata !DIExpression()), !dbg !3127
  br label %369, !dbg !3454

369:                                              ; preds = %351, %367
  %370 = phi i64 [ %368, %367 ], [ %344, %351 ], !dbg !3127
  %371 = phi i1 [ true, %367 ], [ %345, %351 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3076, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %370, metadata !3067, metadata !DIExpression()), !dbg !3127
  %372 = icmp ult i64 %370, %129, !dbg !3455
  br i1 %372, label %373, label %375, !dbg !3458

373:                                              ; preds = %369
  %374 = getelementptr inbounds i8, ptr %0, i64 %370, !dbg !3455
  store i8 92, ptr %374, align 1, !dbg !3455, !tbaa !1147
  br label %375, !dbg !3455

375:                                              ; preds = %373, %369
  %376 = add i64 %370, 1, !dbg !3458
  tail call void @llvm.dbg.value(metadata i64 %376, metadata !3067, metadata !DIExpression()), !dbg !3127
  %377 = icmp ult i64 %376, %129, !dbg !3459
  br i1 %377, label %378, label %382, !dbg !3462

378:                                              ; preds = %375
  %379 = lshr i8 %349, 6
  %380 = or disjoint i8 %379, 48, !dbg !3459
  %381 = getelementptr inbounds i8, ptr %0, i64 %376, !dbg !3459
  store i8 %380, ptr %381, align 1, !dbg !3459, !tbaa !1147
  br label %382, !dbg !3459

382:                                              ; preds = %378, %375
  %383 = add i64 %370, 2, !dbg !3462
  tail call void @llvm.dbg.value(metadata i64 %383, metadata !3067, metadata !DIExpression()), !dbg !3127
  %384 = icmp ult i64 %383, %129, !dbg !3463
  br i1 %384, label %385, label %390, !dbg !3466

385:                                              ; preds = %382
  %386 = lshr i8 %349, 3
  %387 = and i8 %386, 7, !dbg !3463
  %388 = or disjoint i8 %387, 48, !dbg !3463
  %389 = getelementptr inbounds i8, ptr %0, i64 %383, !dbg !3463
  store i8 %388, ptr %389, align 1, !dbg !3463, !tbaa !1147
  br label %390, !dbg !3463

390:                                              ; preds = %385, %382
  %391 = add i64 %370, 3, !dbg !3466
  tail call void @llvm.dbg.value(metadata i64 %391, metadata !3067, metadata !DIExpression()), !dbg !3127
  %392 = and i8 %349, 7, !dbg !3467
  %393 = or disjoint i8 %392, 48, !dbg !3468
  tail call void @llvm.dbg.value(metadata i8 %393, metadata !3089, metadata !DIExpression()), !dbg !3223
  br label %401, !dbg !3469

394:                                              ; preds = %343
  br i1 %347, label %395, label %401, !dbg !3470

395:                                              ; preds = %394
  %396 = icmp ult i64 %344, %129, !dbg !3471
  br i1 %396, label %397, label %399, !dbg !3476

397:                                              ; preds = %395
  %398 = getelementptr inbounds i8, ptr %0, i64 %344, !dbg !3471
  store i8 92, ptr %398, align 1, !dbg !3471, !tbaa !1147
  br label %399, !dbg !3471

399:                                              ; preds = %397, %395
  %400 = add i64 %344, 1, !dbg !3476
  tail call void @llvm.dbg.value(metadata i64 %400, metadata !3067, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3084, metadata !DIExpression()), !dbg !3223
  br label %401, !dbg !3477

401:                                              ; preds = %394, %399, %390
  %402 = phi i64 [ %400, %399 ], [ %344, %394 ], [ %391, %390 ], !dbg !3127
  %403 = phi i1 [ %345, %399 ], [ %345, %394 ], [ %371, %390 ]
  %404 = phi i1 [ false, %399 ], [ false, %394 ], [ %347, %390 ]
  %405 = phi i1 [ %348, %399 ], [ %348, %394 ], [ true, %390 ]
  %406 = phi i8 [ %349, %399 ], [ %349, %394 ], [ %393, %390 ], !dbg !3223
  tail call void @llvm.dbg.value(metadata i8 %406, metadata !3089, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3087, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3084, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3076, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %402, metadata !3067, metadata !DIExpression()), !dbg !3127
  %407 = add i64 %346, 1, !dbg !3478
  %408 = icmp ugt i64 %342, %407, !dbg !3480
  br i1 %408, label %409, label %.loopexit2, !dbg !3481

409:                                              ; preds = %401
  %410 = xor i1 %403, true, !dbg !3482
  %411 = select i1 %410, i1 true, i1 %405, !dbg !3482
  br i1 %411, label %423, label %412, !dbg !3482

412:                                              ; preds = %409
  %413 = icmp ult i64 %402, %129, !dbg !3485
  br i1 %413, label %414, label %416, !dbg !3489

414:                                              ; preds = %412
  %415 = getelementptr inbounds i8, ptr %0, i64 %402, !dbg !3485
  store i8 39, ptr %415, align 1, !dbg !3485, !tbaa !1147
  br label %416, !dbg !3485

416:                                              ; preds = %414, %412
  %417 = add i64 %402, 1, !dbg !3489
  tail call void @llvm.dbg.value(metadata i64 %417, metadata !3067, metadata !DIExpression()), !dbg !3127
  %418 = icmp ult i64 %417, %129, !dbg !3490
  br i1 %418, label %419, label %421, !dbg !3493

419:                                              ; preds = %416
  %420 = getelementptr inbounds i8, ptr %0, i64 %417, !dbg !3490
  store i8 39, ptr %420, align 1, !dbg !3490, !tbaa !1147
  br label %421, !dbg !3490

421:                                              ; preds = %419, %416
  %422 = add i64 %402, 2, !dbg !3493
  tail call void @llvm.dbg.value(metadata i64 %422, metadata !3067, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3076, metadata !DIExpression()), !dbg !3127
  br label %423, !dbg !3494

423:                                              ; preds = %409, %421
  %424 = phi i64 [ %422, %421 ], [ %402, %409 ], !dbg !3495
  %425 = phi i1 [ false, %421 ], [ %403, %409 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3076, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %424, metadata !3067, metadata !DIExpression()), !dbg !3127
  %426 = icmp ult i64 %424, %129, !dbg !3496
  br i1 %426, label %427, label %429, !dbg !3499

427:                                              ; preds = %423
  %428 = getelementptr inbounds i8, ptr %0, i64 %424, !dbg !3496
  store i8 %406, ptr %428, align 1, !dbg !3496, !tbaa !1147
  br label %429, !dbg !3496

429:                                              ; preds = %427, %423
  %430 = add i64 %424, 1, !dbg !3499
  tail call void @llvm.dbg.value(metadata i64 %430, metadata !3067, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %407, metadata !3082, metadata !DIExpression()), !dbg !3214
  %431 = getelementptr inbounds i8, ptr %2, i64 %407, !dbg !3500
  %432 = load i8, ptr %431, align 1, !dbg !3500, !tbaa !1147
  tail call void @llvm.dbg.value(metadata i8 %432, metadata !3089, metadata !DIExpression()), !dbg !3223
  br label %343, !dbg !3501, !llvm.loop !3502

433:                                              ; preds = %334, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %151, %251, %184, %187, %201, %261, %282, %258, %260, %255, %252, %204, %205, %237, %214, %210, %207, %206
  %434 = phi i64 [ %152, %282 ], [ %152, %261 ], [ %152, %260 ], [ %152, %258 ], [ %152, %255 ], [ -1, %252 ], [ %152, %204 ], [ %152, %214 ], [ %152, %237 ], [ %152, %210 ], [ %152, %207 ], [ %152, %206 ], [ %152, %205 ], [ %152, %201 ], [ %152, %187 ], [ %152, %184 ], [ %152, %251 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %152, %151 ], [ %335, %334 ], !dbg !3505
  %435 = phi i64 [ %283, %282 ], [ %123, %261 ], [ %123, %260 ], [ %123, %258 ], [ %123, %255 ], [ %123, %252 ], [ %123, %204 ], [ %123, %214 ], [ %238, %237 ], [ %123, %210 ], [ %123, %207 ], [ %123, %206 ], [ %123, %205 ], [ %202, %201 ], [ %183, %187 ], [ %183, %184 ], [ %123, %251 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %151 ], [ %123, %334 ], !dbg !3127
  %436 = phi i64 [ %267, %282 ], [ %124, %261 ], [ %124, %260 ], [ %124, %258 ], [ %124, %255 ], [ %124, %252 ], [ %124, %204 ], [ %124, %214 ], [ %124, %237 ], [ %124, %210 ], [ %124, %207 ], [ %124, %206 ], [ %124, %205 ], [ %124, %201 ], [ %124, %187 ], [ %124, %184 ], [ %124, %251 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %151 ], [ %124, %334 ], !dbg !3131
  %437 = phi i1 [ true, %282 ], [ true, %261 ], [ %125, %260 ], [ %125, %258 ], [ %125, %255 ], [ %125, %252 ], [ %125, %204 ], [ %125, %214 ], [ %125, %237 ], [ %125, %210 ], [ %125, %207 ], [ %125, %206 ], [ %125, %205 ], [ %125, %201 ], [ %125, %187 ], [ %125, %184 ], [ %125, %251 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %151 ], [ %125, %334 ]
  %438 = phi i1 [ false, %282 ], [ %127, %261 ], [ %127, %260 ], [ %127, %258 ], [ %127, %255 ], [ %127, %252 ], [ %127, %204 ], [ %127, %214 ], [ %127, %237 ], [ %127, %210 ], [ %127, %207 ], [ %127, %206 ], [ %127, %205 ], [ %178, %201 ], [ %178, %187 ], [ %178, %184 ], [ %127, %251 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %151 ], [ %127, %334 ]
  %439 = phi i64 [ %128, %282 ], [ %128, %261 ], [ %128, %260 ], [ %128, %258 ], [ %128, %255 ], [ %128, %252 ], [ %128, %204 ], [ %128, %214 ], [ %208, %237 ], [ %128, %210 ], [ %128, %207 ], [ %128, %206 ], [ %128, %205 ], [ %128, %201 ], [ %128, %187 ], [ %128, %184 ], [ %128, %251 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %151 ], [ %128, %334 ], !dbg !3214
  %440 = phi i1 [ false, %282 ], [ false, %261 ], [ false, %260 ], [ false, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ true, %201 ], [ true, %187 ], [ true, %184 ], [ false, %251 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %151 ], [ false, %334 ]
  %441 = phi i1 [ true, %282 ], [ true, %261 ], [ %259, %260 ], [ %259, %258 ], [ false, %255 ], [ false, %252 ], [ false, %204 ], [ false, %214 ], [ false, %237 ], [ false, %210 ], [ false, %207 ], [ false, %206 ], [ false, %205 ], [ false, %201 ], [ false, %187 ], [ false, %184 ], [ false, %251 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ true, %151 ], [ %337, %334 ]
  %442 = phi i8 [ 39, %282 ], [ 39, %261 ], [ %155, %260 ], [ %155, %258 ], [ %155, %255 ], [ %155, %252 ], [ 63, %204 ], [ 63, %214 ], [ %216, %237 ], [ 63, %210 ], [ 63, %207 ], [ 63, %206 ], [ 63, %205 ], [ 48, %201 ], [ 48, %187 ], [ 48, %184 ], [ %155, %251 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %151 ], [ %155, %334 ], !dbg !3223
  %443 = phi i64 [ %268, %282 ], [ %129, %261 ], [ %129, %260 ], [ %129, %258 ], [ %129, %255 ], [ %129, %252 ], [ %129, %204 ], [ %129, %214 ], [ %129, %237 ], [ %129, %210 ], [ %129, %207 ], [ %129, %206 ], [ %129, %205 ], [ %129, %201 ], [ %129, %187 ], [ %129, %184 ], [ %129, %251 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %151 ], [ %129, %334 ]
  tail call void @llvm.dbg.value(metadata i64 %443, metadata !3058, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 %442, metadata !3089, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3088, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3087, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3084, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i64 %439, metadata !3082, metadata !DIExpression()), !dbg !3214
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3076, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3073, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %436, metadata !3068, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %435, metadata !3067, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %434, metadata !3060, metadata !DIExpression()), !dbg !3127
  br i1 %111, label %455, label %444, !dbg !3506

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
  br i1 %120, label %456, label %476, !dbg !3508

455:                                              ; preds = %433
  br i1 %26, label %476, label %456, !dbg !3509

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
  %467 = lshr i8 %458, 5, !dbg !3510
  %468 = zext nneg i8 %467 to i64, !dbg !3510
  %469 = getelementptr inbounds i32, ptr %6, i64 %468, !dbg !3511
  %470 = load i32, ptr %469, align 4, !dbg !3511, !tbaa !1138
  %471 = and i8 %458, 31, !dbg !3512
  %472 = zext nneg i8 %471 to i32, !dbg !3512
  %473 = shl nuw i32 1, %472, !dbg !3513
  %474 = and i32 %470, %473, !dbg !3513
  %475 = icmp eq i32 %474, 0, !dbg !3513
  br i1 %475, label %476, label %487, !dbg !3514

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
  br i1 %153, label %487, label %523, !dbg !3515

487:                                              ; preds = %249, %476, %456
  %488 = phi i64 [ %466, %456 ], [ %486, %476 ], [ %152, %249 ], !dbg !3505
  %489 = phi i64 [ %465, %456 ], [ %485, %476 ], [ %123, %249 ], !dbg !3127
  %490 = phi i64 [ %464, %456 ], [ %484, %476 ], [ %124, %249 ], !dbg !3131
  %491 = phi i1 [ %463, %456 ], [ %483, %476 ], [ %125, %249 ]
  %492 = phi i1 [ %462, %456 ], [ %482, %476 ], [ %127, %249 ]
  %493 = phi i64 [ %461, %456 ], [ %481, %476 ], [ %128, %249 ], !dbg !3516
  %494 = phi i1 [ %459, %456 ], [ %479, %476 ], [ false, %249 ]
  %495 = phi i8 [ %458, %456 ], [ %478, %476 ], [ %250, %249 ], !dbg !3223
  %496 = phi i64 [ %457, %456 ], [ %477, %476 ], [ %129, %249 ]
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !3058, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !3089, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3088, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !3082, metadata !DIExpression()), !dbg !3214
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3076, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3073, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !3068, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %489, metadata !3067, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !3060, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.label(metadata !3116), !dbg !3517
  br i1 %109, label %.loopexit8, label %497, !dbg !3518

497:                                              ; preds = %487
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3087, metadata !DIExpression()), !dbg !3223
  %498 = select i1 %110, i1 true, i1 %492, !dbg !3520
  br i1 %498, label %515, label %499, !dbg !3520

499:                                              ; preds = %497
  %500 = icmp ult i64 %489, %496, !dbg !3522
  br i1 %500, label %501, label %503, !dbg !3526

501:                                              ; preds = %499
  %502 = getelementptr inbounds i8, ptr %0, i64 %489, !dbg !3522
  store i8 39, ptr %502, align 1, !dbg !3522, !tbaa !1147
  br label %503, !dbg !3522

503:                                              ; preds = %501, %499
  %504 = add i64 %489, 1, !dbg !3526
  tail call void @llvm.dbg.value(metadata i64 %504, metadata !3067, metadata !DIExpression()), !dbg !3127
  %505 = icmp ult i64 %504, %496, !dbg !3527
  br i1 %505, label %506, label %508, !dbg !3530

506:                                              ; preds = %503
  %507 = getelementptr inbounds i8, ptr %0, i64 %504, !dbg !3527
  store i8 36, ptr %507, align 1, !dbg !3527, !tbaa !1147
  br label %508, !dbg !3527

508:                                              ; preds = %506, %503
  %509 = add i64 %489, 2, !dbg !3530
  tail call void @llvm.dbg.value(metadata i64 %509, metadata !3067, metadata !DIExpression()), !dbg !3127
  %510 = icmp ult i64 %509, %496, !dbg !3531
  br i1 %510, label %511, label %513, !dbg !3534

511:                                              ; preds = %508
  %512 = getelementptr inbounds i8, ptr %0, i64 %509, !dbg !3531
  store i8 39, ptr %512, align 1, !dbg !3531, !tbaa !1147
  br label %513, !dbg !3531

513:                                              ; preds = %511, %508
  %514 = add i64 %489, 3, !dbg !3534
  tail call void @llvm.dbg.value(metadata i64 %514, metadata !3067, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 1, metadata !3076, metadata !DIExpression()), !dbg !3127
  br label %515, !dbg !3535

515:                                              ; preds = %497, %513
  %516 = phi i64 [ %514, %513 ], [ %489, %497 ], !dbg !3223
  %517 = phi i1 [ true, %513 ], [ %492, %497 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3076, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %516, metadata !3067, metadata !DIExpression()), !dbg !3127
  %518 = icmp ult i64 %516, %496, !dbg !3536
  br i1 %518, label %519, label %521, !dbg !3539

519:                                              ; preds = %515
  %520 = getelementptr inbounds i8, ptr %0, i64 %516, !dbg !3536
  store i8 92, ptr %520, align 1, !dbg !3536, !tbaa !1147
  br label %521, !dbg !3536

521:                                              ; preds = %515, %519
  %522 = add i64 %516, 1, !dbg !3539
  tail call void @llvm.dbg.value(metadata i64 %496, metadata !3058, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 %495, metadata !3089, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3088, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3087, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i64 %493, metadata !3082, metadata !DIExpression()), !dbg !3214
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3076, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3073, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %490, metadata !3068, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %522, metadata !3067, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %488, metadata !3060, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.label(metadata !3117), !dbg !3540
  br label %547, !dbg !3541

.loopexit2:                                       ; preds = %401
  %.lcssa20 = phi i64 [ %402, %401 ], !dbg !3127
  %.lcssa19 = phi i1 [ %403, %401 ]
  %.lcssa18 = phi i1 [ %405, %401 ]
  %.lcssa17 = phi i8 [ %406, %401 ], !dbg !3223
  %.lcssa16 = phi i64 [ %346, %401 ], !dbg !3214
  br label %523, !dbg !3541

523:                                              ; preds = %.loopexit2, %246, %245, %476
  %524 = phi i64 [ %486, %476 ], [ %152, %245 ], [ %152, %246 ], [ %335, %.loopexit2 ], !dbg !3505
  %525 = phi i64 [ %485, %476 ], [ %123, %245 ], [ %123, %246 ], [ %.lcssa20, %.loopexit2 ], !dbg !3127
  %526 = phi i64 [ %484, %476 ], [ %124, %245 ], [ %124, %246 ], [ %124, %.loopexit2 ], !dbg !3131
  %527 = phi i1 [ %483, %476 ], [ %125, %245 ], [ %125, %246 ], [ %125, %.loopexit2 ]
  %528 = phi i1 [ %482, %476 ], [ %127, %245 ], [ %127, %246 ], [ %.lcssa19, %.loopexit2 ]
  %529 = phi i64 [ %481, %476 ], [ %128, %245 ], [ %128, %246 ], [ %.lcssa16, %.loopexit2 ], !dbg !3516
  %530 = phi i1 [ %480, %476 ], [ false, %245 ], [ false, %246 ], [ %.lcssa18, %.loopexit2 ]
  %531 = phi i1 [ %479, %476 ], [ false, %245 ], [ false, %246 ], [ %337, %.loopexit2 ]
  %532 = phi i8 [ %478, %476 ], [ 92, %245 ], [ 92, %246 ], [ %.lcssa17, %.loopexit2 ], !dbg !3544
  %533 = phi i64 [ %477, %476 ], [ %129, %245 ], [ %129, %246 ], [ %129, %.loopexit2 ]
  tail call void @llvm.dbg.value(metadata i64 %533, metadata !3058, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 %532, metadata !3089, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3088, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3087, metadata !DIExpression()), !dbg !3223
  tail call void @llvm.dbg.value(metadata i64 %529, metadata !3082, metadata !DIExpression()), !dbg !3214
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3076, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3073, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %526, metadata !3068, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %525, metadata !3067, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %524, metadata !3060, metadata !DIExpression()), !dbg !3127
  call void @llvm.dbg.label(metadata !3117), !dbg !3540
  %534 = xor i1 %528, true, !dbg !3541
  %535 = select i1 %534, i1 true, i1 %530, !dbg !3541
  br i1 %535, label %547, label %536, !dbg !3541

536:                                              ; preds = %523
  %537 = icmp ult i64 %525, %533, !dbg !3545
  br i1 %537, label %538, label %540, !dbg !3549

538:                                              ; preds = %536
  %539 = getelementptr inbounds i8, ptr %0, i64 %525, !dbg !3545
  store i8 39, ptr %539, align 1, !dbg !3545, !tbaa !1147
  br label %540, !dbg !3545

540:                                              ; preds = %538, %536
  %541 = add i64 %525, 1, !dbg !3549
  tail call void @llvm.dbg.value(metadata i64 %541, metadata !3067, metadata !DIExpression()), !dbg !3127
  %542 = icmp ult i64 %541, %533, !dbg !3550
  br i1 %542, label %543, label %545, !dbg !3553

543:                                              ; preds = %540
  %544 = getelementptr inbounds i8, ptr %0, i64 %541, !dbg !3550
  store i8 39, ptr %544, align 1, !dbg !3550, !tbaa !1147
  br label %545, !dbg !3550

545:                                              ; preds = %543, %540
  %546 = add i64 %525, 2, !dbg !3553
  tail call void @llvm.dbg.value(metadata i64 %546, metadata !3067, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 0, metadata !3076, metadata !DIExpression()), !dbg !3127
  br label %547, !dbg !3554

547:                                              ; preds = %521, %523, %545
  %548 = phi i64 [ %533, %545 ], [ %533, %523 ], [ %496, %521 ]
  %549 = phi i8 [ %532, %545 ], [ %532, %523 ], [ %495, %521 ]
  %550 = phi i1 [ %531, %545 ], [ %531, %523 ], [ %494, %521 ]
  %551 = phi i64 [ %529, %545 ], [ %529, %523 ], [ %493, %521 ]
  %552 = phi i1 [ %527, %545 ], [ %527, %523 ], [ %491, %521 ]
  %553 = phi i64 [ %526, %545 ], [ %526, %523 ], [ %490, %521 ]
  %554 = phi i64 [ %524, %545 ], [ %524, %523 ], [ %488, %521 ]
  %555 = phi i64 [ %546, %545 ], [ %525, %523 ], [ %522, %521 ], !dbg !3223
  %556 = phi i1 [ false, %545 ], [ %528, %523 ], [ %517, %521 ]
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3076, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %555, metadata !3067, metadata !DIExpression()), !dbg !3127
  %557 = icmp ult i64 %555, %548, !dbg !3555
  br i1 %557, label %558, label %560, !dbg !3558

558:                                              ; preds = %547
  %559 = getelementptr inbounds i8, ptr %0, i64 %555, !dbg !3555
  store i8 %549, ptr %559, align 1, !dbg !3555, !tbaa !1147
  br label %560, !dbg !3555

560:                                              ; preds = %558, %547
  %561 = add i64 %555, 1, !dbg !3558
  tail call void @llvm.dbg.value(metadata i64 %561, metadata !3067, metadata !DIExpression()), !dbg !3127
  %562 = select i1 %550, i1 %126, i1 false, !dbg !3559
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3074, metadata !DIExpression()), !dbg !3127
  br label %563, !dbg !3560

563:                                              ; preds = %203, %560
  %564 = phi i64 [ %554, %560 ], [ %152, %203 ], !dbg !3505
  %565 = phi i64 [ %561, %560 ], [ %123, %203 ], !dbg !3127
  %566 = phi i64 [ %553, %560 ], [ %124, %203 ], !dbg !3131
  %567 = phi i1 [ %552, %560 ], [ %125, %203 ]
  %568 = phi i1 [ %562, %560 ], [ %126, %203 ]
  %569 = phi i1 [ %556, %560 ], [ %127, %203 ]
  %570 = phi i64 [ %551, %560 ], [ %128, %203 ], !dbg !3516
  %571 = phi i64 [ %548, %560 ], [ %129, %203 ]
  tail call void @llvm.dbg.value(metadata i64 %571, metadata !3058, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %570, metadata !3082, metadata !DIExpression()), !dbg !3214
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3076, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3074, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3073, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %566, metadata !3068, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %565, metadata !3067, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %564, metadata !3060, metadata !DIExpression()), !dbg !3127
  %572 = add i64 %570, 1, !dbg !3561
  tail call void @llvm.dbg.value(metadata i64 %572, metadata !3082, metadata !DIExpression()), !dbg !3214
  br label %121, !dbg !3562, !llvm.loop !3563

573:                                              ; preds = %135, %131
  %.lcssa60 = phi i64 [ %122, %135 ], [ %122, %131 ]
  %.lcssa52 = phi i64 [ %123, %135 ], [ %123, %131 ], !dbg !3202
  %.lcssa44 = phi i64 [ %124, %135 ], [ %124, %131 ], !dbg !3131
  %.lcssa38 = phi i1 [ %125, %135 ], [ %125, %131 ]
  %.lcssa32 = phi i1 [ %126, %135 ], [ %126, %131 ]
  %.lcssa24 = phi i64 [ %129, %135 ], [ %129, %131 ]
  tail call void @llvm.dbg.value(metadata i64 %.lcssa24, metadata !3058, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3074, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !3073, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %.lcssa44, metadata !3068, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52, metadata !3067, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %.lcssa60, metadata !3060, metadata !DIExpression()), !dbg !3127
  %574 = icmp ne i64 %.lcssa52, 0, !dbg !3565
  %575 = xor i1 %109, true, !dbg !3567
  %576 = or i1 %574, %575, !dbg !3567
  %577 = or i1 %576, %110, !dbg !3567
  br i1 %577, label %578, label %.loopexit13, !dbg !3567

578:                                              ; preds = %573
  %579 = or i1 %110, %109, !dbg !3568
  %580 = xor i1 %.lcssa38, true, !dbg !3568
  %581 = select i1 %579, i1 true, i1 %580, !dbg !3568
  br i1 %581, label %589, label %582, !dbg !3568

582:                                              ; preds = %578
  br i1 %.lcssa32, label %583, label %585, !dbg !3570

583:                                              ; preds = %582
  %.lcssa103 = phi ptr [ %103, %582 ]
  %.lcssa95 = phi ptr [ %104, %582 ]
  %.lcssa60.lcssa67 = phi i64 [ %.lcssa60, %582 ]
  %.lcssa44.lcssa51 = phi i64 [ %.lcssa44, %582 ], !dbg !3131
  %584 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %.lcssa44.lcssa51, ptr noundef %2, i64 noundef %.lcssa60.lcssa67, i32 noundef 5, i32 noundef %5, ptr noundef %6, ptr noundef %.lcssa103, ptr noundef %.lcssa95), !dbg !3572
  br label %638, !dbg !3574

585:                                              ; preds = %582
  %586 = icmp eq i64 %.lcssa24, 0, !dbg !3575
  %587 = icmp ne i64 %.lcssa44, 0
  %588 = select i1 %586, i1 %587, i1 false, !dbg !3577
  br i1 %588, label %27, label %589, !dbg !3577

589:                                              ; preds = %578, %585
  %.lcssa86 = phi ptr [ %106, %578 ], [ %106, %585 ], !dbg !3127
  %.lcssa52.lcssa58 = phi i64 [ %.lcssa52, %578 ], [ %.lcssa52, %585 ], !dbg !3202
  %.lcssa24.lcssa30 = phi i64 [ %.lcssa24, %578 ], [ %.lcssa24, %585 ]
  %590 = phi i1 [ %109, %578 ], [ false, %585 ]
  %591 = icmp eq ptr %.lcssa86, null, !dbg !3578
  %592 = or i1 %591, %590, !dbg !3580
  br i1 %592, label %608, label %593, !dbg !3580

593:                                              ; preds = %589
  tail call void @llvm.dbg.value(metadata ptr %.lcssa86, metadata !3069, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %.lcssa52.lcssa58, metadata !3067, metadata !DIExpression()), !dbg !3127
  %594 = load i8, ptr %.lcssa86, align 1, !dbg !3581, !tbaa !1147
  %595 = icmp eq i8 %594, 0, !dbg !3584
  br i1 %595, label %608, label %.preheader, !dbg !3584

.preheader:                                       ; preds = %593
  br label %596, !dbg !3584

596:                                              ; preds = %.preheader, %603
  %597 = phi i8 [ %606, %603 ], [ %594, %.preheader ]
  %598 = phi ptr [ %605, %603 ], [ %.lcssa86, %.preheader ]
  %599 = phi i64 [ %604, %603 ], [ %.lcssa52.lcssa58, %.preheader ]
  tail call void @llvm.dbg.value(metadata ptr %598, metadata !3069, metadata !DIExpression()), !dbg !3127
  tail call void @llvm.dbg.value(metadata i64 %599, metadata !3067, metadata !DIExpression()), !dbg !3127
  %600 = icmp ult i64 %599, %.lcssa24.lcssa30, !dbg !3585
  br i1 %600, label %601, label %603, !dbg !3588

601:                                              ; preds = %596
  %602 = getelementptr inbounds i8, ptr %0, i64 %599, !dbg !3585
  store i8 %597, ptr %602, align 1, !dbg !3585, !tbaa !1147
  br label %603, !dbg !3585

603:                                              ; preds = %601, %596
  %604 = add i64 %599, 1, !dbg !3588
  tail call void @llvm.dbg.value(metadata i64 %604, metadata !3067, metadata !DIExpression()), !dbg !3127
  %605 = getelementptr inbounds i8, ptr %598, i64 1, !dbg !3589
  tail call void @llvm.dbg.value(metadata ptr %605, metadata !3069, metadata !DIExpression()), !dbg !3127
  %606 = load i8, ptr %605, align 1, !dbg !3581, !tbaa !1147
  %607 = icmp eq i8 %606, 0, !dbg !3584
  br i1 %607, label %.loopexit, label %596, !dbg !3584, !llvm.loop !3590

.loopexit:                                        ; preds = %603
  %.lcssa = phi i64 [ %604, %603 ], !dbg !3588
  br label %608, !dbg !3592

608:                                              ; preds = %.loopexit, %593, %589
  %609 = phi i64 [ %.lcssa52.lcssa58, %589 ], [ %.lcssa52.lcssa58, %593 ], [ %.lcssa, %.loopexit ], !dbg !3202
  tail call void @llvm.dbg.value(metadata i64 %609, metadata !3067, metadata !DIExpression()), !dbg !3127
  %610 = icmp ult i64 %609, %.lcssa24.lcssa30, !dbg !3592
  br i1 %610, label %611, label %638, !dbg !3594

611:                                              ; preds = %608
  %612 = getelementptr inbounds i8, ptr %0, i64 %609, !dbg !3595
  store i8 0, ptr %612, align 1, !dbg !3596, !tbaa !1147
  br label %638, !dbg !3595

613:                                              ; preds = %157
  %.lcssa106 = phi i32 [ %102, %157 ]
  %.lcssa98 = phi ptr [ %103, %157 ]
  %.lcssa90 = phi ptr [ %104, %157 ]
  %.lcssa69 = phi i64 [ %152, %157 ]
  %.lcssa27 = phi i64 [ %129, %157 ]
  call void @llvm.dbg.label(metadata !3118), !dbg !3422
  %614 = icmp eq i32 %.lcssa106, 2, !dbg !3597
  br i1 %614, label %624, label %630, !dbg !3423

.loopexit1:                                       ; preds = %350
  %.lcssa108 = phi i32 [ %102, %350 ]
  %.lcssa100 = phi ptr [ %103, %350 ]
  %.lcssa92 = phi ptr [ %104, %350 ]
  %.lcssa76 = phi i1 [ %108, %350 ]
  %.lcssa29 = phi i64 [ %129, %350 ]
  %.lcssa23 = phi i64 [ %335, %350 ], !dbg !3223
  br label %615, !dbg !3597

.loopexit8:                                       ; preds = %205, %217, %245, %247, %260, %262, %487
  %.lcssa105 = phi i32 [ %102, %205 ], [ %102, %217 ], [ %102, %245 ], [ %102, %247 ], [ %102, %260 ], [ %102, %262 ], [ %102, %487 ]
  %.lcssa97 = phi ptr [ %103, %205 ], [ %103, %217 ], [ %103, %245 ], [ %103, %247 ], [ %103, %260 ], [ %103, %262 ], [ %103, %487 ]
  %.lcssa89 = phi ptr [ %104, %205 ], [ %104, %217 ], [ %104, %245 ], [ %104, %247 ], [ %104, %260 ], [ %104, %262 ], [ %104, %487 ]
  %.lcssa73 = phi i1 [ %108, %205 ], [ %108, %217 ], [ %108, %245 ], [ %108, %247 ], [ %108, %260 ], [ %108, %262 ], [ %108, %487 ]
  %.ph9 = phi i64 [ %129, %205 ], [ %129, %217 ], [ %129, %245 ], [ %129, %247 ], [ %129, %260 ], [ %129, %262 ], [ %496, %487 ]
  %.ph10 = phi i64 [ %152, %205 ], [ %152, %217 ], [ %152, %245 ], [ %152, %247 ], [ %152, %260 ], [ %152, %262 ], [ %488, %487 ]
  br label %615, !dbg !3597

.loopexit13:                                      ; preds = %573
  %.lcssa109 = phi i32 [ %102, %573 ]
  %.lcssa101 = phi ptr [ %103, %573 ]
  %.lcssa93 = phi ptr [ %104, %573 ]
  %.lcssa77 = phi i1 [ %108, %573 ]
  %.lcssa60.lcssa = phi i64 [ %.lcssa60, %573 ]
  %.lcssa24.lcssa = phi i64 [ %.lcssa24, %573 ]
  br label %615, !dbg !3597

615:                                              ; preds = %.loopexit13, %.loopexit8, %.loopexit1
  %616 = phi i32 [ %.lcssa108, %.loopexit1 ], [ %.lcssa105, %.loopexit8 ], [ %.lcssa109, %.loopexit13 ]
  %617 = phi ptr [ %.lcssa100, %.loopexit1 ], [ %.lcssa97, %.loopexit8 ], [ %.lcssa101, %.loopexit13 ]
  %618 = phi ptr [ %.lcssa92, %.loopexit1 ], [ %.lcssa89, %.loopexit8 ], [ %.lcssa93, %.loopexit13 ]
  %619 = phi i1 [ %.lcssa76, %.loopexit1 ], [ %.lcssa73, %.loopexit8 ], [ %.lcssa77, %.loopexit13 ]
  %620 = phi i64 [ %.lcssa29, %.loopexit1 ], [ %.ph9, %.loopexit8 ], [ %.lcssa24.lcssa, %.loopexit13 ]
  %621 = phi i64 [ %.lcssa23, %.loopexit1 ], [ %.ph10, %.loopexit8 ], [ %.lcssa60.lcssa, %.loopexit13 ]
  call void @llvm.dbg.label(metadata !3118), !dbg !3422
  %622 = icmp eq i32 %616, 2, !dbg !3597
  %623 = select i1 %619, i32 4, i32 2, !dbg !3423
  br i1 %622, label %624, label %630, !dbg !3423

624:                                              ; preds = %332, %615, %613
  %625 = phi ptr [ %.lcssa98, %613 ], [ %.lcssa99, %332 ], [ %617, %615 ]
  %626 = phi ptr [ %.lcssa90, %613 ], [ %.lcssa91, %332 ], [ %618, %615 ]
  %627 = phi i32 [ 4, %613 ], [ %333, %332 ], [ %623, %615 ]
  %628 = phi i64 [ %.lcssa27, %613 ], [ %.lcssa28, %332 ], [ %620, %615 ]
  %629 = phi i64 [ %.lcssa69, %613 ], [ %.lcssa22, %332 ], [ %621, %615 ]
  br label %630, !dbg !3423

.loopexit7:                                       ; preds = %146
  %.lcssa104 = phi i32 [ %102, %146 ]
  %.lcssa96 = phi ptr [ %103, %146 ]
  %.lcssa88 = phi ptr [ %104, %146 ]
  %.lcssa25 = phi i64 [ %129, %146 ]
  %.lcssa21 = phi i64 [ %144, %146 ], !dbg !3229
  br label %630, !dbg !3598

630:                                              ; preds = %.loopexit7, %615, %613, %624
  %631 = phi ptr [ %625, %624 ], [ %.lcssa98, %613 ], [ %617, %615 ], [ %.lcssa96, %.loopexit7 ]
  %632 = phi ptr [ %626, %624 ], [ %.lcssa90, %613 ], [ %618, %615 ], [ %.lcssa88, %.loopexit7 ]
  %633 = phi i64 [ %628, %624 ], [ %.lcssa27, %613 ], [ %620, %615 ], [ %.lcssa25, %.loopexit7 ]
  %634 = phi i64 [ %629, %624 ], [ %.lcssa69, %613 ], [ %621, %615 ], [ %.lcssa21, %.loopexit7 ]
  %635 = phi i32 [ %627, %624 ], [ %.lcssa106, %613 ], [ %616, %615 ], [ %.lcssa104, %.loopexit7 ]
  tail call void @llvm.dbg.value(metadata i32 %635, metadata !3061, metadata !DIExpression()), !dbg !3127
  %636 = and i32 %5, -3, !dbg !3598
  %637 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %0, i64 noundef %633, ptr noundef %2, i64 noundef %634, i32 noundef %635, i32 noundef %636, ptr noundef null, ptr noundef %631, ptr noundef %632), !dbg !3599
  br label %638, !dbg !3600

638:                                              ; preds = %608, %611, %630, %583
  %639 = phi i64 [ %637, %630 ], [ %584, %583 ], [ %609, %611 ], [ %609, %608 ]
  ret i64 %639, !dbg !3601
}

; Function Attrs: nounwind
declare !dbg !3602 i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !3605 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare !dbg !3608 i32 @iswprint(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3609 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3613, metadata !DIExpression()), !dbg !3616
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3614, metadata !DIExpression()), !dbg !3616
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3615, metadata !DIExpression()), !dbg !3616
  call void @llvm.dbg.value(metadata ptr %0, metadata !3617, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata i64 %1, metadata !3622, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr null, metadata !3623, metadata !DIExpression()), !dbg !3630
  call void @llvm.dbg.value(metadata ptr %2, metadata !3624, metadata !DIExpression()), !dbg !3630
  %4 = icmp eq ptr %2, null, !dbg !3632
  %5 = select i1 %4, ptr @default_quoting_options, ptr %2, !dbg !3632
  call void @llvm.dbg.value(metadata ptr %5, metadata !3625, metadata !DIExpression()), !dbg !3630
  %6 = tail call ptr @__errno_location() #41, !dbg !3633
  %7 = load i32, ptr %6, align 4, !dbg !3633, !tbaa !1138
  call void @llvm.dbg.value(metadata i32 %7, metadata !3626, metadata !DIExpression()), !dbg !3630
  %8 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 1, !dbg !3634
  %9 = load i32, ptr %8, align 4, !dbg !3634, !tbaa !3001
  %10 = or i32 %9, 1, !dbg !3635
  call void @llvm.dbg.value(metadata i32 %10, metadata !3627, metadata !DIExpression()), !dbg !3630
  %11 = load i32, ptr %5, align 8, !dbg !3636, !tbaa !2951
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 2, !dbg !3637
  %13 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !3638
  %14 = load ptr, ptr %13, align 8, !dbg !3638, !tbaa !3022
  %15 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !3639
  %16 = load ptr, ptr %15, align 8, !dbg !3639, !tbaa !3025
  %17 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %11, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %14, ptr noundef %16), !dbg !3640
  %18 = add i64 %17, 1, !dbg !3641
  call void @llvm.dbg.value(metadata i64 %18, metadata !3628, metadata !DIExpression()), !dbg !3630
  %19 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %18) #45, !dbg !3642
  call void @llvm.dbg.value(metadata ptr %19, metadata !3629, metadata !DIExpression()), !dbg !3630
  %20 = load i32, ptr %5, align 8, !dbg !3643, !tbaa !2951
  %21 = load ptr, ptr %13, align 8, !dbg !3644, !tbaa !3022
  %22 = load ptr, ptr %15, align 8, !dbg !3645, !tbaa !3025
  %23 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %19, i64 noundef %18, ptr noundef %0, i64 noundef %1, i32 noundef %20, i32 noundef %10, ptr noundef nonnull %12, ptr noundef %21, ptr noundef %22), !dbg !3646
  store i32 %7, ptr %6, align 4, !dbg !3647, !tbaa !1138
  ret ptr %19, !dbg !3648
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @quotearg_alloc_mem(ptr noundef %0, i64 noundef %1, ptr noundef writeonly %2, ptr noundef %3) local_unnamed_addr #10 !dbg !3618 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3617, metadata !DIExpression()), !dbg !3649
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3622, metadata !DIExpression()), !dbg !3649
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3623, metadata !DIExpression()), !dbg !3649
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3624, metadata !DIExpression()), !dbg !3649
  %5 = icmp eq ptr %3, null, !dbg !3650
  %6 = select i1 %5, ptr @default_quoting_options, ptr %3, !dbg !3650
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !3625, metadata !DIExpression()), !dbg !3649
  %7 = tail call ptr @__errno_location() #41, !dbg !3651
  %8 = load i32, ptr %7, align 4, !dbg !3651, !tbaa !1138
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !3626, metadata !DIExpression()), !dbg !3649
  %9 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 1, !dbg !3652
  %10 = load i32, ptr %9, align 4, !dbg !3652, !tbaa !3001
  %11 = icmp eq ptr %2, null, !dbg !3653
  %12 = zext i1 %11 to i32, !dbg !3653
  %13 = or i32 %10, %12, !dbg !3654
  tail call void @llvm.dbg.value(metadata i32 %13, metadata !3627, metadata !DIExpression()), !dbg !3649
  %14 = load i32, ptr %6, align 8, !dbg !3655, !tbaa !2951
  %15 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 2, !dbg !3656
  %16 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !3657
  %17 = load ptr, ptr %16, align 8, !dbg !3657, !tbaa !3022
  %18 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !3658
  %19 = load ptr, ptr %18, align 8, !dbg !3658, !tbaa !3025
  %20 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef null, i64 noundef 0, ptr noundef %0, i64 noundef %1, i32 noundef %14, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %17, ptr noundef %19), !dbg !3659
  %21 = add i64 %20, 1, !dbg !3660
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !3628, metadata !DIExpression()), !dbg !3649
  %22 = tail call noalias nonnull ptr @xcharalloc(i64 noundef %21) #45, !dbg !3661
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !3629, metadata !DIExpression()), !dbg !3649
  %23 = load i32, ptr %6, align 8, !dbg !3662, !tbaa !2951
  %24 = load ptr, ptr %16, align 8, !dbg !3663, !tbaa !3022
  %25 = load ptr, ptr %18, align 8, !dbg !3664, !tbaa !3025
  %26 = tail call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %22, i64 noundef %21, ptr noundef %0, i64 noundef %1, i32 noundef %23, i32 noundef %13, ptr noundef nonnull %15, ptr noundef %24, ptr noundef %25), !dbg !3665
  store i32 %8, ptr %7, align 4, !dbg !3666, !tbaa !1138
  br i1 %11, label %28, label %27, !dbg !3667

27:                                               ; preds = %4
  store i64 %20, ptr %2, align 8, !dbg !3668, !tbaa !1363
  br label %28, !dbg !3670

28:                                               ; preds = %27, %4
  ret ptr %22, !dbg !3671
}

; Function Attrs: nounwind uwtable
define dso_local void @quotearg_free() local_unnamed_addr #10 !dbg !3672 {
  %1 = load ptr, ptr @slotvec, align 8, !dbg !3677, !tbaa !1069
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3674, metadata !DIExpression()), !dbg !3678
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3675, metadata !DIExpression()), !dbg !3679
  %2 = load i32, ptr @nslots, align 4, !tbaa !1138
  tail call void @llvm.dbg.value(metadata i32 1, metadata !3675, metadata !DIExpression()), !dbg !3679
  %3 = icmp sgt i32 %2, 1, !dbg !3680
  br i1 %3, label %4, label %6, !dbg !3682

4:                                                ; preds = %0
  %5 = zext nneg i32 %2 to i64, !dbg !3680
  br label %10, !dbg !3682

.loopexit:                                        ; preds = %10
  br label %6, !dbg !3683

6:                                                ; preds = %.loopexit, %0
  %7 = getelementptr inbounds %struct.slotvec, ptr %1, i64 0, i32 1, !dbg !3683
  %8 = load ptr, ptr %7, align 8, !dbg !3683, !tbaa !3685
  %9 = icmp eq ptr %8, @slot0, !dbg !3687
  br i1 %9, label %17, label %16, !dbg !3688

10:                                               ; preds = %4, %10
  %11 = phi i64 [ 1, %4 ], [ %14, %10 ]
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !3675, metadata !DIExpression()), !dbg !3679
  %12 = getelementptr inbounds %struct.slotvec, ptr %1, i64 %11, i32 1, !dbg !3689
  %13 = load ptr, ptr %12, align 8, !dbg !3689, !tbaa !3685
  tail call void @free(ptr noundef %13) #38, !dbg !3690
  %14 = add nuw nsw i64 %11, 1, !dbg !3691
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !3675, metadata !DIExpression()), !dbg !3679
  %15 = icmp eq i64 %14, %5, !dbg !3680
  br i1 %15, label %.loopexit, label %10, !dbg !3682, !llvm.loop !3692

16:                                               ; preds = %6
  tail call void @free(ptr noundef %8) #38, !dbg !3694
  store i64 256, ptr @slotvec0, align 8, !dbg !3696, !tbaa !3697
  store ptr @slot0, ptr getelementptr inbounds (%struct.slotvec, ptr @slotvec0, i64 0, i32 1), align 8, !dbg !3698, !tbaa !3685
  br label %17, !dbg !3699

17:                                               ; preds = %16, %6
  %18 = icmp eq ptr %1, @slotvec0, !dbg !3700
  br i1 %18, label %20, label %19, !dbg !3702

19:                                               ; preds = %17
  tail call void @free(ptr noundef %1) #38, !dbg !3703
  store ptr @slotvec0, ptr @slotvec, align 8, !dbg !3705, !tbaa !1069
  br label %20, !dbg !3706

20:                                               ; preds = %19, %17
  store i32 1, ptr @nslots, align 4, !dbg !3707, !tbaa !1138
  ret void, !dbg !3708
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3709 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3711, metadata !DIExpression()), !dbg !3713
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3712, metadata !DIExpression()), !dbg !3713
  %3 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3714
  ret ptr %3, !dbg !3715
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #10 !dbg !3716 {
  %5 = alloca i64, align 8, !DIAssignID !3736
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3730, metadata !DIExpression(), metadata !3736, metadata ptr %5, metadata !DIExpression()), !dbg !3737
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3720, metadata !DIExpression()), !dbg !3738
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3721, metadata !DIExpression()), !dbg !3738
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3722, metadata !DIExpression()), !dbg !3738
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !3723, metadata !DIExpression()), !dbg !3738
  %6 = tail call ptr @__errno_location() #41, !dbg !3739
  %7 = load i32, ptr %6, align 4, !dbg !3739, !tbaa !1138
  tail call void @llvm.dbg.value(metadata i32 %7, metadata !3724, metadata !DIExpression()), !dbg !3738
  %8 = load ptr, ptr @slotvec, align 8, !dbg !3740, !tbaa !1069
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !3725, metadata !DIExpression()), !dbg !3738
  tail call void @llvm.dbg.value(metadata i32 2147483647, metadata !3726, metadata !DIExpression()), !dbg !3738
  %9 = icmp ugt i32 %0, 2147483646, !dbg !3741
  br i1 %9, label %10, label %11, !dbg !3741

10:                                               ; preds = %4
  tail call void @abort() #40, !dbg !3743
  unreachable, !dbg !3743

11:                                               ; preds = %4
  %12 = load i32, ptr @nslots, align 4, !dbg !3744, !tbaa !1138
  %13 = icmp sgt i32 %12, %0, !dbg !3745
  br i1 %13, label %32, label %14, !dbg !3746

14:                                               ; preds = %11
  %15 = icmp eq ptr %8, @slotvec0, !dbg !3747
  tail call void @llvm.dbg.value(metadata i1 %15, metadata !3727, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !3737
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #38, !dbg !3748
  %16 = sext i32 %12 to i64, !dbg !3749
  store i64 %16, ptr %5, align 8, !dbg !3750, !tbaa !1363, !DIAssignID !3751
  call void @llvm.dbg.assign(metadata i64 %16, metadata !3730, metadata !DIExpression(), metadata !3751, metadata ptr %5, metadata !DIExpression()), !dbg !3737
  %17 = select i1 %15, ptr null, ptr %8, !dbg !3752
  %18 = add nuw nsw i32 %0, 1, !dbg !3753
  %19 = sub i32 %18, %12, !dbg !3754
  %20 = sext i32 %19 to i64, !dbg !3755
  %21 = call nonnull ptr @xpalloc(ptr noundef %17, ptr noundef nonnull %5, i64 noundef %20, i64 noundef 2147483647, i64 noundef 16) #38, !dbg !3756
  tail call void @llvm.dbg.value(metadata ptr %21, metadata !3725, metadata !DIExpression()), !dbg !3738
  store ptr %21, ptr @slotvec, align 8, !dbg !3757, !tbaa !1069
  br i1 %15, label %22, label %23, !dbg !3758

22:                                               ; preds = %14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, ptr noundef nonnull align 8 dereferenceable(16) @slotvec0, i64 16, i1 false), !dbg !3759, !tbaa.struct !3761
  br label %23, !dbg !3762

23:                                               ; preds = %22, %14
  %24 = load i32, ptr @nslots, align 4, !dbg !3763, !tbaa !1138
  %25 = sext i32 %24 to i64, !dbg !3764
  %26 = getelementptr inbounds %struct.slotvec, ptr %21, i64 %25, !dbg !3764
  %27 = load i64, ptr %5, align 8, !dbg !3765, !tbaa !1363
  %28 = sub nsw i64 %27, %25, !dbg !3766
  %29 = shl i64 %28, 4, !dbg !3767
  call void @llvm.dbg.value(metadata ptr %26, metadata !3160, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i32 0, metadata !3163, metadata !DIExpression()), !dbg !3768
  call void @llvm.dbg.value(metadata i64 %29, metadata !3164, metadata !DIExpression()), !dbg !3768
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %26, i8 noundef 0, i64 noundef %29, i1 noundef false) #38, !dbg !3770
  %30 = load i64, ptr %5, align 8, !dbg !3771, !tbaa !1363
  %31 = trunc i64 %30 to i32, !dbg !3771
  store i32 %31, ptr @nslots, align 4, !dbg !3772, !tbaa !1138
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #38, !dbg !3773
  br label %32, !dbg !3774

32:                                               ; preds = %23, %11
  %33 = phi ptr [ %21, %23 ], [ %8, %11 ], !dbg !3738
  tail call void @llvm.dbg.value(metadata ptr %33, metadata !3725, metadata !DIExpression()), !dbg !3738
  %34 = zext nneg i32 %0 to i64
  %35 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, !dbg !3775
  %36 = load i64, ptr %35, align 8, !dbg !3776, !tbaa !3697
  tail call void @llvm.dbg.value(metadata i64 %36, metadata !3731, metadata !DIExpression()), !dbg !3777
  %37 = getelementptr inbounds %struct.slotvec, ptr %33, i64 %34, i32 1, !dbg !3778
  %38 = load ptr, ptr %37, align 8, !dbg !3778, !tbaa !3685
  tail call void @llvm.dbg.value(metadata ptr %38, metadata !3733, metadata !DIExpression()), !dbg !3777
  %39 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 1, !dbg !3779
  %40 = load i32, ptr %39, align 4, !dbg !3779, !tbaa !3001
  %41 = or i32 %40, 1, !dbg !3780
  tail call void @llvm.dbg.value(metadata i32 %41, metadata !3734, metadata !DIExpression()), !dbg !3777
  %42 = load i32, ptr %3, align 8, !dbg !3781, !tbaa !2951
  %43 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3782
  %44 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 3, !dbg !3783
  %45 = load ptr, ptr %44, align 8, !dbg !3783, !tbaa !3022
  %46 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 4, !dbg !3784
  %47 = load ptr, ptr %46, align 8, !dbg !3784, !tbaa !3025
  %48 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef %38, i64 noundef %36, ptr noundef %1, i64 noundef %2, i32 noundef %42, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %45, ptr noundef %47), !dbg !3785
  tail call void @llvm.dbg.value(metadata i64 %48, metadata !3735, metadata !DIExpression()), !dbg !3777
  %49 = icmp ugt i64 %36, %48, !dbg !3786
  br i1 %49, label %60, label %50, !dbg !3788

50:                                               ; preds = %32
  %51 = add i64 %48, 1, !dbg !3789
  tail call void @llvm.dbg.value(metadata i64 %51, metadata !3731, metadata !DIExpression()), !dbg !3777
  store i64 %51, ptr %35, align 8, !dbg !3791, !tbaa !3697
  %52 = icmp eq ptr %38, @slot0, !dbg !3792
  br i1 %52, label %54, label %53, !dbg !3794

53:                                               ; preds = %50
  call void @free(ptr noundef %38) #38, !dbg !3795
  br label %54, !dbg !3795

54:                                               ; preds = %53, %50
  %55 = call noalias nonnull ptr @xcharalloc(i64 noundef %51) #45, !dbg !3796
  tail call void @llvm.dbg.value(metadata ptr %55, metadata !3733, metadata !DIExpression()), !dbg !3777
  store ptr %55, ptr %37, align 8, !dbg !3797, !tbaa !3685
  %56 = load i32, ptr %3, align 8, !dbg !3798, !tbaa !2951
  %57 = load ptr, ptr %44, align 8, !dbg !3799, !tbaa !3022
  %58 = load ptr, ptr %46, align 8, !dbg !3800, !tbaa !3025
  %59 = call fastcc i64 @quotearg_buffer_restyled(ptr noundef nonnull %55, i64 noundef %51, ptr noundef %1, i64 noundef %2, i32 noundef %56, i32 noundef %41, ptr noundef nonnull %43, ptr noundef %57, ptr noundef %58), !dbg !3801
  br label %60, !dbg !3802

60:                                               ; preds = %54, %32
  %61 = phi ptr [ %55, %54 ], [ %38, %32 ], !dbg !3777
  tail call void @llvm.dbg.value(metadata ptr %61, metadata !3733, metadata !DIExpression()), !dbg !3777
  store i32 %7, ptr %6, align 4, !dbg !3803, !tbaa !1138
  ret ptr %61, !dbg !3804
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3805 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3809, metadata !DIExpression()), !dbg !3812
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3810, metadata !DIExpression()), !dbg !3812
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3811, metadata !DIExpression()), !dbg !3812
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @default_quoting_options), !dbg !3813
  ret ptr %4, !dbg !3814
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg(ptr noundef %0) local_unnamed_addr #10 !dbg !3815 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3817, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i32 0, metadata !3711, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata ptr %0, metadata !3712, metadata !DIExpression()), !dbg !3819
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @default_quoting_options), !dbg !3821
  ret ptr %2, !dbg !3822
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !3823 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3827, metadata !DIExpression()), !dbg !3829
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3828, metadata !DIExpression()), !dbg !3829
  call void @llvm.dbg.value(metadata i32 0, metadata !3809, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata ptr %0, metadata !3810, metadata !DIExpression()), !dbg !3830
  call void @llvm.dbg.value(metadata i64 %1, metadata !3811, metadata !DIExpression()), !dbg !3830
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @default_quoting_options), !dbg !3832
  ret ptr %3, !dbg !3833
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !3834 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3842
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3841, metadata !DIExpression(), metadata !3842, metadata ptr %4, metadata !DIExpression()), !dbg !3843
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3838, metadata !DIExpression()), !dbg !3843
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3839, metadata !DIExpression()), !dbg !3843
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3840, metadata !DIExpression()), !dbg !3843
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3844
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3845), !dbg !3848
  call void @llvm.dbg.value(metadata i32 %1, metadata !3849, metadata !DIExpression()), !dbg !3855
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3854, metadata !DIExpression()), !dbg !3857
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3857, !alias.scope !3845, !DIAssignID !3858
  call void @llvm.dbg.assign(metadata i8 0, metadata !3841, metadata !DIExpression(), metadata !3858, metadata ptr %4, metadata !DIExpression()), !dbg !3843
  %5 = icmp eq i32 %1, 10, !dbg !3859
  br i1 %5, label %6, label %7, !dbg !3861

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3862, !noalias !3845
  unreachable, !dbg !3862

7:                                                ; preds = %3
  store i32 %1, ptr %4, align 8, !dbg !3863, !tbaa !2951, !alias.scope !3845, !DIAssignID !3864
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3841, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3864, metadata ptr %4, metadata !DIExpression()), !dbg !3843
  %8 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !3865
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3866
  ret ptr %8, !dbg !3867
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_mem(i32 noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !3868 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !3877
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3876, metadata !DIExpression(), metadata !3877, metadata ptr %5, metadata !DIExpression()), !dbg !3878
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3872, metadata !DIExpression()), !dbg !3878
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3873, metadata !DIExpression()), !dbg !3878
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !3874, metadata !DIExpression()), !dbg !3878
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !3875, metadata !DIExpression()), !dbg !3878
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !3879
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3880), !dbg !3883
  call void @llvm.dbg.value(metadata i32 %1, metadata !3849, metadata !DIExpression()), !dbg !3884
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3854, metadata !DIExpression()), !dbg !3886
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false), !dbg !3886, !alias.scope !3880, !DIAssignID !3887
  call void @llvm.dbg.assign(metadata i8 0, metadata !3876, metadata !DIExpression(), metadata !3887, metadata ptr %5, metadata !DIExpression()), !dbg !3878
  %6 = icmp eq i32 %1, 10, !dbg !3888
  br i1 %6, label %7, label %8, !dbg !3889

7:                                                ; preds = %4
  tail call void @abort() #40, !dbg !3890, !noalias !3880
  unreachable, !dbg !3890

8:                                                ; preds = %4
  store i32 %1, ptr %5, align 8, !dbg !3891, !tbaa !2951, !alias.scope !3880, !DIAssignID !3892
  call void @llvm.dbg.assign(metadata i32 %1, metadata !3876, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3892, metadata ptr %5, metadata !DIExpression()), !dbg !3878
  %9 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !3893
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !3894
  ret ptr %9, !dbg !3895
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !3896 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3902
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3900, metadata !DIExpression()), !dbg !3903
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3901, metadata !DIExpression()), !dbg !3903
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3841, metadata !DIExpression(), metadata !3902, metadata ptr %3, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i32 0, metadata !3838, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata i32 %0, metadata !3839, metadata !DIExpression()), !dbg !3904
  call void @llvm.dbg.value(metadata ptr %1, metadata !3840, metadata !DIExpression()), !dbg !3904
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3906
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3907), !dbg !3910
  call void @llvm.dbg.value(metadata i32 %0, metadata !3849, metadata !DIExpression()), !dbg !3911
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3854, metadata !DIExpression()), !dbg !3913
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false), !dbg !3913, !alias.scope !3907, !DIAssignID !3914
  call void @llvm.dbg.assign(metadata i8 0, metadata !3841, metadata !DIExpression(), metadata !3914, metadata ptr %3, metadata !DIExpression()), !dbg !3904
  %4 = icmp eq i32 %0, 10, !dbg !3915
  br i1 %4, label %5, label %6, !dbg !3916

5:                                                ; preds = %2
  tail call void @abort() #40, !dbg !3917, !noalias !3907
  unreachable, !dbg !3917

6:                                                ; preds = %2
  store i32 %0, ptr %3, align 8, !dbg !3918, !tbaa !2951, !alias.scope !3907, !DIAssignID !3919
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3841, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3919, metadata ptr %3, metadata !DIExpression()), !dbg !3904
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull %3), !dbg !3920
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !3921
  ret ptr %7, !dbg !3922
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_style_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !3923 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3930
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !3927, metadata !DIExpression()), !dbg !3931
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !3928, metadata !DIExpression()), !dbg !3931
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !3929, metadata !DIExpression()), !dbg !3931
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3876, metadata !DIExpression(), metadata !3930, metadata ptr %4, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32 0, metadata !3872, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i32 %0, metadata !3873, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata ptr %1, metadata !3874, metadata !DIExpression()), !dbg !3932
  call void @llvm.dbg.value(metadata i64 %2, metadata !3875, metadata !DIExpression()), !dbg !3932
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3934
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3935), !dbg !3938
  call void @llvm.dbg.value(metadata i32 %0, metadata !3849, metadata !DIExpression()), !dbg !3939
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3854, metadata !DIExpression()), !dbg !3941
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false), !dbg !3941, !alias.scope !3935, !DIAssignID !3942
  call void @llvm.dbg.assign(metadata i8 0, metadata !3876, metadata !DIExpression(), metadata !3942, metadata ptr %4, metadata !DIExpression()), !dbg !3932
  %5 = icmp eq i32 %0, 10, !dbg !3943
  br i1 %5, label %6, label %7, !dbg !3944

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !3945, !noalias !3935
  unreachable, !dbg !3945

7:                                                ; preds = %3
  store i32 %0, ptr %4, align 8, !dbg !3946, !tbaa !2951, !alias.scope !3935, !DIAssignID !3947
  call void @llvm.dbg.assign(metadata i32 %0, metadata !3876, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !3947, metadata ptr %4, metadata !DIExpression()), !dbg !3932
  %8 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4), !dbg !3948
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3949
  ret ptr %8, !dbg !3950
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char_mem(ptr noundef %0, i64 noundef %1, i8 noundef %2) local_unnamed_addr #10 !dbg !3951 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !3959
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3958, metadata !DIExpression(), metadata !3959, metadata ptr %4, metadata !DIExpression()), !dbg !3960
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3955, metadata !DIExpression()), !dbg !3960
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !3956, metadata !DIExpression()), !dbg !3960
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !3957, metadata !DIExpression()), !dbg !3960
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !3961
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3962, !tbaa.struct !3963, !DIAssignID !3964
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3958, metadata !DIExpression(), metadata !3964, metadata ptr %4, metadata !DIExpression()), !dbg !3960
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2968, metadata !DIExpression()), !dbg !3965
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2969, metadata !DIExpression()), !dbg !3965
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2970, metadata !DIExpression()), !dbg !3965
  tail call void @llvm.dbg.value(metadata i8 %2, metadata !2971, metadata !DIExpression()), !dbg !3965
  %5 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, !dbg !3967
  %6 = lshr i8 %2, 5, !dbg !3968
  %7 = zext nneg i8 %6 to i64, !dbg !3968
  %8 = getelementptr inbounds i32, ptr %5, i64 %7, !dbg !3969
  tail call void @llvm.dbg.value(metadata ptr %8, metadata !2972, metadata !DIExpression()), !dbg !3965
  %9 = and i8 %2, 31, !dbg !3970
  %10 = zext nneg i8 %9 to i32, !dbg !3970
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2974, metadata !DIExpression()), !dbg !3965
  %11 = load i32, ptr %8, align 4, !dbg !3971, !tbaa !1138
  %12 = lshr i32 %11, %10, !dbg !3972
  tail call void @llvm.dbg.value(metadata i32 %12, metadata !2975, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3965
  %13 = and i32 %12, 1, !dbg !3973
  %14 = xor i32 %13, 1, !dbg !3973
  %15 = shl nuw i32 %14, %10, !dbg !3974
  %16 = xor i32 %15, %11, !dbg !3975
  store i32 %16, ptr %8, align 4, !dbg !3975, !tbaa !1138
  %17 = call fastcc ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %4), !dbg !3976
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !3977
  ret ptr %17, !dbg !3978
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_char(ptr noundef %0, i8 noundef %1) local_unnamed_addr #10 !dbg !3979 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !3985
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !3983, metadata !DIExpression()), !dbg !3986
  tail call void @llvm.dbg.value(metadata i8 %1, metadata !3984, metadata !DIExpression()), !dbg !3986
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3958, metadata !DIExpression(), metadata !3985, metadata ptr %3, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata ptr %0, metadata !3955, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i64 -1, metadata !3956, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata i8 %1, metadata !3957, metadata !DIExpression()), !dbg !3987
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !3989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !3990, !tbaa.struct !3963, !DIAssignID !3991
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3958, metadata !DIExpression(), metadata !3991, metadata ptr %3, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.value(metadata ptr %3, metadata !2968, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i8 %1, metadata !2969, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i32 1, metadata !2970, metadata !DIExpression()), !dbg !3992
  call void @llvm.dbg.value(metadata i8 %1, metadata !2971, metadata !DIExpression()), !dbg !3992
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, !dbg !3994
  %5 = lshr i8 %1, 5, !dbg !3995
  %6 = zext nneg i8 %5 to i64, !dbg !3995
  %7 = getelementptr inbounds i32, ptr %4, i64 %6, !dbg !3996
  call void @llvm.dbg.value(metadata ptr %7, metadata !2972, metadata !DIExpression()), !dbg !3992
  %8 = and i8 %1, 31, !dbg !3997
  %9 = zext nneg i8 %8 to i32, !dbg !3997
  call void @llvm.dbg.value(metadata i32 %9, metadata !2974, metadata !DIExpression()), !dbg !3992
  %10 = load i32, ptr %7, align 4, !dbg !3998, !tbaa !1138
  %11 = lshr i32 %10, %9, !dbg !3999
  call void @llvm.dbg.value(metadata i32 %11, metadata !2975, metadata !DIExpression(DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !3992
  %12 = and i32 %11, 1, !dbg !4000
  %13 = xor i32 %12, 1, !dbg !4000
  %14 = shl nuw i32 %13, %9, !dbg !4001
  %15 = xor i32 %14, %10, !dbg !4002
  store i32 %15, ptr %7, align 4, !dbg !4002, !tbaa !1138
  %16 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %3), !dbg !4003
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !4004
  ret ptr %16, !dbg !4005
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon(ptr noundef %0) local_unnamed_addr #10 !dbg !4006 {
  %2 = alloca %struct.quoting_options, align 8, !DIAssignID !4009
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4008, metadata !DIExpression()), !dbg !4010
  call void @llvm.dbg.value(metadata ptr %0, metadata !3983, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.value(metadata i8 58, metadata !3984, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3958, metadata !DIExpression(), metadata !4009, metadata ptr %2, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata ptr %0, metadata !3955, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i64 -1, metadata !3956, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata i8 58, metadata !3957, metadata !DIExpression()), !dbg !4013
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #38, !dbg !4015
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4016, !tbaa.struct !3963, !DIAssignID !4017
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3958, metadata !DIExpression(), metadata !4017, metadata ptr %2, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.value(metadata ptr %2, metadata !2968, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i8 58, metadata !2969, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i32 1, metadata !2970, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i8 58, metadata !2971, metadata !DIExpression()), !dbg !4018
  %3 = getelementptr inbounds %struct.quoting_options, ptr %2, i64 0, i32 2, i64 1, !dbg !4020
  call void @llvm.dbg.value(metadata ptr %3, metadata !2972, metadata !DIExpression()), !dbg !4018
  call void @llvm.dbg.value(metadata i32 26, metadata !2974, metadata !DIExpression()), !dbg !4018
  %4 = load i32, ptr %3, align 4, !dbg !4021, !tbaa !1138
  call void @llvm.dbg.value(metadata i32 %4, metadata !2975, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4018
  %5 = or i32 %4, 67108864, !dbg !4022
  store i32 %5, ptr %3, align 4, !dbg !4022, !tbaa !1138
  %6 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull %2), !dbg !4023
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #38, !dbg !4024
  ret ptr %6, !dbg !4025
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_colon_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4026 {
  %3 = alloca %struct.quoting_options, align 8, !DIAssignID !4030
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4028, metadata !DIExpression()), !dbg !4031
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4029, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3958, metadata !DIExpression(), metadata !4030, metadata ptr %3, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata ptr %0, metadata !3955, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i64 %1, metadata !3956, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata i8 58, metadata !3957, metadata !DIExpression()), !dbg !4032
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #38, !dbg !4034
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 56, i1 false), !dbg !4035, !tbaa.struct !3963, !DIAssignID !4036
  call void @llvm.dbg.assign(metadata i1 undef, metadata !3958, metadata !DIExpression(), metadata !4036, metadata ptr %3, metadata !DIExpression()), !dbg !4032
  call void @llvm.dbg.value(metadata ptr %3, metadata !2968, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i8 58, metadata !2969, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i32 1, metadata !2970, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i8 58, metadata !2971, metadata !DIExpression()), !dbg !4037
  %4 = getelementptr inbounds %struct.quoting_options, ptr %3, i64 0, i32 2, i64 1, !dbg !4039
  call void @llvm.dbg.value(metadata ptr %4, metadata !2972, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.value(metadata i32 26, metadata !2974, metadata !DIExpression()), !dbg !4037
  %5 = load i32, ptr %4, align 4, !dbg !4040, !tbaa !1138
  call void @llvm.dbg.value(metadata i32 %5, metadata !2975, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4037
  %6 = or i32 %5, 67108864, !dbg !4041
  store i32 %6, ptr %4, align 4, !dbg !4041, !tbaa !1138
  %7 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3), !dbg !4042
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #38, !dbg !4043
  ret ptr %7, !dbg !4044
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_style_colon(i32 noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4045 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4051
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4050, metadata !DIExpression(), metadata !4051, metadata ptr %4, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.declare(metadata ptr poison, metadata !3854, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !4053
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4047, metadata !DIExpression()), !dbg !4052
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4048, metadata !DIExpression()), !dbg !4052
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4049, metadata !DIExpression()), !dbg !4052
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4055
  call void @llvm.dbg.value(metadata i32 %1, metadata !3849, metadata !DIExpression()), !dbg !4056
  tail call void @llvm.dbg.value(metadata i32 0, metadata !3854, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4056
  %5 = icmp eq i32 %1, 10, !dbg !4057
  br i1 %5, label %6, label %7, !dbg !4058

6:                                                ; preds = %3
  tail call void @abort() #40, !dbg !4059, !noalias !4060
  unreachable, !dbg !4059

7:                                                ; preds = %3
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !3854, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !4056
  store i32 %1, ptr %4, align 8, !dbg !4063, !tbaa.struct !3963, !DIAssignID !4064
  %8 = getelementptr inbounds i8, ptr %4, i64 4, !dbg !4063
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(52) %8, i8 0, i64 52, i1 false), !dbg !4063
  call void @llvm.dbg.assign(metadata i32 %1, metadata !4050, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4064, metadata ptr %4, metadata !DIExpression()), !dbg !4052
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4050, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416), metadata !4065, metadata ptr %8, metadata !DIExpression()), !dbg !4052
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !2968, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2969, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata i32 1, metadata !2970, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata i8 58, metadata !2971, metadata !DIExpression()), !dbg !4066
  %9 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 2, i64 1, !dbg !4068
  tail call void @llvm.dbg.value(metadata ptr %9, metadata !2972, metadata !DIExpression()), !dbg !4066
  tail call void @llvm.dbg.value(metadata i32 26, metadata !2974, metadata !DIExpression()), !dbg !4066
  %10 = load i32, ptr %9, align 4, !dbg !4069, !tbaa !1138
  tail call void @llvm.dbg.value(metadata i32 %10, metadata !2975, metadata !DIExpression(DW_OP_constu, 26, DW_OP_shr, DW_OP_constu, 1, DW_OP_and, DW_OP_stack_value)), !dbg !4066
  %11 = or i32 %10, 67108864, !dbg !4070
  store i32 %11, ptr %9, align 4, !dbg !4070, !tbaa !1138, !DIAssignID !4071
  call void @llvm.dbg.assign(metadata i32 %11, metadata !4050, metadata !DIExpression(DW_OP_LLVM_fragment, 96, 32), metadata !4071, metadata ptr %9, metadata !DIExpression()), !dbg !4052
  %12 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4072
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4073
  ret ptr %12, !dbg !4074
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !4075 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4083
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4079, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4080, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4081, metadata !DIExpression()), !dbg !4084
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4082, metadata !DIExpression()), !dbg !4084
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4085, metadata !DIExpression(), metadata !4083, metadata ptr %5, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i32 %0, metadata !4090, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata ptr %1, metadata !4091, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata ptr %2, metadata !4092, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata ptr %3, metadata !4093, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata i64 -1, metadata !4094, metadata !DIExpression()), !dbg !4095
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !4097
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4098, !tbaa.struct !3963, !DIAssignID !4099
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4085, metadata !DIExpression(), metadata !4099, metadata ptr %5, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4085, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4100, metadata ptr undef, metadata !DIExpression()), !dbg !4095
  call void @llvm.dbg.value(metadata ptr %5, metadata !3008, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr %1, metadata !3009, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr %2, metadata !3010, metadata !DIExpression()), !dbg !4101
  call void @llvm.dbg.value(metadata ptr %5, metadata !3008, metadata !DIExpression()), !dbg !4101
  store i32 10, ptr %5, align 8, !dbg !4103, !tbaa !2951, !DIAssignID !4104
  call void @llvm.dbg.assign(metadata i32 10, metadata !4085, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4104, metadata ptr %5, metadata !DIExpression()), !dbg !4095
  %6 = icmp ne ptr %1, null, !dbg !4105
  %7 = icmp ne ptr %2, null
  %8 = and i1 %6, %7, !dbg !4106
  br i1 %8, label %10, label %9, !dbg !4106

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !4107
  unreachable, !dbg !4107

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4108
  store ptr %1, ptr %11, align 8, !dbg !4109, !tbaa !3022, !DIAssignID !4110
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4085, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4110, metadata ptr %11, metadata !DIExpression()), !dbg !4095
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4111
  store ptr %2, ptr %12, align 8, !dbg !4112, !tbaa !3025, !DIAssignID !4113
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4085, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4113, metadata ptr %12, metadata !DIExpression()), !dbg !4095
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef -1, ptr noundef nonnull %5), !dbg !4114
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !4115
  ret ptr %13, !dbg !4116
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_n_custom_mem(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !4086 {
  %6 = alloca %struct.quoting_options, align 8, !DIAssignID !4117
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4085, metadata !DIExpression(), metadata !4117, metadata ptr %6, metadata !DIExpression()), !dbg !4118
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4090, metadata !DIExpression()), !dbg !4118
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4091, metadata !DIExpression()), !dbg !4118
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4092, metadata !DIExpression()), !dbg !4118
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4093, metadata !DIExpression()), !dbg !4118
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !4094, metadata !DIExpression()), !dbg !4118
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #38, !dbg !4119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4120, !tbaa.struct !3963, !DIAssignID !4121
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4085, metadata !DIExpression(), metadata !4121, metadata ptr %6, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4085, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4122, metadata ptr undef, metadata !DIExpression()), !dbg !4118
  call void @llvm.dbg.value(metadata ptr %6, metadata !3008, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata ptr %1, metadata !3009, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata ptr %2, metadata !3010, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.value(metadata ptr %6, metadata !3008, metadata !DIExpression()), !dbg !4123
  store i32 10, ptr %6, align 8, !dbg !4125, !tbaa !2951, !DIAssignID !4126
  call void @llvm.dbg.assign(metadata i32 10, metadata !4085, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4126, metadata ptr %6, metadata !DIExpression()), !dbg !4118
  %7 = icmp ne ptr %1, null, !dbg !4127
  %8 = icmp ne ptr %2, null
  %9 = and i1 %7, %8, !dbg !4128
  br i1 %9, label %11, label %10, !dbg !4128

10:                                               ; preds = %5
  tail call void @abort() #40, !dbg !4129
  unreachable, !dbg !4129

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 3, !dbg !4130
  store ptr %1, ptr %12, align 8, !dbg !4131, !tbaa !3022, !DIAssignID !4132
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4085, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4132, metadata ptr %12, metadata !DIExpression()), !dbg !4118
  %13 = getelementptr inbounds %struct.quoting_options, ptr %6, i64 0, i32 4, !dbg !4133
  store ptr %2, ptr %13, align 8, !dbg !4134, !tbaa !3025, !DIAssignID !4135
  call void @llvm.dbg.assign(metadata ptr %2, metadata !4085, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4135, metadata ptr %13, metadata !DIExpression()), !dbg !4118
  %14 = call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef nonnull %6), !dbg !4136
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #38, !dbg !4137
  ret ptr %14, !dbg !4138
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #10 !dbg !4139 {
  %4 = alloca %struct.quoting_options, align 8, !DIAssignID !4146
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4143, metadata !DIExpression()), !dbg !4147
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4144, metadata !DIExpression()), !dbg !4147
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4145, metadata !DIExpression()), !dbg !4147
  call void @llvm.dbg.value(metadata i32 0, metadata !4079, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %0, metadata !4080, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %1, metadata !4081, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.value(metadata ptr %2, metadata !4082, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4085, metadata !DIExpression(), metadata !4146, metadata ptr %4, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata i32 0, metadata !4090, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata ptr %0, metadata !4091, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata ptr %1, metadata !4092, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata ptr %2, metadata !4093, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata i64 -1, metadata !4094, metadata !DIExpression()), !dbg !4150
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #38, !dbg !4152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4153, !tbaa.struct !3963, !DIAssignID !4154
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4085, metadata !DIExpression(), metadata !4154, metadata ptr %4, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4085, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4155, metadata ptr undef, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata ptr %4, metadata !3008, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata ptr %0, metadata !3009, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata ptr %1, metadata !3010, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.value(metadata ptr %4, metadata !3008, metadata !DIExpression()), !dbg !4156
  store i32 10, ptr %4, align 8, !dbg !4158, !tbaa !2951, !DIAssignID !4159
  call void @llvm.dbg.assign(metadata i32 10, metadata !4085, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4159, metadata ptr %4, metadata !DIExpression()), !dbg !4150
  %5 = icmp ne ptr %0, null, !dbg !4160
  %6 = icmp ne ptr %1, null
  %7 = and i1 %5, %6, !dbg !4161
  br i1 %7, label %9, label %8, !dbg !4161

8:                                                ; preds = %3
  tail call void @abort() #40, !dbg !4162
  unreachable, !dbg !4162

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 3, !dbg !4163
  store ptr %0, ptr %10, align 8, !dbg !4164, !tbaa !3022, !DIAssignID !4165
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4085, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4165, metadata ptr %10, metadata !DIExpression()), !dbg !4150
  %11 = getelementptr inbounds %struct.quoting_options, ptr %4, i64 0, i32 4, !dbg !4166
  store ptr %1, ptr %11, align 8, !dbg !4167, !tbaa !3025, !DIAssignID !4168
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4085, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4168, metadata ptr %11, metadata !DIExpression()), !dbg !4150
  %12 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef -1, ptr noundef nonnull %4), !dbg !4169
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #38, !dbg !4170
  ret ptr %12, !dbg !4171
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quotearg_custom_mem(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #10 !dbg !4172 {
  %5 = alloca %struct.quoting_options, align 8, !DIAssignID !4180
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4176, metadata !DIExpression()), !dbg !4181
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4177, metadata !DIExpression()), !dbg !4181
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4178, metadata !DIExpression()), !dbg !4181
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !4179, metadata !DIExpression()), !dbg !4181
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4085, metadata !DIExpression(), metadata !4180, metadata ptr %5, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i32 0, metadata !4090, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata ptr %0, metadata !4091, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata ptr %1, metadata !4092, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata ptr %2, metadata !4093, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata i64 %3, metadata !4094, metadata !DIExpression()), !dbg !4182
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %5) #38, !dbg !4184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) @default_quoting_options, i64 40, i1 false), !dbg !4185, !tbaa.struct !3963, !DIAssignID !4186
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4085, metadata !DIExpression(), metadata !4186, metadata ptr %5, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4085, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 128), metadata !4187, metadata ptr undef, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.value(metadata ptr %5, metadata !3008, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata ptr %0, metadata !3009, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata ptr %1, metadata !3010, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.value(metadata ptr %5, metadata !3008, metadata !DIExpression()), !dbg !4188
  store i32 10, ptr %5, align 8, !dbg !4190, !tbaa !2951, !DIAssignID !4191
  call void @llvm.dbg.assign(metadata i32 10, metadata !4085, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32), metadata !4191, metadata ptr %5, metadata !DIExpression()), !dbg !4182
  %6 = icmp ne ptr %0, null, !dbg !4192
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7, !dbg !4193
  br i1 %8, label %10, label %9, !dbg !4193

9:                                                ; preds = %4
  tail call void @abort() #40, !dbg !4194
  unreachable, !dbg !4194

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 3, !dbg !4195
  store ptr %0, ptr %11, align 8, !dbg !4196, !tbaa !3022, !DIAssignID !4197
  call void @llvm.dbg.assign(metadata ptr %0, metadata !4085, metadata !DIExpression(DW_OP_LLVM_fragment, 320, 64), metadata !4197, metadata ptr %11, metadata !DIExpression()), !dbg !4182
  %12 = getelementptr inbounds %struct.quoting_options, ptr %5, i64 0, i32 4, !dbg !4198
  store ptr %1, ptr %12, align 8, !dbg !4199, !tbaa !3025, !DIAssignID !4200
  call void @llvm.dbg.assign(metadata ptr %1, metadata !4085, metadata !DIExpression(DW_OP_LLVM_fragment, 384, 64), metadata !4200, metadata ptr %12, metadata !DIExpression()), !dbg !4182
  %13 = call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %5), !dbg !4201
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %5) #38, !dbg !4202
  ret ptr %13, !dbg !4203
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n_mem(i32 noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !4204 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4208, metadata !DIExpression()), !dbg !4211
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4209, metadata !DIExpression()), !dbg !4211
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4210, metadata !DIExpression()), !dbg !4211
  %4 = tail call fastcc ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull @quote_quoting_options), !dbg !4212
  ret ptr %4, !dbg !4213
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_mem(ptr noundef %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4214 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4218, metadata !DIExpression()), !dbg !4220
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4219, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.value(metadata i32 0, metadata !4208, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata ptr %0, metadata !4209, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i64 %1, metadata !4210, metadata !DIExpression()), !dbg !4221
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef %1, ptr noundef nonnull @quote_quoting_options), !dbg !4223
  ret ptr %3, !dbg !4224
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote_n(i32 noundef %0, ptr noundef %1) local_unnamed_addr #10 !dbg !4225 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !4229, metadata !DIExpression()), !dbg !4231
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4230, metadata !DIExpression()), !dbg !4231
  call void @llvm.dbg.value(metadata i32 %0, metadata !4208, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata ptr %1, metadata !4209, metadata !DIExpression()), !dbg !4232
  call void @llvm.dbg.value(metadata i64 -1, metadata !4210, metadata !DIExpression()), !dbg !4232
  %3 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef %0, ptr noundef %1, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4234
  ret ptr %3, !dbg !4235
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @quote(ptr noundef %0) local_unnamed_addr #10 !dbg !4236 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4240, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.value(metadata i32 0, metadata !4229, metadata !DIExpression()), !dbg !4242
  call void @llvm.dbg.value(metadata ptr %0, metadata !4230, metadata !DIExpression()), !dbg !4242
  call void @llvm.dbg.value(metadata i32 0, metadata !4208, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.value(metadata ptr %0, metadata !4209, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.value(metadata i64 -1, metadata !4210, metadata !DIExpression()), !dbg !4244
  %2 = tail call fastcc noundef ptr @quotearg_n_options(i32 noundef 0, ptr noundef %0, i64 noundef -1, ptr noundef nonnull @quote_quoting_options), !dbg !4246
  ret ptr %2, !dbg !4247
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4, i64 noundef %5) local_unnamed_addr #10 !dbg !4248 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4287, metadata !DIExpression()), !dbg !4293
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4288, metadata !DIExpression()), !dbg !4293
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4289, metadata !DIExpression()), !dbg !4293
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4290, metadata !DIExpression()), !dbg !4293
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4291, metadata !DIExpression()), !dbg !4293
  tail call void @llvm.dbg.value(metadata i64 %5, metadata !4292, metadata !DIExpression()), !dbg !4293
  %7 = icmp eq ptr %1, null, !dbg !4294
  br i1 %7, label %10, label %8, !dbg !4296

8:                                                ; preds = %6
  %9 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.119, ptr noundef nonnull %1, ptr noundef %2, ptr noundef %3) #38, !dbg !4297
  br label %12, !dbg !4297

10:                                               ; preds = %6
  %11 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @.str.1.120, ptr noundef %2, ptr noundef %3) #38, !dbg !4298
  br label %12

12:                                               ; preds = %10, %8
  %13 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.3.122, i32 noundef 5) #38, !dbg !4299
  %14 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @version_etc_copyright, ptr noundef %13, i32 noundef 2026) #38, !dbg !4299
  %15 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %0), !dbg !4300
  %16 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.5.124, i32 noundef 5) #38, !dbg !4301
  %17 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %16, ptr noundef nonnull @.str.6.125) #38, !dbg !4301
  %18 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %0), !dbg !4302
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
  ], !dbg !4303

19:                                               ; preds = %12
  %20 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.7.126, i32 noundef 5) #38, !dbg !4304
  %21 = load ptr, ptr %4, align 8, !dbg !4304, !tbaa !1069
  %22 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %20, ptr noundef %21) #38, !dbg !4304
  br label %147, !dbg !4306

23:                                               ; preds = %12
  %24 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.8.127, i32 noundef 5) #38, !dbg !4307
  %25 = load ptr, ptr %4, align 8, !dbg !4307, !tbaa !1069
  %26 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4307
  %27 = load ptr, ptr %26, align 8, !dbg !4307, !tbaa !1069
  %28 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %24, ptr noundef %25, ptr noundef %27) #38, !dbg !4307
  br label %147, !dbg !4308

29:                                               ; preds = %12
  %30 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.9.128, i32 noundef 5) #38, !dbg !4309
  %31 = load ptr, ptr %4, align 8, !dbg !4309, !tbaa !1069
  %32 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4309
  %33 = load ptr, ptr %32, align 8, !dbg !4309, !tbaa !1069
  %34 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4309
  %35 = load ptr, ptr %34, align 8, !dbg !4309, !tbaa !1069
  %36 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %30, ptr noundef %31, ptr noundef %33, ptr noundef %35) #38, !dbg !4309
  br label %147, !dbg !4310

37:                                               ; preds = %12
  %38 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.10.129, i32 noundef 5) #38, !dbg !4311
  %39 = load ptr, ptr %4, align 8, !dbg !4311, !tbaa !1069
  %40 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4311
  %41 = load ptr, ptr %40, align 8, !dbg !4311, !tbaa !1069
  %42 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4311
  %43 = load ptr, ptr %42, align 8, !dbg !4311, !tbaa !1069
  %44 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4311
  %45 = load ptr, ptr %44, align 8, !dbg !4311, !tbaa !1069
  %46 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %38, ptr noundef %39, ptr noundef %41, ptr noundef %43, ptr noundef %45) #38, !dbg !4311
  br label %147, !dbg !4312

47:                                               ; preds = %12
  %48 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.11.130, i32 noundef 5) #38, !dbg !4313
  %49 = load ptr, ptr %4, align 8, !dbg !4313, !tbaa !1069
  %50 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4313
  %51 = load ptr, ptr %50, align 8, !dbg !4313, !tbaa !1069
  %52 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4313
  %53 = load ptr, ptr %52, align 8, !dbg !4313, !tbaa !1069
  %54 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4313
  %55 = load ptr, ptr %54, align 8, !dbg !4313, !tbaa !1069
  %56 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4313
  %57 = load ptr, ptr %56, align 8, !dbg !4313, !tbaa !1069
  %58 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %48, ptr noundef %49, ptr noundef %51, ptr noundef %53, ptr noundef %55, ptr noundef %57) #38, !dbg !4313
  br label %147, !dbg !4314

59:                                               ; preds = %12
  %60 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.12.131, i32 noundef 5) #38, !dbg !4315
  %61 = load ptr, ptr %4, align 8, !dbg !4315, !tbaa !1069
  %62 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4315
  %63 = load ptr, ptr %62, align 8, !dbg !4315, !tbaa !1069
  %64 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4315
  %65 = load ptr, ptr %64, align 8, !dbg !4315, !tbaa !1069
  %66 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4315
  %67 = load ptr, ptr %66, align 8, !dbg !4315, !tbaa !1069
  %68 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4315
  %69 = load ptr, ptr %68, align 8, !dbg !4315, !tbaa !1069
  %70 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4315
  %71 = load ptr, ptr %70, align 8, !dbg !4315, !tbaa !1069
  %72 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %60, ptr noundef %61, ptr noundef %63, ptr noundef %65, ptr noundef %67, ptr noundef %69, ptr noundef %71) #38, !dbg !4315
  br label %147, !dbg !4316

73:                                               ; preds = %12
  %74 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.13.132, i32 noundef 5) #38, !dbg !4317
  %75 = load ptr, ptr %4, align 8, !dbg !4317, !tbaa !1069
  %76 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4317
  %77 = load ptr, ptr %76, align 8, !dbg !4317, !tbaa !1069
  %78 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4317
  %79 = load ptr, ptr %78, align 8, !dbg !4317, !tbaa !1069
  %80 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4317
  %81 = load ptr, ptr %80, align 8, !dbg !4317, !tbaa !1069
  %82 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4317
  %83 = load ptr, ptr %82, align 8, !dbg !4317, !tbaa !1069
  %84 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4317
  %85 = load ptr, ptr %84, align 8, !dbg !4317, !tbaa !1069
  %86 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4317
  %87 = load ptr, ptr %86, align 8, !dbg !4317, !tbaa !1069
  %88 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %74, ptr noundef %75, ptr noundef %77, ptr noundef %79, ptr noundef %81, ptr noundef %83, ptr noundef %85, ptr noundef %87) #38, !dbg !4317
  br label %147, !dbg !4318

89:                                               ; preds = %12
  %90 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.14.133, i32 noundef 5) #38, !dbg !4319
  %91 = load ptr, ptr %4, align 8, !dbg !4319, !tbaa !1069
  %92 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4319
  %93 = load ptr, ptr %92, align 8, !dbg !4319, !tbaa !1069
  %94 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4319
  %95 = load ptr, ptr %94, align 8, !dbg !4319, !tbaa !1069
  %96 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4319
  %97 = load ptr, ptr %96, align 8, !dbg !4319, !tbaa !1069
  %98 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4319
  %99 = load ptr, ptr %98, align 8, !dbg !4319, !tbaa !1069
  %100 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4319
  %101 = load ptr, ptr %100, align 8, !dbg !4319, !tbaa !1069
  %102 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4319
  %103 = load ptr, ptr %102, align 8, !dbg !4319, !tbaa !1069
  %104 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4319
  %105 = load ptr, ptr %104, align 8, !dbg !4319, !tbaa !1069
  %106 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %90, ptr noundef %91, ptr noundef %93, ptr noundef %95, ptr noundef %97, ptr noundef %99, ptr noundef %101, ptr noundef %103, ptr noundef %105) #38, !dbg !4319
  br label %147, !dbg !4320

107:                                              ; preds = %12
  %108 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.15.134, i32 noundef 5) #38, !dbg !4321
  %109 = load ptr, ptr %4, align 8, !dbg !4321, !tbaa !1069
  %110 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4321
  %111 = load ptr, ptr %110, align 8, !dbg !4321, !tbaa !1069
  %112 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4321
  %113 = load ptr, ptr %112, align 8, !dbg !4321, !tbaa !1069
  %114 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4321
  %115 = load ptr, ptr %114, align 8, !dbg !4321, !tbaa !1069
  %116 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4321
  %117 = load ptr, ptr %116, align 8, !dbg !4321, !tbaa !1069
  %118 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4321
  %119 = load ptr, ptr %118, align 8, !dbg !4321, !tbaa !1069
  %120 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4321
  %121 = load ptr, ptr %120, align 8, !dbg !4321, !tbaa !1069
  %122 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4321
  %123 = load ptr, ptr %122, align 8, !dbg !4321, !tbaa !1069
  %124 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4321
  %125 = load ptr, ptr %124, align 8, !dbg !4321, !tbaa !1069
  %126 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %108, ptr noundef %109, ptr noundef %111, ptr noundef %113, ptr noundef %115, ptr noundef %117, ptr noundef %119, ptr noundef %121, ptr noundef %123, ptr noundef %125) #38, !dbg !4321
  br label %147, !dbg !4322

127:                                              ; preds = %12
  %128 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.16.135, i32 noundef 5) #38, !dbg !4323
  %129 = load ptr, ptr %4, align 8, !dbg !4323, !tbaa !1069
  %130 = getelementptr inbounds ptr, ptr %4, i64 1, !dbg !4323
  %131 = load ptr, ptr %130, align 8, !dbg !4323, !tbaa !1069
  %132 = getelementptr inbounds ptr, ptr %4, i64 2, !dbg !4323
  %133 = load ptr, ptr %132, align 8, !dbg !4323, !tbaa !1069
  %134 = getelementptr inbounds ptr, ptr %4, i64 3, !dbg !4323
  %135 = load ptr, ptr %134, align 8, !dbg !4323, !tbaa !1069
  %136 = getelementptr inbounds ptr, ptr %4, i64 4, !dbg !4323
  %137 = load ptr, ptr %136, align 8, !dbg !4323, !tbaa !1069
  %138 = getelementptr inbounds ptr, ptr %4, i64 5, !dbg !4323
  %139 = load ptr, ptr %138, align 8, !dbg !4323, !tbaa !1069
  %140 = getelementptr inbounds ptr, ptr %4, i64 6, !dbg !4323
  %141 = load ptr, ptr %140, align 8, !dbg !4323, !tbaa !1069
  %142 = getelementptr inbounds ptr, ptr %4, i64 7, !dbg !4323
  %143 = load ptr, ptr %142, align 8, !dbg !4323, !tbaa !1069
  %144 = getelementptr inbounds ptr, ptr %4, i64 8, !dbg !4323
  %145 = load ptr, ptr %144, align 8, !dbg !4323, !tbaa !1069
  %146 = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 1, ptr noundef %128, ptr noundef %129, ptr noundef %131, ptr noundef %133, ptr noundef %135, ptr noundef %137, ptr noundef %139, ptr noundef %141, ptr noundef %143, ptr noundef %145) #38, !dbg !4323
  br label %147, !dbg !4324

147:                                              ; preds = %127, %107, %89, %73, %59, %47, %37, %29, %23, %19, %12
  ret void, !dbg !4325
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_ar(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef readonly %4) local_unnamed_addr #10 !dbg !4326 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4330, metadata !DIExpression()), !dbg !4336
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4331, metadata !DIExpression()), !dbg !4336
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4332, metadata !DIExpression()), !dbg !4336
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4333, metadata !DIExpression()), !dbg !4336
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4334, metadata !DIExpression()), !dbg !4336
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4335, metadata !DIExpression()), !dbg !4336
  br label %6, !dbg !4337

6:                                                ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !4339
  tail call void @llvm.dbg.value(metadata i64 %7, metadata !4335, metadata !DIExpression()), !dbg !4336
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7, !dbg !4340
  %9 = load ptr, ptr %8, align 8, !dbg !4340, !tbaa !1069
  %10 = icmp eq ptr %9, null, !dbg !4342
  %11 = add i64 %7, 1, !dbg !4343
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !4335, metadata !DIExpression()), !dbg !4336
  br i1 %10, label %12, label %6, !dbg !4342, !llvm.loop !4344

12:                                               ; preds = %6
  %.lcssa = phi i64 [ %7, %6 ], !dbg !4339
  tail call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, i64 noundef %.lcssa), !dbg !4346
  ret void, !dbg !4347
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nocapture noundef %4) local_unnamed_addr #10 !dbg !4348 {
  %6 = alloca [10 x ptr], align 8, !DIAssignID !4370
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4368, metadata !DIExpression(), metadata !4370, metadata ptr %6, metadata !DIExpression()), !dbg !4371
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4362, metadata !DIExpression()), !dbg !4371
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4363, metadata !DIExpression()), !dbg !4371
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4364, metadata !DIExpression()), !dbg !4371
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4365, metadata !DIExpression()), !dbg !4371
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4366, metadata !DIExpression(DW_OP_deref)), !dbg !4371
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %6) #38, !dbg !4372
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4367, metadata !DIExpression()), !dbg !4371
  %7 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 3
  %8 = getelementptr inbounds %struct.__va_list, ptr %4, i64 0, i32 1
  %9 = load i32, ptr %7, align 8
  tail call void @llvm.dbg.value(metadata i64 0, metadata !4367, metadata !DIExpression()), !dbg !4371
  %10 = icmp sgt i32 %9, -1, !dbg !4373
  br i1 %10, label %18, label %11, !dbg !4373

11:                                               ; preds = %5
  %12 = add nsw i32 %9, 8, !dbg !4373
  store i32 %12, ptr %7, align 8, !dbg !4373
  %13 = icmp ult i32 %9, -7, !dbg !4373
  br i1 %13, label %14, label %18, !dbg !4373

14:                                               ; preds = %11
  %15 = load ptr, ptr %8, align 8, !dbg !4373
  %16 = sext i32 %9 to i64, !dbg !4373
  %17 = getelementptr inbounds i8, ptr %15, i64 %16, !dbg !4373
  br label %22, !dbg !4373

18:                                               ; preds = %11, %5
  %19 = phi i32 [ %12, %11 ], [ %9, %5 ]
  %20 = load ptr, ptr %4, align 8, !dbg !4373
  %21 = getelementptr inbounds i8, ptr %20, i64 8, !dbg !4373
  store ptr %21, ptr %4, align 8, !dbg !4373
  br label %22, !dbg !4373

22:                                               ; preds = %18, %14
  %23 = phi i32 [ %12, %14 ], [ %19, %18 ]
  %24 = phi ptr [ %17, %14 ], [ %20, %18 ], !dbg !4373
  %25 = load ptr, ptr %24, align 8, !dbg !4373
  store ptr %25, ptr %6, align 8, !dbg !4376, !tbaa !1069
  %26 = icmp eq ptr %25, null, !dbg !4377
  br i1 %26, label %197, label %27, !dbg !4378

27:                                               ; preds = %22
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4367, metadata !DIExpression()), !dbg !4371
  tail call void @llvm.dbg.value(metadata i64 1, metadata !4367, metadata !DIExpression()), !dbg !4371
  %28 = icmp sgt i32 %23, -1, !dbg !4373
  br i1 %28, label %36, label %29, !dbg !4373

29:                                               ; preds = %27
  %30 = add nsw i32 %23, 8, !dbg !4373
  store i32 %30, ptr %7, align 8, !dbg !4373
  %31 = icmp ult i32 %23, -7, !dbg !4373
  br i1 %31, label %32, label %36, !dbg !4373

32:                                               ; preds = %29
  %33 = load ptr, ptr %8, align 8, !dbg !4373
  %34 = sext i32 %23 to i64, !dbg !4373
  %35 = getelementptr inbounds i8, ptr %33, i64 %34, !dbg !4373
  br label %40, !dbg !4373

36:                                               ; preds = %29, %27
  %37 = phi i32 [ %30, %29 ], [ %23, %27 ]
  %38 = load ptr, ptr %4, align 8, !dbg !4373
  %39 = getelementptr inbounds i8, ptr %38, i64 8, !dbg !4373
  store ptr %39, ptr %4, align 8, !dbg !4373
  br label %40, !dbg !4373

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %30, %32 ], [ %37, %36 ]
  %42 = phi ptr [ %35, %32 ], [ %38, %36 ], !dbg !4373
  %43 = load ptr, ptr %42, align 8, !dbg !4373
  %44 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 1, !dbg !4379
  store ptr %43, ptr %44, align 8, !dbg !4376, !tbaa !1069
  %45 = icmp eq ptr %43, null, !dbg !4377
  br i1 %45, label %197, label %46, !dbg !4378

46:                                               ; preds = %40
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4367, metadata !DIExpression()), !dbg !4371
  tail call void @llvm.dbg.value(metadata i64 2, metadata !4367, metadata !DIExpression()), !dbg !4371
  %47 = icmp sgt i32 %41, -1, !dbg !4373
  br i1 %47, label %55, label %48, !dbg !4373

48:                                               ; preds = %46
  %49 = add nsw i32 %41, 8, !dbg !4373
  store i32 %49, ptr %7, align 8, !dbg !4373
  %50 = icmp ult i32 %41, -7, !dbg !4373
  br i1 %50, label %51, label %55, !dbg !4373

51:                                               ; preds = %48
  %52 = load ptr, ptr %8, align 8, !dbg !4373
  %53 = sext i32 %41 to i64, !dbg !4373
  %54 = getelementptr inbounds i8, ptr %52, i64 %53, !dbg !4373
  br label %59, !dbg !4373

55:                                               ; preds = %48, %46
  %56 = phi i32 [ %49, %48 ], [ %41, %46 ]
  %57 = load ptr, ptr %4, align 8, !dbg !4373
  %58 = getelementptr inbounds i8, ptr %57, i64 8, !dbg !4373
  store ptr %58, ptr %4, align 8, !dbg !4373
  br label %59, !dbg !4373

59:                                               ; preds = %55, %51
  %60 = phi i32 [ %49, %51 ], [ %56, %55 ]
  %61 = phi ptr [ %54, %51 ], [ %57, %55 ], !dbg !4373
  %62 = load ptr, ptr %61, align 8, !dbg !4373
  %63 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 2, !dbg !4379
  store ptr %62, ptr %63, align 8, !dbg !4376, !tbaa !1069
  %64 = icmp eq ptr %62, null, !dbg !4377
  br i1 %64, label %197, label %65, !dbg !4378

65:                                               ; preds = %59
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4367, metadata !DIExpression()), !dbg !4371
  tail call void @llvm.dbg.value(metadata i64 3, metadata !4367, metadata !DIExpression()), !dbg !4371
  %66 = icmp sgt i32 %60, -1, !dbg !4373
  br i1 %66, label %74, label %67, !dbg !4373

67:                                               ; preds = %65
  %68 = add nsw i32 %60, 8, !dbg !4373
  store i32 %68, ptr %7, align 8, !dbg !4373
  %69 = icmp ult i32 %60, -7, !dbg !4373
  br i1 %69, label %70, label %74, !dbg !4373

70:                                               ; preds = %67
  %71 = load ptr, ptr %8, align 8, !dbg !4373
  %72 = sext i32 %60 to i64, !dbg !4373
  %73 = getelementptr inbounds i8, ptr %71, i64 %72, !dbg !4373
  br label %78, !dbg !4373

74:                                               ; preds = %67, %65
  %75 = phi i32 [ %68, %67 ], [ %60, %65 ]
  %76 = load ptr, ptr %4, align 8, !dbg !4373
  %77 = getelementptr inbounds i8, ptr %76, i64 8, !dbg !4373
  store ptr %77, ptr %4, align 8, !dbg !4373
  br label %78, !dbg !4373

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %68, %70 ], [ %75, %74 ]
  %80 = phi ptr [ %73, %70 ], [ %76, %74 ], !dbg !4373
  %81 = load ptr, ptr %80, align 8, !dbg !4373
  %82 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 3, !dbg !4379
  store ptr %81, ptr %82, align 8, !dbg !4376, !tbaa !1069
  %83 = icmp eq ptr %81, null, !dbg !4377
  br i1 %83, label %197, label %84, !dbg !4378

84:                                               ; preds = %78
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4367, metadata !DIExpression()), !dbg !4371
  tail call void @llvm.dbg.value(metadata i64 4, metadata !4367, metadata !DIExpression()), !dbg !4371
  %85 = icmp sgt i32 %79, -1, !dbg !4373
  br i1 %85, label %93, label %86, !dbg !4373

86:                                               ; preds = %84
  %87 = add nsw i32 %79, 8, !dbg !4373
  store i32 %87, ptr %7, align 8, !dbg !4373
  %88 = icmp ult i32 %79, -7, !dbg !4373
  br i1 %88, label %89, label %93, !dbg !4373

89:                                               ; preds = %86
  %90 = load ptr, ptr %8, align 8, !dbg !4373
  %91 = sext i32 %79 to i64, !dbg !4373
  %92 = getelementptr inbounds i8, ptr %90, i64 %91, !dbg !4373
  br label %97, !dbg !4373

93:                                               ; preds = %86, %84
  %94 = phi i32 [ %87, %86 ], [ %79, %84 ]
  %95 = load ptr, ptr %4, align 8, !dbg !4373
  %96 = getelementptr inbounds i8, ptr %95, i64 8, !dbg !4373
  store ptr %96, ptr %4, align 8, !dbg !4373
  br label %97, !dbg !4373

97:                                               ; preds = %93, %89
  %98 = phi i32 [ %87, %89 ], [ %94, %93 ]
  %99 = phi ptr [ %92, %89 ], [ %95, %93 ], !dbg !4373
  %100 = load ptr, ptr %99, align 8, !dbg !4373
  %101 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 4, !dbg !4379
  store ptr %100, ptr %101, align 8, !dbg !4376, !tbaa !1069
  %102 = icmp eq ptr %100, null, !dbg !4377
  br i1 %102, label %197, label %103, !dbg !4378

103:                                              ; preds = %97
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4367, metadata !DIExpression()), !dbg !4371
  tail call void @llvm.dbg.value(metadata i64 5, metadata !4367, metadata !DIExpression()), !dbg !4371
  %104 = icmp sgt i32 %98, -1, !dbg !4373
  br i1 %104, label %112, label %105, !dbg !4373

105:                                              ; preds = %103
  %106 = add nsw i32 %98, 8, !dbg !4373
  store i32 %106, ptr %7, align 8, !dbg !4373
  %107 = icmp ult i32 %98, -7, !dbg !4373
  br i1 %107, label %108, label %112, !dbg !4373

108:                                              ; preds = %105
  %109 = load ptr, ptr %8, align 8, !dbg !4373
  %110 = sext i32 %98 to i64, !dbg !4373
  %111 = getelementptr inbounds i8, ptr %109, i64 %110, !dbg !4373
  br label %116, !dbg !4373

112:                                              ; preds = %105, %103
  %113 = phi i32 [ %106, %105 ], [ %98, %103 ]
  %114 = load ptr, ptr %4, align 8, !dbg !4373
  %115 = getelementptr inbounds i8, ptr %114, i64 8, !dbg !4373
  store ptr %115, ptr %4, align 8, !dbg !4373
  br label %116, !dbg !4373

116:                                              ; preds = %112, %108
  %117 = phi i32 [ %106, %108 ], [ %113, %112 ]
  %118 = phi ptr [ %111, %108 ], [ %114, %112 ], !dbg !4373
  %119 = load ptr, ptr %118, align 8, !dbg !4373
  %120 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 5, !dbg !4379
  store ptr %119, ptr %120, align 8, !dbg !4376, !tbaa !1069
  %121 = icmp eq ptr %119, null, !dbg !4377
  br i1 %121, label %197, label %122, !dbg !4378

122:                                              ; preds = %116
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4367, metadata !DIExpression()), !dbg !4371
  tail call void @llvm.dbg.value(metadata i64 6, metadata !4367, metadata !DIExpression()), !dbg !4371
  %123 = icmp sgt i32 %117, -1, !dbg !4373
  br i1 %123, label %131, label %124, !dbg !4373

124:                                              ; preds = %122
  %125 = add nsw i32 %117, 8, !dbg !4373
  store i32 %125, ptr %7, align 8, !dbg !4373
  %126 = icmp ult i32 %117, -7, !dbg !4373
  br i1 %126, label %127, label %131, !dbg !4373

127:                                              ; preds = %124
  %128 = load ptr, ptr %8, align 8, !dbg !4373
  %129 = sext i32 %117 to i64, !dbg !4373
  %130 = getelementptr inbounds i8, ptr %128, i64 %129, !dbg !4373
  br label %135, !dbg !4373

131:                                              ; preds = %124, %122
  %132 = phi i32 [ %125, %124 ], [ %117, %122 ]
  %133 = load ptr, ptr %4, align 8, !dbg !4373
  %134 = getelementptr inbounds i8, ptr %133, i64 8, !dbg !4373
  store ptr %134, ptr %4, align 8, !dbg !4373
  br label %135, !dbg !4373

135:                                              ; preds = %131, %127
  %136 = phi i32 [ %125, %127 ], [ %132, %131 ]
  %137 = phi ptr [ %130, %127 ], [ %133, %131 ], !dbg !4373
  %138 = load ptr, ptr %137, align 8, !dbg !4373
  %139 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 6, !dbg !4379
  store ptr %138, ptr %139, align 8, !dbg !4376, !tbaa !1069
  %140 = icmp eq ptr %138, null, !dbg !4377
  br i1 %140, label %197, label %141, !dbg !4378

141:                                              ; preds = %135
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4367, metadata !DIExpression()), !dbg !4371
  tail call void @llvm.dbg.value(metadata i64 7, metadata !4367, metadata !DIExpression()), !dbg !4371
  %142 = icmp sgt i32 %136, -1, !dbg !4373
  br i1 %142, label %150, label %143, !dbg !4373

143:                                              ; preds = %141
  %144 = add nsw i32 %136, 8, !dbg !4373
  store i32 %144, ptr %7, align 8, !dbg !4373
  %145 = icmp ult i32 %136, -7, !dbg !4373
  br i1 %145, label %146, label %150, !dbg !4373

146:                                              ; preds = %143
  %147 = load ptr, ptr %8, align 8, !dbg !4373
  %148 = sext i32 %136 to i64, !dbg !4373
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !4373
  br label %154, !dbg !4373

150:                                              ; preds = %143, %141
  %151 = phi i32 [ %144, %143 ], [ %136, %141 ]
  %152 = load ptr, ptr %4, align 8, !dbg !4373
  %153 = getelementptr inbounds i8, ptr %152, i64 8, !dbg !4373
  store ptr %153, ptr %4, align 8, !dbg !4373
  br label %154, !dbg !4373

154:                                              ; preds = %150, %146
  %155 = phi i32 [ %144, %146 ], [ %151, %150 ]
  %156 = phi ptr [ %149, %146 ], [ %152, %150 ], !dbg !4373
  %157 = load ptr, ptr %156, align 8, !dbg !4373
  %158 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 7, !dbg !4379
  store ptr %157, ptr %158, align 8, !dbg !4376, !tbaa !1069
  %159 = icmp eq ptr %157, null, !dbg !4377
  br i1 %159, label %197, label %160, !dbg !4378

160:                                              ; preds = %154
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4367, metadata !DIExpression()), !dbg !4371
  tail call void @llvm.dbg.value(metadata i64 8, metadata !4367, metadata !DIExpression()), !dbg !4371
  %161 = icmp sgt i32 %155, -1, !dbg !4373
  br i1 %161, label %169, label %162, !dbg !4373

162:                                              ; preds = %160
  %163 = add nsw i32 %155, 8, !dbg !4373
  store i32 %163, ptr %7, align 8, !dbg !4373
  %164 = icmp ult i32 %155, -7, !dbg !4373
  br i1 %164, label %165, label %169, !dbg !4373

165:                                              ; preds = %162
  %166 = load ptr, ptr %8, align 8, !dbg !4373
  %167 = sext i32 %155 to i64, !dbg !4373
  %168 = getelementptr inbounds i8, ptr %166, i64 %167, !dbg !4373
  br label %173, !dbg !4373

169:                                              ; preds = %162, %160
  %170 = phi i32 [ %163, %162 ], [ %155, %160 ]
  %171 = load ptr, ptr %4, align 8, !dbg !4373
  %172 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !4373
  store ptr %172, ptr %4, align 8, !dbg !4373
  br label %173, !dbg !4373

173:                                              ; preds = %169, %165
  %174 = phi i32 [ %163, %165 ], [ %170, %169 ]
  %175 = phi ptr [ %168, %165 ], [ %171, %169 ], !dbg !4373
  %176 = load ptr, ptr %175, align 8, !dbg !4373
  %177 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 8, !dbg !4379
  store ptr %176, ptr %177, align 8, !dbg !4376, !tbaa !1069
  %178 = icmp eq ptr %176, null, !dbg !4377
  br i1 %178, label %197, label %179, !dbg !4378

179:                                              ; preds = %173
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4367, metadata !DIExpression()), !dbg !4371
  tail call void @llvm.dbg.value(metadata i64 9, metadata !4367, metadata !DIExpression()), !dbg !4371
  %180 = icmp sgt i32 %174, -1, !dbg !4373
  br i1 %180, label %188, label %181, !dbg !4373

181:                                              ; preds = %179
  %182 = add nsw i32 %174, 8, !dbg !4373
  store i32 %182, ptr %7, align 8, !dbg !4373
  %183 = icmp ult i32 %174, -7, !dbg !4373
  br i1 %183, label %184, label %188, !dbg !4373

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !dbg !4373
  %186 = sext i32 %174 to i64, !dbg !4373
  %187 = getelementptr inbounds i8, ptr %185, i64 %186, !dbg !4373
  br label %191, !dbg !4373

188:                                              ; preds = %181, %179
  %189 = load ptr, ptr %4, align 8, !dbg !4373
  %190 = getelementptr inbounds i8, ptr %189, i64 8, !dbg !4373
  store ptr %190, ptr %4, align 8, !dbg !4373
  br label %191, !dbg !4373

191:                                              ; preds = %188, %184
  %192 = phi ptr [ %187, %184 ], [ %189, %188 ], !dbg !4373
  %193 = load ptr, ptr %192, align 8, !dbg !4373
  %194 = getelementptr inbounds [10 x ptr], ptr %6, i64 0, i64 9, !dbg !4379
  store ptr %193, ptr %194, align 8, !dbg !4376, !tbaa !1069
  %195 = icmp eq ptr %193, null, !dbg !4377
  %196 = select i1 %195, i64 9, i64 10, !dbg !4378
  br label %197, !dbg !4378

197:                                              ; preds = %191, %173, %154, %135, %116, %97, %78, %59, %40, %22
  %198 = phi i64 [ 0, %22 ], [ 1, %40 ], [ 2, %59 ], [ 3, %78 ], [ 4, %97 ], [ 5, %116 ], [ 6, %135 ], [ 7, %154 ], [ 8, %173 ], [ %196, %191 ], !dbg !4380
  call void @version_etc_arn(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6, i64 noundef %198), !dbg !4381
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %6) #38, !dbg !4382
  ret void, !dbg !4382
}

; Function Attrs: nounwind uwtable
define dso_local void @version_etc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ...) local_unnamed_addr #10 !dbg !4383 {
  %5 = alloca %struct.__va_list, align 8, !DIAssignID !4392
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4391, metadata !DIExpression(), metadata !4392, metadata ptr %5, metadata !DIExpression()), !dbg !4393
  %6 = alloca %struct.__va_list, align 8
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4387, metadata !DIExpression()), !dbg !4393
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4388, metadata !DIExpression()), !dbg !4393
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !4389, metadata !DIExpression()), !dbg !4393
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4390, metadata !DIExpression()), !dbg !4393
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #38, !dbg !4394
  call void @llvm.va_start(ptr nonnull %5), !dbg !4395
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %6) #38, !dbg !4396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 32, i1 false), !dbg !4396, !tbaa.struct !2339
  call void @version_etc_va(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6), !dbg !4396
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %6) #38, !dbg !4396
  call void @llvm.va_end(ptr nonnull %5), !dbg !4397
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #38, !dbg !4398
  ret void, !dbg !4398
}

; Function Attrs: nounwind uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #10 !dbg !4399 {
  %1 = load ptr, ptr @stdout, align 8, !dbg !4400, !tbaa !1069
  %2 = tail call i32 @fputs_unlocked(ptr noundef nonnull @.str.4.123, ptr noundef %1), !dbg !4400
  %3 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.17.140, i32 noundef 5) #38, !dbg !4401
  %4 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %3, ptr noundef nonnull @.str.18.141) #38, !dbg !4401
  %5 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.19.142, i32 noundef 5) #38, !dbg !4402
  %6 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %5, ptr noundef nonnull @.str.20.143, ptr noundef nonnull @.str.21.144) #38, !dbg !4402
  %7 = tail call ptr @dcgettext(ptr noundef nonnull @.str.2.121, ptr noundef nonnull @.str.22.145, i32 noundef 5) #38, !dbg !4403
  %8 = tail call i32 (i32, ptr, ...) @__printf_chk(i32 noundef 1, ptr noundef %7, ptr noundef nonnull @.str.23.146) #38, !dbg !4403
  ret void, !dbg !4404
}

; Function Attrs: inlinehint nounwind allocsize(1,2) uwtable
define dso_local ptr @xnrealloc(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #27 !dbg !4405 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4410, metadata !DIExpression()), !dbg !4413
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4411, metadata !DIExpression()), !dbg !4413
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4412, metadata !DIExpression()), !dbg !4413
  call void @llvm.dbg.value(metadata ptr %0, metadata !4414, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata i64 %1, metadata !4417, metadata !DIExpression()), !dbg !4419
  call void @llvm.dbg.value(metadata i64 %2, metadata !4418, metadata !DIExpression()), !dbg !4419
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4421
  call void @llvm.dbg.value(metadata ptr %4, metadata !4422, metadata !DIExpression()), !dbg !4427
  %5 = icmp eq ptr %4, null, !dbg !4429
  br i1 %5, label %6, label %7, !dbg !4431

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4432
  unreachable, !dbg !4432

7:                                                ; preds = %3
  ret ptr %4, !dbg !4433
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local ptr @xreallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !4415 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4414, metadata !DIExpression()), !dbg !4434
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4417, metadata !DIExpression()), !dbg !4434
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4418, metadata !DIExpression()), !dbg !4434
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4435
  call void @llvm.dbg.value(metadata ptr %4, metadata !4422, metadata !DIExpression()), !dbg !4436
  %5 = icmp eq ptr %4, null, !dbg !4438
  br i1 %5, label %6, label %7, !dbg !4439

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4440
  unreachable, !dbg !4440

7:                                                ; preds = %3
  ret ptr %4, !dbg !4441
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xmalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4442 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4446, metadata !DIExpression()), !dbg !4447
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4448
  call void @llvm.dbg.value(metadata ptr %2, metadata !4422, metadata !DIExpression()), !dbg !4449
  %3 = icmp eq ptr %2, null, !dbg !4451
  br i1 %3, label %4, label %5, !dbg !4452

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4453
  unreachable, !dbg !4453

5:                                                ; preds = %1
  ret ptr %2, !dbg !4454
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !4455 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #30

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @ximalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4456 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4460, metadata !DIExpression()), !dbg !4461
  call void @llvm.dbg.value(metadata i64 %0, metadata !4462, metadata !DIExpression()), !dbg !4466
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4468
  call void @llvm.dbg.value(metadata ptr %2, metadata !4422, metadata !DIExpression()), !dbg !4469
  %3 = icmp eq ptr %2, null, !dbg !4471
  br i1 %3, label %4, label %5, !dbg !4472

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4473
  unreachable, !dbg !4473

5:                                                ; preds = %1
  ret ptr %2, !dbg !4474
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xcharalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4475 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4479, metadata !DIExpression()), !dbg !4480
  call void @llvm.dbg.value(metadata i64 %0, metadata !4446, metadata !DIExpression()), !dbg !4481
  %2 = tail call noalias ptr @malloc(i64 noundef %0) #45, !dbg !4483
  call void @llvm.dbg.value(metadata ptr %2, metadata !4422, metadata !DIExpression()), !dbg !4484
  %3 = icmp eq ptr %2, null, !dbg !4486
  br i1 %3, label %4, label %5, !dbg !4487

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4488
  unreachable, !dbg !4488

5:                                                ; preds = %1
  ret ptr %2, !dbg !4489
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef ptr @xrealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4490 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4494, metadata !DIExpression()), !dbg !4496
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4495, metadata !DIExpression()), !dbg !4496
  call void @llvm.dbg.value(metadata ptr %0, metadata !4497, metadata !DIExpression()), !dbg !4502
  call void @llvm.dbg.value(metadata i64 %1, metadata !4501, metadata !DIExpression()), !dbg !4502
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4504
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #44, !dbg !4505
  call void @llvm.dbg.value(metadata ptr %4, metadata !4422, metadata !DIExpression()), !dbg !4506
  %5 = icmp eq ptr %4, null, !dbg !4508
  br i1 %5, label %6, label %7, !dbg !4509

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4510
  unreachable, !dbg !4510

7:                                                ; preds = %2
  ret ptr %4, !dbg !4511
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !4512 noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #32

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias noundef nonnull ptr @xirealloc(ptr nocapture noundef %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4513 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4517, metadata !DIExpression()), !dbg !4519
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4518, metadata !DIExpression()), !dbg !4519
  call void @llvm.dbg.value(metadata ptr %0, metadata !4520, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata i64 %1, metadata !4523, metadata !DIExpression()), !dbg !4524
  call void @llvm.dbg.value(metadata ptr %0, metadata !4497, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i64 %1, metadata !4501, metadata !DIExpression()), !dbg !4526
  %3 = tail call i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !4528
  %4 = tail call ptr @realloc(ptr noundef %0, i64 noundef %3) #44, !dbg !4529
  call void @llvm.dbg.value(metadata ptr %4, metadata !4422, metadata !DIExpression()), !dbg !4530
  %5 = icmp eq ptr %4, null, !dbg !4532
  br i1 %5, label %6, label %7, !dbg !4533

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4534
  unreachable, !dbg !4534

7:                                                ; preds = %2
  ret ptr %4, !dbg !4535
}

; Function Attrs: nounwind allocsize(1,2) uwtable
define dso_local nonnull ptr @xireallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #28 !dbg !4536 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4540, metadata !DIExpression()), !dbg !4543
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4541, metadata !DIExpression()), !dbg !4543
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !4542, metadata !DIExpression()), !dbg !4543
  call void @llvm.dbg.value(metadata ptr %0, metadata !4544, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i64 %1, metadata !4547, metadata !DIExpression()), !dbg !4549
  call void @llvm.dbg.value(metadata i64 %2, metadata !4548, metadata !DIExpression()), !dbg !4549
  %4 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %1, i64 noundef %2) #38, !dbg !4551
  call void @llvm.dbg.value(metadata ptr %4, metadata !4422, metadata !DIExpression()), !dbg !4552
  %5 = icmp eq ptr %4, null, !dbg !4554
  br i1 %5, label %6, label %7, !dbg !4555

6:                                                ; preds = %3
  tail call void @xalloc_die() #40, !dbg !4556
  unreachable, !dbg !4556

7:                                                ; preds = %3
  ret ptr %4, !dbg !4557
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xnmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4558 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4562, metadata !DIExpression()), !dbg !4564
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4563, metadata !DIExpression()), !dbg !4564
  call void @llvm.dbg.value(metadata ptr null, metadata !4414, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %0, metadata !4417, metadata !DIExpression()), !dbg !4565
  call void @llvm.dbg.value(metadata i64 %1, metadata !4418, metadata !DIExpression()), !dbg !4565
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4567
  call void @llvm.dbg.value(metadata ptr %3, metadata !4422, metadata !DIExpression()), !dbg !4568
  %4 = icmp eq ptr %3, null, !dbg !4570
  br i1 %4, label %5, label %6, !dbg !4571

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4572
  unreachable, !dbg !4572

6:                                                ; preds = %2
  ret ptr %3, !dbg !4573
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias nonnull ptr @xinmalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4574 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4578, metadata !DIExpression()), !dbg !4580
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4579, metadata !DIExpression()), !dbg !4580
  call void @llvm.dbg.value(metadata ptr null, metadata !4540, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata i64 %0, metadata !4541, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata i64 %1, metadata !4542, metadata !DIExpression()), !dbg !4581
  call void @llvm.dbg.value(metadata ptr null, metadata !4544, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.value(metadata i64 %0, metadata !4547, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.value(metadata i64 %1, metadata !4548, metadata !DIExpression()), !dbg !4583
  %3 = tail call ptr @rpl_reallocarray(ptr noundef null, i64 noundef %0, i64 noundef %1) #38, !dbg !4585
  call void @llvm.dbg.value(metadata ptr %3, metadata !4422, metadata !DIExpression()), !dbg !4586
  %4 = icmp eq ptr %3, null, !dbg !4588
  br i1 %4, label %5, label %6, !dbg !4589

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4590
  unreachable, !dbg !4590

6:                                                ; preds = %2
  ret ptr %3, !dbg !4591
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2realloc(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #10 !dbg !4592 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4596, metadata !DIExpression()), !dbg !4598
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4597, metadata !DIExpression()), !dbg !4598
  call void @llvm.dbg.value(metadata ptr %0, metadata !1011, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata ptr %1, metadata !1012, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata i64 1, metadata !1013, metadata !DIExpression()), !dbg !4599
  %3 = load i64, ptr %1, align 8, !dbg !4601, !tbaa !1363
  call void @llvm.dbg.value(metadata i64 %3, metadata !1014, metadata !DIExpression()), !dbg !4599
  %4 = icmp eq ptr %0, null, !dbg !4602
  br i1 %4, label %5, label %8, !dbg !4604

5:                                                ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !4605
  %7 = select i1 %6, i64 128, i64 %3, !dbg !4608
  br label %15, !dbg !4608

8:                                                ; preds = %2
  %9 = lshr i64 %3, 1, !dbg !4609
  %10 = add nuw i64 %9, 1, !dbg !4609
  %11 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %3, i64 %10), !dbg !4609
  %12 = extractvalue { i64, i1 } %11, 1, !dbg !4609
  %13 = extractvalue { i64, i1 } %11, 0, !dbg !4609
  call void @llvm.dbg.value(metadata i64 %13, metadata !1014, metadata !DIExpression()), !dbg !4599
  br i1 %12, label %14, label %15, !dbg !4612

14:                                               ; preds = %8
  tail call void @xalloc_die() #40, !dbg !4613
  unreachable, !dbg !4613

15:                                               ; preds = %5, %8
  %16 = phi i64 [ %13, %8 ], [ %7, %5 ], !dbg !4599
  call void @llvm.dbg.value(metadata i64 %16, metadata !1014, metadata !DIExpression()), !dbg !4599
  call void @llvm.dbg.value(metadata ptr %0, metadata !4414, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i64 %16, metadata !4417, metadata !DIExpression()), !dbg !4614
  call void @llvm.dbg.value(metadata i64 1, metadata !4418, metadata !DIExpression()), !dbg !4614
  %17 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %16, i64 noundef 1) #38, !dbg !4616
  call void @llvm.dbg.value(metadata ptr %17, metadata !4422, metadata !DIExpression()), !dbg !4617
  %18 = icmp eq ptr %17, null, !dbg !4619
  br i1 %18, label %19, label %20, !dbg !4620

19:                                               ; preds = %15
  tail call void @xalloc_die() #40, !dbg !4621
  unreachable, !dbg !4621

20:                                               ; preds = %15
  call void @llvm.dbg.value(metadata ptr %17, metadata !1011, metadata !DIExpression()), !dbg !4599
  store i64 %16, ptr %1, align 8, !dbg !4622, !tbaa !1363
  ret ptr %17, !dbg !4623
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @x2nrealloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) local_unnamed_addr #10 !dbg !1006 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1011, metadata !DIExpression()), !dbg !4624
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1012, metadata !DIExpression()), !dbg !4624
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1013, metadata !DIExpression()), !dbg !4624
  %4 = load i64, ptr %1, align 8, !dbg !4625, !tbaa !1363
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1014, metadata !DIExpression()), !dbg !4624
  %5 = icmp eq ptr %0, null, !dbg !4626
  br i1 %5, label %6, label %13, !dbg !4627

6:                                                ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !4628
  br i1 %7, label %8, label %20, !dbg !4629

8:                                                ; preds = %6
  %9 = udiv i64 128, %2, !dbg !4630
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !1014, metadata !DIExpression()), !dbg !4624
  %10 = icmp ugt i64 %2, 128, !dbg !4632
  %11 = zext i1 %10 to i64
  %12 = add nuw nsw i64 %9, %11, !dbg !4633
  tail call void @llvm.dbg.value(metadata i64 %12, metadata !1014, metadata !DIExpression()), !dbg !4624
  br label %20, !dbg !4634

13:                                               ; preds = %3
  %14 = lshr i64 %4, 1, !dbg !4635
  %15 = add nuw i64 %14, 1, !dbg !4635
  %16 = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %4, i64 %15), !dbg !4635
  %17 = extractvalue { i64, i1 } %16, 1, !dbg !4635
  %18 = extractvalue { i64, i1 } %16, 0, !dbg !4635
  tail call void @llvm.dbg.value(metadata i64 %18, metadata !1014, metadata !DIExpression()), !dbg !4624
  br i1 %17, label %19, label %20, !dbg !4636

19:                                               ; preds = %13
  tail call void @xalloc_die() #40, !dbg !4637
  unreachable, !dbg !4637

20:                                               ; preds = %13, %6, %8
  %21 = phi i64 [ %18, %13 ], [ %4, %6 ], [ %12, %8 ], !dbg !4624
  tail call void @llvm.dbg.value(metadata i64 %21, metadata !1014, metadata !DIExpression()), !dbg !4624
  call void @llvm.dbg.value(metadata ptr %0, metadata !4414, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata i64 %21, metadata !4417, metadata !DIExpression()), !dbg !4638
  call void @llvm.dbg.value(metadata i64 %2, metadata !4418, metadata !DIExpression()), !dbg !4638
  %22 = tail call ptr @rpl_reallocarray(ptr noundef %0, i64 noundef %21, i64 noundef %2) #38, !dbg !4640
  call void @llvm.dbg.value(metadata ptr %22, metadata !4422, metadata !DIExpression()), !dbg !4641
  %23 = icmp eq ptr %22, null, !dbg !4643
  br i1 %23, label %24, label %25, !dbg !4644

24:                                               ; preds = %20
  tail call void @xalloc_die() #40, !dbg !4645
  unreachable, !dbg !4645

25:                                               ; preds = %20
  tail call void @llvm.dbg.value(metadata ptr %22, metadata !1011, metadata !DIExpression()), !dbg !4624
  store i64 %21, ptr %1, align 8, !dbg !4646, !tbaa !1363
  ret ptr %22, !dbg !4647
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef nonnull ptr @xpalloc(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #10 !dbg !1018 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !1025, metadata !DIExpression()), !dbg !4648
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !1026, metadata !DIExpression()), !dbg !4648
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !1027, metadata !DIExpression()), !dbg !4648
  tail call void @llvm.dbg.value(metadata i64 %3, metadata !1028, metadata !DIExpression()), !dbg !4648
  tail call void @llvm.dbg.value(metadata i64 %4, metadata !1029, metadata !DIExpression()), !dbg !4648
  %6 = load i64, ptr %1, align 8, !dbg !4649, !tbaa !1363
  tail call void @llvm.dbg.value(metadata i64 %6, metadata !1030, metadata !DIExpression()), !dbg !4648
  %7 = ashr i64 %6, 1, !dbg !4650
  %8 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %7), !dbg !4650
  %9 = extractvalue { i64, i1 } %8, 1, !dbg !4650
  %10 = extractvalue { i64, i1 } %8, 0, !dbg !4650
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !1031, metadata !DIExpression()), !dbg !4648
  %11 = select i1 %9, i64 9223372036854775807, i64 %10, !dbg !4652
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !1031, metadata !DIExpression()), !dbg !4648
  %12 = icmp sgt i64 %3, -1, !dbg !4653
  %13 = tail call i64 @llvm.smin.i64(i64 %11, i64 %3), !dbg !4655
  %14 = select i1 %12, i64 %13, i64 %11, !dbg !4655
  tail call void @llvm.dbg.value(metadata i64 %14, metadata !1031, metadata !DIExpression()), !dbg !4648
  %15 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %14, i64 %4), !dbg !4656
  %16 = extractvalue { i64, i1 } %15, 1, !dbg !4656
  %17 = extractvalue { i64, i1 } %15, 0, !dbg !4656
  tail call void @llvm.dbg.value(metadata i64 %17, metadata !1032, metadata !DIExpression()), !dbg !4648
  %18 = icmp slt i64 %17, 128, !dbg !4656
  %19 = select i1 %18, i64 128, i64 0, !dbg !4656
  %20 = select i1 %16, i64 9223372036854775807, i64 %19, !dbg !4656
  tail call void @llvm.dbg.value(metadata i64 %20, metadata !1033, metadata !DIExpression()), !dbg !4648
  %21 = icmp eq i64 %20, 0, !dbg !4657
  br i1 %21, label %28, label %22, !dbg !4659

22:                                               ; preds = %5
  %23 = freeze i64 %20
  %24 = sdiv i64 %23, %4, !dbg !4660
  tail call void @llvm.dbg.value(metadata i64 %24, metadata !1031, metadata !DIExpression()), !dbg !4648
  %25 = mul i64 %24, %4
  %26 = sub i64 %23, %25
  %27 = sub nsw i64 %20, %26, !dbg !4662
  tail call void @llvm.dbg.value(metadata i64 %27, metadata !1032, metadata !DIExpression()), !dbg !4648
  br label %28, !dbg !4663

28:                                               ; preds = %22, %5
  %29 = phi i64 [ %24, %22 ], [ %14, %5 ], !dbg !4648
  %30 = phi i64 [ %27, %22 ], [ %17, %5 ], !dbg !4648
  tail call void @llvm.dbg.value(metadata i64 %30, metadata !1032, metadata !DIExpression()), !dbg !4648
  tail call void @llvm.dbg.value(metadata i64 %29, metadata !1031, metadata !DIExpression()), !dbg !4648
  %31 = icmp eq ptr %0, null, !dbg !4664
  br i1 %31, label %32, label %33, !dbg !4666

32:                                               ; preds = %28
  store i64 0, ptr %1, align 8, !dbg !4667, !tbaa !1363
  br label %33, !dbg !4668

33:                                               ; preds = %32, %28
  %34 = sub nsw i64 %29, %6, !dbg !4669
  %35 = icmp slt i64 %34, %2, !dbg !4671
  br i1 %35, label %36, label %48, !dbg !4672

36:                                               ; preds = %33
  %37 = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %6, i64 %2), !dbg !4673
  %38 = extractvalue { i64, i1 } %37, 1, !dbg !4673
  %39 = extractvalue { i64, i1 } %37, 0, !dbg !4673
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !1031, metadata !DIExpression()), !dbg !4648
  %40 = icmp sgt i64 %39, %3
  %41 = select i1 %12, i1 %40, i1 false
  %42 = or i1 %38, %41, !dbg !4674
  br i1 %42, label %47, label %43, !dbg !4674

43:                                               ; preds = %36
  %44 = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %39, i64 %4), !dbg !4675
  %45 = extractvalue { i64, i1 } %44, 1, !dbg !4675
  %46 = extractvalue { i64, i1 } %44, 0, !dbg !4675
  tail call void @llvm.dbg.value(metadata i64 %46, metadata !1032, metadata !DIExpression()), !dbg !4648
  br i1 %45, label %47, label %48, !dbg !4676

47:                                               ; preds = %43, %36
  tail call void @xalloc_die() #40, !dbg !4677
  unreachable, !dbg !4677

48:                                               ; preds = %43, %33
  %49 = phi i64 [ %39, %43 ], [ %29, %33 ], !dbg !4648
  %50 = phi i64 [ %46, %43 ], [ %30, %33 ], !dbg !4648
  tail call void @llvm.dbg.value(metadata i64 %50, metadata !1032, metadata !DIExpression()), !dbg !4648
  tail call void @llvm.dbg.value(metadata i64 %49, metadata !1031, metadata !DIExpression()), !dbg !4648
  call void @llvm.dbg.value(metadata ptr %0, metadata !4494, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.value(metadata i64 %50, metadata !4495, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.value(metadata ptr %0, metadata !4497, metadata !DIExpression()), !dbg !4680
  call void @llvm.dbg.value(metadata i64 %50, metadata !4501, metadata !DIExpression()), !dbg !4680
  %51 = tail call i64 @llvm.umax.i64(i64 %50, i64 1), !dbg !4682
  %52 = tail call ptr @realloc(ptr noundef %0, i64 noundef %51) #44, !dbg !4683
  call void @llvm.dbg.value(metadata ptr %52, metadata !4422, metadata !DIExpression()), !dbg !4684
  %53 = icmp eq ptr %52, null, !dbg !4686
  br i1 %53, label %54, label %55, !dbg !4687

54:                                               ; preds = %48
  tail call void @xalloc_die() #40, !dbg !4688
  unreachable, !dbg !4688

55:                                               ; preds = %48
  tail call void @llvm.dbg.value(metadata ptr %52, metadata !1025, metadata !DIExpression()), !dbg !4648
  store i64 %49, ptr %1, align 8, !dbg !4689, !tbaa !1363
  ret ptr %52, !dbg !4690
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #1

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xzalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4691 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4693, metadata !DIExpression()), !dbg !4694
  call void @llvm.dbg.value(metadata i64 %0, metadata !4695, metadata !DIExpression()), !dbg !4699
  call void @llvm.dbg.value(metadata i64 1, metadata !4698, metadata !DIExpression()), !dbg !4699
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4701
  call void @llvm.dbg.value(metadata ptr %2, metadata !4422, metadata !DIExpression()), !dbg !4702
  %3 = icmp eq ptr %2, null, !dbg !4704
  br i1 %3, label %4, label %5, !dbg !4705

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4706
  unreachable, !dbg !4706

5:                                                ; preds = %1
  ret ptr %2, !dbg !4707
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare !dbg !4708 noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #34

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xcalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4696 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4695, metadata !DIExpression()), !dbg !4709
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4698, metadata !DIExpression()), !dbg !4709
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4710
  call void @llvm.dbg.value(metadata ptr %3, metadata !4422, metadata !DIExpression()), !dbg !4711
  %4 = icmp eq ptr %3, null, !dbg !4713
  br i1 %4, label %5, label %6, !dbg !4714

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4715
  unreachable, !dbg !4715

6:                                                ; preds = %2
  ret ptr %3, !dbg !4716
}

; Function Attrs: nounwind allocsize(0) uwtable
define dso_local noalias noundef nonnull ptr @xizalloc(i64 noundef %0) local_unnamed_addr #29 !dbg !4717 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4719, metadata !DIExpression()), !dbg !4720
  call void @llvm.dbg.value(metadata i64 %0, metadata !4721, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata i64 1, metadata !4724, metadata !DIExpression()), !dbg !4725
  call void @llvm.dbg.value(metadata i64 %0, metadata !4727, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata i64 1, metadata !4730, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata i64 %0, metadata !4727, metadata !DIExpression()), !dbg !4731
  call void @llvm.dbg.value(metadata i64 1, metadata !4730, metadata !DIExpression()), !dbg !4731
  %2 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef 1) #46, !dbg !4733
  call void @llvm.dbg.value(metadata ptr %2, metadata !4422, metadata !DIExpression()), !dbg !4734
  %3 = icmp eq ptr %2, null, !dbg !4736
  br i1 %3, label %4, label %5, !dbg !4737

4:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4738
  unreachable, !dbg !4738

5:                                                ; preds = %1
  ret ptr %2, !dbg !4739
}

; Function Attrs: nounwind allocsize(0,1) uwtable
define dso_local noalias noundef nonnull ptr @xicalloc(i64 noundef %0, i64 noundef %1) local_unnamed_addr #33 !dbg !4722 {
  tail call void @llvm.dbg.value(metadata i64 %0, metadata !4721, metadata !DIExpression()), !dbg !4740
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4724, metadata !DIExpression()), !dbg !4740
  call void @llvm.dbg.value(metadata i64 %0, metadata !4727, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i64 %1, metadata !4730, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i64 %0, metadata !4727, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.value(metadata i64 %1, metadata !4730, metadata !DIExpression()), !dbg !4741
  %3 = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #46, !dbg !4743
  call void @llvm.dbg.value(metadata ptr %3, metadata !4422, metadata !DIExpression()), !dbg !4744
  %4 = icmp eq ptr %3, null, !dbg !4746
  br i1 %4, label %5, label %6, !dbg !4747

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4748
  unreachable, !dbg !4748

6:                                                ; preds = %2
  ret ptr %3, !dbg !4749
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @xmemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4750 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4754, metadata !DIExpression()), !dbg !4756
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4755, metadata !DIExpression()), !dbg !4756
  call void @llvm.dbg.value(metadata i64 %1, metadata !4446, metadata !DIExpression()), !dbg !4757
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4759
  call void @llvm.dbg.value(metadata ptr %3, metadata !4422, metadata !DIExpression()), !dbg !4760
  %4 = icmp eq ptr %3, null, !dbg !4762
  br i1 %4, label %5, label %6, !dbg !4763

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4764
  unreachable, !dbg !4764

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4765, metadata !DIExpression()), !dbg !4773
  call void @llvm.dbg.value(metadata ptr %0, metadata !4771, metadata !DIExpression()), !dbg !4773
  call void @llvm.dbg.value(metadata i64 %1, metadata !4772, metadata !DIExpression()), !dbg !4773
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4775
  ret ptr %3, !dbg !4776
}

; Function Attrs: nounwind allocsize(1) uwtable
define dso_local noalias nonnull ptr @ximemdup(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #31 !dbg !4777 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4781, metadata !DIExpression()), !dbg !4783
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4782, metadata !DIExpression()), !dbg !4783
  call void @llvm.dbg.value(metadata i64 %1, metadata !4460, metadata !DIExpression()), !dbg !4784
  call void @llvm.dbg.value(metadata i64 %1, metadata !4462, metadata !DIExpression()), !dbg !4786
  %3 = tail call noalias ptr @malloc(i64 noundef %1) #45, !dbg !4788
  call void @llvm.dbg.value(metadata ptr %3, metadata !4422, metadata !DIExpression()), !dbg !4789
  %4 = icmp eq ptr %3, null, !dbg !4791
  br i1 %4, label %5, label %6, !dbg !4792

5:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4793
  unreachable, !dbg !4793

6:                                                ; preds = %2
  call void @llvm.dbg.value(metadata ptr %3, metadata !4765, metadata !DIExpression()), !dbg !4794
  call void @llvm.dbg.value(metadata ptr %0, metadata !4771, metadata !DIExpression()), !dbg !4794
  call void @llvm.dbg.value(metadata i64 %1, metadata !4772, metadata !DIExpression()), !dbg !4794
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %3, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4796
  ret ptr %3, !dbg !4797
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @ximemdup0(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #10 !dbg !4798 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4802, metadata !DIExpression()), !dbg !4805
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !4803, metadata !DIExpression()), !dbg !4805
  %3 = add nsw i64 %1, 1, !dbg !4806
  call void @llvm.dbg.value(metadata i64 %3, metadata !4460, metadata !DIExpression()), !dbg !4807
  call void @llvm.dbg.value(metadata i64 %3, metadata !4462, metadata !DIExpression()), !dbg !4809
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4811
  call void @llvm.dbg.value(metadata ptr %4, metadata !4422, metadata !DIExpression()), !dbg !4812
  %5 = icmp eq ptr %4, null, !dbg !4814
  br i1 %5, label %6, label %7, !dbg !4815

6:                                                ; preds = %2
  tail call void @xalloc_die() #40, !dbg !4816
  unreachable, !dbg !4816

7:                                                ; preds = %2
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !4804, metadata !DIExpression()), !dbg !4805
  %8 = getelementptr inbounds i8, ptr %4, i64 %1, !dbg !4817
  store i8 0, ptr %8, align 1, !dbg !4818, !tbaa !1147
  call void @llvm.dbg.value(metadata ptr %4, metadata !4765, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata ptr %0, metadata !4771, metadata !DIExpression()), !dbg !4819
  call void @llvm.dbg.value(metadata i64 %1, metadata !4772, metadata !DIExpression()), !dbg !4819
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %1, i1 noundef false) #38, !dbg !4821
  ret ptr %4, !dbg !4822
}

; Function Attrs: nounwind uwtable
define dso_local noalias nonnull ptr @xstrdup(ptr nocapture noundef readonly %0) local_unnamed_addr #10 !dbg !4823 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4825, metadata !DIExpression()), !dbg !4826
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #39, !dbg !4827
  %3 = add i64 %2, 1, !dbg !4828
  call void @llvm.dbg.value(metadata ptr %0, metadata !4754, metadata !DIExpression()), !dbg !4829
  call void @llvm.dbg.value(metadata i64 %3, metadata !4755, metadata !DIExpression()), !dbg !4829
  call void @llvm.dbg.value(metadata i64 %3, metadata !4446, metadata !DIExpression()), !dbg !4831
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #45, !dbg !4833
  call void @llvm.dbg.value(metadata ptr %4, metadata !4422, metadata !DIExpression()), !dbg !4834
  %5 = icmp eq ptr %4, null, !dbg !4836
  br i1 %5, label %6, label %7, !dbg !4837

6:                                                ; preds = %1
  tail call void @xalloc_die() #40, !dbg !4838
  unreachable, !dbg !4838

7:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %4, metadata !4765, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata ptr %0, metadata !4771, metadata !DIExpression()), !dbg !4839
  call void @llvm.dbg.value(metadata i64 %3, metadata !4772, metadata !DIExpression()), !dbg !4839
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %4, ptr noundef nonnull align 1 %0, i64 noundef %3, i1 noundef false) #38, !dbg !4841
  ret ptr %4, !dbg !4842
}

; Function Attrs: noreturn nounwind uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !4843 {
  %1 = load volatile i32, ptr @exit_failure, align 4, !dbg !4848, !tbaa !1138
  tail call void @llvm.dbg.value(metadata i32 %1, metadata !4845, metadata !DIExpression()), !dbg !4849
  %2 = tail call ptr @dcgettext(ptr noundef nonnull @.str.1.159, ptr noundef nonnull @.str.2.160, i32 noundef 5) #38, !dbg !4848
  tail call void (i32, i32, ptr, ...) @error(i32 noundef %1, i32 noundef 0, ptr noundef nonnull @.str.161, ptr noundef %2) #38, !dbg !4848
  %3 = icmp eq i32 %1, 0, !dbg !4848
  tail call void @llvm.assume(i1 %3), !dbg !4848
  tail call void @abort() #40, !dbg !4850
  unreachable, !dbg !4850
}

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @rpl_fopen(ptr nocapture noundef nonnull readonly %0, ptr nocapture noundef nonnull readonly %1) local_unnamed_addr #10 !dbg !4851 {
  %3 = alloca [81 x i8], align 1, !DIAssignID !4913
  call void @llvm.dbg.assign(metadata i1 undef, metadata !4894, metadata !DIExpression(), metadata !4913, metadata ptr %3, metadata !DIExpression()), !dbg !4914
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !4889, metadata !DIExpression()), !dbg !4914
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4890, metadata !DIExpression()), !dbg !4914
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4891, metadata !DIExpression()), !dbg !4914
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4892, metadata !DIExpression()), !dbg !4914
  tail call void @llvm.dbg.value(metadata i8 0, metadata !4893, metadata !DIExpression()), !dbg !4914
  call void @llvm.lifetime.start.p0(i64 81, ptr nonnull %3) #38, !dbg !4915
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !4898, metadata !DIExpression()), !dbg !4916
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !4900, metadata !DIExpression()), !dbg !4916
  br label %4, !dbg !4917

4:                                                ; preds = %43, %2
  %5 = phi i1 [ false, %2 ], [ %44, %43 ]
  %6 = phi ptr [ %1, %2 ], [ %48, %43 ], !dbg !4916
  %7 = phi i64 [ 0, %2 ], [ %45, %43 ]
  %8 = phi i32 [ 0, %2 ], [ %46, %43 ], !dbg !4914
  %9 = phi i32 [ 0, %2 ], [ %47, %43 ], !dbg !4918
  %10 = getelementptr inbounds i8, ptr %3, i64 %7, !dbg !4919
  tail call void @llvm.dbg.value(metadata i32 %9, metadata !4891, metadata !DIExpression()), !dbg !4914
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4892, metadata !DIExpression()), !dbg !4914
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !4900, metadata !DIExpression()), !dbg !4916
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !4898, metadata !DIExpression()), !dbg !4916
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4893, metadata !DIExpression()), !dbg !4914
  %11 = load i8, ptr %6, align 1, !dbg !4919, !tbaa !1147
  switch i8 %11, label %38 [
    i8 0, label %.loopexit
    i8 114, label %12
    i8 119, label %16
    i8 97, label %21
    i8 98, label %26
    i8 43, label %30
    i8 120, label %34
    i8 101, label %36
  ], !dbg !4920

12:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 0, metadata !4891, metadata !DIExpression()), !dbg !4914
  %13 = icmp slt i64 %7, 80, !dbg !4921
  br i1 %13, label %14, label %43, !dbg !4924

14:                                               ; preds = %12
  %15 = add nsw i64 %7, 1, !dbg !4925
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %15), metadata !4900, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4916
  store i8 114, ptr %10, align 1, !dbg !4926, !tbaa !1147
  br label %43, !dbg !4927

16:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4891, metadata !DIExpression()), !dbg !4914
  %17 = or i32 %8, 576, !dbg !4928
  tail call void @llvm.dbg.value(metadata i32 %17, metadata !4892, metadata !DIExpression()), !dbg !4914
  %18 = icmp slt i64 %7, 80, !dbg !4929
  br i1 %18, label %19, label %43, !dbg !4931

19:                                               ; preds = %16
  %20 = add nsw i64 %7, 1, !dbg !4932
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %20), metadata !4900, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4916
  store i8 119, ptr %10, align 1, !dbg !4933, !tbaa !1147
  br label %43, !dbg !4934

21:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 1, metadata !4891, metadata !DIExpression()), !dbg !4914
  %22 = or i32 %8, 1088, !dbg !4935
  tail call void @llvm.dbg.value(metadata i32 %22, metadata !4892, metadata !DIExpression()), !dbg !4914
  %23 = icmp slt i64 %7, 80, !dbg !4936
  br i1 %23, label %24, label %43, !dbg !4938

24:                                               ; preds = %21
  %25 = add nsw i64 %7, 1, !dbg !4939
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %25), metadata !4900, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4916
  store i8 97, ptr %10, align 1, !dbg !4940, !tbaa !1147
  br label %43, !dbg !4941

26:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 %8, metadata !4892, metadata !DIExpression()), !dbg !4914
  %27 = icmp slt i64 %7, 80, !dbg !4942
  br i1 %27, label %28, label %43, !dbg !4944

28:                                               ; preds = %26
  %29 = add nsw i64 %7, 1, !dbg !4945
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %29), metadata !4900, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4916
  store i8 98, ptr %10, align 1, !dbg !4946, !tbaa !1147
  br label %43, !dbg !4947

30:                                               ; preds = %4
  tail call void @llvm.dbg.value(metadata i32 2, metadata !4891, metadata !DIExpression()), !dbg !4914
  %31 = icmp slt i64 %7, 80, !dbg !4948
  br i1 %31, label %32, label %43, !dbg !4950

32:                                               ; preds = %30
  %33 = add nsw i64 %7, 1, !dbg !4951
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %33), metadata !4900, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4916
  store i8 43, ptr %10, align 1, !dbg !4952, !tbaa !1147
  br label %43, !dbg !4953

34:                                               ; preds = %4
  %35 = or i32 %8, 128, !dbg !4954
  tail call void @llvm.dbg.value(metadata i32 %35, metadata !4892, metadata !DIExpression()), !dbg !4914
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4893, metadata !DIExpression()), !dbg !4914
  br label %43, !dbg !4955

36:                                               ; preds = %4
  %37 = or i32 %8, 524288, !dbg !4956
  tail call void @llvm.dbg.value(metadata i32 %37, metadata !4892, metadata !DIExpression()), !dbg !4914
  tail call void @llvm.dbg.value(metadata i8 1, metadata !4893, metadata !DIExpression()), !dbg !4914
  br label %43, !dbg !4957

38:                                               ; preds = %4
  %.lcssa10 = phi i1 [ %5, %4 ]
  %.lcssa8 = phi ptr [ %6, %4 ], !dbg !4916
  %.lcssa6 = phi i64 [ %7, %4 ]
  %.lcssa4 = phi i32 [ %8, %4 ], !dbg !4914
  %.lcssa2 = phi i32 [ %9, %4 ], !dbg !4918
  %.lcssa = phi ptr [ %10, %4 ], !dbg !4919
  %39 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.lcssa8) #39, !dbg !4958
  tail call void @llvm.dbg.value(metadata i64 %39, metadata !4901, metadata !DIExpression()), !dbg !4959
  %40 = sub nsw i64 80, %.lcssa6, !dbg !4960
  %41 = tail call i64 @llvm.umin.i64(i64 %39, i64 %40), !dbg !4962
  tail call void @llvm.dbg.value(metadata i64 %41, metadata !4901, metadata !DIExpression()), !dbg !4959
  call void @llvm.dbg.value(metadata ptr %.lcssa, metadata !4963, metadata !DIExpression()), !dbg !4968
  call void @llvm.dbg.value(metadata ptr %.lcssa8, metadata !4966, metadata !DIExpression()), !dbg !4968
  call void @llvm.dbg.value(metadata i64 %41, metadata !4967, metadata !DIExpression()), !dbg !4968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.lcssa, ptr noundef nonnull align 1 %.lcssa8, i64 noundef %41, i1 noundef false) #38, !dbg !4970
  %42 = getelementptr inbounds i8, ptr %.lcssa, i64 %41, !dbg !4971
  tail call void @llvm.dbg.value(metadata ptr %42, metadata !4900, metadata !DIExpression()), !dbg !4916
  br label %49, !dbg !4972

43:                                               ; preds = %30, %32, %26, %28, %21, %24, %16, %19, %12, %14, %36, %34
  %44 = phi i1 [ true, %36 ], [ true, %34 ], [ %5, %32 ], [ %5, %30 ], [ %5, %28 ], [ %5, %26 ], [ %5, %24 ], [ %5, %21 ], [ %5, %19 ], [ %5, %16 ], [ %5, %14 ], [ %5, %12 ]
  %45 = phi i64 [ %7, %36 ], [ %7, %34 ], [ %33, %32 ], [ %7, %30 ], [ %29, %28 ], [ %7, %26 ], [ %25, %24 ], [ %7, %21 ], [ %20, %19 ], [ %7, %16 ], [ %15, %14 ], [ %7, %12 ]
  %46 = phi i32 [ %37, %36 ], [ %35, %34 ], [ %8, %32 ], [ %8, %30 ], [ %8, %28 ], [ %8, %26 ], [ %22, %24 ], [ %22, %21 ], [ %17, %19 ], [ %17, %16 ], [ %8, %14 ], [ %8, %12 ], !dbg !4914
  %47 = phi i32 [ %9, %36 ], [ %9, %34 ], [ 2, %32 ], [ 2, %30 ], [ %9, %28 ], [ %9, %26 ], [ 1, %24 ], [ 1, %21 ], [ 1, %19 ], [ 1, %16 ], [ 0, %14 ], [ 0, %12 ], !dbg !4914
  tail call void @llvm.dbg.value(metadata i32 %47, metadata !4891, metadata !DIExpression()), !dbg !4914
  tail call void @llvm.dbg.value(metadata i32 %46, metadata !4892, metadata !DIExpression()), !dbg !4914
  tail call void @llvm.dbg.value(metadata !DIArgList(ptr %3, i64 %45), metadata !4900, metadata !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_plus, DW_OP_stack_value)), !dbg !4916
  tail call void @llvm.dbg.value(metadata i8 poison, metadata !4893, metadata !DIExpression()), !dbg !4914
  %48 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !4973
  tail call void @llvm.dbg.value(metadata ptr %48, metadata !4898, metadata !DIExpression()), !dbg !4916
  br label %4, !dbg !4974, !llvm.loop !4975

.loopexit:                                        ; preds = %4
  %.lcssa11 = phi i1 [ %5, %4 ]
  %.lcssa5 = phi i32 [ %8, %4 ], !dbg !4914
  %.lcssa3 = phi i32 [ %9, %4 ], !dbg !4918
  %.lcssa1 = phi ptr [ %10, %4 ], !dbg !4919
  br label %49, !dbg !4977

49:                                               ; preds = %.loopexit, %38
  %50 = phi i1 [ %.lcssa10, %38 ], [ %.lcssa11, %.loopexit ]
  %51 = phi i32 [ %.lcssa4, %38 ], [ %.lcssa5, %.loopexit ]
  %52 = phi i32 [ %.lcssa2, %38 ], [ %.lcssa3, %.loopexit ]
  %53 = phi ptr [ %42, %38 ], [ %.lcssa1, %.loopexit ], !dbg !4916
  tail call void @llvm.dbg.value(metadata ptr %53, metadata !4900, metadata !DIExpression()), !dbg !4916
  store i8 0, ptr %53, align 1, !dbg !4977, !tbaa !1147
  br i1 %50, label %54, label %65, !dbg !4978

54:                                               ; preds = %49
  %55 = or i32 %52, %51, !dbg !4979
  %56 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %0, i32 noundef %55, i32 noundef 438) #38, !dbg !4980
  tail call void @llvm.dbg.value(metadata i32 %56, metadata !4906, metadata !DIExpression()), !dbg !4981
  %57 = icmp slt i32 %56, 0, !dbg !4982
  br i1 %57, label %67, label %58, !dbg !4984

58:                                               ; preds = %54
  %59 = call noalias ptr @fdopen(i32 noundef %56, ptr noundef nonnull %3) #38, !dbg !4985
  tail call void @llvm.dbg.value(metadata ptr %59, metadata !4909, metadata !DIExpression()), !dbg !4981
  %60 = icmp eq ptr %59, null, !dbg !4986
  br i1 %60, label %61, label %67, !dbg !4987

61:                                               ; preds = %58
  %62 = tail call ptr @__errno_location() #41, !dbg !4988
  %63 = load i32, ptr %62, align 4, !dbg !4988, !tbaa !1138
  tail call void @llvm.dbg.value(metadata i32 %63, metadata !4910, metadata !DIExpression()), !dbg !4989
  %64 = tail call i32 @close(i32 noundef %56) #38, !dbg !4990
  store i32 %63, ptr %62, align 4, !dbg !4991, !tbaa !1138
  br label %67, !dbg !4992

65:                                               ; preds = %49
  call void @llvm.dbg.value(metadata ptr %0, metadata !4993, metadata !DIExpression()), !dbg !4997
  call void @llvm.dbg.value(metadata ptr %1, metadata !4996, metadata !DIExpression()), !dbg !4997
  %66 = tail call noalias noundef ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull %1), !dbg !4999
  br label %67, !dbg !5000

67:                                               ; preds = %54, %61, %58, %65
  %68 = phi ptr [ %66, %65 ], [ null, %54 ], [ null, %61 ], [ %59, %58 ], !dbg !4914
  call void @llvm.lifetime.end.p0(i64 81, ptr nonnull %3) #38, !dbg !5001
  ret ptr %68, !dbg !5001
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #1

; Function Attrs: nofree
declare !dbg !5002 noundef i32 @open(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #35

; Function Attrs: nofree nounwind
declare !dbg !5005 noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #4

declare !dbg !5008 i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !5009 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream(ptr noundef %0) local_unnamed_addr #10 !dbg !5012 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5050, metadata !DIExpression()), !dbg !5055
  %2 = tail call i64 @__fpending(ptr noundef %0) #38, !dbg !5056
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5051, metadata !DIExpression(DW_OP_constu, 0, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5055
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5057, metadata !DIExpression()), !dbg !5060
  %3 = load i32, ptr %0, align 8, !dbg !5062, !tbaa !1391
  %4 = and i32 %3, 32, !dbg !5063
  %5 = icmp eq i32 %4, 0, !dbg !5063
  tail call void @llvm.dbg.value(metadata i1 %5, metadata !5053, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5055
  %6 = tail call i32 @rpl_fclose(ptr noundef nonnull %0) #38, !dbg !5064
  %7 = icmp eq i32 %6, 0, !dbg !5065
  tail call void @llvm.dbg.value(metadata i1 %7, metadata !5054, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5055
  br i1 %5, label %8, label %18, !dbg !5066

8:                                                ; preds = %1
  %9 = icmp ne i64 %2, 0, !dbg !5068
  tail call void @llvm.dbg.value(metadata i1 %9, metadata !5051, metadata !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value)), !dbg !5055
  %10 = select i1 %7, i1 true, i1 %9, !dbg !5069
  %11 = xor i1 %7, true, !dbg !5069
  %12 = sext i1 %11 to i32, !dbg !5069
  br i1 %10, label %21, label %13, !dbg !5069

13:                                               ; preds = %8
  %14 = tail call ptr @__errno_location() #41, !dbg !5070
  %15 = load i32, ptr %14, align 4, !dbg !5070, !tbaa !1138
  %16 = icmp ne i32 %15, 9, !dbg !5071
  %17 = sext i1 %16 to i32, !dbg !5072
  br label %21, !dbg !5072

18:                                               ; preds = %1
  br i1 %7, label %19, label %21, !dbg !5073

19:                                               ; preds = %18
  %20 = tail call ptr @__errno_location() #41, !dbg !5075
  store i32 0, ptr %20, align 4, !dbg !5077, !tbaa !1138
  br label %21, !dbg !5075

21:                                               ; preds = %8, %13, %18, %19
  %22 = phi i32 [ -1, %19 ], [ -1, %18 ], [ %17, %13 ], [ %12, %8 ], !dbg !5055
  ret i32 %22, !dbg !5078
}

; Function Attrs: nounwind
declare !dbg !5079 i64 @__fpending(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @rpl_mbrtoc32(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #10 !dbg !5082 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5087, metadata !DIExpression()), !dbg !5092
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5088, metadata !DIExpression()), !dbg !5092
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5089, metadata !DIExpression()), !dbg !5092
  tail call void @llvm.dbg.value(metadata ptr %3, metadata !5090, metadata !DIExpression()), !dbg !5092
  %5 = icmp eq ptr %1, null, !dbg !5093
  %6 = select i1 %5, ptr null, ptr %0, !dbg !5095
  %7 = select i1 %5, ptr @.str.168, ptr %1, !dbg !5095
  %8 = select i1 %5, i64 1, i64 %2, !dbg !5095
  tail call void @llvm.dbg.value(metadata i64 %8, metadata !5089, metadata !DIExpression()), !dbg !5092
  tail call void @llvm.dbg.value(metadata ptr %7, metadata !5088, metadata !DIExpression()), !dbg !5092
  tail call void @llvm.dbg.value(metadata ptr %6, metadata !5087, metadata !DIExpression()), !dbg !5092
  %9 = icmp eq ptr %3, null, !dbg !5096
  %10 = select i1 %9, ptr @internal_state, ptr %3, !dbg !5098
  tail call void @llvm.dbg.value(metadata ptr %10, metadata !5090, metadata !DIExpression()), !dbg !5092
  %11 = tail call i64 @mbrtoc32(ptr noundef %6, ptr noundef nonnull %7, i64 noundef %8, ptr noundef nonnull %10) #38, !dbg !5099
  tail call void @llvm.dbg.value(metadata i64 %11, metadata !5091, metadata !DIExpression()), !dbg !5092
  %12 = icmp ult i64 %11, -3, !dbg !5100
  br i1 %12, label %13, label %17, !dbg !5102

13:                                               ; preds = %4
  %14 = tail call i32 @mbsinit(ptr noundef nonnull %10) #39, !dbg !5103
  %15 = icmp eq i32 %14, 0, !dbg !5103
  br i1 %15, label %16, label %29, !dbg !5104

16:                                               ; preds = %13
  call void @llvm.dbg.value(metadata ptr %10, metadata !5105, metadata !DIExpression()), !dbg !5110
  call void @llvm.dbg.value(metadata ptr %10, metadata !5112, metadata !DIExpression()), !dbg !5117
  call void @llvm.dbg.value(metadata i32 0, metadata !5115, metadata !DIExpression()), !dbg !5117
  call void @llvm.dbg.value(metadata i64 8, metadata !5116, metadata !DIExpression()), !dbg !5117
  store i64 0, ptr %10, align 1, !dbg !5119
  br label %29, !dbg !5120

17:                                               ; preds = %4
  %18 = icmp eq i64 %11, -3, !dbg !5121
  br i1 %18, label %19, label %20, !dbg !5123

19:                                               ; preds = %17
  tail call void @abort() #40, !dbg !5124
  unreachable, !dbg !5124

20:                                               ; preds = %17
  %21 = icmp eq i64 %8, 0
  br i1 %21, label %29, label %22, !dbg !5125

22:                                               ; preds = %20
  %23 = tail call i1 @hard_locale(i32 noundef 0) #38, !dbg !5127
  br i1 %23, label %29, label %24, !dbg !5128

24:                                               ; preds = %22
  %25 = icmp eq ptr %6, null, !dbg !5129
  br i1 %25, label %29, label %26, !dbg !5132

26:                                               ; preds = %24
  %27 = load i8, ptr %7, align 1, !dbg !5133, !tbaa !1147
  %28 = zext i8 %27 to i32, !dbg !5134
  store i32 %28, ptr %6, align 4, !dbg !5135, !tbaa !1138
  br label %29, !dbg !5136

29:                                               ; preds = %16, %13, %20, %22, %24, %26
  %30 = phi i64 [ 1, %26 ], [ 1, %24 ], [ %11, %22 ], [ %11, %20 ], [ %11, %13 ], [ %11, %16 ], !dbg !5092
  ret i64 %30, !dbg !5137
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !5138 i32 @mbsinit(ptr noundef) local_unnamed_addr #36

; Function Attrs: mustprogress nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite) uwtable
define dso_local noalias noundef ptr @rpl_reallocarray(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #37 !dbg !5143 {
  tail call void @llvm.dbg.value(metadata ptr %0, metadata !5145, metadata !DIExpression()), !dbg !5149
  tail call void @llvm.dbg.value(metadata i64 %1, metadata !5146, metadata !DIExpression()), !dbg !5149
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5147, metadata !DIExpression()), !dbg !5149
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %2), !dbg !5150
  %5 = extractvalue { i64, i1 } %4, 1, !dbg !5150
  tail call void @llvm.dbg.value(metadata i64 poison, metadata !5148, metadata !DIExpression()), !dbg !5149
  br i1 %5, label %6, label %8, !dbg !5152

6:                                                ; preds = %3
  %7 = tail call ptr @__errno_location() #41, !dbg !5153
  store i32 12, ptr %7, align 4, !dbg !5155, !tbaa !1138
  br label %12, !dbg !5156

8:                                                ; preds = %3
  %9 = extractvalue { i64, i1 } %4, 0, !dbg !5150
  tail call void @llvm.dbg.value(metadata i64 %9, metadata !5148, metadata !DIExpression()), !dbg !5149
  call void @llvm.dbg.value(metadata ptr %0, metadata !5157, metadata !DIExpression()), !dbg !5161
  call void @llvm.dbg.value(metadata i64 %9, metadata !5160, metadata !DIExpression()), !dbg !5161
  %10 = tail call i64 @llvm.umax.i64(i64 %9, i64 1), !dbg !5163
  %11 = tail call ptr @realloc(ptr noundef %0, i64 noundef %10) #44, !dbg !5164
  br label %12, !dbg !5165

12:                                               ; preds = %8, %6
  %13 = phi ptr [ null, %6 ], [ %11, %8 ], !dbg !5149
  ret ptr %13, !dbg !5166
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i1 @hard_locale(i32 noundef %0) local_unnamed_addr #10 !dbg !5167 {
  %2 = alloca [257 x i8], align 1, !DIAssignID !5174
  call void @llvm.dbg.assign(metadata i1 undef, metadata !5170, metadata !DIExpression(), metadata !5174, metadata ptr %2, metadata !DIExpression()), !dbg !5175
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5169, metadata !DIExpression()), !dbg !5175
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %2) #38, !dbg !5176
  %3 = call i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %2, i64 noundef 257) #38, !dbg !5177
  %4 = icmp eq i32 %3, 0, !dbg !5177
  br i1 %4, label %5, label %12, !dbg !5179

5:                                                ; preds = %1
  call void @llvm.dbg.value(metadata ptr %2, metadata !5180, metadata !DIExpression()), !dbg !5184
  call void @llvm.dbg.value(metadata ptr @.str.173, metadata !5183, metadata !DIExpression()), !dbg !5184
  %6 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %2, ptr noundef nonnull dereferenceable(2) @.str.173, i64 2), !dbg !5187
  %7 = icmp eq i32 %6, 0, !dbg !5188
  br i1 %7, label %11, label %8, !dbg !5189

8:                                                ; preds = %5
  call void @llvm.dbg.value(metadata ptr %2, metadata !5180, metadata !DIExpression()), !dbg !5190
  call void @llvm.dbg.value(metadata ptr @.str.1.174, metadata !5183, metadata !DIExpression()), !dbg !5190
  %9 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %2, ptr noundef nonnull dereferenceable(6) @.str.1.174, i64 6), !dbg !5192
  %10 = icmp eq i32 %9, 0, !dbg !5193
  br i1 %10, label %11, label %12, !dbg !5194

11:                                               ; preds = %8, %5
  br label %12, !dbg !5195

12:                                               ; preds = %8, %1, %11
  %13 = phi i1 [ false, %11 ], [ false, %1 ], [ true, %8 ], !dbg !5175
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %2) #38, !dbg !5196
  ret i1 %13, !dbg !5196
}

; Function Attrs: nounwind uwtable
define dso_local i32 @setlocale_null_r(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5197 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5201, metadata !DIExpression()), !dbg !5204
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5202, metadata !DIExpression()), !dbg !5204
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5203, metadata !DIExpression()), !dbg !5204
  %4 = tail call i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) #38, !dbg !5205
  ret i32 %4, !dbg !5206
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null(i32 noundef %0) local_unnamed_addr #10 !dbg !5207 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5211, metadata !DIExpression()), !dbg !5212
  %2 = tail call ptr @setlocale_null_unlocked(i32 noundef %0) #38, !dbg !5213
  ret ptr %2, !dbg !5214
}

; Function Attrs: nounwind uwtable
define dso_local ptr @setlocale_null_unlocked(i32 noundef %0) local_unnamed_addr #10 !dbg !5215 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5217, metadata !DIExpression()), !dbg !5219
  %2 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !5220
  tail call void @llvm.dbg.value(metadata ptr %2, metadata !5218, metadata !DIExpression()), !dbg !5219
  ret ptr %2, !dbg !5221
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @setlocale_null_r_unlocked(i32 noundef %0, ptr noundef nonnull %1, i64 noundef %2) local_unnamed_addr #10 !dbg !5222 {
  tail call void @llvm.dbg.value(metadata i32 %0, metadata !5224, metadata !DIExpression()), !dbg !5231
  tail call void @llvm.dbg.value(metadata ptr %1, metadata !5225, metadata !DIExpression()), !dbg !5231
  tail call void @llvm.dbg.value(metadata i64 %2, metadata !5226, metadata !DIExpression()), !dbg !5231
  call void @llvm.dbg.value(metadata i32 %0, metadata !5217, metadata !DIExpression()), !dbg !5232
  %4 = tail call ptr @setlocale(i32 noundef %0, ptr noundef null) #38, !dbg !5234
  call void @llvm.dbg.value(metadata ptr %4, metadata !5218, metadata !DIExpression()), !dbg !5232
  tail call void @llvm.dbg.value(metadata ptr %4, metadata !5227, metadata !DIExpression()), !dbg !5231
  %5 = icmp eq ptr %4, null, !dbg !5235
  br i1 %5, label %6, label %9, !dbg !5236

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0, !dbg !5237
  br i1 %7, label %19, label %8, !dbg !5240

8:                                                ; preds = %6
  store i8 0, ptr %1, align 1, !dbg !5241, !tbaa !1147
  br label %19, !dbg !5242

9:                                                ; preds = %3
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #39, !dbg !5243
  tail call void @llvm.dbg.value(metadata i64 %10, metadata !5228, metadata !DIExpression()), !dbg !5244
  %11 = icmp ult i64 %10, %2, !dbg !5245
  br i1 %11, label %12, label %14, !dbg !5247

12:                                               ; preds = %9
  %13 = add nuw i64 %10, 1, !dbg !5248
  call void @llvm.dbg.value(metadata ptr %1, metadata !5250, metadata !DIExpression()), !dbg !5255
  call void @llvm.dbg.value(metadata ptr %4, metadata !5253, metadata !DIExpression()), !dbg !5255
  call void @llvm.dbg.value(metadata i64 %13, metadata !5254, metadata !DIExpression()), !dbg !5255
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %4, i64 noundef %13, i1 noundef false) #38, !dbg !5257
  br label %19, !dbg !5258

14:                                               ; preds = %9
  %15 = icmp eq i64 %2, 0, !dbg !5259
  br i1 %15, label %19, label %16, !dbg !5262

16:                                               ; preds = %14
  %17 = add i64 %2, -1, !dbg !5263
  call void @llvm.dbg.value(metadata ptr %1, metadata !5250, metadata !DIExpression()), !dbg !5265
  call void @llvm.dbg.value(metadata ptr %4, metadata !5253, metadata !DIExpression()), !dbg !5265
  call void @llvm.dbg.value(metadata i64 %17, metadata !5254, metadata !DIExpression()), !dbg !5265
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 %4, i64 noundef %17, i1 noundef false) #38, !dbg !5267
  %18 = getelementptr inbounds i8, ptr %1, i64 %17, !dbg !5268
  store i8 0, ptr %18, align 1, !dbg !5269, !tbaa !1147
  br label %19, !dbg !5270

19:                                               ; preds = %12, %16, %14, %6, %8
  %20 = phi i32 [ 22, %8 ], [ 22, %6 ], [ 0, %12 ], [ 34, %16 ], [ 34, %14 ], !dbg !5271
  ret i32 %20, !dbg !5272
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
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #15 = { noreturn "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #16 = { cold nounwind optsize uwtable "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fp-armv8,+neon,+outline-atomics,+v8a,-fmv" }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
attributes #43 = { cold }
attributes #44 = { nounwind allocsize(1) }
attributes #45 = { nounwind allocsize(0) }
attributes #46 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!59, !409, !657, !661, !676, !946, !980, !985, !987, !990, !992, !994, !727, !741, !788, !996, !940, !1002, !1035, !1037, !1039, !962, !1041, !1043, !1045, !1047}
!llvm.ident = !{!1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049, !1049}
!llvm.module.flags = !{!1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/expand.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c80215ff64ab09027a1b86db960a2307")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 39)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 74, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 528, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 66)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 7)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 81, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 504, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 63)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 488, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 61)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 50)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 496, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 62)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 195, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 1)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 196, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 10)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !2, line: 196, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 24)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "shortopts", scope: !59, file: !2, line: 52, type: !404, isLocal: true, isDefinition: true)
!59 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/expand.o -MD -MP -MF src/.deps/expand.Tpo -c src/expand.c -o src/.expand.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !60, retainedTypes: !93, globals: !103, splitDebugInlining: false, nameTableKind: None)
!60 = !{!61, !67, !83, !87, !90}
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !62, line: 337, baseType: !63, size: 32, elements: !64)
!62 = !DIFile(filename: "src/system.h", directory: "/src", checksumkind: CSK_MD5, checksum: "2cecf68407656b1482c8595bbd6bc338")
!63 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!64 = !{!65, !66}
!65 = !DIEnumerator(name: "GETOPT_HELP_CHAR", value: -2)
!66 = !DIEnumerator(name: "GETOPT_VERSION_CHAR", value: -3)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !68, line: 46, baseType: !69, size: 32, elements: !70)
!68 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!69 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!70 = !{!71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82}
!71 = !DIEnumerator(name: "_ISupper", value: 256)
!72 = !DIEnumerator(name: "_ISlower", value: 512)
!73 = !DIEnumerator(name: "_ISalpha", value: 1024)
!74 = !DIEnumerator(name: "_ISdigit", value: 2048)
!75 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!76 = !DIEnumerator(name: "_ISspace", value: 8192)
!77 = !DIEnumerator(name: "_ISprint", value: 16384)
!78 = !DIEnumerator(name: "_ISgraph", value: 32768)
!79 = !DIEnumerator(name: "_ISblank", value: 1)
!80 = !DIEnumerator(name: "_IScntrl", value: 2)
!81 = !DIEnumerator(name: "_ISpunct", value: 4)
!82 = !DIEnumerator(name: "_ISalnum", value: 8)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !84, line: 127, baseType: !69, size: 32, elements: !85)
!84 = !DIFile(filename: "./lib/mcel.h", directory: "/src", checksumkind: CSK_MD5, checksum: "1a3948cda8366fd81b1605726e5920d0")
!85 = !{!86}
!86 = !DIEnumerator(name: "MCEL_LEN_MAX", value: 4)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !84, line: 131, baseType: !69, size: 32, elements: !88)
!88 = !{!89}
!89 = !DIEnumerator(name: "MCEL_ERR_MIN", value: 128)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !84, line: 130, baseType: !69, size: 32, elements: !91)
!91 = !{!92}
!92 = !DIEnumerator(name: "MCEL_CHAR_MAX", value: 1114111)
!93 = !{!94, !95, !63, !96, !97, !100, !102}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!96 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !98, line: 18, baseType: !99)
!98 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_size_t.h", directory: "", checksumkind: CSK_MD5, checksum: "2c44e821a2b1951cde2eb0fb2e656867")
!99 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!102 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!103 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42, !47, !52, !104, !109, !114, !119, !124, !207, !212, !214, !219, !224, !229, !231, !233, !238, !240, !242, !244, !246, !251, !253, !255, !257, !259, !261, !263, !268, !273, !278, !280, !282, !284, !286, !288, !290, !295, !297, !299, !304, !309, !314, !57, !319, !321, !323, !325, !327, !339, !397, !402}
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 229, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 14)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 229, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 16)
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(scope: null, file: !62, line: 729, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !117)
!117 = !{!118}
!118 = !DISubrange(count: 56)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(scope: null, file: !62, line: 736, type: !121, isLocal: true, isDefinition: true)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 75)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !126, file: !62, line: 575, type: !63, isLocal: true, isDefinition: true)
!126 = distinct !DISubprogram(name: "oputs_", scope: !62, file: !62, line: 573, type: !127, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !129)
!127 = !DISubroutineType(cc: DW_CC_nocall, types: !128)
!128 = !{null, !100, !100}
!129 = !{!130, !131, !132, !135, !137, !138, !139, !143, !144, !145, !146, !148, !201, !202, !203, !205, !206}
!130 = !DILocalVariable(name: "program", arg: 1, scope: !126, file: !62, line: 573, type: !100)
!131 = !DILocalVariable(name: "option", arg: 2, scope: !126, file: !62, line: 573, type: !100)
!132 = !DILocalVariable(name: "term", scope: !133, file: !62, line: 585, type: !100)
!133 = distinct !DILexicalBlock(scope: !134, file: !62, line: 582, column: 5)
!134 = distinct !DILexicalBlock(scope: !126, file: !62, line: 581, column: 7)
!135 = !DILocalVariable(name: "double_space", scope: !126, file: !62, line: 594, type: !136)
!136 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!137 = !DILocalVariable(name: "first_word", scope: !126, file: !62, line: 595, type: !100)
!138 = !DILocalVariable(name: "option_text", scope: !126, file: !62, line: 596, type: !100)
!139 = !DILocalVariable(name: "s", scope: !140, file: !62, line: 608, type: !100)
!140 = distinct !DILexicalBlock(scope: !141, file: !62, line: 605, column: 5)
!141 = distinct !DILexicalBlock(scope: !142, file: !62, line: 604, column: 12)
!142 = distinct !DILexicalBlock(scope: !126, file: !62, line: 597, column: 7)
!143 = !DILocalVariable(name: "spaces", scope: !140, file: !62, line: 609, type: !97)
!144 = !DILocalVariable(name: "anchor_len", scope: !126, file: !62, line: 620, type: !97)
!145 = !DILocalVariable(name: "desc_text", scope: !126, file: !62, line: 625, type: !100)
!146 = !DILocalVariable(name: "__ptr", scope: !147, file: !62, line: 644, type: !100)
!147 = distinct !DILexicalBlock(scope: !126, file: !62, line: 644, column: 3)
!148 = !DILocalVariable(name: "__stream", scope: !147, file: !62, line: 644, type: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !152)
!151 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !154)
!153 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!154 = !{!155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !170, !172, !173, !174, !178, !179, !181, !182, !185, !187, !190, !193, !194, !195, !196, !197}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !152, file: !153, line: 51, baseType: !63, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !152, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !152, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !152, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !152, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !152, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !152, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !152, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !152, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !152, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !152, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !152, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !152, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !153, line: 36, flags: DIFlagFwdDecl)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !152, file: !153, line: 70, baseType: !171, size: 64, offset: 832)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !152, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !152, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !152, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !176, line: 152, baseType: !177)
!176 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!177 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !152, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !152, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!180 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !152, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !152, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !153, line: 43, baseType: null)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !152, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !176, line: 153, baseType: !177)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !152, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !153, line: 37, flags: DIFlagFwdDecl)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !152, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !153, line: 38, flags: DIFlagFwdDecl)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !152, file: !153, line: 93, baseType: !171, size: 64, offset: 1344)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !152, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !152, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !152, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !152, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 20)
!201 = !DILocalVariable(name: "__cnt", scope: !147, file: !62, line: 644, type: !97)
!202 = !DILocalVariable(name: "url_program", scope: !126, file: !62, line: 648, type: !100)
!203 = !DILocalVariable(name: "__ptr", scope: !204, file: !62, line: 686, type: !100)
!204 = distinct !DILexicalBlock(scope: !126, file: !62, line: 686, column: 3)
!205 = !DILocalVariable(name: "__stream", scope: !204, file: !62, line: 686, type: !149)
!206 = !DILocalVariable(name: "__cnt", scope: !204, file: !62, line: 686, type: !97)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !62, line: 585, type: !209, isLocal: true, isDefinition: true)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 5)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !62, line: 586, type: !209, isLocal: true, isDefinition: true)
!214 = !DIGlobalVariableExpression(var: !215, expr: !DIExpression())
!215 = distinct !DIGlobalVariable(scope: null, file: !62, line: 595, type: !216, isLocal: true, isDefinition: true)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 4)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !62, line: 620, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 6)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !62, line: 648, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 2)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(scope: null, file: !62, line: 648, type: !209, isLocal: true, isDefinition: true)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !62, line: 649, type: !216, isLocal: true, isDefinition: true)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !62, line: 649, type: !235, isLocal: true, isDefinition: true)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 3)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !62, line: 650, type: !209, isLocal: true, isDefinition: true)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(scope: null, file: !62, line: 651, type: !221, isLocal: true, isDefinition: true)
!242 = !DIGlobalVariableExpression(var: !243, expr: !DIExpression())
!243 = distinct !DIGlobalVariable(scope: null, file: !62, line: 651, type: !221, isLocal: true, isDefinition: true)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !62, line: 652, type: !19, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !62, line: 653, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 8)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !62, line: 654, type: !49, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !62, line: 655, type: !49, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !62, line: 656, type: !49, isLocal: true, isDefinition: true)
!257 = !DIGlobalVariableExpression(var: !258, expr: !DIExpression())
!258 = distinct !DIGlobalVariable(scope: null, file: !62, line: 657, type: !49, isLocal: true, isDefinition: true)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !62, line: 663, type: !19, isLocal: true, isDefinition: true)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !62, line: 664, type: !49, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !62, line: 669, type: !265, isLocal: true, isDefinition: true)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 17)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !62, line: 669, type: !270, isLocal: true, isDefinition: true)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 40)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !62, line: 676, type: !275, isLocal: true, isDefinition: true)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !276)
!276 = !{!277}
!277 = !DISubrange(count: 15)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !62, line: 676, type: !29, isLocal: true, isDefinition: true)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !62, line: 679, type: !235, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !62, line: 683, type: !209, isLocal: true, isDefinition: true)
!284 = !DIGlobalVariableExpression(var: !285, expr: !DIExpression())
!285 = distinct !DIGlobalVariable(scope: null, file: !62, line: 688, type: !209, isLocal: true, isDefinition: true)
!286 = !DIGlobalVariableExpression(var: !287, expr: !DIExpression())
!287 = distinct !DIGlobalVariable(scope: null, file: !62, line: 691, type: !248, isLocal: true, isDefinition: true)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !62, line: 839, type: !111, isLocal: true, isDefinition: true)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !62, line: 840, type: !292, isLocal: true, isDefinition: true)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !293)
!293 = !{!294}
!294 = !DISubrange(count: 22)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !62, line: 841, type: !275, isLocal: true, isDefinition: true)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !62, line: 862, type: !216, isLocal: true, isDefinition: true)
!299 = !DIGlobalVariableExpression(var: !300, expr: !DIExpression())
!300 = distinct !DIGlobalVariable(scope: null, file: !62, line: 868, type: !301, isLocal: true, isDefinition: true)
!301 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 568, elements: !302)
!302 = !{!303}
!303 = !DISubrange(count: 71)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(scope: null, file: !62, line: 875, type: !306, isLocal: true, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !307)
!307 = !{!308}
!308 = !DISubrange(count: 27)
!309 = !DIGlobalVariableExpression(var: !310, expr: !DIExpression())
!310 = distinct !DIGlobalVariable(scope: null, file: !62, line: 877, type: !311, isLocal: true, isDefinition: true)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 51)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !62, line: 877, type: !316, isLocal: true, isDefinition: true)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 12)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !209, isLocal: true, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !2, line: 57, type: !248, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !209, isLocal: true, isDefinition: true)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !248, isLocal: true, isDefinition: true)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(name: "longopts", scope: !59, file: !2, line: 54, type: !329, isLocal: true, isDefinition: true)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !330, size: 1280, elements: !210)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !332, line: 50, size: 256, elements: !333)
!332 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!333 = !{!334, !335, !336, !338}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !331, file: !332, line: 52, baseType: !100, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !331, file: !332, line: 55, baseType: !63, size: 32, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !331, file: !332, line: 56, baseType: !337, size: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !331, file: !332, line: 57, baseType: !63, size: 32, offset: 192)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(name: "line_in", scope: !341, file: !2, line: 110, type: !394, isLocal: true, isDefinition: true)
!341 = distinct !DISubprogram(name: "expand", scope: !2, file: !2, line: 102, type: !342, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !344)
!342 = !DISubroutineType(types: !343)
!343 = !{null}
!344 = !{!345, !346, !360, !372, !373, !379, !380, !386, !387, !390, !392, !393}
!345 = !DILocalVariable(name: "fp", scope: !341, file: !2, line: 105, type: !149)
!346 = !DILocalVariable(name: "mbbuf", scope: !341, file: !2, line: 111, type: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbbuf_t", file: !348, line: 50, baseType: !349)
!348 = !DIFile(filename: "./lib/mbbuf.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0ec2f2727b8356ce94eb797f3e7bb5fd")
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !348, line: 43, size: 320, elements: !350)
!350 = !{!351, !352, !353, !358, !359}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !349, file: !348, line: 45, baseType: !94, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !349, file: !348, line: 46, baseType: !149, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !349, file: !348, line: 47, baseType: !354, size: 64, offset: 128)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !355, line: 130, baseType: !356)
!355 = !DIFile(filename: "./lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !357, line: 18, baseType: !177)
!357 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_ptrdiff_t.h", directory: "", checksumkind: CSK_MD5, checksum: "21e0c40f3315797d915cc7ea60040a98")
!358 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !349, file: !348, line: 48, baseType: !354, size: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !349, file: !348, line: 49, baseType: !354, size: 64, offset: 256)
!360 = !DILocalVariable(name: "g", scope: !361, file: !2, line: 117, type: !362)
!361 = distinct !DILexicalBlock(scope: !341, file: !2, line: 115, column: 5)
!362 = !DIDerivedType(tag: DW_TAG_typedef, name: "mcel_t", file: !84, line: 143, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !84, line: 138, size: 64, elements: !364)
!364 = !{!365, !370, !371}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !363, file: !84, line: 140, baseType: !366, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "char32_t", file: !367, line: 37, baseType: !368)
!367 = !DIFile(filename: "/usr/include/uchar.h", directory: "", checksumkind: CSK_MD5, checksum: "c926815959f9cfc6276e7d81605ae4e1")
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint_least32_t", file: !176, line: 57, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !176, line: 42, baseType: !69)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !363, file: !84, line: 141, baseType: !102, size: 8, offset: 32)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !363, file: !84, line: 142, baseType: !102, size: 8, offset: 40)
!372 = !DILocalVariable(name: "convert", scope: !361, file: !2, line: 120, type: !136)
!373 = !DILocalVariable(name: "column", scope: !361, file: !2, line: 127, type: !374)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "colno", file: !375, line: 20, baseType: !376)
!375 = !DIFile(filename: "src/expand-common.h", directory: "/src", checksumkind: CSK_MD5, checksum: "a812a23c6054c0178c7555c3090cc098")
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !377, line: 101, baseType: !378)
!377 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !176, line: 72, baseType: !177)
!379 = !DILocalVariable(name: "tab_index", scope: !361, file: !2, line: 130, type: !354)
!380 = !DILocalVariable(name: "last_tab", scope: !381, file: !2, line: 148, type: !136)
!381 = distinct !DILexicalBlock(scope: !382, file: !2, line: 146, column: 17)
!382 = distinct !DILexicalBlock(scope: !383, file: !2, line: 145, column: 19)
!383 = distinct !DILexicalBlock(scope: !384, file: !2, line: 142, column: 13)
!384 = distinct !DILexicalBlock(scope: !385, file: !2, line: 141, column: 15)
!385 = distinct !DILexicalBlock(scope: !361, file: !2, line: 136, column: 9)
!386 = !DILocalVariable(name: "next_tab_column", scope: !381, file: !2, line: 149, type: !374)
!387 = !DILocalVariable(name: "width", scope: !388, file: !2, line: 170, type: !63)
!388 = distinct !DILexicalBlock(scope: !389, file: !2, line: 169, column: 17)
!389 = distinct !DILexicalBlock(scope: !382, file: !2, line: 161, column: 24)
!390 = !DILocalVariable(name: "__ptr", scope: !391, file: !2, line: 180, type: !100)
!391 = distinct !DILexicalBlock(scope: !385, file: !2, line: 180, column: 11)
!392 = !DILocalVariable(name: "__stream", scope: !391, file: !2, line: 180, type: !149)
!393 = !DILocalVariable(name: "__cnt", scope: !391, file: !2, line: 180, type: !97)
!394 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2097152, elements: !395)
!395 = !{!396}
!396 = !DISubrange(count: 262144)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !2, line: 172, type: !399, isLocal: true, isDefinition: true)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 23)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !62, line: 952, type: !316, isLocal: true, isDefinition: true)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 272, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 34)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(name: "convert_entire_line", scope: !409, file: !410, line: 30, type: !136, isLocal: false, isDefinition: true)
!409 = distinct !DICompileUnit(language: DW_LANG_C11, file: !410, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/expand-common.o -MD -MP -MF src/.deps/expand-common.Tpo -c src/expand-common.c -o src/.expand-common.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !411, retainedTypes: !435, globals: !436, splitDebugInlining: false, nameTableKind: None)
!410 = !DIFile(filename: "src/expand-common.c", directory: "/src", checksumkind: CSK_MD5, checksum: "942c25878b2cf9f4cd3ad8d127f8f292")
!411 = !{!67, !412, !426}
!412 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !413, line: 42, baseType: !69, size: 32, elements: !414)
!413 = !DIFile(filename: "./lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!414 = !{!415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425}
!415 = !DIEnumerator(name: "literal_quoting_style", value: 0)
!416 = !DIEnumerator(name: "shell_quoting_style", value: 1)
!417 = !DIEnumerator(name: "shell_always_quoting_style", value: 2)
!418 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3)
!419 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4)
!420 = !DIEnumerator(name: "c_quoting_style", value: 5)
!421 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6)
!422 = !DIEnumerator(name: "escape_quoting_style", value: 7)
!423 = !DIEnumerator(name: "locale_quoting_style", value: 8)
!424 = !DIEnumerator(name: "clocale_quoting_style", value: 9)
!425 = !DIEnumerator(name: "custom_quoting_style", value: 10)
!426 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !427, line: 44, baseType: !69, size: 32, elements: !428)
!427 = !DIFile(filename: "./lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!428 = !{!429, !430, !431, !432, !433, !434}
!429 = !DIEnumerator(name: "FADVISE_NORMAL", value: 0)
!430 = !DIEnumerator(name: "FADVISE_SEQUENTIAL", value: 2)
!431 = !DIEnumerator(name: "FADVISE_NOREUSE", value: 5)
!432 = !DIEnumerator(name: "FADVISE_DONTNEED", value: 4)
!433 = !DIEnumerator(name: "FADVISE_WILLNEED", value: 3)
!434 = !DIEnumerator(name: "FADVISE_RANDOM", value: 1)
!435 = !{!63, !96, !95, !94, !97, !100, !102}
!436 = !{!407, !437, !439, !444, !446, !451, !456, !461, !463, !508, !510, !512, !514, !516, !521, !523, !525, !528, !530, !532, !537, !539, !544, !549, !554, !556, !558, !560, !562, !565, !568, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649}
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(name: "exit_status", scope: !409, file: !410, line: 69, type: !63, isLocal: false, isDefinition: true)
!439 = !DIGlobalVariableExpression(var: !440, expr: !DIExpression())
!440 = distinct !DIGlobalVariable(scope: null, file: !410, line: 177, type: !441, isLocal: true, isDefinition: true)
!441 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !442)
!442 = !{!443}
!443 = !DISubrange(count: 41)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !410, line: 188, type: !441, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !410, line: 207, type: !448, isLocal: true, isDefinition: true)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 11)
!451 = !DIGlobalVariableExpression(var: !452, expr: !DIExpression())
!452 = distinct !DIGlobalVariable(scope: null, file: !410, line: 209, type: !453, isLocal: true, isDefinition: true)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 25)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !410, line: 217, type: !458, isLocal: true, isDefinition: true)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 43)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !410, line: 326, type: !399, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(name: "prev_file", scope: !465, file: !410, line: 351, type: !94, isLocal: true, isDefinition: true)
!465 = distinct !DISubprogram(name: "next_file", scope: !410, file: !410, line: 349, type: !466, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !502)
!466 = !DISubroutineType(types: !467)
!467 = !{!468, !468}
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !471)
!471 = !{!472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !470, file: !153, line: 51, baseType: !63, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !470, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !470, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !470, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !470, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !470, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !470, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !470, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !470, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !470, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !470, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !470, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !470, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !470, file: !153, line: 70, baseType: !486, size: 64, offset: 832)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !470, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !470, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !470, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !470, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !470, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !470, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !470, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !470, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !470, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !470, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !470, file: !153, line: 93, baseType: !486, size: 64, offset: 1344)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !470, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !470, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !470, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !470, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!502 = !{!503, !504, !505}
!503 = !DILocalVariable(name: "fp", arg: 1, scope: !465, file: !410, line: 349, type: !468)
!504 = !DILocalVariable(name: "file", scope: !465, file: !410, line: 352, type: !94)
!505 = !DILocalVariable(name: "err", scope: !506, file: !410, line: 356, type: !63)
!506 = distinct !DILexicalBlock(scope: !507, file: !410, line: 355, column: 5)
!507 = distinct !DILexicalBlock(scope: !465, file: !410, line: 354, column: 7)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !410, line: 359, type: !226, isLocal: true, isDefinition: true)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !410, line: 365, type: !235, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !410, line: 378, type: !226, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !410, line: 405, type: !301, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !410, line: 409, type: !518, isLocal: true, isDefinition: true)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2440, elements: !519)
!519 = !{!520}
!520 = !DISubrange(count: 305)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(name: "max_column_width", scope: !409, file: !410, line: 42, type: !354, isLocal: false, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(name: "first_free_tab", scope: !409, file: !410, line: 54, type: !354, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(name: "tab_list", scope: !409, file: !410, line: 47, type: !527, isLocal: true, isDefinition: true)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(name: "n_tabs_allocated", scope: !409, file: !410, line: 50, type: !354, isLocal: true, isDefinition: true)
!530 = !DIGlobalVariableExpression(var: !531, expr: !DIExpression())
!531 = distinct !DIGlobalVariable(scope: null, file: !410, line: 78, type: !399, isLocal: true, isDefinition: true)
!532 = !DIGlobalVariableExpression(var: !533, expr: !DIExpression())
!533 = distinct !DIGlobalVariable(scope: null, file: !410, line: 103, type: !534, isLocal: true, isDefinition: true)
!534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !535)
!535 = !{!536}
!536 = !DISubrange(count: 47)
!537 = !DIGlobalVariableExpression(var: !538, expr: !DIExpression())
!538 = distinct !DIGlobalVariable(scope: null, file: !410, line: 122, type: !534, isLocal: true, isDefinition: true)
!539 = !DIGlobalVariableExpression(var: !540, expr: !DIExpression())
!540 = distinct !DIGlobalVariable(scope: null, file: !410, line: 249, type: !541, isLocal: true, isDefinition: true)
!541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !542)
!542 = !{!543}
!543 = !DISubrange(count: 21)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !410, line: 251, type: !546, isLocal: true, isDefinition: true)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: 28)
!549 = !DIGlobalVariableExpression(var: !550, expr: !DIExpression())
!550 = distinct !DIGlobalVariable(scope: null, file: !410, line: 256, type: !551, isLocal: true, isDefinition: true)
!551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !552)
!552 = !{!553}
!553 = !DISubrange(count: 45)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(name: "extend_size", scope: !409, file: !410, line: 36, type: !374, isLocal: true, isDefinition: true)
!556 = !DIGlobalVariableExpression(var: !557, expr: !DIExpression())
!557 = distinct !DIGlobalVariable(name: "increment_size", scope: !409, file: !410, line: 39, type: !374, isLocal: true, isDefinition: true)
!558 = !DIGlobalVariableExpression(var: !559, expr: !DIExpression())
!559 = distinct !DIGlobalVariable(name: "tab_size", scope: !409, file: !410, line: 33, type: !374, isLocal: true, isDefinition: true)
!560 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression())
!561 = distinct !DIGlobalVariable(name: "have_read_stdin", scope: !409, file: !410, line: 66, type: !136, isLocal: true, isDefinition: true)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(name: "stdin_argv", scope: !409, file: !410, line: 60, type: !564, isLocal: true, isDefinition: true)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 128, elements: !227)
!565 = !DIGlobalVariableExpression(var: !566, expr: !DIExpression())
!566 = distinct !DIGlobalVariable(name: "file_list", scope: !409, file: !410, line: 57, type: !567, isLocal: true, isDefinition: true)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(name: "help_no_sgr", scope: !570, file: !62, line: 575, type: !63, isLocal: true, isDefinition: true)
!570 = distinct !DISubprogram(name: "oputs_", scope: !62, file: !62, line: 573, type: !571, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !572)
!571 = !DISubroutineType(types: !128)
!572 = !{!573, !574, !575, !578, !579, !580, !581, !585, !586, !587, !588, !590, !591, !592, !593, !595, !596}
!573 = !DILocalVariable(name: "program", arg: 1, scope: !570, file: !62, line: 573, type: !100)
!574 = !DILocalVariable(name: "option", arg: 2, scope: !570, file: !62, line: 573, type: !100)
!575 = !DILocalVariable(name: "term", scope: !576, file: !62, line: 585, type: !100)
!576 = distinct !DILexicalBlock(scope: !577, file: !62, line: 582, column: 5)
!577 = distinct !DILexicalBlock(scope: !570, file: !62, line: 581, column: 7)
!578 = !DILocalVariable(name: "double_space", scope: !570, file: !62, line: 594, type: !136)
!579 = !DILocalVariable(name: "first_word", scope: !570, file: !62, line: 595, type: !100)
!580 = !DILocalVariable(name: "option_text", scope: !570, file: !62, line: 596, type: !100)
!581 = !DILocalVariable(name: "s", scope: !582, file: !62, line: 608, type: !100)
!582 = distinct !DILexicalBlock(scope: !583, file: !62, line: 605, column: 5)
!583 = distinct !DILexicalBlock(scope: !584, file: !62, line: 604, column: 12)
!584 = distinct !DILexicalBlock(scope: !570, file: !62, line: 597, column: 7)
!585 = !DILocalVariable(name: "spaces", scope: !582, file: !62, line: 609, type: !97)
!586 = !DILocalVariable(name: "anchor_len", scope: !570, file: !62, line: 620, type: !97)
!587 = !DILocalVariable(name: "desc_text", scope: !570, file: !62, line: 625, type: !100)
!588 = !DILocalVariable(name: "__ptr", scope: !589, file: !62, line: 644, type: !100)
!589 = distinct !DILexicalBlock(scope: !570, file: !62, line: 644, column: 3)
!590 = !DILocalVariable(name: "__stream", scope: !589, file: !62, line: 644, type: !468)
!591 = !DILocalVariable(name: "__cnt", scope: !589, file: !62, line: 644, type: !97)
!592 = !DILocalVariable(name: "url_program", scope: !570, file: !62, line: 648, type: !100)
!593 = !DILocalVariable(name: "__ptr", scope: !594, file: !62, line: 686, type: !100)
!594 = distinct !DILexicalBlock(scope: !570, file: !62, line: 686, column: 3)
!595 = !DILocalVariable(name: "__stream", scope: !594, file: !62, line: 686, type: !468)
!596 = !DILocalVariable(name: "__cnt", scope: !594, file: !62, line: 686, type: !97)
!597 = !DIGlobalVariableExpression(var: !598, expr: !DIExpression())
!598 = distinct !DIGlobalVariable(scope: null, file: !62, line: 585, type: !209, isLocal: true, isDefinition: true)
!599 = !DIGlobalVariableExpression(var: !600, expr: !DIExpression())
!600 = distinct !DIGlobalVariable(scope: null, file: !62, line: 586, type: !209, isLocal: true, isDefinition: true)
!601 = !DIGlobalVariableExpression(var: !602, expr: !DIExpression())
!602 = distinct !DIGlobalVariable(scope: null, file: !62, line: 595, type: !216, isLocal: true, isDefinition: true)
!603 = !DIGlobalVariableExpression(var: !604, expr: !DIExpression())
!604 = distinct !DIGlobalVariable(scope: null, file: !62, line: 620, type: !221, isLocal: true, isDefinition: true)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !62, line: 648, type: !226, isLocal: true, isDefinition: true)
!607 = !DIGlobalVariableExpression(var: !608, expr: !DIExpression())
!608 = distinct !DIGlobalVariable(scope: null, file: !62, line: 648, type: !209, isLocal: true, isDefinition: true)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !62, line: 649, type: !216, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !62, line: 649, type: !235, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !62, line: 650, type: !209, isLocal: true, isDefinition: true)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !62, line: 651, type: !221, isLocal: true, isDefinition: true)
!617 = !DIGlobalVariableExpression(var: !618, expr: !DIExpression())
!618 = distinct !DIGlobalVariable(scope: null, file: !62, line: 651, type: !221, isLocal: true, isDefinition: true)
!619 = !DIGlobalVariableExpression(var: !620, expr: !DIExpression())
!620 = distinct !DIGlobalVariable(scope: null, file: !62, line: 652, type: !19, isLocal: true, isDefinition: true)
!621 = !DIGlobalVariableExpression(var: !622, expr: !DIExpression())
!622 = distinct !DIGlobalVariable(scope: null, file: !62, line: 653, type: !248, isLocal: true, isDefinition: true)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !62, line: 654, type: !49, isLocal: true, isDefinition: true)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !62, line: 655, type: !49, isLocal: true, isDefinition: true)
!627 = !DIGlobalVariableExpression(var: !628, expr: !DIExpression())
!628 = distinct !DIGlobalVariable(scope: null, file: !62, line: 656, type: !49, isLocal: true, isDefinition: true)
!629 = !DIGlobalVariableExpression(var: !630, expr: !DIExpression())
!630 = distinct !DIGlobalVariable(scope: null, file: !62, line: 657, type: !49, isLocal: true, isDefinition: true)
!631 = !DIGlobalVariableExpression(var: !632, expr: !DIExpression())
!632 = distinct !DIGlobalVariable(scope: null, file: !62, line: 663, type: !19, isLocal: true, isDefinition: true)
!633 = !DIGlobalVariableExpression(var: !634, expr: !DIExpression())
!634 = distinct !DIGlobalVariable(scope: null, file: !62, line: 664, type: !49, isLocal: true, isDefinition: true)
!635 = !DIGlobalVariableExpression(var: !636, expr: !DIExpression())
!636 = distinct !DIGlobalVariable(scope: null, file: !62, line: 669, type: !265, isLocal: true, isDefinition: true)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !62, line: 669, type: !270, isLocal: true, isDefinition: true)
!639 = !DIGlobalVariableExpression(var: !640, expr: !DIExpression())
!640 = distinct !DIGlobalVariable(scope: null, file: !62, line: 676, type: !275, isLocal: true, isDefinition: true)
!641 = !DIGlobalVariableExpression(var: !642, expr: !DIExpression())
!642 = distinct !DIGlobalVariable(scope: null, file: !62, line: 676, type: !29, isLocal: true, isDefinition: true)
!643 = !DIGlobalVariableExpression(var: !644, expr: !DIExpression())
!644 = distinct !DIGlobalVariable(scope: null, file: !62, line: 679, type: !235, isLocal: true, isDefinition: true)
!645 = !DIGlobalVariableExpression(var: !646, expr: !DIExpression())
!646 = distinct !DIGlobalVariable(scope: null, file: !62, line: 683, type: !209, isLocal: true, isDefinition: true)
!647 = !DIGlobalVariableExpression(var: !648, expr: !DIExpression())
!648 = distinct !DIGlobalVariable(scope: null, file: !62, line: 688, type: !209, isLocal: true, isDefinition: true)
!649 = !DIGlobalVariableExpression(var: !650, expr: !DIExpression())
!650 = distinct !DIGlobalVariable(scope: null, file: !62, line: 691, type: !248, isLocal: true, isDefinition: true)
!651 = !DIGlobalVariableExpression(var: !561, expr: !DIExpression(DW_OP_deref_size, 1, DW_OP_constu, 1, DW_OP_mul, DW_OP_constu, 0, DW_OP_plus, DW_OP_stack_value))
!652 = !DIGlobalVariableExpression(var: !653, expr: !DIExpression())
!653 = distinct !DIGlobalVariable(scope: null, file: !654, line: 3, type: !275, isLocal: true, isDefinition: true)
!654 = !DIFile(filename: "src/version.c", directory: "/src", checksumkind: CSK_MD5, checksum: "d20a4a5e52cf858e574186cb6c106973")
!655 = !DIGlobalVariableExpression(var: !656, expr: !DIExpression())
!656 = distinct !DIGlobalVariable(name: "Version", scope: !657, file: !654, line: 3, type: !100, isLocal: false, isDefinition: true)
!657 = distinct !DICompileUnit(language: DW_LANG_C11, file: !654, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-format-extra-args -Wno-implicit-const-int-float-conversion -Wno-tautological-constant-out-of-range-compare -g -O2 -MT src/version.o -MD -MP -MF src/.deps/version.Tpo -c src/version.c -o src/.version.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !658, splitDebugInlining: false, nameTableKind: None)
!658 = !{!652, !655}
!659 = !DIGlobalVariableExpression(var: !660, expr: !DIExpression())
!660 = distinct !DIGlobalVariable(name: "file_name", scope: !661, file: !662, line: 45, type: !100, isLocal: true, isDefinition: true)
!661 = distinct !DICompileUnit(language: DW_LANG_C11, file: !662, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-closeout.o -MD -MP -MF lib/.deps/libcoreutils_a-closeout.Tpo -c lib/closeout.c -o lib/.libcoreutils_a-closeout.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !663, splitDebugInlining: false, nameTableKind: None)
!662 = !DIFile(filename: "lib/closeout.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9d11e4504d0806a13d7a340600d1e5d6")
!663 = !{!664, !666, !668, !670, !659, !672}
!664 = !DIGlobalVariableExpression(var: !665, expr: !DIExpression())
!665 = distinct !DIGlobalVariable(scope: null, file: !662, line: 121, type: !19, isLocal: true, isDefinition: true)
!666 = !DIGlobalVariableExpression(var: !667, expr: !DIExpression())
!667 = distinct !DIGlobalVariable(scope: null, file: !662, line: 121, type: !316, isLocal: true, isDefinition: true)
!668 = !DIGlobalVariableExpression(var: !669, expr: !DIExpression())
!669 = distinct !DIGlobalVariable(scope: null, file: !662, line: 123, type: !19, isLocal: true, isDefinition: true)
!670 = !DIGlobalVariableExpression(var: !671, expr: !DIExpression())
!671 = distinct !DIGlobalVariable(scope: null, file: !662, line: 126, type: !235, isLocal: true, isDefinition: true)
!672 = !DIGlobalVariableExpression(var: !673, expr: !DIExpression())
!673 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !661, file: !662, line: 55, type: !136, isLocal: true, isDefinition: true)
!674 = !DIGlobalVariableExpression(var: !675, expr: !DIExpression())
!675 = distinct !DIGlobalVariable(name: "error_print_progname", scope: !676, file: !677, line: 66, type: !724, isLocal: false, isDefinition: true)
!676 = distinct !DICompileUnit(language: DW_LANG_C11, file: !677, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-error.o -MD -MP -MF lib/.deps/libcoreutils_a-error.Tpo -c lib/error.c -o lib/.libcoreutils_a-error.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !678, globals: !679, splitDebugInlining: false, nameTableKind: None)
!677 = !DIFile(filename: "lib/error.c", directory: "/src", checksumkind: CSK_MD5, checksum: "a98aca3300963043bd643c77f5041903")
!678 = !{!95, !102}
!679 = !{!680, !682, !706, !708, !710, !712, !674, !714, !716, !718, !720, !722}
!680 = !DIGlobalVariableExpression(var: !681, expr: !DIExpression())
!681 = distinct !DIGlobalVariable(scope: null, file: !677, line: 272, type: !209, isLocal: true, isDefinition: true)
!682 = !DIGlobalVariableExpression(var: !683, expr: !DIExpression())
!683 = distinct !DIGlobalVariable(name: "old_file_name", scope: !684, file: !677, line: 304, type: !100, isLocal: true, isDefinition: true)
!684 = distinct !DISubprogram(name: "verror_at_line", scope: !677, file: !677, line: 298, type: !685, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !699)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !63, !63, !100, !69, !100, !687}
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !688, line: 52, baseType: !689)
!688 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !690, line: 12, baseType: !691)
!690 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stdarg___gnuc_va_list.h", directory: "", checksumkind: CSK_MD5, checksum: "edb3f2eab991638e4dc94f6e55e3530f")
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !677, baseType: !692)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !693)
!693 = !{!694, !695, !696, !697, !698}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !692, file: !677, baseType: !95, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !692, file: !677, baseType: !95, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !692, file: !677, baseType: !95, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !692, file: !677, baseType: !63, size: 32, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !692, file: !677, baseType: !63, size: 32, offset: 224)
!699 = !{!700, !701, !702, !703, !704, !705}
!700 = !DILocalVariable(name: "status", arg: 1, scope: !684, file: !677, line: 298, type: !63)
!701 = !DILocalVariable(name: "errnum", arg: 2, scope: !684, file: !677, line: 298, type: !63)
!702 = !DILocalVariable(name: "file_name", arg: 3, scope: !684, file: !677, line: 298, type: !100)
!703 = !DILocalVariable(name: "line_number", arg: 4, scope: !684, file: !677, line: 298, type: !69)
!704 = !DILocalVariable(name: "message", arg: 5, scope: !684, file: !677, line: 298, type: !100)
!705 = !DILocalVariable(name: "args", arg: 6, scope: !684, file: !677, line: 298, type: !687)
!706 = !DIGlobalVariableExpression(var: !707, expr: !DIExpression())
!707 = distinct !DIGlobalVariable(name: "old_line_number", scope: !684, file: !677, line: 305, type: !69, isLocal: true, isDefinition: true)
!708 = !DIGlobalVariableExpression(var: !709, expr: !DIExpression())
!709 = distinct !DIGlobalVariable(scope: null, file: !677, line: 338, type: !216, isLocal: true, isDefinition: true)
!710 = !DIGlobalVariableExpression(var: !711, expr: !DIExpression())
!711 = distinct !DIGlobalVariable(scope: null, file: !677, line: 346, type: !248, isLocal: true, isDefinition: true)
!712 = !DIGlobalVariableExpression(var: !713, expr: !DIExpression())
!713 = distinct !DIGlobalVariable(scope: null, file: !677, line: 346, type: !226, isLocal: true, isDefinition: true)
!714 = !DIGlobalVariableExpression(var: !715, expr: !DIExpression())
!715 = distinct !DIGlobalVariable(name: "error_message_count", scope: !676, file: !677, line: 69, type: !69, isLocal: false, isDefinition: true)
!716 = !DIGlobalVariableExpression(var: !717, expr: !DIExpression())
!717 = distinct !DIGlobalVariable(name: "error_one_per_line", scope: !676, file: !677, line: 295, type: !63, isLocal: false, isDefinition: true)
!718 = !DIGlobalVariableExpression(var: !719, expr: !DIExpression())
!719 = distinct !DIGlobalVariable(scope: null, file: !677, line: 208, type: !19, isLocal: true, isDefinition: true)
!720 = !DIGlobalVariableExpression(var: !721, expr: !DIExpression())
!721 = distinct !DIGlobalVariable(scope: null, file: !677, line: 208, type: !541, isLocal: true, isDefinition: true)
!722 = !DIGlobalVariableExpression(var: !723, expr: !DIExpression())
!723 = distinct !DIGlobalVariable(scope: null, file: !677, line: 214, type: !209, isLocal: true, isDefinition: true)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!725 = !DIGlobalVariableExpression(var: !726, expr: !DIExpression())
!726 = distinct !DIGlobalVariable(name: "program_name", scope: !727, file: !728, line: 31, type: !100, isLocal: false, isDefinition: true)
!727 = distinct !DICompileUnit(language: DW_LANG_C11, file: !728, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-progname.o -MD -MP -MF lib/.deps/libcoreutils_a-progname.Tpo -c lib/progname.c -o lib/.libcoreutils_a-progname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !729, globals: !730, splitDebugInlining: false, nameTableKind: None)
!728 = !DIFile(filename: "lib/progname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "6fee3568eaf44ee1737e6b9b9e223c1f")
!729 = !{!95, !94}
!730 = !{!725, !731, !733}
!731 = !DIGlobalVariableExpression(var: !732, expr: !DIExpression())
!732 = distinct !DIGlobalVariable(scope: null, file: !728, line: 46, type: !248, isLocal: true, isDefinition: true)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !728, line: 49, type: !216, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(name: "utf07FF", scope: !737, file: !738, line: 46, type: !761, isLocal: true, isDefinition: true)
!737 = distinct !DISubprogram(name: "proper_name_lite", scope: !738, file: !738, line: 38, type: !739, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !743)
!738 = !DIFile(filename: "lib/propername-lite.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fb64feb17099edacfac61568eab6c7f1")
!739 = !DISubroutineType(types: !740)
!740 = !{!100, !100, !100}
!741 = distinct !DICompileUnit(language: DW_LANG_C11, file: !738, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-propername-lite.o -MD -MP -MF lib/.deps/libcoreutils_a-propername-lite.Tpo -c lib/propername-lite.c -o lib/.libcoreutils_a-propername-lite.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !742, splitDebugInlining: false, nameTableKind: None)
!742 = !{!735}
!743 = !{!744, !745, !746, !747, !748}
!744 = !DILocalVariable(name: "name_ascii", arg: 1, scope: !737, file: !738, line: 38, type: !100)
!745 = !DILocalVariable(name: "name_utf8", arg: 2, scope: !737, file: !738, line: 38, type: !100)
!746 = !DILocalVariable(name: "translation", scope: !737, file: !738, line: 40, type: !100)
!747 = !DILocalVariable(name: "w", scope: !737, file: !738, line: 47, type: !366)
!748 = !DILocalVariable(name: "mbs", scope: !737, file: !738, line: 48, type: !749)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !750, line: 6, baseType: !751)
!750 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "ba8742313715e20e434cf6ccb2db98e3")
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !752, line: 21, baseType: !753)
!752 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/__mbstate_t.h", directory: "", checksumkind: CSK_MD5, checksum: "82911a3e689448e3691ded3e0b471a55")
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !752, line: 13, size: 64, elements: !754)
!754 = !{!755, !756}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !753, file: !752, line: 15, baseType: !63, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !753, file: !752, line: 20, baseType: !757, size: 32, offset: 32)
!757 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !753, file: !752, line: 16, size: 32, elements: !758)
!758 = !{!759, !760}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !757, file: !752, line: 18, baseType: !69, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !757, file: !752, line: 19, baseType: !216, size: 32)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 16, elements: !227)
!762 = !DIGlobalVariableExpression(var: !763, expr: !DIExpression())
!763 = distinct !DIGlobalVariable(scope: null, file: !764, line: 78, type: !248, isLocal: true, isDefinition: true)
!764 = !DIFile(filename: "lib/quotearg.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e516a82aa3777cc82e92153587f3c069")
!765 = !DIGlobalVariableExpression(var: !766, expr: !DIExpression())
!766 = distinct !DIGlobalVariable(scope: null, file: !764, line: 79, type: !221, isLocal: true, isDefinition: true)
!767 = !DIGlobalVariableExpression(var: !768, expr: !DIExpression())
!768 = distinct !DIGlobalVariable(scope: null, file: !764, line: 80, type: !769, isLocal: true, isDefinition: true)
!769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !770)
!770 = !{!771}
!771 = !DISubrange(count: 13)
!772 = !DIGlobalVariableExpression(var: !773, expr: !DIExpression())
!773 = distinct !DIGlobalVariable(scope: null, file: !764, line: 81, type: !769, isLocal: true, isDefinition: true)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(scope: null, file: !764, line: 82, type: !198, isLocal: true, isDefinition: true)
!776 = !DIGlobalVariableExpression(var: !777, expr: !DIExpression())
!777 = distinct !DIGlobalVariable(scope: null, file: !764, line: 83, type: !226, isLocal: true, isDefinition: true)
!778 = !DIGlobalVariableExpression(var: !779, expr: !DIExpression())
!779 = distinct !DIGlobalVariable(scope: null, file: !764, line: 84, type: !248, isLocal: true, isDefinition: true)
!780 = !DIGlobalVariableExpression(var: !781, expr: !DIExpression())
!781 = distinct !DIGlobalVariable(scope: null, file: !764, line: 85, type: !19, isLocal: true, isDefinition: true)
!782 = !DIGlobalVariableExpression(var: !783, expr: !DIExpression())
!783 = distinct !DIGlobalVariable(scope: null, file: !764, line: 86, type: !19, isLocal: true, isDefinition: true)
!784 = !DIGlobalVariableExpression(var: !785, expr: !DIExpression())
!785 = distinct !DIGlobalVariable(scope: null, file: !764, line: 87, type: !248, isLocal: true, isDefinition: true)
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !788, file: !764, line: 76, type: !862, isLocal: false, isDefinition: true)
!788 = distinct !DICompileUnit(language: DW_LANG_C11, file: !764, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-quotearg.o -MD -MP -MF lib/.deps/libcoreutils_a-quotearg.Tpo -c lib/quotearg.c -o lib/.libcoreutils_a-quotearg.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !789, retainedTypes: !797, globals: !798, splitDebugInlining: false, nameTableKind: None)
!789 = !{!790, !792, !67}
!790 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !791, line: 42, baseType: !69, size: 32, elements: !414)
!791 = !DIFile(filename: "lib/quotearg.h", directory: "/src", checksumkind: CSK_MD5, checksum: "3470b31478e8805079addb2b99dd0ada")
!792 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !791, line: 254, baseType: !69, size: 32, elements: !793)
!793 = !{!794, !795, !796}
!794 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1)
!795 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2)
!796 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4)
!797 = !{!95, !63, !96, !97}
!798 = !{!762, !765, !767, !772, !774, !776, !778, !780, !782, !784, !786, !799, !803, !813, !815, !820, !822, !824, !826, !828, !851, !858, !860}
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !788, file: !764, line: 92, type: !801, isLocal: false, isDefinition: true)
!801 = !DICompositeType(tag: DW_TAG_array_type, baseType: !802, size: 320, elements: !50)
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !788, file: !764, line: 1040, type: !805, isLocal: false, isDefinition: true)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !764, line: 56, size: 448, elements: !806)
!806 = !{!807, !808, !809, !811, !812}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !805, file: !764, line: 59, baseType: !790, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !805, file: !764, line: 62, baseType: !63, size: 32, offset: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !805, file: !764, line: 66, baseType: !810, size: 256, offset: 64)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !249)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !805, file: !764, line: 69, baseType: !100, size: 64, offset: 320)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !805, file: !764, line: 72, baseType: !100, size: 64, offset: 384)
!813 = !DIGlobalVariableExpression(var: !814, expr: !DIExpression())
!814 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !788, file: !764, line: 107, type: !805, isLocal: true, isDefinition: true)
!815 = !DIGlobalVariableExpression(var: !816, expr: !DIExpression())
!816 = distinct !DIGlobalVariable(name: "slot0", scope: !788, file: !764, line: 831, type: !817, isLocal: true, isDefinition: true)
!817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !818)
!818 = !{!819}
!819 = !DISubrange(count: 256)
!820 = !DIGlobalVariableExpression(var: !821, expr: !DIExpression())
!821 = distinct !DIGlobalVariable(scope: null, file: !764, line: 321, type: !226, isLocal: true, isDefinition: true)
!822 = !DIGlobalVariableExpression(var: !823, expr: !DIExpression())
!823 = distinct !DIGlobalVariable(scope: null, file: !764, line: 357, type: !226, isLocal: true, isDefinition: true)
!824 = !DIGlobalVariableExpression(var: !825, expr: !DIExpression())
!825 = distinct !DIGlobalVariable(scope: null, file: !764, line: 358, type: !226, isLocal: true, isDefinition: true)
!826 = !DIGlobalVariableExpression(var: !827, expr: !DIExpression())
!827 = distinct !DIGlobalVariable(scope: null, file: !764, line: 199, type: !19, isLocal: true, isDefinition: true)
!828 = !DIGlobalVariableExpression(var: !829, expr: !DIExpression())
!829 = distinct !DIGlobalVariable(name: "quote", scope: !830, file: !764, line: 228, type: !849, isLocal: true, isDefinition: true)
!830 = distinct !DISubprogram(name: "gettext_quote", scope: !764, file: !764, line: 197, type: !831, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !833)
!831 = !DISubroutineType(types: !832)
!832 = !{!100, !100, !790}
!833 = !{!834, !835, !836, !837, !838}
!834 = !DILocalVariable(name: "msgid", arg: 1, scope: !830, file: !764, line: 197, type: !100)
!835 = !DILocalVariable(name: "s", arg: 2, scope: !830, file: !764, line: 197, type: !790)
!836 = !DILocalVariable(name: "translation", scope: !830, file: !764, line: 199, type: !100)
!837 = !DILocalVariable(name: "w", scope: !830, file: !764, line: 229, type: !366)
!838 = !DILocalVariable(name: "mbs", scope: !830, file: !764, line: 230, type: !839)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !750, line: 6, baseType: !840)
!840 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !752, line: 21, baseType: !841)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !752, line: 13, size: 64, elements: !842)
!842 = !{!843, !844}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !841, file: !752, line: 15, baseType: !63, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !841, file: !752, line: 20, baseType: !845, size: 32, offset: 32)
!845 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !841, file: !752, line: 16, size: 32, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !845, file: !752, line: 18, baseType: !69, size: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !845, file: !752, line: 19, baseType: !216, size: 32)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 64, elements: !850)
!850 = !{!228, !218}
!851 = !DIGlobalVariableExpression(var: !852, expr: !DIExpression())
!852 = distinct !DIGlobalVariable(name: "slotvec", scope: !788, file: !764, line: 834, type: !853, isLocal: true, isDefinition: true)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !764, line: 823, size: 128, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !854, file: !764, line: 825, baseType: !97, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !854, file: !764, line: 826, baseType: !94, size: 64, offset: 64)
!858 = !DIGlobalVariableExpression(var: !859, expr: !DIExpression())
!859 = distinct !DIGlobalVariable(name: "nslots", scope: !788, file: !764, line: 832, type: !63, isLocal: true, isDefinition: true)
!860 = !DIGlobalVariableExpression(var: !861, expr: !DIExpression())
!861 = distinct !DIGlobalVariable(name: "slotvec0", scope: !788, file: !764, line: 833, type: !854, isLocal: true, isDefinition: true)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !863, size: 704, elements: !449)
!863 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!864 = !DIGlobalVariableExpression(var: !865, expr: !DIExpression())
!865 = distinct !DIGlobalVariable(scope: null, file: !866, line: 67, type: !316, isLocal: true, isDefinition: true)
!866 = !DIFile(filename: "lib/version-etc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "67125e81b6b02afd000c478055b0b6ea")
!867 = !DIGlobalVariableExpression(var: !868, expr: !DIExpression())
!868 = distinct !DIGlobalVariable(scope: null, file: !866, line: 69, type: !19, isLocal: true, isDefinition: true)
!869 = !DIGlobalVariableExpression(var: !870, expr: !DIExpression())
!870 = distinct !DIGlobalVariable(scope: null, file: !866, line: 83, type: !19, isLocal: true, isDefinition: true)
!871 = !DIGlobalVariableExpression(var: !872, expr: !DIExpression())
!872 = distinct !DIGlobalVariable(scope: null, file: !866, line: 83, type: !216, isLocal: true, isDefinition: true)
!873 = !DIGlobalVariableExpression(var: !874, expr: !DIExpression())
!874 = distinct !DIGlobalVariable(scope: null, file: !866, line: 85, type: !226, isLocal: true, isDefinition: true)
!875 = !DIGlobalVariableExpression(var: !876, expr: !DIExpression())
!876 = distinct !DIGlobalVariable(scope: null, file: !866, line: 88, type: !877, isLocal: true, isDefinition: true)
!877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1368, elements: !878)
!878 = !{!879}
!879 = !DISubrange(count: 171)
!880 = !DIGlobalVariableExpression(var: !881, expr: !DIExpression())
!881 = distinct !DIGlobalVariable(scope: null, file: !866, line: 88, type: !882, isLocal: true, isDefinition: true)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !405)
!883 = !DIGlobalVariableExpression(var: !884, expr: !DIExpression())
!884 = distinct !DIGlobalVariable(scope: null, file: !866, line: 105, type: !111, isLocal: true, isDefinition: true)
!885 = !DIGlobalVariableExpression(var: !886, expr: !DIExpression())
!886 = distinct !DIGlobalVariable(scope: null, file: !866, line: 109, type: !399, isLocal: true, isDefinition: true)
!887 = !DIGlobalVariableExpression(var: !888, expr: !DIExpression())
!888 = distinct !DIGlobalVariable(scope: null, file: !866, line: 113, type: !546, isLocal: true, isDefinition: true)
!889 = !DIGlobalVariableExpression(var: !890, expr: !DIExpression())
!890 = distinct !DIGlobalVariable(scope: null, file: !866, line: 120, type: !891, isLocal: true, isDefinition: true)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !892)
!892 = !{!893}
!893 = !DISubrange(count: 32)
!894 = !DIGlobalVariableExpression(var: !895, expr: !DIExpression())
!895 = distinct !DIGlobalVariable(scope: null, file: !866, line: 127, type: !896, isLocal: true, isDefinition: true)
!896 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !897)
!897 = !{!898}
!898 = !DISubrange(count: 36)
!899 = !DIGlobalVariableExpression(var: !900, expr: !DIExpression())
!900 = distinct !DIGlobalVariable(scope: null, file: !866, line: 134, type: !270, isLocal: true, isDefinition: true)
!901 = !DIGlobalVariableExpression(var: !902, expr: !DIExpression())
!902 = distinct !DIGlobalVariable(scope: null, file: !866, line: 142, type: !903, isLocal: true, isDefinition: true)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !904)
!904 = !{!905}
!905 = !DISubrange(count: 44)
!906 = !DIGlobalVariableExpression(var: !907, expr: !DIExpression())
!907 = distinct !DIGlobalVariable(scope: null, file: !866, line: 150, type: !908, isLocal: true, isDefinition: true)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !909)
!909 = !{!910}
!910 = !DISubrange(count: 48)
!911 = !DIGlobalVariableExpression(var: !912, expr: !DIExpression())
!912 = distinct !DIGlobalVariable(scope: null, file: !866, line: 159, type: !913, isLocal: true, isDefinition: true)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !914)
!914 = !{!915}
!915 = !DISubrange(count: 52)
!916 = !DIGlobalVariableExpression(var: !917, expr: !DIExpression())
!917 = distinct !DIGlobalVariable(scope: null, file: !866, line: 170, type: !918, isLocal: true, isDefinition: true)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !919)
!919 = !{!920}
!920 = !DISubrange(count: 60)
!921 = !DIGlobalVariableExpression(var: !922, expr: !DIExpression())
!922 = distinct !DIGlobalVariable(scope: null, file: !866, line: 248, type: !198, isLocal: true, isDefinition: true)
!923 = !DIGlobalVariableExpression(var: !924, expr: !DIExpression())
!924 = distinct !DIGlobalVariable(scope: null, file: !866, line: 248, type: !292, isLocal: true, isDefinition: true)
!925 = !DIGlobalVariableExpression(var: !926, expr: !DIExpression())
!926 = distinct !DIGlobalVariable(scope: null, file: !866, line: 254, type: !198, isLocal: true, isDefinition: true)
!927 = !DIGlobalVariableExpression(var: !928, expr: !DIExpression())
!928 = distinct !DIGlobalVariable(scope: null, file: !866, line: 254, type: !106, isLocal: true, isDefinition: true)
!929 = !DIGlobalVariableExpression(var: !930, expr: !DIExpression())
!930 = distinct !DIGlobalVariable(scope: null, file: !866, line: 254, type: !270, isLocal: true, isDefinition: true)
!931 = !DIGlobalVariableExpression(var: !932, expr: !DIExpression())
!932 = distinct !DIGlobalVariable(scope: null, file: !866, line: 259, type: !3, isLocal: true, isDefinition: true)
!933 = !DIGlobalVariableExpression(var: !934, expr: !DIExpression())
!934 = distinct !DIGlobalVariable(scope: null, file: !866, line: 259, type: !935, isLocal: true, isDefinition: true)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !936)
!936 = !{!937}
!937 = !DISubrange(count: 29)
!938 = !DIGlobalVariableExpression(var: !939, expr: !DIExpression())
!939 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !940, file: !941, line: 26, type: !943, isLocal: false, isDefinition: true)
!940 = distinct !DICompileUnit(language: DW_LANG_C11, file: !941, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc-fsf.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc-fsf.Tpo -c lib/version-etc-fsf.c -o lib/.libcoreutils_a-version-etc-fsf.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !942, splitDebugInlining: false, nameTableKind: None)
!941 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/src", checksumkind: CSK_MD5, checksum: "c182151aedfe34dbff37c8cbe209dca5")
!942 = !{!938}
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !101, size: 376, elements: !535)
!944 = !DIGlobalVariableExpression(var: !945, expr: !DIExpression())
!945 = distinct !DIGlobalVariable(name: "exit_failure", scope: !946, file: !947, line: 24, type: !949, isLocal: false, isDefinition: true)
!946 = distinct !DICompileUnit(language: DW_LANG_C11, file: !947, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-exitfail.o -MD -MP -MF lib/.deps/libcoreutils_a-exitfail.Tpo -c lib/exitfail.c -o lib/.libcoreutils_a-exitfail.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !948, splitDebugInlining: false, nameTableKind: None)
!947 = !DIFile(filename: "lib/exitfail.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b7a45e7dc7c5d78fd3c2c7e1515d845")
!948 = !{!944}
!949 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !63)
!950 = !DIGlobalVariableExpression(var: !951, expr: !DIExpression())
!951 = distinct !DIGlobalVariable(scope: null, file: !952, line: 34, type: !235, isLocal: true, isDefinition: true)
!952 = !DIFile(filename: "lib/xalloc-die.c", directory: "/src", checksumkind: CSK_MD5, checksum: "9cfdc32319831c7c47723ecabcc3e0ec")
!953 = !DIGlobalVariableExpression(var: !954, expr: !DIExpression())
!954 = distinct !DIGlobalVariable(scope: null, file: !952, line: 34, type: !19, isLocal: true, isDefinition: true)
!955 = !DIGlobalVariableExpression(var: !956, expr: !DIExpression())
!956 = distinct !DIGlobalVariable(scope: null, file: !952, line: 34, type: !265, isLocal: true, isDefinition: true)
!957 = !DIGlobalVariableExpression(var: !958, expr: !DIExpression())
!958 = distinct !DIGlobalVariable(scope: null, file: !959, line: 108, type: !44, isLocal: true, isDefinition: true)
!959 = !DIFile(filename: "lib/mbrtoc32.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4440d3f9b40993908b2149a520ab0e48")
!960 = !DIGlobalVariableExpression(var: !961, expr: !DIExpression())
!961 = distinct !DIGlobalVariable(name: "internal_state", scope: !962, file: !959, line: 97, type: !965, isLocal: true, isDefinition: true)
!962 = distinct !DICompileUnit(language: DW_LANG_C11, file: !959, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-mbrtoc32.o -MD -MP -MF lib/.deps/libcoreutils_a-mbrtoc32.Tpo -c lib/mbrtoc32.c -o lib/.libcoreutils_a-mbrtoc32.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !963, globals: !964, splitDebugInlining: false, nameTableKind: None)
!963 = !{!95, !97, !102}
!964 = !{!957, !960}
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !750, line: 6, baseType: !966)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !752, line: 21, baseType: !967)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !752, line: 13, size: 64, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !967, file: !752, line: 15, baseType: !63, size: 32)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !967, file: !752, line: 20, baseType: !971, size: 32, offset: 32)
!971 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !752, line: 16, size: 32, elements: !972)
!972 = !{!973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !971, file: !752, line: 18, baseType: !69, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !971, file: !752, line: 19, baseType: !216, size: 32)
!975 = !DIGlobalVariableExpression(var: !976, expr: !DIExpression())
!976 = distinct !DIGlobalVariable(scope: null, file: !977, line: 35, type: !226, isLocal: true, isDefinition: true)
!977 = !DIFile(filename: "lib/hard-locale.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4c9342299721823d516c8dacfe891291")
!978 = !DIGlobalVariableExpression(var: !979, expr: !DIExpression())
!979 = distinct !DIGlobalVariable(scope: null, file: !977, line: 35, type: !221, isLocal: true, isDefinition: true)
!980 = distinct !DICompileUnit(language: DW_LANG_C11, file: !981, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fadvise.o -MD -MP -MF lib/.deps/libcoreutils_a-fadvise.Tpo -c lib/fadvise.c -o lib/.libcoreutils_a-fadvise.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !982, splitDebugInlining: false, nameTableKind: None)
!981 = !DIFile(filename: "lib/fadvise.c", directory: "/src", checksumkind: CSK_MD5, checksum: "4f050f925b6846c8ec117ac893b2a17f")
!982 = !{!983}
!983 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !984, line: 44, baseType: !69, size: 32, elements: !428)
!984 = !DIFile(filename: "lib/fadvise.h", directory: "/src", checksumkind: CSK_MD5, checksum: "8bbfadd819a4efc4455fc2741023266a")
!985 = distinct !DICompileUnit(language: DW_LANG_C11, file: !986, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fclose.o -MD -MP -MF lib/.deps/libcoreutils_a-fclose.Tpo -c lib/fclose.c -o lib/.libcoreutils_a-fclose.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!986 = !DIFile(filename: "lib/fclose.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ad074f61cd3a83174b525a3324caecb3")
!987 = distinct !DICompileUnit(language: DW_LANG_C11, file: !988, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fflush.o -MD -MP -MF lib/.deps/libcoreutils_a-fflush.Tpo -c lib/fflush.c -o lib/.libcoreutils_a-fflush.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !989, splitDebugInlining: false, nameTableKind: None)
!988 = !DIFile(filename: "lib/fflush.c", directory: "/src", checksumkind: CSK_MD5, checksum: "fd92d10557b4b5e20aede7240a4a4773")
!989 = !{!95}
!990 = distinct !DICompileUnit(language: DW_LANG_C11, file: !991, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fpurge.o -MD -MP -MF lib/.deps/libcoreutils_a-fpurge.Tpo -c lib/fpurge.c -o lib/.libcoreutils_a-fpurge.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!991 = !DIFile(filename: "lib/fpurge.c", directory: "/src", checksumkind: CSK_MD5, checksum: "33a2be68f69b8676b8fe51ee5bacb54f")
!992 = distinct !DICompileUnit(language: DW_LANG_C11, file: !993, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fseeko.o -MD -MP -MF lib/.deps/libcoreutils_a-fseeko.Tpo -c lib/fseeko.c -o lib/.libcoreutils_a-fseeko.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !989, splitDebugInlining: false, nameTableKind: None)
!993 = !DIFile(filename: "lib/fseeko.c", directory: "/src", checksumkind: CSK_MD5, checksum: "3ad6c791d3bcb21db86895eea23fc225")
!994 = distinct !DICompileUnit(language: DW_LANG_C11, file: !995, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-getprogname.o -MD -MP -MF lib/.deps/libcoreutils_a-getprogname.Tpo -c lib/getprogname.c -o lib/.libcoreutils_a-getprogname.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!995 = !DIFile(filename: "lib/getprogname.c", directory: "/src", checksumkind: CSK_MD5, checksum: "ee0e4cd46127cb12ad343b66f3cf3e04")
!996 = distinct !DICompileUnit(language: DW_LANG_C11, file: !866, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-version-etc.o -MD -MP -MF lib/.deps/libcoreutils_a-version-etc.Tpo -c lib/version-etc.c -o lib/.libcoreutils_a-version-etc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !997, retainedTypes: !989, globals: !1001, splitDebugInlining: false, nameTableKind: None)
!997 = !{!998}
!998 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !866, line: 40, baseType: !69, size: 32, elements: !999)
!999 = !{!1000}
!1000 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2026)
!1001 = !{!864, !867, !869, !871, !873, !875, !880, !883, !885, !887, !889, !894, !899, !901, !906, !911, !916, !921, !923, !925, !927, !929, !931, !933}
!1002 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1003, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xmalloc.o -MD -MP -MF lib/.deps/libcoreutils_a-xmalloc.Tpo -c lib/xmalloc.c -o lib/.libcoreutils_a-xmalloc.o.bc", runtimeVersion: 0, emissionKind: FullDebug, enums: !1004, retainedTypes: !1034, splitDebugInlining: false, nameTableKind: None)
!1003 = !DIFile(filename: "lib/xmalloc.c", directory: "/src", checksumkind: CSK_MD5, checksum: "cc2f9755b54551b4c250069bbba9e774")
!1004 = !{!1005, !1017}
!1005 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1006, file: !1003, line: 188, baseType: !69, size: 32, elements: !1015)
!1006 = distinct !DISubprogram(name: "x2nrealloc", scope: !1003, file: !1003, line: 176, type: !1007, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !1010)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!95, !95, !1009, !97}
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!1010 = !{!1011, !1012, !1013, !1014}
!1011 = !DILocalVariable(name: "p", arg: 1, scope: !1006, file: !1003, line: 176, type: !95)
!1012 = !DILocalVariable(name: "pn", arg: 2, scope: !1006, file: !1003, line: 176, type: !1009)
!1013 = !DILocalVariable(name: "s", arg: 3, scope: !1006, file: !1003, line: 176, type: !97)
!1014 = !DILocalVariable(name: "n", scope: !1006, file: !1003, line: 178, type: !97)
!1015 = !{!1016}
!1016 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128)
!1017 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !1018, file: !1003, line: 228, baseType: !69, size: 32, elements: !1015)
!1018 = distinct !DISubprogram(name: "xpalloc", scope: !1003, file: !1003, line: 223, type: !1019, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !1024)
!1019 = !DISubroutineType(types: !1020)
!1020 = !{!95, !95, !1021, !1022, !356, !1022}
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "idx_t", file: !1023, line: 130, baseType: !356)
!1023 = !DIFile(filename: "lib/idx.h", directory: "/src", checksumkind: CSK_MD5, checksum: "0d05a20b05e839c55efc1b1ccc3db29e")
!1024 = !{!1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033}
!1025 = !DILocalVariable(name: "pa", arg: 1, scope: !1018, file: !1003, line: 223, type: !95)
!1026 = !DILocalVariable(name: "pn", arg: 2, scope: !1018, file: !1003, line: 223, type: !1021)
!1027 = !DILocalVariable(name: "n_incr_min", arg: 3, scope: !1018, file: !1003, line: 223, type: !1022)
!1028 = !DILocalVariable(name: "n_max", arg: 4, scope: !1018, file: !1003, line: 223, type: !356)
!1029 = !DILocalVariable(name: "s", arg: 5, scope: !1018, file: !1003, line: 223, type: !1022)
!1030 = !DILocalVariable(name: "n0", scope: !1018, file: !1003, line: 230, type: !1022)
!1031 = !DILocalVariable(name: "n", scope: !1018, file: !1003, line: 237, type: !1022)
!1032 = !DILocalVariable(name: "nbytes", scope: !1018, file: !1003, line: 248, type: !1022)
!1033 = !DILocalVariable(name: "adjusted_nbytes", scope: !1018, file: !1003, line: 252, type: !1022)
!1034 = !{!94, !95}
!1035 = distinct !DICompileUnit(language: DW_LANG_C11, file: !952, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-xalloc-die.o -MD -MP -MF lib/.deps/libcoreutils_a-xalloc-die.Tpo -c lib/xalloc-die.c -o lib/.libcoreutils_a-xalloc-die.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1036, splitDebugInlining: false, nameTableKind: None)
!1036 = !{!950, !953, !955}
!1037 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1038, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-fopen.o -MD -MP -MF lib/.deps/libcoreutils_a-fopen.Tpo -c lib/fopen.c -o lib/.libcoreutils_a-fopen.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !989, splitDebugInlining: false, nameTableKind: None)
!1038 = !DIFile(filename: "lib/fopen.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e2a73b267ffe85e9e2028d0b4278a6b8")
!1039 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1040, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-close-stream.o -MD -MP -MF lib/.deps/libcoreutils_a-close-stream.Tpo -c lib/close-stream.c -o lib/.libcoreutils_a-close-stream.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1040 = !DIFile(filename: "lib/close-stream.c", directory: "/src", checksumkind: CSK_MD5, checksum: "7b802ca64750dec85f7eea1ad50ee78d")
!1041 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1042, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-reallocarray.o -MD -MP -MF lib/.deps/libcoreutils_a-reallocarray.Tpo -c lib/reallocarray.c -o lib/.libcoreutils_a-reallocarray.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !989, splitDebugInlining: false, nameTableKind: None)
!1042 = !DIFile(filename: "lib/reallocarray.c", directory: "/src", checksumkind: CSK_MD5, checksum: "f0edccd9d295409884b91dcf5eaca49d")
!1043 = distinct !DICompileUnit(language: DW_LANG_C11, file: !977, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-hard-locale.o -MD -MP -MF lib/.deps/libcoreutils_a-hard-locale.Tpo -c lib/hard-locale.c -o lib/.libcoreutils_a-hard-locale.o.bc", runtimeVersion: 0, emissionKind: FullDebug, globals: !1044, splitDebugInlining: false, nameTableKind: None)
!1044 = !{!975, !978}
!1045 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1046, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null.Tpo -c lib/setlocale_null.c -o lib/.libcoreutils_a-setlocale_null.o.bc", runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1046 = !DIFile(filename: "lib/setlocale_null.c", directory: "/src", checksumkind: CSK_MD5, checksum: "78fb5c66611523b6220f70c846d34415")
!1047 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1048, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -emit-llvm -I . -I ./lib -I lib -I ./lib -I src -I ./src -Wno-cast-qual -Wno-conversion -Wno-float-equal -Wno-sign-compare -Wno-undef -Wno-unused-function -Wno-unused-parameter -Wno-float-conversion -Wimplicit-fallthrough -Wno-pedantic -Wno-string-plus-int -Wno-tautological-constant-out-of-range-compare -Wno-sign-conversion -Wno-type-limits -Wno-unused-const-variable -Wno-error -g -O2 -MT lib/libcoreutils_a-setlocale_null-unlocked.o -MD -MP -MF lib/.deps/libcoreutils_a-setlocale_null-unlocked.Tpo -c lib/setlocale_null-unlocked.c -o lib/.libcoreutils_a-setlocale_null-unlocked.o.bc", runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !989, splitDebugInlining: false, nameTableKind: None)
!1048 = !DIFile(filename: "lib/setlocale_null-unlocked.c", directory: "/src", checksumkind: CSK_MD5, checksum: "e99679df43380940890d00903af688de")
!1049 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1050 = !{i32 7, !"Dwarf Version", i32 5}
!1051 = !{i32 2, !"Debug Info Version", i32 3}
!1052 = !{i32 1, !"wchar_size", i32 4}
!1053 = !{i32 8, !"PIC Level", i32 2}
!1054 = !{i32 7, !"PIE Level", i32 2}
!1055 = !{i32 7, !"uwtable", i32 2}
!1056 = !{i32 7, !"frame-pointer", i32 1}
!1057 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!1058 = distinct !DISubprogram(name: "usage", scope: !2, file: !2, line: 64, type: !1059, scopeLine: 65, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1061)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{null, !63}
!1061 = !{!1062}
!1062 = !DILocalVariable(name: "status", arg: 1, scope: !1058, file: !2, line: 64, type: !63)
!1063 = !DILocation(line: 0, scope: !1058)
!1064 = !DILocation(line: 66, column: 14, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 66, column: 7)
!1066 = !DILocation(line: 66, column: 7, scope: !1058)
!1067 = !DILocation(line: 67, column: 5, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 67, column: 5)
!1069 = !{!1070, !1070, i64 0}
!1070 = !{!"any pointer", !1071, i64 0}
!1071 = !{!"omnipotent char", !1072, i64 0}
!1072 = !{!"Simple C/C++ TBAA"}
!1073 = !DILocation(line: 70, column: 7, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 69, column: 5)
!1075 = !DILocation(line: 74, column: 7, scope: !1074)
!1076 = !DILocation(line: 729, column: 3, scope: !1077, inlinedAt: !1078)
!1077 = distinct !DISubprogram(name: "emit_stdin_note", scope: !62, file: !62, line: 727, type: !342, scopeLine: 728, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59)
!1078 = distinct !DILocation(line: 78, column: 7, scope: !1074)
!1079 = !DILocation(line: 736, column: 3, scope: !1080, inlinedAt: !1081)
!1080 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !62, file: !62, line: 734, type: !342, scopeLine: 735, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59)
!1081 = distinct !DILocation(line: 79, column: 7, scope: !1074)
!1082 = !DILocation(line: 81, column: 7, scope: !1074)
!1083 = !DILocation(line: 85, column: 7, scope: !1074)
!1084 = !DILocation(line: 89, column: 7, scope: !1074)
!1085 = !DILocation(line: 90, column: 7, scope: !1074)
!1086 = !DILocation(line: 91, column: 7, scope: !1074)
!1087 = !DILocalVariable(name: "program", arg: 1, scope: !1088, file: !62, line: 836, type: !100)
!1088 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !62, file: !62, line: 836, type: !1089, scopeLine: 837, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1091)
!1089 = !DISubroutineType(types: !1090)
!1090 = !{null, !100}
!1091 = !{!1087, !1092, !1099, !1100, !1102, !1103}
!1092 = !DILocalVariable(name: "infomap", scope: !1088, file: !62, line: 838, type: !1093)
!1093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1094, size: 896, elements: !20)
!1094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1095)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !1088, file: !62, line: 838, size: 128, elements: !1096)
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !1095, file: !62, line: 838, baseType: !100, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1095, file: !62, line: 838, baseType: !100, size: 64, offset: 64)
!1099 = !DILocalVariable(name: "node", scope: !1088, file: !62, line: 848, type: !100)
!1100 = !DILocalVariable(name: "map_prog", scope: !1088, file: !62, line: 849, type: !1101)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1102 = !DILocalVariable(name: "lc_messages", scope: !1088, file: !62, line: 861, type: !100)
!1103 = !DILocalVariable(name: "url_program", scope: !1088, file: !62, line: 874, type: !100)
!1104 = !DILocation(line: 0, scope: !1088, inlinedAt: !1105)
!1105 = distinct !DILocation(line: 92, column: 7, scope: !1074)
!1106 = !{}
!1107 = !DILocation(line: 857, column: 3, scope: !1088, inlinedAt: !1105)
!1108 = !DILocation(line: 861, column: 29, scope: !1088, inlinedAt: !1105)
!1109 = !DILocation(line: 862, column: 7, scope: !1110, inlinedAt: !1105)
!1110 = distinct !DILexicalBlock(scope: !1088, file: !62, line: 862, column: 7)
!1111 = !DILocation(line: 862, column: 19, scope: !1110, inlinedAt: !1105)
!1112 = !DILocation(line: 862, column: 22, scope: !1110, inlinedAt: !1105)
!1113 = !DILocation(line: 862, column: 7, scope: !1088, inlinedAt: !1105)
!1114 = !DILocation(line: 868, column: 7, scope: !1115, inlinedAt: !1105)
!1115 = distinct !DILexicalBlock(scope: !1110, file: !62, line: 863, column: 5)
!1116 = !DILocation(line: 870, column: 5, scope: !1115, inlinedAt: !1105)
!1117 = !DILocation(line: 875, column: 3, scope: !1088, inlinedAt: !1105)
!1118 = !DILocation(line: 877, column: 3, scope: !1088, inlinedAt: !1105)
!1119 = !DILocation(line: 94, column: 3, scope: !1058)
!1120 = !DISubprogram(name: "dcgettext", scope: !1121, file: !1121, line: 51, type: !1122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1121 = !DIFile(filename: "/usr/include/libintl.h", directory: "", checksumkind: CSK_MD5, checksum: "0e31399b9c91d643f160b16e3e368c5b")
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!94, !100, !100, !63}
!1124 = !DISubprogram(name: "__fprintf_chk", scope: !1125, file: !1125, line: 93, type: !1126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1125 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio2.h", directory: "", checksumkind: CSK_MD5, checksum: "86bbab96f1ef93a34d34cc28d8ca9c41")
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!63, !1128, !63, !1129, null}
!1128 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !149)
!1129 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!1130 = !DISubprogram(name: "__printf_chk", scope: !1125, file: !1125, line: 95, type: !1131, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!63, !63, !1129, null}
!1133 = !DISubprogram(name: "fputs_unlocked", scope: !688, file: !688, line: 691, type: !1134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1134 = !DISubroutineType(types: !1135)
!1135 = !{!63, !1129, !1128}
!1136 = !DILocation(line: 0, scope: !126)
!1137 = !DILocation(line: 581, column: 7, scope: !134)
!1138 = !{!1139, !1139, i64 0}
!1139 = !{!"int", !1071, i64 0}
!1140 = !DILocation(line: 581, column: 19, scope: !134)
!1141 = !DILocation(line: 581, column: 7, scope: !126)
!1142 = !DILocation(line: 585, column: 26, scope: !133)
!1143 = !DILocation(line: 0, scope: !133)
!1144 = !DILocation(line: 586, column: 23, scope: !133)
!1145 = !DILocation(line: 586, column: 28, scope: !133)
!1146 = !DILocation(line: 586, column: 32, scope: !133)
!1147 = !{!1071, !1071, i64 0}
!1148 = !DILocation(line: 586, column: 38, scope: !133)
!1149 = !DILocalVariable(name: "__s1", arg: 1, scope: !1150, file: !1151, line: 1359, type: !100)
!1150 = distinct !DISubprogram(name: "streq", scope: !1151, file: !1151, line: 1359, type: !1152, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1154)
!1151 = !DIFile(filename: "./lib/string.h", directory: "/src")
!1152 = !DISubroutineType(types: !1153)
!1153 = !{!136, !100, !100}
!1154 = !{!1149, !1155}
!1155 = !DILocalVariable(name: "__s2", arg: 2, scope: !1150, file: !1151, line: 1359, type: !100)
!1156 = !DILocation(line: 0, scope: !1150, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 586, column: 41, scope: !133)
!1158 = !DILocation(line: 1361, column: 11, scope: !1150, inlinedAt: !1157)
!1159 = !DILocation(line: 1361, column: 10, scope: !1150, inlinedAt: !1157)
!1160 = !DILocation(line: 586, column: 19, scope: !133)
!1161 = !DILocation(line: 587, column: 5, scope: !133)
!1162 = !DILocation(line: 588, column: 7, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !126, file: !62, line: 588, column: 7)
!1164 = !DILocation(line: 588, column: 7, scope: !126)
!1165 = !DILocation(line: 590, column: 7, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1163, file: !62, line: 589, column: 5)
!1167 = !DILocation(line: 591, column: 7, scope: !1166)
!1168 = !DILocation(line: 595, column: 37, scope: !126)
!1169 = !DILocation(line: 595, column: 35, scope: !126)
!1170 = !DILocation(line: 596, column: 29, scope: !126)
!1171 = !DILocation(line: 597, column: 8, scope: !142)
!1172 = !DILocation(line: 597, column: 7, scope: !126)
!1173 = !DILocation(line: 604, column: 24, scope: !141)
!1174 = !DILocation(line: 604, column: 12, scope: !142)
!1175 = !DILocation(line: 0, scope: !140)
!1176 = !DILocation(line: 610, column: 16, scope: !140)
!1177 = !DILocation(line: 610, column: 7, scope: !140)
!1178 = !DILocation(line: 611, column: 21, scope: !140)
!1179 = !{!1180, !1180, i64 0}
!1180 = !{!"short", !1071, i64 0}
!1181 = !DILocation(line: 611, column: 19, scope: !140)
!1182 = !DILocation(line: 611, column: 16, scope: !140)
!1183 = !DILocation(line: 610, column: 30, scope: !140)
!1184 = distinct !{!1184, !1177, !1178, !1185}
!1185 = !{!"llvm.loop.mustprogress"}
!1186 = !DILocation(line: 612, column: 18, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !140, file: !62, line: 612, column: 11)
!1188 = !DILocation(line: 612, column: 11, scope: !140)
!1189 = !DILocation(line: 620, column: 23, scope: !126)
!1190 = !DILocation(line: 625, column: 39, scope: !126)
!1191 = !DILocation(line: 626, column: 3, scope: !126)
!1192 = !DILocation(line: 626, column: 10, scope: !126)
!1193 = !DILocation(line: 626, column: 21, scope: !126)
!1194 = !DILocation(line: 628, column: 44, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !62, line: 628, column: 11)
!1196 = distinct !DILexicalBlock(scope: !126, file: !62, line: 627, column: 5)
!1197 = !DILocation(line: 628, column: 32, scope: !1195)
!1198 = !DILocation(line: 628, column: 49, scope: !1195)
!1199 = !DILocation(line: 628, column: 11, scope: !1196)
!1200 = !DILocation(line: 630, column: 11, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1196, file: !62, line: 630, column: 11)
!1202 = !DILocation(line: 630, column: 11, scope: !1196)
!1203 = !DILocation(line: 632, column: 26, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !62, line: 632, column: 15)
!1205 = distinct !DILexicalBlock(scope: !1201, file: !62, line: 631, column: 9)
!1206 = !DILocation(line: 632, column: 34, scope: !1204)
!1207 = !DILocation(line: 632, column: 37, scope: !1204)
!1208 = !DILocation(line: 632, column: 15, scope: !1205)
!1209 = !DILocation(line: 640, column: 16, scope: !1196)
!1210 = distinct !{!1210, !1191, !1211, !1185}
!1211 = !DILocation(line: 641, column: 5, scope: !126)
!1212 = !DILocation(line: 644, column: 3, scope: !126)
!1213 = !DILocation(line: 0, scope: !1150, inlinedAt: !1214)
!1214 = distinct !DILocation(line: 648, column: 31, scope: !126)
!1215 = !DILocation(line: 0, scope: !1150, inlinedAt: !1216)
!1216 = distinct !DILocation(line: 649, column: 31, scope: !126)
!1217 = !DILocation(line: 0, scope: !1150, inlinedAt: !1218)
!1218 = distinct !DILocation(line: 650, column: 31, scope: !126)
!1219 = !DILocation(line: 0, scope: !1150, inlinedAt: !1220)
!1220 = distinct !DILocation(line: 651, column: 31, scope: !126)
!1221 = !DILocation(line: 0, scope: !1150, inlinedAt: !1222)
!1222 = distinct !DILocation(line: 652, column: 31, scope: !126)
!1223 = !DILocation(line: 0, scope: !1150, inlinedAt: !1224)
!1224 = distinct !DILocation(line: 653, column: 31, scope: !126)
!1225 = !DILocation(line: 0, scope: !1150, inlinedAt: !1226)
!1226 = distinct !DILocation(line: 654, column: 31, scope: !126)
!1227 = !DILocation(line: 0, scope: !1150, inlinedAt: !1228)
!1228 = distinct !DILocation(line: 655, column: 31, scope: !126)
!1229 = !DILocation(line: 0, scope: !1150, inlinedAt: !1230)
!1230 = distinct !DILocation(line: 656, column: 31, scope: !126)
!1231 = !DILocation(line: 0, scope: !1150, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 657, column: 31, scope: !126)
!1233 = !DILocation(line: 663, column: 7, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !126, file: !62, line: 663, column: 7)
!1235 = !DILocation(line: 664, column: 7, scope: !1234)
!1236 = !DILocation(line: 664, column: 10, scope: !1234)
!1237 = !DILocation(line: 663, column: 7, scope: !126)
!1238 = !DILocation(line: 669, column: 7, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !62, line: 665, column: 5)
!1240 = !DILocation(line: 671, column: 5, scope: !1239)
!1241 = !DILocation(line: 676, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1234, file: !62, line: 673, column: 5)
!1243 = !DILocation(line: 679, column: 3, scope: !126)
!1244 = !DILocation(line: 683, column: 3, scope: !126)
!1245 = !DILocation(line: 686, column: 3, scope: !126)
!1246 = !DILocation(line: 688, column: 3, scope: !126)
!1247 = !DILocation(line: 691, column: 3, scope: !126)
!1248 = !DILocation(line: 695, column: 3, scope: !126)
!1249 = !DILocation(line: 696, column: 1, scope: !126)
!1250 = !DISubprogram(name: "setlocale", scope: !1251, file: !1251, line: 122, type: !1252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1251 = !DIFile(filename: "/usr/include/locale.h", directory: "", checksumkind: CSK_MD5, checksum: "a1d177e0f311dc60a74cb347049d75bc")
!1252 = !DISubroutineType(types: !1253)
!1253 = !{!94, !63, !100}
!1254 = !DISubprogram(name: "strncmp", scope: !1255, file: !1255, line: 159, type: !1256, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1255 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!63, !100, !100, !97}
!1258 = !DISubprogram(name: "exit", scope: !1259, file: !1259, line: 624, type: !1059, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1259 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!1260 = !DISubprogram(name: "getenv", scope: !1259, file: !1259, line: 641, type: !1261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1261 = !DISubroutineType(types: !1262)
!1262 = !{!94, !100}
!1263 = !DISubprogram(name: "strcmp", scope: !1255, file: !1255, line: 156, type: !1264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{!63, !100, !100}
!1266 = !DISubprogram(name: "strspn", scope: !1255, file: !1255, line: 297, type: !1267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1267 = !DISubroutineType(types: !1268)
!1268 = !{!99, !100, !100}
!1269 = !DISubprogram(name: "strchr", scope: !1255, file: !1255, line: 246, type: !1270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!94, !100, !63}
!1272 = !DISubprogram(name: "__ctype_b_loc", scope: !68, file: !68, line: 79, type: !1273, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1273 = !DISubroutineType(types: !1274)
!1274 = !{!1275}
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!1278 = !DISubprogram(name: "strcspn", scope: !1255, file: !1255, line: 293, type: !1267, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1279 = !DISubprogram(name: "fwrite_unlocked", scope: !688, file: !688, line: 704, type: !1280, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!97, !1282, !97, !97, !1128}
!1282 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1283)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1285 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 189, type: !1286, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1288)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!63, !63, !567}
!1288 = !{!1289, !1290, !1291, !1292}
!1289 = !DILocalVariable(name: "argc", arg: 1, scope: !1285, file: !2, line: 189, type: !63)
!1290 = !DILocalVariable(name: "argv", arg: 2, scope: !1285, file: !2, line: 189, type: !567)
!1291 = !DILocalVariable(name: "c", scope: !1285, file: !2, line: 191, type: !63)
!1292 = !DILocalVariable(name: "tab_stop", scope: !1293, file: !2, line: 220, type: !226)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !2, line: 219, column: 13)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !2, line: 216, column: 15)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 205, column: 9)
!1296 = distinct !DILexicalBlock(scope: !1285, file: !2, line: 203, column: 5)
!1297 = distinct !DIAssignID()
!1298 = distinct !DIAssignID()
!1299 = distinct !DIAssignID()
!1300 = distinct !DIAssignID()
!1301 = distinct !DIAssignID()
!1302 = !DILocation(line: 0, scope: !1293)
!1303 = !DILocation(line: 0, scope: !1285)
!1304 = !DILocation(line: 194, column: 21, scope: !1285)
!1305 = !DILocation(line: 194, column: 3, scope: !1285)
!1306 = !DILocation(line: 195, column: 3, scope: !1285)
!1307 = !DILocation(line: 196, column: 3, scope: !1285)
!1308 = !DILocation(line: 197, column: 3, scope: !1285)
!1309 = !DILocation(line: 199, column: 3, scope: !1285)
!1310 = !DILocation(line: 200, column: 23, scope: !1285)
!1311 = !{!1312, !1312, i64 0}
!1312 = !{!"_Bool", !1071, i64 0}
!1313 = !DILocation(line: 202, column: 3, scope: !1285)
!1314 = !DILocation(line: 202, column: 15, scope: !1285)
!1315 = !DILocation(line: 207, column: 31, scope: !1295)
!1316 = !DILocation(line: 208, column: 11, scope: !1295)
!1317 = !DILocation(line: 211, column: 28, scope: !1295)
!1318 = !DILocation(line: 211, column: 11, scope: !1295)
!1319 = !DILocation(line: 212, column: 11, scope: !1295)
!1320 = !DILocation(line: 216, column: 15, scope: !1294)
!1321 = !DILocation(line: 216, column: 15, scope: !1295)
!1322 = !DILocation(line: 217, column: 37, scope: !1294)
!1323 = !DILocation(line: 217, column: 13, scope: !1294)
!1324 = distinct !{!1324, !1313, !1325, !1185}
!1325 = !DILocation(line: 234, column: 5, scope: !1285)
!1326 = !DILocation(line: 220, column: 15, scope: !1293)
!1327 = !DILocation(line: 221, column: 29, scope: !1293)
!1328 = !DILocation(line: 221, column: 27, scope: !1293)
!1329 = distinct !DIAssignID()
!1330 = !DILocation(line: 222, column: 27, scope: !1293)
!1331 = distinct !DIAssignID()
!1332 = !DILocation(line: 223, column: 15, scope: !1293)
!1333 = !DILocation(line: 224, column: 13, scope: !1294)
!1334 = !DILocation(line: 227, column: 9, scope: !1295)
!1335 = !DILocation(line: 229, column: 9, scope: !1295)
!1336 = !DILocation(line: 232, column: 11, scope: !1295)
!1337 = !DILocation(line: 236, column: 3, scope: !1285)
!1338 = !DILocation(line: 238, column: 18, scope: !1285)
!1339 = !DILocation(line: 238, column: 25, scope: !1285)
!1340 = !DILocation(line: 238, column: 3, scope: !1285)
!1341 = !DILocation(line: 0, scope: !361, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 240, column: 3, scope: !1285)
!1343 = !DILocation(line: 0, scope: !381, inlinedAt: !1342)
!1344 = !DILocation(line: 105, column: 14, scope: !341, inlinedAt: !1342)
!1345 = !DILocation(line: 0, scope: !341, inlinedAt: !1342)
!1346 = !DILocation(line: 107, column: 8, scope: !1347, inlinedAt: !1342)
!1347 = distinct !DILexicalBlock(scope: !341, file: !2, line: 107, column: 7)
!1348 = !DILocation(line: 107, column: 7, scope: !341, inlinedAt: !1342)
!1349 = !DILocation(line: 114, column: 3, scope: !341, inlinedAt: !1342)
!1350 = !DILocation(line: 61, column: 13, scope: !1351, inlinedAt: !1360)
!1351 = distinct !DISubprogram(name: "mbbuf_init", scope: !348, file: !348, line: 56, type: !1352, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1355)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{null, !1354, !94, !354, !149}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!1355 = !{!1356, !1357, !1358, !1359}
!1356 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1351, file: !348, line: 56, type: !1354)
!1357 = !DILocalVariable(name: "buffer", arg: 2, scope: !1351, file: !348, line: 56, type: !94)
!1358 = !DILocalVariable(name: "size", arg: 3, scope: !1351, file: !348, line: 56, type: !354)
!1359 = !DILocalVariable(name: "fp", arg: 4, scope: !1351, file: !348, line: 56, type: !149)
!1360 = distinct !DILocation(line: 112, column: 3, scope: !341, inlinedAt: !1342)
!1361 = !DILocation(line: 130, column: 7, scope: !361, inlinedAt: !1342)
!1362 = !DILocation(line: 130, column: 13, scope: !361, inlinedAt: !1342)
!1363 = !{!1364, !1364, i64 0}
!1364 = !{!"long", !1071, i64 0}
!1365 = distinct !DIAssignID()
!1366 = !DILocation(line: 135, column: 7, scope: !361, inlinedAt: !1342)
!1367 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1368, file: !348, line: 71, type: !1354)
!1368 = distinct !DISubprogram(name: "mbbuf_get_char", scope: !348, file: !348, line: 71, type: !1369, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1371)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!362, !1354}
!1371 = !{!1367, !1372, !1373, !1376}
!1372 = !DILocalVariable(name: "available", scope: !1368, file: !348, line: 73, type: !354)
!1373 = !DILocalVariable(name: "start", scope: !1374, file: !348, line: 77, type: !354)
!1374 = distinct !DILexicalBlock(scope: !1375, file: !348, line: 76, column: 5)
!1375 = distinct !DILexicalBlock(scope: !1368, file: !348, line: 75, column: 7)
!1376 = !DILocalVariable(name: "g", scope: !1368, file: !348, line: 92, type: !362)
!1377 = !DILocation(line: 0, scope: !1368, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 137, column: 23, scope: !385, inlinedAt: !1342)
!1379 = !DILocation(line: 73, column: 35, scope: !1368, inlinedAt: !1378)
!1380 = !DILocation(line: 75, column: 17, scope: !1375, inlinedAt: !1378)
!1381 = !DILocation(line: 75, column: 32, scope: !1375, inlinedAt: !1378)
!1382 = !DILocalVariable(name: "__stream", arg: 1, scope: !1383, file: !1384, line: 128, type: !149)
!1383 = distinct !DISubprogram(name: "feof_unlocked", scope: !1384, file: !1384, line: 128, type: !1385, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1387)
!1384 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!63, !149}
!1387 = !{!1382}
!1388 = !DILocation(line: 0, scope: !1383, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 75, column: 37, scope: !1375, inlinedAt: !1378)
!1390 = !DILocation(line: 130, column: 10, scope: !1383, inlinedAt: !1389)
!1391 = !{!1392, !1139, i64 0}
!1392 = !{!"_IO_FILE", !1139, i64 0, !1070, i64 8, !1070, i64 16, !1070, i64 24, !1070, i64 32, !1070, i64 40, !1070, i64 48, !1070, i64 56, !1070, i64 64, !1070, i64 72, !1070, i64 80, !1070, i64 88, !1070, i64 96, !1070, i64 104, !1139, i64 112, !1139, i64 116, !1364, i64 120, !1180, i64 128, !1071, i64 130, !1071, i64 131, !1070, i64 136, !1364, i64 144, !1070, i64 152, !1070, i64 160, !1070, i64 168, !1070, i64 176, !1364, i64 184, !1139, i64 192, !1071, i64 196}
!1393 = !DILocation(line: 75, column: 37, scope: !1375, inlinedAt: !1378)
!1394 = !DILocation(line: 75, column: 7, scope: !1368, inlinedAt: !1378)
!1395 = !DILocation(line: 78, column: 15, scope: !1396, inlinedAt: !1378)
!1396 = distinct !DILexicalBlock(scope: !1374, file: !348, line: 78, column: 11)
!1397 = !DILocation(line: 78, column: 11, scope: !1374, inlinedAt: !1378)
!1398 = !DILocation(line: 82, column: 49, scope: !1399, inlinedAt: !1378)
!1399 = distinct !DILexicalBlock(scope: !1396, file: !348, line: 81, column: 9)
!1400 = !DILocalVariable(name: "__dest", arg: 1, scope: !1401, file: !1402, line: 34, type: !95)
!1401 = distinct !DISubprogram(name: "memmove", scope: !1402, file: !1402, line: 34, type: !1403, scopeLine: 35, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1405)
!1402 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/string_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "07ec6246fff124a462ca821044b97d7c")
!1403 = !DISubroutineType(types: !1404)
!1404 = !{!95, !95, !1283, !97}
!1405 = !{!1400, !1406, !1407}
!1406 = !DILocalVariable(name: "__src", arg: 2, scope: !1401, file: !1402, line: 34, type: !1283)
!1407 = !DILocalVariable(name: "__len", arg: 3, scope: !1401, file: !1402, line: 34, type: !97)
!1408 = !DILocation(line: 0, scope: !1401, inlinedAt: !1409)
!1409 = distinct !DILocation(line: 82, column: 11, scope: !1399, inlinedAt: !1378)
!1410 = !DILocation(line: 36, column: 10, scope: !1401, inlinedAt: !1409)
!1411 = !DILocation(line: 0, scope: !1374, inlinedAt: !1378)
!1412 = !DILocation(line: 0, scope: !1396, inlinedAt: !1378)
!1413 = !DILocation(line: 85, column: 23, scope: !1374, inlinedAt: !1378)
!1414 = !DILocation(line: 86, column: 41, scope: !1374, inlinedAt: !1378)
!1415 = !DILocation(line: 89, column: 5, scope: !1374, inlinedAt: !1378)
!1416 = !DILocation(line: 90, column: 17, scope: !1417, inlinedAt: !1378)
!1417 = distinct !DILexicalBlock(scope: !1368, file: !348, line: 90, column: 7)
!1418 = !DILocation(line: 90, column: 7, scope: !1368, inlinedAt: !1378)
!1419 = !DILocation(line: 92, column: 39, scope: !1368, inlinedAt: !1378)
!1420 = !DILocalVariable(name: "mbs", scope: !1421, file: !84, line: 244, type: !1430)
!1421 = distinct !DISubprogram(name: "mcel_scan", scope: !84, file: !84, line: 230, type: !1422, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1424)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!362, !100, !100}
!1424 = !{!1425, !1426, !1427, !1420, !1428, !1429}
!1425 = !DILocalVariable(name: "p", arg: 1, scope: !1421, file: !84, line: 230, type: !100)
!1426 = !DILocalVariable(name: "lim", arg: 2, scope: !1421, file: !84, line: 230, type: !100)
!1427 = !DILocalVariable(name: "c", scope: !1421, file: !84, line: 235, type: !4)
!1428 = !DILocalVariable(name: "ch", scope: !1421, file: !84, line: 267, type: !366)
!1429 = !DILocalVariable(name: "len", scope: !1421, file: !84, line: 268, type: !97)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !750, line: 6, baseType: !1431)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !752, line: 21, baseType: !1432)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !752, line: 13, size: 64, elements: !1433)
!1433 = !{!1434, !1435}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1432, file: !752, line: 15, baseType: !63, size: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1432, file: !752, line: 20, baseType: !1436, size: 32, offset: 32)
!1436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1432, file: !752, line: 16, size: 32, elements: !1437)
!1437 = !{!1438, !1439}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1436, file: !752, line: 18, baseType: !69, size: 32)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1436, file: !752, line: 19, baseType: !216, size: 32)
!1440 = !DILocation(line: 0, scope: !1421, inlinedAt: !1441)
!1441 = distinct !DILocation(line: 92, column: 14, scope: !1368, inlinedAt: !1378)
!1442 = !DILocation(line: 235, column: 12, scope: !1421, inlinedAt: !1441)
!1443 = !DILocalVariable(name: "c", arg: 1, scope: !1444, file: !84, line: 215, type: !4)
!1444 = distinct !DISubprogram(name: "mcel_isbasic", scope: !84, file: !84, line: 215, type: !1445, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1447)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!136, !4}
!1447 = !{!1443}
!1448 = !DILocation(line: 0, scope: !1444, inlinedAt: !1449)
!1449 = distinct !DILocation(line: 236, column: 7, scope: !1450, inlinedAt: !1441)
!1450 = distinct !DILexicalBlock(scope: !1421, file: !84, line: 236, column: 7)
!1451 = !DILocation(line: 217, column: 10, scope: !1444, inlinedAt: !1449)
!1452 = !DILocation(line: 236, column: 7, scope: !1421, inlinedAt: !1441)
!1453 = !DILocation(line: 93, column: 39, scope: !1368, inlinedAt: !1378)
!1454 = !DILocation(line: 244, column: 3, scope: !1421, inlinedAt: !1441)
!1455 = !DILocation(line: 244, column: 30, scope: !1421, inlinedAt: !1441)
!1456 = !{!1457, !1139, i64 0}
!1457 = !{!"", !1139, i64 0, !1071, i64 4}
!1458 = distinct !DIAssignID()
!1459 = !DILocation(line: 267, column: 3, scope: !1421, inlinedAt: !1441)
!1460 = !DILocation(line: 268, column: 38, scope: !1421, inlinedAt: !1441)
!1461 = !DILocation(line: 268, column: 16, scope: !1421, inlinedAt: !1441)
!1462 = !DILocation(line: 274, column: 7, scope: !1463, inlinedAt: !1441)
!1463 = distinct !DILexicalBlock(scope: !1421, file: !84, line: 274, column: 7)
!1464 = !DILocation(line: 274, column: 7, scope: !1421, inlinedAt: !1441)
!1465 = !{!"branch_weights", i32 1, i32 2000}
!1466 = !DILocation(line: 279, column: 19, scope: !1421, inlinedAt: !1441)
!1467 = !DILocalVariable(name: "ch", arg: 1, scope: !1468, file: !84, line: 167, type: !366)
!1468 = distinct !DISubprogram(name: "mcel_ch", scope: !84, file: !84, line: 167, type: !1469, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1471)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!362, !366, !97}
!1471 = !{!1467, !1472}
!1472 = !DILocalVariable(name: "len", arg: 2, scope: !1468, file: !84, line: 167, type: !97)
!1473 = !DILocation(line: 0, scope: !1468, inlinedAt: !1474)
!1474 = distinct !DILocation(line: 279, column: 10, scope: !1421, inlinedAt: !1441)
!1475 = !DILocation(line: 169, column: 3, scope: !1468, inlinedAt: !1474)
!1476 = !DILocation(line: 170, column: 3, scope: !1468, inlinedAt: !1474)
!1477 = !DILocation(line: 171, column: 3, scope: !1468, inlinedAt: !1474)
!1478 = !DILocation(line: 172, column: 3, scope: !1468, inlinedAt: !1474)
!1479 = !DILocation(line: 279, column: 3, scope: !1421, inlinedAt: !1441)
!1480 = !DILocalVariable(name: "err", arg: 1, scope: !1481, file: !84, line: 175, type: !102)
!1481 = distinct !DISubprogram(name: "mcel_err", scope: !84, file: !84, line: 175, type: !1482, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1484)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!362, !102}
!1484 = !{!1480}
!1485 = !DILocation(line: 0, scope: !1481, inlinedAt: !1486)
!1486 = distinct !DILocation(line: 275, column: 12, scope: !1463, inlinedAt: !1441)
!1487 = !DILocation(line: 178, column: 3, scope: !1481, inlinedAt: !1486)
!1488 = !DILocation(line: 275, column: 5, scope: !1463, inlinedAt: !1441)
!1489 = !DILocation(line: 280, column: 1, scope: !1421, inlinedAt: !1441)
!1490 = !DILocation(line: 0, scope: !1468, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 237, column: 12, scope: !1450, inlinedAt: !1441)
!1492 = !DILocation(line: 172, column: 3, scope: !1468, inlinedAt: !1491)
!1493 = !DILocation(line: 237, column: 5, scope: !1450, inlinedAt: !1441)
!1494 = !DILocation(line: 94, column: 9, scope: !1495, inlinedAt: !1378)
!1495 = distinct !DILexicalBlock(scope: !1368, file: !348, line: 94, column: 7)
!1496 = !DILocation(line: 94, column: 7, scope: !1368, inlinedAt: !1378)
!1497 = !DILocation(line: 99, column: 30, scope: !1498, inlinedAt: !1378)
!1498 = distinct !DILexicalBlock(scope: !1495, file: !348, line: 97, column: 5)
!1499 = !DILocation(line: 99, column: 14, scope: !1498, inlinedAt: !1378)
!1500 = !DILocation(line: 92, column: 14, scope: !1368, inlinedAt: !1378)
!1501 = !DILocation(line: 95, column: 5, scope: !1495, inlinedAt: !1378)
!1502 = !DILocation(line: 0, scope: !1495, inlinedAt: !1378)
!1503 = !DILocation(line: 101, column: 3, scope: !1368, inlinedAt: !1378)
!1504 = !DILocation(line: 102, column: 1, scope: !1368, inlinedAt: !1378)
!1505 = !DILocation(line: 137, column: 23, scope: !385, inlinedAt: !1342)
!1506 = !DILocation(line: 137, column: 51, scope: !385, inlinedAt: !1342)
!1507 = !DILocation(line: 138, column: 18, scope: !385, inlinedAt: !1342)
!1508 = !DILocation(line: 138, column: 27, scope: !385, inlinedAt: !1342)
!1509 = !DILocation(line: 137, column: 11, scope: !385, inlinedAt: !1342)
!1510 = !DILocation(line: 61, column: 13, scope: !1351, inlinedAt: !1511)
!1511 = distinct !DILocation(line: 0, scope: !341, inlinedAt: !1342)
!1512 = distinct !{!1512, !1509, !1513, !1185, !1514}
!1513 = !DILocation(line: 139, column: 60, scope: !385, inlinedAt: !1342)
!1514 = !{!"llvm.loop.peeled.count", i32 1}
!1515 = !DILocation(line: 85, column: 21, scope: !1374, inlinedAt: !1378)
!1516 = !DILocation(line: 141, column: 15, scope: !385, inlinedAt: !1342)
!1517 = !DILocation(line: 143, column: 26, scope: !383, inlinedAt: !1342)
!1518 = !{i8 0, i8 2}
!1519 = !DILocation(line: 143, column: 46, scope: !383, inlinedAt: !1342)
!1520 = !DILocalVariable(name: "wc", arg: 1, scope: !1521, file: !62, line: 178, type: !366)
!1521 = distinct !DISubprogram(name: "c32issep", scope: !62, file: !62, line: 178, type: !1522, scopeLine: 179, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1524)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{!136, !366}
!1524 = !{!1520}
!1525 = !DILocation(line: 0, scope: !1521, inlinedAt: !1526)
!1526 = distinct !DILocation(line: 143, column: 49, scope: !383, inlinedAt: !1342)
!1527 = !DILocalVariable(name: "wc", arg: 1, scope: !1528, file: !1529, line: 770, type: !1532)
!1528 = distinct !DISubprogram(name: "c32isblank", scope: !1529, file: !1529, line: 770, type: !1530, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1534)
!1529 = !DIFile(filename: "./lib/uchar.h", directory: "/src")
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!63, !1532}
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !1533, line: 20, baseType: !69)
!1533 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/types/wint_t.h", directory: "", checksumkind: CSK_MD5, checksum: "aa31b53ef28dc23152ceb41e2763ded3")
!1534 = !{!1527}
!1535 = !DILocation(line: 0, scope: !1528, inlinedAt: !1536)
!1536 = distinct !DILocation(line: 181, column: 13, scope: !1521, inlinedAt: !1526)
!1537 = !DILocation(line: 776, column: 10, scope: !1528, inlinedAt: !1536)
!1538 = !DILocation(line: 181, column: 11, scope: !1521, inlinedAt: !1526)
!1539 = !DILocation(line: 145, column: 19, scope: !383, inlinedAt: !1342)
!1540 = !DILocation(line: 148, column: 19, scope: !381, inlinedAt: !1342)
!1541 = !DILocation(line: 150, column: 23, scope: !381, inlinedAt: !1342)
!1542 = !DILocation(line: 152, column: 26, scope: !381, inlinedAt: !1342)
!1543 = !DILocation(line: 152, column: 35, scope: !381, inlinedAt: !1342)
!1544 = !DILocation(line: 152, column: 19, scope: !381, inlinedAt: !1342)
!1545 = !DILocalVariable(name: "__c", arg: 1, scope: !1546, file: !1384, line: 108, type: !63)
!1546 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1384, file: !1384, line: 108, type: !1547, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1549)
!1547 = !DISubroutineType(types: !1548)
!1548 = !{!63, !63}
!1549 = !{!1545}
!1550 = !DILocation(line: 0, scope: !1546, inlinedAt: !1551)
!1551 = distinct !DILocation(line: 153, column: 25, scope: !1552, inlinedAt: !1342)
!1552 = distinct !DILexicalBlock(scope: !381, file: !2, line: 153, column: 25)
!1553 = !DILocation(line: 110, column: 10, scope: !1546, inlinedAt: !1551)
!1554 = !{!1392, !1070, i64 40}
!1555 = !{!1392, !1070, i64 48}
!1556 = !{!"branch_weights", i32 2000, i32 1}
!1557 = !DILocation(line: 153, column: 25, scope: !381, inlinedAt: !1342)
!1558 = !DILocation(line: 153, column: 39, scope: !1552, inlinedAt: !1342)
!1559 = !DILocation(line: 948, column: 21, scope: !1560, inlinedAt: !1563)
!1560 = distinct !DISubprogram(name: "write_error", scope: !62, file: !62, line: 946, type: !342, scopeLine: 947, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1561)
!1561 = !{!1562}
!1562 = !DILocalVariable(name: "saved_errno", scope: !1560, file: !62, line: 948, type: !63)
!1563 = distinct !DILocation(line: 154, column: 23, scope: !1552, inlinedAt: !1342)
!1564 = !DILocation(line: 0, scope: !1560, inlinedAt: !1563)
!1565 = !DILocation(line: 949, column: 3, scope: !1560, inlinedAt: !1563)
!1566 = !DILocation(line: 950, column: 11, scope: !1560, inlinedAt: !1563)
!1567 = !DILocation(line: 950, column: 3, scope: !1560, inlinedAt: !1563)
!1568 = !DILocation(line: 951, column: 3, scope: !1560, inlinedAt: !1563)
!1569 = !DILocation(line: 952, column: 3, scope: !1560, inlinedAt: !1563)
!1570 = distinct !{!1570, !1544, !1571, !1185}
!1571 = !DILocation(line: 154, column: 36, scope: !381, inlinedAt: !1342)
!1572 = !DILocation(line: 110, column: 10, scope: !1546, inlinedAt: !1573)
!1573 = distinct !DILocation(line: 156, column: 23, scope: !1574, inlinedAt: !1342)
!1574 = distinct !DILexicalBlock(scope: !381, file: !2, line: 156, column: 23)
!1575 = !DILocation(line: 0, scope: !1546, inlinedAt: !1573)
!1576 = !DILocation(line: 156, column: 23, scope: !381, inlinedAt: !1342)
!1577 = !DILocation(line: 156, column: 37, scope: !1574, inlinedAt: !1342)
!1578 = !DILocation(line: 948, column: 21, scope: !1560, inlinedAt: !1579)
!1579 = distinct !DILocation(line: 157, column: 21, scope: !1574, inlinedAt: !1342)
!1580 = !DILocation(line: 0, scope: !1560, inlinedAt: !1579)
!1581 = !DILocation(line: 949, column: 3, scope: !1560, inlinedAt: !1579)
!1582 = !DILocation(line: 950, column: 11, scope: !1560, inlinedAt: !1579)
!1583 = !DILocation(line: 950, column: 3, scope: !1560, inlinedAt: !1579)
!1584 = !DILocation(line: 951, column: 3, scope: !1560, inlinedAt: !1579)
!1585 = !DILocation(line: 952, column: 3, scope: !1560, inlinedAt: !1579)
!1586 = !DILocation(line: 160, column: 17, scope: !382, inlinedAt: !1342)
!1587 = !DILocation(line: 165, column: 30, scope: !1588, inlinedAt: !1342)
!1588 = distinct !DILexicalBlock(scope: !389, file: !2, line: 162, column: 17)
!1589 = !DILocation(line: 165, column: 26, scope: !1588, inlinedAt: !1342)
!1590 = !DILocation(line: 166, column: 34, scope: !1588, inlinedAt: !1342)
!1591 = !DILocation(line: 166, column: 33, scope: !1588, inlinedAt: !1342)
!1592 = !DILocation(line: 166, column: 29, scope: !1588, inlinedAt: !1342)
!1593 = distinct !DIAssignID()
!1594 = !DILocation(line: 177, column: 15, scope: !385, inlinedAt: !1342)
!1595 = !DILocalVariable(name: "wc", arg: 1, scope: !1596, file: !1529, line: 1004, type: !366)
!1596 = distinct !DISubprogram(name: "c32width", scope: !1529, file: !1529, line: 1004, type: !1597, scopeLine: 1005, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1599)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!63, !366}
!1599 = !{!1595}
!1600 = !DILocation(line: 0, scope: !1596, inlinedAt: !1601)
!1601 = distinct !DILocation(line: 170, column: 31, scope: !388, inlinedAt: !1342)
!1602 = !DILocation(line: 1010, column: 10, scope: !1596, inlinedAt: !1601)
!1603 = !DILocation(line: 0, scope: !388, inlinedAt: !1342)
!1604 = !DILocation(line: 171, column: 23, scope: !1605, inlinedAt: !1342)
!1605 = distinct !DILexicalBlock(scope: !388, file: !2, line: 171, column: 23)
!1606 = !DILocation(line: 171, column: 23, scope: !388, inlinedAt: !1342)
!1607 = !DILocation(line: 172, column: 21, scope: !1605, inlinedAt: !1342)
!1608 = !DILocalVariable(name: "g", arg: 2, scope: !1609, file: !348, line: 107, type: !362)
!1609 = distinct !DISubprogram(name: "mbbuf_char_offset", scope: !348, file: !348, line: 107, type: !1610, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1612)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!94, !1354, !362}
!1612 = !{!1613, !1608}
!1613 = !DILocalVariable(name: "mbbuf", arg: 1, scope: !1609, file: !348, line: 107, type: !1354)
!1614 = !DILocation(line: 0, scope: !1609, inlinedAt: !1615)
!1615 = distinct !DILocation(line: 180, column: 11, scope: !385, inlinedAt: !1342)
!1616 = !DILocation(line: 0, scope: !1609, inlinedAt: !1617)
!1617 = distinct !DILocation(line: 180, column: 11, scope: !385, inlinedAt: !1342)
!1618 = !DILocation(line: 109, column: 21, scope: !1619, inlinedAt: !1620)
!1619 = distinct !DILexicalBlock(scope: !1609, file: !348, line: 109, column: 7)
!1620 = distinct !DILocation(line: 180, column: 11, scope: !385, inlinedAt: !1342)
!1621 = !DILocation(line: 109, column: 7, scope: !1609, inlinedAt: !1620)
!1622 = !DILocation(line: 111, column: 41, scope: !1609, inlinedAt: !1617)
!1623 = !DILocation(line: 111, column: 24, scope: !1609, inlinedAt: !1617)
!1624 = !DILocation(line: 180, column: 11, scope: !385, inlinedAt: !1342)
!1625 = !DILocation(line: 181, column: 15, scope: !1626, inlinedAt: !1342)
!1626 = distinct !DILexicalBlock(scope: !385, file: !2, line: 181, column: 15)
!1627 = !DILocalVariable(name: "__stream", arg: 1, scope: !1628, file: !1384, line: 135, type: !149)
!1628 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1384, file: !1384, line: 135, type: !1385, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !59, retainedNodes: !1629)
!1629 = !{!1627}
!1630 = !DILocation(line: 0, scope: !1628, inlinedAt: !1631)
!1631 = distinct !DILocation(line: 181, column: 15, scope: !1626, inlinedAt: !1342)
!1632 = !DILocation(line: 137, column: 10, scope: !1628, inlinedAt: !1631)
!1633 = !DILocation(line: 181, column: 15, scope: !385, inlinedAt: !1342)
!1634 = !DILocation(line: 948, column: 21, scope: !1560, inlinedAt: !1635)
!1635 = distinct !DILocation(line: 182, column: 13, scope: !1626, inlinedAt: !1342)
!1636 = !DILocation(line: 0, scope: !1560, inlinedAt: !1635)
!1637 = !DILocation(line: 949, column: 3, scope: !1560, inlinedAt: !1635)
!1638 = !DILocation(line: 950, column: 11, scope: !1560, inlinedAt: !1635)
!1639 = !DILocation(line: 950, column: 3, scope: !1560, inlinedAt: !1635)
!1640 = !DILocation(line: 951, column: 3, scope: !1560, inlinedAt: !1635)
!1641 = !DILocation(line: 952, column: 3, scope: !1560, inlinedAt: !1635)
!1642 = !DILocation(line: 0, scope: !382, inlinedAt: !1342)
!1643 = !DILocation(line: 184, column: 19, scope: !361, inlinedAt: !1342)
!1644 = !DILocation(line: 183, column: 9, scope: !385, inlinedAt: !1342)
!1645 = distinct !{!1645, !1366, !1646, !1185}
!1646 = !DILocation(line: 184, column: 26, scope: !361, inlinedAt: !1342)
!1647 = !DILocation(line: 185, column: 5, scope: !341, inlinedAt: !1342)
!1648 = distinct !{!1648, !1349, !1647}
!1649 = !DILocation(line: 242, column: 3, scope: !1285)
!1650 = !DILocation(line: 244, column: 10, scope: !1285)
!1651 = !DILocation(line: 244, column: 3, scope: !1285)
!1652 = !DISubprogram(name: "bindtextdomain", scope: !1121, file: !1121, line: 86, type: !1653, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!94, !100, !100}
!1655 = !DISubprogram(name: "textdomain", scope: !1121, file: !1121, line: 82, type: !1261, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1656 = !DISubprogram(name: "atexit", scope: !1259, file: !1259, line: 602, type: !1657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!63, !724}
!1659 = !DISubprogram(name: "getopt_long", scope: !332, file: !332, line: 66, type: !1660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!63, !63, !1662, !100, !1664, !337}
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!1665 = !DISubprogram(name: "__builtin___memmove_chk", scope: !1666, file: !1666, line: 25, type: !1667, flags: DIFlagArtificial | DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1666 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/strings_fortified.h", directory: "", checksumkind: CSK_MD5, checksum: "2c53309439f074d781ca95a346401d78")
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!95, !95, !1283, !99, !99}
!1669 = !DISubprogram(name: "mbrtoc32", scope: !367, file: !367, line: 57, type: !1670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{!97, !1672, !1129, !97, !1674}
!1672 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1673)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1675)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1676 = !DISubprogram(name: "iswblank", scope: !1677, file: !1677, line: 146, type: !1530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1677 = !DIFile(filename: "/usr/include/aarch64-linux-gnu/bits/wctype-wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "48fed714a84c77fca0455b433489fc47")
!1678 = !DISubprogram(name: "__overflow", scope: !688, file: !688, line: 886, type: !1679, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!63, !149, !63}
!1681 = !DISubprogram(name: "__errno_location", scope: !1682, file: !1682, line: 37, type: !1683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1682 = !DIFile(filename: "/usr/include/errno.h", directory: "", checksumkind: CSK_MD5, checksum: "01c14bf4ab600a3884f5da68eb763170")
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!337}
!1685 = !DISubprogram(name: "fflush_unlocked", scope: !688, file: !688, line: 239, type: !1385, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1686 = !DISubprogram(name: "clearerr_unlocked", scope: !688, file: !688, line: 794, type: !1687, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{null, !149}
!1689 = !DISubprogram(name: "wcwidth", scope: !1690, file: !1690, line: 368, type: !1691, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1690 = !DIFile(filename: "/usr/include/wchar.h", directory: "", checksumkind: CSK_MD5, checksum: "484b7adbbc849bb51cdbcb2d985b07a0")
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!63, !1693}
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !1694, line: 24, baseType: !69)
!1694 = !DIFile(filename: "/usr/lib/llvm-18/lib/clang/18/include/__stddef_wchar_t.h", directory: "", checksumkind: CSK_MD5, checksum: "1bf0c51e90dd5eb05cdcc01afdea587a")
!1695 = distinct !DISubprogram(name: "add_tab_stop", scope: !410, file: !410, line: 84, type: !1696, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1698)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{null, !374}
!1698 = !{!1699, !1700, !1701}
!1699 = !DILocalVariable(name: "tabval", arg: 1, scope: !1695, file: !410, line: 84, type: !374)
!1700 = !DILocalVariable(name: "prev_column", scope: !1695, file: !410, line: 86, type: !374)
!1701 = !DILocalVariable(name: "column_width", scope: !1695, file: !410, line: 87, type: !374)
!1702 = !DILocation(line: 0, scope: !1695)
!1703 = !DILocation(line: 86, column: 23, scope: !1695)
!1704 = !DILocation(line: 91, column: 3, scope: !1695)
!1705 = !DILocation(line: 86, column: 40, scope: !1695)
!1706 = !DILocation(line: 89, column: 25, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !1695, file: !410, line: 89, column: 7)
!1708 = !DILocation(line: 89, column: 22, scope: !1707)
!1709 = !DILocation(line: 89, column: 7, scope: !1695)
!1710 = !DILocation(line: 90, column: 16, scope: !1707)
!1711 = !DILocation(line: 90, column: 14, scope: !1707)
!1712 = !DILocation(line: 91, column: 26, scope: !1695)
!1713 = !DILocation(line: 90, column: 5, scope: !1707)
!1714 = !DILocation(line: 87, column: 36, scope: !1695)
!1715 = !DILocation(line: 87, column: 24, scope: !1695)
!1716 = !DILocation(line: 91, column: 30, scope: !1695)
!1717 = !DILocalVariable(name: "width", arg: 1, scope: !1718, file: !410, line: 73, type: !374)
!1718 = distinct !DISubprogram(name: "set_max_column_width", scope: !410, file: !410, line: 73, type: !1696, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1719)
!1719 = !{!1717}
!1720 = !DILocation(line: 0, scope: !1718, inlinedAt: !1721)
!1721 = distinct !DILocation(line: 93, column: 3, scope: !1695)
!1722 = !DILocation(line: 75, column: 7, scope: !1723, inlinedAt: !1721)
!1723 = distinct !DILexicalBlock(scope: !1718, file: !410, line: 75, column: 7)
!1724 = !DILocation(line: 75, column: 24, scope: !1723, inlinedAt: !1721)
!1725 = !DILocation(line: 75, column: 7, scope: !1718, inlinedAt: !1721)
!1726 = !DILocation(line: 77, column: 11, scope: !1727, inlinedAt: !1721)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !410, line: 77, column: 11)
!1728 = distinct !DILexicalBlock(scope: !1723, file: !410, line: 76, column: 5)
!1729 = !DILocation(line: 94, column: 1, scope: !1695)
!1730 = distinct !DISubprogram(name: "parse_tab_stops", scope: !410, file: !410, line: 137, type: !1089, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1731)
!1731 = !{!1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1750}
!1732 = !DILocalVariable(name: "stops", arg: 1, scope: !1730, file: !410, line: 137, type: !100)
!1733 = !DILocalVariable(name: "have_tabval", scope: !1730, file: !410, line: 139, type: !136)
!1734 = !DILocalVariable(name: "tabval", scope: !1730, file: !410, line: 140, type: !374)
!1735 = !DILocalVariable(name: "extend_tabval", scope: !1730, file: !410, line: 141, type: !136)
!1736 = !DILocalVariable(name: "increment_tabval", scope: !1730, file: !410, line: 142, type: !136)
!1737 = !DILocalVariable(name: "num_start", scope: !1730, file: !410, line: 143, type: !100)
!1738 = !DILocalVariable(name: "ok", scope: !1730, file: !410, line: 144, type: !136)
!1739 = !DILocalVariable(name: "len", scope: !1740, file: !410, line: 207, type: !354)
!1740 = distinct !DILexicalBlock(scope: !1741, file: !410, line: 206, column: 13)
!1741 = distinct !DILexicalBlock(scope: !1742, file: !410, line: 205, column: 15)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !410, line: 196, column: 9)
!1743 = distinct !DILexicalBlock(scope: !1744, file: !410, line: 195, column: 16)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !410, line: 184, column: 16)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !410, line: 173, column: 16)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !410, line: 148, column: 11)
!1747 = distinct !DILexicalBlock(scope: !1748, file: !410, line: 147, column: 5)
!1748 = distinct !DILexicalBlock(scope: !1749, file: !410, line: 146, column: 3)
!1749 = distinct !DILexicalBlock(scope: !1730, file: !410, line: 146, column: 3)
!1750 = !DILocalVariable(name: "bad_num", scope: !1740, file: !410, line: 208, type: !94)
!1751 = !DILocation(line: 0, scope: !1730)
!1752 = !DILocation(line: 146, column: 3, scope: !1730)
!1753 = !DILocation(line: 140, column: 9, scope: !1730)
!1754 = !DILocation(line: 143, column: 15, scope: !1730)
!1755 = !DILocation(line: 146, column: 10, scope: !1748)
!1756 = !DILocation(line: 146, column: 3, scope: !1749)
!1757 = !DILocation(line: 148, column: 28, scope: !1746)
!1758 = !DILocation(line: 148, column: 11, scope: !1747)
!1759 = !DILocation(line: 150, column: 15, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1746, file: !410, line: 149, column: 9)
!1761 = !DILocation(line: 152, column: 19, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1763, file: !410, line: 151, column: 13)
!1763 = distinct !DILexicalBlock(scope: !1760, file: !410, line: 150, column: 15)
!1764 = !DILocalVariable(name: "tabval", arg: 1, scope: !1765, file: !410, line: 97, type: !374)
!1765 = distinct !DISubprogram(name: "set_extend_size", scope: !410, file: !410, line: 97, type: !1766, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1768)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!136, !374}
!1768 = !{!1764, !1769}
!1769 = !DILocalVariable(name: "ok", scope: !1765, file: !410, line: 99, type: !136)
!1770 = !DILocation(line: 0, scope: !1765, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 154, column: 25, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !410, line: 154, column: 23)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !410, line: 153, column: 17)
!1774 = distinct !DILexicalBlock(scope: !1762, file: !410, line: 152, column: 19)
!1775 = !DILocation(line: 101, column: 7, scope: !1776, inlinedAt: !1771)
!1776 = distinct !DILexicalBlock(scope: !1765, file: !410, line: 101, column: 7)
!1777 = !DILocation(line: 101, column: 7, scope: !1765, inlinedAt: !1771)
!1778 = !DILocation(line: 103, column: 7, scope: !1779, inlinedAt: !1771)
!1779 = distinct !DILexicalBlock(scope: !1776, file: !410, line: 102, column: 5)
!1780 = !DILocation(line: 107, column: 5, scope: !1779, inlinedAt: !1771)
!1781 = !DILocation(line: 108, column: 15, scope: !1765, inlinedAt: !1771)
!1782 = !DILocation(line: 0, scope: !1718, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 110, column: 3, scope: !1765, inlinedAt: !1771)
!1784 = !DILocation(line: 75, column: 7, scope: !1723, inlinedAt: !1783)
!1785 = !DILocation(line: 75, column: 24, scope: !1723, inlinedAt: !1783)
!1786 = !DILocation(line: 75, column: 7, scope: !1718, inlinedAt: !1783)
!1787 = !DILocation(line: 77, column: 11, scope: !1727, inlinedAt: !1783)
!1788 = !DILocation(line: 154, column: 23, scope: !1773)
!1789 = !DILocation(line: 160, column: 24, scope: !1774)
!1790 = !DILocalVariable(name: "tabval", arg: 1, scope: !1791, file: !410, line: 116, type: !374)
!1791 = distinct !DISubprogram(name: "set_increment_size", scope: !410, file: !410, line: 116, type: !1766, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1792)
!1792 = !{!1790, !1793}
!1793 = !DILocalVariable(name: "ok", scope: !1791, file: !410, line: 118, type: !136)
!1794 = !DILocation(line: 0, scope: !1791, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 162, column: 25, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !410, line: 162, column: 23)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !410, line: 161, column: 17)
!1798 = distinct !DILexicalBlock(scope: !1774, file: !410, line: 160, column: 24)
!1799 = !DILocation(line: 120, column: 7, scope: !1800, inlinedAt: !1795)
!1800 = distinct !DILexicalBlock(scope: !1791, file: !410, line: 120, column: 7)
!1801 = !DILocation(line: 120, column: 7, scope: !1791, inlinedAt: !1795)
!1802 = !DILocation(line: 122, column: 7, scope: !1803, inlinedAt: !1795)
!1803 = distinct !DILexicalBlock(scope: !1800, file: !410, line: 121, column: 5)
!1804 = !DILocation(line: 126, column: 5, scope: !1803, inlinedAt: !1795)
!1805 = !DILocation(line: 127, column: 18, scope: !1791, inlinedAt: !1795)
!1806 = !DILocation(line: 0, scope: !1718, inlinedAt: !1807)
!1807 = distinct !DILocation(line: 129, column: 3, scope: !1791, inlinedAt: !1795)
!1808 = !DILocation(line: 75, column: 7, scope: !1723, inlinedAt: !1807)
!1809 = !DILocation(line: 75, column: 24, scope: !1723, inlinedAt: !1807)
!1810 = !DILocation(line: 75, column: 7, scope: !1718, inlinedAt: !1807)
!1811 = !DILocation(line: 77, column: 11, scope: !1727, inlinedAt: !1807)
!1812 = !DILocation(line: 162, column: 23, scope: !1797)
!1813 = !DILocation(line: 0, scope: !1695, inlinedAt: !1814)
!1814 = distinct !DILocation(line: 169, column: 17, scope: !1798)
!1815 = !DILocation(line: 86, column: 23, scope: !1695, inlinedAt: !1814)
!1816 = !DILocation(line: 91, column: 3, scope: !1695, inlinedAt: !1814)
!1817 = !DILocation(line: 86, column: 40, scope: !1695, inlinedAt: !1814)
!1818 = !DILocation(line: 89, column: 25, scope: !1707, inlinedAt: !1814)
!1819 = !DILocation(line: 89, column: 22, scope: !1707, inlinedAt: !1814)
!1820 = !DILocation(line: 89, column: 7, scope: !1695, inlinedAt: !1814)
!1821 = !DILocation(line: 90, column: 16, scope: !1707, inlinedAt: !1814)
!1822 = !DILocation(line: 90, column: 14, scope: !1707, inlinedAt: !1814)
!1823 = !DILocation(line: 91, column: 26, scope: !1695, inlinedAt: !1814)
!1824 = !DILocation(line: 90, column: 5, scope: !1707, inlinedAt: !1814)
!1825 = !DILocation(line: 87, column: 36, scope: !1695, inlinedAt: !1814)
!1826 = !DILocation(line: 87, column: 24, scope: !1695, inlinedAt: !1814)
!1827 = !DILocation(line: 91, column: 30, scope: !1695, inlinedAt: !1814)
!1828 = !DILocation(line: 0, scope: !1718, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 93, column: 3, scope: !1695, inlinedAt: !1814)
!1830 = !DILocation(line: 75, column: 7, scope: !1723, inlinedAt: !1829)
!1831 = !DILocation(line: 75, column: 24, scope: !1723, inlinedAt: !1829)
!1832 = !DILocation(line: 75, column: 7, scope: !1718, inlinedAt: !1829)
!1833 = !DILocation(line: 77, column: 11, scope: !1727, inlinedAt: !1829)
!1834 = !DILocation(line: 173, column: 16, scope: !1746)
!1835 = !DILocation(line: 175, column: 15, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1745, file: !410, line: 174, column: 9)
!1837 = !DILocation(line: 177, column: 15, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1839, file: !410, line: 176, column: 13)
!1839 = distinct !DILexicalBlock(scope: !1836, file: !410, line: 175, column: 15)
!1840 = !DILocation(line: 180, column: 13, scope: !1838)
!1841 = !DILocation(line: 186, column: 15, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1744, file: !410, line: 185, column: 9)
!1843 = !DILocation(line: 188, column: 15, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !410, line: 187, column: 13)
!1845 = distinct !DILexicalBlock(scope: !1842, file: !410, line: 186, column: 15)
!1846 = !DILocation(line: 191, column: 13, scope: !1844)
!1847 = !DILocation(line: 173, column: 16, scope: !1745)
!1848 = !DILocalVariable(name: "c", arg: 1, scope: !1849, file: !1850, line: 233, type: !63)
!1849 = distinct !DISubprogram(name: "c_isdigit", scope: !1850, file: !1850, line: 233, type: !1851, scopeLine: 234, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1853)
!1850 = !DIFile(filename: "./lib/c-ctype.h", directory: "/src", checksumkind: CSK_MD5, checksum: "ae3bc10b98afd74391aea9e3c38adcb1")
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!136, !63}
!1853 = !{!1848}
!1854 = !DILocation(line: 0, scope: !1849, inlinedAt: !1855)
!1855 = distinct !DILocation(line: 195, column: 16, scope: !1743)
!1856 = !DILocation(line: 235, column: 3, scope: !1849, inlinedAt: !1855)
!1857 = !DILocation(line: 195, column: 16, scope: !1744)
!1858 = !DILocation(line: 197, column: 15, scope: !1742)
!1859 = !DILocation(line: 205, column: 16, scope: !1741)
!1860 = !DILocation(line: 205, column: 15, scope: !1742)
!1861 = !DILocation(line: 207, column: 27, scope: !1740)
!1862 = !DILocation(line: 0, scope: !1740)
!1863 = !DILocation(line: 208, column: 31, scope: !1740)
!1864 = !DILocation(line: 209, column: 15, scope: !1740)
!1865 = !DILocation(line: 210, column: 15, scope: !1740)
!1866 = !DILocation(line: 212, column: 33, scope: !1740)
!1867 = !DILocation(line: 212, column: 39, scope: !1740)
!1868 = !DILocation(line: 213, column: 13, scope: !1740)
!1869 = !DILocation(line: 217, column: 11, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1743, file: !410, line: 216, column: 9)
!1871 = !DILocation(line: 220, column: 11, scope: !1870)
!1872 = !DILocation(line: 146, column: 23, scope: !1748)
!1873 = !DILocation(line: 146, column: 3, scope: !1748)
!1874 = distinct !{!1874, !1756, !1875, !1185}
!1875 = !DILocation(line: 222, column: 5, scope: !1749)
!1876 = !DILocation(line: 224, column: 10, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1730, file: !410, line: 224, column: 7)
!1878 = !DILocation(line: 226, column: 11, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1877, file: !410, line: 225, column: 5)
!1880 = !DILocation(line: 0, scope: !1765, inlinedAt: !1881)
!1881 = distinct !DILocation(line: 227, column: 15, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1879, file: !410, line: 226, column: 11)
!1883 = !DILocation(line: 101, column: 7, scope: !1776, inlinedAt: !1881)
!1884 = !DILocation(line: 101, column: 7, scope: !1765, inlinedAt: !1881)
!1885 = !DILocation(line: 108, column: 15, scope: !1765, inlinedAt: !1881)
!1886 = !DILocation(line: 0, scope: !1718, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 110, column: 3, scope: !1765, inlinedAt: !1881)
!1888 = !DILocation(line: 75, column: 7, scope: !1723, inlinedAt: !1887)
!1889 = !DILocation(line: 75, column: 24, scope: !1723, inlinedAt: !1887)
!1890 = !DILocation(line: 75, column: 7, scope: !1718, inlinedAt: !1887)
!1891 = !DILocation(line: 103, column: 7, scope: !1779, inlinedAt: !1881)
!1892 = !DILocation(line: 77, column: 11, scope: !1727, inlinedAt: !1887)
!1893 = !DILocation(line: 234, column: 7, scope: !1730)
!1894 = !DILocation(line: 228, column: 16, scope: !1882)
!1895 = !DILocation(line: 0, scope: !1791, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 229, column: 15, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1882, file: !410, line: 228, column: 16)
!1898 = !DILocation(line: 120, column: 7, scope: !1800, inlinedAt: !1896)
!1899 = !DILocation(line: 120, column: 7, scope: !1791, inlinedAt: !1896)
!1900 = !DILocation(line: 127, column: 18, scope: !1791, inlinedAt: !1896)
!1901 = !DILocation(line: 0, scope: !1718, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 129, column: 3, scope: !1791, inlinedAt: !1896)
!1903 = !DILocation(line: 75, column: 7, scope: !1723, inlinedAt: !1902)
!1904 = !DILocation(line: 75, column: 24, scope: !1723, inlinedAt: !1902)
!1905 = !DILocation(line: 75, column: 7, scope: !1718, inlinedAt: !1902)
!1906 = !DILocation(line: 122, column: 7, scope: !1803, inlinedAt: !1896)
!1907 = !DILocation(line: 77, column: 11, scope: !1727, inlinedAt: !1902)
!1908 = !DILocation(line: 0, scope: !1695, inlinedAt: !1909)
!1909 = distinct !DILocation(line: 231, column: 9, scope: !1897)
!1910 = !DILocation(line: 86, column: 23, scope: !1695, inlinedAt: !1909)
!1911 = !DILocation(line: 91, column: 3, scope: !1695, inlinedAt: !1909)
!1912 = !DILocation(line: 86, column: 40, scope: !1695, inlinedAt: !1909)
!1913 = !DILocation(line: 89, column: 25, scope: !1707, inlinedAt: !1909)
!1914 = !DILocation(line: 89, column: 22, scope: !1707, inlinedAt: !1909)
!1915 = !DILocation(line: 89, column: 7, scope: !1695, inlinedAt: !1909)
!1916 = !DILocation(line: 90, column: 16, scope: !1707, inlinedAt: !1909)
!1917 = !DILocation(line: 90, column: 14, scope: !1707, inlinedAt: !1909)
!1918 = !DILocation(line: 91, column: 26, scope: !1695, inlinedAt: !1909)
!1919 = !DILocation(line: 90, column: 5, scope: !1707, inlinedAt: !1909)
!1920 = !DILocation(line: 87, column: 36, scope: !1695, inlinedAt: !1909)
!1921 = !DILocation(line: 87, column: 24, scope: !1695, inlinedAt: !1909)
!1922 = !DILocation(line: 91, column: 30, scope: !1695, inlinedAt: !1909)
!1923 = !DILocation(line: 0, scope: !1718, inlinedAt: !1924)
!1924 = distinct !DILocation(line: 93, column: 3, scope: !1695, inlinedAt: !1909)
!1925 = !DILocation(line: 75, column: 7, scope: !1723, inlinedAt: !1924)
!1926 = !DILocation(line: 75, column: 24, scope: !1723, inlinedAt: !1924)
!1927 = !DILocation(line: 75, column: 7, scope: !1718, inlinedAt: !1924)
!1928 = !DILocation(line: 235, column: 5, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1730, file: !410, line: 234, column: 7)
!1930 = !DILocation(line: 0, scope: !1882)
!1931 = !DILocation(line: 236, column: 1, scope: !1730)
!1932 = !DISubprogram(name: "free", scope: !1259, file: !1259, line: 555, type: !1933, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{null, !95}
!1935 = distinct !DISubprogram(name: "finalize_tab_stops", scope: !410, file: !410, line: 268, type: !342, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409)
!1936 = !DILocation(line: 270, column: 23, scope: !1935)
!1937 = !DILocation(line: 270, column: 33, scope: !1935)
!1938 = !DILocalVariable(name: "tabs", arg: 1, scope: !1939, file: !410, line: 242, type: !1942)
!1939 = distinct !DISubprogram(name: "validate_tab_stops", scope: !410, file: !410, line: 242, type: !1940, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1944)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{null, !1942, !354}
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!1944 = !{!1938, !1945, !1946, !1947}
!1945 = !DILocalVariable(name: "entries", arg: 2, scope: !1939, file: !410, line: 242, type: !354)
!1946 = !DILocalVariable(name: "prev_tab", scope: !1939, file: !410, line: 244, type: !374)
!1947 = !DILocalVariable(name: "i", scope: !1948, file: !410, line: 246, type: !354)
!1948 = distinct !DILexicalBlock(scope: !1939, file: !410, line: 246, column: 3)
!1949 = !DILocation(line: 0, scope: !1939, inlinedAt: !1950)
!1950 = distinct !DILocation(line: 270, column: 3, scope: !1935)
!1951 = !DILocation(line: 0, scope: !1948, inlinedAt: !1950)
!1952 = !DILocation(line: 246, column: 23, scope: !1953, inlinedAt: !1950)
!1953 = distinct !DILexicalBlock(scope: !1948, file: !410, line: 246, column: 3)
!1954 = !DILocation(line: 246, column: 3, scope: !1948, inlinedAt: !1950)
!1955 = !DILocation(line: 246, column: 35, scope: !1953, inlinedAt: !1950)
!1956 = distinct !{!1956, !1954, !1957, !1185}
!1957 = !DILocation(line: 253, column: 5, scope: !1948, inlinedAt: !1950)
!1958 = !DILocation(line: 255, column: 7, scope: !1959, inlinedAt: !1950)
!1959 = distinct !DILexicalBlock(scope: !1939, file: !410, line: 255, column: 7)
!1960 = !DILocation(line: 255, column: 22, scope: !1959, inlinedAt: !1950)
!1961 = !DILocation(line: 248, column: 11, scope: !1962, inlinedAt: !1950)
!1962 = distinct !DILexicalBlock(scope: !1963, file: !410, line: 248, column: 11)
!1963 = distinct !DILexicalBlock(scope: !1953, file: !410, line: 247, column: 5)
!1964 = !DILocation(line: 248, column: 19, scope: !1962, inlinedAt: !1950)
!1965 = !DILocation(line: 248, column: 11, scope: !1963, inlinedAt: !1950)
!1966 = !DILocation(line: 249, column: 9, scope: !1962, inlinedAt: !1950)
!1967 = !DILocation(line: 250, column: 19, scope: !1968, inlinedAt: !1950)
!1968 = distinct !DILexicalBlock(scope: !1963, file: !410, line: 250, column: 11)
!1969 = !DILocation(line: 250, column: 11, scope: !1963, inlinedAt: !1950)
!1970 = !DILocation(line: 251, column: 9, scope: !1968, inlinedAt: !1950)
!1971 = !DILocation(line: 256, column: 5, scope: !1959, inlinedAt: !1950)
!1972 = !DILocation(line: 272, column: 22, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1935, file: !410, line: 272, column: 7)
!1974 = !DILocation(line: 272, column: 7, scope: !1935)
!1975 = !DILocation(line: 273, column: 35, scope: !1973)
!1976 = !DILocation(line: 273, column: 33, scope: !1973)
!1977 = !DILocation(line: 273, column: 5, scope: !1973)
!1978 = !DILocation(line: 276, column: 27, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1973, file: !410, line: 276, column: 12)
!1980 = !DILocation(line: 276, column: 32, scope: !1979)
!1981 = !DILocation(line: 277, column: 16, scope: !1979)
!1982 = !DILocation(line: 277, column: 5, scope: !1979)
!1983 = !DILocation(line: 0, scope: !1973)
!1984 = !DILocation(line: 280, column: 1, scope: !1935)
!1985 = distinct !DISubprogram(name: "get_next_tab_column", scope: !410, file: !410, line: 288, type: !1986, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !1990)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!374, !374, !1988, !1989}
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!1990 = !{!1991, !1992, !1993, !1994, !1995, !2001, !2005}
!1991 = !DILocalVariable(name: "column", arg: 1, scope: !1985, file: !410, line: 288, type: !374)
!1992 = !DILocalVariable(name: "tab_index", arg: 2, scope: !1985, file: !410, line: 288, type: !1988)
!1993 = !DILocalVariable(name: "last_tab", arg: 3, scope: !1985, file: !410, line: 288, type: !1989)
!1994 = !DILocalVariable(name: "tab_distance", scope: !1985, file: !410, line: 291, type: !374)
!1995 = !DILocalVariable(name: "tab", scope: !1996, file: !410, line: 302, type: !374)
!1996 = distinct !DILexicalBlock(scope: !1997, file: !410, line: 301, column: 9)
!1997 = distinct !DILexicalBlock(scope: !1998, file: !410, line: 300, column: 7)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !410, line: 300, column: 7)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !410, line: 297, column: 5)
!2000 = distinct !DILexicalBlock(scope: !1985, file: !410, line: 294, column: 7)
!2001 = !DILocalVariable(name: "end_tab", scope: !2002, file: !410, line: 314, type: !374)
!2002 = distinct !DILexicalBlock(scope: !2003, file: !410, line: 311, column: 9)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !410, line: 310, column: 16)
!2004 = distinct !DILexicalBlock(scope: !1999, file: !410, line: 308, column: 11)
!2005 = !DILocalVariable(name: "tab_stop", scope: !1985, file: !410, line: 324, type: !374)
!2006 = !DILocation(line: 0, scope: !1985)
!2007 = !DILocation(line: 290, column: 13, scope: !1985)
!2008 = !DILocation(line: 294, column: 7, scope: !2000)
!2009 = !DILocation(line: 294, column: 7, scope: !1985)
!2010 = !DILocation(line: 300, column: 26, scope: !1997)
!2011 = !DILocation(line: 300, column: 7, scope: !1998)
!2012 = !DILocation(line: 295, column: 38, scope: !2000)
!2013 = !DILocation(line: 295, column: 29, scope: !2000)
!2014 = !DILocation(line: 295, column: 5, scope: !2000)
!2015 = !DILocation(line: 302, column: 23, scope: !1996)
!2016 = !DILocation(line: 0, scope: !1996)
!2017 = !DILocation(line: 303, column: 22, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !1996, file: !410, line: 303, column: 15)
!2019 = !DILocation(line: 300, column: 57, scope: !1997)
!2020 = distinct !{!2020, !2011, !2021, !1185}
!2021 = !DILocation(line: 305, column: 9, scope: !1998)
!2022 = !DILocation(line: 308, column: 11, scope: !2004)
!2023 = !DILocation(line: 308, column: 11, scope: !1999)
!2024 = !DILocation(line: 309, column: 45, scope: !2004)
!2025 = !DILocation(line: 309, column: 36, scope: !2004)
!2026 = !DILocation(line: 309, column: 9, scope: !2004)
!2027 = !DILocation(line: 310, column: 16, scope: !2003)
!2028 = !DILocation(line: 310, column: 16, scope: !2004)
!2029 = !DILocation(line: 314, column: 27, scope: !2002)
!2030 = !DILocation(line: 0, scope: !2002)
!2031 = !DILocation(line: 315, column: 52, scope: !2002)
!2032 = !DILocation(line: 315, column: 63, scope: !2002)
!2033 = !DILocation(line: 315, column: 41, scope: !2002)
!2034 = !DILocation(line: 316, column: 9, scope: !2002)
!2035 = !DILocation(line: 319, column: 21, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2003, file: !410, line: 318, column: 9)
!2037 = !DILocation(line: 0, scope: !2000)
!2038 = !DILocation(line: 325, column: 7, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !1985, file: !410, line: 325, column: 7)
!2040 = !DILocation(line: 325, column: 7, scope: !1985)
!2041 = !DILocation(line: 326, column: 5, scope: !2039)
!2042 = !DILocation(line: 328, column: 1, scope: !1985)
!2043 = distinct !DISubprogram(name: "set_file_list", scope: !410, file: !410, line: 333, type: !2044, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !2046)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{null, !567}
!2046 = !{!2047}
!2047 = !DILocalVariable(name: "list", arg: 1, scope: !2043, file: !410, line: 333, type: !567)
!2048 = !DILocation(line: 0, scope: !2043)
!2049 = !DILocation(line: 335, column: 19, scope: !2043)
!2050 = !DILocation(line: 337, column: 8, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2043, file: !410, line: 337, column: 7)
!2052 = !DILocation(line: 0, scope: !2051)
!2053 = !DILocation(line: 341, column: 1, scope: !2043)
!2054 = !DILocation(line: 0, scope: !465)
!2055 = !DILocation(line: 354, column: 7, scope: !507)
!2056 = !DILocation(line: 354, column: 7, scope: !465)
!2057 = !DILocation(line: 356, column: 17, scope: !506)
!2058 = !DILocation(line: 0, scope: !506)
!2059 = !DILocalVariable(name: "__stream", arg: 1, scope: !2060, file: !1384, line: 135, type: !468)
!2060 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1384, file: !1384, line: 135, type: !2061, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !2063)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!63, !468}
!2063 = !{!2059}
!2064 = !DILocation(line: 0, scope: !2060, inlinedAt: !2065)
!2065 = distinct !DILocation(line: 357, column: 12, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !506, file: !410, line: 357, column: 11)
!2067 = !DILocation(line: 137, column: 10, scope: !2060, inlinedAt: !2065)
!2068 = !DILocation(line: 357, column: 12, scope: !2066)
!2069 = !DILocation(line: 357, column: 11, scope: !506)
!2070 = !DILocation(line: 359, column: 18, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !506, file: !410, line: 359, column: 11)
!2072 = !DILocalVariable(name: "__s1", arg: 1, scope: !2073, file: !1151, line: 1359, type: !100)
!2073 = distinct !DISubprogram(name: "streq", scope: !1151, file: !1151, line: 1359, type: !1152, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !2074)
!2074 = !{!2072, !2075}
!2075 = !DILocalVariable(name: "__s2", arg: 2, scope: !2073, file: !1151, line: 1359, type: !100)
!2076 = !DILocation(line: 0, scope: !2073, inlinedAt: !2077)
!2077 = distinct !DILocation(line: 359, column: 11, scope: !2071)
!2078 = !DILocation(line: 1361, column: 11, scope: !2073, inlinedAt: !2077)
!2079 = !DILocation(line: 1361, column: 10, scope: !2073, inlinedAt: !2077)
!2080 = !DILocation(line: 359, column: 11, scope: !506)
!2081 = !DILocation(line: 360, column: 9, scope: !2071)
!2082 = !DILocation(line: 361, column: 16, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2071, file: !410, line: 361, column: 16)
!2084 = !DILocation(line: 361, column: 28, scope: !2083)
!2085 = !DILocation(line: 361, column: 16, scope: !2071)
!2086 = !DILocation(line: 362, column: 15, scope: !2083)
!2087 = !DILocation(line: 362, column: 9, scope: !2083)
!2088 = !DILocation(line: 363, column: 11, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !506, file: !410, line: 363, column: 11)
!2090 = !DILocation(line: 363, column: 11, scope: !506)
!2091 = !DILocation(line: 365, column: 11, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2089, file: !410, line: 364, column: 9)
!2093 = !DILocation(line: 366, column: 23, scope: !2092)
!2094 = !DILocation(line: 367, column: 9, scope: !2092)
!2095 = !DILocation(line: 370, column: 28, scope: !465)
!2096 = !DILocation(line: 370, column: 18, scope: !465)
!2097 = !DILocation(line: 370, column: 32, scope: !465)
!2098 = !DILocation(line: 370, column: 3, scope: !465)
!2099 = !DILocation(line: 0, scope: !2073, inlinedAt: !2100)
!2100 = distinct !DILocation(line: 372, column: 11, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !410, line: 372, column: 11)
!2102 = distinct !DILexicalBlock(scope: !465, file: !410, line: 371, column: 5)
!2103 = !DILocation(line: 1361, column: 11, scope: !2073, inlinedAt: !2100)
!2104 = !DILocation(line: 1361, column: 10, scope: !2073, inlinedAt: !2100)
!2105 = !DILocation(line: 372, column: 11, scope: !2102)
!2106 = !DILocation(line: 374, column: 27, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2101, file: !410, line: 373, column: 9)
!2108 = !DILocation(line: 375, column: 16, scope: !2107)
!2109 = !DILocation(line: 376, column: 9, scope: !2107)
!2110 = !DILocation(line: 378, column: 14, scope: !2101)
!2111 = !DILocation(line: 0, scope: !2101)
!2112 = !DILocation(line: 379, column: 11, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2102, file: !410, line: 379, column: 11)
!2114 = !DILocation(line: 379, column: 11, scope: !2102)
!2115 = !DILocation(line: 381, column: 21, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2113, file: !410, line: 380, column: 9)
!2117 = !DILocation(line: 382, column: 11, scope: !2116)
!2118 = !DILocation(line: 383, column: 11, scope: !2116)
!2119 = !DILocation(line: 385, column: 7, scope: !2102)
!2120 = !DILocation(line: 386, column: 19, scope: !2102)
!2121 = distinct !{!2121, !2098, !2122, !1185}
!2122 = !DILocation(line: 387, column: 5, scope: !465)
!2123 = !DILocation(line: 389, column: 1, scope: !465)
!2124 = distinct !DISubprogram(name: "cleanup_file_list_stdin", scope: !410, file: !410, line: 393, type: !342, scopeLine: 394, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409)
!2125 = !DILocation(line: 395, column: 9, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2124, file: !410, line: 395, column: 9)
!2127 = !DILocation(line: 395, column: 25, scope: !2126)
!2128 = !DILocation(line: 395, column: 36, scope: !2126)
!2129 = !DILocation(line: 395, column: 28, scope: !2126)
!2130 = !DILocation(line: 395, column: 43, scope: !2126)
!2131 = !DILocation(line: 395, column: 9, scope: !2124)
!2132 = !DILocation(line: 396, column: 7, scope: !2126)
!2133 = !DILocation(line: 397, column: 1, scope: !2124)
!2134 = distinct !DISubprogram(name: "emit_tab_list_info", scope: !410, file: !410, line: 402, type: !1089, scopeLine: 403, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !409, retainedNodes: !2135)
!2135 = !{!2136}
!2136 = !DILocalVariable(name: "program", arg: 1, scope: !2134, file: !410, line: 402, type: !100)
!2137 = !DILocation(line: 0, scope: !2134)
!2138 = !DILocation(line: 405, column: 20, scope: !2134)
!2139 = !DILocation(line: 0, scope: !570, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 405, column: 3, scope: !2134)
!2141 = !DILocation(line: 581, column: 7, scope: !577, inlinedAt: !2140)
!2142 = !DILocation(line: 581, column: 19, scope: !577, inlinedAt: !2140)
!2143 = !DILocation(line: 581, column: 7, scope: !570, inlinedAt: !2140)
!2144 = !DILocation(line: 585, column: 26, scope: !576, inlinedAt: !2140)
!2145 = !DILocation(line: 0, scope: !576, inlinedAt: !2140)
!2146 = !DILocation(line: 586, column: 23, scope: !576, inlinedAt: !2140)
!2147 = !DILocation(line: 586, column: 28, scope: !576, inlinedAt: !2140)
!2148 = !DILocation(line: 586, column: 32, scope: !576, inlinedAt: !2140)
!2149 = !DILocation(line: 586, column: 38, scope: !576, inlinedAt: !2140)
!2150 = !DILocation(line: 0, scope: !2073, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 586, column: 41, scope: !576, inlinedAt: !2140)
!2152 = !DILocation(line: 1361, column: 11, scope: !2073, inlinedAt: !2151)
!2153 = !DILocation(line: 1361, column: 10, scope: !2073, inlinedAt: !2151)
!2154 = !DILocation(line: 586, column: 19, scope: !576, inlinedAt: !2140)
!2155 = !DILocation(line: 587, column: 5, scope: !576, inlinedAt: !2140)
!2156 = !DILocation(line: 588, column: 7, scope: !2157, inlinedAt: !2140)
!2157 = distinct !DILexicalBlock(scope: !570, file: !62, line: 588, column: 7)
!2158 = !DILocation(line: 588, column: 7, scope: !570, inlinedAt: !2140)
!2159 = !DILocation(line: 590, column: 7, scope: !2160, inlinedAt: !2140)
!2160 = distinct !DILexicalBlock(scope: !2157, file: !62, line: 589, column: 5)
!2161 = !DILocation(line: 591, column: 7, scope: !2160, inlinedAt: !2140)
!2162 = !DILocation(line: 595, column: 37, scope: !570, inlinedAt: !2140)
!2163 = !DILocation(line: 595, column: 35, scope: !570, inlinedAt: !2140)
!2164 = !DILocation(line: 596, column: 29, scope: !570, inlinedAt: !2140)
!2165 = !DILocation(line: 597, column: 8, scope: !584, inlinedAt: !2140)
!2166 = !DILocation(line: 597, column: 7, scope: !570, inlinedAt: !2140)
!2167 = !DILocation(line: 604, column: 24, scope: !583, inlinedAt: !2140)
!2168 = !DILocation(line: 604, column: 12, scope: !584, inlinedAt: !2140)
!2169 = !DILocation(line: 0, scope: !582, inlinedAt: !2140)
!2170 = !DILocation(line: 610, column: 16, scope: !582, inlinedAt: !2140)
!2171 = !DILocation(line: 610, column: 7, scope: !582, inlinedAt: !2140)
!2172 = !DILocation(line: 611, column: 21, scope: !582, inlinedAt: !2140)
!2173 = !DILocation(line: 611, column: 19, scope: !582, inlinedAt: !2140)
!2174 = !DILocation(line: 611, column: 16, scope: !582, inlinedAt: !2140)
!2175 = !DILocation(line: 610, column: 30, scope: !582, inlinedAt: !2140)
!2176 = distinct !{!2176, !2171, !2172, !1185}
!2177 = !DILocation(line: 612, column: 18, scope: !2178, inlinedAt: !2140)
!2178 = distinct !DILexicalBlock(scope: !582, file: !62, line: 612, column: 11)
!2179 = !DILocation(line: 612, column: 11, scope: !582, inlinedAt: !2140)
!2180 = !DILocation(line: 618, column: 5, scope: !582, inlinedAt: !2140)
!2181 = !DILocation(line: 620, column: 23, scope: !570, inlinedAt: !2140)
!2182 = !DILocation(line: 625, column: 39, scope: !570, inlinedAt: !2140)
!2183 = !DILocation(line: 626, column: 3, scope: !570, inlinedAt: !2140)
!2184 = !DILocation(line: 626, column: 10, scope: !570, inlinedAt: !2140)
!2185 = !DILocation(line: 626, column: 21, scope: !570, inlinedAt: !2140)
!2186 = !DILocation(line: 628, column: 44, scope: !2187, inlinedAt: !2140)
!2187 = distinct !DILexicalBlock(scope: !2188, file: !62, line: 628, column: 11)
!2188 = distinct !DILexicalBlock(scope: !570, file: !62, line: 627, column: 5)
!2189 = !DILocation(line: 628, column: 32, scope: !2187, inlinedAt: !2140)
!2190 = !DILocation(line: 628, column: 49, scope: !2187, inlinedAt: !2140)
!2191 = !DILocation(line: 628, column: 11, scope: !2188, inlinedAt: !2140)
!2192 = !DILocation(line: 630, column: 11, scope: !2193, inlinedAt: !2140)
!2193 = distinct !DILexicalBlock(scope: !2188, file: !62, line: 630, column: 11)
!2194 = !DILocation(line: 630, column: 11, scope: !2188, inlinedAt: !2140)
!2195 = !DILocation(line: 632, column: 26, scope: !2196, inlinedAt: !2140)
!2196 = distinct !DILexicalBlock(scope: !2197, file: !62, line: 632, column: 15)
!2197 = distinct !DILexicalBlock(scope: !2193, file: !62, line: 631, column: 9)
!2198 = !DILocation(line: 632, column: 34, scope: !2196, inlinedAt: !2140)
!2199 = !DILocation(line: 632, column: 37, scope: !2196, inlinedAt: !2140)
!2200 = !DILocation(line: 632, column: 15, scope: !2197, inlinedAt: !2140)
!2201 = !DILocation(line: 640, column: 16, scope: !2188, inlinedAt: !2140)
!2202 = distinct !{!2202, !2183, !2203, !1185}
!2203 = !DILocation(line: 641, column: 5, scope: !570, inlinedAt: !2140)
!2204 = !DILocation(line: 644, column: 3, scope: !570, inlinedAt: !2140)
!2205 = !DILocation(line: 0, scope: !2073, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 648, column: 31, scope: !570, inlinedAt: !2140)
!2207 = !DILocation(line: 1361, column: 11, scope: !2073, inlinedAt: !2206)
!2208 = !DILocation(line: 1361, column: 10, scope: !2073, inlinedAt: !2206)
!2209 = !DILocation(line: 648, column: 31, scope: !570, inlinedAt: !2140)
!2210 = !DILocation(line: 0, scope: !2073, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 649, column: 31, scope: !570, inlinedAt: !2140)
!2212 = !DILocation(line: 1361, column: 11, scope: !2073, inlinedAt: !2211)
!2213 = !DILocation(line: 1361, column: 10, scope: !2073, inlinedAt: !2211)
!2214 = !DILocation(line: 649, column: 31, scope: !570, inlinedAt: !2140)
!2215 = !DILocation(line: 0, scope: !2073, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 650, column: 31, scope: !570, inlinedAt: !2140)
!2217 = !DILocation(line: 1361, column: 11, scope: !2073, inlinedAt: !2216)
!2218 = !DILocation(line: 1361, column: 10, scope: !2073, inlinedAt: !2216)
!2219 = !DILocation(line: 650, column: 31, scope: !570, inlinedAt: !2140)
!2220 = !DILocation(line: 0, scope: !2073, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 651, column: 31, scope: !570, inlinedAt: !2140)
!2222 = !DILocation(line: 1361, column: 11, scope: !2073, inlinedAt: !2221)
!2223 = !DILocation(line: 1361, column: 10, scope: !2073, inlinedAt: !2221)
!2224 = !DILocation(line: 651, column: 31, scope: !570, inlinedAt: !2140)
!2225 = !DILocation(line: 0, scope: !2073, inlinedAt: !2226)
!2226 = distinct !DILocation(line: 652, column: 31, scope: !570, inlinedAt: !2140)
!2227 = !DILocation(line: 1361, column: 11, scope: !2073, inlinedAt: !2226)
!2228 = !DILocation(line: 1361, column: 10, scope: !2073, inlinedAt: !2226)
!2229 = !DILocation(line: 652, column: 31, scope: !570, inlinedAt: !2140)
!2230 = !DILocation(line: 0, scope: !2073, inlinedAt: !2231)
!2231 = distinct !DILocation(line: 653, column: 31, scope: !570, inlinedAt: !2140)
!2232 = !DILocation(line: 1361, column: 11, scope: !2073, inlinedAt: !2231)
!2233 = !DILocation(line: 1361, column: 10, scope: !2073, inlinedAt: !2231)
!2234 = !DILocation(line: 653, column: 31, scope: !570, inlinedAt: !2140)
!2235 = !DILocation(line: 0, scope: !2073, inlinedAt: !2236)
!2236 = distinct !DILocation(line: 654, column: 31, scope: !570, inlinedAt: !2140)
!2237 = !DILocation(line: 1361, column: 11, scope: !2073, inlinedAt: !2236)
!2238 = !DILocation(line: 1361, column: 10, scope: !2073, inlinedAt: !2236)
!2239 = !DILocation(line: 654, column: 31, scope: !570, inlinedAt: !2140)
!2240 = !DILocation(line: 0, scope: !2073, inlinedAt: !2241)
!2241 = distinct !DILocation(line: 655, column: 31, scope: !570, inlinedAt: !2140)
!2242 = !DILocation(line: 1361, column: 11, scope: !2073, inlinedAt: !2241)
!2243 = !DILocation(line: 1361, column: 10, scope: !2073, inlinedAt: !2241)
!2244 = !DILocation(line: 655, column: 31, scope: !570, inlinedAt: !2140)
!2245 = !DILocation(line: 0, scope: !2073, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 656, column: 31, scope: !570, inlinedAt: !2140)
!2247 = !DILocation(line: 1361, column: 11, scope: !2073, inlinedAt: !2246)
!2248 = !DILocation(line: 1361, column: 10, scope: !2073, inlinedAt: !2246)
!2249 = !DILocation(line: 656, column: 31, scope: !570, inlinedAt: !2140)
!2250 = !DILocation(line: 0, scope: !2073, inlinedAt: !2251)
!2251 = distinct !DILocation(line: 657, column: 31, scope: !570, inlinedAt: !2140)
!2252 = !DILocation(line: 1361, column: 11, scope: !2073, inlinedAt: !2251)
!2253 = !DILocation(line: 1361, column: 10, scope: !2073, inlinedAt: !2251)
!2254 = !DILocation(line: 657, column: 31, scope: !570, inlinedAt: !2140)
!2255 = !DILocation(line: 663, column: 7, scope: !2256, inlinedAt: !2140)
!2256 = distinct !DILexicalBlock(scope: !570, file: !62, line: 663, column: 7)
!2257 = !DILocation(line: 664, column: 7, scope: !2256, inlinedAt: !2140)
!2258 = !DILocation(line: 664, column: 10, scope: !2256, inlinedAt: !2140)
!2259 = !DILocation(line: 663, column: 7, scope: !570, inlinedAt: !2140)
!2260 = !DILocation(line: 669, column: 7, scope: !2261, inlinedAt: !2140)
!2261 = distinct !DILexicalBlock(scope: !2256, file: !62, line: 665, column: 5)
!2262 = !DILocation(line: 671, column: 5, scope: !2261, inlinedAt: !2140)
!2263 = !DILocation(line: 676, column: 7, scope: !2264, inlinedAt: !2140)
!2264 = distinct !DILexicalBlock(scope: !2256, file: !62, line: 673, column: 5)
!2265 = !DILocation(line: 679, column: 3, scope: !570, inlinedAt: !2140)
!2266 = !DILocation(line: 683, column: 3, scope: !570, inlinedAt: !2140)
!2267 = !DILocation(line: 686, column: 3, scope: !570, inlinedAt: !2140)
!2268 = !DILocation(line: 688, column: 3, scope: !570, inlinedAt: !2140)
!2269 = !DILocation(line: 691, column: 3, scope: !570, inlinedAt: !2140)
!2270 = !DILocation(line: 695, column: 3, scope: !570, inlinedAt: !2140)
!2271 = !DILocation(line: 696, column: 1, scope: !570, inlinedAt: !2140)
!2272 = !DILocation(line: 409, column: 3, scope: !2134)
!2273 = !DILocation(line: 416, column: 1, scope: !2134)
!2274 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !662, file: !662, line: 50, type: !1089, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !2275)
!2275 = !{!2276}
!2276 = !DILocalVariable(name: "file", arg: 1, scope: !2274, file: !662, line: 50, type: !100)
!2277 = !DILocation(line: 0, scope: !2274)
!2278 = !DILocation(line: 52, column: 13, scope: !2274)
!2279 = !DILocation(line: 53, column: 1, scope: !2274)
!2280 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !662, file: !662, line: 87, type: !2281, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !2283)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{null, !136}
!2283 = !{!2284}
!2284 = !DILocalVariable(name: "ignore", arg: 1, scope: !2280, file: !662, line: 87, type: !136)
!2285 = !DILocation(line: 0, scope: !2280)
!2286 = !DILocation(line: 89, column: 16, scope: !2280)
!2287 = !DILocation(line: 90, column: 1, scope: !2280)
!2288 = distinct !DISubprogram(name: "close_stdout", scope: !662, file: !662, line: 116, type: !342, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !661, retainedNodes: !2289)
!2289 = !{!2290}
!2290 = !DILocalVariable(name: "write_error", scope: !2291, file: !662, line: 121, type: !100)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !662, line: 120, column: 5)
!2292 = distinct !DILexicalBlock(scope: !2288, file: !662, line: 118, column: 7)
!2293 = !DILocation(line: 118, column: 21, scope: !2292)
!2294 = !DILocation(line: 118, column: 7, scope: !2292)
!2295 = !DILocation(line: 118, column: 29, scope: !2292)
!2296 = !DILocation(line: 119, column: 7, scope: !2292)
!2297 = !DILocation(line: 119, column: 12, scope: !2292)
!2298 = !DILocation(line: 119, column: 25, scope: !2292)
!2299 = !DILocation(line: 119, column: 28, scope: !2292)
!2300 = !DILocation(line: 119, column: 34, scope: !2292)
!2301 = !DILocation(line: 118, column: 7, scope: !2288)
!2302 = !DILocation(line: 121, column: 33, scope: !2291)
!2303 = !DILocation(line: 0, scope: !2291)
!2304 = !DILocation(line: 122, column: 11, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2291, file: !662, line: 122, column: 11)
!2306 = !DILocation(line: 0, scope: !2305)
!2307 = !DILocation(line: 122, column: 11, scope: !2291)
!2308 = !DILocation(line: 123, column: 9, scope: !2305)
!2309 = !DILocation(line: 126, column: 9, scope: !2305)
!2310 = !DILocation(line: 128, column: 14, scope: !2291)
!2311 = !DILocation(line: 128, column: 7, scope: !2291)
!2312 = !DILocation(line: 133, column: 42, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2288, file: !662, line: 133, column: 7)
!2314 = !DILocation(line: 133, column: 28, scope: !2313)
!2315 = !DILocation(line: 133, column: 50, scope: !2313)
!2316 = !DILocation(line: 133, column: 7, scope: !2288)
!2317 = !DILocation(line: 134, column: 12, scope: !2313)
!2318 = !DILocation(line: 134, column: 5, scope: !2313)
!2319 = !DILocation(line: 135, column: 1, scope: !2288)
!2320 = !DISubprogram(name: "_exit", scope: !2321, file: !2321, line: 624, type: !1059, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2321 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!2322 = distinct !DISubprogram(name: "verror", scope: !677, file: !677, line: 251, type: !2323, scopeLine: 253, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2325)
!2323 = !DISubroutineType(types: !2324)
!2324 = !{null, !63, !63, !100, !687}
!2325 = !{!2326, !2327, !2328, !2329}
!2326 = !DILocalVariable(name: "status", arg: 1, scope: !2322, file: !677, line: 251, type: !63)
!2327 = !DILocalVariable(name: "errnum", arg: 2, scope: !2322, file: !677, line: 251, type: !63)
!2328 = !DILocalVariable(name: "message", arg: 3, scope: !2322, file: !677, line: 251, type: !100)
!2329 = !DILocalVariable(name: "args", arg: 4, scope: !2322, file: !677, line: 251, type: !687)
!2330 = !DILocation(line: 0, scope: !2322)
!2331 = !DILocation(line: 261, column: 3, scope: !2322)
!2332 = !DILocation(line: 265, column: 7, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2322, file: !677, line: 265, column: 7)
!2334 = !DILocation(line: 265, column: 7, scope: !2322)
!2335 = !DILocation(line: 266, column: 5, scope: !2333)
!2336 = !DILocation(line: 272, column: 7, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2333, file: !677, line: 268, column: 5)
!2338 = !DILocation(line: 276, column: 3, scope: !2322)
!2339 = !{i64 0, i64 8, !1069, i64 8, i64 8, !1069, i64 16, i64 8, !1069, i64 24, i64 4, !1138, i64 28, i64 4, !1138}
!2340 = !DILocation(line: 282, column: 1, scope: !2322)
!2341 = distinct !DISubprogram(name: "flush_stdout", scope: !677, file: !677, line: 163, type: !342, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2342)
!2342 = !{!2343}
!2343 = !DILocalVariable(name: "stdout_fd", scope: !2341, file: !677, line: 166, type: !63)
!2344 = !DILocation(line: 0, scope: !2341)
!2345 = !DILocalVariable(name: "fd", arg: 1, scope: !2346, file: !677, line: 145, type: !63)
!2346 = distinct !DISubprogram(name: "is_open", scope: !677, file: !677, line: 145, type: !1547, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2347)
!2347 = !{!2345}
!2348 = !DILocation(line: 0, scope: !2346, inlinedAt: !2349)
!2349 = distinct !DILocation(line: 182, column: 25, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2341, file: !677, line: 182, column: 7)
!2351 = !DILocation(line: 157, column: 15, scope: !2346, inlinedAt: !2349)
!2352 = !DILocation(line: 157, column: 12, scope: !2346, inlinedAt: !2349)
!2353 = !DILocation(line: 182, column: 7, scope: !2341)
!2354 = !DILocation(line: 184, column: 5, scope: !2350)
!2355 = !DILocation(line: 185, column: 1, scope: !2341)
!2356 = distinct !DISubprogram(name: "error_tail", scope: !677, file: !677, line: 219, type: !2323, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2357)
!2357 = !{!2358, !2359, !2360, !2361}
!2358 = !DILocalVariable(name: "status", arg: 1, scope: !2356, file: !677, line: 219, type: !63)
!2359 = !DILocalVariable(name: "errnum", arg: 2, scope: !2356, file: !677, line: 219, type: !63)
!2360 = !DILocalVariable(name: "message", arg: 3, scope: !2356, file: !677, line: 219, type: !100)
!2361 = !DILocalVariable(name: "args", arg: 4, scope: !2356, file: !677, line: 219, type: !687)
!2362 = distinct !DIAssignID()
!2363 = !DILocation(line: 0, scope: !2356)
!2364 = !DILocation(line: 229, column: 13, scope: !2356)
!2365 = !DILocation(line: 135, column: 10, scope: !2366, inlinedAt: !2408)
!2366 = distinct !DISubprogram(name: "vfprintf", scope: !1125, file: !1125, line: 132, type: !2367, scopeLine: 134, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2404)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!63, !2369, !1129, !689}
!2369 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2370)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2372)
!2372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2373)
!2373 = !{!2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387, !2389, !2390, !2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2402, !2403}
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2372, file: !153, line: 51, baseType: !63, size: 32)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2372, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2372, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2372, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2372, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2372, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2372, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2372, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2372, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2372, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2372, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2372, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2372, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2372, file: !153, line: 70, baseType: !2388, size: 64, offset: 832)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2372, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2372, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2372, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2372, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2372, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2372, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2372, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2372, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2372, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2372, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2372, file: !153, line: 93, baseType: !2388, size: 64, offset: 1344)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2372, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2372, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2372, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2372, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2404 = !{!2405, !2406, !2407}
!2405 = !DILocalVariable(name: "__stream", arg: 1, scope: !2366, file: !1125, line: 132, type: !2369)
!2406 = !DILocalVariable(name: "__fmt", arg: 2, scope: !2366, file: !1125, line: 133, type: !1129)
!2407 = !DILocalVariable(name: "__ap", arg: 3, scope: !2366, file: !1125, line: 133, type: !689)
!2408 = distinct !DILocation(line: 229, column: 3, scope: !2356)
!2409 = !{!2410, !2412}
!2410 = distinct !{!2410, !2411, !"vfprintf.inline: argument 0"}
!2411 = distinct !{!2411, !"vfprintf.inline"}
!2412 = distinct !{!2412, !2411, !"vfprintf.inline: argument 1"}
!2413 = !DILocation(line: 229, column: 3, scope: !2356)
!2414 = !DILocation(line: 0, scope: !2366, inlinedAt: !2408)
!2415 = !DILocation(line: 232, column: 3, scope: !2356)
!2416 = !DILocation(line: 233, column: 7, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2356, file: !677, line: 233, column: 7)
!2418 = !DILocation(line: 233, column: 7, scope: !2356)
!2419 = !DILocalVariable(name: "errbuf", scope: !2420, file: !677, line: 193, type: !2424)
!2420 = distinct !DISubprogram(name: "print_errno_message", scope: !677, file: !677, line: 188, type: !1059, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2421)
!2421 = !{!2422, !2423, !2419}
!2422 = !DILocalVariable(name: "errnum", arg: 1, scope: !2420, file: !677, line: 188, type: !63)
!2423 = !DILocalVariable(name: "s", scope: !2420, file: !677, line: 190, type: !100)
!2424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !2425)
!2425 = !{!2426}
!2426 = !DISubrange(count: 1024)
!2427 = !DILocation(line: 0, scope: !2420, inlinedAt: !2428)
!2428 = distinct !DILocation(line: 234, column: 5, scope: !2417)
!2429 = !DILocation(line: 193, column: 3, scope: !2420, inlinedAt: !2428)
!2430 = !DILocation(line: 195, column: 7, scope: !2420, inlinedAt: !2428)
!2431 = !DILocation(line: 207, column: 9, scope: !2432, inlinedAt: !2428)
!2432 = distinct !DILexicalBlock(scope: !2420, file: !677, line: 207, column: 7)
!2433 = !DILocation(line: 207, column: 7, scope: !2420, inlinedAt: !2428)
!2434 = !DILocation(line: 208, column: 9, scope: !2432, inlinedAt: !2428)
!2435 = !DILocation(line: 208, column: 5, scope: !2432, inlinedAt: !2428)
!2436 = !DILocation(line: 214, column: 3, scope: !2420, inlinedAt: !2428)
!2437 = !DILocation(line: 216, column: 1, scope: !2420, inlinedAt: !2428)
!2438 = !DILocation(line: 234, column: 5, scope: !2417)
!2439 = !DILocation(line: 238, column: 3, scope: !2356)
!2440 = !DILocalVariable(name: "__c", arg: 1, scope: !2441, file: !1384, line: 101, type: !63)
!2441 = distinct !DISubprogram(name: "putc_unlocked", scope: !1384, file: !1384, line: 101, type: !2442, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2444)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!63, !63, !2370}
!2444 = !{!2440, !2445}
!2445 = !DILocalVariable(name: "__stream", arg: 2, scope: !2441, file: !1384, line: 101, type: !2370)
!2446 = !DILocation(line: 0, scope: !2441, inlinedAt: !2447)
!2447 = distinct !DILocation(line: 238, column: 3, scope: !2356)
!2448 = !DILocation(line: 103, column: 10, scope: !2441, inlinedAt: !2447)
!2449 = !DILocation(line: 240, column: 3, scope: !2356)
!2450 = !DILocation(line: 241, column: 7, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2356, file: !677, line: 241, column: 7)
!2452 = !DILocation(line: 241, column: 7, scope: !2356)
!2453 = !DILocation(line: 242, column: 5, scope: !2451)
!2454 = !DILocation(line: 243, column: 1, scope: !2356)
!2455 = !DISubprogram(name: "__vfprintf_chk", scope: !1125, file: !1125, line: 96, type: !2456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2456 = !DISubroutineType(types: !2457)
!2457 = !{!63, !2369, !63, !1129, !689}
!2458 = !DISubprogram(name: "strerror_r", scope: !1255, file: !1255, line: 444, type: !2459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!94, !63, !94, !97}
!2461 = !DISubprogram(name: "fcntl", scope: !2462, file: !2462, line: 149, type: !2463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2462 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!63, !63, !63, null}
!2465 = distinct !DISubprogram(name: "error", scope: !677, file: !677, line: 285, type: !2466, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2468)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{null, !63, !63, !100, null}
!2468 = !{!2469, !2470, !2471, !2472}
!2469 = !DILocalVariable(name: "status", arg: 1, scope: !2465, file: !677, line: 285, type: !63)
!2470 = !DILocalVariable(name: "errnum", arg: 2, scope: !2465, file: !677, line: 285, type: !63)
!2471 = !DILocalVariable(name: "message", arg: 3, scope: !2465, file: !677, line: 285, type: !100)
!2472 = !DILocalVariable(name: "ap", scope: !2465, file: !677, line: 287, type: !687)
!2473 = distinct !DIAssignID()
!2474 = !DILocation(line: 0, scope: !2465)
!2475 = !DILocation(line: 287, column: 3, scope: !2465)
!2476 = !DILocation(line: 288, column: 3, scope: !2465)
!2477 = !DILocation(line: 289, column: 3, scope: !2465)
!2478 = !DILocation(line: 290, column: 3, scope: !2465)
!2479 = !DILocation(line: 291, column: 1, scope: !2465)
!2480 = !DILocation(line: 0, scope: !684)
!2481 = !DILocation(line: 302, column: 7, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !684, file: !677, line: 302, column: 7)
!2483 = !DILocation(line: 302, column: 7, scope: !684)
!2484 = !DILocation(line: 307, column: 11, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !677, line: 307, column: 11)
!2486 = distinct !DILexicalBlock(scope: !2482, file: !677, line: 303, column: 5)
!2487 = !DILocation(line: 307, column: 27, scope: !2485)
!2488 = !DILocation(line: 308, column: 11, scope: !2485)
!2489 = !DILocation(line: 308, column: 28, scope: !2485)
!2490 = !DILocation(line: 308, column: 25, scope: !2485)
!2491 = !DILocation(line: 309, column: 15, scope: !2485)
!2492 = !DILocation(line: 309, column: 33, scope: !2485)
!2493 = !DILocation(line: 310, column: 19, scope: !2485)
!2494 = !DILocation(line: 311, column: 22, scope: !2485)
!2495 = !DILocation(line: 311, column: 56, scope: !2485)
!2496 = !DILocation(line: 307, column: 11, scope: !2486)
!2497 = !DILocation(line: 316, column: 21, scope: !2486)
!2498 = !DILocation(line: 317, column: 23, scope: !2486)
!2499 = !DILocation(line: 318, column: 5, scope: !2486)
!2500 = !DILocation(line: 327, column: 3, scope: !684)
!2501 = !DILocation(line: 331, column: 7, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !684, file: !677, line: 331, column: 7)
!2503 = !DILocation(line: 331, column: 7, scope: !684)
!2504 = !DILocation(line: 332, column: 5, scope: !2502)
!2505 = !DILocation(line: 338, column: 7, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2502, file: !677, line: 334, column: 5)
!2507 = !DILocation(line: 346, column: 3, scope: !684)
!2508 = !DILocation(line: 350, column: 3, scope: !684)
!2509 = !DILocation(line: 356, column: 1, scope: !684)
!2510 = distinct !DISubprogram(name: "error_at_line", scope: !677, file: !677, line: 359, type: !2511, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !676, retainedNodes: !2513)
!2511 = !DISubroutineType(types: !2512)
!2512 = !{null, !63, !63, !100, !69, !100, null}
!2513 = !{!2514, !2515, !2516, !2517, !2518, !2519}
!2514 = !DILocalVariable(name: "status", arg: 1, scope: !2510, file: !677, line: 359, type: !63)
!2515 = !DILocalVariable(name: "errnum", arg: 2, scope: !2510, file: !677, line: 359, type: !63)
!2516 = !DILocalVariable(name: "file_name", arg: 3, scope: !2510, file: !677, line: 359, type: !100)
!2517 = !DILocalVariable(name: "line_number", arg: 4, scope: !2510, file: !677, line: 360, type: !69)
!2518 = !DILocalVariable(name: "message", arg: 5, scope: !2510, file: !677, line: 360, type: !100)
!2519 = !DILocalVariable(name: "ap", scope: !2510, file: !677, line: 362, type: !687)
!2520 = distinct !DIAssignID()
!2521 = !DILocation(line: 0, scope: !2510)
!2522 = !DILocation(line: 362, column: 3, scope: !2510)
!2523 = !DILocation(line: 363, column: 3, scope: !2510)
!2524 = !DILocation(line: 364, column: 3, scope: !2510)
!2525 = !DILocation(line: 366, column: 3, scope: !2510)
!2526 = !DILocation(line: 367, column: 1, scope: !2510)
!2527 = distinct !DISubprogram(name: "fdadvise", scope: !981, file: !981, line: 25, type: !2528, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !2532)
!2528 = !DISubroutineType(types: !2529)
!2529 = !{null, !63, !2530, !2530, !2531}
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !688, line: 63, baseType: !175)
!2531 = !DIDerivedType(tag: DW_TAG_typedef, name: "fadvice_t", file: !984, line: 51, baseType: !983)
!2532 = !{!2533, !2534, !2535, !2536}
!2533 = !DILocalVariable(name: "fd", arg: 1, scope: !2527, file: !981, line: 25, type: !63)
!2534 = !DILocalVariable(name: "offset", arg: 2, scope: !2527, file: !981, line: 25, type: !2530)
!2535 = !DILocalVariable(name: "len", arg: 3, scope: !2527, file: !981, line: 25, type: !2530)
!2536 = !DILocalVariable(name: "advice", arg: 4, scope: !2527, file: !981, line: 25, type: !2531)
!2537 = !DILocation(line: 0, scope: !2527)
!2538 = !DILocation(line: 28, column: 3, scope: !2527)
!2539 = !DILocation(line: 30, column: 1, scope: !2527)
!2540 = !DISubprogram(name: "posix_fadvise", scope: !2462, file: !2462, line: 273, type: !2541, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2541 = !DISubroutineType(types: !2542)
!2542 = !{!63, !63, !2530, !2530, !63}
!2543 = distinct !DISubprogram(name: "fadvise", scope: !981, file: !981, line: 33, type: !2544, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !980, retainedNodes: !2580)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{null, !2546, !2531}
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2548)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2549)
!2549 = !{!2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2548, file: !153, line: 51, baseType: !63, size: 32)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2548, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2548, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2548, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2548, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2548, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2548, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2548, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2548, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2548, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2548, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2548, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2548, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2548, file: !153, line: 70, baseType: !2564, size: 64, offset: 832)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2548, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2548, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2548, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2548, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2548, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2548, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2548, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2548, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2548, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2548, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2548, file: !153, line: 93, baseType: !2564, size: 64, offset: 1344)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2548, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2548, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2548, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2548, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2580 = !{!2581, !2582}
!2581 = !DILocalVariable(name: "fp", arg: 1, scope: !2543, file: !981, line: 33, type: !2546)
!2582 = !DILocalVariable(name: "advice", arg: 2, scope: !2543, file: !981, line: 33, type: !2531)
!2583 = !DILocation(line: 0, scope: !2543)
!2584 = !DILocation(line: 35, column: 7, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2543, file: !981, line: 35, column: 7)
!2586 = !DILocation(line: 35, column: 7, scope: !2543)
!2587 = !DILocation(line: 36, column: 15, scope: !2585)
!2588 = !DILocation(line: 0, scope: !2527, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 36, column: 5, scope: !2585)
!2590 = !DILocation(line: 28, column: 3, scope: !2527, inlinedAt: !2589)
!2591 = !DILocation(line: 36, column: 5, scope: !2585)
!2592 = !DILocation(line: 37, column: 1, scope: !2543)
!2593 = !DISubprogram(name: "fileno", scope: !688, file: !688, line: 809, type: !2594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{!63, !2546}
!2596 = distinct !DISubprogram(name: "rpl_fclose", scope: !986, file: !986, line: 58, type: !2597, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !985, retainedNodes: !2633)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!63, !2599}
!2599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2600, size: 64)
!2600 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2601)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2602)
!2602 = !{!2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2601, file: !153, line: 51, baseType: !63, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2601, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2601, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2601, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2601, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2601, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2601, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2601, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2601, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2601, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2601, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2601, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2601, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2601, file: !153, line: 70, baseType: !2617, size: 64, offset: 832)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2601, size: 64)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2601, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2601, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2601, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2601, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2601, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2601, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2601, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2601, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2601, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2601, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2601, file: !153, line: 93, baseType: !2617, size: 64, offset: 1344)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2601, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2601, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2601, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2601, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2633 = !{!2634, !2635, !2636, !2637}
!2634 = !DILocalVariable(name: "fp", arg: 1, scope: !2596, file: !986, line: 58, type: !2599)
!2635 = !DILocalVariable(name: "saved_errno", scope: !2596, file: !986, line: 60, type: !63)
!2636 = !DILocalVariable(name: "fd", scope: !2596, file: !986, line: 63, type: !63)
!2637 = !DILocalVariable(name: "result", scope: !2596, file: !986, line: 74, type: !63)
!2638 = !DILocation(line: 0, scope: !2596)
!2639 = !DILocation(line: 63, column: 12, scope: !2596)
!2640 = !DILocation(line: 64, column: 10, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2596, file: !986, line: 64, column: 7)
!2642 = !DILocation(line: 64, column: 7, scope: !2596)
!2643 = !DILocation(line: 65, column: 12, scope: !2641)
!2644 = !DILocation(line: 65, column: 5, scope: !2641)
!2645 = !DILocation(line: 70, column: 9, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2596, file: !986, line: 70, column: 7)
!2647 = !DILocation(line: 70, column: 23, scope: !2646)
!2648 = !DILocation(line: 70, column: 33, scope: !2646)
!2649 = !DILocation(line: 70, column: 26, scope: !2646)
!2650 = !DILocation(line: 70, column: 59, scope: !2646)
!2651 = !DILocation(line: 71, column: 7, scope: !2646)
!2652 = !DILocation(line: 71, column: 10, scope: !2646)
!2653 = !DILocation(line: 70, column: 7, scope: !2596)
!2654 = !DILocation(line: 100, column: 12, scope: !2596)
!2655 = !DILocation(line: 105, column: 7, scope: !2596)
!2656 = !DILocation(line: 72, column: 19, scope: !2646)
!2657 = !DILocation(line: 105, column: 19, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2596, file: !986, line: 105, column: 7)
!2659 = !DILocation(line: 107, column: 13, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2658, file: !986, line: 106, column: 5)
!2661 = !DILocation(line: 109, column: 5, scope: !2660)
!2662 = !DILocation(line: 112, column: 1, scope: !2596)
!2663 = !DISubprogram(name: "fclose", scope: !688, file: !688, line: 178, type: !2597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2664 = !DISubprogram(name: "__freading", scope: !2665, file: !2665, line: 51, type: !2597, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2665 = !DIFile(filename: "/usr/include/stdio_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "6f83bee42e6b24c9954ad04d38e3bbd5")
!2666 = !DISubprogram(name: "lseek", scope: !2321, file: !2321, line: 339, type: !2667, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!175, !63, !175, !63}
!2669 = distinct !DISubprogram(name: "rpl_fflush", scope: !988, file: !988, line: 130, type: !2670, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !987, retainedNodes: !2706)
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!63, !2672}
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2674)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2675)
!2675 = !{!2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2674, file: !153, line: 51, baseType: !63, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2674, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2674, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2674, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2674, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2674, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2674, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2674, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2674, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2674, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2674, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2674, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2674, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2674, file: !153, line: 70, baseType: !2690, size: 64, offset: 832)
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2674, size: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2674, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2674, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2674, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2674, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2674, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2674, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2674, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2674, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2674, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2674, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2674, file: !153, line: 93, baseType: !2690, size: 64, offset: 1344)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2674, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2674, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2674, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2674, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2706 = !{!2707}
!2707 = !DILocalVariable(name: "stream", arg: 1, scope: !2669, file: !988, line: 130, type: !2672)
!2708 = !DILocation(line: 0, scope: !2669)
!2709 = !DILocation(line: 151, column: 14, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2669, file: !988, line: 151, column: 7)
!2711 = !DILocation(line: 151, column: 22, scope: !2710)
!2712 = !DILocation(line: 151, column: 27, scope: !2710)
!2713 = !DILocation(line: 151, column: 7, scope: !2669)
!2714 = !DILocation(line: 152, column: 12, scope: !2710)
!2715 = !DILocation(line: 152, column: 5, scope: !2710)
!2716 = !DILocalVariable(name: "fp", arg: 1, scope: !2717, file: !988, line: 42, type: !2672)
!2717 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !988, file: !988, line: 42, type: !2718, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !987, retainedNodes: !2720)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{null, !2672}
!2720 = !{!2716}
!2721 = !DILocation(line: 0, scope: !2717, inlinedAt: !2722)
!2722 = distinct !DILocation(line: 157, column: 3, scope: !2669)
!2723 = !DILocation(line: 44, column: 12, scope: !2724, inlinedAt: !2722)
!2724 = distinct !DILexicalBlock(scope: !2717, file: !988, line: 44, column: 7)
!2725 = !DILocation(line: 44, column: 19, scope: !2724, inlinedAt: !2722)
!2726 = !DILocation(line: 44, column: 7, scope: !2717, inlinedAt: !2722)
!2727 = !DILocation(line: 46, column: 5, scope: !2724, inlinedAt: !2722)
!2728 = !DILocation(line: 159, column: 10, scope: !2669)
!2729 = !DILocation(line: 159, column: 3, scope: !2669)
!2730 = !DILocation(line: 236, column: 1, scope: !2669)
!2731 = !DISubprogram(name: "fflush", scope: !688, file: !688, line: 230, type: !2670, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2732 = distinct !DISubprogram(name: "fpurge", scope: !991, file: !991, line: 32, type: !2733, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !990, retainedNodes: !2769)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!63, !2735}
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2737)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2738)
!2738 = !{!2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2737, file: !153, line: 51, baseType: !63, size: 32)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2737, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2737, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2737, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2737, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2737, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2737, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2737, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2737, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2737, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2737, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2737, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2737, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2737, file: !153, line: 70, baseType: !2753, size: 64, offset: 832)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2737, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2737, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2737, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2737, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2737, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2737, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2737, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2737, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2737, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2737, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2737, file: !153, line: 93, baseType: !2753, size: 64, offset: 1344)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2737, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2737, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2737, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2737, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2769 = !{!2770}
!2770 = !DILocalVariable(name: "fp", arg: 1, scope: !2732, file: !991, line: 32, type: !2735)
!2771 = !DILocation(line: 0, scope: !2732)
!2772 = !DILocation(line: 36, column: 3, scope: !2732)
!2773 = !DILocation(line: 38, column: 3, scope: !2732)
!2774 = !DISubprogram(name: "__fpurge", scope: !2665, file: !2665, line: 72, type: !2775, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{null, !2735}
!2777 = distinct !DISubprogram(name: "rpl_fseeko", scope: !993, file: !993, line: 28, type: !2778, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !992, retainedNodes: !2814)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!63, !2780, !2530, !63}
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2781, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !2782)
!2782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !2783)
!2783 = !{!2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2782, file: !153, line: 51, baseType: !63, size: 32)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2782, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2782, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2782, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2782, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2782, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2782, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2782, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2782, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2782, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2782, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2782, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2782, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2782, file: !153, line: 70, baseType: !2798, size: 64, offset: 832)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2782, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2782, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2782, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2782, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2782, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2782, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2782, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2782, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2782, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2782, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2782, file: !153, line: 93, baseType: !2798, size: 64, offset: 1344)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2782, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2782, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2782, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2782, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!2814 = !{!2815, !2816, !2817, !2818}
!2815 = !DILocalVariable(name: "fp", arg: 1, scope: !2777, file: !993, line: 28, type: !2780)
!2816 = !DILocalVariable(name: "offset", arg: 2, scope: !2777, file: !993, line: 28, type: !2530)
!2817 = !DILocalVariable(name: "whence", arg: 3, scope: !2777, file: !993, line: 28, type: !63)
!2818 = !DILocalVariable(name: "pos", scope: !2819, file: !993, line: 123, type: !2530)
!2819 = distinct !DILexicalBlock(scope: !2820, file: !993, line: 119, column: 5)
!2820 = distinct !DILexicalBlock(scope: !2777, file: !993, line: 55, column: 7)
!2821 = !DILocation(line: 0, scope: !2777)
!2822 = !DILocation(line: 55, column: 12, scope: !2820)
!2823 = !{!1392, !1070, i64 16}
!2824 = !DILocation(line: 55, column: 33, scope: !2820)
!2825 = !{!1392, !1070, i64 8}
!2826 = !DILocation(line: 55, column: 25, scope: !2820)
!2827 = !DILocation(line: 56, column: 7, scope: !2820)
!2828 = !DILocation(line: 56, column: 15, scope: !2820)
!2829 = !DILocation(line: 56, column: 37, scope: !2820)
!2830 = !{!1392, !1070, i64 32}
!2831 = !DILocation(line: 56, column: 29, scope: !2820)
!2832 = !DILocation(line: 57, column: 7, scope: !2820)
!2833 = !DILocation(line: 57, column: 15, scope: !2820)
!2834 = !{!1392, !1070, i64 72}
!2835 = !DILocation(line: 57, column: 29, scope: !2820)
!2836 = !DILocation(line: 55, column: 7, scope: !2777)
!2837 = !DILocation(line: 123, column: 26, scope: !2819)
!2838 = !DILocation(line: 123, column: 19, scope: !2819)
!2839 = !DILocation(line: 0, scope: !2819)
!2840 = !DILocation(line: 124, column: 15, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2819, file: !993, line: 124, column: 11)
!2842 = !DILocation(line: 124, column: 11, scope: !2819)
!2843 = !DILocation(line: 135, column: 19, scope: !2819)
!2844 = !DILocation(line: 136, column: 12, scope: !2819)
!2845 = !DILocation(line: 136, column: 20, scope: !2819)
!2846 = !{!1392, !1364, i64 144}
!2847 = !DILocation(line: 167, column: 7, scope: !2819)
!2848 = !DILocation(line: 169, column: 10, scope: !2777)
!2849 = !DILocation(line: 169, column: 3, scope: !2777)
!2850 = !DILocation(line: 170, column: 1, scope: !2777)
!2851 = !DISubprogram(name: "fseeko", scope: !688, file: !688, line: 736, type: !2852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!63, !2780, !175, !63}
!2854 = distinct !DISubprogram(name: "getprogname", scope: !995, file: !995, line: 54, type: !2855, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !994)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{!100}
!2857 = !DILocation(line: 58, column: 10, scope: !2854)
!2858 = !DILocation(line: 58, column: 3, scope: !2854)
!2859 = distinct !DISubprogram(name: "set_program_name", scope: !728, file: !728, line: 37, type: !1089, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !2860)
!2860 = !{!2861, !2862, !2863}
!2861 = !DILocalVariable(name: "argv0", arg: 1, scope: !2859, file: !728, line: 37, type: !100)
!2862 = !DILocalVariable(name: "slash", scope: !2859, file: !728, line: 44, type: !100)
!2863 = !DILocalVariable(name: "base", scope: !2859, file: !728, line: 45, type: !100)
!2864 = !DILocation(line: 0, scope: !2859)
!2865 = !DILocation(line: 44, column: 23, scope: !2859)
!2866 = !DILocation(line: 45, column: 22, scope: !2859)
!2867 = !DILocation(line: 46, column: 17, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2859, file: !728, line: 46, column: 7)
!2869 = !DILocation(line: 46, column: 9, scope: !2868)
!2870 = !DILocation(line: 46, column: 25, scope: !2868)
!2871 = !DILocation(line: 46, column: 40, scope: !2868)
!2872 = !DILocalVariable(name: "__s1", arg: 1, scope: !2873, file: !1151, line: 974, type: !1283)
!2873 = distinct !DISubprogram(name: "memeq", scope: !1151, file: !1151, line: 974, type: !2874, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !727, retainedNodes: !2876)
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!136, !1283, !1283, !97}
!2876 = !{!2872, !2877, !2878}
!2877 = !DILocalVariable(name: "__s2", arg: 2, scope: !2873, file: !1151, line: 974, type: !1283)
!2878 = !DILocalVariable(name: "__n", arg: 3, scope: !2873, file: !1151, line: 974, type: !97)
!2879 = !DILocation(line: 0, scope: !2873, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 46, column: 28, scope: !2868)
!2881 = !DILocation(line: 976, column: 11, scope: !2873, inlinedAt: !2880)
!2882 = !DILocation(line: 976, column: 10, scope: !2873, inlinedAt: !2880)
!2883 = !DILocation(line: 46, column: 7, scope: !2859)
!2884 = !DILocation(line: 49, column: 11, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2886, file: !728, line: 49, column: 11)
!2886 = distinct !DILexicalBlock(scope: !2868, file: !728, line: 47, column: 5)
!2887 = !DILocation(line: 49, column: 36, scope: !2885)
!2888 = !DILocation(line: 49, column: 11, scope: !2886)
!2889 = !DILocation(line: 65, column: 16, scope: !2859)
!2890 = !DILocation(line: 71, column: 27, scope: !2859)
!2891 = !DILocation(line: 74, column: 33, scope: !2859)
!2892 = !DILocation(line: 76, column: 1, scope: !2859)
!2893 = !DISubprogram(name: "strrchr", scope: !1255, file: !1255, line: 273, type: !1270, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2894 = distinct !DIAssignID()
!2895 = !DILocation(line: 0, scope: !737)
!2896 = distinct !DIAssignID()
!2897 = !DILocation(line: 40, column: 29, scope: !737)
!2898 = !DILocation(line: 41, column: 19, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !737, file: !738, line: 41, column: 7)
!2900 = !DILocation(line: 41, column: 7, scope: !737)
!2901 = !DILocation(line: 47, column: 3, scope: !737)
!2902 = !DILocation(line: 48, column: 3, scope: !737)
!2903 = !DILocalVariable(name: "ps", arg: 1, scope: !2904, file: !2905, line: 1135, type: !2908)
!2904 = distinct !DISubprogram(name: "mbszero", scope: !2905, file: !2905, line: 1135, type: !2906, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !2909)
!2905 = !DIFile(filename: "./lib/wchar.h", directory: "/src")
!2906 = !DISubroutineType(types: !2907)
!2907 = !{null, !2908}
!2908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!2909 = !{!2903}
!2910 = !DILocation(line: 0, scope: !2904, inlinedAt: !2911)
!2911 = distinct !DILocation(line: 48, column: 18, scope: !737)
!2912 = !DILocalVariable(name: "__dest", arg: 1, scope: !2913, file: !1402, line: 57, type: !95)
!2913 = distinct !DISubprogram(name: "memset", scope: !1402, file: !1402, line: 57, type: !2914, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !741, retainedNodes: !2916)
!2914 = !DISubroutineType(types: !2915)
!2915 = !{!95, !95, !63, !97}
!2916 = !{!2912, !2917, !2918}
!2917 = !DILocalVariable(name: "__ch", arg: 2, scope: !2913, file: !1402, line: 57, type: !63)
!2918 = !DILocalVariable(name: "__len", arg: 3, scope: !2913, file: !1402, line: 57, type: !97)
!2919 = !DILocation(line: 0, scope: !2913, inlinedAt: !2920)
!2920 = distinct !DILocation(line: 1137, column: 3, scope: !2904, inlinedAt: !2911)
!2921 = !DILocation(line: 59, column: 10, scope: !2913, inlinedAt: !2920)
!2922 = !DILocation(line: 49, column: 7, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !737, file: !738, line: 49, column: 7)
!2924 = !DILocation(line: 49, column: 39, scope: !2923)
!2925 = !DILocation(line: 49, column: 44, scope: !2923)
!2926 = !DILocation(line: 54, column: 1, scope: !737)
!2927 = distinct !DISubprogram(name: "clone_quoting_options", scope: !764, file: !764, line: 113, type: !2928, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !2931)
!2928 = !DISubroutineType(types: !2929)
!2929 = !{!2930, !2930}
!2930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!2931 = !{!2932, !2933, !2934}
!2932 = !DILocalVariable(name: "o", arg: 1, scope: !2927, file: !764, line: 113, type: !2930)
!2933 = !DILocalVariable(name: "saved_errno", scope: !2927, file: !764, line: 115, type: !63)
!2934 = !DILocalVariable(name: "p", scope: !2927, file: !764, line: 116, type: !2930)
!2935 = !DILocation(line: 0, scope: !2927)
!2936 = !DILocation(line: 115, column: 21, scope: !2927)
!2937 = !DILocation(line: 116, column: 40, scope: !2927)
!2938 = !DILocation(line: 116, column: 31, scope: !2927)
!2939 = !DILocation(line: 118, column: 9, scope: !2927)
!2940 = !DILocation(line: 119, column: 3, scope: !2927)
!2941 = distinct !DISubprogram(name: "get_quoting_style", scope: !764, file: !764, line: 124, type: !2942, scopeLine: 125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !2946)
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!790, !2944}
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !805)
!2946 = !{!2947}
!2947 = !DILocalVariable(name: "o", arg: 1, scope: !2941, file: !764, line: 124, type: !2944)
!2948 = !DILocation(line: 0, scope: !2941)
!2949 = !DILocation(line: 126, column: 11, scope: !2941)
!2950 = !DILocation(line: 126, column: 46, scope: !2941)
!2951 = !{!2952, !1139, i64 0}
!2952 = !{!"quoting_options", !1139, i64 0, !1139, i64 4, !1071, i64 8, !1070, i64 40, !1070, i64 48}
!2953 = !DILocation(line: 126, column: 3, scope: !2941)
!2954 = distinct !DISubprogram(name: "set_quoting_style", scope: !764, file: !764, line: 132, type: !2955, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !2957)
!2955 = !DISubroutineType(types: !2956)
!2956 = !{null, !2930, !790}
!2957 = !{!2958, !2959}
!2958 = !DILocalVariable(name: "o", arg: 1, scope: !2954, file: !764, line: 132, type: !2930)
!2959 = !DILocalVariable(name: "s", arg: 2, scope: !2954, file: !764, line: 132, type: !790)
!2960 = !DILocation(line: 0, scope: !2954)
!2961 = !DILocation(line: 134, column: 4, scope: !2954)
!2962 = !DILocation(line: 134, column: 45, scope: !2954)
!2963 = !DILocation(line: 135, column: 1, scope: !2954)
!2964 = distinct !DISubprogram(name: "set_char_quoting", scope: !764, file: !764, line: 143, type: !2965, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !2967)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!63, !2930, !4, !63}
!2967 = !{!2968, !2969, !2970, !2971, !2972, !2974, !2975}
!2968 = !DILocalVariable(name: "o", arg: 1, scope: !2964, file: !764, line: 143, type: !2930)
!2969 = !DILocalVariable(name: "c", arg: 2, scope: !2964, file: !764, line: 143, type: !4)
!2970 = !DILocalVariable(name: "i", arg: 3, scope: !2964, file: !764, line: 143, type: !63)
!2971 = !DILocalVariable(name: "uc", scope: !2964, file: !764, line: 145, type: !102)
!2972 = !DILocalVariable(name: "p", scope: !2964, file: !764, line: 146, type: !2973)
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!2974 = !DILocalVariable(name: "shift", scope: !2964, file: !764, line: 148, type: !63)
!2975 = !DILocalVariable(name: "r", scope: !2964, file: !764, line: 149, type: !69)
!2976 = !DILocation(line: 0, scope: !2964)
!2977 = !DILocation(line: 147, column: 6, scope: !2964)
!2978 = !DILocation(line: 147, column: 41, scope: !2964)
!2979 = !DILocation(line: 147, column: 62, scope: !2964)
!2980 = !DILocation(line: 147, column: 57, scope: !2964)
!2981 = !DILocation(line: 148, column: 15, scope: !2964)
!2982 = !DILocation(line: 149, column: 21, scope: !2964)
!2983 = !DILocation(line: 149, column: 24, scope: !2964)
!2984 = !DILocation(line: 149, column: 34, scope: !2964)
!2985 = !DILocation(line: 150, column: 19, scope: !2964)
!2986 = !DILocation(line: 150, column: 24, scope: !2964)
!2987 = !DILocation(line: 150, column: 6, scope: !2964)
!2988 = !DILocation(line: 151, column: 3, scope: !2964)
!2989 = distinct !DISubprogram(name: "set_quoting_flags", scope: !764, file: !764, line: 159, type: !2990, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !2992)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{!63, !2930, !63}
!2992 = !{!2993, !2994, !2995}
!2993 = !DILocalVariable(name: "o", arg: 1, scope: !2989, file: !764, line: 159, type: !2930)
!2994 = !DILocalVariable(name: "i", arg: 2, scope: !2989, file: !764, line: 159, type: !63)
!2995 = !DILocalVariable(name: "r", scope: !2989, file: !764, line: 163, type: !63)
!2996 = !DILocation(line: 0, scope: !2989)
!2997 = !DILocation(line: 161, column: 8, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2989, file: !764, line: 161, column: 7)
!2999 = !DILocation(line: 161, column: 7, scope: !2989)
!3000 = !DILocation(line: 163, column: 14, scope: !2989)
!3001 = !{!2952, !1139, i64 4}
!3002 = !DILocation(line: 164, column: 12, scope: !2989)
!3003 = !DILocation(line: 165, column: 3, scope: !2989)
!3004 = distinct !DISubprogram(name: "set_custom_quoting", scope: !764, file: !764, line: 169, type: !3005, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3007)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{null, !2930, !100, !100}
!3007 = !{!3008, !3009, !3010}
!3008 = !DILocalVariable(name: "o", arg: 1, scope: !3004, file: !764, line: 169, type: !2930)
!3009 = !DILocalVariable(name: "left_quote", arg: 2, scope: !3004, file: !764, line: 170, type: !100)
!3010 = !DILocalVariable(name: "right_quote", arg: 3, scope: !3004, file: !764, line: 170, type: !100)
!3011 = !DILocation(line: 0, scope: !3004)
!3012 = !DILocation(line: 172, column: 8, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3004, file: !764, line: 172, column: 7)
!3014 = !DILocation(line: 172, column: 7, scope: !3004)
!3015 = !DILocation(line: 174, column: 12, scope: !3004)
!3016 = !DILocation(line: 175, column: 8, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3004, file: !764, line: 175, column: 7)
!3018 = !DILocation(line: 175, column: 19, scope: !3017)
!3019 = !DILocation(line: 176, column: 5, scope: !3017)
!3020 = !DILocation(line: 177, column: 6, scope: !3004)
!3021 = !DILocation(line: 177, column: 17, scope: !3004)
!3022 = !{!2952, !1070, i64 40}
!3023 = !DILocation(line: 178, column: 6, scope: !3004)
!3024 = !DILocation(line: 178, column: 18, scope: !3004)
!3025 = !{!2952, !1070, i64 48}
!3026 = !DILocation(line: 179, column: 1, scope: !3004)
!3027 = !DISubprogram(name: "abort", scope: !1259, file: !1259, line: 598, type: !342, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3028 = distinct !DISubprogram(name: "quotearg_buffer", scope: !764, file: !764, line: 774, type: !3029, scopeLine: 777, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3031)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!97, !94, !97, !100, !97, !2944}
!3031 = !{!3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039}
!3032 = !DILocalVariable(name: "buffer", arg: 1, scope: !3028, file: !764, line: 774, type: !94)
!3033 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3028, file: !764, line: 774, type: !97)
!3034 = !DILocalVariable(name: "arg", arg: 3, scope: !3028, file: !764, line: 775, type: !100)
!3035 = !DILocalVariable(name: "argsize", arg: 4, scope: !3028, file: !764, line: 775, type: !97)
!3036 = !DILocalVariable(name: "o", arg: 5, scope: !3028, file: !764, line: 776, type: !2944)
!3037 = !DILocalVariable(name: "p", scope: !3028, file: !764, line: 778, type: !2944)
!3038 = !DILocalVariable(name: "saved_errno", scope: !3028, file: !764, line: 779, type: !63)
!3039 = !DILocalVariable(name: "r", scope: !3028, file: !764, line: 780, type: !97)
!3040 = !DILocation(line: 0, scope: !3028)
!3041 = !DILocation(line: 778, column: 37, scope: !3028)
!3042 = !DILocation(line: 779, column: 21, scope: !3028)
!3043 = !DILocation(line: 781, column: 43, scope: !3028)
!3044 = !DILocation(line: 781, column: 53, scope: !3028)
!3045 = !DILocation(line: 781, column: 63, scope: !3028)
!3046 = !DILocation(line: 782, column: 43, scope: !3028)
!3047 = !DILocation(line: 782, column: 58, scope: !3028)
!3048 = !DILocation(line: 780, column: 14, scope: !3028)
!3049 = !DILocation(line: 783, column: 9, scope: !3028)
!3050 = !DILocation(line: 784, column: 3, scope: !3028)
!3051 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !764, file: !764, line: 251, type: !3052, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3056)
!3052 = !DISubroutineType(types: !3053)
!3053 = !{!97, !94, !97, !100, !97, !790, !63, !3054, !100, !100}
!3054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3055, size: 64)
!3055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!3056 = !{!3057, !3058, !3059, !3060, !3061, !3062, !3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3082, !3084, !3087, !3088, !3089, !3090, !3093, !3094, !3096, !3097, !3100, !3104, !3105, !3113, !3116, !3117, !3118}
!3057 = !DILocalVariable(name: "buffer", arg: 1, scope: !3051, file: !764, line: 251, type: !94)
!3058 = !DILocalVariable(name: "buffersize", arg: 2, scope: !3051, file: !764, line: 251, type: !97)
!3059 = !DILocalVariable(name: "arg", arg: 3, scope: !3051, file: !764, line: 252, type: !100)
!3060 = !DILocalVariable(name: "argsize", arg: 4, scope: !3051, file: !764, line: 252, type: !97)
!3061 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !3051, file: !764, line: 253, type: !790)
!3062 = !DILocalVariable(name: "flags", arg: 6, scope: !3051, file: !764, line: 253, type: !63)
!3063 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !3051, file: !764, line: 254, type: !3054)
!3064 = !DILocalVariable(name: "left_quote", arg: 8, scope: !3051, file: !764, line: 255, type: !100)
!3065 = !DILocalVariable(name: "right_quote", arg: 9, scope: !3051, file: !764, line: 256, type: !100)
!3066 = !DILocalVariable(name: "unibyte_locale", scope: !3051, file: !764, line: 258, type: !136)
!3067 = !DILocalVariable(name: "len", scope: !3051, file: !764, line: 260, type: !97)
!3068 = !DILocalVariable(name: "orig_buffersize", scope: !3051, file: !764, line: 261, type: !97)
!3069 = !DILocalVariable(name: "quote_string", scope: !3051, file: !764, line: 262, type: !100)
!3070 = !DILocalVariable(name: "quote_string_len", scope: !3051, file: !764, line: 263, type: !97)
!3071 = !DILocalVariable(name: "backslash_escapes", scope: !3051, file: !764, line: 264, type: !136)
!3072 = !DILocalVariable(name: "elide_outer_quotes", scope: !3051, file: !764, line: 265, type: !136)
!3073 = !DILocalVariable(name: "encountered_single_quote", scope: !3051, file: !764, line: 266, type: !136)
!3074 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !3051, file: !764, line: 267, type: !136)
!3075 = !DILabel(scope: !3051, name: "process_input", file: !764, line: 308)
!3076 = !DILocalVariable(name: "pending_shell_escape_end", scope: !3051, file: !764, line: 309, type: !136)
!3077 = !DILocalVariable(name: "lq", scope: !3078, file: !764, line: 361, type: !100)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !764, line: 361, column: 11)
!3079 = distinct !DILexicalBlock(scope: !3080, file: !764, line: 360, column: 13)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !764, line: 333, column: 7)
!3081 = distinct !DILexicalBlock(scope: !3051, file: !764, line: 312, column: 5)
!3082 = !DILocalVariable(name: "i", scope: !3083, file: !764, line: 395, type: !97)
!3083 = distinct !DILexicalBlock(scope: !3051, file: !764, line: 395, column: 3)
!3084 = !DILocalVariable(name: "is_right_quote", scope: !3085, file: !764, line: 397, type: !136)
!3085 = distinct !DILexicalBlock(scope: !3086, file: !764, line: 396, column: 5)
!3086 = distinct !DILexicalBlock(scope: !3083, file: !764, line: 395, column: 3)
!3087 = !DILocalVariable(name: "escaping", scope: !3085, file: !764, line: 398, type: !136)
!3088 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !3085, file: !764, line: 399, type: !136)
!3089 = !DILocalVariable(name: "c", scope: !3085, file: !764, line: 417, type: !102)
!3090 = !DILabel(scope: !3091, name: "c_and_shell_escape", file: !764, line: 502)
!3091 = distinct !DILexicalBlock(scope: !3092, file: !764, line: 478, column: 9)
!3092 = distinct !DILexicalBlock(scope: !3085, file: !764, line: 419, column: 9)
!3093 = !DILabel(scope: !3091, name: "c_escape", file: !764, line: 507)
!3094 = !DILocalVariable(name: "m", scope: !3095, file: !764, line: 598, type: !97)
!3095 = distinct !DILexicalBlock(scope: !3092, file: !764, line: 596, column: 11)
!3096 = !DILocalVariable(name: "printable", scope: !3095, file: !764, line: 600, type: !136)
!3097 = !DILocalVariable(name: "mbs", scope: !3098, file: !764, line: 609, type: !839)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !764, line: 608, column: 15)
!3099 = distinct !DILexicalBlock(scope: !3095, file: !764, line: 602, column: 17)
!3100 = !DILocalVariable(name: "w", scope: !3101, file: !764, line: 618, type: !366)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !764, line: 617, column: 19)
!3102 = distinct !DILexicalBlock(scope: !3103, file: !764, line: 616, column: 17)
!3103 = distinct !DILexicalBlock(scope: !3098, file: !764, line: 616, column: 17)
!3104 = !DILocalVariable(name: "bytes", scope: !3101, file: !764, line: 619, type: !97)
!3105 = !DILocalVariable(name: "j", scope: !3106, file: !764, line: 648, type: !97)
!3106 = distinct !DILexicalBlock(scope: !3107, file: !764, line: 648, column: 29)
!3107 = distinct !DILexicalBlock(scope: !3108, file: !764, line: 647, column: 27)
!3108 = distinct !DILexicalBlock(scope: !3109, file: !764, line: 645, column: 29)
!3109 = distinct !DILexicalBlock(scope: !3110, file: !764, line: 636, column: 23)
!3110 = distinct !DILexicalBlock(scope: !3111, file: !764, line: 628, column: 30)
!3111 = distinct !DILexicalBlock(scope: !3112, file: !764, line: 623, column: 30)
!3112 = distinct !DILexicalBlock(scope: !3101, file: !764, line: 621, column: 25)
!3113 = !DILocalVariable(name: "ilim", scope: !3114, file: !764, line: 674, type: !97)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !764, line: 671, column: 15)
!3115 = distinct !DILexicalBlock(scope: !3095, file: !764, line: 670, column: 17)
!3116 = !DILabel(scope: !3085, name: "store_escape", file: !764, line: 709)
!3117 = !DILabel(scope: !3085, name: "store_c", file: !764, line: 712)
!3118 = !DILabel(scope: !3051, name: "force_outer_quoting_style", file: !764, line: 753)
!3119 = distinct !DIAssignID()
!3120 = distinct !DIAssignID()
!3121 = distinct !DIAssignID()
!3122 = distinct !DIAssignID()
!3123 = distinct !DIAssignID()
!3124 = !DILocation(line: 0, scope: !3098)
!3125 = distinct !DIAssignID()
!3126 = !DILocation(line: 0, scope: !3101)
!3127 = !DILocation(line: 0, scope: !3051)
!3128 = !DILocation(line: 258, column: 25, scope: !3051)
!3129 = !DILocation(line: 258, column: 36, scope: !3051)
!3130 = !DILocation(line: 267, column: 3, scope: !3051)
!3131 = !DILocation(line: 261, column: 10, scope: !3051)
!3132 = !DILocation(line: 262, column: 15, scope: !3051)
!3133 = !DILocation(line: 263, column: 10, scope: !3051)
!3134 = !DILocation(line: 308, column: 2, scope: !3051)
!3135 = !DILocation(line: 311, column: 3, scope: !3051)
!3136 = !DILocation(line: 318, column: 11, scope: !3081)
!3137 = !DILocation(line: 319, column: 9, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3139, file: !764, line: 319, column: 9)
!3139 = distinct !DILexicalBlock(scope: !3140, file: !764, line: 319, column: 9)
!3140 = distinct !DILexicalBlock(scope: !3081, file: !764, line: 318, column: 11)
!3141 = !DILocation(line: 319, column: 9, scope: !3139)
!3142 = !DILocation(line: 0, scope: !830, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 357, column: 26, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !764, line: 335, column: 11)
!3145 = distinct !DILexicalBlock(scope: !3080, file: !764, line: 334, column: 13)
!3146 = !DILocation(line: 199, column: 29, scope: !830, inlinedAt: !3143)
!3147 = !DILocation(line: 201, column: 19, scope: !3148, inlinedAt: !3143)
!3148 = distinct !DILexicalBlock(scope: !830, file: !764, line: 201, column: 7)
!3149 = !DILocation(line: 201, column: 7, scope: !830, inlinedAt: !3143)
!3150 = !DILocation(line: 229, column: 3, scope: !830, inlinedAt: !3143)
!3151 = !DILocation(line: 230, column: 3, scope: !830, inlinedAt: !3143)
!3152 = !DILocalVariable(name: "ps", arg: 1, scope: !3153, file: !2905, line: 1135, type: !3156)
!3153 = distinct !DISubprogram(name: "mbszero", scope: !2905, file: !2905, line: 1135, type: !3154, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3157)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{null, !3156}
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!3157 = !{!3152}
!3158 = !DILocation(line: 0, scope: !3153, inlinedAt: !3159)
!3159 = distinct !DILocation(line: 230, column: 18, scope: !830, inlinedAt: !3143)
!3160 = !DILocalVariable(name: "__dest", arg: 1, scope: !3161, file: !1402, line: 57, type: !95)
!3161 = distinct !DISubprogram(name: "memset", scope: !1402, file: !1402, line: 57, type: !2914, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3162)
!3162 = !{!3160, !3163, !3164}
!3163 = !DILocalVariable(name: "__ch", arg: 2, scope: !3161, file: !1402, line: 57, type: !63)
!3164 = !DILocalVariable(name: "__len", arg: 3, scope: !3161, file: !1402, line: 57, type: !97)
!3165 = !DILocation(line: 0, scope: !3161, inlinedAt: !3166)
!3166 = distinct !DILocation(line: 1137, column: 3, scope: !3153, inlinedAt: !3159)
!3167 = !DILocation(line: 59, column: 10, scope: !3161, inlinedAt: !3166)
!3168 = !DILocation(line: 231, column: 7, scope: !3169, inlinedAt: !3143)
!3169 = distinct !DILexicalBlock(scope: !830, file: !764, line: 231, column: 7)
!3170 = !DILocation(line: 231, column: 40, scope: !3169, inlinedAt: !3143)
!3171 = !DILocation(line: 231, column: 45, scope: !3169, inlinedAt: !3143)
!3172 = !DILocation(line: 235, column: 1, scope: !830, inlinedAt: !3143)
!3173 = !DILocation(line: 0, scope: !830, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 358, column: 27, scope: !3144)
!3175 = !DILocation(line: 199, column: 29, scope: !830, inlinedAt: !3174)
!3176 = !DILocation(line: 201, column: 19, scope: !3148, inlinedAt: !3174)
!3177 = !DILocation(line: 201, column: 7, scope: !830, inlinedAt: !3174)
!3178 = !DILocation(line: 229, column: 3, scope: !830, inlinedAt: !3174)
!3179 = !DILocation(line: 230, column: 3, scope: !830, inlinedAt: !3174)
!3180 = !DILocation(line: 0, scope: !3153, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 230, column: 18, scope: !830, inlinedAt: !3174)
!3182 = !DILocation(line: 0, scope: !3161, inlinedAt: !3183)
!3183 = distinct !DILocation(line: 1137, column: 3, scope: !3153, inlinedAt: !3181)
!3184 = !DILocation(line: 59, column: 10, scope: !3161, inlinedAt: !3183)
!3185 = !DILocation(line: 231, column: 7, scope: !3169, inlinedAt: !3174)
!3186 = !DILocation(line: 231, column: 40, scope: !3169, inlinedAt: !3174)
!3187 = !DILocation(line: 231, column: 45, scope: !3169, inlinedAt: !3174)
!3188 = !DILocation(line: 235, column: 1, scope: !830, inlinedAt: !3174)
!3189 = !DILocation(line: 360, column: 13, scope: !3080)
!3190 = !DILocation(line: 0, scope: !3078)
!3191 = !DILocation(line: 361, column: 45, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3078, file: !764, line: 361, column: 11)
!3193 = !DILocation(line: 361, column: 11, scope: !3078)
!3194 = !DILocation(line: 362, column: 13, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !764, line: 362, column: 13)
!3196 = distinct !DILexicalBlock(scope: !3192, file: !764, line: 362, column: 13)
!3197 = !DILocation(line: 362, column: 13, scope: !3196)
!3198 = !DILocation(line: 361, column: 52, scope: !3192)
!3199 = distinct !{!3199, !3193, !3200, !1185}
!3200 = !DILocation(line: 362, column: 13, scope: !3078)
!3201 = !DILocation(line: 365, column: 28, scope: !3080)
!3202 = !DILocation(line: 260, column: 10, scope: !3051)
!3203 = !DILocation(line: 367, column: 7, scope: !3081)
!3204 = !DILocation(line: 373, column: 7, scope: !3081)
!3205 = !DILocation(line: 381, column: 11, scope: !3081)
!3206 = !DILocation(line: 376, column: 11, scope: !3081)
!3207 = !DILocation(line: 382, column: 9, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !764, line: 382, column: 9)
!3209 = distinct !DILexicalBlock(scope: !3210, file: !764, line: 382, column: 9)
!3210 = distinct !DILexicalBlock(scope: !3081, file: !764, line: 381, column: 11)
!3211 = !DILocation(line: 382, column: 9, scope: !3209)
!3212 = !DILocation(line: 389, column: 7, scope: !3081)
!3213 = !DILocation(line: 392, column: 7, scope: !3081)
!3214 = !DILocation(line: 0, scope: !3083)
!3215 = !DILocation(line: 395, column: 8, scope: !3083)
!3216 = !DILocation(line: 395, scope: !3083)
!3217 = !DILocation(line: 395, column: 34, scope: !3086)
!3218 = !DILocation(line: 395, column: 26, scope: !3086)
!3219 = !DILocation(line: 395, column: 48, scope: !3086)
!3220 = !DILocation(line: 395, column: 55, scope: !3086)
!3221 = !DILocation(line: 395, column: 3, scope: !3083)
!3222 = !DILocation(line: 395, column: 67, scope: !3086)
!3223 = !DILocation(line: 0, scope: !3085)
!3224 = !DILocation(line: 402, column: 11, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3085, file: !764, line: 401, column: 11)
!3226 = !DILocation(line: 404, column: 17, scope: !3225)
!3227 = !DILocation(line: 405, column: 39, scope: !3225)
!3228 = !DILocation(line: 409, column: 32, scope: !3225)
!3229 = !DILocation(line: 405, column: 19, scope: !3225)
!3230 = !DILocation(line: 405, column: 15, scope: !3225)
!3231 = !DILocation(line: 410, column: 11, scope: !3225)
!3232 = !DILocation(line: 410, column: 25, scope: !3225)
!3233 = !DILocalVariable(name: "__s1", arg: 1, scope: !3234, file: !1151, line: 974, type: !1283)
!3234 = distinct !DISubprogram(name: "memeq", scope: !1151, file: !1151, line: 974, type: !2874, scopeLine: 975, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3235)
!3235 = !{!3233, !3236, !3237}
!3236 = !DILocalVariable(name: "__s2", arg: 2, scope: !3234, file: !1151, line: 974, type: !1283)
!3237 = !DILocalVariable(name: "__n", arg: 3, scope: !3234, file: !1151, line: 974, type: !97)
!3238 = !DILocation(line: 0, scope: !3234, inlinedAt: !3239)
!3239 = distinct !DILocation(line: 410, column: 14, scope: !3225)
!3240 = !DILocation(line: 976, column: 11, scope: !3234, inlinedAt: !3239)
!3241 = !DILocation(line: 976, column: 10, scope: !3234, inlinedAt: !3239)
!3242 = !DILocation(line: 401, column: 11, scope: !3085)
!3243 = !DILocation(line: 417, column: 25, scope: !3085)
!3244 = !DILocation(line: 418, column: 7, scope: !3085)
!3245 = !DILocation(line: 421, column: 15, scope: !3092)
!3246 = !DILocation(line: 423, column: 15, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !764, line: 423, column: 15)
!3248 = distinct !DILexicalBlock(scope: !3249, file: !764, line: 422, column: 13)
!3249 = distinct !DILexicalBlock(scope: !3092, file: !764, line: 421, column: 15)
!3250 = !DILocation(line: 423, column: 15, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3247, file: !764, line: 423, column: 15)
!3252 = !DILocation(line: 423, column: 15, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !764, line: 423, column: 15)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !764, line: 423, column: 15)
!3255 = distinct !DILexicalBlock(scope: !3251, file: !764, line: 423, column: 15)
!3256 = !DILocation(line: 423, column: 15, scope: !3254)
!3257 = !DILocation(line: 423, column: 15, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3259, file: !764, line: 423, column: 15)
!3259 = distinct !DILexicalBlock(scope: !3255, file: !764, line: 423, column: 15)
!3260 = !DILocation(line: 423, column: 15, scope: !3259)
!3261 = !DILocation(line: 423, column: 15, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !764, line: 423, column: 15)
!3263 = distinct !DILexicalBlock(scope: !3255, file: !764, line: 423, column: 15)
!3264 = !DILocation(line: 423, column: 15, scope: !3263)
!3265 = !DILocation(line: 423, column: 15, scope: !3255)
!3266 = !DILocation(line: 423, column: 15, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3268, file: !764, line: 423, column: 15)
!3268 = distinct !DILexicalBlock(scope: !3247, file: !764, line: 423, column: 15)
!3269 = !DILocation(line: 423, column: 15, scope: !3268)
!3270 = !DILocation(line: 431, column: 19, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3248, file: !764, line: 430, column: 19)
!3272 = !DILocation(line: 431, column: 24, scope: !3271)
!3273 = !DILocation(line: 431, column: 28, scope: !3271)
!3274 = !DILocation(line: 431, column: 38, scope: !3271)
!3275 = !DILocation(line: 431, column: 48, scope: !3271)
!3276 = !DILocation(line: 431, column: 59, scope: !3271)
!3277 = !DILocation(line: 433, column: 19, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3279, file: !764, line: 433, column: 19)
!3279 = distinct !DILexicalBlock(scope: !3280, file: !764, line: 433, column: 19)
!3280 = distinct !DILexicalBlock(scope: !3271, file: !764, line: 432, column: 17)
!3281 = !DILocation(line: 433, column: 19, scope: !3279)
!3282 = !DILocation(line: 434, column: 19, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3284, file: !764, line: 434, column: 19)
!3284 = distinct !DILexicalBlock(scope: !3280, file: !764, line: 434, column: 19)
!3285 = !DILocation(line: 434, column: 19, scope: !3284)
!3286 = !DILocation(line: 435, column: 17, scope: !3280)
!3287 = !DILocation(line: 442, column: 20, scope: !3249)
!3288 = !DILocation(line: 447, column: 11, scope: !3092)
!3289 = !DILocation(line: 450, column: 19, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3092, file: !764, line: 448, column: 13)
!3291 = !DILocation(line: 456, column: 19, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3290, file: !764, line: 455, column: 19)
!3293 = !DILocation(line: 456, column: 24, scope: !3292)
!3294 = !DILocation(line: 456, column: 28, scope: !3292)
!3295 = !DILocation(line: 456, column: 38, scope: !3292)
!3296 = !DILocation(line: 456, column: 41, scope: !3292)
!3297 = !DILocation(line: 456, column: 52, scope: !3292)
!3298 = !DILocation(line: 455, column: 19, scope: !3290)
!3299 = !DILocation(line: 457, column: 25, scope: !3292)
!3300 = !DILocation(line: 457, column: 17, scope: !3292)
!3301 = !DILocation(line: 464, column: 25, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3292, file: !764, line: 458, column: 19)
!3303 = !DILocation(line: 468, column: 21, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3305, file: !764, line: 468, column: 21)
!3305 = distinct !DILexicalBlock(scope: !3302, file: !764, line: 468, column: 21)
!3306 = !DILocation(line: 468, column: 21, scope: !3305)
!3307 = !DILocation(line: 469, column: 21, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3309, file: !764, line: 469, column: 21)
!3309 = distinct !DILexicalBlock(scope: !3302, file: !764, line: 469, column: 21)
!3310 = !DILocation(line: 469, column: 21, scope: !3309)
!3311 = !DILocation(line: 470, column: 21, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3313, file: !764, line: 470, column: 21)
!3313 = distinct !DILexicalBlock(scope: !3302, file: !764, line: 470, column: 21)
!3314 = !DILocation(line: 470, column: 21, scope: !3313)
!3315 = !DILocation(line: 471, column: 21, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3317, file: !764, line: 471, column: 21)
!3317 = distinct !DILexicalBlock(scope: !3302, file: !764, line: 471, column: 21)
!3318 = !DILocation(line: 471, column: 21, scope: !3317)
!3319 = !DILocation(line: 472, column: 21, scope: !3302)
!3320 = !DILocation(line: 482, column: 33, scope: !3091)
!3321 = !DILocation(line: 483, column: 33, scope: !3091)
!3322 = !DILocation(line: 485, column: 33, scope: !3091)
!3323 = !DILocation(line: 486, column: 33, scope: !3091)
!3324 = !DILocation(line: 487, column: 33, scope: !3091)
!3325 = !DILocation(line: 490, column: 17, scope: !3091)
!3326 = !DILocation(line: 492, column: 21, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3328, file: !764, line: 491, column: 15)
!3328 = distinct !DILexicalBlock(scope: !3091, file: !764, line: 490, column: 17)
!3329 = !DILocation(line: 499, column: 35, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3091, file: !764, line: 499, column: 17)
!3331 = !DILocation(line: 0, scope: !3091)
!3332 = !DILocation(line: 502, column: 11, scope: !3091)
!3333 = !DILocation(line: 504, column: 17, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3091, file: !764, line: 503, column: 17)
!3335 = !DILocation(line: 507, column: 11, scope: !3091)
!3336 = !DILocation(line: 508, column: 17, scope: !3091)
!3337 = !DILocation(line: 517, column: 15, scope: !3092)
!3338 = !DILocation(line: 517, column: 40, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3092, file: !764, line: 517, column: 15)
!3340 = !DILocation(line: 517, column: 47, scope: !3339)
!3341 = !DILocation(line: 517, column: 18, scope: !3339)
!3342 = !DILocation(line: 521, column: 17, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3092, file: !764, line: 521, column: 15)
!3344 = !DILocation(line: 521, column: 15, scope: !3092)
!3345 = !DILocation(line: 525, column: 11, scope: !3092)
!3346 = !DILocation(line: 537, column: 15, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3092, file: !764, line: 536, column: 15)
!3348 = !DILocation(line: 536, column: 15, scope: !3092)
!3349 = !DILocation(line: 544, column: 15, scope: !3092)
!3350 = !DILocation(line: 546, column: 19, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !764, line: 545, column: 13)
!3352 = distinct !DILexicalBlock(scope: !3092, file: !764, line: 544, column: 15)
!3353 = !DILocation(line: 549, column: 19, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3351, file: !764, line: 549, column: 19)
!3355 = !DILocation(line: 549, column: 30, scope: !3354)
!3356 = !DILocation(line: 558, column: 15, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3358, file: !764, line: 558, column: 15)
!3358 = distinct !DILexicalBlock(scope: !3351, file: !764, line: 558, column: 15)
!3359 = !DILocation(line: 558, column: 15, scope: !3358)
!3360 = !DILocation(line: 559, column: 15, scope: !3361)
!3361 = distinct !DILexicalBlock(scope: !3362, file: !764, line: 559, column: 15)
!3362 = distinct !DILexicalBlock(scope: !3351, file: !764, line: 559, column: 15)
!3363 = !DILocation(line: 559, column: 15, scope: !3362)
!3364 = !DILocation(line: 560, column: 15, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3366, file: !764, line: 560, column: 15)
!3366 = distinct !DILexicalBlock(scope: !3351, file: !764, line: 560, column: 15)
!3367 = !DILocation(line: 560, column: 15, scope: !3366)
!3368 = !DILocation(line: 562, column: 13, scope: !3351)
!3369 = !DILocation(line: 602, column: 17, scope: !3095)
!3370 = !DILocation(line: 0, scope: !3095)
!3371 = !DILocation(line: 605, column: 29, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3099, file: !764, line: 603, column: 15)
!3373 = !DILocation(line: 605, column: 41, scope: !3372)
!3374 = !DILocation(line: 606, column: 15, scope: !3372)
!3375 = !DILocation(line: 609, column: 17, scope: !3098)
!3376 = !DILocation(line: 0, scope: !3153, inlinedAt: !3377)
!3377 = distinct !DILocation(line: 609, column: 32, scope: !3098)
!3378 = !DILocation(line: 0, scope: !3161, inlinedAt: !3379)
!3379 = distinct !DILocation(line: 1137, column: 3, scope: !3153, inlinedAt: !3377)
!3380 = !DILocation(line: 59, column: 10, scope: !3161, inlinedAt: !3379)
!3381 = !DILocation(line: 613, column: 29, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3098, file: !764, line: 613, column: 21)
!3383 = !DILocation(line: 613, column: 21, scope: !3098)
!3384 = !DILocation(line: 614, column: 29, scope: !3382)
!3385 = !DILocation(line: 614, column: 19, scope: !3382)
!3386 = !DILocation(line: 618, column: 21, scope: !3101)
!3387 = !DILocation(line: 620, column: 54, scope: !3101)
!3388 = !DILocation(line: 619, column: 36, scope: !3101)
!3389 = !DILocation(line: 621, column: 25, scope: !3101)
!3390 = !DILocation(line: 631, column: 38, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3110, file: !764, line: 629, column: 23)
!3392 = !DILocation(line: 631, column: 48, scope: !3391)
!3393 = !DILocation(line: 631, column: 25, scope: !3391)
!3394 = !DILocation(line: 626, column: 25, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3111, file: !764, line: 624, column: 23)
!3396 = !DILocation(line: 631, column: 51, scope: !3391)
!3397 = !DILocation(line: 632, column: 28, scope: !3391)
!3398 = !DILocation(line: 631, column: 34, scope: !3391)
!3399 = distinct !{!3399, !3393, !3397, !1185}
!3400 = !DILocation(line: 0, scope: !3106)
!3401 = !DILocation(line: 646, column: 29, scope: !3108)
!3402 = !DILocation(line: 648, column: 29, scope: !3106)
!3403 = !DILocation(line: 649, column: 39, scope: !3404)
!3404 = distinct !DILexicalBlock(scope: !3106, file: !764, line: 648, column: 29)
!3405 = !DILocation(line: 649, column: 31, scope: !3404)
!3406 = !DILocation(line: 648, column: 60, scope: !3404)
!3407 = !DILocation(line: 648, column: 50, scope: !3404)
!3408 = distinct !{!3408, !3402, !3409, !1185}
!3409 = !DILocation(line: 654, column: 33, scope: !3106)
!3410 = !DILocation(line: 657, column: 43, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3109, file: !764, line: 657, column: 29)
!3412 = !DILocalVariable(name: "wc", arg: 1, scope: !3413, file: !1529, line: 865, type: !1532)
!3413 = distinct !DISubprogram(name: "c32isprint", scope: !1529, file: !1529, line: 865, type: !1530, scopeLine: 866, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3414)
!3414 = !{!3412}
!3415 = !DILocation(line: 0, scope: !3413, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 657, column: 31, scope: !3411)
!3417 = !DILocation(line: 871, column: 10, scope: !3413, inlinedAt: !3416)
!3418 = !DILocation(line: 657, column: 31, scope: !3411)
!3419 = !DILocation(line: 664, column: 23, scope: !3101)
!3420 = !DILocation(line: 665, column: 19, scope: !3102)
!3421 = !DILocation(line: 666, column: 15, scope: !3099)
!3422 = !DILocation(line: 753, column: 2, scope: !3051)
!3423 = !DILocation(line: 756, column: 51, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3051, file: !764, line: 756, column: 7)
!3425 = !DILocation(line: 0, scope: !3099)
!3426 = !DILocation(line: 670, column: 19, scope: !3115)
!3427 = !DILocation(line: 670, column: 23, scope: !3115)
!3428 = !DILocation(line: 674, column: 33, scope: !3114)
!3429 = !DILocation(line: 0, scope: !3114)
!3430 = !DILocation(line: 676, column: 17, scope: !3114)
!3431 = !DILocation(line: 678, column: 43, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3433, file: !764, line: 678, column: 25)
!3433 = distinct !DILexicalBlock(scope: !3434, file: !764, line: 677, column: 19)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !764, line: 676, column: 17)
!3435 = distinct !DILexicalBlock(scope: !3114, file: !764, line: 676, column: 17)
!3436 = !DILocation(line: 680, column: 25, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !764, line: 680, column: 25)
!3438 = distinct !DILexicalBlock(scope: !3432, file: !764, line: 679, column: 23)
!3439 = !DILocation(line: 680, column: 25, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3437, file: !764, line: 680, column: 25)
!3441 = !DILocation(line: 680, column: 25, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !764, line: 680, column: 25)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !764, line: 680, column: 25)
!3444 = distinct !DILexicalBlock(scope: !3440, file: !764, line: 680, column: 25)
!3445 = !DILocation(line: 680, column: 25, scope: !3443)
!3446 = !DILocation(line: 680, column: 25, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3448, file: !764, line: 680, column: 25)
!3448 = distinct !DILexicalBlock(scope: !3444, file: !764, line: 680, column: 25)
!3449 = !DILocation(line: 680, column: 25, scope: !3448)
!3450 = !DILocation(line: 680, column: 25, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3452, file: !764, line: 680, column: 25)
!3452 = distinct !DILexicalBlock(scope: !3444, file: !764, line: 680, column: 25)
!3453 = !DILocation(line: 680, column: 25, scope: !3452)
!3454 = !DILocation(line: 680, column: 25, scope: !3444)
!3455 = !DILocation(line: 680, column: 25, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3457, file: !764, line: 680, column: 25)
!3457 = distinct !DILexicalBlock(scope: !3437, file: !764, line: 680, column: 25)
!3458 = !DILocation(line: 680, column: 25, scope: !3457)
!3459 = !DILocation(line: 681, column: 25, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3461, file: !764, line: 681, column: 25)
!3461 = distinct !DILexicalBlock(scope: !3438, file: !764, line: 681, column: 25)
!3462 = !DILocation(line: 681, column: 25, scope: !3461)
!3463 = !DILocation(line: 682, column: 25, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !764, line: 682, column: 25)
!3465 = distinct !DILexicalBlock(scope: !3438, file: !764, line: 682, column: 25)
!3466 = !DILocation(line: 682, column: 25, scope: !3465)
!3467 = !DILocation(line: 683, column: 38, scope: !3438)
!3468 = !DILocation(line: 683, column: 33, scope: !3438)
!3469 = !DILocation(line: 684, column: 23, scope: !3438)
!3470 = !DILocation(line: 685, column: 30, scope: !3432)
!3471 = !DILocation(line: 687, column: 25, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3473, file: !764, line: 687, column: 25)
!3473 = distinct !DILexicalBlock(scope: !3474, file: !764, line: 687, column: 25)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !764, line: 686, column: 23)
!3475 = distinct !DILexicalBlock(scope: !3432, file: !764, line: 685, column: 30)
!3476 = !DILocation(line: 687, column: 25, scope: !3473)
!3477 = !DILocation(line: 689, column: 23, scope: !3474)
!3478 = !DILocation(line: 690, column: 35, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3433, file: !764, line: 690, column: 25)
!3480 = !DILocation(line: 690, column: 30, scope: !3479)
!3481 = !DILocation(line: 690, column: 25, scope: !3433)
!3482 = !DILocation(line: 692, column: 21, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3484, file: !764, line: 692, column: 21)
!3484 = distinct !DILexicalBlock(scope: !3433, file: !764, line: 692, column: 21)
!3485 = !DILocation(line: 692, column: 21, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3487, file: !764, line: 692, column: 21)
!3487 = distinct !DILexicalBlock(scope: !3488, file: !764, line: 692, column: 21)
!3488 = distinct !DILexicalBlock(scope: !3483, file: !764, line: 692, column: 21)
!3489 = !DILocation(line: 692, column: 21, scope: !3487)
!3490 = !DILocation(line: 692, column: 21, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3492, file: !764, line: 692, column: 21)
!3492 = distinct !DILexicalBlock(scope: !3488, file: !764, line: 692, column: 21)
!3493 = !DILocation(line: 692, column: 21, scope: !3492)
!3494 = !DILocation(line: 692, column: 21, scope: !3488)
!3495 = !DILocation(line: 0, scope: !3433)
!3496 = !DILocation(line: 693, column: 21, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3498, file: !764, line: 693, column: 21)
!3498 = distinct !DILexicalBlock(scope: !3433, file: !764, line: 693, column: 21)
!3499 = !DILocation(line: 693, column: 21, scope: !3498)
!3500 = !DILocation(line: 694, column: 25, scope: !3433)
!3501 = !DILocation(line: 676, column: 17, scope: !3434)
!3502 = distinct !{!3502, !3503, !3504}
!3503 = !DILocation(line: 676, column: 17, scope: !3435)
!3504 = !DILocation(line: 695, column: 19, scope: !3435)
!3505 = !DILocation(line: 409, column: 30, scope: !3225)
!3506 = !DILocation(line: 702, column: 34, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3085, file: !764, line: 702, column: 11)
!3508 = !DILocation(line: 704, column: 14, scope: !3507)
!3509 = !DILocation(line: 705, column: 14, scope: !3507)
!3510 = !DILocation(line: 705, column: 35, scope: !3507)
!3511 = !DILocation(line: 705, column: 17, scope: !3507)
!3512 = !DILocation(line: 705, column: 47, scope: !3507)
!3513 = !DILocation(line: 705, column: 65, scope: !3507)
!3514 = !DILocation(line: 706, column: 11, scope: !3507)
!3515 = !DILocation(line: 702, column: 11, scope: !3085)
!3516 = !DILocation(line: 395, column: 15, scope: !3083)
!3517 = !DILocation(line: 709, column: 5, scope: !3085)
!3518 = !DILocation(line: 710, column: 7, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3085, file: !764, line: 710, column: 7)
!3520 = !DILocation(line: 710, column: 7, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3519, file: !764, line: 710, column: 7)
!3522 = !DILocation(line: 710, column: 7, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3524, file: !764, line: 710, column: 7)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !764, line: 710, column: 7)
!3525 = distinct !DILexicalBlock(scope: !3521, file: !764, line: 710, column: 7)
!3526 = !DILocation(line: 710, column: 7, scope: !3524)
!3527 = !DILocation(line: 710, column: 7, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !764, line: 710, column: 7)
!3529 = distinct !DILexicalBlock(scope: !3525, file: !764, line: 710, column: 7)
!3530 = !DILocation(line: 710, column: 7, scope: !3529)
!3531 = !DILocation(line: 710, column: 7, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !764, line: 710, column: 7)
!3533 = distinct !DILexicalBlock(scope: !3525, file: !764, line: 710, column: 7)
!3534 = !DILocation(line: 710, column: 7, scope: !3533)
!3535 = !DILocation(line: 710, column: 7, scope: !3525)
!3536 = !DILocation(line: 710, column: 7, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !764, line: 710, column: 7)
!3538 = distinct !DILexicalBlock(scope: !3519, file: !764, line: 710, column: 7)
!3539 = !DILocation(line: 710, column: 7, scope: !3538)
!3540 = !DILocation(line: 712, column: 5, scope: !3085)
!3541 = !DILocation(line: 713, column: 7, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !764, line: 713, column: 7)
!3543 = distinct !DILexicalBlock(scope: !3085, file: !764, line: 713, column: 7)
!3544 = !DILocation(line: 417, column: 21, scope: !3085)
!3545 = !DILocation(line: 713, column: 7, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !764, line: 713, column: 7)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !764, line: 713, column: 7)
!3548 = distinct !DILexicalBlock(scope: !3542, file: !764, line: 713, column: 7)
!3549 = !DILocation(line: 713, column: 7, scope: !3547)
!3550 = !DILocation(line: 713, column: 7, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3552, file: !764, line: 713, column: 7)
!3552 = distinct !DILexicalBlock(scope: !3548, file: !764, line: 713, column: 7)
!3553 = !DILocation(line: 713, column: 7, scope: !3552)
!3554 = !DILocation(line: 713, column: 7, scope: !3548)
!3555 = !DILocation(line: 714, column: 7, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3557, file: !764, line: 714, column: 7)
!3557 = distinct !DILexicalBlock(scope: !3085, file: !764, line: 714, column: 7)
!3558 = !DILocation(line: 714, column: 7, scope: !3557)
!3559 = !DILocation(line: 716, column: 11, scope: !3085)
!3560 = !DILocation(line: 718, column: 5, scope: !3086)
!3561 = !DILocation(line: 395, column: 82, scope: !3086)
!3562 = !DILocation(line: 395, column: 3, scope: !3086)
!3563 = distinct !{!3563, !3221, !3564, !1185}
!3564 = !DILocation(line: 718, column: 5, scope: !3083)
!3565 = !DILocation(line: 720, column: 11, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3051, file: !764, line: 720, column: 7)
!3567 = !DILocation(line: 720, column: 16, scope: !3566)
!3568 = !DILocation(line: 728, column: 51, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3051, file: !764, line: 728, column: 7)
!3570 = !DILocation(line: 731, column: 11, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3569, file: !764, line: 730, column: 5)
!3572 = !DILocation(line: 732, column: 16, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3571, file: !764, line: 731, column: 11)
!3574 = !DILocation(line: 732, column: 9, scope: !3573)
!3575 = !DILocation(line: 736, column: 18, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3573, file: !764, line: 736, column: 16)
!3577 = !DILocation(line: 736, column: 29, scope: !3576)
!3578 = !DILocation(line: 745, column: 7, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3051, file: !764, line: 745, column: 7)
!3580 = !DILocation(line: 745, column: 20, scope: !3579)
!3581 = !DILocation(line: 746, column: 12, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3583, file: !764, line: 746, column: 5)
!3583 = distinct !DILexicalBlock(scope: !3579, file: !764, line: 746, column: 5)
!3584 = !DILocation(line: 746, column: 5, scope: !3583)
!3585 = !DILocation(line: 747, column: 7, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3587, file: !764, line: 747, column: 7)
!3587 = distinct !DILexicalBlock(scope: !3582, file: !764, line: 747, column: 7)
!3588 = !DILocation(line: 747, column: 7, scope: !3587)
!3589 = !DILocation(line: 746, column: 39, scope: !3582)
!3590 = distinct !{!3590, !3584, !3591, !1185}
!3591 = !DILocation(line: 747, column: 7, scope: !3583)
!3592 = !DILocation(line: 749, column: 11, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3051, file: !764, line: 749, column: 7)
!3594 = !DILocation(line: 749, column: 7, scope: !3051)
!3595 = !DILocation(line: 750, column: 5, scope: !3593)
!3596 = !DILocation(line: 750, column: 17, scope: !3593)
!3597 = !DILocation(line: 756, column: 21, scope: !3424)
!3598 = !DILocation(line: 760, column: 42, scope: !3051)
!3599 = !DILocation(line: 758, column: 10, scope: !3051)
!3600 = !DILocation(line: 758, column: 3, scope: !3051)
!3601 = !DILocation(line: 762, column: 1, scope: !3051)
!3602 = !DISubprogram(name: "__ctype_get_mb_cur_max", scope: !1259, file: !1259, line: 98, type: !3603, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3603 = !DISubroutineType(types: !3604)
!3604 = !{!97}
!3605 = !DISubprogram(name: "strlen", scope: !1255, file: !1255, line: 407, type: !3606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3606 = !DISubroutineType(types: !3607)
!3607 = !{!99, !100}
!3608 = !DISubprogram(name: "iswprint", scope: !1677, file: !1677, line: 120, type: !1530, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3609 = distinct !DISubprogram(name: "quotearg_alloc", scope: !764, file: !764, line: 788, type: !3610, scopeLine: 790, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3612)
!3610 = !DISubroutineType(types: !3611)
!3611 = !{!94, !100, !97, !2944}
!3612 = !{!3613, !3614, !3615}
!3613 = !DILocalVariable(name: "arg", arg: 1, scope: !3609, file: !764, line: 788, type: !100)
!3614 = !DILocalVariable(name: "argsize", arg: 2, scope: !3609, file: !764, line: 788, type: !97)
!3615 = !DILocalVariable(name: "o", arg: 3, scope: !3609, file: !764, line: 789, type: !2944)
!3616 = !DILocation(line: 0, scope: !3609)
!3617 = !DILocalVariable(name: "arg", arg: 1, scope: !3618, file: !764, line: 801, type: !100)
!3618 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !764, file: !764, line: 801, type: !3619, scopeLine: 803, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3621)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!94, !100, !97, !1009, !2944}
!3621 = !{!3617, !3622, !3623, !3624, !3625, !3626, !3627, !3628, !3629}
!3622 = !DILocalVariable(name: "argsize", arg: 2, scope: !3618, file: !764, line: 801, type: !97)
!3623 = !DILocalVariable(name: "size", arg: 3, scope: !3618, file: !764, line: 801, type: !1009)
!3624 = !DILocalVariable(name: "o", arg: 4, scope: !3618, file: !764, line: 802, type: !2944)
!3625 = !DILocalVariable(name: "p", scope: !3618, file: !764, line: 804, type: !2944)
!3626 = !DILocalVariable(name: "saved_errno", scope: !3618, file: !764, line: 805, type: !63)
!3627 = !DILocalVariable(name: "flags", scope: !3618, file: !764, line: 807, type: !63)
!3628 = !DILocalVariable(name: "bufsize", scope: !3618, file: !764, line: 808, type: !97)
!3629 = !DILocalVariable(name: "buf", scope: !3618, file: !764, line: 812, type: !94)
!3630 = !DILocation(line: 0, scope: !3618, inlinedAt: !3631)
!3631 = distinct !DILocation(line: 791, column: 10, scope: !3609)
!3632 = !DILocation(line: 804, column: 37, scope: !3618, inlinedAt: !3631)
!3633 = !DILocation(line: 805, column: 21, scope: !3618, inlinedAt: !3631)
!3634 = !DILocation(line: 807, column: 18, scope: !3618, inlinedAt: !3631)
!3635 = !DILocation(line: 807, column: 24, scope: !3618, inlinedAt: !3631)
!3636 = !DILocation(line: 808, column: 72, scope: !3618, inlinedAt: !3631)
!3637 = !DILocation(line: 809, column: 56, scope: !3618, inlinedAt: !3631)
!3638 = !DILocation(line: 810, column: 49, scope: !3618, inlinedAt: !3631)
!3639 = !DILocation(line: 811, column: 49, scope: !3618, inlinedAt: !3631)
!3640 = !DILocation(line: 808, column: 20, scope: !3618, inlinedAt: !3631)
!3641 = !DILocation(line: 811, column: 62, scope: !3618, inlinedAt: !3631)
!3642 = !DILocation(line: 812, column: 15, scope: !3618, inlinedAt: !3631)
!3643 = !DILocation(line: 813, column: 60, scope: !3618, inlinedAt: !3631)
!3644 = !DILocation(line: 815, column: 32, scope: !3618, inlinedAt: !3631)
!3645 = !DILocation(line: 815, column: 47, scope: !3618, inlinedAt: !3631)
!3646 = !DILocation(line: 813, column: 3, scope: !3618, inlinedAt: !3631)
!3647 = !DILocation(line: 816, column: 9, scope: !3618, inlinedAt: !3631)
!3648 = !DILocation(line: 791, column: 3, scope: !3609)
!3649 = !DILocation(line: 0, scope: !3618)
!3650 = !DILocation(line: 804, column: 37, scope: !3618)
!3651 = !DILocation(line: 805, column: 21, scope: !3618)
!3652 = !DILocation(line: 807, column: 18, scope: !3618)
!3653 = !DILocation(line: 807, column: 27, scope: !3618)
!3654 = !DILocation(line: 807, column: 24, scope: !3618)
!3655 = !DILocation(line: 808, column: 72, scope: !3618)
!3656 = !DILocation(line: 809, column: 56, scope: !3618)
!3657 = !DILocation(line: 810, column: 49, scope: !3618)
!3658 = !DILocation(line: 811, column: 49, scope: !3618)
!3659 = !DILocation(line: 808, column: 20, scope: !3618)
!3660 = !DILocation(line: 811, column: 62, scope: !3618)
!3661 = !DILocation(line: 812, column: 15, scope: !3618)
!3662 = !DILocation(line: 813, column: 60, scope: !3618)
!3663 = !DILocation(line: 815, column: 32, scope: !3618)
!3664 = !DILocation(line: 815, column: 47, scope: !3618)
!3665 = !DILocation(line: 813, column: 3, scope: !3618)
!3666 = !DILocation(line: 816, column: 9, scope: !3618)
!3667 = !DILocation(line: 817, column: 7, scope: !3618)
!3668 = !DILocation(line: 818, column: 11, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3618, file: !764, line: 817, column: 7)
!3670 = !DILocation(line: 818, column: 5, scope: !3669)
!3671 = !DILocation(line: 819, column: 3, scope: !3618)
!3672 = distinct !DISubprogram(name: "quotearg_free", scope: !764, file: !764, line: 837, type: !342, scopeLine: 838, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3673)
!3673 = !{!3674, !3675}
!3674 = !DILocalVariable(name: "sv", scope: !3672, file: !764, line: 839, type: !853)
!3675 = !DILocalVariable(name: "i", scope: !3676, file: !764, line: 840, type: !63)
!3676 = distinct !DILexicalBlock(scope: !3672, file: !764, line: 840, column: 3)
!3677 = !DILocation(line: 839, column: 24, scope: !3672)
!3678 = !DILocation(line: 0, scope: !3672)
!3679 = !DILocation(line: 0, scope: !3676)
!3680 = !DILocation(line: 840, column: 21, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3676, file: !764, line: 840, column: 3)
!3682 = !DILocation(line: 840, column: 3, scope: !3676)
!3683 = !DILocation(line: 842, column: 13, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3672, file: !764, line: 842, column: 7)
!3685 = !{!3686, !1070, i64 8}
!3686 = !{!"slotvec", !1364, i64 0, !1070, i64 8}
!3687 = !DILocation(line: 842, column: 17, scope: !3684)
!3688 = !DILocation(line: 842, column: 7, scope: !3672)
!3689 = !DILocation(line: 841, column: 17, scope: !3681)
!3690 = !DILocation(line: 841, column: 5, scope: !3681)
!3691 = !DILocation(line: 840, column: 32, scope: !3681)
!3692 = distinct !{!3692, !3682, !3693, !1185}
!3693 = !DILocation(line: 841, column: 20, scope: !3676)
!3694 = !DILocation(line: 844, column: 7, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3684, file: !764, line: 843, column: 5)
!3696 = !DILocation(line: 845, column: 21, scope: !3695)
!3697 = !{!3686, !1364, i64 0}
!3698 = !DILocation(line: 846, column: 20, scope: !3695)
!3699 = !DILocation(line: 847, column: 5, scope: !3695)
!3700 = !DILocation(line: 848, column: 10, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3672, file: !764, line: 848, column: 7)
!3702 = !DILocation(line: 848, column: 7, scope: !3672)
!3703 = !DILocation(line: 850, column: 7, scope: !3704)
!3704 = distinct !DILexicalBlock(scope: !3701, file: !764, line: 849, column: 5)
!3705 = !DILocation(line: 851, column: 15, scope: !3704)
!3706 = !DILocation(line: 852, column: 5, scope: !3704)
!3707 = !DILocation(line: 853, column: 10, scope: !3672)
!3708 = !DILocation(line: 854, column: 1, scope: !3672)
!3709 = distinct !DISubprogram(name: "quotearg_n", scope: !764, file: !764, line: 919, type: !1252, scopeLine: 920, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3710)
!3710 = !{!3711, !3712}
!3711 = !DILocalVariable(name: "n", arg: 1, scope: !3709, file: !764, line: 919, type: !63)
!3712 = !DILocalVariable(name: "arg", arg: 2, scope: !3709, file: !764, line: 919, type: !100)
!3713 = !DILocation(line: 0, scope: !3709)
!3714 = !DILocation(line: 921, column: 10, scope: !3709)
!3715 = !DILocation(line: 921, column: 3, scope: !3709)
!3716 = distinct !DISubprogram(name: "quotearg_n_options", scope: !764, file: !764, line: 866, type: !3717, scopeLine: 868, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3719)
!3717 = !DISubroutineType(types: !3718)
!3718 = !{!94, !63, !100, !97, !2944}
!3719 = !{!3720, !3721, !3722, !3723, !3724, !3725, !3726, !3727, !3730, !3731, !3733, !3734, !3735}
!3720 = !DILocalVariable(name: "n", arg: 1, scope: !3716, file: !764, line: 866, type: !63)
!3721 = !DILocalVariable(name: "arg", arg: 2, scope: !3716, file: !764, line: 866, type: !100)
!3722 = !DILocalVariable(name: "argsize", arg: 3, scope: !3716, file: !764, line: 866, type: !97)
!3723 = !DILocalVariable(name: "options", arg: 4, scope: !3716, file: !764, line: 867, type: !2944)
!3724 = !DILocalVariable(name: "saved_errno", scope: !3716, file: !764, line: 869, type: !63)
!3725 = !DILocalVariable(name: "sv", scope: !3716, file: !764, line: 871, type: !853)
!3726 = !DILocalVariable(name: "nslots_max", scope: !3716, file: !764, line: 873, type: !63)
!3727 = !DILocalVariable(name: "preallocated", scope: !3728, file: !764, line: 879, type: !136)
!3728 = distinct !DILexicalBlock(scope: !3729, file: !764, line: 878, column: 5)
!3729 = distinct !DILexicalBlock(scope: !3716, file: !764, line: 877, column: 7)
!3730 = !DILocalVariable(name: "new_nslots", scope: !3728, file: !764, line: 880, type: !1022)
!3731 = !DILocalVariable(name: "size", scope: !3732, file: !764, line: 891, type: !97)
!3732 = distinct !DILexicalBlock(scope: !3716, file: !764, line: 890, column: 3)
!3733 = !DILocalVariable(name: "val", scope: !3732, file: !764, line: 892, type: !94)
!3734 = !DILocalVariable(name: "flags", scope: !3732, file: !764, line: 894, type: !63)
!3735 = !DILocalVariable(name: "qsize", scope: !3732, file: !764, line: 895, type: !97)
!3736 = distinct !DIAssignID()
!3737 = !DILocation(line: 0, scope: !3728)
!3738 = !DILocation(line: 0, scope: !3716)
!3739 = !DILocation(line: 869, column: 21, scope: !3716)
!3740 = !DILocation(line: 871, column: 24, scope: !3716)
!3741 = !DILocation(line: 874, column: 17, scope: !3742)
!3742 = distinct !DILexicalBlock(scope: !3716, file: !764, line: 874, column: 7)
!3743 = !DILocation(line: 875, column: 5, scope: !3742)
!3744 = !DILocation(line: 877, column: 7, scope: !3729)
!3745 = !DILocation(line: 877, column: 14, scope: !3729)
!3746 = !DILocation(line: 877, column: 7, scope: !3716)
!3747 = !DILocation(line: 879, column: 31, scope: !3728)
!3748 = !DILocation(line: 880, column: 7, scope: !3728)
!3749 = !DILocation(line: 880, column: 26, scope: !3728)
!3750 = !DILocation(line: 880, column: 13, scope: !3728)
!3751 = distinct !DIAssignID()
!3752 = !DILocation(line: 882, column: 31, scope: !3728)
!3753 = !DILocation(line: 883, column: 33, scope: !3728)
!3754 = !DILocation(line: 883, column: 42, scope: !3728)
!3755 = !DILocation(line: 883, column: 31, scope: !3728)
!3756 = !DILocation(line: 882, column: 22, scope: !3728)
!3757 = !DILocation(line: 882, column: 15, scope: !3728)
!3758 = !DILocation(line: 884, column: 11, scope: !3728)
!3759 = !DILocation(line: 885, column: 15, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3728, file: !764, line: 884, column: 11)
!3761 = !{i64 0, i64 8, !1363, i64 8, i64 8, !1069}
!3762 = !DILocation(line: 885, column: 9, scope: !3760)
!3763 = !DILocation(line: 886, column: 20, scope: !3728)
!3764 = !DILocation(line: 886, column: 18, scope: !3728)
!3765 = !DILocation(line: 886, column: 32, scope: !3728)
!3766 = !DILocation(line: 886, column: 43, scope: !3728)
!3767 = !DILocation(line: 886, column: 53, scope: !3728)
!3768 = !DILocation(line: 0, scope: !3161, inlinedAt: !3769)
!3769 = distinct !DILocation(line: 886, column: 7, scope: !3728)
!3770 = !DILocation(line: 59, column: 10, scope: !3161, inlinedAt: !3769)
!3771 = !DILocation(line: 887, column: 16, scope: !3728)
!3772 = !DILocation(line: 887, column: 14, scope: !3728)
!3773 = !DILocation(line: 888, column: 5, scope: !3729)
!3774 = !DILocation(line: 888, column: 5, scope: !3728)
!3775 = !DILocation(line: 891, column: 19, scope: !3732)
!3776 = !DILocation(line: 891, column: 25, scope: !3732)
!3777 = !DILocation(line: 0, scope: !3732)
!3778 = !DILocation(line: 892, column: 23, scope: !3732)
!3779 = !DILocation(line: 894, column: 26, scope: !3732)
!3780 = !DILocation(line: 894, column: 32, scope: !3732)
!3781 = !DILocation(line: 896, column: 55, scope: !3732)
!3782 = !DILocation(line: 897, column: 55, scope: !3732)
!3783 = !DILocation(line: 898, column: 55, scope: !3732)
!3784 = !DILocation(line: 899, column: 55, scope: !3732)
!3785 = !DILocation(line: 895, column: 20, scope: !3732)
!3786 = !DILocation(line: 901, column: 14, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3732, file: !764, line: 901, column: 9)
!3788 = !DILocation(line: 901, column: 9, scope: !3732)
!3789 = !DILocation(line: 903, column: 35, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3787, file: !764, line: 902, column: 7)
!3791 = !DILocation(line: 903, column: 20, scope: !3790)
!3792 = !DILocation(line: 904, column: 17, scope: !3793)
!3793 = distinct !DILexicalBlock(scope: !3790, file: !764, line: 904, column: 13)
!3794 = !DILocation(line: 904, column: 13, scope: !3790)
!3795 = !DILocation(line: 905, column: 11, scope: !3793)
!3796 = !DILocation(line: 906, column: 27, scope: !3790)
!3797 = !DILocation(line: 906, column: 19, scope: !3790)
!3798 = !DILocation(line: 907, column: 69, scope: !3790)
!3799 = !DILocation(line: 909, column: 44, scope: !3790)
!3800 = !DILocation(line: 910, column: 44, scope: !3790)
!3801 = !DILocation(line: 907, column: 9, scope: !3790)
!3802 = !DILocation(line: 911, column: 7, scope: !3790)
!3803 = !DILocation(line: 913, column: 11, scope: !3732)
!3804 = !DILocation(line: 914, column: 5, scope: !3732)
!3805 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !764, file: !764, line: 925, type: !3806, scopeLine: 926, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3808)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!94, !63, !100, !97}
!3808 = !{!3809, !3810, !3811}
!3809 = !DILocalVariable(name: "n", arg: 1, scope: !3805, file: !764, line: 925, type: !63)
!3810 = !DILocalVariable(name: "arg", arg: 2, scope: !3805, file: !764, line: 925, type: !100)
!3811 = !DILocalVariable(name: "argsize", arg: 3, scope: !3805, file: !764, line: 925, type: !97)
!3812 = !DILocation(line: 0, scope: !3805)
!3813 = !DILocation(line: 927, column: 10, scope: !3805)
!3814 = !DILocation(line: 927, column: 3, scope: !3805)
!3815 = distinct !DISubprogram(name: "quotearg", scope: !764, file: !764, line: 931, type: !1261, scopeLine: 932, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3816)
!3816 = !{!3817}
!3817 = !DILocalVariable(name: "arg", arg: 1, scope: !3815, file: !764, line: 931, type: !100)
!3818 = !DILocation(line: 0, scope: !3815)
!3819 = !DILocation(line: 0, scope: !3709, inlinedAt: !3820)
!3820 = distinct !DILocation(line: 933, column: 10, scope: !3815)
!3821 = !DILocation(line: 921, column: 10, scope: !3709, inlinedAt: !3820)
!3822 = !DILocation(line: 933, column: 3, scope: !3815)
!3823 = distinct !DISubprogram(name: "quotearg_mem", scope: !764, file: !764, line: 937, type: !3824, scopeLine: 938, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3826)
!3824 = !DISubroutineType(types: !3825)
!3825 = !{!94, !100, !97}
!3826 = !{!3827, !3828}
!3827 = !DILocalVariable(name: "arg", arg: 1, scope: !3823, file: !764, line: 937, type: !100)
!3828 = !DILocalVariable(name: "argsize", arg: 2, scope: !3823, file: !764, line: 937, type: !97)
!3829 = !DILocation(line: 0, scope: !3823)
!3830 = !DILocation(line: 0, scope: !3805, inlinedAt: !3831)
!3831 = distinct !DILocation(line: 939, column: 10, scope: !3823)
!3832 = !DILocation(line: 927, column: 10, scope: !3805, inlinedAt: !3831)
!3833 = !DILocation(line: 939, column: 3, scope: !3823)
!3834 = distinct !DISubprogram(name: "quotearg_n_style", scope: !764, file: !764, line: 943, type: !3835, scopeLine: 944, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3837)
!3835 = !DISubroutineType(types: !3836)
!3836 = !{!94, !63, !790, !100}
!3837 = !{!3838, !3839, !3840, !3841}
!3838 = !DILocalVariable(name: "n", arg: 1, scope: !3834, file: !764, line: 943, type: !63)
!3839 = !DILocalVariable(name: "s", arg: 2, scope: !3834, file: !764, line: 943, type: !790)
!3840 = !DILocalVariable(name: "arg", arg: 3, scope: !3834, file: !764, line: 943, type: !100)
!3841 = !DILocalVariable(name: "o", scope: !3834, file: !764, line: 945, type: !2945)
!3842 = distinct !DIAssignID()
!3843 = !DILocation(line: 0, scope: !3834)
!3844 = !DILocation(line: 945, column: 3, scope: !3834)
!3845 = !{!3846}
!3846 = distinct !{!3846, !3847, !"quoting_options_from_style: argument 0"}
!3847 = distinct !{!3847, !"quoting_options_from_style"}
!3848 = !DILocation(line: 945, column: 36, scope: !3834)
!3849 = !DILocalVariable(name: "style", arg: 1, scope: !3850, file: !764, line: 183, type: !790)
!3850 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !764, file: !764, line: 183, type: !3851, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3853)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!805, !790}
!3853 = !{!3849, !3854}
!3854 = !DILocalVariable(name: "o", scope: !3850, file: !764, line: 185, type: !805)
!3855 = !DILocation(line: 0, scope: !3850, inlinedAt: !3856)
!3856 = distinct !DILocation(line: 945, column: 36, scope: !3834)
!3857 = !DILocation(line: 185, column: 26, scope: !3850, inlinedAt: !3856)
!3858 = distinct !DIAssignID()
!3859 = !DILocation(line: 186, column: 13, scope: !3860, inlinedAt: !3856)
!3860 = distinct !DILexicalBlock(scope: !3850, file: !764, line: 186, column: 7)
!3861 = !DILocation(line: 186, column: 7, scope: !3850, inlinedAt: !3856)
!3862 = !DILocation(line: 187, column: 5, scope: !3860, inlinedAt: !3856)
!3863 = !DILocation(line: 188, column: 11, scope: !3850, inlinedAt: !3856)
!3864 = distinct !DIAssignID()
!3865 = !DILocation(line: 946, column: 10, scope: !3834)
!3866 = !DILocation(line: 947, column: 1, scope: !3834)
!3867 = !DILocation(line: 946, column: 3, scope: !3834)
!3868 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !764, file: !764, line: 950, type: !3869, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3871)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!94, !63, !790, !100, !97}
!3871 = !{!3872, !3873, !3874, !3875, !3876}
!3872 = !DILocalVariable(name: "n", arg: 1, scope: !3868, file: !764, line: 950, type: !63)
!3873 = !DILocalVariable(name: "s", arg: 2, scope: !3868, file: !764, line: 950, type: !790)
!3874 = !DILocalVariable(name: "arg", arg: 3, scope: !3868, file: !764, line: 951, type: !100)
!3875 = !DILocalVariable(name: "argsize", arg: 4, scope: !3868, file: !764, line: 951, type: !97)
!3876 = !DILocalVariable(name: "o", scope: !3868, file: !764, line: 953, type: !2945)
!3877 = distinct !DIAssignID()
!3878 = !DILocation(line: 0, scope: !3868)
!3879 = !DILocation(line: 953, column: 3, scope: !3868)
!3880 = !{!3881}
!3881 = distinct !{!3881, !3882, !"quoting_options_from_style: argument 0"}
!3882 = distinct !{!3882, !"quoting_options_from_style"}
!3883 = !DILocation(line: 953, column: 36, scope: !3868)
!3884 = !DILocation(line: 0, scope: !3850, inlinedAt: !3885)
!3885 = distinct !DILocation(line: 953, column: 36, scope: !3868)
!3886 = !DILocation(line: 185, column: 26, scope: !3850, inlinedAt: !3885)
!3887 = distinct !DIAssignID()
!3888 = !DILocation(line: 186, column: 13, scope: !3860, inlinedAt: !3885)
!3889 = !DILocation(line: 186, column: 7, scope: !3850, inlinedAt: !3885)
!3890 = !DILocation(line: 187, column: 5, scope: !3860, inlinedAt: !3885)
!3891 = !DILocation(line: 188, column: 11, scope: !3850, inlinedAt: !3885)
!3892 = distinct !DIAssignID()
!3893 = !DILocation(line: 954, column: 10, scope: !3868)
!3894 = !DILocation(line: 955, column: 1, scope: !3868)
!3895 = !DILocation(line: 954, column: 3, scope: !3868)
!3896 = distinct !DISubprogram(name: "quotearg_style", scope: !764, file: !764, line: 958, type: !3897, scopeLine: 959, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3899)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{!94, !790, !100}
!3899 = !{!3900, !3901}
!3900 = !DILocalVariable(name: "s", arg: 1, scope: !3896, file: !764, line: 958, type: !790)
!3901 = !DILocalVariable(name: "arg", arg: 2, scope: !3896, file: !764, line: 958, type: !100)
!3902 = distinct !DIAssignID()
!3903 = !DILocation(line: 0, scope: !3896)
!3904 = !DILocation(line: 0, scope: !3834, inlinedAt: !3905)
!3905 = distinct !DILocation(line: 960, column: 10, scope: !3896)
!3906 = !DILocation(line: 945, column: 3, scope: !3834, inlinedAt: !3905)
!3907 = !{!3908}
!3908 = distinct !{!3908, !3909, !"quoting_options_from_style: argument 0"}
!3909 = distinct !{!3909, !"quoting_options_from_style"}
!3910 = !DILocation(line: 945, column: 36, scope: !3834, inlinedAt: !3905)
!3911 = !DILocation(line: 0, scope: !3850, inlinedAt: !3912)
!3912 = distinct !DILocation(line: 945, column: 36, scope: !3834, inlinedAt: !3905)
!3913 = !DILocation(line: 185, column: 26, scope: !3850, inlinedAt: !3912)
!3914 = distinct !DIAssignID()
!3915 = !DILocation(line: 186, column: 13, scope: !3860, inlinedAt: !3912)
!3916 = !DILocation(line: 186, column: 7, scope: !3850, inlinedAt: !3912)
!3917 = !DILocation(line: 187, column: 5, scope: !3860, inlinedAt: !3912)
!3918 = !DILocation(line: 188, column: 11, scope: !3850, inlinedAt: !3912)
!3919 = distinct !DIAssignID()
!3920 = !DILocation(line: 946, column: 10, scope: !3834, inlinedAt: !3905)
!3921 = !DILocation(line: 947, column: 1, scope: !3834, inlinedAt: !3905)
!3922 = !DILocation(line: 960, column: 3, scope: !3896)
!3923 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !764, file: !764, line: 964, type: !3924, scopeLine: 965, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3926)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!94, !790, !100, !97}
!3926 = !{!3927, !3928, !3929}
!3927 = !DILocalVariable(name: "s", arg: 1, scope: !3923, file: !764, line: 964, type: !790)
!3928 = !DILocalVariable(name: "arg", arg: 2, scope: !3923, file: !764, line: 964, type: !100)
!3929 = !DILocalVariable(name: "argsize", arg: 3, scope: !3923, file: !764, line: 964, type: !97)
!3930 = distinct !DIAssignID()
!3931 = !DILocation(line: 0, scope: !3923)
!3932 = !DILocation(line: 0, scope: !3868, inlinedAt: !3933)
!3933 = distinct !DILocation(line: 966, column: 10, scope: !3923)
!3934 = !DILocation(line: 953, column: 3, scope: !3868, inlinedAt: !3933)
!3935 = !{!3936}
!3936 = distinct !{!3936, !3937, !"quoting_options_from_style: argument 0"}
!3937 = distinct !{!3937, !"quoting_options_from_style"}
!3938 = !DILocation(line: 953, column: 36, scope: !3868, inlinedAt: !3933)
!3939 = !DILocation(line: 0, scope: !3850, inlinedAt: !3940)
!3940 = distinct !DILocation(line: 953, column: 36, scope: !3868, inlinedAt: !3933)
!3941 = !DILocation(line: 185, column: 26, scope: !3850, inlinedAt: !3940)
!3942 = distinct !DIAssignID()
!3943 = !DILocation(line: 186, column: 13, scope: !3860, inlinedAt: !3940)
!3944 = !DILocation(line: 186, column: 7, scope: !3850, inlinedAt: !3940)
!3945 = !DILocation(line: 187, column: 5, scope: !3860, inlinedAt: !3940)
!3946 = !DILocation(line: 188, column: 11, scope: !3850, inlinedAt: !3940)
!3947 = distinct !DIAssignID()
!3948 = !DILocation(line: 954, column: 10, scope: !3868, inlinedAt: !3933)
!3949 = !DILocation(line: 955, column: 1, scope: !3868, inlinedAt: !3933)
!3950 = !DILocation(line: 966, column: 3, scope: !3923)
!3951 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !764, file: !764, line: 970, type: !3952, scopeLine: 971, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3954)
!3952 = !DISubroutineType(types: !3953)
!3953 = !{!94, !100, !97, !4}
!3954 = !{!3955, !3956, !3957, !3958}
!3955 = !DILocalVariable(name: "arg", arg: 1, scope: !3951, file: !764, line: 970, type: !100)
!3956 = !DILocalVariable(name: "argsize", arg: 2, scope: !3951, file: !764, line: 970, type: !97)
!3957 = !DILocalVariable(name: "ch", arg: 3, scope: !3951, file: !764, line: 970, type: !4)
!3958 = !DILocalVariable(name: "options", scope: !3951, file: !764, line: 972, type: !805)
!3959 = distinct !DIAssignID()
!3960 = !DILocation(line: 0, scope: !3951)
!3961 = !DILocation(line: 972, column: 3, scope: !3951)
!3962 = !DILocation(line: 973, column: 13, scope: !3951)
!3963 = !{i64 0, i64 4, !1138, i64 4, i64 4, !1138, i64 8, i64 32, !1147, i64 40, i64 8, !1069, i64 48, i64 8, !1069}
!3964 = distinct !DIAssignID()
!3965 = !DILocation(line: 0, scope: !2964, inlinedAt: !3966)
!3966 = distinct !DILocation(line: 974, column: 3, scope: !3951)
!3967 = !DILocation(line: 147, column: 41, scope: !2964, inlinedAt: !3966)
!3968 = !DILocation(line: 147, column: 62, scope: !2964, inlinedAt: !3966)
!3969 = !DILocation(line: 147, column: 57, scope: !2964, inlinedAt: !3966)
!3970 = !DILocation(line: 148, column: 15, scope: !2964, inlinedAt: !3966)
!3971 = !DILocation(line: 149, column: 21, scope: !2964, inlinedAt: !3966)
!3972 = !DILocation(line: 149, column: 24, scope: !2964, inlinedAt: !3966)
!3973 = !DILocation(line: 150, column: 19, scope: !2964, inlinedAt: !3966)
!3974 = !DILocation(line: 150, column: 24, scope: !2964, inlinedAt: !3966)
!3975 = !DILocation(line: 150, column: 6, scope: !2964, inlinedAt: !3966)
!3976 = !DILocation(line: 975, column: 10, scope: !3951)
!3977 = !DILocation(line: 976, column: 1, scope: !3951)
!3978 = !DILocation(line: 975, column: 3, scope: !3951)
!3979 = distinct !DISubprogram(name: "quotearg_char", scope: !764, file: !764, line: 979, type: !3980, scopeLine: 980, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !3982)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!94, !100, !4}
!3982 = !{!3983, !3984}
!3983 = !DILocalVariable(name: "arg", arg: 1, scope: !3979, file: !764, line: 979, type: !100)
!3984 = !DILocalVariable(name: "ch", arg: 2, scope: !3979, file: !764, line: 979, type: !4)
!3985 = distinct !DIAssignID()
!3986 = !DILocation(line: 0, scope: !3979)
!3987 = !DILocation(line: 0, scope: !3951, inlinedAt: !3988)
!3988 = distinct !DILocation(line: 981, column: 10, scope: !3979)
!3989 = !DILocation(line: 972, column: 3, scope: !3951, inlinedAt: !3988)
!3990 = !DILocation(line: 973, column: 13, scope: !3951, inlinedAt: !3988)
!3991 = distinct !DIAssignID()
!3992 = !DILocation(line: 0, scope: !2964, inlinedAt: !3993)
!3993 = distinct !DILocation(line: 974, column: 3, scope: !3951, inlinedAt: !3988)
!3994 = !DILocation(line: 147, column: 41, scope: !2964, inlinedAt: !3993)
!3995 = !DILocation(line: 147, column: 62, scope: !2964, inlinedAt: !3993)
!3996 = !DILocation(line: 147, column: 57, scope: !2964, inlinedAt: !3993)
!3997 = !DILocation(line: 148, column: 15, scope: !2964, inlinedAt: !3993)
!3998 = !DILocation(line: 149, column: 21, scope: !2964, inlinedAt: !3993)
!3999 = !DILocation(line: 149, column: 24, scope: !2964, inlinedAt: !3993)
!4000 = !DILocation(line: 150, column: 19, scope: !2964, inlinedAt: !3993)
!4001 = !DILocation(line: 150, column: 24, scope: !2964, inlinedAt: !3993)
!4002 = !DILocation(line: 150, column: 6, scope: !2964, inlinedAt: !3993)
!4003 = !DILocation(line: 975, column: 10, scope: !3951, inlinedAt: !3988)
!4004 = !DILocation(line: 976, column: 1, scope: !3951, inlinedAt: !3988)
!4005 = !DILocation(line: 981, column: 3, scope: !3979)
!4006 = distinct !DISubprogram(name: "quotearg_colon", scope: !764, file: !764, line: 985, type: !1261, scopeLine: 986, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4007)
!4007 = !{!4008}
!4008 = !DILocalVariable(name: "arg", arg: 1, scope: !4006, file: !764, line: 985, type: !100)
!4009 = distinct !DIAssignID()
!4010 = !DILocation(line: 0, scope: !4006)
!4011 = !DILocation(line: 0, scope: !3979, inlinedAt: !4012)
!4012 = distinct !DILocation(line: 987, column: 10, scope: !4006)
!4013 = !DILocation(line: 0, scope: !3951, inlinedAt: !4014)
!4014 = distinct !DILocation(line: 981, column: 10, scope: !3979, inlinedAt: !4012)
!4015 = !DILocation(line: 972, column: 3, scope: !3951, inlinedAt: !4014)
!4016 = !DILocation(line: 973, column: 13, scope: !3951, inlinedAt: !4014)
!4017 = distinct !DIAssignID()
!4018 = !DILocation(line: 0, scope: !2964, inlinedAt: !4019)
!4019 = distinct !DILocation(line: 974, column: 3, scope: !3951, inlinedAt: !4014)
!4020 = !DILocation(line: 147, column: 57, scope: !2964, inlinedAt: !4019)
!4021 = !DILocation(line: 149, column: 21, scope: !2964, inlinedAt: !4019)
!4022 = !DILocation(line: 150, column: 6, scope: !2964, inlinedAt: !4019)
!4023 = !DILocation(line: 975, column: 10, scope: !3951, inlinedAt: !4014)
!4024 = !DILocation(line: 976, column: 1, scope: !3951, inlinedAt: !4014)
!4025 = !DILocation(line: 987, column: 3, scope: !4006)
!4026 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !764, file: !764, line: 991, type: !3824, scopeLine: 992, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4027)
!4027 = !{!4028, !4029}
!4028 = !DILocalVariable(name: "arg", arg: 1, scope: !4026, file: !764, line: 991, type: !100)
!4029 = !DILocalVariable(name: "argsize", arg: 2, scope: !4026, file: !764, line: 991, type: !97)
!4030 = distinct !DIAssignID()
!4031 = !DILocation(line: 0, scope: !4026)
!4032 = !DILocation(line: 0, scope: !3951, inlinedAt: !4033)
!4033 = distinct !DILocation(line: 993, column: 10, scope: !4026)
!4034 = !DILocation(line: 972, column: 3, scope: !3951, inlinedAt: !4033)
!4035 = !DILocation(line: 973, column: 13, scope: !3951, inlinedAt: !4033)
!4036 = distinct !DIAssignID()
!4037 = !DILocation(line: 0, scope: !2964, inlinedAt: !4038)
!4038 = distinct !DILocation(line: 974, column: 3, scope: !3951, inlinedAt: !4033)
!4039 = !DILocation(line: 147, column: 57, scope: !2964, inlinedAt: !4038)
!4040 = !DILocation(line: 149, column: 21, scope: !2964, inlinedAt: !4038)
!4041 = !DILocation(line: 150, column: 6, scope: !2964, inlinedAt: !4038)
!4042 = !DILocation(line: 975, column: 10, scope: !3951, inlinedAt: !4033)
!4043 = !DILocation(line: 976, column: 1, scope: !3951, inlinedAt: !4033)
!4044 = !DILocation(line: 993, column: 3, scope: !4026)
!4045 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !764, file: !764, line: 997, type: !3835, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4046)
!4046 = !{!4047, !4048, !4049, !4050}
!4047 = !DILocalVariable(name: "n", arg: 1, scope: !4045, file: !764, line: 997, type: !63)
!4048 = !DILocalVariable(name: "s", arg: 2, scope: !4045, file: !764, line: 997, type: !790)
!4049 = !DILocalVariable(name: "arg", arg: 3, scope: !4045, file: !764, line: 997, type: !100)
!4050 = !DILocalVariable(name: "options", scope: !4045, file: !764, line: 999, type: !805)
!4051 = distinct !DIAssignID()
!4052 = !DILocation(line: 0, scope: !4045)
!4053 = !DILocation(line: 185, column: 26, scope: !3850, inlinedAt: !4054)
!4054 = distinct !DILocation(line: 1000, column: 13, scope: !4045)
!4055 = !DILocation(line: 999, column: 3, scope: !4045)
!4056 = !DILocation(line: 0, scope: !3850, inlinedAt: !4054)
!4057 = !DILocation(line: 186, column: 13, scope: !3860, inlinedAt: !4054)
!4058 = !DILocation(line: 186, column: 7, scope: !3850, inlinedAt: !4054)
!4059 = !DILocation(line: 187, column: 5, scope: !3860, inlinedAt: !4054)
!4060 = !{!4061}
!4061 = distinct !{!4061, !4062, !"quoting_options_from_style: argument 0"}
!4062 = distinct !{!4062, !"quoting_options_from_style"}
!4063 = !DILocation(line: 1000, column: 13, scope: !4045)
!4064 = distinct !DIAssignID()
!4065 = distinct !DIAssignID()
!4066 = !DILocation(line: 0, scope: !2964, inlinedAt: !4067)
!4067 = distinct !DILocation(line: 1001, column: 3, scope: !4045)
!4068 = !DILocation(line: 147, column: 57, scope: !2964, inlinedAt: !4067)
!4069 = !DILocation(line: 149, column: 21, scope: !2964, inlinedAt: !4067)
!4070 = !DILocation(line: 150, column: 6, scope: !2964, inlinedAt: !4067)
!4071 = distinct !DIAssignID()
!4072 = !DILocation(line: 1002, column: 10, scope: !4045)
!4073 = !DILocation(line: 1003, column: 1, scope: !4045)
!4074 = !DILocation(line: 1002, column: 3, scope: !4045)
!4075 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !764, file: !764, line: 1006, type: !4076, scopeLine: 1008, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4078)
!4076 = !DISubroutineType(types: !4077)
!4077 = !{!94, !63, !100, !100, !100}
!4078 = !{!4079, !4080, !4081, !4082}
!4079 = !DILocalVariable(name: "n", arg: 1, scope: !4075, file: !764, line: 1006, type: !63)
!4080 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4075, file: !764, line: 1006, type: !100)
!4081 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4075, file: !764, line: 1007, type: !100)
!4082 = !DILocalVariable(name: "arg", arg: 4, scope: !4075, file: !764, line: 1007, type: !100)
!4083 = distinct !DIAssignID()
!4084 = !DILocation(line: 0, scope: !4075)
!4085 = !DILocalVariable(name: "o", scope: !4086, file: !764, line: 1018, type: !805)
!4086 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !764, file: !764, line: 1014, type: !4087, scopeLine: 1017, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4089)
!4087 = !DISubroutineType(types: !4088)
!4088 = !{!94, !63, !100, !100, !100, !97}
!4089 = !{!4090, !4091, !4092, !4093, !4094, !4085}
!4090 = !DILocalVariable(name: "n", arg: 1, scope: !4086, file: !764, line: 1014, type: !63)
!4091 = !DILocalVariable(name: "left_quote", arg: 2, scope: !4086, file: !764, line: 1014, type: !100)
!4092 = !DILocalVariable(name: "right_quote", arg: 3, scope: !4086, file: !764, line: 1015, type: !100)
!4093 = !DILocalVariable(name: "arg", arg: 4, scope: !4086, file: !764, line: 1016, type: !100)
!4094 = !DILocalVariable(name: "argsize", arg: 5, scope: !4086, file: !764, line: 1016, type: !97)
!4095 = !DILocation(line: 0, scope: !4086, inlinedAt: !4096)
!4096 = distinct !DILocation(line: 1009, column: 10, scope: !4075)
!4097 = !DILocation(line: 1018, column: 3, scope: !4086, inlinedAt: !4096)
!4098 = !DILocation(line: 1018, column: 30, scope: !4086, inlinedAt: !4096)
!4099 = distinct !DIAssignID()
!4100 = distinct !DIAssignID()
!4101 = !DILocation(line: 0, scope: !3004, inlinedAt: !4102)
!4102 = distinct !DILocation(line: 1019, column: 3, scope: !4086, inlinedAt: !4096)
!4103 = !DILocation(line: 174, column: 12, scope: !3004, inlinedAt: !4102)
!4104 = distinct !DIAssignID()
!4105 = !DILocation(line: 175, column: 8, scope: !3017, inlinedAt: !4102)
!4106 = !DILocation(line: 175, column: 19, scope: !3017, inlinedAt: !4102)
!4107 = !DILocation(line: 176, column: 5, scope: !3017, inlinedAt: !4102)
!4108 = !DILocation(line: 177, column: 6, scope: !3004, inlinedAt: !4102)
!4109 = !DILocation(line: 177, column: 17, scope: !3004, inlinedAt: !4102)
!4110 = distinct !DIAssignID()
!4111 = !DILocation(line: 178, column: 6, scope: !3004, inlinedAt: !4102)
!4112 = !DILocation(line: 178, column: 18, scope: !3004, inlinedAt: !4102)
!4113 = distinct !DIAssignID()
!4114 = !DILocation(line: 1020, column: 10, scope: !4086, inlinedAt: !4096)
!4115 = !DILocation(line: 1021, column: 1, scope: !4086, inlinedAt: !4096)
!4116 = !DILocation(line: 1009, column: 3, scope: !4075)
!4117 = distinct !DIAssignID()
!4118 = !DILocation(line: 0, scope: !4086)
!4119 = !DILocation(line: 1018, column: 3, scope: !4086)
!4120 = !DILocation(line: 1018, column: 30, scope: !4086)
!4121 = distinct !DIAssignID()
!4122 = distinct !DIAssignID()
!4123 = !DILocation(line: 0, scope: !3004, inlinedAt: !4124)
!4124 = distinct !DILocation(line: 1019, column: 3, scope: !4086)
!4125 = !DILocation(line: 174, column: 12, scope: !3004, inlinedAt: !4124)
!4126 = distinct !DIAssignID()
!4127 = !DILocation(line: 175, column: 8, scope: !3017, inlinedAt: !4124)
!4128 = !DILocation(line: 175, column: 19, scope: !3017, inlinedAt: !4124)
!4129 = !DILocation(line: 176, column: 5, scope: !3017, inlinedAt: !4124)
!4130 = !DILocation(line: 177, column: 6, scope: !3004, inlinedAt: !4124)
!4131 = !DILocation(line: 177, column: 17, scope: !3004, inlinedAt: !4124)
!4132 = distinct !DIAssignID()
!4133 = !DILocation(line: 178, column: 6, scope: !3004, inlinedAt: !4124)
!4134 = !DILocation(line: 178, column: 18, scope: !3004, inlinedAt: !4124)
!4135 = distinct !DIAssignID()
!4136 = !DILocation(line: 1020, column: 10, scope: !4086)
!4137 = !DILocation(line: 1021, column: 1, scope: !4086)
!4138 = !DILocation(line: 1020, column: 3, scope: !4086)
!4139 = distinct !DISubprogram(name: "quotearg_custom", scope: !764, file: !764, line: 1024, type: !4140, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4142)
!4140 = !DISubroutineType(types: !4141)
!4141 = !{!94, !100, !100, !100}
!4142 = !{!4143, !4144, !4145}
!4143 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4139, file: !764, line: 1024, type: !100)
!4144 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4139, file: !764, line: 1024, type: !100)
!4145 = !DILocalVariable(name: "arg", arg: 3, scope: !4139, file: !764, line: 1025, type: !100)
!4146 = distinct !DIAssignID()
!4147 = !DILocation(line: 0, scope: !4139)
!4148 = !DILocation(line: 0, scope: !4075, inlinedAt: !4149)
!4149 = distinct !DILocation(line: 1027, column: 10, scope: !4139)
!4150 = !DILocation(line: 0, scope: !4086, inlinedAt: !4151)
!4151 = distinct !DILocation(line: 1009, column: 10, scope: !4075, inlinedAt: !4149)
!4152 = !DILocation(line: 1018, column: 3, scope: !4086, inlinedAt: !4151)
!4153 = !DILocation(line: 1018, column: 30, scope: !4086, inlinedAt: !4151)
!4154 = distinct !DIAssignID()
!4155 = distinct !DIAssignID()
!4156 = !DILocation(line: 0, scope: !3004, inlinedAt: !4157)
!4157 = distinct !DILocation(line: 1019, column: 3, scope: !4086, inlinedAt: !4151)
!4158 = !DILocation(line: 174, column: 12, scope: !3004, inlinedAt: !4157)
!4159 = distinct !DIAssignID()
!4160 = !DILocation(line: 175, column: 8, scope: !3017, inlinedAt: !4157)
!4161 = !DILocation(line: 175, column: 19, scope: !3017, inlinedAt: !4157)
!4162 = !DILocation(line: 176, column: 5, scope: !3017, inlinedAt: !4157)
!4163 = !DILocation(line: 177, column: 6, scope: !3004, inlinedAt: !4157)
!4164 = !DILocation(line: 177, column: 17, scope: !3004, inlinedAt: !4157)
!4165 = distinct !DIAssignID()
!4166 = !DILocation(line: 178, column: 6, scope: !3004, inlinedAt: !4157)
!4167 = !DILocation(line: 178, column: 18, scope: !3004, inlinedAt: !4157)
!4168 = distinct !DIAssignID()
!4169 = !DILocation(line: 1020, column: 10, scope: !4086, inlinedAt: !4151)
!4170 = !DILocation(line: 1021, column: 1, scope: !4086, inlinedAt: !4151)
!4171 = !DILocation(line: 1027, column: 3, scope: !4139)
!4172 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !764, file: !764, line: 1031, type: !4173, scopeLine: 1033, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4175)
!4173 = !DISubroutineType(types: !4174)
!4174 = !{!94, !100, !100, !100, !97}
!4175 = !{!4176, !4177, !4178, !4179}
!4176 = !DILocalVariable(name: "left_quote", arg: 1, scope: !4172, file: !764, line: 1031, type: !100)
!4177 = !DILocalVariable(name: "right_quote", arg: 2, scope: !4172, file: !764, line: 1031, type: !100)
!4178 = !DILocalVariable(name: "arg", arg: 3, scope: !4172, file: !764, line: 1032, type: !100)
!4179 = !DILocalVariable(name: "argsize", arg: 4, scope: !4172, file: !764, line: 1032, type: !97)
!4180 = distinct !DIAssignID()
!4181 = !DILocation(line: 0, scope: !4172)
!4182 = !DILocation(line: 0, scope: !4086, inlinedAt: !4183)
!4183 = distinct !DILocation(line: 1034, column: 10, scope: !4172)
!4184 = !DILocation(line: 1018, column: 3, scope: !4086, inlinedAt: !4183)
!4185 = !DILocation(line: 1018, column: 30, scope: !4086, inlinedAt: !4183)
!4186 = distinct !DIAssignID()
!4187 = distinct !DIAssignID()
!4188 = !DILocation(line: 0, scope: !3004, inlinedAt: !4189)
!4189 = distinct !DILocation(line: 1019, column: 3, scope: !4086, inlinedAt: !4183)
!4190 = !DILocation(line: 174, column: 12, scope: !3004, inlinedAt: !4189)
!4191 = distinct !DIAssignID()
!4192 = !DILocation(line: 175, column: 8, scope: !3017, inlinedAt: !4189)
!4193 = !DILocation(line: 175, column: 19, scope: !3017, inlinedAt: !4189)
!4194 = !DILocation(line: 176, column: 5, scope: !3017, inlinedAt: !4189)
!4195 = !DILocation(line: 177, column: 6, scope: !3004, inlinedAt: !4189)
!4196 = !DILocation(line: 177, column: 17, scope: !3004, inlinedAt: !4189)
!4197 = distinct !DIAssignID()
!4198 = !DILocation(line: 178, column: 6, scope: !3004, inlinedAt: !4189)
!4199 = !DILocation(line: 178, column: 18, scope: !3004, inlinedAt: !4189)
!4200 = distinct !DIAssignID()
!4201 = !DILocation(line: 1020, column: 10, scope: !4086, inlinedAt: !4183)
!4202 = !DILocation(line: 1021, column: 1, scope: !4086, inlinedAt: !4183)
!4203 = !DILocation(line: 1034, column: 3, scope: !4172)
!4204 = distinct !DISubprogram(name: "quote_n_mem", scope: !764, file: !764, line: 1049, type: !4205, scopeLine: 1050, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4207)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!100, !63, !100, !97}
!4207 = !{!4208, !4209, !4210}
!4208 = !DILocalVariable(name: "n", arg: 1, scope: !4204, file: !764, line: 1049, type: !63)
!4209 = !DILocalVariable(name: "arg", arg: 2, scope: !4204, file: !764, line: 1049, type: !100)
!4210 = !DILocalVariable(name: "argsize", arg: 3, scope: !4204, file: !764, line: 1049, type: !97)
!4211 = !DILocation(line: 0, scope: !4204)
!4212 = !DILocation(line: 1051, column: 10, scope: !4204)
!4213 = !DILocation(line: 1051, column: 3, scope: !4204)
!4214 = distinct !DISubprogram(name: "quote_mem", scope: !764, file: !764, line: 1055, type: !4215, scopeLine: 1056, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4217)
!4215 = !DISubroutineType(types: !4216)
!4216 = !{!100, !100, !97}
!4217 = !{!4218, !4219}
!4218 = !DILocalVariable(name: "arg", arg: 1, scope: !4214, file: !764, line: 1055, type: !100)
!4219 = !DILocalVariable(name: "argsize", arg: 2, scope: !4214, file: !764, line: 1055, type: !97)
!4220 = !DILocation(line: 0, scope: !4214)
!4221 = !DILocation(line: 0, scope: !4204, inlinedAt: !4222)
!4222 = distinct !DILocation(line: 1057, column: 10, scope: !4214)
!4223 = !DILocation(line: 1051, column: 10, scope: !4204, inlinedAt: !4222)
!4224 = !DILocation(line: 1057, column: 3, scope: !4214)
!4225 = distinct !DISubprogram(name: "quote_n", scope: !764, file: !764, line: 1061, type: !4226, scopeLine: 1062, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4228)
!4226 = !DISubroutineType(types: !4227)
!4227 = !{!100, !63, !100}
!4228 = !{!4229, !4230}
!4229 = !DILocalVariable(name: "n", arg: 1, scope: !4225, file: !764, line: 1061, type: !63)
!4230 = !DILocalVariable(name: "arg", arg: 2, scope: !4225, file: !764, line: 1061, type: !100)
!4231 = !DILocation(line: 0, scope: !4225)
!4232 = !DILocation(line: 0, scope: !4204, inlinedAt: !4233)
!4233 = distinct !DILocation(line: 1063, column: 10, scope: !4225)
!4234 = !DILocation(line: 1051, column: 10, scope: !4204, inlinedAt: !4233)
!4235 = !DILocation(line: 1063, column: 3, scope: !4225)
!4236 = distinct !DISubprogram(name: "quote", scope: !764, file: !764, line: 1067, type: !4237, scopeLine: 1068, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !788, retainedNodes: !4239)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!100, !100}
!4239 = !{!4240}
!4240 = !DILocalVariable(name: "arg", arg: 1, scope: !4236, file: !764, line: 1067, type: !100)
!4241 = !DILocation(line: 0, scope: !4236)
!4242 = !DILocation(line: 0, scope: !4225, inlinedAt: !4243)
!4243 = distinct !DILocation(line: 1069, column: 10, scope: !4236)
!4244 = !DILocation(line: 0, scope: !4204, inlinedAt: !4245)
!4245 = distinct !DILocation(line: 1063, column: 10, scope: !4225, inlinedAt: !4243)
!4246 = !DILocation(line: 1051, column: 10, scope: !4204, inlinedAt: !4245)
!4247 = !DILocation(line: 1069, column: 3, scope: !4236)
!4248 = distinct !DISubprogram(name: "version_etc_arn", scope: !866, file: !866, line: 61, type: !4249, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !996, retainedNodes: !4286)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{null, !4251, !100, !100, !100, !4285, !97}
!4251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4252, size: 64)
!4252 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !4253)
!4253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !4254)
!4254 = !{!4255, !4256, !4257, !4258, !4259, !4260, !4261, !4262, !4263, !4264, !4265, !4266, !4267, !4268, !4270, !4271, !4272, !4273, !4274, !4275, !4276, !4277, !4278, !4279, !4280, !4281, !4282, !4283, !4284}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4253, file: !153, line: 51, baseType: !63, size: 32)
!4256 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4253, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!4257 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4253, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!4258 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4253, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!4259 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4253, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!4260 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4253, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4253, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!4262 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4253, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!4263 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4253, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!4264 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4253, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4253, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4253, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!4267 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4253, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!4268 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4253, file: !153, line: 70, baseType: !4269, size: 64, offset: 832)
!4269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4253, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!4271 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4253, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!4272 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4253, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!4273 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4253, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!4274 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4253, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!4275 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4253, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4253, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!4277 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4253, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!4278 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4253, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!4279 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4253, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4253, file: !153, line: 93, baseType: !4269, size: 64, offset: 1344)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4253, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4253, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4253, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4253, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!4285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!4286 = !{!4287, !4288, !4289, !4290, !4291, !4292}
!4287 = !DILocalVariable(name: "stream", arg: 1, scope: !4248, file: !866, line: 61, type: !4251)
!4288 = !DILocalVariable(name: "command_name", arg: 2, scope: !4248, file: !866, line: 62, type: !100)
!4289 = !DILocalVariable(name: "package", arg: 3, scope: !4248, file: !866, line: 62, type: !100)
!4290 = !DILocalVariable(name: "version", arg: 4, scope: !4248, file: !866, line: 63, type: !100)
!4291 = !DILocalVariable(name: "authors", arg: 5, scope: !4248, file: !866, line: 64, type: !4285)
!4292 = !DILocalVariable(name: "n_authors", arg: 6, scope: !4248, file: !866, line: 64, type: !97)
!4293 = !DILocation(line: 0, scope: !4248)
!4294 = !DILocation(line: 66, column: 7, scope: !4295)
!4295 = distinct !DILexicalBlock(scope: !4248, file: !866, line: 66, column: 7)
!4296 = !DILocation(line: 66, column: 7, scope: !4248)
!4297 = !DILocation(line: 67, column: 5, scope: !4295)
!4298 = !DILocation(line: 69, column: 5, scope: !4295)
!4299 = !DILocation(line: 83, column: 3, scope: !4248)
!4300 = !DILocation(line: 85, column: 3, scope: !4248)
!4301 = !DILocation(line: 88, column: 3, scope: !4248)
!4302 = !DILocation(line: 95, column: 3, scope: !4248)
!4303 = !DILocation(line: 97, column: 3, scope: !4248)
!4304 = !DILocation(line: 105, column: 7, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4248, file: !866, line: 98, column: 5)
!4306 = !DILocation(line: 106, column: 7, scope: !4305)
!4307 = !DILocation(line: 109, column: 7, scope: !4305)
!4308 = !DILocation(line: 110, column: 7, scope: !4305)
!4309 = !DILocation(line: 113, column: 7, scope: !4305)
!4310 = !DILocation(line: 115, column: 7, scope: !4305)
!4311 = !DILocation(line: 120, column: 7, scope: !4305)
!4312 = !DILocation(line: 122, column: 7, scope: !4305)
!4313 = !DILocation(line: 127, column: 7, scope: !4305)
!4314 = !DILocation(line: 129, column: 7, scope: !4305)
!4315 = !DILocation(line: 134, column: 7, scope: !4305)
!4316 = !DILocation(line: 137, column: 7, scope: !4305)
!4317 = !DILocation(line: 142, column: 7, scope: !4305)
!4318 = !DILocation(line: 145, column: 7, scope: !4305)
!4319 = !DILocation(line: 150, column: 7, scope: !4305)
!4320 = !DILocation(line: 154, column: 7, scope: !4305)
!4321 = !DILocation(line: 159, column: 7, scope: !4305)
!4322 = !DILocation(line: 163, column: 7, scope: !4305)
!4323 = !DILocation(line: 170, column: 7, scope: !4305)
!4324 = !DILocation(line: 174, column: 7, scope: !4305)
!4325 = !DILocation(line: 176, column: 1, scope: !4248)
!4326 = distinct !DISubprogram(name: "version_etc_ar", scope: !866, file: !866, line: 183, type: !4327, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !996, retainedNodes: !4329)
!4327 = !DISubroutineType(types: !4328)
!4328 = !{null, !4251, !100, !100, !100, !4285}
!4329 = !{!4330, !4331, !4332, !4333, !4334, !4335}
!4330 = !DILocalVariable(name: "stream", arg: 1, scope: !4326, file: !866, line: 183, type: !4251)
!4331 = !DILocalVariable(name: "command_name", arg: 2, scope: !4326, file: !866, line: 184, type: !100)
!4332 = !DILocalVariable(name: "package", arg: 3, scope: !4326, file: !866, line: 184, type: !100)
!4333 = !DILocalVariable(name: "version", arg: 4, scope: !4326, file: !866, line: 185, type: !100)
!4334 = !DILocalVariable(name: "authors", arg: 5, scope: !4326, file: !866, line: 185, type: !4285)
!4335 = !DILocalVariable(name: "n_authors", scope: !4326, file: !866, line: 187, type: !97)
!4336 = !DILocation(line: 0, scope: !4326)
!4337 = !DILocation(line: 189, column: 8, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4326, file: !866, line: 189, column: 3)
!4339 = !DILocation(line: 189, scope: !4338)
!4340 = !DILocation(line: 189, column: 23, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4338, file: !866, line: 189, column: 3)
!4342 = !DILocation(line: 189, column: 3, scope: !4338)
!4343 = !DILocation(line: 189, column: 52, scope: !4341)
!4344 = distinct !{!4344, !4342, !4345, !1185}
!4345 = !DILocation(line: 190, column: 5, scope: !4338)
!4346 = !DILocation(line: 191, column: 3, scope: !4326)
!4347 = !DILocation(line: 192, column: 1, scope: !4326)
!4348 = distinct !DISubprogram(name: "version_etc_va", scope: !866, file: !866, line: 199, type: !4349, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !996, retainedNodes: !4361)
!4349 = !DISubroutineType(types: !4350)
!4350 = !{null, !4251, !100, !100, !100, !4351}
!4351 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !688, line: 52, baseType: !4352)
!4352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !690, line: 12, baseType: !4353)
!4353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !866, baseType: !4354)
!4354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list", size: 256, elements: !4355)
!4355 = !{!4356, !4357, !4358, !4359, !4360}
!4356 = !DIDerivedType(tag: DW_TAG_member, name: "__stack", scope: !4354, file: !866, line: 192, baseType: !95, size: 64)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_top", scope: !4354, file: !866, line: 192, baseType: !95, size: 64, offset: 64)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_top", scope: !4354, file: !866, line: 192, baseType: !95, size: 64, offset: 128)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "__gr_offs", scope: !4354, file: !866, line: 192, baseType: !63, size: 32, offset: 192)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "__vr_offs", scope: !4354, file: !866, line: 192, baseType: !63, size: 32, offset: 224)
!4361 = !{!4362, !4363, !4364, !4365, !4366, !4367, !4368}
!4362 = !DILocalVariable(name: "stream", arg: 1, scope: !4348, file: !866, line: 199, type: !4251)
!4363 = !DILocalVariable(name: "command_name", arg: 2, scope: !4348, file: !866, line: 200, type: !100)
!4364 = !DILocalVariable(name: "package", arg: 3, scope: !4348, file: !866, line: 200, type: !100)
!4365 = !DILocalVariable(name: "version", arg: 4, scope: !4348, file: !866, line: 201, type: !100)
!4366 = !DILocalVariable(name: "authors", arg: 5, scope: !4348, file: !866, line: 201, type: !4351)
!4367 = !DILocalVariable(name: "n_authors", scope: !4348, file: !866, line: 203, type: !97)
!4368 = !DILocalVariable(name: "authtab", scope: !4348, file: !866, line: 204, type: !4369)
!4369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 640, elements: !50)
!4370 = distinct !DIAssignID()
!4371 = !DILocation(line: 0, scope: !4348)
!4372 = !DILocation(line: 204, column: 3, scope: !4348)
!4373 = !DILocation(line: 208, column: 35, scope: !4374)
!4374 = distinct !DILexicalBlock(scope: !4375, file: !866, line: 206, column: 3)
!4375 = distinct !DILexicalBlock(scope: !4348, file: !866, line: 206, column: 3)
!4376 = !DILocation(line: 208, column: 33, scope: !4374)
!4377 = !DILocation(line: 208, column: 67, scope: !4374)
!4378 = !DILocation(line: 206, column: 3, scope: !4375)
!4379 = !DILocation(line: 208, column: 14, scope: !4374)
!4380 = !DILocation(line: 0, scope: !4375)
!4381 = !DILocation(line: 211, column: 3, scope: !4348)
!4382 = !DILocation(line: 213, column: 1, scope: !4348)
!4383 = distinct !DISubprogram(name: "version_etc", scope: !866, file: !866, line: 230, type: !4384, scopeLine: 233, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !996, retainedNodes: !4386)
!4384 = !DISubroutineType(types: !4385)
!4385 = !{null, !4251, !100, !100, !100, null}
!4386 = !{!4387, !4388, !4389, !4390, !4391}
!4387 = !DILocalVariable(name: "stream", arg: 1, scope: !4383, file: !866, line: 230, type: !4251)
!4388 = !DILocalVariable(name: "command_name", arg: 2, scope: !4383, file: !866, line: 231, type: !100)
!4389 = !DILocalVariable(name: "package", arg: 3, scope: !4383, file: !866, line: 231, type: !100)
!4390 = !DILocalVariable(name: "version", arg: 4, scope: !4383, file: !866, line: 232, type: !100)
!4391 = !DILocalVariable(name: "authors", scope: !4383, file: !866, line: 234, type: !4351)
!4392 = distinct !DIAssignID()
!4393 = !DILocation(line: 0, scope: !4383)
!4394 = !DILocation(line: 234, column: 3, scope: !4383)
!4395 = !DILocation(line: 235, column: 3, scope: !4383)
!4396 = !DILocation(line: 236, column: 3, scope: !4383)
!4397 = !DILocation(line: 237, column: 3, scope: !4383)
!4398 = !DILocation(line: 238, column: 1, scope: !4383)
!4399 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !866, file: !866, line: 241, type: !342, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !996)
!4400 = !DILocation(line: 243, column: 3, scope: !4399)
!4401 = !DILocation(line: 248, column: 3, scope: !4399)
!4402 = !DILocation(line: 254, column: 3, scope: !4399)
!4403 = !DILocation(line: 259, column: 3, scope: !4399)
!4404 = !DILocation(line: 261, column: 1, scope: !4399)
!4405 = distinct !DISubprogram(name: "xnrealloc", scope: !4406, file: !4406, line: 147, type: !4407, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4409)
!4406 = !DIFile(filename: "lib/xalloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "c7f05246badb8dab0144a31d9ce48cb6")
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!95, !95, !97, !97}
!4409 = !{!4410, !4411, !4412}
!4410 = !DILocalVariable(name: "p", arg: 1, scope: !4405, file: !4406, line: 147, type: !95)
!4411 = !DILocalVariable(name: "n", arg: 2, scope: !4405, file: !4406, line: 147, type: !97)
!4412 = !DILocalVariable(name: "s", arg: 3, scope: !4405, file: !4406, line: 147, type: !97)
!4413 = !DILocation(line: 0, scope: !4405)
!4414 = !DILocalVariable(name: "p", arg: 1, scope: !4415, file: !1003, line: 83, type: !95)
!4415 = distinct !DISubprogram(name: "xreallocarray", scope: !1003, file: !1003, line: 83, type: !4407, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4416)
!4416 = !{!4414, !4417, !4418}
!4417 = !DILocalVariable(name: "n", arg: 2, scope: !4415, file: !1003, line: 83, type: !97)
!4418 = !DILocalVariable(name: "s", arg: 3, scope: !4415, file: !1003, line: 83, type: !97)
!4419 = !DILocation(line: 0, scope: !4415, inlinedAt: !4420)
!4420 = distinct !DILocation(line: 149, column: 10, scope: !4405)
!4421 = !DILocation(line: 85, column: 25, scope: !4415, inlinedAt: !4420)
!4422 = !DILocalVariable(name: "p", arg: 1, scope: !4423, file: !1003, line: 37, type: !95)
!4423 = distinct !DISubprogram(name: "check_nonnull", scope: !1003, file: !1003, line: 37, type: !4424, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4426)
!4424 = !DISubroutineType(types: !4425)
!4425 = !{!95, !95}
!4426 = !{!4422}
!4427 = !DILocation(line: 0, scope: !4423, inlinedAt: !4428)
!4428 = distinct !DILocation(line: 85, column: 10, scope: !4415, inlinedAt: !4420)
!4429 = !DILocation(line: 39, column: 8, scope: !4430, inlinedAt: !4428)
!4430 = distinct !DILexicalBlock(scope: !4423, file: !1003, line: 39, column: 7)
!4431 = !DILocation(line: 39, column: 7, scope: !4423, inlinedAt: !4428)
!4432 = !DILocation(line: 40, column: 5, scope: !4430, inlinedAt: !4428)
!4433 = !DILocation(line: 149, column: 3, scope: !4405)
!4434 = !DILocation(line: 0, scope: !4415)
!4435 = !DILocation(line: 85, column: 25, scope: !4415)
!4436 = !DILocation(line: 0, scope: !4423, inlinedAt: !4437)
!4437 = distinct !DILocation(line: 85, column: 10, scope: !4415)
!4438 = !DILocation(line: 39, column: 8, scope: !4430, inlinedAt: !4437)
!4439 = !DILocation(line: 39, column: 7, scope: !4423, inlinedAt: !4437)
!4440 = !DILocation(line: 40, column: 5, scope: !4430, inlinedAt: !4437)
!4441 = !DILocation(line: 85, column: 3, scope: !4415)
!4442 = distinct !DISubprogram(name: "xmalloc", scope: !1003, file: !1003, line: 47, type: !4443, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4445)
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!95, !97}
!4445 = !{!4446}
!4446 = !DILocalVariable(name: "s", arg: 1, scope: !4442, file: !1003, line: 47, type: !97)
!4447 = !DILocation(line: 0, scope: !4442)
!4448 = !DILocation(line: 49, column: 25, scope: !4442)
!4449 = !DILocation(line: 0, scope: !4423, inlinedAt: !4450)
!4450 = distinct !DILocation(line: 49, column: 10, scope: !4442)
!4451 = !DILocation(line: 39, column: 8, scope: !4430, inlinedAt: !4450)
!4452 = !DILocation(line: 39, column: 7, scope: !4423, inlinedAt: !4450)
!4453 = !DILocation(line: 40, column: 5, scope: !4430, inlinedAt: !4450)
!4454 = !DILocation(line: 49, column: 3, scope: !4442)
!4455 = !DISubprogram(name: "malloc", scope: !1259, file: !1259, line: 540, type: !4443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4456 = distinct !DISubprogram(name: "ximalloc", scope: !1003, file: !1003, line: 53, type: !4457, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4459)
!4457 = !DISubroutineType(types: !4458)
!4458 = !{!95, !1022}
!4459 = !{!4460}
!4460 = !DILocalVariable(name: "s", arg: 1, scope: !4456, file: !1003, line: 53, type: !1022)
!4461 = !DILocation(line: 0, scope: !4456)
!4462 = !DILocalVariable(name: "s", arg: 1, scope: !4463, file: !4464, line: 55, type: !1022)
!4463 = distinct !DISubprogram(name: "imalloc", scope: !4464, file: !4464, line: 55, type: !4457, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4465)
!4464 = !DIFile(filename: "lib/ialloc.h", directory: "/src", checksumkind: CSK_MD5, checksum: "d7b31180c3ce4cf30febe912ff1f1cd5")
!4465 = !{!4462}
!4466 = !DILocation(line: 0, scope: !4463, inlinedAt: !4467)
!4467 = distinct !DILocation(line: 55, column: 25, scope: !4456)
!4468 = !DILocation(line: 57, column: 26, scope: !4463, inlinedAt: !4467)
!4469 = !DILocation(line: 0, scope: !4423, inlinedAt: !4470)
!4470 = distinct !DILocation(line: 55, column: 10, scope: !4456)
!4471 = !DILocation(line: 39, column: 8, scope: !4430, inlinedAt: !4470)
!4472 = !DILocation(line: 39, column: 7, scope: !4423, inlinedAt: !4470)
!4473 = !DILocation(line: 40, column: 5, scope: !4430, inlinedAt: !4470)
!4474 = !DILocation(line: 55, column: 3, scope: !4456)
!4475 = distinct !DISubprogram(name: "xcharalloc", scope: !1003, file: !1003, line: 59, type: !4476, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4478)
!4476 = !DISubroutineType(types: !4477)
!4477 = !{!94, !97}
!4478 = !{!4479}
!4479 = !DILocalVariable(name: "n", arg: 1, scope: !4475, file: !1003, line: 59, type: !97)
!4480 = !DILocation(line: 0, scope: !4475)
!4481 = !DILocation(line: 0, scope: !4442, inlinedAt: !4482)
!4482 = distinct !DILocation(line: 61, column: 10, scope: !4475)
!4483 = !DILocation(line: 49, column: 25, scope: !4442, inlinedAt: !4482)
!4484 = !DILocation(line: 0, scope: !4423, inlinedAt: !4485)
!4485 = distinct !DILocation(line: 49, column: 10, scope: !4442, inlinedAt: !4482)
!4486 = !DILocation(line: 39, column: 8, scope: !4430, inlinedAt: !4485)
!4487 = !DILocation(line: 39, column: 7, scope: !4423, inlinedAt: !4485)
!4488 = !DILocation(line: 40, column: 5, scope: !4430, inlinedAt: !4485)
!4489 = !DILocation(line: 61, column: 3, scope: !4475)
!4490 = distinct !DISubprogram(name: "xrealloc", scope: !1003, file: !1003, line: 68, type: !4491, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4493)
!4491 = !DISubroutineType(types: !4492)
!4492 = !{!95, !95, !97}
!4493 = !{!4494, !4495}
!4494 = !DILocalVariable(name: "p", arg: 1, scope: !4490, file: !1003, line: 68, type: !95)
!4495 = !DILocalVariable(name: "s", arg: 2, scope: !4490, file: !1003, line: 68, type: !97)
!4496 = !DILocation(line: 0, scope: !4490)
!4497 = !DILocalVariable(name: "ptr", arg: 1, scope: !4498, file: !4499, line: 2057, type: !95)
!4498 = distinct !DISubprogram(name: "rpl_realloc", scope: !4499, file: !4499, line: 2057, type: !4491, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4500)
!4499 = !DIFile(filename: "./lib/stdlib.h", directory: "/src")
!4500 = !{!4497, !4501}
!4501 = !DILocalVariable(name: "size", arg: 2, scope: !4498, file: !4499, line: 2057, type: !97)
!4502 = !DILocation(line: 0, scope: !4498, inlinedAt: !4503)
!4503 = distinct !DILocation(line: 70, column: 25, scope: !4490)
!4504 = !DILocation(line: 2059, column: 24, scope: !4498, inlinedAt: !4503)
!4505 = !DILocation(line: 2059, column: 10, scope: !4498, inlinedAt: !4503)
!4506 = !DILocation(line: 0, scope: !4423, inlinedAt: !4507)
!4507 = distinct !DILocation(line: 70, column: 10, scope: !4490)
!4508 = !DILocation(line: 39, column: 8, scope: !4430, inlinedAt: !4507)
!4509 = !DILocation(line: 39, column: 7, scope: !4423, inlinedAt: !4507)
!4510 = !DILocation(line: 40, column: 5, scope: !4430, inlinedAt: !4507)
!4511 = !DILocation(line: 70, column: 3, scope: !4490)
!4512 = !DISubprogram(name: "realloc", scope: !1259, file: !1259, line: 551, type: !4491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4513 = distinct !DISubprogram(name: "xirealloc", scope: !1003, file: !1003, line: 74, type: !4514, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4516)
!4514 = !DISubroutineType(types: !4515)
!4515 = !{!95, !95, !1022}
!4516 = !{!4517, !4518}
!4517 = !DILocalVariable(name: "p", arg: 1, scope: !4513, file: !1003, line: 74, type: !95)
!4518 = !DILocalVariable(name: "s", arg: 2, scope: !4513, file: !1003, line: 74, type: !1022)
!4519 = !DILocation(line: 0, scope: !4513)
!4520 = !DILocalVariable(name: "p", arg: 1, scope: !4521, file: !4464, line: 66, type: !95)
!4521 = distinct !DISubprogram(name: "irealloc", scope: !4464, file: !4464, line: 66, type: !4514, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4522)
!4522 = !{!4520, !4523}
!4523 = !DILocalVariable(name: "s", arg: 2, scope: !4521, file: !4464, line: 66, type: !1022)
!4524 = !DILocation(line: 0, scope: !4521, inlinedAt: !4525)
!4525 = distinct !DILocation(line: 76, column: 25, scope: !4513)
!4526 = !DILocation(line: 0, scope: !4498, inlinedAt: !4527)
!4527 = distinct !DILocation(line: 68, column: 26, scope: !4521, inlinedAt: !4525)
!4528 = !DILocation(line: 2059, column: 24, scope: !4498, inlinedAt: !4527)
!4529 = !DILocation(line: 2059, column: 10, scope: !4498, inlinedAt: !4527)
!4530 = !DILocation(line: 0, scope: !4423, inlinedAt: !4531)
!4531 = distinct !DILocation(line: 76, column: 10, scope: !4513)
!4532 = !DILocation(line: 39, column: 8, scope: !4430, inlinedAt: !4531)
!4533 = !DILocation(line: 39, column: 7, scope: !4423, inlinedAt: !4531)
!4534 = !DILocation(line: 40, column: 5, scope: !4430, inlinedAt: !4531)
!4535 = !DILocation(line: 76, column: 3, scope: !4513)
!4536 = distinct !DISubprogram(name: "xireallocarray", scope: !1003, file: !1003, line: 89, type: !4537, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4539)
!4537 = !DISubroutineType(types: !4538)
!4538 = !{!95, !95, !1022, !1022}
!4539 = !{!4540, !4541, !4542}
!4540 = !DILocalVariable(name: "p", arg: 1, scope: !4536, file: !1003, line: 89, type: !95)
!4541 = !DILocalVariable(name: "n", arg: 2, scope: !4536, file: !1003, line: 89, type: !1022)
!4542 = !DILocalVariable(name: "s", arg: 3, scope: !4536, file: !1003, line: 89, type: !1022)
!4543 = !DILocation(line: 0, scope: !4536)
!4544 = !DILocalVariable(name: "p", arg: 1, scope: !4545, file: !4464, line: 98, type: !95)
!4545 = distinct !DISubprogram(name: "ireallocarray", scope: !4464, file: !4464, line: 98, type: !4537, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4546)
!4546 = !{!4544, !4547, !4548}
!4547 = !DILocalVariable(name: "n", arg: 2, scope: !4545, file: !4464, line: 98, type: !1022)
!4548 = !DILocalVariable(name: "s", arg: 3, scope: !4545, file: !4464, line: 98, type: !1022)
!4549 = !DILocation(line: 0, scope: !4545, inlinedAt: !4550)
!4550 = distinct !DILocation(line: 91, column: 25, scope: !4536)
!4551 = !DILocation(line: 101, column: 13, scope: !4545, inlinedAt: !4550)
!4552 = !DILocation(line: 0, scope: !4423, inlinedAt: !4553)
!4553 = distinct !DILocation(line: 91, column: 10, scope: !4536)
!4554 = !DILocation(line: 39, column: 8, scope: !4430, inlinedAt: !4553)
!4555 = !DILocation(line: 39, column: 7, scope: !4423, inlinedAt: !4553)
!4556 = !DILocation(line: 40, column: 5, scope: !4430, inlinedAt: !4553)
!4557 = !DILocation(line: 91, column: 3, scope: !4536)
!4558 = distinct !DISubprogram(name: "xnmalloc", scope: !1003, file: !1003, line: 98, type: !4559, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4561)
!4559 = !DISubroutineType(types: !4560)
!4560 = !{!95, !97, !97}
!4561 = !{!4562, !4563}
!4562 = !DILocalVariable(name: "n", arg: 1, scope: !4558, file: !1003, line: 98, type: !97)
!4563 = !DILocalVariable(name: "s", arg: 2, scope: !4558, file: !1003, line: 98, type: !97)
!4564 = !DILocation(line: 0, scope: !4558)
!4565 = !DILocation(line: 0, scope: !4415, inlinedAt: !4566)
!4566 = distinct !DILocation(line: 100, column: 10, scope: !4558)
!4567 = !DILocation(line: 85, column: 25, scope: !4415, inlinedAt: !4566)
!4568 = !DILocation(line: 0, scope: !4423, inlinedAt: !4569)
!4569 = distinct !DILocation(line: 85, column: 10, scope: !4415, inlinedAt: !4566)
!4570 = !DILocation(line: 39, column: 8, scope: !4430, inlinedAt: !4569)
!4571 = !DILocation(line: 39, column: 7, scope: !4423, inlinedAt: !4569)
!4572 = !DILocation(line: 40, column: 5, scope: !4430, inlinedAt: !4569)
!4573 = !DILocation(line: 100, column: 3, scope: !4558)
!4574 = distinct !DISubprogram(name: "xinmalloc", scope: !1003, file: !1003, line: 104, type: !4575, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4577)
!4575 = !DISubroutineType(types: !4576)
!4576 = !{!95, !1022, !1022}
!4577 = !{!4578, !4579}
!4578 = !DILocalVariable(name: "n", arg: 1, scope: !4574, file: !1003, line: 104, type: !1022)
!4579 = !DILocalVariable(name: "s", arg: 2, scope: !4574, file: !1003, line: 104, type: !1022)
!4580 = !DILocation(line: 0, scope: !4574)
!4581 = !DILocation(line: 0, scope: !4536, inlinedAt: !4582)
!4582 = distinct !DILocation(line: 106, column: 10, scope: !4574)
!4583 = !DILocation(line: 0, scope: !4545, inlinedAt: !4584)
!4584 = distinct !DILocation(line: 91, column: 25, scope: !4536, inlinedAt: !4582)
!4585 = !DILocation(line: 101, column: 13, scope: !4545, inlinedAt: !4584)
!4586 = !DILocation(line: 0, scope: !4423, inlinedAt: !4587)
!4587 = distinct !DILocation(line: 91, column: 10, scope: !4536, inlinedAt: !4582)
!4588 = !DILocation(line: 39, column: 8, scope: !4430, inlinedAt: !4587)
!4589 = !DILocation(line: 39, column: 7, scope: !4423, inlinedAt: !4587)
!4590 = !DILocation(line: 40, column: 5, scope: !4430, inlinedAt: !4587)
!4591 = !DILocation(line: 106, column: 3, scope: !4574)
!4592 = distinct !DISubprogram(name: "x2realloc", scope: !1003, file: !1003, line: 116, type: !4593, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4595)
!4593 = !DISubroutineType(types: !4594)
!4594 = !{!95, !95, !1009}
!4595 = !{!4596, !4597}
!4596 = !DILocalVariable(name: "p", arg: 1, scope: !4592, file: !1003, line: 116, type: !95)
!4597 = !DILocalVariable(name: "ps", arg: 2, scope: !4592, file: !1003, line: 116, type: !1009)
!4598 = !DILocation(line: 0, scope: !4592)
!4599 = !DILocation(line: 0, scope: !1006, inlinedAt: !4600)
!4600 = distinct !DILocation(line: 118, column: 10, scope: !4592)
!4601 = !DILocation(line: 178, column: 14, scope: !1006, inlinedAt: !4600)
!4602 = !DILocation(line: 180, column: 9, scope: !4603, inlinedAt: !4600)
!4603 = distinct !DILexicalBlock(scope: !1006, file: !1003, line: 180, column: 7)
!4604 = !DILocation(line: 180, column: 7, scope: !1006, inlinedAt: !4600)
!4605 = !DILocation(line: 182, column: 13, scope: !4606, inlinedAt: !4600)
!4606 = distinct !DILexicalBlock(scope: !4607, file: !1003, line: 182, column: 11)
!4607 = distinct !DILexicalBlock(scope: !4603, file: !1003, line: 181, column: 5)
!4608 = !DILocation(line: 182, column: 11, scope: !4607, inlinedAt: !4600)
!4609 = !DILocation(line: 197, column: 11, scope: !4610, inlinedAt: !4600)
!4610 = distinct !DILexicalBlock(scope: !4611, file: !1003, line: 197, column: 11)
!4611 = distinct !DILexicalBlock(scope: !4603, file: !1003, line: 195, column: 5)
!4612 = !DILocation(line: 197, column: 11, scope: !4611, inlinedAt: !4600)
!4613 = !DILocation(line: 198, column: 9, scope: !4610, inlinedAt: !4600)
!4614 = !DILocation(line: 0, scope: !4415, inlinedAt: !4615)
!4615 = distinct !DILocation(line: 201, column: 7, scope: !1006, inlinedAt: !4600)
!4616 = !DILocation(line: 85, column: 25, scope: !4415, inlinedAt: !4615)
!4617 = !DILocation(line: 0, scope: !4423, inlinedAt: !4618)
!4618 = distinct !DILocation(line: 85, column: 10, scope: !4415, inlinedAt: !4615)
!4619 = !DILocation(line: 39, column: 8, scope: !4430, inlinedAt: !4618)
!4620 = !DILocation(line: 39, column: 7, scope: !4423, inlinedAt: !4618)
!4621 = !DILocation(line: 40, column: 5, scope: !4430, inlinedAt: !4618)
!4622 = !DILocation(line: 202, column: 7, scope: !1006, inlinedAt: !4600)
!4623 = !DILocation(line: 118, column: 3, scope: !4592)
!4624 = !DILocation(line: 0, scope: !1006)
!4625 = !DILocation(line: 178, column: 14, scope: !1006)
!4626 = !DILocation(line: 180, column: 9, scope: !4603)
!4627 = !DILocation(line: 180, column: 7, scope: !1006)
!4628 = !DILocation(line: 182, column: 13, scope: !4606)
!4629 = !DILocation(line: 182, column: 11, scope: !4607)
!4630 = !DILocation(line: 190, column: 30, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4606, file: !1003, line: 183, column: 9)
!4632 = !DILocation(line: 191, column: 16, scope: !4631)
!4633 = !DILocation(line: 191, column: 13, scope: !4631)
!4634 = !DILocation(line: 192, column: 9, scope: !4631)
!4635 = !DILocation(line: 197, column: 11, scope: !4610)
!4636 = !DILocation(line: 197, column: 11, scope: !4611)
!4637 = !DILocation(line: 198, column: 9, scope: !4610)
!4638 = !DILocation(line: 0, scope: !4415, inlinedAt: !4639)
!4639 = distinct !DILocation(line: 201, column: 7, scope: !1006)
!4640 = !DILocation(line: 85, column: 25, scope: !4415, inlinedAt: !4639)
!4641 = !DILocation(line: 0, scope: !4423, inlinedAt: !4642)
!4642 = distinct !DILocation(line: 85, column: 10, scope: !4415, inlinedAt: !4639)
!4643 = !DILocation(line: 39, column: 8, scope: !4430, inlinedAt: !4642)
!4644 = !DILocation(line: 39, column: 7, scope: !4423, inlinedAt: !4642)
!4645 = !DILocation(line: 40, column: 5, scope: !4430, inlinedAt: !4642)
!4646 = !DILocation(line: 202, column: 7, scope: !1006)
!4647 = !DILocation(line: 203, column: 3, scope: !1006)
!4648 = !DILocation(line: 0, scope: !1018)
!4649 = !DILocation(line: 230, column: 14, scope: !1018)
!4650 = !DILocation(line: 238, column: 7, scope: !4651)
!4651 = distinct !DILexicalBlock(scope: !1018, file: !1003, line: 238, column: 7)
!4652 = !DILocation(line: 238, column: 7, scope: !1018)
!4653 = !DILocation(line: 240, column: 9, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !1018, file: !1003, line: 240, column: 7)
!4655 = !DILocation(line: 240, column: 18, scope: !4654)
!4656 = !DILocation(line: 253, column: 8, scope: !1018)
!4657 = !DILocation(line: 256, column: 7, scope: !4658)
!4658 = distinct !DILexicalBlock(scope: !1018, file: !1003, line: 256, column: 7)
!4659 = !DILocation(line: 256, column: 7, scope: !1018)
!4660 = !DILocation(line: 258, column: 27, scope: !4661)
!4661 = distinct !DILexicalBlock(scope: !4658, file: !1003, line: 257, column: 5)
!4662 = !DILocation(line: 259, column: 32, scope: !4661)
!4663 = !DILocation(line: 260, column: 5, scope: !4661)
!4664 = !DILocation(line: 262, column: 9, scope: !4665)
!4665 = distinct !DILexicalBlock(scope: !1018, file: !1003, line: 262, column: 7)
!4666 = !DILocation(line: 262, column: 7, scope: !1018)
!4667 = !DILocation(line: 263, column: 9, scope: !4665)
!4668 = !DILocation(line: 263, column: 5, scope: !4665)
!4669 = !DILocation(line: 264, column: 9, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !1018, file: !1003, line: 264, column: 7)
!4671 = !DILocation(line: 264, column: 14, scope: !4670)
!4672 = !DILocation(line: 265, column: 7, scope: !4670)
!4673 = !DILocation(line: 265, column: 11, scope: !4670)
!4674 = !DILocation(line: 266, column: 11, scope: !4670)
!4675 = !DILocation(line: 267, column: 14, scope: !4670)
!4676 = !DILocation(line: 264, column: 7, scope: !1018)
!4677 = !DILocation(line: 268, column: 5, scope: !4670)
!4678 = !DILocation(line: 0, scope: !4490, inlinedAt: !4679)
!4679 = distinct !DILocation(line: 269, column: 8, scope: !1018)
!4680 = !DILocation(line: 0, scope: !4498, inlinedAt: !4681)
!4681 = distinct !DILocation(line: 70, column: 25, scope: !4490, inlinedAt: !4679)
!4682 = !DILocation(line: 2059, column: 24, scope: !4498, inlinedAt: !4681)
!4683 = !DILocation(line: 2059, column: 10, scope: !4498, inlinedAt: !4681)
!4684 = !DILocation(line: 0, scope: !4423, inlinedAt: !4685)
!4685 = distinct !DILocation(line: 70, column: 10, scope: !4490, inlinedAt: !4679)
!4686 = !DILocation(line: 39, column: 8, scope: !4430, inlinedAt: !4685)
!4687 = !DILocation(line: 39, column: 7, scope: !4423, inlinedAt: !4685)
!4688 = !DILocation(line: 40, column: 5, scope: !4430, inlinedAt: !4685)
!4689 = !DILocation(line: 270, column: 7, scope: !1018)
!4690 = !DILocation(line: 271, column: 3, scope: !1018)
!4691 = distinct !DISubprogram(name: "xzalloc", scope: !1003, file: !1003, line: 279, type: !4443, scopeLine: 280, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4692)
!4692 = !{!4693}
!4693 = !DILocalVariable(name: "s", arg: 1, scope: !4691, file: !1003, line: 279, type: !97)
!4694 = !DILocation(line: 0, scope: !4691)
!4695 = !DILocalVariable(name: "n", arg: 1, scope: !4696, file: !1003, line: 294, type: !97)
!4696 = distinct !DISubprogram(name: "xcalloc", scope: !1003, file: !1003, line: 294, type: !4559, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4697)
!4697 = !{!4695, !4698}
!4698 = !DILocalVariable(name: "s", arg: 2, scope: !4696, file: !1003, line: 294, type: !97)
!4699 = !DILocation(line: 0, scope: !4696, inlinedAt: !4700)
!4700 = distinct !DILocation(line: 281, column: 10, scope: !4691)
!4701 = !DILocation(line: 296, column: 25, scope: !4696, inlinedAt: !4700)
!4702 = !DILocation(line: 0, scope: !4423, inlinedAt: !4703)
!4703 = distinct !DILocation(line: 296, column: 10, scope: !4696, inlinedAt: !4700)
!4704 = !DILocation(line: 39, column: 8, scope: !4430, inlinedAt: !4703)
!4705 = !DILocation(line: 39, column: 7, scope: !4423, inlinedAt: !4703)
!4706 = !DILocation(line: 40, column: 5, scope: !4430, inlinedAt: !4703)
!4707 = !DILocation(line: 281, column: 3, scope: !4691)
!4708 = !DISubprogram(name: "calloc", scope: !1259, file: !1259, line: 543, type: !4559, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4709 = !DILocation(line: 0, scope: !4696)
!4710 = !DILocation(line: 296, column: 25, scope: !4696)
!4711 = !DILocation(line: 0, scope: !4423, inlinedAt: !4712)
!4712 = distinct !DILocation(line: 296, column: 10, scope: !4696)
!4713 = !DILocation(line: 39, column: 8, scope: !4430, inlinedAt: !4712)
!4714 = !DILocation(line: 39, column: 7, scope: !4423, inlinedAt: !4712)
!4715 = !DILocation(line: 40, column: 5, scope: !4430, inlinedAt: !4712)
!4716 = !DILocation(line: 296, column: 3, scope: !4696)
!4717 = distinct !DISubprogram(name: "xizalloc", scope: !1003, file: !1003, line: 285, type: !4457, scopeLine: 286, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4718)
!4718 = !{!4719}
!4719 = !DILocalVariable(name: "s", arg: 1, scope: !4717, file: !1003, line: 285, type: !1022)
!4720 = !DILocation(line: 0, scope: !4717)
!4721 = !DILocalVariable(name: "n", arg: 1, scope: !4722, file: !1003, line: 300, type: !1022)
!4722 = distinct !DISubprogram(name: "xicalloc", scope: !1003, file: !1003, line: 300, type: !4575, scopeLine: 301, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4723)
!4723 = !{!4721, !4724}
!4724 = !DILocalVariable(name: "s", arg: 2, scope: !4722, file: !1003, line: 300, type: !1022)
!4725 = !DILocation(line: 0, scope: !4722, inlinedAt: !4726)
!4726 = distinct !DILocation(line: 287, column: 10, scope: !4717)
!4727 = !DILocalVariable(name: "n", arg: 1, scope: !4728, file: !4464, line: 77, type: !1022)
!4728 = distinct !DISubprogram(name: "icalloc", scope: !4464, file: !4464, line: 77, type: !4575, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4729)
!4729 = !{!4727, !4730}
!4730 = !DILocalVariable(name: "s", arg: 2, scope: !4728, file: !4464, line: 77, type: !1022)
!4731 = !DILocation(line: 0, scope: !4728, inlinedAt: !4732)
!4732 = distinct !DILocation(line: 302, column: 25, scope: !4722, inlinedAt: !4726)
!4733 = !DILocation(line: 91, column: 10, scope: !4728, inlinedAt: !4732)
!4734 = !DILocation(line: 0, scope: !4423, inlinedAt: !4735)
!4735 = distinct !DILocation(line: 302, column: 10, scope: !4722, inlinedAt: !4726)
!4736 = !DILocation(line: 39, column: 8, scope: !4430, inlinedAt: !4735)
!4737 = !DILocation(line: 39, column: 7, scope: !4423, inlinedAt: !4735)
!4738 = !DILocation(line: 40, column: 5, scope: !4430, inlinedAt: !4735)
!4739 = !DILocation(line: 287, column: 3, scope: !4717)
!4740 = !DILocation(line: 0, scope: !4722)
!4741 = !DILocation(line: 0, scope: !4728, inlinedAt: !4742)
!4742 = distinct !DILocation(line: 302, column: 25, scope: !4722)
!4743 = !DILocation(line: 91, column: 10, scope: !4728, inlinedAt: !4742)
!4744 = !DILocation(line: 0, scope: !4423, inlinedAt: !4745)
!4745 = distinct !DILocation(line: 302, column: 10, scope: !4722)
!4746 = !DILocation(line: 39, column: 8, scope: !4430, inlinedAt: !4745)
!4747 = !DILocation(line: 39, column: 7, scope: !4423, inlinedAt: !4745)
!4748 = !DILocation(line: 40, column: 5, scope: !4430, inlinedAt: !4745)
!4749 = !DILocation(line: 302, column: 3, scope: !4722)
!4750 = distinct !DISubprogram(name: "xmemdup", scope: !1003, file: !1003, line: 310, type: !4751, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4753)
!4751 = !DISubroutineType(types: !4752)
!4752 = !{!95, !1283, !97}
!4753 = !{!4754, !4755}
!4754 = !DILocalVariable(name: "p", arg: 1, scope: !4750, file: !1003, line: 310, type: !1283)
!4755 = !DILocalVariable(name: "s", arg: 2, scope: !4750, file: !1003, line: 310, type: !97)
!4756 = !DILocation(line: 0, scope: !4750)
!4757 = !DILocation(line: 0, scope: !4442, inlinedAt: !4758)
!4758 = distinct !DILocation(line: 312, column: 18, scope: !4750)
!4759 = !DILocation(line: 49, column: 25, scope: !4442, inlinedAt: !4758)
!4760 = !DILocation(line: 0, scope: !4423, inlinedAt: !4761)
!4761 = distinct !DILocation(line: 49, column: 10, scope: !4442, inlinedAt: !4758)
!4762 = !DILocation(line: 39, column: 8, scope: !4430, inlinedAt: !4761)
!4763 = !DILocation(line: 39, column: 7, scope: !4423, inlinedAt: !4761)
!4764 = !DILocation(line: 40, column: 5, scope: !4430, inlinedAt: !4761)
!4765 = !DILocalVariable(name: "__dest", arg: 1, scope: !4766, file: !1402, line: 26, type: !4769)
!4766 = distinct !DISubprogram(name: "memcpy", scope: !1402, file: !1402, line: 26, type: !4767, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4770)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!95, !4769, !1282, !97}
!4769 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !95)
!4770 = !{!4765, !4771, !4772}
!4771 = !DILocalVariable(name: "__src", arg: 2, scope: !4766, file: !1402, line: 26, type: !1282)
!4772 = !DILocalVariable(name: "__len", arg: 3, scope: !4766, file: !1402, line: 26, type: !97)
!4773 = !DILocation(line: 0, scope: !4766, inlinedAt: !4774)
!4774 = distinct !DILocation(line: 312, column: 10, scope: !4750)
!4775 = !DILocation(line: 29, column: 10, scope: !4766, inlinedAt: !4774)
!4776 = !DILocation(line: 312, column: 3, scope: !4750)
!4777 = distinct !DISubprogram(name: "ximemdup", scope: !1003, file: !1003, line: 316, type: !4778, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4780)
!4778 = !DISubroutineType(types: !4779)
!4779 = !{!95, !1283, !1022}
!4780 = !{!4781, !4782}
!4781 = !DILocalVariable(name: "p", arg: 1, scope: !4777, file: !1003, line: 316, type: !1283)
!4782 = !DILocalVariable(name: "s", arg: 2, scope: !4777, file: !1003, line: 316, type: !1022)
!4783 = !DILocation(line: 0, scope: !4777)
!4784 = !DILocation(line: 0, scope: !4456, inlinedAt: !4785)
!4785 = distinct !DILocation(line: 318, column: 18, scope: !4777)
!4786 = !DILocation(line: 0, scope: !4463, inlinedAt: !4787)
!4787 = distinct !DILocation(line: 55, column: 25, scope: !4456, inlinedAt: !4785)
!4788 = !DILocation(line: 57, column: 26, scope: !4463, inlinedAt: !4787)
!4789 = !DILocation(line: 0, scope: !4423, inlinedAt: !4790)
!4790 = distinct !DILocation(line: 55, column: 10, scope: !4456, inlinedAt: !4785)
!4791 = !DILocation(line: 39, column: 8, scope: !4430, inlinedAt: !4790)
!4792 = !DILocation(line: 39, column: 7, scope: !4423, inlinedAt: !4790)
!4793 = !DILocation(line: 40, column: 5, scope: !4430, inlinedAt: !4790)
!4794 = !DILocation(line: 0, scope: !4766, inlinedAt: !4795)
!4795 = distinct !DILocation(line: 318, column: 10, scope: !4777)
!4796 = !DILocation(line: 29, column: 10, scope: !4766, inlinedAt: !4795)
!4797 = !DILocation(line: 318, column: 3, scope: !4777)
!4798 = distinct !DISubprogram(name: "ximemdup0", scope: !1003, file: !1003, line: 325, type: !4799, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4801)
!4799 = !DISubroutineType(types: !4800)
!4800 = !{!94, !1283, !1022}
!4801 = !{!4802, !4803, !4804}
!4802 = !DILocalVariable(name: "p", arg: 1, scope: !4798, file: !1003, line: 325, type: !1283)
!4803 = !DILocalVariable(name: "s", arg: 2, scope: !4798, file: !1003, line: 325, type: !1022)
!4804 = !DILocalVariable(name: "result", scope: !4798, file: !1003, line: 327, type: !94)
!4805 = !DILocation(line: 0, scope: !4798)
!4806 = !DILocation(line: 327, column: 30, scope: !4798)
!4807 = !DILocation(line: 0, scope: !4456, inlinedAt: !4808)
!4808 = distinct !DILocation(line: 327, column: 18, scope: !4798)
!4809 = !DILocation(line: 0, scope: !4463, inlinedAt: !4810)
!4810 = distinct !DILocation(line: 55, column: 25, scope: !4456, inlinedAt: !4808)
!4811 = !DILocation(line: 57, column: 26, scope: !4463, inlinedAt: !4810)
!4812 = !DILocation(line: 0, scope: !4423, inlinedAt: !4813)
!4813 = distinct !DILocation(line: 55, column: 10, scope: !4456, inlinedAt: !4808)
!4814 = !DILocation(line: 39, column: 8, scope: !4430, inlinedAt: !4813)
!4815 = !DILocation(line: 39, column: 7, scope: !4423, inlinedAt: !4813)
!4816 = !DILocation(line: 40, column: 5, scope: !4430, inlinedAt: !4813)
!4817 = !DILocation(line: 328, column: 3, scope: !4798)
!4818 = !DILocation(line: 328, column: 13, scope: !4798)
!4819 = !DILocation(line: 0, scope: !4766, inlinedAt: !4820)
!4820 = distinct !DILocation(line: 329, column: 10, scope: !4798)
!4821 = !DILocation(line: 29, column: 10, scope: !4766, inlinedAt: !4820)
!4822 = !DILocation(line: 329, column: 3, scope: !4798)
!4823 = distinct !DISubprogram(name: "xstrdup", scope: !1003, file: !1003, line: 335, type: !1261, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1002, retainedNodes: !4824)
!4824 = !{!4825}
!4825 = !DILocalVariable(name: "string", arg: 1, scope: !4823, file: !1003, line: 335, type: !100)
!4826 = !DILocation(line: 0, scope: !4823)
!4827 = !DILocation(line: 337, column: 27, scope: !4823)
!4828 = !DILocation(line: 337, column: 43, scope: !4823)
!4829 = !DILocation(line: 0, scope: !4750, inlinedAt: !4830)
!4830 = distinct !DILocation(line: 337, column: 10, scope: !4823)
!4831 = !DILocation(line: 0, scope: !4442, inlinedAt: !4832)
!4832 = distinct !DILocation(line: 312, column: 18, scope: !4750, inlinedAt: !4830)
!4833 = !DILocation(line: 49, column: 25, scope: !4442, inlinedAt: !4832)
!4834 = !DILocation(line: 0, scope: !4423, inlinedAt: !4835)
!4835 = distinct !DILocation(line: 49, column: 10, scope: !4442, inlinedAt: !4832)
!4836 = !DILocation(line: 39, column: 8, scope: !4430, inlinedAt: !4835)
!4837 = !DILocation(line: 39, column: 7, scope: !4423, inlinedAt: !4835)
!4838 = !DILocation(line: 40, column: 5, scope: !4430, inlinedAt: !4835)
!4839 = !DILocation(line: 0, scope: !4766, inlinedAt: !4840)
!4840 = distinct !DILocation(line: 312, column: 10, scope: !4750, inlinedAt: !4830)
!4841 = !DILocation(line: 29, column: 10, scope: !4766, inlinedAt: !4840)
!4842 = !DILocation(line: 337, column: 3, scope: !4823)
!4843 = distinct !DISubprogram(name: "xalloc_die", scope: !952, file: !952, line: 32, type: !342, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1035, retainedNodes: !4844)
!4844 = !{!4845}
!4845 = !DILocalVariable(name: "__errstatus", scope: !4846, file: !952, line: 34, type: !4847)
!4846 = distinct !DILexicalBlock(scope: !4843, file: !952, line: 34, column: 3)
!4847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!4848 = !DILocation(line: 34, column: 3, scope: !4846)
!4849 = !DILocation(line: 0, scope: !4846)
!4850 = !DILocation(line: 40, column: 3, scope: !4843)
!4851 = distinct !DISubprogram(name: "rpl_fopen", scope: !1038, file: !1038, line: 46, type: !4852, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4888)
!4852 = !DISubroutineType(types: !4853)
!4853 = !{!4854, !100, !100}
!4854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4855, size: 64)
!4855 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !4856)
!4856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !4857)
!4857 = !{!4858, !4859, !4860, !4861, !4862, !4863, !4864, !4865, !4866, !4867, !4868, !4869, !4870, !4871, !4873, !4874, !4875, !4876, !4877, !4878, !4879, !4880, !4881, !4882, !4883, !4884, !4885, !4886, !4887}
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !4856, file: !153, line: 51, baseType: !63, size: 32)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !4856, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !4856, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !4856, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !4856, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !4856, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !4856, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !4856, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !4856, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!4867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !4856, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !4856, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !4856, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!4870 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !4856, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!4871 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !4856, file: !153, line: 70, baseType: !4872, size: 64, offset: 832)
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4856, size: 64)
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !4856, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !4856, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !4856, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !4856, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !4856, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !4856, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !4856, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !4856, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !4856, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !4856, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !4856, file: !153, line: 93, baseType: !4872, size: 64, offset: 1344)
!4884 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !4856, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!4885 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !4856, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!4886 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !4856, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !4856, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!4888 = !{!4889, !4890, !4891, !4892, !4893, !4894, !4898, !4900, !4901, !4906, !4909, !4910}
!4889 = !DILocalVariable(name: "filename", arg: 1, scope: !4851, file: !1038, line: 46, type: !100)
!4890 = !DILocalVariable(name: "mode", arg: 2, scope: !4851, file: !1038, line: 46, type: !100)
!4891 = !DILocalVariable(name: "open_direction", scope: !4851, file: !1038, line: 54, type: !63)
!4892 = !DILocalVariable(name: "open_flags", scope: !4851, file: !1038, line: 55, type: !63)
!4893 = !DILocalVariable(name: "open_flags_gnu", scope: !4851, file: !1038, line: 57, type: !136)
!4894 = !DILocalVariable(name: "fdopen_mode_buf", scope: !4851, file: !1038, line: 59, type: !4895)
!4895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !4896)
!4896 = !{!4897}
!4897 = !DISubrange(count: 81)
!4898 = !DILocalVariable(name: "p", scope: !4899, file: !1038, line: 62, type: !100)
!4899 = distinct !DILexicalBlock(scope: !4851, file: !1038, line: 61, column: 3)
!4900 = !DILocalVariable(name: "q", scope: !4899, file: !1038, line: 64, type: !94)
!4901 = !DILocalVariable(name: "len", scope: !4902, file: !1038, line: 128, type: !97)
!4902 = distinct !DILexicalBlock(scope: !4903, file: !1038, line: 127, column: 9)
!4903 = distinct !DILexicalBlock(scope: !4904, file: !1038, line: 68, column: 7)
!4904 = distinct !DILexicalBlock(scope: !4905, file: !1038, line: 67, column: 5)
!4905 = distinct !DILexicalBlock(scope: !4899, file: !1038, line: 67, column: 5)
!4906 = !DILocalVariable(name: "fd", scope: !4907, file: !1038, line: 199, type: !63)
!4907 = distinct !DILexicalBlock(scope: !4908, file: !1038, line: 198, column: 5)
!4908 = distinct !DILexicalBlock(scope: !4851, file: !1038, line: 197, column: 7)
!4909 = !DILocalVariable(name: "fp", scope: !4907, file: !1038, line: 204, type: !4854)
!4910 = !DILocalVariable(name: "saved_errno", scope: !4911, file: !1038, line: 207, type: !63)
!4911 = distinct !DILexicalBlock(scope: !4912, file: !1038, line: 206, column: 9)
!4912 = distinct !DILexicalBlock(scope: !4907, file: !1038, line: 205, column: 11)
!4913 = distinct !DIAssignID()
!4914 = !DILocation(line: 0, scope: !4851)
!4915 = !DILocation(line: 59, column: 3, scope: !4851)
!4916 = !DILocation(line: 0, scope: !4899)
!4917 = !DILocation(line: 67, column: 5, scope: !4899)
!4918 = !DILocation(line: 54, column: 7, scope: !4851)
!4919 = !DILocation(line: 67, column: 12, scope: !4904)
!4920 = !DILocation(line: 67, column: 5, scope: !4905)
!4921 = !DILocation(line: 74, column: 19, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4923, file: !1038, line: 74, column: 17)
!4923 = distinct !DILexicalBlock(scope: !4903, file: !1038, line: 70, column: 11)
!4924 = !DILocation(line: 74, column: 17, scope: !4923)
!4925 = !DILocation(line: 75, column: 17, scope: !4922)
!4926 = !DILocation(line: 75, column: 20, scope: !4922)
!4927 = !DILocation(line: 75, column: 15, scope: !4922)
!4928 = !DILocation(line: 80, column: 24, scope: !4923)
!4929 = !DILocation(line: 82, column: 19, scope: !4930)
!4930 = distinct !DILexicalBlock(scope: !4923, file: !1038, line: 82, column: 17)
!4931 = !DILocation(line: 82, column: 17, scope: !4923)
!4932 = !DILocation(line: 83, column: 17, scope: !4930)
!4933 = !DILocation(line: 83, column: 20, scope: !4930)
!4934 = !DILocation(line: 83, column: 15, scope: !4930)
!4935 = !DILocation(line: 88, column: 24, scope: !4923)
!4936 = !DILocation(line: 90, column: 19, scope: !4937)
!4937 = distinct !DILexicalBlock(scope: !4923, file: !1038, line: 90, column: 17)
!4938 = !DILocation(line: 90, column: 17, scope: !4923)
!4939 = !DILocation(line: 91, column: 17, scope: !4937)
!4940 = !DILocation(line: 91, column: 20, scope: !4937)
!4941 = !DILocation(line: 91, column: 15, scope: !4937)
!4942 = !DILocation(line: 100, column: 19, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4923, file: !1038, line: 100, column: 17)
!4944 = !DILocation(line: 100, column: 17, scope: !4923)
!4945 = !DILocation(line: 101, column: 17, scope: !4943)
!4946 = !DILocation(line: 101, column: 20, scope: !4943)
!4947 = !DILocation(line: 101, column: 15, scope: !4943)
!4948 = !DILocation(line: 107, column: 19, scope: !4949)
!4949 = distinct !DILexicalBlock(scope: !4923, file: !1038, line: 107, column: 17)
!4950 = !DILocation(line: 107, column: 17, scope: !4923)
!4951 = !DILocation(line: 108, column: 17, scope: !4949)
!4952 = !DILocation(line: 108, column: 20, scope: !4949)
!4953 = !DILocation(line: 108, column: 15, scope: !4949)
!4954 = !DILocation(line: 113, column: 24, scope: !4923)
!4955 = !DILocation(line: 115, column: 13, scope: !4923)
!4956 = !DILocation(line: 117, column: 24, scope: !4923)
!4957 = !DILocation(line: 119, column: 13, scope: !4923)
!4958 = !DILocation(line: 128, column: 24, scope: !4902)
!4959 = !DILocation(line: 0, scope: !4902)
!4960 = !DILocation(line: 129, column: 48, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !4902, file: !1038, line: 129, column: 15)
!4962 = !DILocation(line: 129, column: 15, scope: !4902)
!4963 = !DILocalVariable(name: "__dest", arg: 1, scope: !4964, file: !1402, line: 26, type: !4769)
!4964 = distinct !DISubprogram(name: "memcpy", scope: !1402, file: !1402, line: 26, type: !4767, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4965)
!4965 = !{!4963, !4966, !4967}
!4966 = !DILocalVariable(name: "__src", arg: 2, scope: !4964, file: !1402, line: 26, type: !1282)
!4967 = !DILocalVariable(name: "__len", arg: 3, scope: !4964, file: !1402, line: 26, type: !97)
!4968 = !DILocation(line: 0, scope: !4964, inlinedAt: !4969)
!4969 = distinct !DILocation(line: 131, column: 11, scope: !4902)
!4970 = !DILocation(line: 29, column: 10, scope: !4964, inlinedAt: !4969)
!4971 = !DILocation(line: 132, column: 13, scope: !4902)
!4972 = !DILocation(line: 135, column: 9, scope: !4903)
!4973 = !DILocation(line: 67, column: 25, scope: !4904)
!4974 = !DILocation(line: 67, column: 5, scope: !4904)
!4975 = distinct !{!4975, !4920, !4976, !1185}
!4976 = !DILocation(line: 136, column: 7, scope: !4905)
!4977 = !DILocation(line: 138, column: 8, scope: !4899)
!4978 = !DILocation(line: 197, column: 7, scope: !4851)
!4979 = !DILocation(line: 199, column: 47, scope: !4907)
!4980 = !DILocation(line: 199, column: 16, scope: !4907)
!4981 = !DILocation(line: 0, scope: !4907)
!4982 = !DILocation(line: 201, column: 14, scope: !4983)
!4983 = distinct !DILexicalBlock(scope: !4907, file: !1038, line: 201, column: 11)
!4984 = !DILocation(line: 201, column: 11, scope: !4907)
!4985 = !DILocation(line: 204, column: 18, scope: !4907)
!4986 = !DILocation(line: 205, column: 14, scope: !4912)
!4987 = !DILocation(line: 205, column: 11, scope: !4907)
!4988 = !DILocation(line: 207, column: 29, scope: !4911)
!4989 = !DILocation(line: 0, scope: !4911)
!4990 = !DILocation(line: 208, column: 11, scope: !4911)
!4991 = !DILocation(line: 209, column: 17, scope: !4911)
!4992 = !DILocation(line: 210, column: 9, scope: !4911)
!4993 = !DILocalVariable(name: "filename", arg: 1, scope: !4994, file: !1038, line: 30, type: !100)
!4994 = distinct !DISubprogram(name: "orig_fopen", scope: !1038, file: !1038, line: 30, type: !4852, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1037, retainedNodes: !4995)
!4995 = !{!4993, !4996}
!4996 = !DILocalVariable(name: "mode", arg: 2, scope: !4994, file: !1038, line: 30, type: !100)
!4997 = !DILocation(line: 0, scope: !4994, inlinedAt: !4998)
!4998 = distinct !DILocation(line: 219, column: 10, scope: !4851)
!4999 = !DILocation(line: 32, column: 10, scope: !4994, inlinedAt: !4998)
!5000 = !DILocation(line: 219, column: 3, scope: !4851)
!5001 = !DILocation(line: 220, column: 1, scope: !4851)
!5002 = !DISubprogram(name: "open", scope: !2462, file: !2462, line: 181, type: !5003, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5003 = !DISubroutineType(types: !5004)
!5004 = !{!63, !100, !63, null}
!5005 = !DISubprogram(name: "fdopen", scope: !688, file: !688, line: 293, type: !5006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5006 = !DISubroutineType(types: !5007)
!5007 = !{!4854, !63, !100}
!5008 = !DISubprogram(name: "close", scope: !2321, file: !2321, line: 358, type: !1547, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5009 = !DISubprogram(name: "fopen", scope: !688, file: !688, line: 258, type: !5010, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5010 = !DISubroutineType(types: !5011)
!5011 = !{!4854, !1129, !1129}
!5012 = distinct !DISubprogram(name: "close_stream", scope: !1040, file: !1040, line: 55, type: !5013, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1039, retainedNodes: !5049)
!5013 = !DISubroutineType(types: !5014)
!5014 = !{!63, !5015}
!5015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5016, size: 64)
!5016 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !151, line: 7, baseType: !5017)
!5017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !153, line: 49, size: 1728, elements: !5018)
!5018 = !{!5019, !5020, !5021, !5022, !5023, !5024, !5025, !5026, !5027, !5028, !5029, !5030, !5031, !5032, !5034, !5035, !5036, !5037, !5038, !5039, !5040, !5041, !5042, !5043, !5044, !5045, !5046, !5047, !5048}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !5017, file: !153, line: 51, baseType: !63, size: 32)
!5020 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !5017, file: !153, line: 54, baseType: !94, size: 64, offset: 64)
!5021 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !5017, file: !153, line: 55, baseType: !94, size: 64, offset: 128)
!5022 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !5017, file: !153, line: 56, baseType: !94, size: 64, offset: 192)
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !5017, file: !153, line: 57, baseType: !94, size: 64, offset: 256)
!5024 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !5017, file: !153, line: 58, baseType: !94, size: 64, offset: 320)
!5025 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !5017, file: !153, line: 59, baseType: !94, size: 64, offset: 384)
!5026 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !5017, file: !153, line: 60, baseType: !94, size: 64, offset: 448)
!5027 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !5017, file: !153, line: 61, baseType: !94, size: 64, offset: 512)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !5017, file: !153, line: 64, baseType: !94, size: 64, offset: 576)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !5017, file: !153, line: 65, baseType: !94, size: 64, offset: 640)
!5030 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !5017, file: !153, line: 66, baseType: !94, size: 64, offset: 704)
!5031 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !5017, file: !153, line: 68, baseType: !168, size: 64, offset: 768)
!5032 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !5017, file: !153, line: 70, baseType: !5033, size: 64, offset: 832)
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5034 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !5017, file: !153, line: 72, baseType: !63, size: 32, offset: 896)
!5035 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !5017, file: !153, line: 73, baseType: !63, size: 32, offset: 928)
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !5017, file: !153, line: 74, baseType: !175, size: 64, offset: 960)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !5017, file: !153, line: 77, baseType: !96, size: 16, offset: 1024)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !5017, file: !153, line: 78, baseType: !180, size: 8, offset: 1040)
!5039 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !5017, file: !153, line: 79, baseType: !44, size: 8, offset: 1048)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !5017, file: !153, line: 81, baseType: !183, size: 64, offset: 1088)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !5017, file: !153, line: 89, baseType: !186, size: 64, offset: 1152)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !5017, file: !153, line: 91, baseType: !188, size: 64, offset: 1216)
!5043 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !5017, file: !153, line: 92, baseType: !191, size: 64, offset: 1280)
!5044 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !5017, file: !153, line: 93, baseType: !5033, size: 64, offset: 1344)
!5045 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !5017, file: !153, line: 94, baseType: !95, size: 64, offset: 1408)
!5046 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !5017, file: !153, line: 95, baseType: !97, size: 64, offset: 1472)
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !5017, file: !153, line: 96, baseType: !63, size: 32, offset: 1536)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !5017, file: !153, line: 98, baseType: !198, size: 160, offset: 1568)
!5049 = !{!5050, !5051, !5053, !5054}
!5050 = !DILocalVariable(name: "stream", arg: 1, scope: !5012, file: !1040, line: 55, type: !5015)
!5051 = !DILocalVariable(name: "some_pending", scope: !5012, file: !1040, line: 57, type: !5052)
!5052 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !136)
!5053 = !DILocalVariable(name: "prev_fail", scope: !5012, file: !1040, line: 58, type: !5052)
!5054 = !DILocalVariable(name: "fclose_fail", scope: !5012, file: !1040, line: 59, type: !5052)
!5055 = !DILocation(line: 0, scope: !5012)
!5056 = !DILocation(line: 57, column: 30, scope: !5012)
!5057 = !DILocalVariable(name: "__stream", arg: 1, scope: !5058, file: !1384, line: 135, type: !5015)
!5058 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1384, file: !1384, line: 135, type: !5013, scopeLine: 136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1039, retainedNodes: !5059)
!5059 = !{!5057}
!5060 = !DILocation(line: 0, scope: !5058, inlinedAt: !5061)
!5061 = distinct !DILocation(line: 58, column: 27, scope: !5012)
!5062 = !DILocation(line: 137, column: 10, scope: !5058, inlinedAt: !5061)
!5063 = !DILocation(line: 58, column: 43, scope: !5012)
!5064 = !DILocation(line: 59, column: 29, scope: !5012)
!5065 = !DILocation(line: 59, column: 45, scope: !5012)
!5066 = !DILocation(line: 69, column: 17, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5012, file: !1040, line: 69, column: 7)
!5068 = !DILocation(line: 57, column: 50, scope: !5012)
!5069 = !DILocation(line: 69, column: 33, scope: !5067)
!5070 = !DILocation(line: 69, column: 53, scope: !5067)
!5071 = !DILocation(line: 69, column: 59, scope: !5067)
!5072 = !DILocation(line: 69, column: 7, scope: !5012)
!5073 = !DILocation(line: 71, column: 11, scope: !5074)
!5074 = distinct !DILexicalBlock(scope: !5067, file: !1040, line: 70, column: 5)
!5075 = !DILocation(line: 72, column: 9, scope: !5076)
!5076 = distinct !DILexicalBlock(scope: !5074, file: !1040, line: 71, column: 11)
!5077 = !DILocation(line: 72, column: 15, scope: !5076)
!5078 = !DILocation(line: 77, column: 1, scope: !5012)
!5079 = !DISubprogram(name: "__fpending", scope: !2665, file: !2665, line: 75, type: !5080, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5080 = !DISubroutineType(types: !5081)
!5081 = !{!97, !5015}
!5082 = distinct !DISubprogram(name: "rpl_mbrtoc32", scope: !959, file: !959, line: 100, type: !5083, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !962, retainedNodes: !5086)
!5083 = !DISubroutineType(types: !5084)
!5084 = !{!97, !1673, !100, !97, !5085}
!5085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!5086 = !{!5087, !5088, !5089, !5090, !5091}
!5087 = !DILocalVariable(name: "pwc", arg: 1, scope: !5082, file: !959, line: 100, type: !1673)
!5088 = !DILocalVariable(name: "s", arg: 2, scope: !5082, file: !959, line: 100, type: !100)
!5089 = !DILocalVariable(name: "n", arg: 3, scope: !5082, file: !959, line: 100, type: !97)
!5090 = !DILocalVariable(name: "ps", arg: 4, scope: !5082, file: !959, line: 100, type: !5085)
!5091 = !DILocalVariable(name: "ret", scope: !5082, file: !959, line: 130, type: !97)
!5092 = !DILocation(line: 0, scope: !5082)
!5093 = !DILocation(line: 105, column: 9, scope: !5094)
!5094 = distinct !DILexicalBlock(scope: !5082, file: !959, line: 105, column: 7)
!5095 = !DILocation(line: 105, column: 7, scope: !5082)
!5096 = !DILocation(line: 117, column: 10, scope: !5097)
!5097 = distinct !DILexicalBlock(scope: !5082, file: !959, line: 117, column: 7)
!5098 = !DILocation(line: 117, column: 7, scope: !5082)
!5099 = !DILocation(line: 130, column: 16, scope: !5082)
!5100 = !DILocation(line: 135, column: 11, scope: !5101)
!5101 = distinct !DILexicalBlock(scope: !5082, file: !959, line: 135, column: 7)
!5102 = !DILocation(line: 135, column: 25, scope: !5101)
!5103 = !DILocation(line: 135, column: 30, scope: !5101)
!5104 = !DILocation(line: 135, column: 7, scope: !5082)
!5105 = !DILocalVariable(name: "ps", arg: 1, scope: !5106, file: !2905, line: 1135, type: !5085)
!5106 = distinct !DISubprogram(name: "mbszero", scope: !2905, file: !2905, line: 1135, type: !5107, scopeLine: 1136, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !962, retainedNodes: !5109)
!5107 = !DISubroutineType(types: !5108)
!5108 = !{null, !5085}
!5109 = !{!5105}
!5110 = !DILocation(line: 0, scope: !5106, inlinedAt: !5111)
!5111 = distinct !DILocation(line: 137, column: 5, scope: !5101)
!5112 = !DILocalVariable(name: "__dest", arg: 1, scope: !5113, file: !1402, line: 57, type: !95)
!5113 = distinct !DISubprogram(name: "memset", scope: !1402, file: !1402, line: 57, type: !2914, scopeLine: 58, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !962, retainedNodes: !5114)
!5114 = !{!5112, !5115, !5116}
!5115 = !DILocalVariable(name: "__ch", arg: 2, scope: !5113, file: !1402, line: 57, type: !63)
!5116 = !DILocalVariable(name: "__len", arg: 3, scope: !5113, file: !1402, line: 57, type: !97)
!5117 = !DILocation(line: 0, scope: !5113, inlinedAt: !5118)
!5118 = distinct !DILocation(line: 1137, column: 3, scope: !5106, inlinedAt: !5111)
!5119 = !DILocation(line: 59, column: 10, scope: !5113, inlinedAt: !5118)
!5120 = !DILocation(line: 137, column: 5, scope: !5101)
!5121 = !DILocation(line: 138, column: 11, scope: !5122)
!5122 = distinct !DILexicalBlock(scope: !5082, file: !959, line: 138, column: 7)
!5123 = !DILocation(line: 138, column: 7, scope: !5082)
!5124 = !DILocation(line: 139, column: 5, scope: !5122)
!5125 = !DILocation(line: 143, column: 26, scope: !5126)
!5126 = distinct !DILexicalBlock(scope: !5082, file: !959, line: 143, column: 7)
!5127 = !DILocation(line: 143, column: 41, scope: !5126)
!5128 = !DILocation(line: 143, column: 7, scope: !5082)
!5129 = !DILocation(line: 145, column: 15, scope: !5130)
!5130 = distinct !DILexicalBlock(scope: !5131, file: !959, line: 145, column: 11)
!5131 = distinct !DILexicalBlock(scope: !5126, file: !959, line: 144, column: 5)
!5132 = !DILocation(line: 145, column: 11, scope: !5131)
!5133 = !DILocation(line: 146, column: 32, scope: !5130)
!5134 = !DILocation(line: 146, column: 16, scope: !5130)
!5135 = !DILocation(line: 146, column: 14, scope: !5130)
!5136 = !DILocation(line: 146, column: 9, scope: !5130)
!5137 = !DILocation(line: 286, column: 1, scope: !5082)
!5138 = !DISubprogram(name: "mbsinit", scope: !1690, file: !1690, line: 293, type: !5139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5139 = !DISubroutineType(types: !5140)
!5140 = !{!63, !5141}
!5141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5142, size: 64)
!5142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !965)
!5143 = distinct !DISubprogram(name: "rpl_reallocarray", scope: !1042, file: !1042, line: 27, type: !4407, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !5144)
!5144 = !{!5145, !5146, !5147, !5148}
!5145 = !DILocalVariable(name: "ptr", arg: 1, scope: !5143, file: !1042, line: 27, type: !95)
!5146 = !DILocalVariable(name: "nmemb", arg: 2, scope: !5143, file: !1042, line: 27, type: !97)
!5147 = !DILocalVariable(name: "size", arg: 3, scope: !5143, file: !1042, line: 27, type: !97)
!5148 = !DILocalVariable(name: "nbytes", scope: !5143, file: !1042, line: 29, type: !97)
!5149 = !DILocation(line: 0, scope: !5143)
!5150 = !DILocation(line: 30, column: 7, scope: !5151)
!5151 = distinct !DILexicalBlock(scope: !5143, file: !1042, line: 30, column: 7)
!5152 = !DILocation(line: 30, column: 7, scope: !5143)
!5153 = !DILocation(line: 32, column: 7, scope: !5154)
!5154 = distinct !DILexicalBlock(scope: !5151, file: !1042, line: 31, column: 5)
!5155 = !DILocation(line: 32, column: 13, scope: !5154)
!5156 = !DILocation(line: 33, column: 7, scope: !5154)
!5157 = !DILocalVariable(name: "ptr", arg: 1, scope: !5158, file: !4499, line: 2057, type: !95)
!5158 = distinct !DISubprogram(name: "rpl_realloc", scope: !4499, file: !4499, line: 2057, type: !4491, scopeLine: 2058, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1041, retainedNodes: !5159)
!5159 = !{!5157, !5160}
!5160 = !DILocalVariable(name: "size", arg: 2, scope: !5158, file: !4499, line: 2057, type: !97)
!5161 = !DILocation(line: 0, scope: !5158, inlinedAt: !5162)
!5162 = distinct !DILocation(line: 37, column: 10, scope: !5143)
!5163 = !DILocation(line: 2059, column: 24, scope: !5158, inlinedAt: !5162)
!5164 = !DILocation(line: 2059, column: 10, scope: !5158, inlinedAt: !5162)
!5165 = !DILocation(line: 37, column: 3, scope: !5143)
!5166 = !DILocation(line: 38, column: 1, scope: !5143)
!5167 = distinct !DISubprogram(name: "hard_locale", scope: !977, file: !977, line: 28, type: !1851, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1043, retainedNodes: !5168)
!5168 = !{!5169, !5170}
!5169 = !DILocalVariable(name: "category", arg: 1, scope: !5167, file: !977, line: 28, type: !63)
!5170 = !DILocalVariable(name: "locale", scope: !5167, file: !977, line: 30, type: !5171)
!5171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !5172)
!5172 = !{!5173}
!5173 = !DISubrange(count: 257)
!5174 = distinct !DIAssignID()
!5175 = !DILocation(line: 0, scope: !5167)
!5176 = !DILocation(line: 30, column: 3, scope: !5167)
!5177 = !DILocation(line: 32, column: 7, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5167, file: !977, line: 32, column: 7)
!5179 = !DILocation(line: 32, column: 7, scope: !5167)
!5180 = !DILocalVariable(name: "__s1", arg: 1, scope: !5181, file: !1151, line: 1359, type: !100)
!5181 = distinct !DISubprogram(name: "streq", scope: !1151, file: !1151, line: 1359, type: !1152, scopeLine: 1360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1043, retainedNodes: !5182)
!5182 = !{!5180, !5183}
!5183 = !DILocalVariable(name: "__s2", arg: 2, scope: !5181, file: !1151, line: 1359, type: !100)
!5184 = !DILocation(line: 0, scope: !5181, inlinedAt: !5185)
!5185 = distinct !DILocation(line: 35, column: 9, scope: !5186)
!5186 = distinct !DILexicalBlock(scope: !5167, file: !977, line: 35, column: 7)
!5187 = !DILocation(line: 1361, column: 11, scope: !5181, inlinedAt: !5185)
!5188 = !DILocation(line: 1361, column: 10, scope: !5181, inlinedAt: !5185)
!5189 = !DILocation(line: 35, column: 29, scope: !5186)
!5190 = !DILocation(line: 0, scope: !5181, inlinedAt: !5191)
!5191 = distinct !DILocation(line: 35, column: 32, scope: !5186)
!5192 = !DILocation(line: 1361, column: 11, scope: !5181, inlinedAt: !5191)
!5193 = !DILocation(line: 1361, column: 10, scope: !5181, inlinedAt: !5191)
!5194 = !DILocation(line: 35, column: 7, scope: !5167)
!5195 = !DILocation(line: 46, column: 3, scope: !5167)
!5196 = !DILocation(line: 47, column: 1, scope: !5167)
!5197 = distinct !DISubprogram(name: "setlocale_null_r", scope: !1046, file: !1046, line: 154, type: !5198, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1045, retainedNodes: !5200)
!5198 = !DISubroutineType(types: !5199)
!5199 = !{!63, !63, !94, !97}
!5200 = !{!5201, !5202, !5203}
!5201 = !DILocalVariable(name: "category", arg: 1, scope: !5197, file: !1046, line: 154, type: !63)
!5202 = !DILocalVariable(name: "buf", arg: 2, scope: !5197, file: !1046, line: 154, type: !94)
!5203 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5197, file: !1046, line: 154, type: !97)
!5204 = !DILocation(line: 0, scope: !5197)
!5205 = !DILocation(line: 159, column: 10, scope: !5197)
!5206 = !DILocation(line: 159, column: 3, scope: !5197)
!5207 = distinct !DISubprogram(name: "setlocale_null", scope: !1046, file: !1046, line: 186, type: !5208, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1045, retainedNodes: !5210)
!5208 = !DISubroutineType(types: !5209)
!5209 = !{!100, !63}
!5210 = !{!5211}
!5211 = !DILocalVariable(name: "category", arg: 1, scope: !5207, file: !1046, line: 186, type: !63)
!5212 = !DILocation(line: 0, scope: !5207)
!5213 = !DILocation(line: 189, column: 10, scope: !5207)
!5214 = !DILocation(line: 189, column: 3, scope: !5207)
!5215 = distinct !DISubprogram(name: "setlocale_null_unlocked", scope: !1048, file: !1048, line: 35, type: !5208, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1047, retainedNodes: !5216)
!5216 = !{!5217, !5218}
!5217 = !DILocalVariable(name: "category", arg: 1, scope: !5215, file: !1048, line: 35, type: !63)
!5218 = !DILocalVariable(name: "result", scope: !5215, file: !1048, line: 37, type: !100)
!5219 = !DILocation(line: 0, scope: !5215)
!5220 = !DILocation(line: 37, column: 24, scope: !5215)
!5221 = !DILocation(line: 62, column: 3, scope: !5215)
!5222 = distinct !DISubprogram(name: "setlocale_null_r_unlocked", scope: !1048, file: !1048, line: 66, type: !5198, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !1047, retainedNodes: !5223)
!5223 = !{!5224, !5225, !5226, !5227, !5228}
!5224 = !DILocalVariable(name: "category", arg: 1, scope: !5222, file: !1048, line: 66, type: !63)
!5225 = !DILocalVariable(name: "buf", arg: 2, scope: !5222, file: !1048, line: 66, type: !94)
!5226 = !DILocalVariable(name: "bufsize", arg: 3, scope: !5222, file: !1048, line: 66, type: !97)
!5227 = !DILocalVariable(name: "result", scope: !5222, file: !1048, line: 111, type: !100)
!5228 = !DILocalVariable(name: "length", scope: !5229, file: !1048, line: 125, type: !97)
!5229 = distinct !DILexicalBlock(scope: !5230, file: !1048, line: 124, column: 5)
!5230 = distinct !DILexicalBlock(scope: !5222, file: !1048, line: 113, column: 7)
!5231 = !DILocation(line: 0, scope: !5222)
!5232 = !DILocation(line: 0, scope: !5215, inlinedAt: !5233)
!5233 = distinct !DILocation(line: 111, column: 24, scope: !5222)
!5234 = !DILocation(line: 37, column: 24, scope: !5215, inlinedAt: !5233)
!5235 = !DILocation(line: 113, column: 14, scope: !5230)
!5236 = !DILocation(line: 113, column: 7, scope: !5222)
!5237 = !DILocation(line: 116, column: 19, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5239, file: !1048, line: 116, column: 11)
!5239 = distinct !DILexicalBlock(scope: !5230, file: !1048, line: 114, column: 5)
!5240 = !DILocation(line: 116, column: 11, scope: !5239)
!5241 = !DILocation(line: 120, column: 16, scope: !5238)
!5242 = !DILocation(line: 120, column: 9, scope: !5238)
!5243 = !DILocation(line: 125, column: 23, scope: !5229)
!5244 = !DILocation(line: 0, scope: !5229)
!5245 = !DILocation(line: 126, column: 18, scope: !5246)
!5246 = distinct !DILexicalBlock(scope: !5229, file: !1048, line: 126, column: 11)
!5247 = !DILocation(line: 126, column: 11, scope: !5229)
!5248 = !DILocation(line: 128, column: 39, scope: !5249)
!5249 = distinct !DILexicalBlock(scope: !5246, file: !1048, line: 127, column: 9)
!5250 = !DILocalVariable(name: "__dest", arg: 1, scope: !5251, file: !1402, line: 26, type: !4769)
!5251 = distinct !DISubprogram(name: "memcpy", scope: !1402, file: !1402, line: 26, type: !4767, scopeLine: 28, flags: DIFlagArtificial | DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !1047, retainedNodes: !5252)
!5252 = !{!5250, !5253, !5254}
!5253 = !DILocalVariable(name: "__src", arg: 2, scope: !5251, file: !1402, line: 26, type: !1282)
!5254 = !DILocalVariable(name: "__len", arg: 3, scope: !5251, file: !1402, line: 26, type: !97)
!5255 = !DILocation(line: 0, scope: !5251, inlinedAt: !5256)
!5256 = distinct !DILocation(line: 128, column: 11, scope: !5249)
!5257 = !DILocation(line: 29, column: 10, scope: !5251, inlinedAt: !5256)
!5258 = !DILocation(line: 129, column: 11, scope: !5249)
!5259 = !DILocation(line: 133, column: 23, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5261, file: !1048, line: 133, column: 15)
!5261 = distinct !DILexicalBlock(scope: !5246, file: !1048, line: 132, column: 9)
!5262 = !DILocation(line: 133, column: 15, scope: !5261)
!5263 = !DILocation(line: 138, column: 44, scope: !5264)
!5264 = distinct !DILexicalBlock(scope: !5260, file: !1048, line: 134, column: 13)
!5265 = !DILocation(line: 0, scope: !5251, inlinedAt: !5266)
!5266 = distinct !DILocation(line: 138, column: 15, scope: !5264)
!5267 = !DILocation(line: 29, column: 10, scope: !5251, inlinedAt: !5266)
!5268 = !DILocation(line: 139, column: 15, scope: !5264)
!5269 = !DILocation(line: 139, column: 32, scope: !5264)
!5270 = !DILocation(line: 140, column: 13, scope: !5264)
!5271 = !DILocation(line: 0, scope: !5230)
!5272 = !DILocation(line: 145, column: 1, scope: !5222)
